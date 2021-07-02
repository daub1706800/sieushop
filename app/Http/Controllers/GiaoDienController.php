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

        $quangcaodoc = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 0)
                    ->limit(5)
                    ->get();
        $quangcaongang = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 1)
                    ->limit(5)
                    ->get();
        $quangcaovuong = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 2)
                    ->limit(5)
                    ->get();

        return view('frontend.home', compact('sidebar','header','hinhanhheader','content','videotintuc','quangcaodoc','quangcaongang','quangcaovuong'));
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

        $loaisanpham = DB::table('loaisanpham')
                            ->orderBy('tenloaisanpham')
                            ->get();

        $gadget = DB::table('sanpham')
                    ->orderBy('id', 'desc')
                    ->join('congty', 'sanpham.idcongty', '=', 'congty.id')
                    ->join('loaisanpham', 'sanpham.idloaisanpham', '=', 'loaisanpham.id')
                    ->select('sanpham.*', 'loaisanpham.tenloaisanpham', 'congty.tencongty')
                    ->Paginate(30);

        $videotintuc = DB::table('videotintuc')
                        ->orderBy('id', 'desc')
                        ->where('xuatbanvideotintuc', 1)
                        ->where('loaivideotintuc', 1)
                        ->Join('chuyenmuc', 'videotintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                        ->Join('thongtin', 'videotintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                        ->select('videotintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                        ->limit(3)
                        ->get();

        $quangcaodoc = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 0)
                    ->limit(5)
                    ->get();
        $quangcaongang = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 1)
                    ->limit(5)
                    ->get();
        $quangcaovuong = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 2)
                    ->limit(5)
                    ->get();

        return view('frontend.gadget.gadget', compact('header','sidebar','loaisanpham','gadget','hinhanhheader','videotintuc','quangcaodoc','quangcaongang','quangcaovuong'));
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
                    ->where('xuatbantintuc',1)
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

        $quangcaodoc = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 0)
                    ->limit(5)
                    ->get();
        $quangcaongang = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 1)
                    ->limit(5)
                    ->get();
        $quangcaovuong = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 2)
                    ->limit(5)
                    ->get();

        return view('frontend.detail.detail', compact('header','hinhanhheader','detail','videotintuc','detailtinlienquan','quangcaodoc','quangcaongang','quangcaovuong'));
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

        $quangcaodoc = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 0)
                    ->limit(5)
                    ->get();
        $quangcaongang = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 1)
                    ->limit(5)
                    ->get();
        $quangcaovuong = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 2)
                    ->limit(5)
                    ->get();

        return view('frontend.partials.tinchuyenmuc', compact('sidebar','header','hinhanhheader','tinchuyenmuc','videotintuc','quangcaodoc','quangcaongang','quangcaovuong'));
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

        $quangcaodoc = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 0)
                    ->limit(5)
                    ->get();
        $quangcaongang = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 1)
                    ->limit(5)
                    ->get();
        $quangcaovuong = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 2)
                    ->limit(5)
                    ->get();
                        
        return view('frontend.gadget.tinvideo', compact('header','hinhanhheader','videotintuc','tinvideo','quangcaodoc','quangcaongang','quangcaovuong'));
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
                                ->where('xuatbanvideotintuc',1)
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

        $quangcaodoc = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 0)
                    ->limit(5)
                    ->get();
        $quangcaongang = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 1)
                    ->limit(5)
                    ->get();
        $quangcaovuong = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 2)
                    ->limit(5)
                    ->get();
                    
        return view('frontend.detail.detailvideo',compact('header','hinhanhheader','detailvideo','videotintuc','detailvideolienquan','quangcaodoc','quangcaongang','quangcaovuong'));
    }

    public function detailsanpham(Request $request){

        $id = $request->id;
        $sao = 5;

        $header = DB::table('chuyenmuc')
                    ->orderBy('tenchuyenmuc')
                    ->get();
    
        $hinhanhheader = DB::table('tintuc')
                            ->orderBy('id', 'desc')
                            ->where('xuatbantintuc', 1)
                            ->where('loaitintuc', 1)
                            ->limit(5)  
                            ->get();
        
        $loaisanpham = DB::table('loaisanpham')
                        ->orderBy('tenloaisanpham')
                        ->get();

        $detailsanpham = DB::table('sanpham')
                        ->where('sanpham.id',$id)
                        ->orderBy('id', 'desc')
                        ->join('congty', 'sanpham.idcongty', '=', 'congty.id')
                        ->join('loaisanpham', 'sanpham.idloaisanpham', '=', 'loaisanpham.id')
                        ->select('sanpham.*','loaisanpham.tenloaisanpham', 'congty.tencongty')
                        ->first();
        
        $hinhanhsanpham = DB::table('hinhanh')
                            ->where('hinhanh.idsanpham', $detailsanpham->id)
                            ->get();

        $danhgia = DB::table('danhgia')
                    ->orderBy('danhgia.id','desc')
                    ->where('idsanpham',$id)
                    ->where('trangthaidanhgia',1)
                    ->join('thongtin', 'danhgia.idtaikhoan', '=', 'thongtin.idtaikhoan')
                    ->select('danhgia.*','thongtin.hothanhvien','thongtin.tenthanhvien')
                    ->paginate(10);
        $danhgia2 = DB::table('danhgia')
                    ->orderBy('id','desc')
                    ->where('idsanpham',$id)
                    ->where('trangthaidanhgia',1)
                    ->get();
        $sao = 0;
        $saotb = 0;
        $saotb1 = 0;
        foreach($danhgia2 as $key => $row){
            $sao = $sao + $row->saodanhgia;
        }
        if($sao!=0)  $saotb1 = round($sao/count($danhgia2), 1);
        if($sao!=0)  $saotb = $sao/count($danhgia2);
        if($saotb>0 && $saotb<1) $saotb = 1;
        if($saotb>1 && $saotb<2.5) $saotb = 2;
        if($saotb>=2.5 && $saotb<3.5) $saotb = 3;
        if($saotb>3.5 && $saotb<4.5) $saotb = 4;
        
        $detailsanphamlienquan = DB::table('sanpham')
                                ->orderBy('sanpham.id', 'desc')
                                ->where('idloaisanpham', $detailsanpham->idloaisanpham)
                                ->join('congty', 'sanpham.idcongty', '=', 'congty.id')
                                ->join('loaisanpham', 'sanpham.idloaisanpham', '=', 'loaisanpham.id')
                                ->select('sanpham.*', 'loaisanpham.tenloaisanpham', 'congty.tencongty')
                                ->limit(12)
                                ->get();

        $congty = DB::table('congty')
                    ->where('id',$detailsanpham->idcongty)
                    ->first();

        $videotintuc = DB::table('videotintuc')
                        ->orderBy('id', 'desc')
                        ->where('xuatbanvideotintuc', 1)
                        ->where('loaivideotintuc', 1)
                        ->Join('chuyenmuc', 'videotintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                        ->Join('thongtin', 'videotintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                        ->select('videotintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                        ->limit(3)
                        ->get();

        $quangcaodoc = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 0)
                    ->limit(5)
                    ->get();
        $quangcaongang = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 1)
                    ->limit(5)
                    ->get();
        $quangcaovuong = DB::table('hinhanhquangcao')
                    ->orderBy('id', 'desc')
                    ->where('loaibanner', 2)
                    ->limit(5)
                    ->get();

        return view('frontend.detail.detailsanpham',compact('header','hinhanhheader','detailsanpham','hinhanhsanpham','danhgia','saotb','saotb1','videotintuc','detailsanphamlienquan','congty','quangcaodoc','quangcaongang','quangcaovuong'));
    }
}
