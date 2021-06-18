<?php

namespace App\Http\Controllers;

use App\Http\Requests\AccountRequest;
use App\Models\User;
use App\Models\Profile;
use App\Models\Role;
use Carbon\Carbon;
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
        try {
            $users = $this->user->all();

            $roles  = $this->role->all();

            return view('admin.account.index', compact('users', 'roles'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
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
        try {
            $user = $this->user->FindOrFail($id);
            if ($user->idcongty) {
                $roles = $this->role->where('idcongty', $user->idcongty)->orWhere('loaivaitro', 2)->get();
            }
            else
            {
                $roles = $this->role->where('loaivaitro', 2)->get();
            }
            $roleUser = $user->roles;
    
            return view('admin.account.edit', compact('user', 'roles', 'roleUser'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update(Request $request, $id)
    {
        try {
            DB::beginTransaction();

            if(!empty($request->password))
            {
                $this->user->FindOrFail($id)->update([
                    'recovery-password' => bcrypt($request->password)
                ]);
            }

            if(!empty($request->idvaitro))
            {
                $user = $this->user->FindOrFail($id);
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
        try {
            DB::beginTransaction();

            $this->profile->where('idtaikhoan', $id)->delete();

            $this->user->FindOrFail($id)->delete();

            DB::commit();

            return redirect()->route('account.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
        
    }

    public function random_password()
    {
        $password = Str::random(10);

        return response()->json($password);
    }

    public function verify($id)
    {
        try {
            DB::beginTransaction();

            $this->user->FindOrFail($id)->update([
                'email_verified_at' => Carbon::now()->format('Y-m-d H:i:s')
            ]);

            DB::commit();

            return redirect()->route('account.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }
}
