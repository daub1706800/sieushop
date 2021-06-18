<?php

namespace App\Http\Controllers;

use App\Http\Requests\DepartmentRequest;
use App\Models\Department;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class DepartmentController extends Controller
{
    private $department;

    public function __construct(Department $department)
    {
        $this->department = $department;
    }

    public function index()
    {
        try {
            $departments = $this->department->all();

            return view('admin.department.index', compact('departments'));           
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function store(DepartmentRequest $request)
    {
        try {
            DB::beginTransaction();

            $this->department->create([
                'tenso'       => $request->tenso,
                'diachiso'    => $request->diachiso,
                'emailso'     => $request->emailso,
                'dienthoaiso' => $request->dienthoaiso,
                'faxso'       => $request->faxso,
                'webso'       => $request->webso
            ]);

            DB::commit();
    
            return redirect()->route('department.index');            
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
        
    }

    public function edit($id)
    {
        try {
            $department = $this->department->FindOrFail($id);

            return view('admin.department.edit', compact('department'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update(DepartmentRequest $request, $id)
    {
        try {
            DB::beginTransaction();

            $this->department->FindOrFail($id)->update([
                'tenso'       => $request->tenso,
                'diachiso'    => $request->diachiso,
                'emailso'     => $request->emailso,
                'dienthoaiso' => $request->dienthoaiso,
                'faxso'       => $request->faxso,
                'webso'       => $request->webso
            ]);

            DB::commit();
    
            return redirect()->route('department.index');           
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete($id)
    {
        try {
            DB::beginTransaction();

            $this->department->FindOrFail($id)->delete();

            DB::commit();

            return redirect()->route('department.index');           
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function view(Request $request)
    {
        try {
            $department = $this->department->FindOrFail($request->idDepartment);

            $date = Carbon::createFromFormat('Y-m-d H:i:s', $department->created_at)->format('d-m-Y');
    
            $arr = [
                'department' => $department,
                'date' => $date
            ];
    
            return response()->json($arr);
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }
}
