<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CompanyRequest extends FormRequest
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
            'tencongty' => 'bail|required|max:255',
            'ngaythanhlapcongty' => 'bail|required|before:today',
            'emailcongty' => 'bail|required|email:rfc,dns|max:255',
            'dienthoaicongty' => 'nullable|digits:10',
            'faxcongty' => 'nullable|digits:10',
            'webcongty' => 'bail|required|active_url|max:255',
            'diachicongty' => 'bail|required|max:255',
            'idso' => 'bail|required|exists:so,id',
            'idlinhvuc' => 'bail|required|exists:linhvuc,id',
            'sdkkdcongty' => 'bail|required|max:255',
            'ngaycapdkkdcongty' => 'bail|required|after:ngaythanhlapcongty',
            'noicapdkkdcongty' => 'bail|required|max:255',
            'masothuecongty' =>  'bail|required|max:255',
        ];
    }

    public function messages()
    {
        return [
            'tencongty.required' => 'Tên không được để trống',
            'tencongty.max' => 'Tên không được vượt quá 255 ký tự',
            'ngaythanhlapcongty.required' => 'Ngày thành lập không được để trống',
            'ngaythanhlapcongty.before' => 'Ngày thành lập phải trước ngày hiện tại',
            'emailcongty.required' => 'Email không được để trống',
            'emailcongty.email' => 'Email không hợp lệ',
            'emailcongty.max' => 'Email không được vượt quá 255 ký tự',
            'dienthoaicongty.digits' => 'Điện thoại phải là kiểu số và có 10 ký tự',
            'faxcongty.digits' => 'Fax phải là kiểu số và có 10 ký tự',
            'webcongty.required' => 'Website không được để trống',
            'webcongty.active_url' => 'Website vừa nhập không phải là một url hợp lệ',
            'webcongty.max' => 'Website không được vượt quá 255 ký tự',
            'diachicongty.required' => 'Địa chỉ không được để trống',
            'diachicongty.max' => 'Địa chỉ không được vượt quá 255 ký tự',
            'idso.required' => 'Sở không được để trống',
            'idso.exists' => 'Lỗi không tìm thấy Sở',
            'idlinhvuc.required' => 'Lĩnh vực không được để trống',
            'idlinhvuc.exists' => 'Lỗi không tìm thấy Lĩnh vực',
            'sdkkdcongty.required' => 'Số đăng ký kinh doanh không được để trống',
            'sdkkdcongty.max' => 'Số đăng ký kinh doanh không được vượt quá 255 ký tự',
            'ngaycapdkkdcongty.required' => 'Ngày cấp không được để trống',
            'ngaycapdkkdcongty.after' => 'Ngày cấp phải sau ngày thành lập công ty',
            'noicapdkkdcongty.required' => 'Nơi cấp không được để trống',
            'noicapdkkdcongty.max' => 'Nơi cấp không được vượt quá 255 ký tự',
            'masothuecongty.required' => 'Mã số thuế không được để trống',
            'masothuecongty.max' => 'Mã số thuế không được vượt quá 255 ký tự',
        ];
    }
}
