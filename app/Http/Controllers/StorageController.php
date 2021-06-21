<?php

namespace App\Http\Controllers;

use App\Http\Requests\StorageRequest;
use App\Models\Profile;
use App\Models\Storage;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class StorageController extends Controller
{
    private $storage;
    private $profile;

    public function __construct(Storage $storage, Profile $profile)
    {
        $this->storage = $storage;
        $this->profile = $profile;
    }

    public function index()
    {
        try {
            $storages = $this->storage->where('idcongty', auth()->user()->idcongty)->get();
        
            return view('admin.storage.index', compact('storages'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function store(StorageRequest $request)
    {
        try {
            DB::beginTransaction();

            $data = [
                'idcongty'      => auth()->user()->idcongty,
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
    
            return redirect()->route('storage.index');            
        } catch (\Exception $exception) {
            DB::rollback();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function edit($id)
    {
        try {
            $storage = $this->storage->FindOrFail($id);
        
            return view('admin.storage.edit', compact('storage'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update(StorageRequest $request, $id)
    {
        try {
            DB::beginTransaction();

            $data = [
                'tenkho'        => $request->tenkho,
                'diachikho'     => $request->diachikho,
                'taitrongkho'   => $request->taitrongkho,
                'dientichkho'   => $request->dientichkho,
                'sonhanvienkho' => $request->sonhanvienkho,
                'ghichukho'     => $request->ghichukho,
            ];
    
            $this->storage->FindOrFail($id)->update($data);

            DB::commit();
    
            return redirect()->route('storage.index');           
        } catch (\Exception $exception) {
            DB::rollback();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete($id)
    {
        try {
            DB::beginTransaction();

            $this->storage->FindOrFail($id)->delete();

            DB::commit();
        
            return response()->json([
                'code' => 200
            ]);
        } catch (\Exception $exception) {
            DB::rollback();
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
