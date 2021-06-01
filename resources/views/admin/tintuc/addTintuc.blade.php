@extends('admin.layouts.admin')

@section('title')
    <title>Tin tức | Thêm mới</title>
@endsection
@section('css')
    <!-- include summernote css -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <!-- include select2 css -->
    <link rel="stylesheet" href="{{asset('vendor/css/select2.css')}}">
@endsection
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'THÊM', 'key' => 'TIN TỨC'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form action="{{ route('tintuc.doaddTintuc') }}" method="post" enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Chuyên mục *</label>
                                <select class="form-control category-selected" name="idchuyenmuc">
                                    @foreach($data as $row)
                                        <option value="{{$row->id}}">{{$row->tenchuyenmuc}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <input type="hidden" name="idcongty"    value="{{auth()->user()->idcongty}}">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="hidden" name="idtaikhoan"  value="{{auth()->id()}}">
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Hình ảnh tiêu đề *</label>
                                <input type="file" class="form-control-file" name="hinhanhtintuc" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Video tin tức *</label>
                                <input type="file" class="form-control-file" name="dulieuvideo[]" multiple>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Tiêu đề tin tức *</label>
                            <input type="text" class="form-control" name="tieudetintuc" placeholder="" required>
                        </div>
                        <div class="form-group">
                            <label>Tóm tắt tin tức *</label>
                            <input type="text" class="form-control" name="tomtattintuc" placeholder="" required>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1" name="tinnoibat" value="1">
                            <label class="form-check-label" for="exampleCheck1">Tin nổi bật</label>
                        </div>
                        <div class="form-group">
                            <label>Nội dung chính*</label>
                            <textarea class="form-control summernote" name="noidungtintuc" ></textarea>
                        </div>
                        <button style="margin-left: 45%" type="submit" class="btn btn-primary mb-5">Thêm tin tức</button>
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
                $('.summernote').summernote({
                    height: 400,                // set editor height
                    minHeight: 400,             // set minimum height of editor
                    maxHeight: 400,             // set maximum height of editor
                    focus: false,                  // set focus to editable area after initializing summernote
                    codemirror: { // codemirror options
                        theme: 'monokai'
                    },
                    placeholder: "Nhập nội dung chính"
                });
            });
            $(function(){
                $(".category-selected").select2({
                    tags: false,
                    placeholder : 'Chọn vai trò',
                    theme: "classic",
                    width: "100%"
                });
            });
        });
    </script>
@endsection
