@extends('admin.layouts.admin')

@section('title')
    <title>Loại sản phẩm | Chỉnh sửa</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{ asset('AdminLTE/company/product-category/edit/product-category.css') }}">
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
                    <form action="{{ route('productcategory.update', ['id' => $productcategory->id]) }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label>Danh mục *</label>
                            <input type="text" class="form-control @error('tenloaisanpham') is-invalid @enderror"
                                name="tenloaisanpham" value="{{ old('tenloaisanpham', $productcategory->tenloaisanpham) }}" placeholder="Tên loại sản phẩm">
                            @error('tenloaisanpham')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Mô tả *</label>
                            <textarea class="form-control @error('motaloaisanpham') is-invalid @enderror" rows="3"
                                placeholder="Mô tả" name="motaloaisanpham">{{ old('motaloaisanpham', $productcategory->motaloaisanpham) }}</textarea>
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
