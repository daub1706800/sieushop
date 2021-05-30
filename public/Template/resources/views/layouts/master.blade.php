<!-- Su dung tam 7x -->
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
    <link rel="shortcut icon" href="{{asset('tech-blog//images/favicon.ico')}}" type="image/x-icon"/>
    <link rel="apple-touch-icon" href="{{asset('tech-blog/images/apple-touch-icon.png')}}">
    <!-- Design fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="{{asset('tech-blog/css/bootstrap.css')}}" rel="stylesheet">
    <!-- FontAwesome Icons core CSS -->
    <link href="{{asset('tech-blog/css/font-awesome.min.css')}}" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="{{asset('tech-blog/style.css')}}" rel="stylesheet">
    <!-- Colors for this template -->
    <link href="{{asset('tech-blog/css/colors.css')}}" rel="stylesheet">
    <!-- Version Tech CSS for this template -->
    <link href="{{asset('tech-blog/css/version/tech.css')}}" rel="stylesheet">
    @yield('css')
</head>
<body>

@include('components.header')

@yield('content')


@include('components.footer')

<script src="{{asset('tech-blog/js/jquery.min.js')}}"></script>
<script src="{{asset('tech-blog/js/tether.min.js')}}"></script>
<script src="{{asset('tech-blog/js/bootstrap.min.js')}}"></script>
<script src="{{asset('tech-blog/js/custom.js')}}"></script>
@yield('js')
</body>
</html>
