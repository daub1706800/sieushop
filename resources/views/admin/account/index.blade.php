@extends('admin.layouts.admin')

@section('title')
    <title>Tài khoản | Danh sách</title>
@endsection

@section('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
    <link rel="stylesheet" href="{{asset('adminLTE/dist/css/mystyle2.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/css/select2.css')}}">
    <link rel="stylesheet" href="{{ asset('AdminLTE/admin/account/index/account.css') }}">
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
                <a id="btn-modal-click" href="" class="btn btn-primary float-right mb-3" data-toggle="modal" data-target="#exampleModal"
                    data-whatever="@getbootstrap"><i class="fas fa-plus"></i></a>
            </div>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                <th scope="col">STT</th>
                                <th scope="col">Họ tên</th>
                                <th scope="col">Email</th>
                                <th scope="col" style="width:5%">Vai trò</th>
                                <th scope="col" style="width:30%">Quyền</th>
                                <th scope="col">Tạo bởi</th>
                                <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($users as $key => $user)
                                <tr>
                                    <th scope="row">{{ $key+1 }}</th>
                                    <td>{{ $user->profile->hothanhvien != null ? $user->profile->hothanhvien .' '. $user->profile->tenthanhvien : "Chưa cập nhật" }}</td>
                                    <td>{{ $user->email }}</td>
                                    <td>
                                        @foreach ($user->roles as $user_role)
                                            @if ($user_role->loaivaitro == 1 || $user_role->loaivaitro == 2)
                                                <a href="{{ route('account.delete-role') }}" class="badge badge-danger badge-delete"
                                                    data-toggle="tooltip" data-placement="right" title="Xóa"
                                                    data-id-role="{{ $user_role->id }}" data-id-user="{{ $user->id }}">
                                                    {{ $user_role->motavaitro }}</a>
                                            @else
                                                <a href="{{ route('account.delete-role') }}" class="badge badge-success badge-delete"
                                                    data-toggle="tooltip" data-placement="right" title="Xóa"
                                                    data-id-role="{{ $user_role->id }}" data-id-user="{{ $user->id }}">
                                                    {{ $user_role->motavaitro }}</a>
                                            @endif
                                        @endforeach
                                    </td>
                                    <td>
                                        <div style="overflow-y: auto; width:100%; height: 100px">
                                            @foreach ($user->roles as $value)
                                                @foreach ($value->permissions as $value1)
                                                    <span class="badge badge-primary">{{ $value1->tenquyen }}</span>
                                                @endforeach
                                            @endforeach
                                        </div>
                                    </td>
                                    <td>
                                        @if ($user->idcongty && $user->loaitaikhoan != 2)
                                        {{ $user->company->tencongty }}
                                        @elseif ($user->loaitaikhoan == 2)
                                        {{ __('Hệ thống') }}
                                        @else
                                        {{ __('Người dùng') }}
                                        @endif
                                    </td>
                                    <td>
                                        <div class="btn-group">
                                            @if(!$user->email_verified_at)
                                                <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">Tùy chọn
                                                </button>
                                            @else
                                                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">Tùy chọn
                                                </button>
                                            @endif
                                            <div class="dropdown-menu">
                                                @if(!$user->email_verified_at)
                                                <a class="dropdown-item text-success" href="{{ route('account.verify', ['id' => $user->id]) }}">Kích hoạt email</a>
                                                @endif
                                                <a class="dropdown-item text-info" href="{{ route('account.edit', ['id' => $user->id]) }}">Chỉnh sửa</a>
                                                @if($user->storage->isEmpty() && $user->stage->isEmpty() && $user->product->isEmpty()
                                                    && $user->news->isEmpty() )
                                                <a class="dropdown-item text-danger" href="{{ route('account.delete', ['id' => $user->id]) }}">Xóa</a>
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
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="col-md-12">
                    <h4><b>Tạo tài khoản</b></h4><hr>
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
                <form action="{{route('account.store')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Email *</label>
                                <input type="email" class="form-control"
                                        name="email" placeholder="Email">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Mật khẩu *</label>
                                <input type="password" class="form-control reload-group"
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
                            <div class="form-group">
                                <label>Chọn công ty *</label>
                                <select class="form-control company-selected @error('idvaitro') is-invalid @enderror"
                                    name="idcongty" data-url="{{ route('account.change-role') }}">
                                    <option value=""></option>
                                    @foreach($companies as $company)
                                        <option value="{{ $company->id }}">{{ $company->tencongty }}</option>
                                    @endforeach
                                </select>
                                @error('password_confirmation')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <label>Gán vai trò *</label>
                            <div class="overflow-auto" style="height: 100px">
                                <table class="table table-borderless table-sm">
                                    <tbody id="show-change-role">
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
    <script src="{{ asset('vendor/js/select2.js') }}"></script>
    <script src="{{ asset('AdminLTE/admin/account/index/account.js') }}"></script>
@endsection
