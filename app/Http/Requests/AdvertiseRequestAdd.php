<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdvertiseRequestAdd extends FormRequest
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
            'dulieuhinhanhquangcao' => 'required',
            'dulieuhinhanhquangcao.*' => 'bail|mimes:jpeg,jpg,png|dimensions:max_width=1000, max_height=500, ratio=3/2|max:2048',
            'tieudequangcao' => 'required|min:10|max:255',
        ];
    }

    public function messages()
    {
        return [
            'dulieuhinhanhquangcao.required' => 'Ảnh quảng cáo không được để trống',
            'dulieuhinhanhquangcao.*.mimes' => 'File ảnh phải là JPEG, JPG, PNG',
            'dulieuhinhanhquangcao.*.dimensions' => 'Độ phân giải ảnh tối đa cho phép là 1000 x 500 pixel',
            'dulieuhinhanhquangcao.*.max' => 'Kích thước ảnh tối đa cho phép là 2MB',
            'tieudequangcao.required' => 'Tiêu đề quảng cáo không được để trống',
            'tieudequangcao.min' => 'Tiêu đề quảng cáo không được ít hơn 10 ký tự',
            'tieudequangcao.max' => 'Tiêu đề quảng cáo không được vượt quá 255 ký tự',
        ];
    }
}
