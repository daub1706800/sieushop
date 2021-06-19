@extends('admin.layouts.admin')

@section('title')
    <title>Tài khoản | Danh sách</title>
@endsection

@section('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
    <link rel="stylesheet" href="{{asset('adminLTE/dist/css/mystyle2.css')}}">
    <link rel="stylesheet" href="{{ asset('AdminLTE/company/account/index/account.css') }}">
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'DANH SÁCH', 'key' => 'TÀI KHOẢN'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <a id="btn-modal-click" href="" class="btn btn-primary float-right m-2"
                    data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap"><i class="fas fa-plus"></i></a>
            </div>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                <th scope="col">#</th>
                                <th scope="col">Họ tên</th>
                                <th scope="col">Email</th>
                                <th scope="col">Vai trò</th>
                                <th scope="col" style="width:50%">Quyền</th>
                                <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($users as $key => $user)
                                <tr>
                                    <th scope="row">{{ $user->id }}</th>
                                    <td>{{ $user->profile->hothanhvien != null ? $user->profile->hothanhvien .' '. $user->profile->tenthanhvien : "Chưa cập nhật" }}</td>
                                    <td>{{ $user->email }}</td>
                                    <td>
                                        @foreach ( $user->roles as $value )
                                            @if ($value->loaivaitro == 2)
                                                <span class="badge badge-danger">{{ $value->motavaitro }}</span>
                                            @else
                                                <a href="{{ route('profile.account.delete-role') }}" class="badge badge-delete badge-success"
                                                    data-toggle="tooltip" data-placement="right" title="Xóa" data-id-role="{{ $value->id }}"
                                                    data-id-user="{{ $user->id }}">
                                                {{ $value->motavaitro }}</a>
                                            @endif
                                        @endforeach
                                    </td>
                                    <td>
                                        <div style="overflow: auto; width:100%; height: 75px;">
                                            @foreach ( $user->roles as $value )
                                                @foreach ( $value->permissions as $value1)
                                                    <span class="badge badge-primary">{{ $value1->tenquyen }}</span>
                                                @endforeach
                                            @endforeach
                                        </div>
                                    </td>
                                    <td>
                                        <div class="btn-group">
                                            @if ($user->email_verified_at == null)
                                                <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">Tùy chọn
                                                </button>
                                            @else
                                                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">Tùy chọn
                                                </button>
                                            @endif
                                            <div class="dropdown-menu">
                                                @if ($user->email_verified_at == null)
                                                    <a class="dropdown-item text-success" href="{{ route('profile.account.verify', ['id' => $user->id]) }}">Kích hoạt email</a>
                                                @endif
                                                    <a class="dropdown-item text-info" href="{{ route('profile.account.edit', ['id' => $user->id]) }}">Chỉnh sửa</a>
                                                @if($user->storage->isEmpty() && $user->stage->isEmpty()
                                                    && $user->product->isEmpty() && $user->news->isEmpty())
                                                    <a class="dropdown-item text-danger" href="{{ route('profile.account.delete', ['id' => $user->id]) }}">Xóa</a>
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

<!-- Modal Add Account -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="col-md-12">
                    <h4><b>Thêm tài khoản</b></h4><hr>
                </div>
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                <form action="{{ route('profile.account.store') }}" method="post">
                    <div class="row">
                        @csrf
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Email *</label>
                                <input type="email" class="form-control"
                                    name="email" placeholder="Email" value="{{ old('email') }}">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Mật khẩu *</label>
                                <input type="password" class="form-control"
                                    name="password" placeholder="Mật khẩu">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Nhập lại mật khẩu *</label>
                                <input type="password" class="form-control"
                                    name="password_confirmation" placeholder="Nhập lại khẩu">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <label>Gán vai trò *</label>
                            <div class="overflow-auto" style="height: 100px">
                                <table class="table table-borderless table-sm">
                                    <tbody>
                                        @foreach( $roles as $role )
                                        <tr>
                                            <td style="width:39%;">
                                                <label style="font-weight:unset">
                                                    <input style="visibility: hidden" type="checkbox" name="idvaitro[]" value="{{ $role->id }}">
                                                    <span class="badge badge-role badge-secondary" id="badge{{ $role->id }}"> {{ $role->motavaitro }}</span>
                                                </label>
                                            </td>
                                            <td style="width:30%">
                                                <input type="text" class="form-control" id="batdau{{ $role->id }}"
                                                    name="thoigianbatdau[]" placeholder="Thời gian bắt đầu" disabled>
                                            </td>
                                            <td style="width:1%"><b>-</b></td>
                                            <td style="width:30%">
                                                <input type="text" class="form-control" id="ketthuc{{ $role->id }}"
                                                    name="thoigianketthuc[]" placeholder="Thời gian kết thúc" disabled>
                                            </td>
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
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    <script src="{{ asset('AdminLTE/company/account/index/account.js') }}"></script>
@endsection
