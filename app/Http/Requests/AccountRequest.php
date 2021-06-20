<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class AccountRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'email' => ['bail', 'required', 'string', 'email:rfc,dns', 'max:255', 'unique:users'],
            'password' => ['bail', 'required', 'string', 'min:8', 'confirmed', 'regex:/^.*(?=.{3,})(?=.*[a-zA-Z])(?=.*[0-9]).*$/'],
            'idvaitro' => ['required'],
            'idvaitro.*' => [
                Rule::exists('vaitro', 'id')->where(function ($query) {
                    return $query->where('idcongty', auth()->user()->idcongty);
                }),
            ],
            'thoigianbatdau' => ['nullable'],
            'thoigianbatdau.*' => ['after_or_equal:today'],
            'thoigianketthuc.*' => ['nullable', 'after_or_equal:thoigianbatdau.*'],
        ];
    }

    public function messages()
    {
        return [
            'email.required' => 'Email không được để trống',
            'email.string' => 'Email phải là kiểu chuỗi',
            'email.email' => 'Email không hợp lệ',
            'email.max' => 'Email không được vượt quá 255 ký tự',
            'email.unique' => 'Email đã tồn tại',
            'password.required' => 'Mật khẩu không được để trống',
            'password.string' => 'Mật khẩu phải là kiểu chuỗi',
            'password.min' => 'Mật khẩu không được ít hơn 8 ký tự',
            'password.confirmed' => 'Nhập lại mật khẩu không chính xác',
            'password.regex' => 'Mật khẩu phải có ký tự hoa thường và số',
            'idvaitro.required' => 'Vai trò không được bỏ trống',
            'idvaitro.*.exists' => 'Vai trò không tồn tại',
            'thoigianbatdau.required' => 'Thời gian bắt đầu không được bỏ trống',
            'thoigianbatdau.*.after_or_equal' => 'Thời gian bắt đầu phải bằng hoặc trễ hơn ngày hiện tại',
            'thoigianketthuc.*.after_or_equal' => 'Thời gian kết thúc phải bằng hoặc trễ hơn thời gian bắt đầu',
        ];
    }
}
