@extends('admin.layouts.admin')

@section('title')
    <title>Sản phẩm | Danh sách</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('AdminLTE/dist/css/mystyle2.css')}}">
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'DANH SÁCH', 'key' => 'SẢN PHẨM'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                @can('product-add')
                    <div class="col-md-12">
                        <a href="{{route('product.add')}}" class="btn btn-primary float-right m-2">
                            <i class="fas fa-plus"></i></a>
                    </div>
                @endcan
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                          <table id="example1" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Hình ảnh</th>
                                    <th scope="col">Tên sản phẩm</th>
                                    <th scope="col">Loại sản phẩm</th>
                                    <th scope="col">Chủng Loại</th>
                                    <th scope="col">Kho</th>
                                    <th scope="col"></th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($products as $key => $product)
                                    <tr>
                                        <th scope="row">{{ $product->id }}</th>
                                        <td><img style="width: 100px; height: 100px" src="{{ $product->hinhanhsanpham }}" alt=""></td>
                                        <td>
                                            <a href="" class="product-item"
                                                data-toggle="modal" data-target="#exampleModal"
                                                data-id="{{ $product->id }}" data-url="{{ route('product.view') }}">
                                                {{ $product->tensanpham }}</a>
                                        </td>
                                        <td>{{ $product->productcategory->tenloaisanpham }}</td>
                                        <td>{{ $product->chungloaisanpham }}</td>
                                        <td>{{ $product->storage->tenkho }}</td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                                @canany(['product-view', 'product-delete', 'stage-list'])
                                                    <div class="dropdown-menu">
                                                        @can('stage-list')
                                                            <a class="dropdown-item text-warning" href="{{ route('stage.index', ['product_id' => $product->id]) }}">Danh sách giai đoạn</a>
                                                        @endcan
                                                        @can('product-view')
                                                            <a class="dropdown-item text-info" href="{{ route('product.edit', ['id' => $product->id]) }}">Chỉnh sửa sản phẩm</a>
                                                        @endcan
                                                        @can('product-delete')
                                                            @if($product->comment->isEmpty() && $product->stage->isEmpty())
                                                                <a class="dropdown-item text-danger delete-product" href="{{ route('product.delete', ['id' => $product->id]) }}">Xóa</a>
                                                            @endif
                                                        @endcan
                                                    </div>
                                                @endcanany
                                            </div>
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

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <div class="col-md-4">
                    <h5 class="modal-title tensanpham" id="exampleModalLongTitle"
                        style="font-size: 18px; font-weight: bold; color: red"></h5>
                </div>
                <div class="col-md-4 offset-md-4 text-right">
                    <p class="modal-title ngaytao"
                        style="font-size: 15px;"></p>
                </div>
            </div>
            <div class="modal-body">
                <div class="col-md-12" id="view-product">
                </div>
            </div>
            <div class="modal-footer">
                <div class="col-md-12 text-center">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('js')
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="{{ asset('AdminLTE/company/product/index/product.js') }}"></script>
@endsection
