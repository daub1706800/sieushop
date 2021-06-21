<?php

namespace App\Http\Controllers;

use App\Http\Requests\FieldRequest;
use App\Models\Field;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class FieldController extends Controller
{
    private $field;

    public function __construct(Field $field)
    {
        $this->field = $field;
    }

    public  function  index()
    {
        try {
            $fields = $this->field->all();

            return view('admin.field.index', compact('fields'));           
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public  function  store(FieldRequest $request)
    {
        try {
            DB::beginTransaction();

            $this->field->create([
                'tenlinhvuc'  => $request->tenlinhvuc,
                'motalinhvuc' => $request->motalinhvuc
            ]);

            DB::commit();
    
            return redirect()->route('field.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function edit($id)
    {
        try {
            $field = $this->field->FindOrFail($id);

            return view('admin.field.edit', compact('field'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public  function  update(FieldRequest $request, $id)
    {
        try {
            DB::beginTransaction();

            $this->field->FindOrFail($id)->update([
                'tenlinhvuc'  => $request->tenlinhvuc,
                'motalinhvuc' => $request->motalinhvuc
            ]);

            DB::commit();
    
            return redirect()->route('field.index');            
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public  function  delete($id)
    {
        try {
            DB::beginTransaction();

            $this->field->FindOrFail($id)->delete();

            DB::commit();

            return response()->json(['code' => 200]);           
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
        
    }
}
