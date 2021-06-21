@extends('admin.layouts.admin')

@section('title')
    <title>Vai trò | Danh sách</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{ asset('AdminLTE/company/role/index/role.css') }}">
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'DANH SÁCH', 'key' => 'VAI TRÒ'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                @can('role-add')
                    <div class="col-md-12">
                        <a id="btn-modal-click" href="" class="btn btn-primary float-right mb-3" data-toggle="modal" data-target="#exampleModal"
                            data-whatever="@getbootstrap"><i class="fas fa-plus"></i></a>
                    </div>
                @endcan
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Tên vai trò</th>
                                    <th scope="col">Mô tả</th>
                                    <th scope="col" style="width:40%">Quyền</th>
                                    <th scope="col" style="width:10%"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($roles as $key => $role)
                                    <tr>
                                        <th scope="row">{{ $role->id }}</th>
                                        <td>{{ $role->tenvaitro }}</td>
                                        <td>{{ $role->motavaitro }}</td>
                                        <td>
                                            <div style="overflow: auto; width:100%; height: 75px;">
                                                @foreach ( $role->permissions as $value)
                                                    <span class="badge badge-primary">{{ $value->tenquyen }}</span>
                                                @endforeach
                                            </div>
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                                @canany(['role-view', 'role-delete'])
                                                    <div class="dropdown-menu">
                                                        @can('role-view')
                                                            <a class="dropdown-item text-info" href="{{ route('profile.role.edit', ['id' => $role->id]) }}">Chỉnh sửa</a>
                                                        @endcan
                                                        @can('role-delete')
                                                            @if($role->user->isEmpty())
                                                                <a class="dropdown-item text-danger delete-role" href="{{ route('profile.role.delete', ['id' => $role->id]) }}">Xóa</a>
                                                            @endif
                                                        @endcan
                                                    </div>
                                                @endcanany
                                            </div>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>

<!-- Modal Add Role -->
<div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="col-md-12">
                    <h4><b>Thêm vai trò</b></h4><hr>
                </div>
                <form action="{{ route('profile.role.store') }}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Tên vai trò *</label>
                                <input type="text" class="form-control @error('tenvaitro') is-invalid @enderror"
                                        name="tenvaitro" placeholder="Tên vai trò" value="{{ old('tenvaitro') }}">
                                @error('tenvaitro')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Mô tả *</label>
                                <textarea name="motavaitro" class="form-control @error('motavaitro') is-invalid @enderror"
                                        rows="3" placeholder="Mô tả">{{ old('motavaitro') }}</textarea>
                                @error('motavaitro')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Chọn tất cả quyền <input type="checkbox" class="check-all"></label>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <label>Chọn quyền *</label>
                            <div class="overflow-auto mb-3" style="height: 300px;">
                                <table class="table table-borderless table-sm table-primary table-hover">
                                    <thead class="table-warning">
                                        <tr>
                                            <th></th>
                                            @foreach(config('permissions.module_childrent') as $permissionChildrent)
                                            <th>{{ $permissionChildrent['display'] }}</th>
                                            @endforeach
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($permissionParents as $permissionParent)
                                        <tr>
                                            <td class="table-warning text-right">
                                                <label>Module {{ $permissionParent->motaquyen }}
                                                    <input type="checkbox" class="checkbox-parent" value="{{ $permissionParent->id }}">
                                                </label>
                                            </td>
                                            @foreach($permissionParent->permissionChildrent as $permissionChildrent)
                                            <td class="text-center">
                                                <input type="checkbox" class="checkbox-childrent"
                                                name="idquyen[]" value="{{ $permissionChildrent->id }}">
                                            </td>
                                            @endforeach
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-md-12 text-center">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                            <button type="submit" class="btn btn-primary">Lưu</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
@section('js')
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="{{ asset('AdminLTE/company/role/index/role.js') }}"></script>
@endsection
