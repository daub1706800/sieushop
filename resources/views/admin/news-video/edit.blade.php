@extends('admin.layouts.admin')

@section('title')
    <title>Tin tức Video | Chỉnh sửa</title>
@endsection

@section('css')
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('vendor/css/select2.css')}}">
    <link rel="stylesheet" href="{{ asset('AdminLTE/admin/newsvideo/edit/newsvideo.css') }}">
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'CHỈNH SỬA', 'key' => 'TIN TỨC VIDEO'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form action="{{ route('video.update', ['id' => $newsvideo->id]) }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Chuyên mục *</label>
                                <select class="form-control category-selected @error('idchuyenmuc') is-invalid @enderror" name="idchuyenmuc">
                                    <option value=""></option>
                                    @foreach($categories as $category)
                                        <option {{ $newsvideo->idchuyenmuc == $category->id ? "selected" : "" }} value="{{ $category->id }}">{{ $category->tenchuyenmuc}}</option>
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
                                <img style="width:150px; height:150px; margin-top: 10px; object-fit: cover" src="{{ $newsvideo->hinhdaidienvideo }}" alt="">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Video *</label>
                                <input type="file" class="form-control-file @error('dulieuvideotintuc') is-invalid @enderror"
                                        name="dulieuvideotintuc">
                                @error('dulieuvideotintuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                                @if ($newsvideo->dulieuvideotintuc)
                                <video style="height:140px; margin-top: 10px" controls>
                                    <source src="{{ $newsvideo->dulieuvideotintuc }}" type="video/mp4">
                                    Trình duyệt của bạn không hỗ trợ thẻ video trong HTML5.
                                </video>
                                @endif
                            </div>
                            <div class="form-group col-md-12">
                                <label>Tiêu đề *</label>
                                <input type="text" class="form-control @error('tieudevideo') is-invalid @enderror"
                                        name="tieudevideo" value="{{ old('tieudevideo', $newsvideo->tieudevideo) }}" placeholder="Tiêu đề tin tức">
                                @error('tieudevideo')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group col-md-12">
                                <label>Tóm tắt *</label>
                                <textarea class="form-control summernote-tomtat @error('tomtatvideo') is-invalid @enderror" name="tomtatvideo">{{ old('tomtatvideo', $newsvideo->tomtatvideo)}}</textarea>
                                @error('tomtatvideo')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group col-md-12">
                                <label>Nguồn *</label>
                                <input class="form-control @error('nguonvideotintuc') is-invalid @enderror"
                                    name="nguonvideotintuc" value="{{ old('nguonvideotintuc', $newsvideo->nguonvideotintuc) }}">
                                @error('nguonvideotintuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" id="loaivideotintuc" name="loaivideotintuc" value="1" {{ $newsvideo->loaivideotintuc == 1 ? "checked" : "" }}>
                            <label for="loaivideotintuc">Tin nổi bật</label>
                        </div>
                        @if ($newsvideo->xuatbanvideotintuc != 1)
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary mb-5">Lưu chỉnh sửa</button>
                        </div>  
                        @endif
                    </form>

                    <div class="col-md-6">
                        @if ($newsvideo->xuatbanvideotintuc == 1 || $newsvideo->duyetvideotintuc == 1)
                        <form action="{{ route('video.remove', ['id' => $newsvideo->id]) }}">
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

                        @if ($newsvideo->duyetvideotintuc == 0 && $newsvideo->xuatbanvideotintuc == 0 && $newsvideo->trangthaithuhoi == 0 || $newsvideo->trangthaithuhoi == 1)
                        <form action="{{ route('video.update-duyet', ['id' => $newsvideo->id]) }}">
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

                        @if ($newsvideo->xuatbanvideotintuc == 0 && $newsvideo->duyetvideotintuc == 1)
                        <form action="{{ route('video.update-xuatban', ['id' => $newsvideo->id]) }}">
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
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script src="{{ asset('vendor/js/select2.js') }}"></script>
    <script src="{{ asset('AdminLTE/admin/newsvideo/edit/newsvideo.js') }}"></script>
@endsection
