<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{ auth()->user()->loaitaikhoan == 2 ? route('admin.home') : route('dasboard.home') }}" class="brand-link">
        <img src="{{ asset('adminLTE/dist/img/AdminLTELogo.png') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">TechBlog</span>
    </a>
    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            @if (auth()->user()->loaitaikhoan == 2)
                <div class="image">
                    <img src="{{ asset('adminLTE/dist/img/AdminLTELogo1.png') }}" class="img-circle elevation-2" alt="Administrator Image">
                </div>
                <div class="info">
                    <a href="" class="d-block">{{"Administrator"}}</a>
                </div>
            @else
                <div class="image">
                    <img src="{{ auth()->id() ? asset(session()->get('info')['image']) : '' }}" class="img-circle elevation-2">
                </div>
                <div class="info">
                    <a href="{{route('profile.index')}}" class="d-block">{{auth()->id() && session()->get('info')['name'] != null ? session()->get('info')['ho'] . ' ' . session()->get('info')['name'] : "Username"}}</a>
                </div>
            @endif
        </div>
        <!-- SidebarSearch Form -->
        <div class="form-inline">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Tìm kiếm" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class with font-awesome 
                or any other icon font library -->
                @if (session()->get('info'))
                    @if (session()->get('info')['ho'] != "" && auth()->user()->idcongty == null && auth()->user()->loaitaikhoan != 2)
                    <li class="nav-item">
                        <a href="{{route('profile.company.create')}}" class="nav-link">
                            <i class="nav-icon fas fa-building"></i>
                            <p>
                                Tạo công ty
                            </p>
                        </a>
                    </li>
                    @endif
                @endif
                <!-- Admin's Module -->
                @if(auth()->user()->loaitaikhoan == 2)
                <!-- Dasboard 1 -->
                <li class="nav-item li-dropdown">
                    <a href="#" class="nav-link content-dropdown">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Bảng điều khiển
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('department.index')}}" class="nav-link">
                                <i class="nav-icon fas fa-balance-scale"></i>
                                <p>
                                    Sở ngành
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('field.index')}}" class="nav-link">
                                <i class="nav-icon fas fa-th"></i>
                                <p>
                                    Lĩnh vực
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('category.index')}}" class="nav-link">
                                <i class="nav-icon fas fa-th-list"></i>
                                <p>
                                    Chuyên mục
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('company.index') }}" class="nav-link">
                                <i class="nav-icon fas fa-building"></i>
                                <p>
                                    Công ty
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.storage.index') }}" class="nav-link">
                                <i class="nav-icon fas fa-warehouse"></i>
                                <p>
                                    Kho
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('news.index')}}" class="nav-link">
                                <i class="nav-icon fas fa-newspaper"></i>
                                <p>
                                    Tin tức
                                    <span class="badge badge-info right news-badge"></span>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.video.index')}}" class="nav-link">
                                <i class="nav-icon fas fa-video"></i>
                                <p>
                                    Tin tức Video
                                    <span class="badge badge-info right newsvideo-badge"></span>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.productcategory.index')}}" class="nav-link">
                                <i class="nav-icon fas fa-list"></i>
                                <p>
                                    Loại sản phẩm
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('admin.product.index') }}" class="nav-link">
                                <i class="nav-icon fab fa-product-hunt"></i>
                                <p>
                                    Sản phẩm
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('account.index')}}" class="nav-link">
                                <i class="nav-icon fas fa-user"></i>
                                <p>
                                    Tài khoản
                                    <span class="badge badge-info right account-badge"></span>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('role.index')}}" class="nav-link">
                                <i class="nav-icon fas fa-user-tag"></i>
                                <p>
                                    Vai trò
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('permission.add')}}" class="nav-link">
                                <i class="nav-icon fas fa-user-shield"></i>
                                <p>
                                    Quyền
                                </p>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- /.Dasboard 1 -->

                <!-- Dasboard 2 -->
                <li class="nav-item li-dropdown">
                    <a href="#" class="nav-link content-dropdown">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Bảng điều khiển
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('advertise.index') }}" class="nav-link">
                                <i class="nav-icon fas fa-balance-scale"></i>
                                <p>
                                    Quảng cáo
                                </p>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- /.Dasboard 2 -->
                @endif
                <!-- /.Admin's Module -->

                <!-- Company's Module -->
                @if( auth()->user()->loaitaikhoan == 1 )
                    @if ( auth()->user()->idcongty != null && session()->get('info')['name'] != null || session()->get('idcongty') != null && session()->get('info')['name'] != null)
                    <li class="nav-item li-dropdown">
                        <a href="#" class="nav-link content-dropdown">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>
                                Bảng điều khiển
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="{{route('storage.index') }}" class="nav-link">
                                    <i class="nav-icon fas fa-warehouse"></i>
                                    <p>
                                        Kho
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{route('tintuc.Tintuc')}}" class="nav-link">
                                    <i class="nav-icon fas fa-newspaper"></i>
                                    <p>
                                        Tin tức
                                        <span class="badge badge-info right news-badge"></span>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{route('video.index')}}" class="nav-link">
                                    <i class="nav-icon fas fa-video"></i>
                                    <p>
                                        Tin tức Video
                                        <span class="badge badge-info right newsvideo-badge"></span>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{route('productcategory.index')}}" class="nav-link">
                                    <i class="nav-icon fas fa-list"></i>
                                    <p>
                                        Loại sản phẩm
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('product.index') }}" class="nav-link">
                                    <i class="nav-icon fab fa-product-hunt"></i>
                                    <p>
                                        Sản phẩm
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('profile.account.index') }}" class="nav-link">
                                    <i class="nav-icon fas fa-user"></i>
                                    <p>
                                        Tài khoản
                                        <span class="badge badge-info right account-badge"></span>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('profile.role.index') }}" class="nav-link">
                                    <i class="nav-icon fas fa-user-tag"></i>
                                    <p>
                                        Vai trò
                                    </p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    @elseif(auth()->user()->idcongty == null)
                    <li class="nav-item">
                        <a href="{{route('profile.company.create')}}" class="nav-link">
                            <i class="nav-icon fas fa-exclamation-circle"></i>
                            <p>
                                Đăng ký Công ty mới !
                            </p>
                        </a>
                    </li>
                    @elseif (session()->get('info')['name'] == null)
                    <li class="nav-item">
                        <a href="{{route('profile.index')}}" class="nav-link">
                            <i class="nav-icon fas fa-exclamation-circle"></i>
                            <p>
                                Cập nhật thông tin !
                            </p>
                        </a>
                    </li>
                    @endif
                @endif
                <!-- /.Company's Module -->
            </ul>
        </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
