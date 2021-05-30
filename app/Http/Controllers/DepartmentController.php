<?php

namespace App\Http\Controllers;

use App\Http\Requests\DepartmentRequest;
use App\Models\Department;
use Illuminate\Http\Request;

class DepartmentController extends Controller
{
    private $department;

    public function __construct(Department $department)
    {
        $this->department = $department;
    }

    public function index()
    {
        $departments = $this->department->all();

        return view('admin.department.index', compact('departments'));
    }

    public function store(DepartmentRequest $request)
    {
        $this->department->create([
            'tenso'       => $request->tenso,
            'diachiso'    => $request->diachiso,
            'emailso'     => $request->emailso,
            'dienthoaiso' => $request->dienthoaiso,
            'faxso'       => $request->faxso,
            'webso'       => $request->webso
        ]);

        return redirect()->route('department.index');
    }

    public function edit($id)
    {
        $department = $this->department->find($id);

        return view('admin.department.edit', compact('department'));
    }

    public function update(DepartmentRequest $request, $id)
    {
        $this->department->find($id)->update([
            'tenso'       => $request->tenso,
            'diachiso'    => $request->diachiso,
            'emailso'     => $request->emailso,
            'dienthoaiso' => $request->dienthoaiso,
            'faxso'       => $request->faxso,
            'webso'       => $request->webso
        ]);

        return redirect()->route('department.index');
    }

    public function delete($id)
    {
        $this->department->find($id)->delete();
        
        return redirect()->route('department.index');
    }
}
