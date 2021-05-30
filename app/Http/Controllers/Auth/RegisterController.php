<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            // 'name' => ['bail', 'required', 'string', 'max:255'],
            'email' => ['bail', 'required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['bail', 'required', 'string', 'min:8', 'confirmed', 'regex:/^.*(?=.{3,})(?=.*[a-zA-Z])(?=.*[0-9]).*$/'],
        ], [
            // 'name.required' => 'Họ tên không được để trống',
            // 'name.string' => 'Họ tên phải là kiểu chuỗi',
            // 'name.max' => 'Họ tên không được vượt quá 255 ký tự',
            'email.required' => 'Email không được để trống',
            'email.string' => 'Email phải là kiểu chuỗi',
            'email.email' => 'Email không hợp lệ',
            'email.max' => 'Email không được vượt quá 255 ký tự',
            'email.unique' => 'Email đã tồn tại',
            'password.required' => 'Mật khẩu không được để trống',
            'password.string' => 'Mật khẩu phải là kiểu chuỗi',
            'password.min' => 'Mật khẩu không được ít hơn 8 ký tự',
            'password.confirmed' => 'Nhập lại mật khẩu không trùng khớp',
            'password.regex' => 'Mật khẩu phải có ký tự hoa thường và số',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
        return User::create([
            // 'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
    }
}
