@extends('admin.layouts.admin')

@section('title')
<title>Công việc {{ $stageInfo->tencongviec }} | Chỉnh sửa</title>
@endsection

@section('css')
    <!-- include datepicker3 css -->
    <link rel="stylesheet" href="{{ asset('vendor/css/datepicker3.css') }}"/>
    <!-- include summernote css -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <style>
        .alert-custom{
            margin-top: 5px;
            padding: 3px 5px;
        }
    </style>
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
                    <form action="{{ route('stage-info.update', ['stageInfo_id' => $stageInfo->id, 'stage_id' => $stage_id, 'product_id' => $product_id]) }}" method="post">
                        @csrf
                        <div class="col-md-12 row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="">Tên công việc *</label>
                                    <input type="text" class="form-control @error('tencongviec') is-invalid @enderror"
                                        name="tencongviec" placeholder="Tên công việc"
                                        value="{{ $stageInfo->tencongviec }}">
                                </div>
                                @error('tencongviec')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Thời gian bắt đầu *</label>
                                    <input type="text" class="form-control @error('thoigianbatdau') is-invalid @enderror"
                                        name="thoigianbatdau" placeholder="{{ now()->format('Y-m-d') }}"
                                        value="{{ $stageInfo->thoigianbatdau }}">
                                </div>
                                @error('thoigianbatdau')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Thời gian dự kiến (ngày)*</label>
                                    <input type="text" class="form-control @error('thoigiandukien') is-invalid @enderror"
                                        name="thoigiandukien" placeholder="{{ now()->format('d') }}"
                                        value="{{ $stageInfo->thoigiandukien }}"/>
                                </div>
                                @error('thoigiandukien')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Thời gian hoàn thành</label>
                                    <input type="text" class="form-control validated-thoigianhoanthanh @error('thoigianhoanthanh') is-invalid @enderror"
                                        name="thoigianhoanthanh" placeholder="{{ now()->format('Y-m-d') }}"
                                        value="{{ $stageInfo->thoigianhoanthanh }}"/>
                                </div>
                                @error('thoigianhoanthanh')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
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
                                    <textarea name="motacongviec" class="form-control summernote @error('motacongviec') is-invalid @enderror">{{ $stageInfo->motacongviec }}</textarea>
                                </div>
                                @error('motacongviec')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
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
    <!-- include summernote js -->
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    {{-- <script type="text/javascript" src="{{ asset("vendor/js/summernote.js") }}"></script> --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.17.1/moment-with-locales.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.summernote').summernote({
                height: 200,                 // set editor height
                minHeight: null,             // set minimum height of editor
                maxHeight: null,             // set maximum height of editor
                focus: false,                  // set focus to editable area after initializing summernote
                codemirror: { // codemirror options
                    theme: 'monokai'
                },
                placeholder: "Nhập mô tả cho công việc",
                toolbar: [
                    ['style', ['style']],
                    ['font', ['bold', 'underline', 'clear']],
                    ['color', ['color']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['table', ['table']],
                    ['insert', ['link', 'picture', 'video']],
                    ['view', ['help']]
                ]
            });
        });
    </script>
    <script>
        $(document).ready(function(){
            var date_input=$('input[name="thoigianbatdau"]');
            var date_input2=$('input[name="thoigianhoanthanh"]');
            var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
            var options={
                format: 'yyyy-mm-dd',
                container: container,
                todayHighlight: true,
                autoclose: true,
            };
            date_input.datepicker(options);
            date_input2.datepicker(options);
        });
    </script>
    <script>
        $(document).ready(function(){
            $(document).on('change', '.validated-thoigianhoanthanh', function() {
                var ngayhoanthanh = $(this).val();
                var ngaybatdau = $('input[name="thoigianbatdau"]').val();
                var thoigiandukien = $('input[name="thoigiandukien"]').val();

                if (ngaybatdau != "" && ngaybatdau <= ngayhoanthanh) {
                    d = moment(ngayhoanthanh).diff(moment(ngaybatdau), 'days');
                    console.log(d);
                    console.log(thoigiandukien);
                    if (Number(d) > Number(thoigiandukien))
                    {
                        var kq = Number(d) - Number(thoigiandukien);
                        $('input[name="trehan"]').val(kq);
                        $('.trangthai').text('Trễ hạn (ngày)');
                    }
                    else if (Number(d) <= Number(thoigiandukien))
                    {
                        var kq = Number(thoigiandukien) - Number(d);
                        $('input[name="trehan"]').val(kq);
                        $('.trangthai').text('Sớm hạn (ngày)');
                    }
                }
                else
                {
                    $('input[name="trehan"]').val(0);
                }
            });
        });
    </script>
@endsection
