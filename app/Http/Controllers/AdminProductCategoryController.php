<?php

namespace App\Http\Controllers;

use App\Http\Requests\AdminProductCategoryRequest;
use App\Http\Requests\ProductCategoryRequest;
use App\Models\Company;
use App\Models\Product;
use App\Models\ProductCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

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
        try {
            $productcategories = $this->productcategory->all();

            $companies = $this->company->all();
    
            return view('admin.admin-product-category.index', compact('productcategories', 'companies'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function store(AdminProductCategoryRequest $request)
    {
        try {
            DB::beginTransaction();

            $data = [
                'idcongty'        => $request->idcongty,
                'tenloaisanpham'  => $request->tenloaisanpham,
                'motaloaisanpham' => $request->motaloaisanpham,
            ];
    
            $this->productcategory->create($data);
    
            DB::commit();

            return redirect()->route('admin.productcategory.index');
        } catch (\Exception $exception) {
            DB::rollback();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function edit($id)
    {
        try {
            $productcategory = $this->productcategory->FindOrFail($id);

            $companies = $this->company->all();
    
            return view('admin.admin-product-category.edit', compact('productcategory', 'companies'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update(AdminProductCategoryRequest $request, $id)
    {
        try {
            DB::beginTransaction();

            $data = [
                'idcongty'        => $request->idcongty,
                'tenloaisanpham'  => $request->tenloaisanpham,
                'motaloaisanpham' => $request->motaloaisanpham,
            ];
    
            $this->productcategory->FindOrFail($id)->update($data);
            
            DB::commit();
    
            return redirect()->route('admin.productcategory.index');
        } catch (\Exception $exception) {
            DB::rollback();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete($id)
    {
        try {
            DB::beginTransaction();

            $this->productcategory->FindOrFail($id)->delete();

            DB::commit();

            return response()->json(['code' => 200]);
        } catch (\Exception $exception) {
            DB::rollback();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
        
    }
}
