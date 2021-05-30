<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StageRequest extends FormRequest
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
            'tengiaidoan' => 'bail|required|max:255',
            'motagiaidoan' => 'bail|required|max:255',
        ];
    }

    public function messages()
    {
        return [
            'tengiaidoan.required' => 'Tên không được để trống',
            'tengiaidoan.max' => 'Tên không được vượt quá 255 ký tự',
            'motagiaidoan.required' => 'Mô tả không được để trống',
            'motagiaidoan.max' => 'Mô tả không được vượt quá 255 ký tự',
        ];
    }
}
