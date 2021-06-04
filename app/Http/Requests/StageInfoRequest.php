<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StageInfoRequest extends FormRequest
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
            'tencongviec.*' => 'bail|required|max:255',
            'thoigianbatdau.*' => 'required',
            'thoigiandukien.*' => 'required|numeric',
            'thoigianhoanthanh.*' => 'nullable|date_format:"Y-m-d"|after_or_equal:thoigianbatdau.*',
            'motacongviec.*' => 'bail|required|min:10',
        ];
    }

    public function messages()
    {
        return [
            'tencongviec.required' => 'Tên không được để trống',
            'tencongviec.max' => 'Tên không được vượt quá 255 ký tự',
            'thoigianbatdau.required' => 'Thời gian bắt đầu không được để trống',
            'thoigiandukien.required' => 'Thời gian dự kiến không được để trống',
            'thoigiandukien.numeric' => 'Thời gian dự kiến phải là kiểu số nguyên',
            'thoigianhoanthanh.required' => 'Thời gian hoàn thành không được để trống',
            'thoigianhoanthanh.date_format' => 'Thời gian hoàn thành phải có kiểu Y-m-d',
            'thoigianhoanthanh.after_or_equal' => 'Thời gian hoàn thành không sớm hơn thời gian bắt đầu',
            'motacongviec.required' => 'Mô tả công việc không được để trống',
            'motacongviec.min' => 'Mô tả công việc ít nhất 10 ký tự',
        ];
    }
}
