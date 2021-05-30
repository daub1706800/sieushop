<?php

namespace App\Http\Controllers;

use App\Http\Requests\FieldRequest;
use App\Models\Field;
use Illuminate\Http\Request;

class FieldController extends Controller
{
    private $field;

    public function __construct(Field $field)
    {
        $this->field = $field;
    }

    public  function  index()
    {
        $fields = $this->field->all();

        return view('admin.field.index', compact('fields'));
    }

    public  function  store(FieldRequest $request)
    {
        $this->field->create([
           'tenlinhvuc'  => $request->tenlinhvuc,
           'motalinhvuc' => $request->motalinhvuc
        ]);

        return redirect()->route('field.index');
    }

    public function edit($id)
    {
        $field = $this->field->find($id);

        return view('admin.field.edit', compact('field'));
    }

    public  function  update(FieldRequest $request, $id)
    {
        $this->field->find($id)->update([
            'tenlinhvuc'  => $request->tenlinhvuc,
            'motalinhvuc' => $request->motalinhvuc
        ]);

        return redirect()->route('field.index');
    }

    public  function  delete($id)
    {
        $this->field->find($id)->delete();

        return redirect()->route('field.index');
    }
}
