@extends('admin.layouts.admin')

@section('title')
    <title>Tin tức | Danh sách</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('AdminLTE/dist/css/mystyle2.css')}}">
    <style>
        .tieudetintuc:hover{
            color: #007bff !important;
        }
    </style>
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
                                    <tr>
                                        <th scope="row">{{ $item->id }}</th>
                                        <td>{{ $item->profile->tenthanhvien .' '. $item->profile->hothanhvien }}</td>
                                        <td>{{ $item->category->tenchuyenmuc }}</td>
                                        <td>
                                            <a href="" class="tieudetintuc" style="color: black"
                                                data-toggle="modal" data-target="#exampleModal"
                                                data-id="{{ $item->id }}">{{ $item->tieudetintuc }}</a>
                                        </td>
                                        <td>{{ $item->loaitintuc == 1 ? "Nổi bật" : "" }}</td>
                                        <td>{{ $item->ngaydangtintuc }}</td>
                                        <td>{{ $item->company->tencongty }}</td>
                                        <td style="width:120px;">
                                            @if ($item->duyettintuc == 0 && $item->xuatbantintuc == 0 && $item->lydogo == 0)
                                            <p>Chờ duyệt</p>
                                            @endif
                                            @if ($item->xuatbantintuc == 0 && $item->duyettintuc == 1)
                                            <p>Chờ xuất bản</p>
                                            @endif
                                            @if ($item->xuatbantintuc == 1)
                                            <p>Đã xuất bản</p>
                                            @endif
                                            @if ($item->lydogo == 1)
                                            <p>Được thu hồi</p>
                                            @endif
                                            @if (!$item->newshistory->isEmpty())
                                                <a href="{{ route('news.history', ['id' => $item->id]) }}">Lịch sử tin tức</a>
                                            @endif
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="{{ route('news.edit', ['id' => $item->id]) }}">Chỉnh sửa</a>
                                                    @if ($item->xuatbantintuc == 0)
                                                    <a class="dropdown-item" href="{{ route('news.delete', ['id' => $item->id]) }}">Xóa</a>
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

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <div class="col-md-4">
                    <h5 class="modal-title chuyenmuc" id="exampleModalLongTitle"
                        style="font-size: 18px; font-weight: bold; color: red"></h5>
                </div>
                <div class="col-md-4 offset-md-4 text-right">
                    <p class="modal-title ngaydang"
                        style="font-size: 15px;"></p>
                </div>
            </div>
            <div class="modal-body">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <p class="tieude" style="font-size: 28px; text-align: justify"></p>
                            <p class="tomtat"></p>
                            <p><img src="" style="width:440px; height: 400px" class="hinhanh"></p>
                            <p style="font-style: italic; font-weight: 10px; text-align: center"
                                class="mt-0">Hình ảnh chỉ mang tính chất minh họa</p>
                            <div class="noidung"></div>
                            <p class="tacgia" style="font-size: 15px; float: right"></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="col-md-12 text-center">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('js')
    <script>
        $(document).ready(function(){
            $('.item-news').on('click', function() {
                let url = $(this).data('url');
                window.location = url;
            });

            $(document).on('click', '.tieudetintuc', function(e) {
                var idNews = $(this).data('id');
                $.ajax({
                    url : "{{ route('news.view') }}",
                    type : "post",
                    data : {
                        "idNews":idNews,
                        "_token": "{{ csrf_token() }}"
                    },
                    success:function(data) {
                        console.log(data);
                        $('.chuyenmuc').html(data.category);
                        $('.ngaydang').html('Đăng ngày ' + data.ngaydang);
                        $('.tieude').html(data.news.tieudetintuc);
                        $('.tomtat').html(data.news.tomtattintuc);
                        $('.hinhanh').attr('src',data.news.hinhanhtintuc);
                        $('.noidung').html(data.news.noidungtintuc);
                        $('.tacgia').html(data.author);
                    }
                });
            });
        });
    </script>
@endsection
