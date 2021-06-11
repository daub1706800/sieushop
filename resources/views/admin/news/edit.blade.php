@extends('admin.layouts.admin')

@section('title')
    <title>Tin tức | Chỉnh sửa</title>
@endsection

@section('css')
    <!-- include summernote css -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <!-- include select2 css -->
    <link rel="stylesheet" href="{{asset('vendor/css/select2.css')}}">
    <style>
        .alert-custom{
            margin-top: -10px;
            padding: 3px 5px;
        }
        .btn-lydo
        {
            border-top-left-radius: 0px; 
            border-bottom-left-radius: 0px; 
        }
        .lydo{
            border-top-right-radius: 0px; 
            border-bottom-right-radius: 0px;
            border-color: #007bff;
        }
    </style>
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'CHỈNH SỬA', 'key' => 'TIN TỨC'])
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
                                <label>Chuyên mục *</label>
                                <select class="form-control category-selected @error('idchuyenmuc') is-invalid @enderror" name="idchuyenmuc">
                                    <option value=""></option>
                                    @foreach($categories as $category)
                                        <option {{ $news->idchuyenmuc == $category->id ? "selected" : "" }} value="{{ $category->id }}">{{ $category->tenchuyenmuc}}</option>
                                    @endforeach
                                </select>
                                @error('idchuyenmuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group col-md-6">
                                <label>Công ty *</label>
                                <select class="form-control company-selected @error('idcongty') is-invalid @enderror" name="idcongty">
                                    <option value=""></option>
                                    @foreach($companies as $company)
                                        <option {{ $news->idchuyenmuc == $company->id ? "selected" : "" }} value="{{$company->id}}">{{$company->tencongty}}</option>
                                    @endforeach
                                </select>
                                @error('idcongty')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group col-md-6">
                                <label>Ảnh tóm tắt *</label>
                                <input type="file" class="form-control-file @error('hinhanhtintuc') is-invalid @enderror" name="hinhanhtintuc">
                                @error('hinhanhtintuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                                <img style="width:150px; height:150px; margin-top: 10px; object-fit: cover" src="{{ $news->hinhanhtintuc }}" alt="">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Video</label>
                                <input type="file" class="form-control-file @error('videotintuc') is-invalid @enderror"
                                        name="videotintuc">
                                @error('videotintuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                                @if ($news->videotintuc)
                                <video style="witdh:140px; height:140px; margin-top: 10px" controls>
                                    <source src="{{ $news->videotintuc }}" type="video/mp4">
                                    Trình duyệt của bạn không hỗ trợ thẻ video trong HTML5.
                                </video>
                                <button type="button" style="margin-bottom: 30px;" data-id="{{ $news->id }}" class="btn btn-danger xoa-video">X</button>  
                                @endif
                            </div>
                            <div class="form-group col-md-12">
                                <label>Tiêu đề *</label>
                                <input type="text" class="form-control @error('tieudetintuc') is-invalid @enderror"
                                        name="tieudetintuc" value="{{ $news->tieudetintuc ?? old('tieudetintuc') }}" placeholder="Tiêu đề tin tức">
                                @error('tieudetintuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group col-md-12">
                                <label>Tóm tắt *</label>
                                <textarea class="form-control summernote-tomtat @error('tomtattintuc') is-invalid @enderror" name="tomtattintuc">{{ $news->tomtattintuc ?? old('tomtattintuc')}}</textarea>
                                @error('tomtattintuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group col-md-12">
                                <label>Nội dung *</label>
                                <textarea class="form-control summernote-noidung @error('noidungtintuc') is-invalid @enderror" name="noidungtintuc">{{ $news->noidungtintuc ?? old('tomtattintuc') }}</textarea>
                                @error('noidungtintuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="loaitintuc" value="1" {{ $news->loaitintuc == 1 ? "checked" : "" }}>
                            <label>Tin nổi bật</label>
                        </div>
                        @if ($news->xuatbantintuc != 1)
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary mb-5">Lưu chỉnh sửa</button>
                        </div>  
                        @endif
                    </form>

                    <div class="col-md-6">
                        @if ($news->xuatbantintuc == 1 || $news->duyettintuc == 1)
                        <form action="{{ route('news.remove', ['id' => $news->id]) }}">
                            <div class="d-flex justify-content-start">
                                <div class="form-group">
                                    <label>Thu hồi tin tức *</label>
                                    <input type="text" name="lydogo" class="form-control lydo @error('lydogo') is-invalid @enderror"
                                            placeholder="Lý do: Thông tin sai">
                                    
                                </div>
                                <div class="d-flex align-items-center" style="margin-top: 16px">
                                    <button type="submit" class="btn btn-primary btn-lydo">Thu hồi</button>
                                </div>
                            </div>
                            @error('lydogo')
                            <div class="d-flex justify-content-start">
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            </div>
                            @enderror
                        </form>
                        @endif

                        @if ($news->duyettintuc == 0 && $news->xuatbantintuc == 0 && $news->lydogo == 0 || $news->lydogo == 1)
                        <form action="{{ route('news.update-duyet', ['id' => $news->id]) }}">
                            <div class="d-flex justify-content-start">
                                <div class="form-group">
                                    <label>Duyệt tin *</label>
                                    <input type="text" name="noidungdanhgia" class="form-control lydo @error('noidungdanhgia') is-invalid @enderror"
                                            placeholder="Nội dung tin hay">
                                </div>
                                <div class="d-flex align-items-center" style="margin-top: 16px">
                                    <button type="submit" class="btn btn-primary btn-lydo">Duyệt</button>
                                </div>
                            </div>
                            @error('noidungdanhgia')
                            <div class="d-flex justify-content-start">
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            </div>
                            @enderror
                        </form>
                        @endif

                        @if ($news->xuatbantintuc == 0 && $news->duyettintuc == 1)
                        <form action="{{ route('news.update-xuatban', ['id' => $news->id]) }}">
                            <div class="d-flex justify-content-start">
                                <div class="form-group">
                                    <label>Xuất bản tin *</label>
                                    <input type="text" name="noidungdanhgia" class="form-control lydo @error('noidungdanhgia') is-invalid @enderror"
                                            placeholder="Nội dung tin hay">
                                </div>
                                <div class="d-flex align-items-center" style="margin-top: 16px">
                                    <button type="submit" class="btn btn-primary btn-lydo">Xuất bản</button>
                                </div>
                            </div>
                            @error('noidungdanhgia')
                            <div class="d-flex justify-content-start">
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            </div>
                            @enderror
                        </form>
                        @endif
                    </div>
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

        $(document).on('click', '.xoa-video', function() {
            var id = $(this).data('id');
            $.ajax({
                url : "{{ route('news.delete-video') }}",
                type: "get",
                data: {
                    "id":id
                },
                success:function(data) {
                    location.reload();
                }
            });
        });
    });
    </script>
@endsection
