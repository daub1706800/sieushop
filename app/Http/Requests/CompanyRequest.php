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
            // 'dienthoaicongty' => 'bail|required|digits:10',
            // 'faxcongty' => 'bail|required|digits:10',
            'webcongty' => 'bail|required|url|max:255',
            'diachicongty' => 'bail|required|max:255',
            'idso' => 'bail|required|exists:so,id',
            'idlinhvuc' => 'bail|required|exists:linhvuc,id',
            'sdkkdcongty' => 'bail|required|max:255',
            'ngaycapdkkdcongty' => 'bail|required|before:today',
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
            'ngaythanhlapcongty.before' => 'Ngày thành lập không hợp Lệ',
            'emailcongty.required' => 'Email không được để trống',
            'emailcongty.email' => 'Email không hợp lệ',
            'emailcongty.max' => 'Email không được vượt quá 255 ký tự',
            // 'dienthoaicongty.required' => 'Điện thoại không được để trống',
            // 'dienthoaicongty.digits' => 'Điện thoại phải là kiểu số và có 10 ký tự',
            // 'faxcongty.required' => 'Fax không được để trống',
            // 'faxcongty.digits' => 'Fax phải là kiểu số và có 10 ký tự',
            'webcongty.required' => 'Website không được để trống',
            'webcongty.url' => 'Website không hợp lệ',
            'webcongty.max' => 'Website không được vượt quá 255 ký tự',
            'diachicongty.required' => 'Địa chỉ không được để trống',
            'diachicongty.max' => 'Địa chỉ không được vượt quá 255 ký tự',
            'idso.required' => 'Sở không được để trống',
            'idso.exists' => 'Lỗi không tìm thấy Sở',
            'idlinhvuc.required' => 'Lĩnh vực không được để trống',
            'idlinhvuc.exists' => 'Lỗi không tìm thấy Lĩnh vực',
            'sdkkdcongty.required' => 'Số đăng ký kinh doanh không được để trống',
            'sdkkdcongty.max' => 'Số đăng ký kinh doanh không được vượt quá 255 ký tự',
            'ngaycapdkkdcongty.required' => 'Ngày cấp đăng ký kinh doanh không được để trống',
            'ngaycapdkkdcongty.before' => 'Ngày cấp đăng ký kinh doanh không hợp lệ',
            'noicapdkkdcongty.required' => 'Nơi cấp đăng ký kinh doanh không được để trống',
            'noicapdkkdcongty.max' => 'Nơi cấp đăng ký kinh doanh không được vượt quá 255 ký tự',
            'masothuecongty.required' => 'Mã số thuế không được để trống',
            'masothuecongty.max' => 'Mã số thuế không được vượt quá 255 ký tự',
        ];
    }
}
