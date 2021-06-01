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
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Tiêu đề tin tức</th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Chuyên mục</th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Ngày đăng tin tức</th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Người đăng</th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Tin nổi bật</th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Xuất bản</th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Mở rộng</th>
                                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" >Trạng thái</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            @foreach ($data as $key => $row)
                                <tr class="odd">
                                    <td class="dtr-control sorting_1" tabindex="0">{{$key+1}}</td>
                                    <!-- <td>{{$row->tencongty}}</td> -->
                                    <td><a style="color:black;" href="{{route('tintuc.viewTintuc',['id'=>$row->id])}}">{{$row->tieudetintuc}}</a></td>
                                    <td>{{$row->tenchuyenmuc}}</td>
                                    <td>{{$row->ngaydangtintuc}}</td>
                                    <td>{{$row->hothanhvien}} {{$row->tenthanhvien}}</td>
                                    <td>{{$row->loaitintuc}}</td>
                                    <td>{{$row->ago}}</td>
                                    <td>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="{{route('tintuc.detailTintuc',['id'=>$row->id])}}">Chi tiết</a>
                                                @if($row->xuatbantintuc==0)
                                                    <a onclick="return confirm('Bạn chắc chắn muốn xóa ?')" class="dropdown-item" href="{{route('tintuc.deleteTintuc',['id'=>$row->id])}}">Xóa tin tức</a>
                                                @endif
                                            </div>
                                        </div>
                                    </td>

                                    <td>
                                        @if ( $row->duyettintuc === 0 && $row->xuatbantintuc === 0 && $row->lydogo === 0)
                                        <p style="color:blue; font-weight:bold;">Chờ Duyệt</p>
                                        @endif
                                        @if ( $row->duyettintuc === 1 && $row->xuatbantintuc === 0 && $row->lydogo === 0)
                                        <p style="color:blue; font-weight:bold;">Chờ Xuất bản</p>
                                        @endif
                                        @if ( $row->duyettintuc === 1 && $row->xuatbantintuc === 1 && $row->lydogo === 0)
                                        <p style="color:green; font-weight:bold;">Tin đã được đăng</p>
                                        @endif
                                        @if ( $row->duyettintuc === 0 && $row->xuatbantintuc === 0 && $row->lydogo === 1)
                                        <p style="color:orange; font-weight:bold;">Chờ Duyệt</p>
                                        <a style="color:red;" href="{{route('tintuc.viewhistoryTintuc',['id'=>$row->id])}}">Xem lịch sử tin</a>
                                        @endif
                                        @if ( $row->duyettintuc === 1 && $row->xuatbantintuc === 0 && $row->lydogo === 1)
                                        <a style="color:orange; font-weight:bold;">Chờ Xuất bản</a>
                                        <br>
                                        <a style="color:red;" href="{{route('tintuc.viewhistoryTintuc',['id'=>$row->id])}}">Xem lịch sử tin</a>
                                        @endif
                                        @if ( $row->duyettintuc === 1 && $row->xuatbantintuc === 1 && $row->lydogo === 1)
                                        <p style="color:green; font-weight:bold;">Tin đã được đăng</p>
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
@endsection
