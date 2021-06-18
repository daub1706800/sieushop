@extends('admin.layouts.admin')

@section('title')
    <title>Vai trò | Danh sách</title>
@endsection

@section('css')
    <style>
        .check-all, .checkbox-parent, .checkbox-childrent{
            transform: scale(1.3);
        }
        .alert-custom{
            margin-top: 5px;
            padding: 3px 5px;
        }
    </style>
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
                <div class="col-md-12">
                    <a id="btn-modal-click" href="" class="btn btn-primary float-right mb-3" data-toggle="modal" data-target="#exampleModal"
                        data-whatever="@getbootstrap"><i class="fas fa-plus"></i></a>
                </div>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Tên vai trò</th>
                                    <th scope="col">Mô tả</th>
                                    <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($roles as $key => $role)
                                    <tr>
                                        <th scope="row">{{ $role->id }}</th>
                                        <td>{{ $role->tenvaitro }}</td>
                                        <td>{{ $role->motavaitro }}</td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="{{ route('profile.role.edit', ['id' => $role->id]) }}">Chỉnh sửa</a>
                                                    @if($role->user->isEmpty())
                                                    <a class="dropdown-item" href="{{ route('profile.role.delete', ['id' => $role->id]) }}">Xóa</a>
                                                    @endif
                                                </div>
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
                            <div class="table-responsive-md">
                                <table class="table table-borderless table-primary table-hover">
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
    <script>
        $(document).ready(function(){
            $('.checkbox-parent').on('click', function(){
                $(this).parents('tr').find('.checkbox-childrent').prop('checked', $(this).prop('checked'));
            });

            $('.check-all').on('click', function(){
                $(this).parents().find('.checkbox-parent').prop('checked', $(this).prop('checked'));
                $(this).parents().find('.checkbox-childrent').prop('checked', $(this).prop('checked'));
            });
            $(function () {
                var errors = $('.alert-custom').html();
                if (errors != null) {
                    $('#btn-modal-click').click();
                }
            });
        });
    </script>
@endsection
