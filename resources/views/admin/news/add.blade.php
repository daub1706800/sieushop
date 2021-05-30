@extends('layouts.admin')

@section('title')
    <title>Tin tức | Thêm mới</title>
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('partials.content-header', ['name' => 'THÊM', 'key' => 'TIN TỨC'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form action="{{route('news.store')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Người viết bài *</label>
                                <input readonly type="text" class="form-control" value="{{session()->get('info')['name'].' '.session()->get('info')['ho']}}">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Chuyên mục *</label>
                                <select class="form-control" name="idchuyenmuc">
                                    <option value=""></option>
                                    @foreach($categories as $category)
                                        <option value="{{$category->id}}">{{$category->tenchuyenmuc}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Ảnh tóm tắt *</label>
                                <input type="file" class="form-control-file" name="hinhanhtintuc">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Video *</label>
                                <input type="file" class="form-control-file" name="videotintuc[]" multiple>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Tiêu đề *</label>
                                <textarea class="form-control" rows="8" name="tieudetintuc" placeholder="Tiêu đề tin tức"></textarea>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Tóm tắt *</label>
                                <textarea class="form-control" rows="8" name="tomtattintuc" placeholder="Tóm tắt tin tức"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Nội dung *</label>
                            <textarea class="form-control my-editor" rows="20" name="noidungtintuc"></textarea>
                        </div>
                        <div class="form-group col-md-4">
                            <label>Loại tin *</label>
                            <select name="loaitintuc" class="form-control">
                                <option value="0">Bình thường</option>
                                <option value="1">Nổi bật</option>
                            </select>
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
    <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js"></script>
    <script>
        var editor_config = {
            path_absolute : "/",
            selector: 'textarea.my-editor',
            relative_urls: false,
            plugins: [
                "advlist autolink lists link image charmap print preview hr anchor pagebreak",
                "searchreplace wordcount visualblocks visualchars code fullscreen",
                "insertdatetime media nonbreaking save table directionality",
                "emoticons template paste textpattern",
            ],
            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media",
            file_picker_callback : function(callback, value, meta) {
                var x = window.innerWidth || document.documentElement.clientWidth || document.getElementsByTagName('body')[0].clientWidth;
                var y = window.innerHeight|| document.documentElement.clientHeight|| document.getElementsByTagName('body')[0].clientHeight;

                var cmsURL = editor_config.path_absolute + 'filemanager?editor=' + meta.fieldname;
                if (meta.filetype == 'image') {
                    cmsURL = cmsURL + "&type=Images";
                } else {
                    cmsURL = cmsURL + "&type=Files";
                }

                tinyMCE.activeEditor.windowManager.openUrl({
                    url : cmsURL,
                    title : 'Filemanager',
                    width : x * 0.8,
                    height : y * 0.8,
                    resizable : "yes",
                    close_previous : "no",
                    onMessage: (api, message) => {
                        callback(message.content);
                    }
                });
            }
        };
        tinymce.init(editor_config);
    </script>
@endsection
