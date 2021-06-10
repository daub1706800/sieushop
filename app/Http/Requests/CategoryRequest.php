<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CategoryRequest extends FormRequest
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
            'tenchuyenmuc' => 'bail|required|max:255',
            'idlinhvuc' => 'bail|required|exists:linhvuc,id',
        ];
    }

    public function messages()
    {
        return [
            'tenchuyenmuc.required' => 'Tên không được để trống',
            'tenchuyenmuc.max' => 'Tên không được vượt quá 255 ký tự',
            'idlinhvuc.required' => 'Lĩnh vực không được để trống',
            'idlinhvuc.exists' => 'Lỗi không tìm thấy Lĩnh vực',
        ];
    }
}
