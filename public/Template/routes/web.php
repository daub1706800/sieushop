<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function (){
    return view('home.home');
});

Route::get('/contact', [
    'as' => 'contact',
    'uses' => function(){
        return view('contact.contact');
    }
]);

Route::get('/review', [
    'as' => 'review',
    'uses' => function(){
        return view('review.review');
    }]);

Route::get('/video', [
    'as' => 'video',
    'uses' => function(){
        return view('video.video');
    }
]);

Route::get('/gadget', [
    'as' => 'gadget',
    'uses' => function(){
        return view('gadget.gadget');
    }
]);

Route::get('/detail', [
    'as' => 'detail',
    'uses' => function(){
        return view('detail.detail');
    }
]);

