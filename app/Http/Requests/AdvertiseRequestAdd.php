<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

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
            'loaibanner' => 'required',

            'dulieuhinhanhquangcao' => 'nullable',
            'dulieuhinhanhquangcao.*' => [
                'bail',
                'mimes:jpeg,jpg,png',
                Rule::dimensions()->maxWidth(500)->maxHeight(1000)->ratio(2/5),
            ], // banner dọc 500 x 1000

            'dulieuhinhanhquangcao1' => 'nullable',
            // 'dulieuhinhanhquangcao1.*' => 'bail|mimes:jpeg,jpg,png|dimensions:ratio=2/5, max_width=400, max_height=200|max:2048', // banner ngang
            'dulieuhinhanhquangcao1.*' => [
                'bail',
                'mimes:jpeg,jpg,png',
                Rule::dimensions()->maxWidth(1000)->maxHeight(500)->ratio(5/2),
            ], // banner ngang

            'dulieuhinhanhquangcao2' => 'nullable',
            // 'dulieuhinhanhquangcao2.*' => 'bail|mimes:jpeg,jpg,png|dimensions:ratio=1, max_width=1000, max_height=1000|max:2048', // banner vuông
            'dulieuhinhanhquangcao2.*' => [
                'bail',
                'mimes:jpeg,jpg,png',
                Rule::dimensions()->maxWidth(1000)->maxHeight(1000)->ratio(1/1),
            ], // banner vuông

            'tieudequangcao' => 'required|min:10|max:255',
        ];
    }

    public function messages()
    {
        return [
            'loaibanner.required' => 'Loại banner không được bỏ trống',
            
            'dulieuhinhanhquangcao.*.mimes' => 'File ảnh phải là JPEG, JPG, PNG',
            'dulieuhinhanhquangcao.*.dimensions' => 'Độ phân giải tối đa cho phép: 500 x 1000 pixel và tỉ lệ ảnh 2:5',
            'dulieuhinhanhquangcao.*.max' => 'Kích thước ảnh tối đa cho phép là 2MB',

            'dulieuhinhanhquangcao1.*.mimes' => 'File ảnh phải là JPEG, JPG, PNG',
            'dulieuhinhanhquangcao1.*.dimensions' => 'Độ phân giải ảnh tối đa cho phép: 1000 x 500 pixel và tỉ lệ ảnh 5:2',
            'dulieuhinhanhquangcao1.*.max' => 'Kích thước ảnh tối đa cho phép là 2MB',

            'dulieuhinhanhquangcao2.*.mimes' => 'File ảnh phải là JPEG, JPG, PNG',
            'dulieuhinhanhquangcao2.*.dimensions' => 'Độ phân giải ảnh tối đa cho phép: 1000 x 1000 pixel và tỉ lệ ảnh 1:1',
            'dulieuhinhanhquangcao2.*.max' => 'Kích thước ảnh tối đa cho phép là 2MB',

            'tieudequangcao.required' => 'Tiêu đề quảng cáo không được để trống',
            'tieudequangcao.min' => 'Tiêu đề quảng cáo không được ít hơn 10 ký tự',
            'tieudequangcao.max' => 'Tiêu đề quảng cáo không được vượt quá 255 ký tự',
        ];
    }
}
