<?php

namespace App\Http\Controllers;

use App\Http\Requests\CompanyRequest;
use App\Models\Company;
use App\Models\Department;
use App\Models\Field;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

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
        try {
            $companys = $this->company->all();

            $fields = $this->field->all();
    
            $departments = $this->department->all();
    
            return view('admin.company.index', compact('companys', 'fields', 'departments'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function edit($id)
    {
        try {
            $company = $this->company->FindOrFail($id);

            $fields = $this->field->all();
    
            $departments = $this->department->all();
    
            return view('admin.company.edit', compact('company', 'fields', 'departments'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update(CompanyRequest $request, $id)
    {
        try {
            DB::beginTransaction();

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
    
            $this->company->FindOrFail($id)->update($data);

            DB::commit();
    
            return redirect()->route('company.index');           
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete($id)
    {
        try {
            DB::beginTransaction();

            $this->company->FindOrFail($id)->delete();

            DB::commit();

            return redirect()->route('company.index');            
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function view(Request $request)
    {
        try {
            $company = $this->company->FindOrFail($request->idCompany);

            $department = $company->department;
    
            $field = $company->field;
    
            $subdomain = $company->subdomain . '.' . config('app.short_url');
    
            $arr = [
                'company' => $company,
                'department' => $department,
                'field' => $field,
                'subdomain' => $subdomain
            ];
    
            return response()->json($arr);            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }
}
