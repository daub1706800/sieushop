<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProfileRequest extends FormRequest
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
            'hothanhvien' => 'bail|required|max:255',
            'tenthanhvien' => 'bail|required|max:255',
            'namsinh' => 'bail|required|before:18 years ago',
            'diachi' => 'bail|required|max:255',
            'dienthoai' => 'bail|required|digits:10',
        ];
    }

    public function messages()
    {
        return [
            'hothanhvien.required' => 'Họ không được để trống',
            'hothanhvien.max' => 'Họ không vượt quá 255 ký tự',
            'tenthanhvien.required' => 'Tên không được để trống',
            'tenthanhvien.max' => 'Tên không vượt quá 255 ký tự',
            'namsinh.required' => 'Năm sinh không được để trống',
            'namsinh.before' => 'Phải từ 18 tuổi trở lên',
            'diachi.required' => 'Địa chỉ không được để trống',
            'diachi.max' => 'Địa chỉ không vượt quá 255 ký tự',
            'dienthoai.required' => 'Số điện thoại không được để trống',
            'dienthoai.digits' => 'Số điện thoại phải là kiểu số và có độ dài 10 ký tự',
        ];
    }
}
