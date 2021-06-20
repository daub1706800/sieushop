<?php

namespace App\Http\Controllers;

use App\Http\Requests\AdminAccountRequestAdd;
use App\Http\Requests\AdminAccountRequestEdit;
use App\Models\Company;
use App\Models\User;
use App\Models\Profile;
use App\Models\Role;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class AccountController extends Controller
{
    private $user;
    private $profile;
    private $role;
    private $company;

    public function __construct(User $user, Profile $profile, Role $role, Company $company)
    {
        $this->user = $user;
        $this->profile = $profile;
        $this->role = $role;
        $this->company = $company;
    }

    public function index()
    {
        try {
            $users = $this->user->all();

            $roles = $this->role->where('loaivaitro', 2)->get();

            $companies = $this->company->all();

            return view('admin.account.index', compact('users', 'roles', 'companies'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function store(AdminAccountRequestAdd $request)
    {
        try {
            DB::beginTransaction();

            if ($request->idcongty) {
                $idcongty = $request->idcongty;
            }
            else
            {
                $idcongty = null;
            }

            $data = [
                'idcongty'     => $idcongty,
                'email'        => $request->email,
                'password'     => bcrypt($request->password),
                'loaitaikhoan' => 1,
            ];

            $user = $this->user->create($data);

            $this->profile->create([
                'idtaikhoan' => $user->id
            ]);

            if ($request->idcongty && $request->idvaitro) {
                foreach ($request->idvaitro as $key => $value) {
                    if ($request->thoigianketthuc[$key] == null) {
    
                        $thoigianketthuc = Carbon::now()->addYears(1000)->format('Y-m-d');
                    }
                    else
                    {
                        $thoigianketthuc = Carbon::create($request->thoigianketthuc[$key])->format('Y-m-d');
                    }
                    // Insert data to table taikhoan_vaitro
                    DB::table('taikhoan_vaitro')->insert([
                        'idtaikhoan' => $user->id,
                        'idvaitro' => $value,
                        'thoigianbatdau' => Carbon::create($request->thoigianbatdau[$key])->format('Y-m-d'),
                        'thoigianketthuc' => $thoigianketthuc,
                    ]);
                }
            }
            
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
    
            return view('admin.account.edit', compact('user', 'roles'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update(AdminAccountRequestEdit $request, $id)
    {
        try {
            DB::beginTransaction();

            if(!empty($request->password))
            {
                $this->user->FindOrFail($id)->update([
                    'recovery-password' => bcrypt($request->password)
                ]);
            }

            if($request->idvaitro)
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

            return redirect()->route('account.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete_role(Request $request)
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

    public function change_role(Request $request)
    {
        try {
            $roles = $this->role->where('idcongty', $request->company_id)->orWhere('loaivaitro', 2)->get();
            
            $output = '';

            $output2 = '';

            foreach ($roles as $key => $role) {
                $output .= '<tr>
                                <td style="width:39%;">
                                    <label style="font-weight:unset">
                                        <input style="visibility: hidden" type="checkbox" name="idvaitro[]" value="'.$role->id.'">
                                        <span class="badge badge-role badge-secondary" id="badge'.$role->id.'"> '.$role->motavaitro.'</span>
                                    </label>
                                </td>
                                <td style="width:30%">
                                    <input type="text" class="form-control" id="batdau'.$role->id.'"
                                        name="thoigianbatdau[]" placeholder="Thời gian bắt đầu" disabled>
                                </td>
                                <td style="width:1%"><b>-</b></td>
                                <td style="width:30%">
                                    <input type="text" class="form-control" id="ketthuc'.$role->id.'"
                                        name="thoigianketthuc[]" placeholder="Thời gian kết thúc" disabled>
                                </td>
                            </tr>';
            }

            $roles2 = $this->role->where('loaivaitro', 2)->get();

            foreach ($roles2 as $key => $role) {
                $output2 .= '<tr>
                                <td style="width:39%;">
                                    <label style="font-weight:unset">
                                        <input style="visibility: hidden" type="checkbox" name="idvaitro[]" value="'.$role->id.'">
                                        <span class="badge badge-role badge-secondary" id="badge'.$role->id.'"> '.$role->motavaitro.'</span>
                                    </label>
                                </td>
                                <td style="width:30%">
                                    <input type="text" class="form-control" id="batdau'.$role->id.'"
                                        name="thoigianbatdau[]" placeholder="Thời gian bắt đầu" disabled>
                                </td>
                                <td style="width:1%"><b>-</b></td>
                                <td style="width:30%">
                                    <input type="text" class="form-control" id="ketthuc'.$role->id.'"
                                        name="thoigianketthuc[]" placeholder="Thời gian kết thúc" disabled>
                                </td>
                            </tr>';
            }

            return response()->json([
                'output' => $output,
                'output2' => $output2
            ]);
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }
}
