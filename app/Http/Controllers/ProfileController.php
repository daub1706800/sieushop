<?php

namespace App\Http\Controllers;

use App\Http\Requests\AccountRequest;
use App\Http\Requests\AccountRequestEdit;
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
use App\Models\UserRole;
use App\Traits\StorageImageTrait;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

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
        try {
            $profile = $this->profile->where('idtaikhoan', auth()->id())->first();

            $company = $this->company->FindOrFail(auth()->user()->idcongty);
    
            return view('admin.profile.index', compact('profile', 'company'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update(ProfileRequest $request, $id)
    {
        try {
            DB::beginTransaction();

            $data = [
                'hothanhvien' => $request->hothanhvien,
                'tenthanhvien' => $request->tenthanhvien,
                'gioitinhthanhvien' => $request->gioitinhthanhvien,
                'namsinh' => $request->namsinh,
                'diachi' => $request->diachi,
                'dienthoai' => $request->dienthoai
            ];
    
            $this->profile->FindOrFail($id)->update($data);
    
            $user = $this->user->FindOrFail(auth()->id());
    
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

            DB::commit();
    
            return redirect()->route('profile.company.create');            
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function changeAvatar(Request $request, $id)
    {
        try {
            $validated = Validator::make($request->all(), [
                'file' => [
                    'bail',
                    'mimes:jpeg,jpg,png',
                    Rule::dimensions()->maxWidth(2048)->maxHeight(2048)->ratio(1/1),
                    'max:2048'
                ],
            ], [
                'file.mimes' => 'File ảnh phải là kiểu jpeg, jpg, png',
                'file.dimensions' => 'Ảnh đại diện phải có tỉ lệ 1:1 và độ phân giải không vượt quá 2048x2048 pixel',
                'file.max' => 'Kích thước ảnh không vượt quá 2MB',
            ]);
    
            if(!$validated->passes())
            {
                return response()->json([
                    'status' => 0,
                    'error' => $validated->errors(),
                ]);
            }
    
            $dataUploadImage = $this->StorageUploadImage($request, 'file', 'profile');
    
            if (!empty($dataUploadImage)) {
                DB::beginTransaction();

                $this->profile->FindOrFail($id)->update([
                    'hinhanhthanhvien' => $dataUploadImage['file_path']
                ]);
    
                $user = $this->user->FindOrFail(auth()->id());
    
                $info = [
                    'ho'       => $user->profile->hothanhvien,
                    'name'     => $user->profile->tenthanhvien,
                    'image'    => $user->profile->hinhanhthanhvien,
                ];
    
                session()->put('info', $info);

                DB::commit();
    
                return response([
                    'status' => 1,
                    'message' => 'success'
                ], 200);
            }            
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    // Company
    public function index_company()
    {
        try {
            $company = $this->company->FindOrFail(auth()->user()->idcongty);

            $fields = $this->field->all();
    
            $departments = $this->department->all();
    
            return view('admin.profile.company.index', compact('company', 'fields', 'departments'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function create_company()
    {
        try {
            if (!auth()->user()->email_verified_at) {
                return redirect()->route('dasboard.verify');
            }
            elseif (auth()->user()->idcongty) {
                return redirect()->route('profile.company.index');
            }
    
            $fields = $this->field->all();
    
            $departments = $this->department->all();
    
            return view('admin.profile.company.add', compact('fields', 'departments'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function store_company(CompanyRequest $request)
    {
        try {
            DB::beginTransaction();

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
    
            $this->user->FindOrFail(auth()->id())->update([
                'idcongty' => $idcongty,
                'loaitaikhoan' => 1
            ]);
    
            $role = $this->role->where('loaivaitro', 2)->first();
    
            UserRole::create([
                'idtaikhoan' => auth()->id(),
                'idvaitro' => $role->id,
                'thoigianbatdau' => Carbon::now()->format('Y-m-d'),
                'thoigianketthuc' => Carbon::now()->addYears(1000)->format('Y-m-d'),
            ]);
    
            session()->put('idcongty', $idcongty);

            DB::commit();
    
            return redirect()->route('profile.index');            
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update_company(CompanyRequest $request, $id)
    {
        try {
            DB::beginTransaction();

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
    
            $this->company->FindOrFail($id)->update($data);

            DB::commit();
    
            return redirect()->route('profile.company.index', ['id' => $id]);            
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete_company($id)
    {
        try {
            DB::beginTransaction();

            $this->company->FindOrFail($id)->delete();

            DB::commit();

            return redirect()->route('profile.index');           
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    // Account
    public function index_account()
    {
        try {
            $users = $this->user->where('idcongty', auth()->user()->idcongty)->get();

            $roles  = $this->role->where('idcongty', auth()->user()->idcongty)->get();
    
            return view('admin.profile.account.index', compact('users', 'roles'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
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
            foreach ($request->idvaitro as $key => $value) {
                if ($request->thoigianketthuc[$key] == null) {

                    $thoigianketthuc = Carbon::now()->addYears(1000)->format('Y-m-d');
                }
                else
                {
                    $thoigianketthuc = Carbon::create($request->thoigianketthuc[$key])->format('Y-m-d');
                }
                DB::table('taikhoan_vaitro')->insert([
                    'idtaikhoan' => $user->id,
                    'idvaitro' => $value,
                    'thoigianbatdau' => Carbon::create($request->thoigianbatdau[$key])->format('Y-m-d'),
                    'thoigianketthuc' => $thoigianketthuc,
                ]);
            }

            DB::commit();

            return redirect()->route('profile.account.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function edit_account($id)
    {
        try {
            $user     = $this->user->FindOrFail($id);

            $roles    = $this->role->where('idcongty', auth()->user()->idcongty)->get();
            
            return view('admin.profile.account.edit', compact('user', 'roles'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update_account(AccountRequestEdit $request, $id)
    {
        try {
            DB::beginTransaction();

            if(!empty($request->password))
            {
                $this->user->FindOrFail($id)->update([
                    'password' => bcrypt($request->password)
                ]);
            }

            if(!empty($request->idvaitro))
            {
                $user = $this->user->FindOrFail($id);

                foreach ($request->idvaitro as $key => $value) {
                    // Delete data to table taikhoan_vaitro
                    DB::table('taikhoan_vaitro')->where('idtaikhoan', $user->id)
                                                ->where('idvaitro', $value)->delete();
                    
                    if ($request->thoigianketthuc[$key] == null) {

                        $thoigianketthuc = Carbon::now()->addYears(1000)->format('Y-m-d');
                    }
                    else
                    {
                        $thoigianketthuc = Carbon::create($request->thoigianketthuc[$key])->format('Y-m-d');
                    }
                    
                    // Create data to table taikhoan_vaitro
                    DB::table('taikhoan_vaitro')->insert([
                        'idtaikhoan' => $user->id,
                        'idvaitro' => $value,
                        'thoigianbatdau' => Carbon::create($request->thoigianbatdau[$key])->format('Y-m-d'),
                        'thoigianketthuc' => $thoigianketthuc,
                    ]);
                }
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
        try {
            DB::beginTransaction();

            $this->user->FindOrFail($id)->delete();

            DB::commit();

            return response()->json([
                'code' => 200
            ]);            
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function verify($id)
    {
        try {
            DB::beginTransaction();

            $this->user->FindOrFail($id)->update([
                'email_verified_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]);

            DB::commit();

            return redirect()->route('profile.account.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete_role_user(Request $request)
    {
        try {
            DB::beginTransaction();

            DB::table('taikhoan_vaitro')->where('idtaikhoan', $request->id_user)
                                    ->where('idvaitro', $request->id_role)->delete();
            DB::commit();

            return response()->json([
                'code' => 200
            ]);
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    // Role
    public function index_role()
    {
        try {
            $roles = $this->role->where('idcongty', auth()->user()->idcongty)->get();

            $permissionParents = $this->permission->where('parent_id', 0)->where('trangthai', 1)->get();
    
            return view('admin.profile.role.index', compact('roles', 'permissionParents'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function store_role(RoleRequest $request)
    {
        try {
            DB::beginTransaction();

            $role = $this->role->create([
                'idcongty'   => auth()->user()->idcongty,
                'tenvaitro'  => $request->tenvaitro,
                'motavaitro' => $request->motavaitro,
            ]);
    
            // insert data to table vaitro_quyen
            $role->permissions()->attach($request->idquyen);

            DB::commit();
    
            return redirect()->route('profile.role.index');            
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function edit_role($id)
    {
        try {
            $role = $this->role->FindOrFail($id);

            $roles = $this->role->all();
    
            $permissionParents = $this->permission
                                ->where('parent_id', 0)
                                ->where('trangthai', 1)
                                ->get();
            $rolePermissions = $role->permissions;
    
            return view('admin.profile.role.edit', compact('role', 'roles', 'permissionParents', 'rolePermissions'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update_role(RoleRequest $request, $id)
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
    
            return redirect()->route('profile.role.index');            
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete_role($id)
    {
        try {
            DB::beginTransaction();

            $role = $this->role->FindOrFail($id);

            $role->delete();
    
            $role->permissions()->detach();

            DB::commit();
    
            return response()->json([
                'code' => 200
            ]);            
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }
}
