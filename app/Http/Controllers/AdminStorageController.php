<?php

namespace App\Http\Controllers;

use App\Http\Requests\AdminStorageRequest;
use App\Http\Requests\StorageRequest;
use App\Models\Company;
use App\Models\Profile;
use App\Models\Storage;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class AdminStorageController extends Controller
{
    private $storage;
    private $company;
    private $profile;

    public function __construct(Storage $storage, Company $company, Profile $profile)
    {
        $this->storage = $storage;
        $this->company = $company;
        $this->profile = $profile;
    }

    public function index()
    {
        try {
            $storages = $this->storage->all();

            $companies = $this->company->all();

            return view('admin.admin-storage.index', compact('storages', 'companies'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function store(AdminStorageRequest $request)
    {
        try {
            DB::beginTransaction();

            $data = [
                'idcongty'      => $request->idcongty,
                'idtaikhoan'    => auth()->id(),
                'tenkho'        => $request->tenkho,
                'diachikho'     => $request->diachikho,
                'taitrongkho'   => $request->taitrongkho,
                'dientichkho'   => $request->dientichkho,
                'sonhanvienkho' => $request->sonhanvienkho,
                'ghichukho'     => $request->ghichukho,
            ];
    
            $this->storage->create($data);
    
            DB::commit();

            return redirect()->route('admin.storage.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function edit($id)
    {
        try {
            $storage = $this->storage->FindOrFail($id);

            $companies = $this->company->all();

            return view('admin.admin-storage.edit', compact('storage', 'companies'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update(AdminStorageRequest $request, $id)
    {
        try {
            DB::beginTransaction();

            $data = [
                'idcongty'      => $request->idcongty,
                'tenkho'        => $request->tenkho,
                'diachikho'     => $request->diachikho,
                'taitrongkho'   => $request->taitrongkho,
                'dientichkho'   => $request->dientichkho,
                'sonhanvienkho' => $request->sonhanvienkho,
                'ghichukho'     => $request->ghichukho,
            ];
    
            $this->storage->FindOrFail($id)->update($data);
            
            DB::commit();
        
            return redirect()->route('admin.storage.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete($id)
    {
        try {
            DB::beginTransaction();

            $this->storage->FindOrFail($id)->delete();

            DB::commit();

            return response()->json(['code' => 200]);
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function view(Request $request)
    {
        try {
            $storage = $this->storage->FindOrFail($request->idStorage);

            $company = $storage->company->tencongty;
    
            $profile = $this->profile->where('idtaikhoan', auth()->id())->first();
    
            $date = Carbon::createFromFormat('Y-m-d H:i:s',$storage->created_at)->format('d-m-Y');
    
            return response()->json([
                'storage' => $storage,
                'company' => $company,
                'author' => $profile->hothanhvien . ' ' . $profile->tenthanhvien,
                'date' => $date
            ]);
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }
}
