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
    @include('admin.partials.content-header', ['name' => 'LỊCH SỬ', 'key' => 'TIN TỨC'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">ID Tin tức</th>
                                    <th scope="col">Lý do gỡ</th>
                                    <th scope="col">Thời gian</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($newshistories as $key => $item)
                                    <tr>
                                        <th scope="row">{{ $item->id }}</th>
                                        <td>{{ $item->idtintuc }}</td>
                                        <td>{{ $item->lydogo }}</td>
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
