<?php

namespace App\Http\Controllers;

use App\Http\Requests\AdminProductCategoryRequest;
use App\Http\Requests\ProductCategoryRequest;
use App\Models\Company;
use App\Models\Product;
use App\Models\ProductCategory;
use Illuminate\Http\Request;

class AdminProductCategoryController extends Controller
{
    private $productcategory;
    private $company;
    private $product;

    public function __construct(ProductCategory $productcategory, Company $company, Product $product)
    {
        $this->productcategory = $productcategory;
        $this->company = $company;
        $this->product = $product;
    }

    public function index()
    {
        $productcategories = $this->productcategory->all();

        $companies = $this->company->all();

        return view('admin.admin-product-category.index', compact('productcategories', 'companies'));
    }

    public function store(AdminProductCategoryRequest $request)
    {
        $data = [
            'idcongty'        => $request->idcongty,
            'tenloaisanpham'  => $request->tenloaisanpham,
            'motaloaisanpham' => $request->motaloaisanpham,
        ];

        $this->productcategory->create($data);

        return redirect()->route('admin.productcategory.index');
    }

    public function edit($id)
    {
        $productcategory = $this->productcategory->find($id);

        $companies = $this->company->all();

        return view('admin.admin-product-category.edit', compact('productcategory', 'companies'));
    }

    public function update(AdminProductCategoryRequest $request, $id)
    {
        $data = [
            'idcongty'        => $request->idcongty,
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
