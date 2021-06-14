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

        $content = DB::table('tintuc')
                    ->where('xuatbantintuc',1)
                    ->orderBy('id', 'desc')
                    ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                    ->Join('thongtin', 'tintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                    ->select('tintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                    ->limit(10)
                    ->get();

        // $videotintuc = DB::table('videotintuc')
        //                 ->orderBy('id', 'desc')
        //                 ->where('xuatbanvideotintuc', 1)
        //                 ->where('loaivideotintuc', 1)
        //                 ->Join('chuyenmuc', 'videotintuc.idchuyenmuc', '=', 'chuyenmuc.id')
        //                 ->Join('thongtin', 'videotintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
        //                 ->select('videotintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
        //                 ->limit(3)
        //                 ->get();

        return view('frontend.home', compact('sidebar','header','content'));
    }
    public function index_product()
    {
        $header = DB::table('chuyenmuc')
                    ->orderBy('tenchuyenmuc')
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

        return view('frontend.gadget.gadget', compact('header','sidebar','gadget'));
    }
    
    public function contact()
    {
        $header = DB::table('chuyenmuc')
                    ->orderBy('tenchuyenmuc')
                    ->get();

        return view('frontend.contact.contact', compact('header'));
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

        $detail = DB::table('tintuc')
                    ->where('tintuc.id',$id)
                    ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                    ->Join('thongtin', 'tintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                    ->select('tintuc.*','chuyenmuc.id','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                    ->first();

        // $videotintuc = DB::table('videotintuc')
        //                 ->orderBy('id', 'desc')
        //                 ->where('xuatbanvideotintuc', 1)
        //                 ->where('loaivideotintuc', 1)
        //                 ->where('idchuyenmuc', $detail->idchuyenmuc)
        //                 ->Join('chuyenmuc', 'videotintuc.idchuyenmuc', '=', 'chuyenmuc.id')
        //                 ->Join('thongtin', 'videotintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
        //                 ->select('videotintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
        //                 ->limit(3)
        //                 ->get();

        return view('frontend.detail.detail', compact('header','sidebar','detail'));
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

        $tinchuyenmuc = DB::table('tintuc')
                    ->where('xuatbantintuc',1)
                    ->where('idchuyenmuc',$id)
                    ->orderBy('id', 'desc')
                    ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                    ->Join('thongtin', 'tintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                    ->select('tintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                    ->Paginate(10);

        // $videotintuc = DB::table('videotintuc')
        //                 ->orderBy('id', 'desc')
        //                 ->where('xuatbanvideotintuc', 1)
        //                 ->where('loaivideotintuc', 1)
        //                 ->where('idchuyenmuc', $detail->idchuyenmuc)
        //                 ->Join('chuyenmuc', 'videotintuc.idchuyenmuc', '=', 'chuyenmuc.id')
        //                 ->Join('thongtin', 'videotintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
        //                 ->select('videotintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
        //                 ->limit(3)
        //                 ->get();

        return view('frontend.partials.tinchuyenmuc', compact('sidebar','header','tinchuyenmuc'));
    }
    
}
