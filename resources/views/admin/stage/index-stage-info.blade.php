@extends('admin.layouts.admin')

@section('title')
<title>{{ $stage->tengiaidoan }} | Danh sách công việc</title>
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'DANH SÁCH', 'key' => 'CÔNG VIỆC CHO : '.$stage->tengiaidoan])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 row mb-3">
                    @can('stage-list')
                        <div class="col-md-6">
                            <a href="{{ route('stage.index', ['product_id' => $product_id]) }}" class="btn btn-primary">Danh sách giai đoạn</a>
                        </div>
                    @endcan
                    @can('stageinfo-add')
                        <div class="col-md-6">
                            <a href="{{ route('stage-info.add',  ['stage_id' => $stage->id, 'product_id' => $product_id]) }}" class="btn btn-primary float-right">Thêm công việc</a>
                        </div>
                    @endcan
                </div>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Tên công việc</th>
                                    <th scope="col">Mô tả công việc</th>
                                    <th scope="col">Ngày bắt đầu</th>
                                    <th scope="col">Ngày hoàn thành</th>
                                    <th scope="col">Thời gian dự kiến</th>
                                    <th scope="col">Tình trạng</th>
                                    @can('stageinfo-delete')
                                        <th></th>
                                    @endcan
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($arr as $stageInfo)
                                    <tr>
                                        <th scope="row">{{ $stageInfo['id'] }}</th>
                                        <td>
                                            @can('stageinfo-view')
                                                <a href="{{ route('stage-info.edit', ['stageInfo_id' => $stageInfo['id'], 'stage_id' => $stage->id, 'product_id' => $product_id]) }}">
                                                    {{ $stageInfo['tencongviec'] }}</a>
                                            @elsecan('stageinfo-list')
                                                {{ $stageInfo['tencongviec'] }}
                                            @endcan
                                        </td>
                                        <td>{!! $stageInfo['motacongviec'] !!}</td>
                                        <td>{{ $stageInfo['thoigianbatdau'] }}</td>
                                        <td>{{ $stageInfo['thoigianhoanthanh'] }}</td>
                                        <td>{{ $stageInfo['thoigiandukien'] }} ngày</td>
                                        <td>{{ $stageInfo['check'] . ' ' . $stageInfo['trehan'] }} ngày</td>
                                        @can('stageinfo-delete')
                                            <td>
                                                <a class="btn btn-danger delete-stageinfo" href="{{ route('stage-info.delete', ['stageInfo_id' => $stageInfo['id'], 'stage_id' => $stage->id, 'product_id' => $product_id]) }}">
                                                    <i class="fas fa-trash-alt"></i>
                                                </a>
                                            </td>
                                        @endcan
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
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="{{ asset('AdminLTE/company/stageinfo/index/stageinfo.js') }}"></script>
@endsection