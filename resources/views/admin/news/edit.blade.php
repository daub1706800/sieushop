@extends('layouts.admin')

@section('title')
    <title>Tin tức | Chỉnh sửa</title>
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('partials.content-header', ['name' => 'CHỈNH SỬA', 'key' => 'TIN TỨC'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
        <div class="row">
                <div class="col-md-12">
                    <form action="{{route('news.update', ['id' => $news->id]) }}" method="post" enctype="multipart/form-data">
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
                                        <option {{ $news->idchuyenmuc == $category->id ? "selected" : "" }} value="{{ $category->id }}">{{ $category->tenchuyenmuc}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Ảnh tóm tắt *</label>
                                <input type="file" class="form-control-file" name="hinhanhtintuc">
                                <img style="width:150px; height:150px; margin-top: 10px; object-fit: cover}" src="{{ $news->hinhanhtintuc }}" alt="">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Video *</label>
                                <input type="file" class="form-control-file" name="videotintuc[]" multiple>
                                @foreach($videos as $video)
                                <video style="witdh:140px; height:140px; margin-top: 10px" controls>
                                    <source src="{{ $video->dulieuvideo }}" type="video/mp4">
                                    Trình duyệt của bạn không hỗ trợ thẻ video trong HTML5.
                                </video>
                                @endforeach
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Tiêu đề *</label>
                                <textarea class="form-control" rows="8" name="tieudetintuc">{{ $news->tieudetintuc}}</textarea>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Tóm tắt *</label>
                                <textarea class="form-control" rows="8" name="tomtattintuc">{{ $news->tomtattintuc}}</textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Nội dung *</label>
                            <textarea class="form-control my-editor" rows="20" name="noidungtintuc">{{ $news->noidungtintuc}}</textarea>
                        </div>
                        <div class="form-group col-md-4">
                            <label>Loại tin *</label>
                            <select name="loaitintuc" class="form-control">
                                <option {{ $news->loaitintuc == 0 ? "selected" : "" }} value="0">Bình thường</option>
                                <option {{ $news->loaitintuc == 1 ? "selected" : "" }} value="1">Nổi bật</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <a style="margin-left: 40%" href="{{ route('news.index') }}" class="btn btn-secondary">Trở về</a>
                            <button type="submit" class="btn btn-warning">Cập nhật</button>
                            @if($news->duyettintuc == 0)
                            <a href="" data-id="{{$news->id}}" class="btn btn-primary duyet">Duyệt tin tức</a>
                            @endif

                            @if($news->duyettintuc == 1 && $news->xuatbantintuc == 0)
                            <a href="" data-id="{{$news->id}}" class="btn btn-success xuatban">Xuất bản</a>
                            @endif
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
    <script>
        $(document).ready(function(){
            // Duyệt tin tức
            $('.duyet').on('click', function(e){
                e.preventDefault();
                let idNews = $(this).data('id');
                $.ajax({
                    url  : "{{ route('news.update-duyet') }}",
                    type : "get",
                    data : {id:idNews},
                    success:function(data)
                    {
                        window.location = "{{ route('news.index') }}";
                    }
                });
            });
            // Duyệt xuất bản
            $('.xuatban').on('click', function(e){
                e.preventDefault();
                let idNews = $(this).data('id');
                $.ajax({
                    url  : "{{ route('news.update-xuatban') }}",
                    type : "get",
                    data : {id:idNews},
                    success:function(data)
                    {
                        window.location = "{{ route('news.index') }}";
                    }
                });
            });
        })
    </script>
@endsection