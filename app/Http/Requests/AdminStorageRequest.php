<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminStorageRequest extends FormRequest
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
            'idcongty' => 'required|exists:congty,id',
            'tenkho' => 'required|max:255',
            'taitrongkho' => 'bail|required|numeric',
            'dientichkho' => 'bail|required|numeric',
            'sonhanvienkho' => 'bail|required|numeric',
            'diachikho' => 'required|max:255',
            'ghichukho' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'idcongty.required' => 'Công ty không được để trống',
            'idcongty.exists' => 'Công ty không tồn tại',
            'tenkho.required' => 'Tên kho không được để trống',
            'tenkho.max' => 'Tên kho không được vượt quá 255 ký tự',
            'taitrongkho.required' => 'Tải trọng kho không được để trống',
            'taitrongkho.numeric' => 'Tải trọng kho phải là số nguyên',
            'dientichkho.required' => 'Diện tích kho không được để trống',
            'dientichkho.numeric' => 'Diện tích kho phải là số nguyên',
            'sonhanvienkho.required' => 'Tổng số nhân viên không được để trống',
            'sonhanvienkho.numeric' => 'Tổng số nhân viên phải là số nguyên',
            'diachikho.required' => 'Địa chỉ không được để trống',
            'diachikho.max' => 'Địa chỉ không được vượt quá 255 ký tự',
            'ghichukho.required' => 'Ghi chú không được để trống',
        ];
    }
}
