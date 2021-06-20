@extends('admin.layouts.admin')

@section('title')
    <title>Tin tức | Thêm mới</title>
@endsection

@section('css')
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('vendor/css/select2.css')}}">
    <link rel="stylesheet" href="{{ asset('AdminLTE/admin/news/add/news.css') }}">
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
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                    <form action="{{route('news.store')}}" method="post" enctype="multipart/form-data">
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
                            <div class="form-group col-md-6">
                                <label>Công ty *</label>
                                <select class="form-control company-selected @error('idcongty') is-invalid @enderror" name="idcongty">
                                    <option value=""></option>
                                    @foreach($companies as $company)
                                        <option value="{{$company->id}}">{{$company->tencongty}}</option>
                                    @endforeach
                                </select>
                                @error('idcongty')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Ảnh tóm tắt *</label>
                                <input type="file" class="form-control-file @error('hinhanhtintuc') is-invalid @enderror"
                                        name="hinhanhtintuc">
                                @error('hinhanhtintuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group col-md-6">
                                <label>Video</label>
                                <input type="file" class="form-control-file @error('videotintuc') is-invalid @enderror"
                                        name="videotintuc">
                                @error('videotintuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group col-md-12">
                                <label>Tiêu đề *</label>
                                <input type="text" class="form-control @error('tieudetintuc') is-invalid @enderror"
                                        name="tieudetintuc" value="{{ old('tieudetintuc') }}" placeholder="Tiêu đề tin tức">
                                @error('tieudetintuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group col-md-12">
                                <label>Nội dung tóm tắt *</label>
                                <textarea class="form-control summernote-tomtat @error('tomtattintuc') is-invalid @enderror"
                                        name="tomtattintuc">{{ old('tomtattintuc') }}</textarea>
                                @error('tomtattintuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group col-md-12">
                                <label>Nội dung chính*</label>
                                <textarea class="form-control summernote-noidung @error('noidungtintuc') is-invalid @enderror"
                                        name="noidungtintuc">{{ old('noidungtintuc') }}</textarea>
                                @error('noidungtintuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="loaitintuc" value="1">
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
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script src="{{ asset('vendor/js/select2.js') }}"></script>
    <script src="{{ asset('AdminLTE/admin/news/add/news.js') }}"></script>
@endsection
