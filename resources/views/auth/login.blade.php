<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin | Đăng nhập</title>

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
    <!-- /.login-logo -->
    <div class="card card-outline card-primary">
        <div class="card-header text-center">
            <h2><b>Đăng nhập</b></h2>
        </div>
        <div class="card-body">
            <p class="login-box-msg">Đăng nhập để bắt đầu phiên của bạn</p>
            <div class="alert alert-danger alert-custom-all" style="display: none"></div>
            <form action="{{ route('login') }}" id="submit-login" method="post">
                @csrf
                <div class="input-group mb-3">
                    <input type="text" name="email" value="{{ old('email') }}"
                            class="form-control @error('email') is-invalid @enderror" placeholder="Email">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>
                    </div>
                </div>
                @error('email')
                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                @enderror
                <div class="alert alert-danger alert-custom alert-validate-email" style="display: none;"></div>
                <div class="input-group mb-3">
                    <input type="password" name="password"
                            class="form-control @error('password') is-invalid @enderror" placeholder="Password">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                @error('password')
                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                @enderror
                <div class="alert alert-danger alert-custom alert-validate-password" style="display: none;"></div>
                <div class="row">
                    <div class="col-12">
                        <div class="icheck-primary">
                            <input type="checkbox" name="remember_me" id="remember">
                            <label for="remember">
                                Nhớ đăng nhập
                            </label>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary btn-block">Đăng nhập</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>
            <div class="text-center mt-3">
                <a href="{{ route('password.request') }}">Quên mật khẩu?</a><br>
                <a href="{{ route('register') }}">Đăng ký thành viên mới</a>
            </div>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
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
