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
        $news = $this->news->where('duyettintuc', 0)->orWhere('xuatbantintuc', 0)->get();

        $newsvideo = $this->newsvideo->where('duyetvideotintuc', 0)->orWhere('xuatbanvideotintuc', 0)->get();
        
        $accounts = $this->user->where('email_verified_at', "")->orWhere('email_verified_at', null)->get();
        
        $arr = [
            'news' => count($news),
            'newsvideo' => count($newsvideo),
            'accounts' => count($accounts)
        ];

        return response()->json($arr);
    }
}
