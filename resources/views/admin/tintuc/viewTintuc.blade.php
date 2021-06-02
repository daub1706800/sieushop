@extends('admin.layouts.admin')

@section('title')
    <title>Tin tức | Nội dung</title>
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'NỘI DUNG', 'key' => 'TIN TỨC'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form action="{{route('tintuc.editTintuc')}}" method="post" enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="row">
                            <div class="form-group col-md-6">
                                <input type="hidden" name="id"value="{{$data->id}}">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="hidden" name="idchuyenmuc" value="{{$data->idchuyenmuc}}">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="hidden" name="idcongty" value="{{$data->idcongty}}">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="hidden" name="idtaikhoan" value="{{$data->idtaikhoan}}">
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Hình ảnh tiêu đề *</label>
                                <img src='{{$data->hinhanhtintuc}}' style="width:150px; height:150px; margin-top:10px">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Tiêu đề tin tức *</label>
                            <input type="text" class="form-control" name="tieudetintuc" value="{{$data->tieudetintuc}}" disabled>
                        </div>
                        <div class="form-group">
                            <label>Tóm tắt tin tức *</label>
                            <input type="text" class="form-control" name="tomtattintuc" value="{{$data->tomtattintuc}}" disabled>
                        </div>
                        <div class="form-group">
                            <label>Nội dung chính*</label>
                            <p>{!!$data->noidungtintuc!!}</p>
                        </div>
                        @if($data->loaitintuc === 1)
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1" name="tinnoibat" value="1" checked disabled>
                            <label class="form-check-label" for="exampleCheck1">Tin nổi bật</label>
                        </div>
                        @else
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1" name="tinnoibat" value="1" disabled>
                            <label class="form-check-label" for="exampleCheck1">Tin nổi bật</label>
                        </div>
                        @endif
                    </form>
                </div>
                <div class="col-sm-10">
                    <table class="table">
                        <tr>
                            <th>ID</th>
                            <th>Video</th>
                        </tr>
                        @foreach ($data2 as $key => $row2)
                        <tr>
                            <td>ID Video: {{$row2->id}}</td>
                            <td>
                                <video width="320" height="240" controls>
                                    <source src="{{$row2->dulieuvideo}}" type="video/mp4">
                                </video>
                            </td>
                        </tr>
                        @endforeach
                    </table>
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
                "emoticons template paste textpattern"
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
