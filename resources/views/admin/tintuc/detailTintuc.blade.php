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
                                <input type="file" class="form-control-file" name="hinhanhtieude">
                                <img src='{{$data->hinhanhtintuc}}' style="width:150px; height:150px; margin-top:10px">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Tiêu đề tin tức *</label>
                            <input type="text" class="form-control" name="tieudetintuc" value="{{$data->tieudetintuc}}" required>
                        </div>
                        <div class="form-group">
                            <label>Tóm tắt tin tức *</label>
                            <input type="text" class="form-control" name="tomtattintuc" value="{{$data->tomtattintuc}}" required>
                        </div>
                        <div class="form-group">
                            <label>Nội dung chính*</label>
                            <textarea class="form-control my-editor" name="noidungtintuc" rows="20" >{!!$data->noidungtintuc!!}</textarea>
                        </div>
                        @if($data->loaitintuc === 1)
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1" name="tinnoibat" value="1" checked>
                            <label class="form-check-label" for="exampleCheck1">Tin nổi bật</label>
                        </div>
                        @else
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1" name="tinnoibat" value="1">
                            <label class="form-check-label" for="exampleCheck1">Tin nổi bật</label>
                        </div>
                        @endif
                        @if($data->xuatbantintuc === 0)
                            <button style="margin-left: 45%" type="submit" class="btn btn-primary mb-5">Chỉnh sửa tin tức</button>
                        @endif
                    </form>
                </div>
                <div class="col-sm-10">
                    <table class="table">
                        <tr>
                            <th>ID</th>
                            <th>Video</th>
                            @if($data->xuatbantintuc === 0)
                            <th scope="col">
                                    <a href="" class="btn btn-primary float-right m-2"
                                    data-toggle="modal" data-target="#exampleModal"
                                    data-whatever="@getbootstrap">Thêm video</a>
                            </th>
                            @endif
                        </tr>
                        @foreach ($data2 as $key => $row2)
                        <tr>
                            <td>ID Video: {{$row2->id}}</td>
                            <td>
                                <video width="320" height="240" controls>
                                    <source src="{{$row2->dulieuvideo}}" type="video/mp4">
                                </video>
                            </td>
                            @if($data->xuatbantintuc === 0)
                            <td><a onclick="return confirm('Bạn chắc chắn muốn xóa ?')" href="{{route('tintuc.deleteVideo',['id'=>$row2->id])}}">Xóa video</a></td>
                            @endif
                        </tr>
                        @endforeach
                    </table>
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-body">
                                    <h4>Thêm video</h4>
                                    <form action="{{ route('tintuc.addVideo') }}" method="post" enctype="multipart/form-data">
                                        {{csrf_field()}}
                                        <input type="hidden" name="idtintuc" value="{{$data->id}}">
                                        <div class="form-group">
                                            <label>Video</label>
                                            <input type="file" class="form-control" name="dulieuvideo[]" multiple>
                                        </div>
                                        <button type="button" class="btn btn-secondary close-modal" data-dismiss="modal">Trở về</button>
                                        <button type="submit" class="btn btn-primary float-right">Thêm</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @if($data->xuatbantintuc === 1)
                    <form action="{{route('tintuc.removeTintuc')}}" style="margin-left: 10%">
                        <div class="form-group">
                            <input type="hidden" name="id" value="{{$data->id}}">
                            <label for="lydogo">Lý do gỡ tin: </label>
                            <input type="lydogo" class="form-control" placeholder="VD: Sai sót thông tin" name="lydogo" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Gỡ tin tức</button>
                    </form>
                @endif
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
