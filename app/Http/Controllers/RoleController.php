<?php

namespace App\Http\Controllers;

use App\Http\Requests\RoleRequest;
use App\Models\Role;
use App\Models\Permission;
use Illuminate\Http\Request;

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
        $roles = $this->role->all();

        $permissionParents = $this->permission->where('parent_id', 0)->get();

        return view('admin.role.index', compact('roles', 'permissionParents'));
    }

    public function store(RoleRequest $request)
    {
        $role = $this->role->create([
            'tenvaitro'  => $request->tenvaitro,
            'motavaitro' => $request->motavaitro,
        ]);

        // insert data to table vaitro_quyen
        $role->permissions()->attach($request->idquyen);

        return redirect()->route('role.index');
    }

    public function edit($id)
    {
        $role = $this->role->find($id);

        $roles = $this->role->all();

        $permissionParents = $this->permission->where('parent_id', 0)->get();

        $rolePermissions = $role->permissions;

        return view('admin.role.edit', compact('role', 'roles', 'permissionParents', 'rolePermissions'));
    }

    public function update(RoleRequest $request, $id)
    {
        $this->role->find($id)->update([
            'tenvaitro'  => $request->tenvaitro,
            'motavaitro' => $request->motavaitro,
        ]);

        $role = $this->role->find($id);

        $role->permissions()->sync($request->idquyen);

        return redirect()->route('role.index');
    }

    public function delete($id)
    {
        $role = $this->role->find($id);

        $role->delete();
        
        $role->permissions()->detach();

        return redirect()->route('role.index');
    }
}
