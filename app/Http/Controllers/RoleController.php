<?php

namespace App\Http\Controllers;

use App\Http\Requests\RoleRequest;
use App\Models\Role;
use App\Models\Permission;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class RoleController extends Controller
{
    private $role;
    private $permission;

    public function __construct(Role $role, Permission $permission)
    {
        $this->role       = $role;
        $this->permission = $permission;
    }

    public function index()
    {
        try {
            $roles = $this->role->all();

            $permissionParents = $this->permission->where('parent_id', 0)->get();
    
            return view('admin.role.index', compact('roles', 'permissionParents'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function store(RoleRequest $request)
    {
        try {
            DB::beginTransaction();

            $role = $this->role->create([
                'tenvaitro'  => $request->tenvaitro,
                'motavaitro' => $request->motavaitro,
            ]);
    
            // insert data to table vaitro_quyen
            $role->permissions()->attach($request->idquyen);

            DB::commit();
    
            return redirect()->route('role.index');            
        } catch (\Exception $exception) {
            DB::rollback();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function edit($id)
    {
        try {
            $role = $this->role->FindOrFail($id);

            $roles = $this->role->all();
    
            $permissionParents = $this->permission->where('parent_id', 0)->get();
    
            $rolePermissions = $role->permissions;
    
            return view('admin.role.edit', compact('role', 'roles', 'permissionParents', 'rolePermissions'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update(RoleRequest $request, $id)
    {
        try {
            DB::beginTransaction();
            $this->role->FindOrFail($id)->update([
                'tenvaitro'  => $request->tenvaitro,
                'motavaitro' => $request->motavaitro,
            ]);
    
            $role = $this->role->FindOrFail($id);
    
            $role->permissions()->sync($request->idquyen);

            DB::commit();
    
            return redirect()->route('role.index');            
        } catch (\Exception $exception) {
            DB::rollback();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete($id)
    {
        try {
            DB::beginTransaction();

            $role = $this->role->FindOrFail($id);

            $role->delete();
            
            $role->permissions()->detach();

            DB::commit();
    
            return redirect()->route('role.index');            
        } catch (\Exception $exception) {
            DB::rollback();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }
}
