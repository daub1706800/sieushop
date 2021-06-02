@extends('admin.layouts.admin')

@section('title')
    <title>Tin tức | Danh sách</title>
@endsection

@section('css')
    <style>
        .flex{
            width: 500px;
        }
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
                <div class="col-sm-12">
                    <div class="col-md-12 mb-4 text-right">
                        <a style="width:44px" class="btn btn-primary" href="{{route('tintuc.addTintuc')}}">
                            <i class="fas fa-plus"></i></a>
                    </div>
                    <table id="example1" class="table table-bordered table-striped dataTable dtr-inline" role="grid" aria-describedby="example1_info">
                        <thead>
                            <tr role="row">
                                <th class="sorting sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending">No.</th>
                                <!-- <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Công ty</th> -->
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Người đăng</th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Chuyên mục</th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Tiêu đề tin tức</th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Tin nổi bật</th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Ngày đăng tin tức</th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Xuất bản</th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Mở rộng</th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Trạng thái</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($data as $key => $row)
                                <tr class="odd">
                                    <td class="dtr-control sorting_1" tabindex="0">{{$key+1}}</td>
                                    <td>{{$row->hothanhvien}} {{$row->tenthanhvien}}</td>
                                    <td>{{$row->tenchuyenmuc}}</td>
                                    <td>
                                        <a href="" class="tieudetintuc" style="color: black"
                                            data-toggle="modal" data-target="#exampleModal"
                                            data-id="{{ $row->id }}">{{$row->tieudetintuc}}</a>
                                    </td>
                                    <td>{{$row->loaitintuc}}</td>
                                    <td>{{$row->ngaydangtintuc}}</td>
                                    <td>{{$row->ago}}</td>
                                    <td>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="{{route('tintuc.detailTintuc',['id'=>$row->id])}}">Chi tiết</a>
                                                <a onclick="return confirm('Bạn chắc chắn muốn xóa ?')" class="dropdown-item" href="{{route('tintuc.deleteTintuc',['id'=>$row->id])}}">Xóa tin tức</a>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        @if ( $row->duyettintuc === 0 && $row->xuatbantintuc === 0 && $row->lydogo === 0)
                                        <a style="color:blue; font-weight:bold;" href="{{route('tintuc.acceptTintuc',['id'=>$row->id])}}">Chờ Duyệt</a>
                                        @endif
                                        @if ( $row->duyettintuc === 1 && $row->xuatbantintuc === 0 && $row->lydogo === 0)
                                        <a style="color:blue; font-weight:bold;" href="{{route('tintuc.postTintuc',['id'=>$row->id])}}">Chờ Xuất bản</a>
                                        @endif
                                        @if ( $row->duyettintuc === 1 && $row->xuatbantintuc === 1 && $row->lydogo === 0)
                                        <p style="color:green;">Tin đã được đăng</p>
                                        @endif
                                        @if ( $row->duyettintuc === 0 && $row->xuatbantintuc === 0 && $row->lydogo === 1)
                                        <a style="color:orange; font-weight:bold;" href="{{route('tintuc.acceptTintuc',['id'=>$row->id])}}">Đã gỡ / Chờ Duyệt</a>
                                        <br>
                                        <a style="color:red;" href="{{route('tintuc.viewhistoryTintuc',['id'=>$row->id])}}">Xem lịch sử tin</a>
                                        @endif
                                        @if ( $row->duyettintuc === 1 && $row->xuatbantintuc === 0 && $row->lydogo === 1)
                                        <a style="color:orange; font-weight:bold;" href="{{route('tintuc.postTintuc',['id'=>$row->id])}}">Chờ Xuất bản</a>
                                        <br>
                                        <a style="color:red;" href="{{route('tintuc.viewhistoryTintuc',['id'=>$row->id])}}">Xem lịch sử tin</a>
                                        @endif
                                        @if ( $row->duyettintuc === 1 && $row->xuatbantintuc === 1 && $row->lydogo === 1)
                                        <p style="color:green;">Tin đã được đăng</p>
                                        <a style="color:red;" href="{{route('tintuc.viewhistoryTintuc',['id'=>$row->id])}}">Xem lịch sử tin</a>
                                        @endif
                                    </td>
                                    <!-- <td>
                                        @if ( $row->duyettintuc === 0 && $row->xuatbantintuc === 0 && $row->lydogo === 1)
                                        <a style="color:black; font-weight:bold;" href="{{route('tintuc.viewhistoryTintuc',['id'=>$row->id])}}">Xem lịch sử tin</a>
                                        @endif
                                        @if ( $row->duyettintuc === 1 && $row->xuatbantintuc === 0 && $row->lydogo === 1)
                                        <a style="color:black; font-weight:bold;" href="{{route('tintuc.viewhistoryTintuc',['id'=>$row->id])}}">Xem lịch sử tin</a>
                                        @endif
                                        @if ( $row->duyettintuc === 1 && $row->xuatbantintuc === 1 && $row->lydogo === 1)
                                        <a style="color:black; font-weight:bold;" href="{{route('tintuc.viewhistoryTintuc',['id'=>$row->id])}}">Xem lịch sử tin</a>
                                        @endif
                                    </td> -->
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
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

            $(document).on('click', '.tieudetintuc', function() {
                var idNews = $(this).data('id');
                $.ajax({
                    url : "{{ route('tintuc.view') }}",
                    type : "post",
                    data : {
                        "idNews":idNews,
                        "_token": "{{ csrf_token() }}"
                    },
                    success:function(data) {
                        // console.log(data);
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
