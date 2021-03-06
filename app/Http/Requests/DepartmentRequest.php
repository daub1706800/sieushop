<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class DepartmentRequest extends FormRequest
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
            'tenso' => 'bail|required|max:255',
            'diachiso' => 'bail|required|max:255',
            'emailso' => 'bail|required|email:rfc,dns|max:255',
            'dienthoaiso' => 'nullable|digits:10',
            'faxso' => 'nullable|digits:10',
            'webso' => 'bail|required|active_url|max:255',
        ];
    }

    public function messages()
    {
        return [
            'tenso.required' => 'Tên không được để trống',
            'tenso.max' => 'Tên không được vượt quá 255 ký tự',
            'diachiso.required' => 'Địa chỉ không được để trống',
            'diachiso.max' => 'Địa chỉ không được vượt quá 255 ký tự',
            'emailso.required' => 'Email không được để trống',
            'emailso.email' => 'Email không hợp lệ',
            'emailso.max' => 'Email không được vượt quá 255 ký tự',
            'dienthoaiso.digits' => 'Điện thoại phải là kiểu số và có 10 ký tự',
            'faxso.digits' => 'Fax phải là kiểu số và có 10 ký tự',
            'webso.required' => 'Website không được bỏ trống',
            'webso.active_url' => 'Website vừa nhập không phải là một url hợp lệ',
            'webso.max' => 'Website không được vượt quá 255 ký tự',
        ];
    }
}
