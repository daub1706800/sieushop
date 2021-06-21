@extends('admin.layouts.admin')

@section('title')
<title>Giai đoạn sản phẩm | Thêm mới</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{ asset('vendor/css/datepicker3.css') }}"/>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('AdminLTE/company/stageinfo/add/stageinfo.css') }}">
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'THÊM', 'key' => 'CÔNG VIỆC CHO : '.$stage->tengiaidoan])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 row">
                    <div class="col-md-6">
                        <h4 id="stage-id" data-id="{{ $stage->id }}">{{ $stage->motagiaidoan }}</h4>
                    </div>
                    <div class="col-md-6">
                        <a href="{{ route('stage-info.render-add')}}" class="btn btn-primary float-right add-work"><i class="fas fa-plus"></i></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <form id="form-stageInfo" action="{{ route('stage-info.store', ['stage_id' => $stage->id, 'product_id' => $product_id]) }}"
                            method="post">
                        @csrf
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist" data-count="1">
                                <a class="nav-item nav-link active nav-count first-tab" id="nav-1-tab" data-toggle="tab" href="#nav-1"
                                    role="tab" aria-controls="nav-1" aria-selected="true" data-index="1">Công việc 1</a>
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active tab-pane-count" id="nav-1" role="tabpanel" aria-labelledby="nav-1-tab">
                                <div class="row">
                                    <div class="col-md-12">
                                        <button class="delete-work" data-index="1" style="visibility: hidden;"></button>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="">Tên công việc *</label>
                                            <input type="text" class="form-control validated validated-tencongviec enter-keydown"
                                                    name="tencongviec[]" placeholder="Tên công việc" value="{{ old('tencongviec') }}" autofocus>
                                        </div>
                                        <div class="alert alert-danger alert-custom validate-tencongviec"></div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="">Thời gian bắt đầu *</label>
                                                    <input type="text" class="form-control validated validated-thoigianbatdau enter-keydown"
                                                            name="thoigianbatdau[]" placeholder="{{ now()->format('Y-m-d') }}" value="{{ old('thoigianbatdau') }}">
                                                </div>
                                                <div class="alert alert-danger alert-custom validate-thoigianbatdau"></div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="">Thời gian dự kiến (ngày) *</label>
                                                    <input class="form-control validated validated-thoigiandukien enter-keydown" name="thoigiandukien[]"
                                                            placeholder="{{ now()->format('d') }}" type="text" value="{{ old('thoigiandukien') }}">
                                                </div>
                                                <div class="alert alert-danger alert-custom validate-thoigiandukien"></div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="">Thời gian hoàn thành</label>
                                                    <input class="form-control validated validated-thoigianhoanthanh enter-keydown" name="thoigianhoanthanh[]"
                                                            placeholder="{{ now()->format('Y-m-d') }}" type="text" value="{{  old('thoigianhoanthanh') }}">
                                                </div>
                                                <div class="alert alert-danger alert-custom validate-thoigianhoanthanh"></div>
                                            </div>
                                            <div class="col-md-6 som-tre-han">
                                                <div class="form-group">
                                                    <label class="trangthai">Sớm/Trễ hạn (ngày)</label>
                                                    <input type="text" class="form-control validated validated-trehan enter-keydown"
                                                            name="trehan[]" value="0" readonly>
                                                </div>
                                                <div class="alert alert-danger alert-custom validate-trehan"></div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="">Mô tả công việc *</label>
                                                    <textarea name="motacongviec[]" class="form-control summernote validated validated-motacongviec">{{ old('motacongviec') }}</textarea>
                                                </div>
                                                <div class="alert alert-danger alert-custom validate-motacongviec"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 text-center">
                            <button type="submit" id="btn-submit-stageInfo" class="btn btn-primary mb-5">Lưu</button>
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
    <script src="{{ asset('AdminLTE/company/stageinfo/add/stageinfo.js') }}"></script>
@endsection
