<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin | Quên mật khẩu</title>

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
            <h2><b>Quên mật khẩu</b></h2>
        </div>
        <div class="card-body">
            <p class="login-box-msg">Bạn quên mật khẩu của mình? Tại đây bạn có thể dễ dàng lấy lại mật khẩu mới.</p>
            <form action="{{ route('password.email') }}" method="post">
                @csrf
                <div class="input-group mb-3">
                    {{-- <input type="email" class="form-control @error('email') is-invalid @enderror"
                            value="{{ old('email') }}" placeholder="Email"> --}}
                    <input type="email" class="form-control @error('email') is-invalid @enderror"
                            name="email" value="{{ old('email') }}" autocomplete="email" autofocus
                            placeholder="Email">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>
                    </div>
                </div>
                @error('email')
                    <div class="alert alert-danger alert-custom">{{ $message }}</div>
                    @enderror
                <div class="row">
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary btn-block">Yêu cầu mật khẩu mới</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>
            <p class="text-center mt-3 mb-1">
                <a href="{{route('login')}}">Đăng nhập</a>
            </p>
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
