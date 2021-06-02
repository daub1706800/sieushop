{{-- @extends('frontend.layouts.master')

@section('content') --}}
<html>
<head>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    @yield('title')
    <!-- Site Icons -->
    <link rel="shortcut icon" href="{{ asset('TemplateTechBlog/images/favicon.ico') }}" type="image/x-icon"/>
    <link rel="apple-touch-icon" href="{{ asset('TemplateTechBlog/images/apple-touch-icon.png') }}">
    <!-- Design fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('TemplateTechBlog/css/bootstrap.css') }}" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Xác nhận email của bạn.') }}</div>

                <div class="card-body">
                    @if (session('resent'))
                        <div class="alert alert-success" role="alert">
                            {{ __('Một liên kết xác minh mới đã được gửi đến địa chỉ email của bạn.') }}
                        </div>
                    @endif

                    {{ __('Trước khi tiếp tục, vui lòng kiểm tra email của bạn để biết liên kết xác minh.') }}
                    {{ __('Nếu bạn không nhận được Email') }},
                    <form class="d-inline" method="POST" action="{{ route('verification.resend') }}">
                        @csrf
                        <button type="submit" class="btn btn-link p-0 m-0 align-baseline">{{ __('Bấm vào đây để yêu cầu gửi lại') }}</button>.
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="{{ asset('TemplateTechBlog/js/bootstrap.min.js') }}"></script>
</body>
</html>
{{-- @endsection --}}
