@extends('admin.layouts.admin')

@section('title')
    <title>Vai trò | Chỉnh sửa</title>
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
    @include('admin.partials.content-header', ['name' => 'SỬA', 'key' => 'VAI TRÒ'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                <form action="{{ route('profile.role.update', ['id' => $role->id]) }}" method="post">
                    @csrf
                    <div class="form-group">
                        <label>Tên vai trò *</label>
                        <input type="text" class="form-control @error('tenvaitro') is-invalid @enderror"
                                name="tenvaitro" value="{{ old('tenvaitro', $role->tenvaitro) }}"
                                placeholder="Tên vai trò">
                        @error('tenvaitro')
                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>Mô tả *</label>
                        <textarea name="motavaitro" rows="3" placeholder="Mô tả"
                                class="form-control @error('motavaitro') is-invalid @enderror">{{ old('motavaitro', $role->motavaitro) }}</textarea>
                        @error('motavaitro')
                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>Chọn tất cả quyền <input type="checkbox" class="check-all"></label>
                    </div>
                    <label>Chọn quyền *</label>
                    <div class="mb-3" style="overflow:auto; width:100%; height: 300px">
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
                                        name="idquyen[]" value="{{ $permissionChildrent->id }}"
                                        {{ $rolePermissions->contains('id', $permissionChildrent->id) ? "checked" : "" }}>
                                    </td>
                                    @endforeach
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary mb-3">Lưu chỉnh sửa</button>
                    </div>
                </form>
            </div>
        </div>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
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
        });
    </script>
@endsection
