<?php

namespace App\Http\Controllers;

use App\Http\Requests\AdminStorageRequest;
use App\Http\Requests\StorageRequest;
use App\Models\Company;
use App\Models\Storage;
use Illuminate\Http\Request;

class AdminStorageController extends Controller
{
    private $storage;
    private $company;

    public function __construct(Storage $storage, Company $company)
    {
        $this->storage = $storage;
        $this->company = $company;
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
}
