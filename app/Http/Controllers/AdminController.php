<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\News;
use App\Models\NewsVideo;
use App\Models\User;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    private $news;
    private $newsvideo;
    private $user;

    public function __construct(News $news, NewsVideo $newsvideo, User $user)
    {
        $this->news = $news;
        $this->newsvideo = $newsvideo;
        $this->user = $user;
    }

    public function count_badge()
    {
        if (auth()->user()->loaitaikhoan == 2) {
            $news = $this->news->where('duyettintuc', 0)
                               ->orWhere('xuatbantintuc', 0)
                               ->count();

            $newsvideo = $this->newsvideo->where('duyetvideotintuc', 0)
                                         ->orWhere('xuatbanvideotintuc', 0)
                                         ->count();
            
            $accounts = $this->user->where('email_verified_at', "")
                                   ->orWhere('email_verified_at', null)
                                   ->count();
            
            $arr = [
                'news' => $news,
                'newsvideo' => $newsvideo,
                'accounts' => $accounts
            ];

            return response()->json($arr);
        }
        else {
            $news = $this->news->where(function($query) { 
                $query->where('duyettintuc', 0)
                  ->orWhere('xuatbantintuc', 0);
            })->where('idcongty', auth()->user()->idcongty)->count();
                       
            $newsvideo = $this->newsvideo->where(function($query) { 
                $query->where('duyetvideotintuc', 0)
                  ->orWhere('xuatbanvideotintuc', 0);
            })->where('idcongty', auth()->user()->idcongty)->count();                             
            
            $arr = [
                'news' => $news,
                'newsvideo' => $newsvideo,
                'accounts' => ""
            ];

            return response()->json($arr);
        }
    }
}
