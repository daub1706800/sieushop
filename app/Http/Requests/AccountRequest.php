<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

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
            'email' => 'bail|required|email:rfc,dns',
            'password' => 'bail|required|max:255',
            'password_confirmation' => 'bail|required|confirmed',
            'idvaitro' => 'bail|required|exists:vaitro,id',
        ];
    }

    public function messages()
    {
        return [
            'email.required' => 'Email không được để trống',
            'email.email' => 'Email không hợp lệ',
            'password.required' => 'Mật khẩu không được để trống',
            'password.max' => 'Mật khẩu không được vượt quá 255 ký tự',
            'password_confirmation.required' => 'Nhập lại mật khẩu không được để trống',
            'password_confirmation.confirmed' => 'Mật khẩu không khớp',
            'idvaitro.required' => 'Vai trò không được để trống',
            'idvaitro.exists' => 'Lỗi không tìm thấy Vai trò',
        ];
    }
}
