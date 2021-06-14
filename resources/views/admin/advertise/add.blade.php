@extends('admin.layouts.admin')

@section('title')
    <title>Quảng cáo | Thêm mới</title>
@endsection

@section('css')
    <!-- include summernote css -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <!-- include select2 css -->
    <link rel="stylesheet" href="{{asset('vendor/css/select2.css')}}">
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
    @include('admin.partials.content-header', ['name' => 'THÊM', 'key' => 'QUẢNG CÁO'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form action="{{ route('advertise.store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label>Ảnh quảng cáo *</label>
                                <input type="file" class="col-md-6 form-control-file @error('dulieuhinhanhquangcao') is-invalid @enderror @error('dulieuhinhanhquangcao.*') is-invalid @enderror"
                                        name="dulieuhinhanhquangcao[]" multiple>
                                @error('dulieuhinhanhquangcao')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                                @error('dulieuhinhanhquangcao.*')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label>Tiêu đề quảng cáo *</label>
                                <input type="text" class="form-control @error('tieudequangcao') is-invalid @enderror"
                                        name="tieudequangcao" value="{{ old('tieudequangcao') }}" placeholder="Tiêu đề quảng cáo">
                                @error('tieudequangcao')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            
                            <div class="form-group col-md-6">
                                <input type="checkbox" id="loaiquangcao" name="loaiquangcao" value="1">
                                <label for="loaiquangcao">Quảng cáo sự kiện?</label>
                            </div>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary mb-5">Lưu</button>
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
    <!-- include summernote js -->
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <!-- include select2 js -->
    <script src="{{ asset('vendor/js/select2.js') }}"></script>
    <script>
        $(document).ready(function() {
            $(function(){
                $('.summernote-tomtat').summernote({
                    height: 200,                // set editor height
                    minHeight: 200,             // set minimum height of editor
                    maxHeight: 200,             // set maximum height of editor
                    focus: false,                  // set focus to editable area after initializing summernote
                    codemirror: { // codemirror options
                        theme: 'monokai'
                    },
                    placeholder: "Nhập nội dung tóm tắt",
                    toolbar: [
                        ['style', ['style']],
                        ['font', ['bold', 'underline', 'clear']],
                        ['color', ['color']],
                        ['para', ['ul', 'ol', 'paragraph']],
                        ['table', ['table']],
                        // ['insert', ['link', 'picture', 'video']],
                        ['view', ['help']]
                    ]
                });
            });

            $(function(){
                $('.summernote-noidung').summernote({
                    height: 400,                // set editor height
                    minHeight: 400,             // set minimum height of editor
                    maxHeight: 400,             // set maximum height of editor
                    focus: false,                  // set focus to editable area after initializing summernote
                    codemirror: { // codemirror options
                        theme: 'monokai'
                    },
                    placeholder: "Nhập nội dung chính",
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

            $(function(){
                $(".category-selected").select2({
                    tags: false,
                    placeholder : 'Chọn chuyên mục',
                    theme: "classic",
                    width: "100%"
                });
            });

            $(function(){
                $(".company-selected").select2({
                    tags: false,
                    placeholder : 'Chọn công ty',
                    theme: "classic",
                    width: "100%"
                });
            });
        });
    </script>
@endsection
