<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class NewsRequest extends FormRequest
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
            'idchuyenmuc' => 'required|exists:chuyenmuc,id',
            'idcongty' => 'required|exists:congty,id',
            'hinhanhtintuc' => 'required|mimes:jpeg,jpg,png|max:2000',
            'videotintuc' => 'required',
            'videotintuc.*' => 'mimes:mp4|max:20000',
            'tieudetintuc' => 'required|min:10|max:255',
            'tomtattintuc' => 'required|min:10|max:1000',
            'noidungtintuc' => 'required|min:10',
        ];
    }

    public function messages()
    {
        return [
            'idchuyenmuc.required' => 'Chuyên mục không được để trống',
            'idchuyenmuc.exists' => 'Chuyên mục không tồn tại',
            'idcongty.required' => 'Công ty không được để trống',
            'idcongty.exists' => 'Chuyên mục không tồn tại',
            'hinhanhtintuc.required' => 'Hình ảnh không được để trống',
            'hinhanhtintuc.mimes' => 'Hình ảnh phải là .jpg, .jpeg, .png',
            'videotintuc.required' => 'Video không được để trống',
            'videotintuc.*.mimes' => 'Video phải là .avi, .mp4, .mpeg, .mov',
            'videotintuc.*.max' => 'Kích thước video không vượt quá 20MB',
            'tieudetintuc.required' => 'Tiêu đề không được để trống',
            'tieudetintuc.min' => 'Tiêu đề không được ít hơn 10 ký tự',
            'tieudetintuc.max' => 'Tiêu đề không được vượt quá 255 ký tự',
            'tomtattintuc.required' => 'Tóm tắt không được để trống',
            'tomtattintuc.min' => 'Tóm tắt không được ít hơn 10 ký tự',
            'tomtattintuc.max' => 'Tóm tắt không được vượt quá 1000 ký tự',
            'noidungtintuc.required' => 'Nội dung không được để trống',
            'noidungtintuc.min' => 'Nội dung không được ít hơn 10 ký tự',
        ];
    }
}
