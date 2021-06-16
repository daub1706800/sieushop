<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class AdvertiseRequestEdit extends FormRequest
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
            'loaibanner' => 'required',
            'dulieuhinhanhquangcao' => 'nullable',
            'dulieuhinhanhquangcao.*' => [
                'bail',
                'mimes:jpeg,jpg,png',
                Rule::dimensions()->maxWidth(200)->maxHeight(500)->ratio(2/5),
                'max:2048',
            ], // banner dọc 200 x 500

            'dulieuhinhanhquangcao1' => 'nullable',
            'dulieuhinhanhquangcao1.*' => [
                'bail',
                'mimes:jpeg,jpg,png',
                Rule::dimensions()->maxWidth(600)->maxHeight(200)->ratio(3/1),
                'max:2048',
            ], // banner ngang 600 x 200

            'dulieuhinhanhquangcao2' => 'nullable',
            'dulieuhinhanhquangcao2.*' => [
                'bail',
                'mimes:jpeg,jpg,png',
                Rule::dimensions()->maxWidth(250)->maxHeight(250)->ratio(1/1),
                'max:2048',
            ], // banner vuông 250 x 250
            
            'tieudequangcao' => 'required|min:10|max:255',
        ];
    }

    public function messages()
    {
        return [
            'loaibanner.required' => 'Loại banner không được bỏ trống',
            
            'dulieuhinhanhquangcao.*.mimes' => 'File ảnh phải là JPEG, JPG, PNG',
            'dulieuhinhanhquangcao.*.dimensions' => 'Độ phân giải tối đa cho phép: 200 x 500 pixel và tỉ lệ ảnh 2:5',
            'dulieuhinhanhquangcao.*.max' => 'Kích thước ảnh tối đa cho phép là 2MB',

            'dulieuhinhanhquangcao1.*.mimes' => 'File ảnh phải là JPEG, JPG, PNG',
            'dulieuhinhanhquangcao1.*.dimensions' => 'Độ phân giải ảnh tối đa cho phép: 600 x 200 pixel và tỉ lệ ảnh 5:2',
            'dulieuhinhanhquangcao1.*.max' => 'Kích thước ảnh tối đa cho phép là 2MB',

            'dulieuhinhanhquangcao2.*.mimes' => 'File ảnh phải là JPEG, JPG, PNG',
            'dulieuhinhanhquangcao2.*.dimensions' => 'Độ phân giải ảnh tối đa cho phép: 250 x 250 pixel và tỉ lệ ảnh 1:1',
            'dulieuhinhanhquangcao2.*.max' => 'Kích thước ảnh tối đa cho phép là 2MB',

            'tieudequangcao.required' => 'Tiêu đề quảng cáo không được để trống',
            'tieudequangcao.min' => 'Tiêu đề quảng cáo không được ít hơn 10 ký tự',
            'tieudequangcao.max' => 'Tiêu đề quảng cáo không được vượt quá 255 ký tự',
        ];
    }
}
