@extends('admin.layouts.admin')

@section('title')
    <title>Tài khoản | Chỉnh sửa</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('adminLTE/dist/css/mystyle2.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/css/select2.css')}}">
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
            <div class="col-md-6">
            <form action="{{ route('account.update', ['id' => $user->id]) }}" method="post">
                    @csrf
                    <div class="form-group">
                        <label>Họ tên *</label>
                        <input readonly type="text" class="form-control"
                            name="tenthanhvien"
                            value="{{ $user->profile->hothanhvien ? $user->profile->hothanhvien . ' ' . $user->profile->tenthanhvien : 'Chưa cập nhật' }}">
                    </div>
                    <div class="form-group">
                        <label>Email *</label>
                        <input readonly type="email" class="form-control"
                            name="email"
                            value="{{ $user->email }}">
                    </div>
                    <div class="form-group">
                        <label>Tạo lại mật khẩu *</label>
                        <input type="text" class="form-control reload-group"
                            name="recovery-password"
                            placeholder="Mật khẩu">
                    </div>
                    <div class="form-group">
                        <label>Vai trò *</label><br>
                        <select class="form-control role-selected"
                            name="idvaitro[]" >
                            <option value=""></option>
                            @foreach( $roles as $role )
                            <option {{ $user->roles->contains('id', $role->id) ? "selected" : ""}}
                                value="{{ $role->id }}">{{ $role->motavaitro }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="text-center">
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
                    width: "100%",
                    multiple: true
                });
            });
        });
    </script>
@endsection
