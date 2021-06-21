@extends('admin.layouts.admin')

@section('title')
    <title>Tin tức | Nội dung</title>
@endsection

@section('css')
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('vendor/css/select2.css')}}">
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
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
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
                                <input type="file" class="form-control-file" name="hinhanhtintuc">
                                <img src='{{$data->hinhanhtintuc}}' style="width: 320px; height:240px; margin-top:10px">
                            </div>
                            <div class="form-group col-md-4">
                                <label>Video tin tức</label>
                                <input type="file" class="form-control-file" name="videotintuc">
                                <video width="320px" height="240px" controls>
                                    <source src="{{$data->videotintuc}}" type="video/mp4">
                                </video><br>
                                <label>Check nếu muốn bỏ video</label>
                                <input type="checkbox" name="xoavideo" id="xoavideo" value="xoavideo">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Tiêu đề tin tức *</label>
                            <input type="text" class="form-control" name="tieudetintuc" value="{{$data->tieudetintuc}}">
                        </div>
                        <div class="form-group">
                            <label>Tóm tắt tin tức *</label>
                            <textarea class="form-control summernote-tomtat" name="tomtattintuc">{!!$data->tomtattintuc!!}</textarea>
                        </div>
                        <div class="form-group">
                            <label>Nội dung chính*</label>
                            <textarea class="form-control summernote-noidung" name="noidungtintuc">{!!$data->noidungtintuc!!}</textarea>
                        </div>
                        @can('news-update')
                            @if($data->xuatbantintuc === 0)
                                <button style="margin-left: 45%" type="submit" class="btn btn-primary mb-5">Lưu chỉnh sửa</button>
                            @endif
                        @endcan
                    </form>
                    
                    <form action="{{route('tintuc.editloaiTintuc')}}" method="post">
                        {{csrf_field()}}
                        <div class="form-group col-md-6">
                            <input type="hidden" name="id"value="{{$data->id}}">
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
                            <button type="submit" class="btn btn-primary mb-5">Cập nhật tin nổi bật</button>
                    </form>
                </div>
                
                @can('news-recall')
                    @if($data->xuatbantintuc === 1 || $data->duyettintuc === 1)
                        <form action="{{route('tintuc.removeTintuc')}}" style="margin-left: 10%">
                            <div class="form-group">
                                <input type="hidden" name="id" value="{{$data->id}}">
                                <input type="hidden" class="form-control" value="{{$data2}}" name="idtaikhoango">
                                <label for="lydogo">Lý do gỡ tin: </label>
                                <input type="lydogo" class="form-control" placeholder="VD: Sai sót thông tin" name="lydogo" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Gỡ tin tức</button>
                        </form>
                    @endif
                @endcan

                @can('news-browse')
                    @if($data->duyettintuc === 0 && $data->xuatbantintuc === 0)
                        <form action="{{route('tintuc.acceptTintuc')}}" style="margin-left: 10%">
                            <div class="form-group">
                                <input type="hidden" class="form-control" value="{{$data->id}}" name="id">
                                <input type="hidden" class="form-control" value="{{$data2}}" name="idtaikhoandanhgia">
                                <label for="noidungdanhgia">Ghi chú duyệt tin:</label>
                                <input type="noidungdanhgia" class="form-control" placeholder="VD: Tin tốt" name="noidungdanhgia" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Duyệt tin tức</button>
                        </form>
                    @endif
                @endcan

                @can('news-publish')
                    @if($data->duyettintuc === 1 && $data->xuatbantintuc === 0)
                        <form action="{{route('tintuc.postTintuc')}}" style="margin-left: 10%">
                            <div class="form-group">
                                <input type="hidden" class="form-control" value="{{$data->id}}" name="id">
                                <input type="hidden" class="form-control" value="{{$data2}}" name="idtaikhoandanhgia">
                                <label for="noidungdanhgia">Ghi chú xuất bản: </label>
                                <input type="noidungdanhgia" class="form-control" placeholder="VD: Tin tốt" name="noidungdanhgia" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Xuất bản tin tức</button>
                        </form>
                    @endif
                @endcan
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
@endsection

@section('js')
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script src="{{ asset('vendor/js/select2.js') }}"></script>
    <script src="{{ asset('AdminLTE/company/news/edit/news.js') }}"></script>
@endsection
