@extends('admin.layouts.admin')

@section('title')
    <title>Tài khoản | Danh sách</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('adminLTE/dist/css/mystyle2.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/css/select2.css')}}">
    <style>
        .alert-custom{
            margin-top: 5px;
            padding: 3px 5px;
        }
    </style>
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
                                <th scope="col">#</th>
                                <th scope="col">Họ tên</th>
                                <th scope="col">Email</th>
                                <th scope="col">Vai trò</th>
                                <th scope="col">Tạo bởi</th>
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
                                        @foreach ($user->roles as $user_role)
                                        <p>- {{ $user_role->motavaitro }}</p>
                                        @endforeach
                                    </td>
                                    @if ($user->idcongty)
                                    <td>{{ $user->company->tencongty }}</td>
                                    @else
                                    <td>Hệ thống</td>
                                    @endif
                                    <td>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="{{ route('account.edit', ['id' => $user->id]) }}">Chỉnh sửa</a>
                                                @if($user->storage->isEmpty() && $user->stage->isEmpty() && $user->product->isEmpty()
                                                    && $user->news->isEmpty() && !empty($user->idcongty))
                                                <a class="dropdown-item" href="{{ route('account.delete', ['id' => $user->id]) }}">Xóa</a>
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
                <form action="{{route('account.store')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Email *</label>
                                <input type="email" class="form-control @error('email') is-invalid @enderror"
                                        name="email" placeholder="Email">
                                @error('email')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Mật khẩu *</label>
                                <input type="text" class="form-control reload-group @error('password') is-invalid @enderror"
                                        name="password" placeholder="Mật khẩu">
                                @error('password')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Nhập lại mật khẩu *</label>
                                <input type="text" class="form-control @error('password_confirmation') is-invalid @enderror"
                                        name="password_confirmation " placeholder="Nhập lại khẩu">
                                @error('password_confirmation')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Vai trò *</label><br>
                                <select class="form-control role-selected @error('idvaitro') is-invalid @enderror"
                                    name="idvaitro[]" multiple>
                                    @foreach($roles as $role)
                                    <option value="{{ $role->id }}">{{ $role->motavaitro }}</option>
                                    @endforeach
                                </select>
                                @error('idvaitro')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
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
    <script src="{{ asset('vendor/js/select2.js') }}"></script>
    <script>
        $(document).ready(function() {
            $(function(){
                $(".role-selected").select2({
                    tags: false,
                    placeholder : 'Chọn vai trò',
                    theme: "classic",
                    width: "100%"
                })
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
