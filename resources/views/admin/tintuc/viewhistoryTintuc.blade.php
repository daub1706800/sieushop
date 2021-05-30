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
    @include('admin.partials.content-header', ['name' => 'LÝ DO GỠ', 'key' => 'TIN TỨC'])
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
                                <th scope="col">ID Tin tức</th>
                                <th scope="col">Lý do gỡ tin</th>
                                <th scope="col">Thời gian gỡ tin</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- // ho tro dem so thu tu trong table -->
                            @foreach ($data as $key => $row)
                            <tr>
                                <th scope="row">{{$key+1}}</th>
                                <td>{{$row->idtintuc}}</td>
                                <td>{{$row->lydogo}}</td>
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
