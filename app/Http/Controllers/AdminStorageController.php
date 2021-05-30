<?php

namespace App\Http\Controllers;

use App\Http\Requests\StorageRequest;
use App\Models\Storage;
use Illuminate\Http\Request;

class AdminStorageController extends Controller
{
    private $storage;

    public function __construct(Storage $storage)
    {
        $this->storage = $storage;
    }

    public function index()
    {
        $storages = $this->storage->all();

        return view('admin.admin-storage.index', compact('storages'));
    }

    public function store(StorageRequest $request)
    {
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

        return redirect()->route('admin.storage.index');
    }

    public function edit($id)
    {
        $storage = $this->storage->find($id);

        return view('admin.admin-storage.edit', compact('storage'));
    }

    public function update(StorageRequest $request, $id)
    {
        $data = [
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
