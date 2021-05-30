@extends('admin.layouts.admin')

@section('title')
    <title>Tin tức | Danh sách</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('AdminLTE/dist/css/mystyle2.css')}}">
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'DANH SÁCH', 'key' => 'TIN TỨC'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <a href="{{ route('news.add') }}" class="btn btn-primary float-right m-2">Thêm tin tức</a>
                </div>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Người đăng</th>
                                    <th scope="col">Chuyên mục</th>
                                    <th scope="col">Tiêu đề</th>
                                    <th scope="col">Tin nổi bật</th>
                                    <th scope="col">Ngày đăng</th>
                                    <th scope="col">Công ty</th>
                                    <th scope="col">Trạng thái</th>
                                    <th scope="col"></th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($news as $key => $item)
                                    <tr class="item-news1" data-url="{{ route('news.edit', ['id'=>$item->id]) }}">
                                        <th scope="row">{{$key+1}}</th>
                                        <td>{{ $item->profile->tenthanhvien .' '. $item->profile->hothanhvien }}</td>
                                        <td>{{ $item->category->tenchuyenmuc }}</td>
                                        <td>{{ $item->tieudetintuc }}</td>
                                        <td>{{ $item->loaitintuc == 1 ? "Nổi bật" : "" }}</td>
                                        <td>{{ $item->ngaydangtintuc }}</td>
                                        <td>{{ $item->company->tencongty }}</td>
                                        <td style="width:120px;">
                                            @if ($item->duyettintuc == 0)
                                            <a href="">Chờ duyệt</a>
                                            @elseif ($item->duyettintuc == 1)
                                            <a href="">Chờ xuất bản</a>
                                            @elseif ($item->lydogo == 1)
                                            <a href="">Đã gỡ/Chờ duyệt</a>
                                            @endif
                                            @if (!$item->newshistory->isEmpty())
                                                <br><a href="">Lịch sử tin tức</a>
                                            @endif
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="{{ route('news.edit', ['id'=>$item->id]) }}">Chỉnh sửa</a>
                                                    @if ($item->xuatbantintuc == 0)
                                                    <a class="dropdown-item" href="{{ route('news.delete', ['id'=>$item->id]) }}">Xóa</a>
                                                    @endif
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
@endsection

@section('js')
    <script>
        $(document).ready(function(){
            $('.item-news').on('click', function(){
                let url = $(this).data('url');
                window.location = url;
            })
        })
    </script>
@endsection
