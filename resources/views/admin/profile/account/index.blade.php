@extends('admin.layouts.admin')

@section('title')
    <title>Tài khoản | Danh sách</title>
@endsection

@section('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
    <link rel="stylesheet" href="{{asset('adminLTE/dist/css/mystyle2.css')}}">
    <style>
        .alert-custom{
            margin-top: 5px;
            padding: 3px 5px;
        }
        .badge-role{
            transform: scale(1.2, 1.2);
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
                                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                            <div class="dropdown-menu">
                                                @if ($user->email_verified_at == null)
                                                    <a class="dropdown-item" href="{{ route('profile.account.verify', ['id' => $user->id]) }}">Kích hoạt email</a>
                                                @endif
                                                    <a class="dropdown-item" href="{{ route('profile.account.edit', ['id' => $user->id]) }}">Chỉnh sửa</a>
                                                @if($user->storage->isEmpty() && $user->stage->isEmpty()
                                                    && $user->product->isEmpty() && $user->news->isEmpty())
                                                    <a class="dropdown-item" href="{{ route('profile.account.delete', ['id' => $user->id]) }}">Xóa</a>
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
    <!-- Bootstrap Date-Picker Plugin -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    <script>
        $(document).ready(function() {
            $(function () {
                var errors = $('.alert-danger').html();
                if (errors != null) {
                    $('#btn-modal-click').click();
                }
            });
            $(function(){
                var date_input1=$('input[name="thoigianbatdau[]"]'); //our date input has the name "date"
                var date_input2=$('input[name="thoigianketthuc[]"]'); //our date input has the name "date"
                var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
                var options={
                    format: 'dd-mm-yyyy',
                    container: container,
                    todayHighlight: true,
                    autoclose: true,
                };
                date_input1.datepicker(options);
                date_input2.datepicker(options);
            });

            function formatDate(date) {
                var d = new Date(date),
                    month = '' + (d.getMonth() + 1),
                    day = '' + d.getDate(),
                    year = d.getFullYear();

                if (month.length < 2) 
                    month = '0' + month;
                if (day.length < 2) 
                    day = '0' + day;

                return [day, month, year].join('-');
            }

            $(document).on('change', 'input[name="idvaitro[]"]', function () {
                if (this.checked) {
                    $('#batdau' + $(this).val()).val(formatDate(new Date()));
                    $('#batdau' + $(this).val()).removeAttr('disabled');
                    $('#ketthuc' + $(this).val()).removeAttr('disabled');
                    $('#badge' + $(this).val()).removeClass('badge-secondary');
                    $('#badge' + $(this).val()).addClass('badge-primary');
                }
                else
                {
                    $('#batdau' + $(this).val()).val(null);
                    $('#ketthuc' + $(this).val()).val(null);
                    $('#batdau' + $(this).val()).attr('disabled', 'disable');
                    $('#ketthuc' + $(this).val()).attr('disabled', 'disable');
                    $('#badge' + $(this).val()).removeClass('badge-primary');
                    $('#badge' + $(this).val()).addClass('badge-secondary');
                }
            });

            $(document).on('blur', 'input[name="thoigianbatdau[]"]', function () {
                $(this).val(formatDate(new Date()));
            });

            $(function () {
                $('[data-toggle="tooltip"]').tooltip()
            });

            const Toast = Swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                timer: 1000,
                timerProgressBar: false,
                didOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                }
            });

            $(document).on('click', '.badge-delete', function (e) {
                e.preventDefault();
                var roleID = $(this).attr('data-id-role');
                var userID = $(this).attr('data-id-user');
                var url = $(this).attr('href');
                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            url : url,
                            type: "get",
                            data: {
                                'id_role':roleID,
                                'id_user':userID,
                            },
                            success:function(data) {
                                if (data.code == 200) {
                                    Toast.fire({
                                        icon: 'success',
                                        title: 'Xóa thành công'
                                    }).then((result) => {
                                        location.reload();
                                    });
                                }
                            }
                        });
                    }
                });
            });
        });
    </script>
@endsection
