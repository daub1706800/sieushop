<?php

namespace App\Http\Controllers;

use App\Http\Requests\AccountRequest;
use App\Models\User;
use App\Models\Profile;
use App\Models\Role;
// use PHPUnit\Exception;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class AccountController extends Controller
{
    private $user;
    private $profile;
    private $role;

    public function __construct(User $user, Profile $profile, Role $role)
    {
        $this->user    = $user;
        $this->profile = $profile;
        $this->role    = $role;
    }

    public function index()
    {
        $users = $this->user->all();

        $roles  = $this->role->all();

        return view('admin.account.index', compact('users', 'roles'));
    }

    public function store(AccountRequest $request)
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

            return redirect()->route('account.index');

        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function edit($id)
    {
        $user     = $this->user->find($id);
        $roles    = $this->role->all();
        // Lấy vai trò của tài khoản
        $roleUser = $user->roles;

        return view('admin.account.edit', compact('user', 'roles', 'roleUser'));
    }

    public function update(Request $request, $id)
    {
        try {
            DB::beginTransaction();

            if(!empty($request->password))
            {
                $this->user->find($id)->update([
                    'recovery-password' => bcrypt($request->password)
                ]);
            }

            if(!empty($request->idvaitro))
            {
                $user = $this->user->find($id);
                // Update data to table taikhoan_vaitro
                $user->roles()->sync($request->idvaitro);
            }

            DB::commit();

            return redirect()->route('account.index');

        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete($id)
    {
        $this->profile->where('idtaikhoan', $id)->delete();

        $this->user->find($id)->delete();

        return redirect()->route('account.index');
    }

    public function random_password()
    {
        $password = Str::random(10);
        
        return response()->json($password);
    }
}
