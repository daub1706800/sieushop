<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
Use Alert;
use Carbon\Carbon;
use App\Traits\StorageImageTrait;
use App\Models\Video;

class TintucController extends Controller{

    use StorageImageTrait;

    public function home(){
        return view('tintuc/home');
    }

    public function printTintuc()
    {
        // Carbon::setLocale('vi'); // hiển thị ngôn ngữ tiếng việt.
        // $dt = Carbon::create(2021, 2, 18, 14, 40, 16);
        // $dt2 = Carbon::create(2018, 10, 18, 13, 40, 16);
        // $now = Carbon::now();
        // echo $dt->diffForHumans($now); //12 phút trước
        // echo $dt2->diffForHumans($now); //1 giờ trước
        Carbon::setLocale('vi');
        $data = DB::table('tintuc')
                    ->where('idcongty',auth()->user()->idcongty)
                    ->orderBy('id', 'desc')
                    ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                    ->Join('thongtin', 'tintuc.idtaikhoan', '=', 'thongtin.id')
                    ->Join('congty', 'tintuc.idcongty', '=', 'congty.id')
                    ->select('tintuc.*','chuyenmuc.tenchuyenmuc','congty.tencongty','thongtin.hothanhvien','thongtin.tenthanhvien')
                    ->get();
        foreach($data as $row){
            $xuatban = $row->updated_at;
            if($xuatban==null){
                $xuatban = "";
                $row->ago = $xuatban;
            }
            else{
                $date = Carbon::create($xuatban);
                $now = Carbon::now();
                $row->ago = $date->diffForHumans($now);// them 1 truong du lieu trong 1 dong(row) cua data
            }
        }
        return view('admin.tintuc.Tintuc', compact('data'));
    }

    // public function printTintuc()
    // {
    //     $data = DB::table('tintuc')
    //                 ->where('idcongty',auth()->user()->idcongty)
    //                 ->orderBy('id', 'desc')
    //                 ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
    //                 ->Join('congty', 'tintuc.idcongty', '=', 'congty.id')
    //                 ->select('tintuc.*','chuyenmuc.tenchuyenmuc','congty.tencongty')
    //                 ->paginate(10);
    //     return view('tintuc.Tintuc', compact('data'));
    // }

    public function searchTintuc(Request $request){
        $tukhoa = $request->tukhoa;
        if($tukhoa==null){
            return back();
        }
        else{
           $data = DB::table('tintuc')
                    ->where('idcongty',auth()->user()->idcongty)->where('tieudetintuc','like',"%$tukhoa%")
                    ->where('idcongty',auth()->user()->idcongty)->orwhere('tomtattintuc','like',"%$tukhoa%")
                    ->orderBy('id', 'desc')
                    ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                    ->Join('congty', 'tintuc.idcongty', '=', 'congty.id')
                    ->select('tintuc.*','chuyenmuc.tenchuyenmuc','congty.tencongty')
                    ->paginate(10);
            return view('admin.tintuc.searchTintuc', compact('data')); 
        }
    }

    public function viewhistoryTintuc($id)
    {
        $data = DB::table('lichsutintuc')->where('idtintuc',$id)->get();
        return view('admin.tintuc.viewhistoryTintuc',compact('data'));
    }

    public function addTintuc()
    {
        $data = DB::table('chuyenmuc')->get();
        return view('admin.tintuc.addTintuc', compact('data'));
    }

    public function doaddTintuc(Request $request)
    {
        $dataImageUpload = $this->StorageUploadImage($request, 'hinhanhtintuc', 'news/image');

        $mang1 = array();
        $mang1['idchuyenmuc'] = $request->idchuyenmuc;
        $mang1['idcongty'] = $request->idcongty;
        $mang1['idtaikhoan'] = $request->idtaikhoan;
        $mang1['ngaydangtintuc'] = date('Y-m-d H:i:s');
        $mang1['hinhanhtintuc'] = $dataImageUpload['file_path'];
        $mang1['tieudetintuc'] = $request->tieudetintuc;
        $mang1['tomtattintuc'] = $request->tomtattintuc;
        if($request->tinnoibat!=null){
            $mang1['loaitintuc'] = $request->tinnoibat;
        }
        else{
            $mang1['loaitintuc'] = '0';
        }
        $mang1['noidungtintuc'] = $request->noidungtintuc;
        $id1 = DB::table('tintuc')->insertGetId($mang1);

        if($request->hasFile('dulieuvideo'))
        {
            foreach($request->dulieuvideo as $fileItem)
            {
                $dataVideo = $this->StorageUploadImageMultiple($fileItem, 'news/video');
                Video::create([
                    'idtintuc'    => $id1,
                    'dulieuvideo' => $dataVideo['file_path']
                ]);
            }
        }

        return back();
    }

