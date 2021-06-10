<!-- header -->
<header class="tech-header header">
    <div class="container-fluid">
        <nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                    data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="tech-index.html">
                <!-- <img src="TemplateTechBlog/images/version/tech-logo.png" alt=""> -->
                <img src="https://i.pinimg.com/originals/ce/56/99/ce5699233cbc0f142250b520d967dff7.png" alt="" width="80px" height="80px">
            </a>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('home') }}">Trang chủ</a>
                    </li>
                    <li class="nav-item dropdown has-submenu menu-large hidden-md-down hidden-sm-down hidden-xs-down">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">Tin tức</a>
                        <ul class="dropdown-menu megamenu" aria-labelledby="dropdown01">
                            <li>
                                <div class="container">
                                    <div class="mega-menu-content clearfix">
                                        <div class="tab">
                                            @foreach($header as $key => $row)
                                                <button class="tablinks">
                                                    <a href="{{route('tinchuyenmuc',['id'=>$row->id])}}">{{$row->tenchuyenmuc}}</a>
                                                </button>
                                            @endforeach
                                        </div>

                                        
                                    </div><!-- end mega-menu-content -->
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('frontend.product.index') }}">Sản phẩm</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('contact') }}">Liên hệ</a>
                    </li>
                    @if (auth()->user())
                        @if (auth()->user()->loaitaikhoan == 2)
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('admin.home') }}">Administrator</a>
                        </li>
                        @elseif (auth()->user()->idcongty == null)
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('profile.company.create') }}">Tạo công ty</a>
                        </li>
                        @elseif (auth()->user()->idcongty != null)
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('dasboard.home') }}">Trang quản lý</a>
                        </li>
                        @endif
                    @endif
                </ul>
                <ul class="navbar-nav">
                    @if (auth()->id())
                    <li class="nav-item">
                        <a href="{{ route('logout') }}" class="nav-link" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                            Đăng xuất
                        </a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                            @csrf
                        </form>
                    </li>
                    @else
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('register') }}">Đăng ký</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">Đăng nhập</a>
                    </li>
                    @endif
                </ul>
            </div>
        </nav>
    </div><!-- end container-fluid -->
</header>
<!-- end market-header -->




