@extends('admin.layouts.admin')

@section('title')
    <title>Tài khoản | Chỉnh sửa</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('adminLTE/dist/css/mystyle2.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/css/select2.css')}}">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    {{-- <link rel="stylesheet" href="/resources/demos/style.css"> --}}
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
                    <form action="{{route('profile.account.update', ['id' => $user->id])}}" method="post">
                        @csrf
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Họ tên *</label>
                                <input readonly type="text" class="form-control" name="tenthanhvien"
                                    value="{{ $user->profile->hothanhvien ? $user->profile->hothanhvien . ' ' . $user->profile->tenthanhvien : 'Chưa cập nhật' }}" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Email *</label>
                                <input readonly type="email" class="form-control" name="email"
                                    value="{{ $user->email }}" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Mật khẩu *</label>
                                <input type="text" class="form-control" name="password" placeholder="Mật khẩu">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group data-save" data-save="">
                                <label>Vai trò *</label><br>
                                <select class="form-control role-selected-choose" name="idvaitro[]" multiple>
                                    @foreach($roles as $role)
                                    <option {{ $roleUser->contains('id', $role->id) ? "selected" : ""}}
                                        value="{{ $role->id }}">{{ $role->motavaitro }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6 text-center">
                            <button type="submit" class="btn btn-primary">Lưu chỉnh sửa</button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>

<div id="dialog" title="Đặt thời hạn cho vai trò">
    <div class="text-center">
        <p>Thời hạn: <input type="text" id="datepicker" placeholder="YYYY-MM-DD"></p>
    </div>
    <div class="text-center">
        <button type="button" class="btn btn-primary confirm-date">Xác nhận</button>
    </div>
</div>
@endsection

@section('js')
    <script src="{{ asset('vendor/js/select2.js') }}"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(document).ready(function() {
            $( function() {
                $( "#dialog" ).dialog({
                    autoOpen: false,
                    resizable: false,
                    draggable: false,
                    width: 350
                });
            } );

            $( function() {
                $( "#datepicker" ).datepicker({
                    changeMonth: true,
                    changeYear: true
                });
            } );

            $(function(){
                $(".role-selected-choose").select2({
                    tags: false,
                    placeholder : 'Chọn vai trò',
                    theme: "classic",
                    width: "100%",
                    // multiple: true
                })
            });

            // $('.role-selected-choose').on('select2:select', function (e) {
            //     var that = e.params.data;
            //     var arr = new Array();
            //     $( "#dialog" ).dialog("open");
            //     $(".confirm-date").on('click', function (e) {
            //         var date = $('#datepicker').val();
            //         var data = that.id + '-' + date;
            //         arr.push(data);
            //         $( "#dialog" ).dialog( "close" );
            //         $('.data-save').attr('data-save', arr);
            //         console.log(arr);
            //     });
            // });
        });
    </script>
@endsection
