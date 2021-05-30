@extends('admin.layouts.admin')

@section('title')
    <title>Tin tức | Danh sách</title>
@endsection

@section('css')
    <style>
        .flex{
            width: 500px;
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

                    <div class="col-md-12 mb-4 text-right">
                        <a style="width:44px" class="btn btn-primary" href="{{route('tintuc.addTintuc')}}">
                            <i class="fas fa-plus"></i></a>
                    </div>

                    <div class="col-md-12 mb-4 text-right">
                        <form action="{{route('tintuc.searchTintuc')}}" method="get">
                            <input type="search" name="tukhoa" placeholder="Search">
                            <input type="submit" value="Tìm kiếm" class="btn btn-primary">
                        </form>
                    </div>


                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">STT</th>
                                <th scope="col">Tiêu đề tin tức</th>
                                <th scope="col">Tin nổi bật</th>
                                <th scope="col">Ngày đăng tin tức</th>
                                <th scope="col"></th>
                                <th scope="col">Trạng thái</th>
                            </tr>
                        </thead>

                        <tbody>
                            <!-- // ho tro dem so thu tu trong table -->
                            @foreach ($data as $key => $row)

                                <tr>
                                    <th scope="row">{{$key+1}}</th>
                                    <td>{{$row->tieudetintuc}}</td>
                                    <td>{{$row->loaitintuc}}</td>
                                    <td>{{$row->ngaydangtintuc}}</td>
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
                                    @if ( $row->duyettintuc === 0 && $row->xuatbantintuc === 0 && $row->lydogo === 0)
                                    <td><a href="{{route('tintuc.acceptTintuc',['id'=>$row->id])}}">Chờ Duyệt</a></td>
                                    @endif
                                    @if ( $row->duyettintuc === 0 && $row->xuatbantintuc === 0 && $row->lydogo === 1)
                                    <td bgcolor="yellow"><a href="{{route('tintuc.acceptTintuc',['id'=>$row->id])}}">Đã gỡ / Chờ Duyệt</a></td>
                                    <td><a href="{{route('tintuc.viewhistoryTintuc',['id'=>$row->id])}}">Xem lịch sử tin</a></td>
                                    @endif
                                    @if ( $row->duyettintuc === 1 && $row->xuatbantintuc === 0 && $row->lydogo === 0)
                                    <td><a href="{{route('tintuc.postTintuc',['id'=>$row->id])}}">Chờ Xuất bản</a></td>
                                    @endif
                                    @if ( $row->duyettintuc === 1 && $row->xuatbantintuc === 0 && $row->lydogo === 1)
                                    <td bgcolor="yellow"><a href="{{route('tintuc.postTintuc',['id'=>$row->id])}}">Chờ Xuất bản</a></td>
                                    <td><a href="{{route('tintuc.viewhistoryTintuc',['id'=>$row->id])}}">Xem lịch sử tin</a></td>
                                    @endif
                                    @if ( $row->duyettintuc === 1 && $row->xuatbantintuc === 1 && $row->lydogo === 0)
                                    <td bgcolor="lightgreen">Tin đã được đăng</td>
                                    @endif
                                    @if ( $row->duyettintuc === 1 && $row->xuatbantintuc === 1 && $row->lydogo === 1)
                                    <td bgcolor="lightgreen">Tin đã được đăng</td>
                                    <td><a href="{{route('tintuc.viewhistoryTintuc',['id'=>$row->id])}}">Xem lịch sử tin</a></td>
                                    @endif
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
@endsection
