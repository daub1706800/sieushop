<?php

namespace App\Http\Controllers;

use App\Models\Field;
use Illuminate\Http\Request;
use App\Components\Recusive;
use App\Http\Requests\CategoryRequest;
use App\Models\Category;

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
        $categories = $this->category->get();

        $fields = $this->field->all();

        return view('admin.category.index', compact('categories','fields'));
    }

    public function store(CategoryRequest $request)
    {
        $this->category->create([
           'tenchuyenmuc' => $request->tenchuyenmuc,
           'idlinhvuc'    => $request->idlinhvuc
        ]);

        return redirect()->route('category.index');
    }

    public function edit($id)
    {
        $category = $this->category->find($id);

        $fields = $this->field->all();

        return view('admin.category.edit', compact('category','fields'));
    }

    public function update(CategoryRequest $request, $id)
    {
        $this->category->find($id)->update([
            'tenchuyenmuc'  => $request->tenchuyenmuc,
            'idlinhvuc' => $request->idlinhvuc
        ]);
        
        return redirect()->route('category.index');
    }

    public function delete($id)
    {
        $this->category->find($id)->delete();

        return redirect()->route('category.index');
    }
}
