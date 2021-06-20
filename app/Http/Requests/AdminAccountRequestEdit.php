<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

class AdminAccountRequestEdit extends FormRequest
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
            'password' => ['bail', 'nullable', 'string', 'min:8', 'regex:/^.*(?=.{3,})(?=.*[a-zA-Z])(?=.*[0-9]).*$/'],
            'idvaitro' => 'nullable',
            'idvaitro.*' => [
                Rule::exists('vaitro', 'id')->where(function ($query) {
                    return $query->where('idcongty', $this->idcongty)->whereNotIn('id', DB::table('vaitro')->where('loaivaitro', 1)->pluck('id')->toArray())
                    ->orWhere('loaivaitro', 2);
                }),
            ],
            'thoigianbatdau.*' => ['nullable','after_or_equal:today'],
            'thoigianketthuc.*' => ['nullable','after_or_equal:thoigianbatdau.*'],
        ];
    }

    public function messages()
    {
        return [
            'password.string' => 'Mật khẩu phải là kiểu chuỗi',
            'password.min' => 'Mật khẩu không được ít hơn 8 ký tự',
            'password.regex' => 'Mật khẩu phải có ký tự hoa thường và số',
            'idvaitro.*.exists' => 'Vai trò không tồn tại',
            'thoigianbatdau.*.after_or_equal' => 'Thời gian bắt đầu phải bằng hoặc trễ hơn ngày hiện tại',
            'thoigianketthuc.*.after_or_equal' => 'Thời gian kết thúc phải bằng hoặc trễ hơn thời gian bắt đầu',
        ];
    }
}
