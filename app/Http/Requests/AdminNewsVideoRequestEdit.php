<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminNewsVideoRequestEdit extends FormRequest
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
            'hinhdaidienvideo' => 'bail|nullable|mimes:jpeg,jpg,png|max:2048|dimensions:min_width=800, min_height=460',
            'dulieuvideotintuc' => 'bail|nullable|mimes:mp4,mpeg,mov,avi|max:20480',
            'tieudevideo' => 'required|min:10|max:255',
            'tomtatvideo' => 'required|min:10',
            'nguonvideotintuc' => 'required|min:10|max:255',
        ];
    }

    public function messages()
    {
        return [
            'idchuyenmuc.required' => 'Chuyên mục không được để trống',
            'idchuyenmuc.exists' => 'Chuyên mục không tồn tại',
            'idcongty.required' => 'Công ty không được bỏ trống',
            'idcongty.exists' => 'Công ty không tồn tại',
            'hinhdaidienvideo.mimes' => 'Hình ảnh phải là .jpg, .jpeg, .png',
            'hinhdaidienvideo.max' => 'Kích thước hình ảnh không vượt quá 2MB',
            'hinhdaidienvideo.dimensions' => 'Độ phân giải tối thiểu 800 x 460',
            'dulieuvideotintuc.mimes' => 'Video phải là .avi, .mp4, .mpeg, .mov',
            'dulieuvideotintuc.max' => 'Kích thước video không vượt quá 20MB',
            'tieudevideo.required' => 'Tiêu đề không được để trống',
            'tieudevideo.min' => 'Tiêu đề không được ít hơn 10 ký tự',
            'tieudevideo.max' => 'Tiêu đề không được vượt quá 255 ký tự',
            'tomtatvideo.required' => 'Tóm tắt không được để trống',
            'tomtatvideo.min' => 'Tóm tắt không được ít hơn 10 ký tự',
            'nguonvideotintuc.required' => 'Nội dung không được để trống',
            'nguonvideotintuc.min' => 'Nguồn không được ít hơn 10 ký tự',
            'nguonvideotintuc.max' => 'Nguồn không được vượt quá 255 ký tự',
        ];
    }
}
