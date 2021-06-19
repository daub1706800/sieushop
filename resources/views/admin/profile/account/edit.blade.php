@extends('admin.layouts.admin')

@section('title')
    <title>Tài khoản | Chỉnh sửa</title>
@endsection

@section('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
    <link rel="stylesheet" href="{{asset('adminLTE/dist/css/mystyle2.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/css/select2.css')}}">
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
    @include('admin.partials.content-header', ['name' => 'SỬA', 'key' => 'TÀI KHOẢN'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <form action="{{ route('profile.account.update', ['id' => $user->id]) }}" method="post">
                        @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Họ tên *</label>
                                    <input readonly type="text" class="form-control" name="tenthanhvien"
                                        value="{{ $user->profile->hothanhvien ? $user->profile->hothanhvien . ' ' . $user->profile->tenthanhvien : 'Chưa cập nhật' }}" required>
                                </div>
                                <div class="form-group">
                                    <label>Email *</label>
                                    <input readonly type="email" class="form-control" name="email"
                                        value="{{ $user->email }}">
                                </div>
                                <div class="form-group">
                                    <label>Mật khẩu *</label>
                                    <input type="text" class="form-control" name="password" placeholder="Mật khẩu">
                                </div>
                                <label>Gán vai trò *</label>
                                <div class="overflow-auto" style="height: 100px">
                                    <table class="table table-borderless table-sm">
                                        <tbody>
                                            @foreach( $roles as $role )
                                            <tr>
                                                <td class="py-2" style="width:39%">
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
                                <div class="text-center mb-5">
                                    <button type="submit" class="btn btn-primary">Lưu chỉnh sửa</button>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="bg-blue">
                                        <h1 class="text-center">Vai trò tài khoản</h1>
                                    </div>
                                    <table class="table table-sm table-borderless text-center">
                                        <thead>
                                            <tr>
                                                <th scope="col">Vai trò</th>
                                                <th scope="col">Thời hạn</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach( $data1 as $role )
                                            <tr>
                                                <td style="width:50%">{{ $role['motavaitro'] }}</td>
                                                <td style="width:50%">
                                                    {!! $role['thoigianbatdau'] . ' <b>-</b> ' . $role['thoigianketthuc'] !!}
                                                </td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
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
    <!-- Bootstrap Date-Picker Plugin -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    <script src="{{ asset('vendor/js/select2.js') }}"></script>
    <script>
        $(document).ready(function() {
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

            $(function(){
                $(".role-selected-choose").select2({
                    tags: false,
                    placeholder : 'Chọn vai trò',
                    theme: "classic",
                    width: "100%",
                    // multiple: true
                    disabled: true
                })
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
        });
    </script>
@endsection
