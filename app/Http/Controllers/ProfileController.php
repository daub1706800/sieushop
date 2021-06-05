<?php

namespace App\Http\Controllers;

use App\Http\Requests\AccountRequest;
use App\Http\Requests\CompanyRequest;
use App\Http\Requests\ProfileRequest;
use App\Http\Requests\RoleRequest;
use App\Models\Company;
use App\Models\Profile;
use App\Models\User;
use App\Models\Department;
use App\Models\Field;
use App\Models\Permission;
use App\Models\Role;
use App\Traits\StorageImageTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ProfileController extends Controller
{
    use StorageImageTrait;
    private $profile;
    private $user;
    private $company;
    private $field;
    private $department;
    private $role;
    private $permission;

    public function __construct(User $user, Profile $profile, Company $company, Field $field, Department $department, Role $role, Permission $permission)
    {
        $this->profile    = $profile;
        $this->user       = $user;
        $this->company    = $company;
        $this->field      = $field;
        $this->department = $department;
        $this->role       = $role;
        $this->permission = $permission;
    }

    // Profile
    public function index()
    {
        $profile = $this->profile->where('idtaikhoan', auth()->id())->first();

        $company = $this->company->find(auth()->user()->idcongty);

        return view('admin.profile.index', compact('profile', 'company'));
    }

    public function update(ProfileRequest $request, $id)
    {
        $data = [
            'hothanhvien' => $request->hothanhvien,
            'tenthanhvien' => $request->tenthanhvien,
            'gioitinhthanhvien' => $request->gioitinhthanhvien,
            'namsinh' => $request->namsinh,
            'diachi' => $request->diachi,
            'dienthoai' => $request->dienthoai
        ];

        $this->profile->find($id)->update($data);

        $user = $this->user->find(auth()->id());

        // Nếu hinhanhthanhvien == Null
        if(empty($user->profile->hinhanhthanhvien))
        {
            // Sex == Nam
            if($user->profile->gioitinhthanhvien == 1)
            {
                $image = "adminLTE/dist/img/avatar.png";
            }
            // Sex == Nữ
            elseif($user->profile->gioitinhthanhvien == 2)
            {
                $image = "adminLTE/dist/img/avatar2.png";
            }
            // Sex == Khác
            else
            {
                $image = "adminLTE/dist/img/AdminLTELogo.png";
            }
            $info = [
                'ho'       => $user->profile->hothanhvien,
                'name'     => $user->profile->tenthanhvien,
                'image'    => $image,
            ];
        }
        else
        {
            $info = [
                'ho'       => $user->profile->hothanhvien,
                'name'     => $user->profile->tenthanhvien,
                'image'    => $user->profile->hinhanhthanhvien,
            ];
        }

        session()->put('info', $info);

        if (auth()->user()->idcongty) {
            return redirect()->route('profile.index');
        }

        return redirect()->route('profile.company.create');
    }

    public function changeAvatar(Request $request, $id)
    {
        $dataUploadImage = $this->StorageUploadImage($request, 'file', 'profile');

        if (!empty($dataUploadImage)) {
            $this->profile->find($id)->update([
                'hinhanhthanhvien' => $dataUploadImage['file_path']
            ]);

            $user = $this->user->find(auth()->id());

            $info = [
                'ho'       => $user->profile->hothanhvien,
                'name'     => $user->profile->tenthanhvien,
                'image'    => $user->profile->hinhanhthanhvien,
            ];

            session()->put('info', $info);

            return response([
                'code' => 200,
                'message' => 'success'
            ], 200);
        }
    }

    // Company
    public function index_company()
    {
        $company = $this->company->find(auth()->user()->idcongty);

        $fields = $this->field->all();

        $departments = $this->department->all();

        return view('admin.profile.company.index', compact('company', 'fields', 'departments'));
    }

    public function create_company()
    {
        if (!auth()->user()->email_verified_at) {
            return redirect()->route('dasboard.verify');
        }
        elseif (auth()->user()->idcongty) {
            return redirect()->route('profile.company.index');
        }

        $fields = $this->field->all();

        $departments = $this->department->all();

        return view('admin.profile.company.add', compact('fields', 'departments'));
    }

    public function store_company(CompanyRequest $request)
    {
        $data = [
            'idso' => $request->idso,
            'idlinhvuc' => $request->idlinhvuc,
            'tencongty' => $request->tencongty,
            'diachicongty' => $request->diachicongty,
            'emailcongty' => $request->emailcongty,
            'dienthoaicongty' => $request->dienthoaicongty,
            'faxcongty' => $request->faxcongty,
            'webcongty' => $request->webcongty,
            'sdkkdcongty' => $request->sdkkdcongty,
            'ngaycapdkkdcongty' => $request->ngaycapdkkdcongty,
            'noicapdkkdcongty' => $request->noicapdkkdcongty,
            'masothuecongty' => $request->masothuecongty,
            'ngaythanhlapcongty' => $request->ngaythanhlapcongty,
        ];

        $idcongty = $this->company->insertGetId($data);

        $this->user->find(auth()->id())->update([
            'idcongty' => $idcongty,
            'loaitaikhoan' => 1
        ]);

        $role = $this->role->where('loaivaitro', 2)->first();

        DB::table('taikhoan_vaitro')->insert([
            'idtaikhoan' => auth()->id(),
            'idvaitro' => $role->id,
        ]);

        session()->put('idcongty', $idcongty);

        return redirect()->route('profile.index');
    }

    public function update_company(CompanyRequest $request, $id)
    {
        $data = [
            'idso' => $request->idso,
            'idlinhvuc' => $request->idlinhvuc,
            'tencongty' => $request->tencongty,
            'diachicongty' => $request->diachicongty,
            'emailcongty' => $request->emailcongty,
            'dienthoaicongty' => $request->dienthoaicongty,
            'faxcongty' => $request->faxcongty,
            'webcongty' => $request->webcongty,
            'sdkkdcongty' => $request->sdkkdcongty,
            'ngaycapdkkdcongty' => $request->ngaycapdkkdcongty,
            'noicapdkkdcongty' => $request->noicapdkkdcongty,
            'masothuecongty' => $request->masothuecongty,
            'ngaythanhlapcongty' => $request->ngaythanhlapcongty,
        ];

        $this->company->find($id)->update($data);

        return redirect()->route('profile.company.index', ['id' => $id]);
    }

    public function delete_company($id)
    {
        $this->company->find($id)->delete();

        return redirect()->route('profile.index');
    }

    // Account
    public function index_account()
    {
        $users = $this->user->where('idcongty', auth()->user()->idcongty)->get();

        $roles  = $this->role->where('idcongty', auth()->user()->idcongty)->get();

        return view('admin.profile.account.index', compact('users', 'roles'));
    }

    public function store_account(AccountRequest $request)
    {
        try {
            DB::beginTransaction();
            $data = [
                'idcongty'     => auth()->user()->idcongty,
                'email'        => $request->email,
                'password'     => bcrypt($request->password),
                'loaitaikhoan' => 1,
            ];

            $user = $this->user->create($data);

            // Insert table thongtin
            $this->profile->create([
                'idtaikhoan' => $user->id
            ]);

            // Insert data to table taikhoan_vaitro
            $user->roles()->attach($request->idvaitro);

            DB::commit();

            return redirect()->route('profile.account.index');

        } catch (\Exception $exception) {

            DB::rollBack();

            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function edit_account($id)
    {
        $user     = $this->user->find($id);

        $roles    = $this->role->where('idcongty', auth()->user()->idcongty)->get();

        $roleUser = $user->roles;

        return view('admin.profile.account.edit', compact('user', 'roles', 'roleUser'));
    }

    public function update_account(Request $request, $id)
    {
        try {
            DB::beginTransaction();

            if(!empty($request->password))
            {
                $this->user->find($id)->update([
                    'password' => bcrypt($request->password)
                ]);
            }

            if(!empty($request->idvaitro))
            {
                $user = $this->user->find($id);
                // Update data to table taikhoan_vaitro
                $user->roles()->sync($request->idvaitro);
            }

            DB::commit();

            return redirect()->route('profile.account.index');

        } catch (\Exception $exception) {

            DB::rollBack();

            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete_account($id)
    {
        $this->user->find($id)->delete();

        return redirect()->route('profile.account.index');
    }

    public function random_password()
    {
        $password = Str::random(10);

        return response()->json($password);
    }

    // Role
    public function index_role()
    {
        $roles = $this->role->where('idcongty', auth()->user()->idcongty)->get();

        $permissionParents = $this->permission->where('parent_id', 0)->where('trangthai', 1)->get();

        return view('admin.profile.role.index', compact('roles', 'permissionParents'));
    }

    public function store_role(RoleRequest $request)
    {
        $role = $this->role->create([
            'idcongty'   => auth()->user()->idcongty,
            'tenvaitro'  => $request->tenvaitro,
            'motavaitro' => $request->motavaitro,
        ]);

        // insert data to table vaitro_quyen
        $role->permissions()->attach($request->idquyen);

        return redirect()->route('profile.role.index');
    }

    public function edit_role($id)
    {
        $role = $this->role->find($id);

        $roles = $this->role->all();

        $permissionParents = $this->permission
                            ->where('parent_id', 0)
                            ->where('trangthai', 1)
                            ->get();
        $rolePermissions = $role->permissions;

        return view('admin.profile.role.edit', compact('role', 'roles', 'permissionParents', 'rolePermissions'));
    }

    public function update_role(RoleRequest $request, $id)
    {
        $this->role->find($id)->update([
            'tenvaitro'  => $request->tenvaitro,
            'motavaitro' => $request->motavaitro,
        ]);

        $role = $this->role->find($id);

        $role->permissions()->sync($request->idquyen);

        return redirect()->route('profile.role.index');
    }

    public function delete_role($id)
    {
        $role = $this->role->find($id);

        $role->delete();

        $role->permissions()->detach();

        return redirect()->route('profile.role.index');
    }
}
