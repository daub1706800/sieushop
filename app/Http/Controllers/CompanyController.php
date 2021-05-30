<?php

namespace App\Http\Controllers;

use App\Http\Requests\CompanyRequest;
use App\Models\Company;
use App\Models\Department;
use App\Models\Field;
use App\Models\User;
use Illuminate\Http\Request;

class CompanyController extends Controller
{
    private $company;
    private $user;
    private $field;
    private $department;

    public function __construct(Company $company, User $user, Field $field, Department $department)
    {
        $this->company = $company;
        $this->user = $user;
        $this->field = $field;
        $this->department = $department;
    }

    public function index()
    {
        $companys = $this->company->all();

        $fields = $this->field->all();

        $departments = $this->department->all();

        return view('admin.company.index', compact('companys', 'fields', 'departments'));
    }

    public function edit($id)
    {
        $company = $this->company->find($id);

        $fields = $this->field->all();

        $departments = $this->department->all();

        return view('admin.company.edit', compact('company', 'fields', 'departments'));
    }

    public function update(CompanyRequest $request, $id)
    {
        $data = [
            'idso'               => $request->idso,
            'idlinhvuc'          => $request->idlinhvuc,
            'tencongty'          => $request->tencongty,
            'diachicongty'       => $request->diachicongty,
            'emailcongty'        => $request->emailcongty,
            'dienthoaicongty'    => $request->dienthoaicongty,
            'faxcongty'          => $request->faxcongty,
            'webcongty'          => $request->webcongty,
            'sdkkdcongty'        => $request->sdkkdcongty,
            'ngaycapdkkdcongty'  => $request->ngaycapdkkdcongty,
            'noicapdkkdcongty'   => $request->noicapdkkdcongty,
            'masothuecongty'     => $request->masothuecongty,
            'ngaythanhlapcongty' => $request->ngaythanhlapcongty,
        ];

        $this->company->find($id)->update($data);

        return redirect()->route('company.index');
    }

    public function delete($id)
    {
        $this->company->find($id)->delete();
        
        return redirect()->route('company.index');
    }
}
