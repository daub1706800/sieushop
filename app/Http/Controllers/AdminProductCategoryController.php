<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductCategoryRequest;
use App\Models\ProductCategory;
use Illuminate\Http\Request;

class AdminProductCategoryController extends Controller
{
    private $productcategory;

    public function __construct(ProductCategory $productcategory)
    {
        $this->productcategory = $productcategory;
    }

    public function index()
    {
        $productcategories = $this->productcategory->all();

        return view('admin.admin-product-category.index', compact('productcategories'));
    }

    public function store(ProductCategoryRequest $request)
    {
        $data = [
            'idcongty'        => auth()->user()->idcongty,
            'tenloaisanpham'  => $request->tenloaisanpham,
            'motaloaisanpham' => $request->motaloaisanpham,
        ];

        $this->productcategory->create($data);

        return redirect()->route('admin.productcategory.index');
    }

    public function edit($id)
    {
        $productcategory = $this->productcategory->find($id);

        return view('admin.admin-product-category.edit', compact('productcategory'));
    }

    public function update(ProductCategoryRequest $request, $id)
    {
        $data = [
            'tenloaisanpham'  => $request->tenloaisanpham,
            'motaloaisanpham' => $request->motaloaisanpham,
        ];

        $this->productcategory->find($id)->update($data);

        return redirect()->route('admin.productcategory.index');
    }

    public function delete($id)
    {
        $this->productcategory->find($id)->delete();

        return redirect()->route('admin.productcategory.index');
    }
}
