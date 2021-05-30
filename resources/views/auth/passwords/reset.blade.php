<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin | Thay đổi mật khẩu</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('adminLTE/plugins/fontawesome-free/css/all.min.css')}}">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="{{asset('adminLTE/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset('adminLTE/dist/css/adminlte.min.css')}}">
    <style>
        .alert-custom{
            padding: 3px 5px;
        }
    </style>
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="card card-outline card-primary">
        <div class="card-header text-center">
            <h2><b>Thay đổi mật khẩu</b></h2>
        </div>
        <div class="card-body">
            <p class="login-box-msg">Bạn chỉ còn một bước nữa để có được mật khẩu mới, hãy khôi phục mật khẩu của bạn ngay bây giờ.</p>
            <form action="{{ route('password.update') }}" method="post">
                @csrf
                <input type="hidden" name="token" value="{{ $token }}">

                <div class="input-group mb-3">
                    <input type="email" class="form-control @error('email') is-invalid @enderror"
                            name="email" value="{{ $email ?? old('email') }}" autocomplete="email" autofocus>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>
                    </div>
                </div>
                @error('email')
                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                @enderror

                <div class="input-group mb-3">
                    <input type="password" name="password" class="form-control @error('password') is-invalid @enderror"
                        placeholder="Mật khẩu" autocomplete="new-password">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                @error('password')
                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                @enderror

                <div class="input-group mb-3">
                    <input type="password" class="form-control"
                        placeholder="Nhập lại mật khẩu" name="password_confirmation" autocomplete="new-password">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary btn-block">Thay đổi mật khẩu</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>
        </div>
        <!-- /.login-card-body -->
    </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="{{asset('adminLTE/plugins/jquery/jquery.min.js')}}"></script>
<!-- Bootstrap 4 -->
<script src="{{asset('adminLTE/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{asset('adminLTE/dist/js/adminlte.min.js')}}"></script>
</body>
</html>
