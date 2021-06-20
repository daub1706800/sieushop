<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RoleRequest extends FormRequest
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
            'idcongty' => ['sometimes', 'required', 'exists:congty,id'],
            'tenvaitro' => ['required', 'max:255'],
            'motavaitro' => ['required', 'min:10'],
        ];
    }

    public function messages()
    {
        return [
            'idcongty.required' => 'Công ty không được bỏ trống',
            'idcongty.exists' => 'Công ty không tồn tại',
            'tenvaitro.required' => 'Tên không được để trống',
            'tenvaitro.max' => 'Tên không được vượt quá 255 ký tự',
            'motavaitro.required' => 'Mô tả không được để trống',
            'motavaitro.min' => 'Mô tả không được ít hơn 10 ký tự',

        ];
    }
}
