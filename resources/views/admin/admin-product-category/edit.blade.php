@extends('admin.layouts.admin')

@section('title')
    <title>Loại sản phẩm | Chỉnh sửa</title>
@endsection
@section('css')
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
    @include('admin.partials.content-header', ['name' => 'CHỈNH SỬA', 'key' => 'LOẠI SẢN PHẨM'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                    <form action="{{ route('admin.productcategory.update', ['id' => $productcategory->id]) }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label>Công ty *</label>
                            <input type="text" class="form-control" value="{{$productcategory->company->tencongty}}" readonly>
                            <input type="hidden" name="idcongty" value="{{$productcategory->idcongty}}">
                        </div>
                        <div class="form-group">
                            <label>Danh mục *</label>
                            <input type="text" class="form-control @error('tenloaisanpham') is-invalid @enderror"
                                name="tenloaisanpham" value="{{ $productcategory->tenloaisanpham }}" placeholder="Tên loại sản phẩm">
                            @error('tenloaisanpham')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Mô tả *</label>
                            <textarea class="form-control @error('motaloaisanpham') is-invalid @enderror" rows="3"
                                placeholder="Mô tả" name="motaloaisanpham">{{ $productcategory->motaloaisanpham }}</textarea>
                            @error('motaloaisanpham')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">Lưu chỉnh sửa</button>
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
    <!-- include select2 js -->
    <script src="{{ asset('vendor/js/select2.js') }}"></script>
    <script>
        $(document).ready(function(){
            $(function(){
                $(".company-selected").select2({
                    tags: false,
                    placeholder : 'Chọn công ty',
                    theme: "classic",
                    width: "100%"
                });
            });
        });
    </script>
@endsection
