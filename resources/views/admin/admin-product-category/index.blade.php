@extends('admin.layouts.admin')

@section('title')
    <title>Loại sản phẩm | Danh sách</title>
@endsection
@section('css')
    <link rel="stylesheet" href="{{asset('vendor/css/select2.css')}}">
    <link rel="stylesheet" href="{{ asset('AdminLTE/admin/product-category/index/product-category.css') }}">
@endsection
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'DANH SÁCH', 'key' => 'LOẠI SẢN PHẨM'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                <a id="btn-modal-click" href="" class="btn btn-primary float-right m-2"
                    data-toggle="modal" data-target="#exampleModal"
                    data-whatever="@getbootstrap"><i class="fas fa-plus"></i></a>
                </div>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                          <table id="example1" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Tên loại sản phẩm</th>
                                    <th scope="col">Mô tả</th>
                                    <th scope="col">Công ty</th>
                                    <th scope="col"></th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($productcategories as $key => $productcategory)
                                    <tr>
                                        <th scope="row">{{ $productcategory->id }}</th>
                                        <td>
                                            <a href="{{ route('admin.productcategory.edit', ['id' => $productcategory->id]) }}">
                                                {{ $productcategory->tenloaisanpham }}</a>
                                        </td>
                                        <td>{{ $productcategory->motaloaisanpham }}</td>
                                        <td>{{ $productcategory->company->tencongty }}</td>
                                        <td class="text-center">
                                            @if($productcategory->product->isEmpty())
                                                <a class="btn btn-sm btn-danger delete-procat" href="{{ route('admin.productcategory.delete', ['id' => $productcategory->id]) }}">
                                                    <i class="fas fa-trash-alt"></i></a>
                                            @else
                                                <a class="btn btn-sm btn-secondary">
                                                    <i class="fas fa-trash-alt"></i></a>        
                                            @endif
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>

<!-- Modal Add Product Category -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="col-md-12">
                    <h4><b>Thêm loại sản phẩm</b></h4><hr>
                </div>
                <form action="{{route('admin.productcategory.store')}}" method="post">
                    @csrf
                    <div class="col-md-12">
                        <div class="form-group">
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
                        <div class="form-group">
                            <label>Tên loại sản phẩm *</label>
                            <input type="text" class="form-control @error('tenloaisanpham') is-invalid @enderror"
                                    name="tenloaisanpham" placeholder="Tên loại sản phẩm" value="{{ old('tenloaisanpham') }}">
                            @error('tenloaisanpham')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Mô tả *</label>
                            <textarea class="form-control @error('motaloaisanpham') is-invalid @enderror" rows="3"
                                    placeholder="Mô tả" name="motaloaisanpham">{{ old('motaloaisanpham') }}</textarea>
                        @error('motaloaisanpham')
                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                        @enderror
                        </div>
                    </div>
                    <div class="col-md-12 text-center">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                        <button type="submit" class="btn btn-primary">Lưu</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
@section('js')
    <script src="{{ asset('vendor/js/select2.js') }}"></script>
    <script src="{{ asset('AdminLTE/admin/product-category/index/product-category.js') }}"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@endsection
