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
        Carbon::setLocale('vi');
        $sidebar = DB::table('tintuc')
                    ->where('loaitintuc',1)
                    ->where('xuatbantintuc',1)
                    ->orderBy('id', 'desc')
                    ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                    ->Join('thongtin', 'tintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                    ->select('tintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                    ->limit(3)
                    ->get();
        foreach($sidebar as $row){
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

        $content = DB::table('tintuc')
                    ->where('xuatbantintuc',1)
                    ->orderBy('id', 'desc')
                    ->Join('chuyenmuc', 'tintuc.idchuyenmuc', '=', 'chuyenmuc.id')
                    ->Join('thongtin', 'tintuc.idtaikhoan', '=', 'thongtin.idtaikhoan')
                    ->select('tintuc.*','chuyenmuc.tenchuyenmuc','thongtin.hothanhvien','thongtin.tenthanhvien')
                    ->Paginate(10);

        $content_sidebar_video = DB::table('video')
                                    ->orderBy('id', 'desc')
                                    ->join('tintuc', 'video.idtintuc', '=', 'tintuc.id')
                                    ->where('tintuc.xuatbantintuc',1)
                                    ->select('video.*', 'tintuc.tieudetintuc')
                                    ->limit(3)
                                    ->get();

        return view('frontend.home', compact('content','sidebar','content_sidebar_video'));

    }
    
}
