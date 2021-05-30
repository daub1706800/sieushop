@extends('admin.layouts.admin')

@section('title')
    <title>Sản phẩm | Danh sách</title>
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
                <div class="col-md-12">
                    <a style="width:44px" href="{{route('product.add')}}" class="btn btn-primary float-right m-2">
                        <i class="fas fa-plus"></i></a>
                </div>
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
                                        <td>{{ $product->tensanpham }}</td>
                                        <td>{{ $product->productcategory->tenloaisanpham }}</td>
                                        <td>{{ $product->chungloaisanpham }}</td>
                                        <td>{{ $product->storage->tenkho }}</td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="{{ route('product.edit', ['id' => $product->id]) }}">Chỉnh sửa sản phẩm</a>
                                                    <a class="dropdown-item" href="{{ route('stage.index', ['product_id' => $product->id]) }}">Danh sách giai đoạn</a>
                                                    @if($product->comment->isEmpty() && $product->stage->isEmpty())
                                                    <a class="dropdown-item" href="{{ route('product.delete', ['id' => $product->id]) }}">Xóa</a>
                                                    @endif
                                                </div>
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
@endsection