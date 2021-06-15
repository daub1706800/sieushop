<!-- header -->
<header class="tech-header header">
    <div class="container-fluid">
        <nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                    data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="{{ route('home') }}">
                <img src="{{ asset('TemplateTechBlog/images/version/tech-logo.png') }}" alt="">
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
                                                <button class="tablinks" onmouseover="openCategory(event, '{{$row->id}}')">
                                                    <a href="{{route('tinchuyenmuc',['id'=>$row->id])}}">{{$row->tenchuyenmuc}}</a>
                                                </button>
                                            @endforeach
                                        </div>
                                        
                                        <div class="tab-details clearfix">
                                            @foreach($header as $key => $row)
                                            
                                                <div id="{{$row->id}}" class="tabcontent">
                                                    <div class="row">
                                                        @foreach($hinhanhheader as $key2 => $row2)
                                                        @if($row->id == $row2->idchuyenmuc)
                                                        <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                                                            <div class="blog-box">
                                                                <div class="post-media">
                                                                    <a href="{{route('detail',['id'=>$row2->id])}}" title="">
                                                                        <img src="{{$row2->hinhanhtintuc}}"alt="" class="img-fluid">
                                                                        <div class="hovereffect">
                                                                        </div><!-- end hover -->
                                                                        <!-- <span class="menucat">showdulieu</span> -->
                                                                    </a>
                                                                </div><!-- end media -->
                                                                <div class="blog-meta">
                                                                    <h4><a href="{{route('detail',['id'=>$row2->id])}}" title="">{{Str::limit($row2->tieudetintuc,50)}}</a></h4>
                                                                </div><!-- end meta -->
                                                            </div><!-- end blog-box -->
                                                        </div>
                                                        @endif
                                                        @endforeach 
                                                    </div><!-- end row -->
                                                </div>
                                            @endforeach 
                                                  
                                        </div><!-- end tab-details -->


                                    </div><!-- end mega-menu-content -->
                                </div>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('tinvideo') }}">Video</a>
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




