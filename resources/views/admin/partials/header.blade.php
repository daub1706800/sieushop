<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav mr-auto">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
        <li class="nav-item">
            <a href="{{ route('home') }}" class="nav-link">Trang chủ</a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link">Liên hệ</a>
        </li>
    </ul>
    <ul class="navbar-nav">
        <li><a href="{{ route('logout') }}"
            onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Đăng xuất</a></li>
        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
            @csrf
        </form>
    </ul>
</nav>