    public function deleteTintuc($id)
    {
        DB::table('tintuc')->delete($id);
        DB::table('lichsutintuc')->where('idtintuc',$id)->delete();
        return back();
    }

    public function detailTintuc($id)
    {
        $data = DB::table('tintuc')->where('id',$id)->first();
        $data2 = DB::table('video')->where('idtintuc',$id)->get();
        $data3 = DB::table('chuyenmuc')->get();
        return view('admin.tintuc.detailTintuc', compact('data','data2','data3'));
    }

    public function viewTintuc($id)
    {
        $data = DB::table('tintuc')->where('id',$id)->first();
        $data2 = DB::table('video')->where('idtintuc',$id)->get();
        $data3 = DB::table('chuyenmuc')->get();
        return view('admin.tintuc.viewTintuc', compact('data','data2','data3'));
    }

    public function editTintuc(Request $request)
    {
        $linkhinhanhtieude = null;
        if($request->hasFile('hinhanhtieude')){
            $file = $request->file('hinhanhtieude');
            $filename = rand(1, 99999) . '.' . $file->getClientOriginalName();
            $hinhanhtieude = public_path().'/hinhanh';// public_path la public
            $file->move($hinhanhtieude, $filename);
            $linkhinhanhtieude = '/hinhanh'.'/'.$filename;// vi tri trang dang o public nen chi can hinhanh/tenfile
        }

        $data = array();
        $data['idchuyenmuc'] = $request->idchuyenmuc;
        $data['idcongty'] = $request->idcongty;
        $data['idtaikhoan'] = $request->idtaikhoan;
        $data['ngaydangtintuc'] = date('Y-m-d H:i:s');
        if($linkhinhanhtieude!=null){
            $data['hinhanhtintuc'] = $linkhinhanhtieude;
        }
        if($request->tinnoibat!=null){
            $data['loaitintuc'] = $request->tinnoibat;
        }
        else{
            $data['loaitintuc'] = '0';
        }
        $data['tieudetintuc'] = $request->tieudetintuc;
        $data['tomtattintuc'] = $request->tomtattintuc;
        $data['noidungtintuc'] = $request->noidungtintuc;
        $data['duyettintuc'] = '0';

        DB::table('tintuc')->where('id',$request->id)->update($data);
        return redirect()->route('tintuc.Tintuc');
    }

    public function deleteVideo($id)
    {
        $row = DB::table('video')->where('id',$id)->first();
        $data = array();
        $data['duyettintuc'] = '0';
        DB::table('tintuc')->where('id',$row->idtintuc)->update($data);
        DB::table('video')->where('id',$id)->delete();
        return back();
    }

    public function addVideo(Request $request)
    {
        $id = $request->idtintuc;
        $data = array();
        $data['duyettintuc'] = '0';
        DB::table('tintuc')->where('id',$id)->update($data);
        $mang3 = array();
        if ($request->hasfile('dulieuvideo')) {
            foreach ($request->file('dulieuvideo') as $file) {
                $dulieuvideo = $file->getClientOriginalName(); //lay ten file
                $file->move(public_path().'/video', $dulieuvideo);// up hinh len server
                $linkvideo = '/video'.'/'.$dulieuvideo;// gan lai duong link cho anh
                $mang3['dulieuvideo'] = $linkvideo;
                $mang3['idtintuc'] = $id;
                DB::table('video')->insert($mang3);
            }
        }
        return back();
    }

    public function acceptTintuc($id)
    {
        $data = array();
        $data['duyettintuc'] = '1';
        DB::table('tintuc')->where('id',$id)->update($data);
        return back();
    }

    public function postTintuc($id)
    {
        $data = array();
        $data['xuatbantintuc'] = '1';
        $data['updated_at'] = date('Y-m-d H:i:s');
        DB::table('tintuc')->where('id',$id)->update($data);
        return back();
    }

    public function removeTintuc(Request $request)
    {
        $data = array();
        $data['duyettintuc'] = 0;
        $data['xuatbantintuc'] = 0;
        $data['lydogo'] = 1;
        $data['updated_at'] = null;
        DB::table('tintuc')->where('id',$request->id)->update($data);
        $data2 = array();
        $data2['idtintuc'] = $request->id;
        $data2['lydogo'] = $request->lydogo;
        $data2['thoigian'] = date('Y-m-d H:i:s');
        DB::table('lichsutintuc')->insert($data2);
        return back();
    }
}
