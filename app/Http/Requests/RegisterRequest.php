<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RegisterRequest extends FormRequest
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
            'email' => 'bail|required|email:rfc,dns|unique:users|max:255',
            'password' => [
                'bail',
                'required',
                // 'regex:/^.*(?=.{3,})(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[\d\x])(?=.*[!$#%]).*$/',
                'regex:/^.*(?=.{3,})(?=.*[a-zA-Z])(?=.*[0-9]).*$/',
                'confirmed',
                'min:8',
            ],
        ];
    }

    public function messages()
    {
        return [
            'email.required' => 'Email không được để trống',
            'email.email' => 'Email không hợp lệ',
            'email.unique' => 'Email đã tồn tại',
            'email.max' => 'Email không được vượt quá 255 ký tự',
            'password.required' => 'Mật khẩu không được để trống',
            'password.regex' => 'Mật khẩu phải có ký tự hoa thường và số',
            'password.confirmed' => 'Nhập lại mật khẩu không trùng khớp',
            'password.min' => 'Mật khẩu phải ít nhất 8 ký tự',
        ];
    }
}
