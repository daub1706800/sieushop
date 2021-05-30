<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class FieldRequest extends FormRequest
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
            'tenlinhvuc' => 'bail|required|max:255',
            'motalinhvuc' => 'bail|required|min:10',
        ];
    }

    public function messages()
    {
        return [
            'tenlinhvuc.required' => 'Tên không được để trống',
            'tenlinhvuc.max' => 'Tên không được vượt quá 255 ký tự',
            'motalinhvuc.required' => 'Mô tả không được để trống',
            'motalinhvuc.min' => 'Mô tả không được ít hơn 10 ký tụ',
        ];
    }
}
