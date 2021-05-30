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
                <img src="TemplateTechBlog/images/version/tech-logo.png" alt="">
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
                                            <button class="tablinks active" onclick="openCategory(event, 'cat01')">
                                                Science
                                            </button>
                                            <button class="tablinks" onclick="openCategory(event, 'cat02')">
                                                Technology
                                            </button>
                                            <button class="tablinks" onclick="openCategory(event, 'cat03')">
                                                Social Media
                                            </button>
                                            <button class="tablinks" onclick="openCategory(event, 'cat04')">
                                                Car News
                                            </button>
                                            <button class="tablinks" onclick="openCategory(event, 'cat05')">
                                                Worldwide
                                            </button>
                                        </div>

                                        <div class="tab-details clearfix">
                                            <div id="cat01" class="tabcontent active">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="{{route('detail')}}" title="">
                                                                    <img src="TemplateTechBlog/upload/tech_menu_01.jpg"
                                                                         alt="" class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Science</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="{{route('detail')}}" title="">Top 10+ care
                                                                        advice for your toenails</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                </div><!-- end row -->
                                            </div>
                                            <div id="cat02" class="tabcontent">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="{{route('detail')}}" title="">
                                                                    <img src="TemplateTechBlog/upload/tech_menu_05.jpg"
                                                                         alt="" class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Technology</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="{{route('detail')}}" title="">2017 summer
                                                                        stamp will have design models here</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                </div><!-- end row -->
                                            </div>
                                            <div id="cat03" class="tabcontent">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="{{route('detail')}}" title="">
                                                                    <img src="TemplateTechBlog/upload/tech_menu_09.jpg"
                                                                         alt="" class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Social Media</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="{{route('detail')}}" title="">I visited
                                                                        the architects of Istanbul for you</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                </div><!-- end row -->
                                            </div>
                                            <div id="cat04" class="tabcontent">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="{{route('detail')}}" title="">
                                                                    <img src="TemplateTechBlog/upload/tech_menu_13.jpg"
                                                                         alt="" class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Car News</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="{{route('detail')}}" title="">A collection
                                                                        of the most beautiful shop designs</a></h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                </div><!-- end row -->
                                            </div>
                                            <div id="cat05" class="tabcontent">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="blog-box">
                                                            <div class="post-media">
                                                                <a href="{{route('detail')}}" title="">
                                                                    <img src="TemplateTechBlog/upload/tech_menu_17.jpg"
                                                                         alt="" class="img-fluid">
                                                                    <div class="hovereffect">
                                                                    </div><!-- end hover -->
                                                                    <span class="menucat">Worldwide</span>
                                                                </a>
                                                            </div><!-- end media -->
                                                            <div class="blog-meta">
                                                                <h4><a href="{{route('detail')}}" title="">Grilled
                                                                        vegetable with fish prepared with fish</a>
                                                                </h4>
                                                            </div><!-- end meta -->
                                                        </div><!-- end blog-box -->
                                                    </div>

                                                </div><!-- end row -->
                                            </div>
                                        </div><!-- end tab-details -->
                                    </div><!-- end mega-menu-content -->
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('gadget') }}">Sản phẩm</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('contact') }}">Liên hệ</a>
                    </li>
                    @if (auth()->user())
                        @if (auth()->user()->loaitaikhoan == 2)
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('admin.home') }}">Trang quản lý</a>
                        </li>
                        @elseif (auth()->user()->idcongty == null)
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('profile.company.create') }}">Tạo công ty</a>
                        </li>
                        @elseif (auth()->user()->idcongty != null)
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('admin.home') }}">Trang quản lý</a>
                        </li>
                        @endif
                    @endif
                </ul>
                <ul class="navbar-nav">
                    @if (auth()->id())
                    <li><a class="nav-link" href="{{ route('logout') }}"
                        onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Đăng xuất</a></li>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
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
