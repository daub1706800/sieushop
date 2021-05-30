<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin | Đăng ký</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('adminLTE/plugins/fontawesome-free/css/all.min.css')}}">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="{{asset('adminLTE/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset('adminLTE/dist/css/adminlte.min.css')}}">
    <style>
        .alert-custom
        {
            padding: 3px 5px;
            margin-top: 0px;
        }
    </style>
</head>
<body class="hold-transition register-page">
<div class="register-box">
    <div class="card card-outline card-primary">
        <div class="card-header text-center">
            <h2><b>Đăng ký</b></h2>
        </div>
        <div class="card-body">
            <p class="login-box-msg">Đăng ký thành viên mới</p>
            <form action="{{ route('register') }}" method="post">
                @csrf
                <div class="input-group mb-3">
                    <input type="text" name="email"
                            class="form-control @error('email') is-invalid @enderror"
                            value="{{ old('email') }}"placeholder="Email">
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
                    <input type="password" name="password"
                            class="form-control @error('password') is-invalid @enderror" placeholder="Mật khẩu">
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
                    <input type="password" name="password_confirmation"
                            class="form-control"
                            placeholder="Gõ lại mật khẩu">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="text-center">
                            <p>
                                Bằng việc nhấn nút đăng ký bạn đã đồng ý với
                                <a href="#">Điều khoản sử dụng </a>
                                của sieushop.vn
                            </p>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary btn-block">Đăng ký</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>
            <div class="text-center mt-3">
                <a href="{{ route('login') }}">Tôi đã có tài khoản thành viên</a>
            </div>
        </div>
        <!-- /.form-box -->
    </div><!-- /.card -->
</div>
<!-- /.register-box -->

<!-- jQuery -->
<script src="{{asset('adminLTE/plugins/jquery/jquery.min.js')}}"></script>
<!-- Bootstrap 4 -->
<script src="{{asset('adminLTE/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{asset('adminLTE/dist/js/adminlte.min.js')}}"></script>
</body>
</html>
