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
                    <a href="{{ route('news.add') }}" class="btn btn-primary float-right m-2"><i class="fas fa-plus"></i></a></a>
                </div>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Tiêu đề</th>
                                    <th scope="col">Chuyên mục</th>
                                    <th scope="col">Người đăng</th>
                                    <th scope="col">Ngày đăng</th>
                                    <th scope="col">Công ty</th>
                                    <th scope="col">Tin nổi bật</th>
                                    <th scope="col">Trạng thái</th>
                                    <th scope="col"></th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($news as $key => $item)
                                    <tr>
                                        <th scope="row">{{ $item->id }}</th>
                                        <td>
                                            <a href="" class="tieudetintuc"
                                                data-toggle="modal" data-target="#exampleModal"
                                                data-id="{{ $item->id }}">{{ $item->tieudetintuc }}</a>
                                        </td>
                                        <td>{{ $item->category->tenchuyenmuc }}</td>
                                        <td>{{ $item->profile->tenthanhvien .' '. $item->profile->hothanhvien }}</td>
                                        <td>{{ $item->ngaydangtintuc }}</td>
                                        <td>{{ $item->company->tencongty }}</td>
                                        <td class="text-center">
                                            <input type="checkbox" id="tinnoibat" data-id="{{ $item->id }}" value="{{ $item->loaitintuc }}" {{ $item->loaitintuc == 1 ? "checked" : "" }}>
                                        </td>
                                        <td style="width:120px;">
                                            @if ($item->duyettintuc == 0 && $item->xuatbantintuc == 0 && $item->lydogo == 0)
                                            <p class="text-warning">{{ __('Chờ duyệt') }}</p>
                                            @endif
                                            @if ($item->duyettintuc == 1 && $item->xuatbantintuc == 0 && $item->lydogo == 0)
                                            <p class="text-warning">{{ __('Chờ xuất bản') }}</p>
                                            @endif
                                            @if ($item->duyettintuc == 1 && $item->xuatbantintuc == 1 && $item->lydogo == 0)
                                            <p class="text-success">{{ __('Đã xuất bản') }}</p>
                                            @endif
                                            @if ($item->xuatbantintuc == 1 && $item->lydogo == 1)
                                            <p class="text-danger">{{ __('Được thu hồi') }}</p>
                                            @endif
                                            @if (!$item->newshistory->isEmpty())
                                                <a href="" class="viewhistory"
                                                    data-toggle="modal" data-target="#exampleModal2"
                                                    data-id="{{ $item->id }}">Lịch sử thu hồi</a>
                                            @endif
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="{{ route('news.log', ['id' => $item->id]) }}">Lịch sử tin tức</a>
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

<!-- Modal1 -->
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
                            <div class="video"></div>
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

<!-- Modal2 -->
<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <div class="col-md-4">
                    <h5 class="modal-title tieudeNews" id="exampleModalLongTitle"
                        style="font-size: 18px; font-weight: bold; color: red"></h5>
                </div>
                <div class="col-md-4 offset-md-4 text-right">
                    <p class="modal-title ngaydang"
                        style="font-size: 15px;"></p>
                </div>
            </div>
            <div class="modal-body">
                <div class="col-md-12 show-history">

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
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        $(document).ready(function(){
            $('.item-news').on('click', function() {
                let url = $(this).data('url');
                window.location = url;
            });

            $(document).on('click', '.tieudetintuc', function() {
                var idNews = $(this).data('id');
                $.ajax({
                    url : "{{ route('news.view') }}",
                    type : "post",
                    data : {
                        "idNews":idNews,
                        "_token": "{{ csrf_token() }}"
                    },
                    success:function(data) {
                        // console.log(data);
                        $('.chuyenmuc').html(data.category);
                        $('.ngaydang').html('Viết ngày ' + data.ngaydang);
                        $('.tieude').html(data.news.tieudetintuc);
                        $('.tomtat').html(data.news.tomtattintuc);
                        $('.hinhanh').attr('src',data.news.hinhanhtintuc);
                        $('.noidung').html(data.news.noidungtintuc);
                        $('.video').html(data.video);
                        $('.tacgia').html(data.author);
                    }
                });
            });

            $(document).on('click', '.viewhistory', function() {
                var idNews = $(this).data('id');
                $.ajax({
                    url : "{{ route('news.history') }}",
                    type : "post",
                    data : {
                        "idNews":idNews,
                        "_token": "{{ csrf_token() }}"
                    },
                    success:function(data) {
                        // console.log(data);
                        $('.tieudeNews').text(data.news);
                        $('.show-history').html(data.output);
                    }
                });
            });

            const Toast = Swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                timer: 1000,
                timerProgressBar: false,
                didOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                }
            });

            $(document).on('click', '#tinnoibat', function() {
                var id = $(this).data('id');
                if ($(this).val() == 1) {
                    var status = 1;
                }
                else
                {
                    var status = 0;
                }
                $.ajax({
                    url : "{{ route('news.change-status') }}",
                    type: "get",
                    data: {
                        "id":id,
                        "status":status
                    },
                    success:function(data) {
                        Toast.fire({
                            icon: 'success',
                            title: 'Chuyển đổi thành công'
                        });

                        $('#tinnoibat').val(data);
                    }
                });
            });
        });
    </script>
@endsection
