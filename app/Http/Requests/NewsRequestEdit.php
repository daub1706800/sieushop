<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class NewsRequestEdit extends FormRequest
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
            'hinhanhtintuc' => 'required|mimes:jpeg,jpg,png|max:5000|dimensions:min_width=788, min_height=443',
            'videotintuc' => 'bail|nullable|mimes:mp4|max:20000',
            // 'videotintuc.*' => 'mimes:mp4|max:20000',
            'tieudetintuc' => 'required|min:10|max:100',
            'tomtattintuc' => 'required|min:10|max:230',
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
            'hinhanhtintuc.mimes' => 'Hình ảnh phải là .jpg, .jpeg, .png',
            'hinhanhtintuc.max' => 'Kích thước hình ảnh không vượt quá 5MB',
            'hinhanhtintuc.dimensions' => 'Độ phân giải tối thiểu 788 x 443',
            'videotintuc.mimes' => 'Video phải là .avi, .mp4, .mpeg, .mov',
            'videotintuc.max' => 'Kích thước video không vượt quá 20MB',
            // 'videotintuc.*.mimes' => 'Video phải là .avi, .mp4, .mpeg, .mov',
            // 'videotintuc.*.max' => 'Kích thước video không vượt quá 20MB',
            'tieudetintuc.required' => 'Tiêu đề không được để trống',
            'tieudetintuc.min' => 'Tiêu đề không được ít hơn 10 ký tự',
            'tieudetintuc.max' => 'Tiêu đề không được vượt quá 100 ký tự',
            'tomtattintuc.required' => 'Tóm tắt không được để trống',
            'tomtattintuc.min' => 'Tóm tắt không được ít hơn 10 ký tự',
            'tomtattintuc.max' => 'Tóm tắt không được vượt quá 230 ký tự',
            'noidungtintuc.required' => 'Nội dung không được để trống',
            'noidungtintuc.min' => 'Nội dung không được ít hơn 10 ký tự',
        ];
    }
}
