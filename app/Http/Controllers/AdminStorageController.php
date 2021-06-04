<?php

namespace App\Http\Controllers;

use App\Http\Requests\AdminStorageRequest;
use App\Http\Requests\StorageRequest;
use App\Models\Company;
use App\Models\Profile;
use App\Models\Storage;
use Carbon\Carbon;
use Illuminate\Http\Request;

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
        $storages = $this->storage->all();

        $companies = $this->company->all();

        return view('admin.admin-storage.index', compact('storages', 'companies'));
    }

    public function store(AdminStorageRequest $request)
    {
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

        return redirect()->route('admin.storage.index');
    }

    public function edit($id)
    {
        $storage = $this->storage->find($id);

        $companies = $this->company->all();

        return view('admin.admin-storage.edit', compact('storage', 'companies'));
    }

    public function update(AdminStorageRequest $request, $id)
    {
        $data = [
            'idcongty'      => $request->idcongty,
            'tenkho'        => $request->tenkho,
            'diachikho'     => $request->diachikho,
            'taitrongkho'   => $request->taitrongkho,
            'dientichkho'   => $request->dientichkho,
            'sonhanvienkho' => $request->sonhanvienkho,
            'ghichukho'     => $request->ghichukho,
        ];

        $this->storage->find($id)->update($data);

        return redirect()->route('admin.storage.index');
    }

    public function delete($id)
    {
        $this->storage->find($id)->delete();

        return redirect()->route('admin.storage.index');
    }

    public function view(Request $request)
    {
        $storage = $this->storage->find($request->idStorage);

        $company = $storage->company->tencongty;

        $profile = $this->profile->where('idtaikhoan', auth()->id())->first();

        $date = Carbon::createFromFormat('Y-m-d H:i:s',$storage->created_at)->format('d-m-Y');

        return response()->json([
            'storage' => $storage,
            'company' => $company,
            'author' => $profile->hothanhvien . ' ' . $profile->tenthanhvien,
            'date' => $date
        ]);
    }
}
