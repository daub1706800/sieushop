<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class ProductAddRequest extends FormRequest
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
        $rules = [
            'tensanpham' => [
                'bail',
                'required',
                'min:10',
                'max:255',
                Rule::unique('sanpham')->where(function ($query) {
                    return $query->where('idcongty', auth()->user()->idcongty);
                }),
            ],
            'idkho' => 'bail|required|exists:kho,id',
            'idloaisanpham' => 'bail|required|exists:loaisanpham,id',
            'xuatxu' => 'required|max:255',
            'chungloaisanpham' => 'required|min:8|max:255',
            'dongiasanpham' => 'bail|required|numeric',
            'khoiluongsanpham' => 'bail|required|numeric',
            'donvitinhsanpham' => 'required|max:255',
            'mavachsanpham' => 'required|digits_between:9,20',
            'hinhanhsanpham' => 'bail|required|mimes:jpeg,jpg,png|dimensions:max_width=2048, max_height=2048|max:2048',
            'hinhanhchitiet' => 'required',
            'hinhanhchitiet.*' => 'bail|mimes:jpeg,jpg,png|dimensions:max_width=2048, max_height=2048|max:2048',
            'thongtinsanpham' => 'required|min:10',
        ];

        return $rules;
    }

    public function messages()
    {
        $messages = [
            'tensanpham.required' => 'Tên sản phẩm không được để trống',
            'tensanpham.min' => 'Tên sản phẩm không được dưới 10 ký tự',
            'tensanpham.max' => 'Tên sản phẩm không vượt quá 255 ký tự',
            'tensanpham.unique' => 'Tên sản phẩm đã tồn tại',
            'idkho.required' => 'Kho không được để trống',
            'idkho.exists' => 'Lỗi không tìm thấy Kho',
            'idloaisanpham.required' => 'Loại sản phẩm không được để trống',
            'idloaisanpham.exists' => 'Lỗi không tìm thấy Loại sản phẩm',
            'xuatxu.required' => 'Xuất xứ không được để trống',
            'xuatxu.max' => 'Nơi xuất xứ không được vượt quá 255 ký tự',
            'chungloaisanpham.required' => 'Chủng loại không được để trống',
            'chungloaisanpham.min' => 'Chủng loại không được ít hơn 8 ký tự',
            'chungloaisanpham.max' => 'Chủng loại không được vượt quá 255 ký tự',
            'dongiasanpham.required' => 'Đơn giá không được để trống',
            'dongiasanpham.numeric' => 'Đơn giá chỉ cho phép ký tự số',
            'khoiluongsanpham.required' => 'Khối lượng không được để trống',
            'khoiluongsanpham.numeric' => 'Khối lượng chỉ cho phép ký tự số',
            'donvitinhsanpham.required' => 'Đơn vị tính không được để trống',
            'donvitinhsanpham.max' => 'Đơn vị tính không được vượt quá 255 ký tự',
            'mavachsanpham.required' => 'Mã vạch sản phẩm không được để trống',
            'mavachsanpham.digits_between' => 'Mã vạch phải là kiểu số, độ dài khoảng 9 đến 20 ký tự',
            'hinhanhsanpham.required' => 'Hình ảnh Không được để trống',
            'hinhanhsanpham.mimes' => 'Hình ảnh phải là JPG, JPEG, PNG',
            'hinhanhsanpham.dimensions' => 'Độ phân giải ảnh không vượt quá 2048x2048 pixel',
            'hinhanhsanpham.max' => 'Hình ảnh phải có dung lượng dưới 2MB',
            'hinhanhchitiet.required' => 'Ảnh chi tiết không được để trống',
            'hinhanhchitiet.*.mimes' => 'Ảnh chi tiết phải là JPG, JPEG, PNG',
            'hinhanhchitiet.*.dimensions' => 'Độ phân giải ảnh không vượt quá 2048x2048 pixel',
            'hinhanhchitiet.*.max' => 'Ảnh chi tiết phải có dung lượng dưới 10MB',
            'thongtinsanpham.required' => 'Thông tin sản phẩm không được để trống',
            'thongtinsanpham.min' => 'Thông tin sản phẩm không được dưới 10 ký tự',
        ];

        return $messages;
    }
}
