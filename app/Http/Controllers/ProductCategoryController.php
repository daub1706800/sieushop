<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductCategoryRequest;
use App\Models\ProductCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ProductCategoryController extends Controller
{
    private $productcategory;

    public function __construct(ProductCategory $productcategory)
    {
        $this->productcategory = $productcategory;
    }

    public function index()
    {
        try {
            $productcategories = $this->productcategory->where('idcongty', auth()->user()->idcongty)->get();

            return view('admin.product-category.index', compact('productcategories'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function store(ProductCategoryRequest $request)
    {
        try {
            DB::beginTransaction();

            $data = [
                'idcongty'        => auth()->user()->idcongty,
                'tenloaisanpham'  => $request->tenloaisanpham,
                'motaloaisanpham' => $request->motaloaisanpham,
            ];
    
            $this->productcategory->create($data);

            DB::commit();
    
            return redirect()->route('productcategory.index');            
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function edit($id)
    {
        try {
            $productcategory = $this->productcategory->FindOrFail($id);

            return view('admin.product-category.edit', compact('productcategory'));           
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update(ProductCategoryRequest $request, $id)
    {
        try {
            DB::beginTransaction();

            $data = [
                'tenloaisanpham'  => $request->tenloaisanpham,
                'motaloaisanpham' => $request->motaloaisanpham,
            ];
    
            $this->productcategory->FindOrFail($id)->update($data);

            DB::commit();
    
            return redirect()->route('productcategory.index');            
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete($id)
    {
        try {
            DB::beginTransaction();

            $this->productcategory->FindOrFail($id)->delete();

            DB::commit();

            return redirect()->route('productcategory.index');            
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }
}
