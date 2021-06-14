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
    <link rel="shortcut icon" href="{{ asset('TemplateTechBlog/images/favicon.ico') }}" type="image/x-icon"/>
    <link rel="apple-touch-icon" href="{{ asset('TemplateTechBlog/images/apple-touch-icon.png') }}">
    <!-- Design fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('TemplateTechBlog/css/bootstrap.css') }}" rel="stylesheet">
    <!-- FontAwesome Icons core CSS -->
    <link href="{{ asset('TemplateTechBlog/css/font-awesome.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('adminLTE/plugins/fontawesome-free-5.15.3-web/css/all.min.css') }}">
    <link href="{{ asset('TemplateTechBlog/css/responsive.css') }}" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="{{ asset('TemplateTechBlog/style.css') }}" rel="stylesheet">
    <!-- Colors for this template -->
    <link href="{{ asset('TemplateTechBlog/css/colors.css') }}" rel="stylesheet">
    <!-- Version Tech CSS for this template -->
    <link href="{{ asset('TemplateTechBlog/css/version/tech.css') }}" rel="stylesheet">
    @yield('css')
</head>
<body>
@include('frontend.partials.header')
@yield('content')
@include('frontend.partials.footer')
<script src="{{ asset('TemplateTechBlog/js/jquery.min.js') }}"></script>
<script src="{{ asset('TemplateTechBlog/js/tether.min.js') }}"></script>
<script src="{{ asset('TemplateTechBlog/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('TemplateTechBlog/js/custom.js') }}"></script>
<script>
    $(document).on('click', '#loadvideo',function(play){
        play.preventDefault();
        var idvideo = $(this).data('id');
        var that = $(this);
        $.ajax({
            url:$(this).attr('href'),
            type: 'GET',
            data:{
                'idvideo':idvideo,
            },
            success: function(data) {
                that.css('display', 'none');
                that.parent().append(data);
            }
        })
    })
</script>
@yield('js')
</body>
</html>
