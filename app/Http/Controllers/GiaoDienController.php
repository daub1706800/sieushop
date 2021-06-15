<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
Use Alert;
use App\Models\Category;
use App\Models\News;
use App\Models\Profile;
use Carbon\Carbon;
use App\Traits\StorageImageTrait;
use App\Models\Video;

class GiaoDienController extends Controller{

    use StorageImageTrait;

    public function home()
    {
        $sidebar = DB::table('tintuc')
                    ->where('loaitintuc',1)
                    ->where('xuatbantintuc',1)
                    ->orderBy('id', 'desc')
                    ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                    ->Join('thongtin', 'tintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                    ->select('tintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                    ->limit(3)
                    ->get();

        $header = DB::table('chuyenmuc')
                    ->orderBy('tenchuyenmuc')
                    ->get();

        $hinhanhheader = DB::table('tintuc')
                        ->orderBy('id', 'desc')
                        ->where('xuatbantintuc', 1)
                        ->where('loaitintuc', 1)
                        ->limit(5)  
                        ->get();
                        

        $content = DB::table('tintuc')
                    ->where('xuatbantintuc',1)
                    ->orderBy('id', 'desc')
                    ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                    ->Join('thongtin', 'tintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                    ->select('tintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                    ->limit(13)
                    ->get();

        $videotintuc = DB::table('videotintuc')
                        ->orderBy('id', 'desc')
                        ->where('xuatbanvideotintuc', 1)
                        ->where('loaivideotintuc', 1)
                        ->Join('chuyenmuc', 'videotintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                        ->Join('thongtin', 'videotintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                        ->select('videotintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                        ->limit(3)
                        ->get();

        return view('frontend.home', compact('sidebar','header','hinhanhheader','content','videotintuc'));
    }
    public function index_product()
    {
        $header = DB::table('chuyenmuc')
                    ->orderBy('tenchuyenmuc')
                    ->get();

        $hinhanhheader = DB::table('tintuc')
                            ->orderBy('id', 'desc')
                            ->where('xuatbantintuc', 1)
                            ->where('loaitintuc', 1)
                            ->limit(5)  
                            ->get();

        $sidebar = DB::table('tintuc')
                    ->where('loaitintuc',1)
                    ->where('xuatbantintuc',1)
                    ->orderBy('id', 'desc')
                    ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                    ->Join('thongtin', 'tintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                    ->select('tintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                    ->limit(3)
                    ->get();


        $gadget = DB::table('sanpham')
                    ->orderBy('id', 'desc')
                    ->join('congty', 'sanpham.idcongty', '=', 'congty.id')
                    ->join('loaisanpham', 'sanpham.idloaisanpham', '=', 'loaisanpham.id')
                    ->select('sanpham.*', 'loaisanpham.tenloaisanpham', 'congty.tencongty')
                    ->Paginate(10);

        $videotintuc = DB::table('videotintuc')
                        ->orderBy('id', 'desc')
                        ->where('xuatbanvideotintuc', 1)
                        ->where('loaivideotintuc', 1)
                        ->Join('chuyenmuc', 'videotintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                        ->Join('thongtin', 'videotintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                        ->select('videotintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                        ->limit(3)
                        ->get();

        return view('frontend.gadget.gadget', compact('header','sidebar','gadget','hinhanhheader','videotintuc'));
    }
    
    public function contact()
    {
        $header = DB::table('chuyenmuc')
                    ->orderBy('tenchuyenmuc')
                    ->get();
        $hinhanhheader = DB::table('tintuc')
                        ->orderBy('id', 'desc')
                        ->where('xuatbantintuc', 1)
                        ->where('loaitintuc', 1)
                        ->limit(5)  
                        ->get();

        return view('frontend.contact.contact', compact('header','hinhanhheader'));
    }

    public function detail(Request $request)
    {
        $id = $request->id;

        $sidebar = DB::table('tintuc')
                    ->where('loaitintuc',1)
                    ->where('xuatbantintuc',1)
                    ->orderBy('id', 'desc')
                    ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                    ->Join('thongtin', 'tintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                    ->select('tintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                    ->limit(3)
                    ->get();

        $header = DB::table('chuyenmuc')
                    ->orderBy('tenchuyenmuc')
                    ->get();
    
        $hinhanhheader = DB::table('tintuc')
                            ->orderBy('id', 'desc')
                            ->where('xuatbantintuc', 1)
                            ->where('loaitintuc', 1)
                            ->limit(5)  
                            ->get();

        $detail = DB::table('tintuc')
                    ->where('tintuc.id',$id)
                    ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                    ->Join('thongtin', 'tintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                    ->select('tintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                    ->first();

        $detailtinlienquan = DB::table('tintuc')
                    ->orderBy('tintuc.id', 'desc')
                    ->where('idchuyenmuc', $detail->idchuyenmuc)
                    ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                    ->Join('thongtin', 'tintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                    ->select('tintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                    ->limit(6)
                    ->get();

        $videotintuc = DB::table('videotintuc')
                        ->orderBy('id', 'desc')
                        ->where('xuatbanvideotintuc', 1)
                        ->where('loaivideotintuc', 1)
                        ->where('idchuyenmuc', $detail->idchuyenmuc)
                        ->Join('chuyenmuc', 'videotintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                        ->Join('thongtin', 'videotintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                        ->select('videotintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                        ->limit(3)
                        ->get();

        return view('frontend.detail.detail', compact('header','hinhanhheader','sidebar','detail','videotintuc','detailtinlienquan'));
    }
    public function tinchuyenmuc(request $request)
    {
        $id = $request->id;
        $sidebar = DB::table('tintuc')
                    ->where('loaitintuc',1)
                    ->where('xuatbantintuc',1)
                    ->where('idchuyenmuc',$id)
                    ->orderBy('id', 'desc')
                    ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                    ->Join('thongtin', 'tintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                    ->select('tintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                    ->limit(3)
                    ->get();

        $header = DB::table('chuyenmuc')
                    ->orderBy('tenchuyenmuc')
                    ->get();
        
        $hinhanhheader = DB::table('tintuc')
                            ->orderBy('id', 'desc')
                            ->where('xuatbantintuc', 1)
                            ->where('loaitintuc', 1)
                            ->limit(5)  
                            ->get();

        $tinchuyenmuc = DB::table('tintuc')
                    ->where('xuatbantintuc',1)
                    ->where('idchuyenmuc',$id)
                    ->orderBy('id', 'desc')
                    ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                    ->Join('thongtin', 'tintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                    ->select('tintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                    ->Paginate(10);

        $videotintuc = DB::table('videotintuc')
                        ->orderBy('id', 'desc')
                        ->where('xuatbanvideotintuc', 1)
                        ->where('loaivideotintuc', 1)
                        ->where('idchuyenmuc', $id)
                        ->Join('chuyenmuc', 'videotintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                        ->Join('thongtin', 'videotintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                        ->select('videotintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                        ->limit(3)
                        ->get();

        return view('frontend.partials.tinchuyenmuc', compact('sidebar','header','hinhanhheader','tinchuyenmuc','videotintuc'));
    }

    public function loadvideo(Request $request){

        $data = DB::table('videotintuc')
                    ->where('id',$request->idvideo)
                    ->first();

        $output = '<video height="150px" controls>
                        <source src="'.$data->dulieuvideotintuc.'" type="video/mp4">
                    </video>';

        return response()->json($output);
    }
    
    public function tinvideo(){

        $header = DB::table('chuyenmuc')
                    ->orderBy('tenchuyenmuc')
                    ->get();

        $hinhanhheader = DB::table('tintuc')
                            ->orderBy('id', 'desc')
                            ->where('xuatbantintuc', 1)
                            ->where('loaitintuc', 1)
                            ->limit(5)  
                            ->get();

        $sidebar = DB::table('tintuc')
                    ->where('loaitintuc',1)
                    ->where('xuatbantintuc',1)
                    ->orderBy('id', 'desc')
                    ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                    ->Join('thongtin', 'tintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                    ->select('tintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                    ->limit(3)
                    ->get();

        $tinvideo = DB::table('videotintuc')
                        ->orderBy('id', 'desc')
                        ->where('xuatbanvideotintuc', 1)
                        ->where('loaivideotintuc', 1)
                        ->Join('chuyenmuc', 'videotintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                        ->Join('thongtin', 'videotintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                        ->select('videotintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                        ->paginate(20);

        $videotintuc = DB::table('videotintuc')
                        ->orderBy('id', 'desc')
                        ->where('xuatbanvideotintuc', 1)
                        ->where('loaivideotintuc', 1)
                        ->Join('chuyenmuc', 'videotintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                        ->Join('thongtin', 'videotintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                        ->select('videotintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                        ->limit(3)
                        ->get();
                        
        return view('frontend.gadget.tinvideo', compact('sidebar','header','hinhanhheader','videotintuc','tinvideo'));
    }

    public function detailvideo(Request $request){
        $id = $request->id;


        $header = DB::table('chuyenmuc')
                    ->orderBy('tenchuyenmuc')
                    ->get();
    
        $hinhanhheader = DB::table('tintuc')
                            ->orderBy('id', 'desc')
                            ->where('xuatbantintuc', 1)
                            ->where('loaitintuc', 1)
                            ->limit(5)  
                            ->get();

        $detailvideo = DB::table('videotintuc')
                        ->where('videotintuc.id',$id)
                        ->Join('chuyenmuc', 'videotintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                        ->Join('thongtin', 'videotintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                        ->select('videotintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                        ->first();
        
        $detailvideolienquan = DB::table('videotintuc')
                                ->orderBy('videotintuc.id', 'desc')
                                ->where('idchuyenmuc', $detailvideo->idchuyenmuc)
                                ->Join('chuyenmuc', 'videotintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                                ->Join('thongtin', 'videotintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                                ->select('videotintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                                ->limit(6)
                                ->get();

        $videotintuc = DB::table('videotintuc')
                        ->orderBy('id', 'desc')
                        ->where('xuatbanvideotintuc', 1)
                        ->where('loaivideotintuc', 1)
                        ->where('idchuyenmuc', $detailvideo->idchuyenmuc)
                        ->Join('chuyenmuc', 'videotintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                        ->Join('thongtin', 'videotintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                        ->select('videotintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                        ->limit(3)
                        ->get();
        return view('frontend.detail.detailvideo',compact('header','hinhanhheader','detailvideo','videotintuc','detailvideolienquan'));
    }
}
