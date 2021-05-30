<?php

namespace App\Http\Controllers;

use App\Models\Permission;
use Illuminate\Http\Request;

class PermissionController extends Controller
{
    private $permission;

    public function __construct(Permission $permission)
    {
        $this->permission = $permission;
    }

    public function add()
    {
        $updatePermissions = $this->permission->where('parent_id', 0)->get();

        $permissions = $this->permission->where('parent_id', 0)->get();

        return view('admin.permission.add', compact('permissions', 'updatePermissions'));
    }

    public function store(Request $request)
    {
        if($request->module_childrent)
        {
            foreach($request->module_parent as $itemParent)
            {
                $arrParent = explode ( '-', $itemParent);

                $permission = $this->permission->create([
                    'tenquyen'  => $arrParent[0],
                    'motaquyen' => $arrParent[1],
                    'parent_id' => 0,
                ]);

                foreach( $request->module_childrent as $itemChild)
                {
                    $arrChild  = explode ( '-', $itemChild);

                    $this->permission->create([
                        'tenquyen'  => $permission->tenquyen . '-' . $arrChild[0],
                        'motaquyen' => $arrChild[1],
                        'parent_id' => $permission->id,
                    ]);
                }
            }
        }

        return redirect()->route('permission.add');
    }

    public function change_status_on(Request $request)
    {
        $this->permission->find($request->permission_id)->update([
            'trangthai' => 1,
        ]);
    }

    public function change_status_off(Request $request)
    {
        $this->permission->find($request->permission_id)->update([
            'trangthai' => 0,
        ]);
    }

    public function check_permission_checked(Request $request)
    {
        // Tách giá trị từ Request
        $arrParent = explode ( '-', $request->data);

        $persmissionChilds = $this->permission->where('parent_id', $arrParent[1])->pluck('tenquyen');

        // Tách giá trị từ mảng persmissionChilds mảng 2 chiều
        $arrChilds = array();
        foreach($persmissionChilds as $persmissionChild)
        {
            $arrChilds[] = explode ( '-', $persmissionChild);
        }


        // Tách lấy giá trị permission mảng 1 chiều
        $arrChild = array();
        foreach($arrChilds as $arr)
        {
            $arrChild[] = $arr[1];
        }

        // Tách config('permissions.module_childrent') thành mảng 1 chiều
        $arrModule_childrent = array();
        foreach(config('permissions.module_childrent') as $module_childrent)
        {
            $arrModule_childrent[] = $module_childrent['name'];
        }

        // So sánh permission và $arrModule_childrent lấy mảng có giá trị trùng
        $arrSames = array_intersect($arrChild, $arrModule_childrent);

        $output = '';

        foreach(config('permissions.module_childrent') as $item)
        {
            if(in_array($item['name'],  $arrSames))
            {
                $output .= '<div class="col-md-3">
                                <label><input type="checkbox" name="module_childrent[]" onclick="return false"
                                        value="'.$item['name'].'-'.$item['display'].'" checked>
                                        '.$item['display'].'</label></div>';
            }
            else
            {
                $output .= '<div class="col-md-3">
                                <label><input type="checkbox" name="module_childrent[]"
                                            value="'.$item['name'].'-'.$item['display'].'">
                                            '.$item['display'].'</label></div>';
            }
        }

        return response()->json($output);
    }

    public function update(Request $request)
    {
        $arrParent = explode ( '-', $request->module_parent);
        $id        = $arrParent[1];
        $name      = $arrParent[0];

        // dd($request->module_childrent);
        foreach( $request->module_childrent as $itemChild)
        {
            $arrChild  = explode ( '-', $itemChild);
            $permission = $this->permission->where('tenquyen', $name . '-' . $arrChild[0])->get();
            // dd($permission);
            // dd($permission->isEmpty());
            if($permission->isEmpty())
            {
                $this->permission->create([
                    'tenquyen'  => $name . '-' . $arrChild[0],
                    'motaquyen' => $arrChild[1],
                    'parent_id' => $id,
                ]);
            }
            else
            {
                $check = "Đã có";
            }
        }
        return response([
            'code' => 200,
            'message' => $check,
        ], 200);
    }

    public function check_permission()
    {
        $permissionParent = $this->permission->where('parent_id', 0)->get();

        $arrPermission_parent = array();
        foreach($permissionParent as $value)
        {
            $arrPermission_parent[] = $value->tenquyen;
        }

        $output = '<select class="form-control module-new-select" name="module_parent[]" multiple>';

        foreach(config('permissions.module_parent') as $item)
        {
            if(in_array($item['name'], $arrPermission_parent) == false)
            {
                $output .= '<option class="check-permission" value="'.$item['name'].'-'.$item['display'].'">
                            '.$item['display'].'
                            </option>';
            }
        }

        $output .= '</select>';

        return response()->json($output);
    }
}
