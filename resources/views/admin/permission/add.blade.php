@extends('admin.layouts.admin')

@section('title')
    <title>Quyền | Chức năng</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('vendor/css/select2.css')}}">
    <link rel="stylesheet" href="{{ asset('AdminLTE/admin/permission/permission.css') }}">
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'QUYỀN', 'key' => 'CHỨC NĂNG'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="row col-md-12">
                    <!-- create permission -->
                    <div class="col-md-6 border-right">
                        <div class="col-md-12">
                            <h5><b>Tạo quyền cho chức năng</b></h5>
                        </div>
                        <form action="{{ route('permission.store') }}" method="post">
                            @csrf
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Tên chức năng</label>
                                    <div id="show-permission" data-url="{{ route('permission.check-permission') }}"></div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <label>Quyền *</label>
                                <div class="row">
                                    @foreach ( config('permissions.module_childrent') as $itemChildrent )
                                    <div class="col-md-3">
                                        <label>
                                            <input type="checkbox" name="module_childrent[]"
                                                    value="{{ $itemChildrent['name'] }}-{{ $itemChildrent['display'] }}">
                                            {{ $itemChildrent['display'] }}
                                        </label>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                            <div class="col-md-12 text-center">
                                <button type="submit" class="btn btn-primary mb-5">Tạo quyền</button>
                            </div>
                        </form>
                    </div>
                    <!-- /.create permission -->
                    <!-- update permission -->
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <h5><b>Thêm quyền cho chức năng</b></h5>
                        </div>
                        <form id="changeform" method="post">
                            <input type="hidden" id="csrf" value="{{ csrf_token() }}">
                            <div class="form-group col-md-12">
                                <label>Tên chức năng</label>
                                <select class="form-control module-old-select" name="module_parent"
                                        id="module_parent" data-url={{ route('permission.check-permission-checked') }}>
                                    @if ( $updatePermissions != "" )
                                    @foreach ( $updatePermissions as $itemParent )
                                    <option value="{{ $itemParent->tenquyen }}-{{ $itemParent->id }}">
                                        {{ $itemParent->motaquyen }}
                                    </option>
                                    @endforeach
                                    @else
                                    <option value="">
                                        Chưa có Module
                                    </option>
                                    @endif
                                </select>
                            </div>
                            <div class="col-md-12">
                                <label>Quyền *</label>
                                <div id="module_childrent" class="row">
                                    @foreach ( config('permissions.module_childrent') as $itemChildrent )
                                    <div class="col-md-3">
                                        <label>
                                            <input type="checkbox" name="module_childrent[]"
                                                    value="{{ $itemChildrent['name'] }}-{{ $itemChildrent['display'] }}">
                                            {{ $itemChildrent['display'] }}
                                        </label>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                            <div class="col-md-12 text-center">
                                <button type="submit" id="update-permission" data-url="{{ route('permission.update') }}" class="btn btn-primary mb-5">Thêm quyền</button>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /.update permission -->
                <!-- show permission -->
                <div class="col-md-12 mt-3">
                    <h5><b>Danh sách Chức năng và Quyền trên hệ thống</b></h5>
                </div>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <table id="example1" class="table table-borderless">
                                <thead>
                                    <tr>
                                        <th class="text-right text-white bg-success">Chức năng</th>
                                        @for ( $i = 0; $i < count(config('permissions.module_childrent')); $i++ )
                                        <th  class="text-center text-white bg-success"></th>
                                        @endfor
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ( $permissions as $permission )
                                    <tr>
                                        <td class="text-right">
                                            <i>{{ $permission->motaquyen }}</i>
                                            <input style="transform: scale(1.2, 1.2);" type="checkbox"
                                                class="trangthaiquyen" value="{{ $permission->id }}"
                                                {{ $permission->trangthai == 1 ? 'checked' : '' }}
                                                data-url-on="{{ route('permission.change-status-on') }}"
                                                data-url-off="{{ route('permission.change-status-off') }}">
                                        </td>
                                        @foreach ( $permission->permissionChildrent as $key => $item )
                                        <td class="text-center"><a href="#">{{ $item->motaquyen }}</a></td>
                                        @if ($key + 1 == count( $permission->permissionChildrent ) && $key < count(config('permissions.module_childrent'))-1)
                                        <td></td>
                                        <td></td>
                                        @endif
                                        @endforeach
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- /.show permission -->
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
@endsection

@section('js')
    <script src="{{ asset('vendor/js/select2.js') }}"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="{{ asset('AdminLTE/admin/permission/permission.js') }}"></script>
@endsection
