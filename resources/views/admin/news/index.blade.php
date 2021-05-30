@extends('layouts.admin')

@section('title')
    <title>Tin tức | Danh sách</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('AdminLTE/dist/css/mystyle2.css')}}">
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('partials.content-header', ['name' => 'DANH SÁCH', 'key' => 'TIN TỨC'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <a href="{{route('news.add')}}" class="btn btn-primary float-right m-2">Thêm tin tức</a>
                </div>
                <div class="col-md-12">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Hình ảnh</th>
                            <th scope="col">Tiêu đề</th>
                            <th scope="col">Tóm tắt</th>
                            <th scope="col">Ngày viết bài</th>
                            <th scope="col">Tác giả</th>
                            <th scope="col">Duyệt</th>
                            <th scope="col">Xuất bản</th>
                            <th scope="col"></th>
                        </tr>
                        </thead>
                        <tbody>
                            @if($news)
                            @foreach($news as $key => $item)
                            <tr class="item-news1" data-url="{{ route('news.edit', ['id'=>$item->id]) }}">
                                <th scope="row">{{$key+1}}</th>
                                <td><img style="witdh:100px; height:100px" src="{{$item->hinhanhtintuc}}" alt=""></td>
                                <td style="width: 100px">{{ $item->tieudetintuc }}</td>
                                <td style="width: 100px">{{ $item->tomtattintuc }}</td>
                                <td style="width: 170px">{{ $item->ngaydangtintuc }}</td>
                                <td>{{ $item->profile->tenthanhvien .' '. $item->profile->hothanhvien }}</td>
                                <td><i class='{{ $item->duyettintuc   == 0 ? "" : "fas fa-check" }}'></i></td>
                                <td><i class='{{ $item->xuatbantintuc == 0 ? "" : "fas fa-check" }}'></i></td>
                                <td>
                                    <a href="{{ route('news.edit', ['id'=>$item->id]) }}" class="btn btn-info"><i class="fas fa-pencil-alt"></i></a><br>
                                    <a href="{{ route('news.delete', ['id'=>$item->id]) }}" style="width: 42px; margin-top:5px"
                                        class="btn btn-danger"><i class="far fa-trash-alt"></i></a>
                                </td>
                            </tr>
                            @endforeach
                            @endif
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