@extends('admin.layouts.admin')

@section('title')
    <title>Tin tức | Lịch sử</title>
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
    @include('admin.partials.content-header', ['name' => 'DUYỆT / XUẤT BẢN', 'key' => 'TIN TỨC'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">STT</th>
                                <th scope="col">Tiêu đề tin tức</th>
                                <th scope="col">Người duyệt/ xuất bản</th>
                                <th scope="col">Nội dung đánh giá</th>
                                <th scope="col">Thời gian xử lý</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- // ho tro dem so thu tu trong table -->
                            @foreach ($data as $key => $row)
                            <tr>
                                <th scope="row">{{$key+1}}</th>
                                <td>{{$row->tieudetintuc}}</td>
                                <td>{{$row->hothanhvien}} {{$row->tenthanhvien}}</td>
                                <td>{{$row->noidungdanhgia}}</td>
                                <td>{{$row->thoigian}}</td>
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
