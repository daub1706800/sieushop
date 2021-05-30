<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductCategoryRequest extends FormRequest
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
            'tenloaisanpham' => 'bail|required|min:5|max:255',
            'motaloaisanpham' => 'bail|required|min:5|max:255',
        ];
    }

    public function messages()
    {
        return [
            'tenloaisanpham.required' => 'Tên không được bỏ trống',
            'tenloaisanpham.min' => 'Tên không được ít hơn 5 ký tự',
            'tenloaisanpham.max' => 'Tên không được vượt quá 255 ký tự',
            'motaloaisanpham.required' => 'Mô tả không được bỏ trống',
            'motaloaisanpham.min' => 'Mô tả không được ít hơn 5 ký tự',
            'motaloaisanpham.max' => 'Mô tả không được vượt quá 255 ký tự',
        ];
    }
}
