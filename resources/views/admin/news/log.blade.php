@extends('admin.layouts.admin')

@section('title')
    <title>Tin tức | Lịch sử</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('AdminLTE/dist/css/mystyle2.css')}}">
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'LỊCH SỬ DUYỆT / XUẤT BẢN', 'key' => 'TIN TỨC'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 mb-3">
                    <a href="{{ route('news.index') }}" class="btn btn-primary">Danh sách tin tức</a>
                </div>
                <div class="col-md-12 mb-3">
                    <div class="d-flex justify-content-center">
                        <h4><b>{{ $company->tencongty }}</b></h4>
                    </div>
                    <div class="d-flex justify-content-center">
                        <h4>Bản tin: <b>{{ $news->tieudetintuc }}</b></h4>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">ID Tin tức</th>
                                    <th scope="col">Nội dung đánh giá</th>
                                    <th scope="col">Người đánh giá</th>
                                    <th scope="col">Thời gian</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($newslogs as $key => $item)
                                    <tr>
                                        <th scope="row">{{ $item->id }}</th>
                                        <td>{{ $item->idtintuc }}</td>
                                        <td>{{ $item->noidungdanhgia }}</td>
                                        <td>
                                            @if ($item->user->loaitaikhoan == 2)
                                            {{ __('Administator') }}
                                            @else
                                            {{ $item->profile->hothanhvien . ' ' . $item->profile->tenthanhvien }}
                                            @endif
                                        </td>
                                        <td>{{ $item->thoigian }}</td>
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
