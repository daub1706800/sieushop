@extends('admin.layouts.admin')

@section('title')
<title>Công việc {{ $stageInfo->tencongviec }} | Chỉnh sửa</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{ asset('vendor/css/datepicker3.css') }}"/>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('AdminLTE/admin/stage-info/edit/stage-info.css') }}">
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'SỬA', 'key' => 'CÔNG VIỆC : '.$stageInfo->tencongviec])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form action="{{ route('admin.stage-info.update', ['stageInfo_id' => $stageInfo->id, 'stage_id' => $stage_id, 'product_id' => $product_id]) }}" method="post">
                        @csrf
                        <div class="col-md-12 row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="">Tên công việc *</label>
                                    <input type="text" class="form-control @error('tencongviec') is-invalid @enderror"
                                        name="tencongviec" placeholder="Tên công việc"
                                        value="{{ old('tencongviec', $stageInfo->tencongviec) }}">
                                    @error('tencongviec')
                                    <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Thời gian bắt đầu *</label>
                                    <input type="text" class="form-control @error('thoigianbatdau') is-invalid @enderror"
                                        name="thoigianbatdau" placeholder="{{ now()->format('Y-m-d') }}"
                                        value="{{ old('thoigianbatdau', $stageInfo->thoigianbatdau) }}">
                                    @error('thoigianbatdau')
                                    <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Thời gian dự kiến (ngày)*</label>
                                    <input type="text" class="form-control @error('thoigiandukien') is-invalid @enderror"
                                        name="thoigiandukien" placeholder="{{ now()->format('d') }}"
                                        value="{{ old('thoigiandukien', $stageInfo->thoigiandukien) }}"/>
                                    @error('thoigiandukien')
                                    <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Thời gian hoàn thành</label>
                                    <input type="text" class="form-control validated-thoigianhoanthanh @error('thoigianhoanthanh') is-invalid @enderror"
                                        name="thoigianhoanthanh" placeholder="{{ now()->format('Y-m-d') }}"
                                        value="{{ old('thoigianhoanthanh', $stageInfo->thoigianhoanthanh) }}"/>
                                    @error('thoigianhoanthanh')
                                    <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="trangthai">Sớm/Trễ hạn (ngày)*</label>
                                    <input class="form-control" name="trehan"
                                        placeholder="0" type="text" value="{{ $stageInfo->trehan }}" readonly/>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="">Mô tả công việc *</label>
                                    <textarea name="motacongviec" class="form-control summernote @error('motacongviec') is-invalid @enderror">{{ old('motacongviec', $stageInfo->motacongviec) }}</textarea>
                                    @error('motacongviec')
                                    <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 text-center">
                            <button type="submit" class="btn btn-primary btn-submit-stage mb-5">Lưu chỉnh sửa</button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
@endsection

@section('js')
    <script type="text/javascript" src="{{ asset("vendor/js/datepicker.js") }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.17.1/moment-with-locales.min.js"></script>
    <script src="{{ asset('AdminLTE/admin/stage-info/edit/stage-info.js') }}"></script>
@endsection
