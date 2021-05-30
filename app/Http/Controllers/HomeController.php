<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware(['auth', 'verified']);
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // if (auth()->user()->loaitaikhoan != 0) {
        //     return view('admin.home');
        //     // dd("Đây là trang admin");
        // }
        return view('frontend.home');
    }
}
