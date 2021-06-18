<?php

namespace App\Http\Controllers;

use App\Models\Field;
use Illuminate\Http\Request;
use App\Components\Recusive;
use App\Http\Requests\CategoryRequest;
use App\Models\Category;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class CategoryController extends Controller
{
    private $category;
    private $field;

    public function __construct(Category $category, Field $field)
    {
        $this->category = $category;
        $this->field = $field;
    }

    public function index()
    {
        try {
            $categories = $this->category->get();

            $fields = $this->field->all();
    
            return view('admin.category.index', compact('categories','fields'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function store(CategoryRequest $request)
    {
        try {
            DB::beginTransaction();

            $this->category->create([
                'tenchuyenmuc' => $request->tenchuyenmuc,
                'idlinhvuc'    => $request->idlinhvuc
            ]);

            DB::commit();
     
            return redirect()->route('category.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
        
    }

    public function edit($id)
    {
        try {
            $category = $this->category->FindOrFail($id);

            $fields = $this->field->all();

            return view('admin.category.edit', compact('category','fields'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update(CategoryRequest $request, $id)
    {
        try {
            DB::beginTransaction();

            $this->category->FindOrFail($id)->update([
                'tenchuyenmuc'  => $request->tenchuyenmuc,
                'idlinhvuc' => $request->idlinhvuc
            ]);

            DB::commit();
            
            return redirect()->route('category.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
        
    }

    public function delete($id)
    {
        try {
            DB::beginTransaction();

            $this->category->FindOrFail($id)->delete();

            DB::commit();

            return redirect()->route('category.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
        
    }
}
