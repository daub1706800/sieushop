@extends('admin.layouts.admin')

@section('title')
    <title>Tin tức Video| Thêm mới</title>
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
    @include('admin.partials.content-header', ['name' => 'THÊM', 'key' => 'TIN TỨC VIDEO'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                    <form action="{{route('video.store')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Chuyên mục *</label>
                                <select class="form-control category-selected @error('idchuyenmuc') is-invalid @enderror" name="idchuyenmuc">
                                    <option value=""></option>
                                    @foreach($categories as $category)
                                        <option value="{{$category->id}}">{{$category->tenchuyenmuc}}</option>
                                    @endforeach
                                </select>
                                @error('idchuyenmuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Ảnh đại diện *</label>
                                <input type="file" class="form-control-file @error('hinhdaidienvideo') is-invalid @enderror"
                                        name="hinhdaidienvideo">
                                @error('hinhdaidienvideo')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group col-md-6">
                                <label>Video *</label>
                                <input type="file" class="form-control-file @error('dulieuvideotintuc') is-invalid @enderror"
                                        name="dulieuvideotintuc">
                                @error('dulieuvideotintuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group col-md-12">
                                <label>Tiêu đề *</label>
                                <input type="text" class="form-control @error('tieudevideo') is-invalid @enderror"
                                        name="tieudevideo" value="{{ old('tieudevideo') }}" placeholder="Tiêu đề tin tức video">
                                @error('tieudevideo')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group col-md-12">
                                <label>Nội dung tóm tắt *</label>
                                <textarea class="form-control summernote-tomtat @error('tomtatvideo') is-invalid @enderror"
                                        name="tomtatvideo">{{ old('tomtatvideo') }}</textarea>
                                @error('tomtatvideo')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group col-md-12">
                                <label>Nguồn *</label>
                                <input class="form-control @error('nguonvideotintuc') is-invalid @enderror"
                                        name="nguonvideotintuc" value="{{ old('nguonvideotintuc') }}" placeholder="Nguồn tin tức video">
                                @error('nguonvideotintuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="loaivideotintuc" value="1">
                            <label>Tin nổi bật</label>
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
                $(".category-selected").select2({
                    tags: false,
                    placeholder : 'Chọn chuyên mục',
                    theme: "classic",
                    width: "100%"
                });
            });
        });
    </script>
@endsection
