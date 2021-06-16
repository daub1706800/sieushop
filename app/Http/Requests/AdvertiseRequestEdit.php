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
                Rule::dimensions()->width(300)->height(600), // banner dọc 300 x 600
                'max:2048',
            ],

            'dulieuhinhanhquangcao1' => 'nullable',
            'dulieuhinhanhquangcao1.*' => [
                'bail',
                'mimes:jpeg,jpg,png',
                Rule::dimensions()->width(728)->height(90), // banner ngang 728 x 90
                'max:2048',
            ],

            'dulieuhinhanhquangcao2' => 'nullable',
            'dulieuhinhanhquangcao2.*' => [
                'bail',
                'mimes:jpeg,jpg,png',
                Rule::dimensions()->width(1200)->height(1200), // banner vuông 1200 x 1200
                'max:2048',
            ],
            
            'tieudequangcao' => 'required|min:10|max:255',
        ];
    }

    public function messages()
    {
        return [
            'loaibanner.required' => 'Loại banner không được bỏ trống',
            
            'dulieuhinhanhquangcao.*.mimes' => 'File ảnh phải là JPEG, JPG, PNG',
            'dulieuhinhanhquangcao.*.dimensions' => 'Banner phải có độ phân giải 300 x 600 pixel', // banner dọc 300 x 600
            'dulieuhinhanhquangcao.*.max' => 'Kích thước ảnh tối đa cho phép là 2MB',

            'dulieuhinhanhquangcao1.*.mimes' => 'File ảnh phải là JPEG, JPG, PNG',
            'dulieuhinhanhquangcao1.*.dimensions' => 'Banner phải có độ phân giải 728 x 90 pixel', // banner ngang 728 x 90
            'dulieuhinhanhquangcao1.*.max' => 'Kích thước ảnh tối đa cho phép là 2MB',

            'dulieuhinhanhquangcao2.*.mimes' => 'File ảnh phải là JPEG, JPG, PNG',
            'dulieuhinhanhquangcao2.*.dimensions' => 'Banner phải có độ phân giải 1200 x 1200 pixel', // banner vuông 1200 x 1200
            'dulieuhinhanhquangcao2.*.max' => 'Kích thước ảnh tối đa cho phép là 2MB',

            'tieudequangcao.required' => 'Tiêu đề quảng cáo không được để trống',
            'tieudequangcao.min' => 'Tiêu đề quảng cáo không được ít hơn 10 ký tự',
            'tieudequangcao.max' => 'Tiêu đề quảng cáo không được vượt quá 255 ký tự',
        ];
    }
}
