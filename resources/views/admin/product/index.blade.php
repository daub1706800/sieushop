@extends('admin.layouts.admin')

@section('title')
    <title>Sản phẩm | Danh sách</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('AdminLTE/dist/css/mystyle2.css')}}">
    <style>
        .product-item:hover{
            color: #007bff !important;
        }
    </style>
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
                                        <td>
                                            <a href="" class="product-item" style="color: black"
                                                data-toggle="modal" data-target="#exampleModal"
                                                data-id="{{ $product->id }}">{{ $product->tensanpham }}</a>
                                        </td>
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
                <div class="com-md-12">
                    <div class="row">
                        <p><b>Công ty:</b></p>
                        <p class="congty pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Kho:</b></p>
                        <p class="tenkho pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Người tạo:</b></p>
                        <p class="nguoitao pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Thông tin:</b></p>
                        <p class="thongtinsanpham pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Hình ảnh:</b></p>
                        <img src="" style="width:200px; height: 200px" class="hinhanhsanpham pl-2">
                    </div>
                    <div class="row mt-3">
                        <p><b>Xuất xứ:</b></p>
                        <p class="xuatxu pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Loại sản phẩm:</b></p>
                        <p class="loaisanpham pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Chủng loại:</b></p>
                        <p class="chungloaisanpham pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Đơn giá:</b></p>
                        <p class="dongiasanpham pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Khối lượng:</b></p>
                        <p class="khoiluongsanpham pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Đơn vị tính:</b></p>
                        <p class="donvitinhsanpham pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Mã vạch:</b></p>
                        <p class="mavachsanpham pl-2"></p>
                    </div>
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
    <script>
        $(document).ready(function(){
            $(document).on('click', '.product-item', function() {
                var idProduct = $(this).data('id');
                $.ajax({
                    url : "{{ route('product.view') }}",
                    type : "post",
                    data : {
                        "idProduct":idProduct,
                        "_token": "{{ csrf_token() }}"
                    },
                    success:function(data) {
                        // console.log(data);
                        $('.tensanpham').text(data.product.tensanpham);
                        $('.ngaytao').text('Tạo ngày ' + data.date);
                        $('.congty').text(data.company);
                        $('.tenkho').text(data.storage);
                        $('.nguoitao').text(data.profile);
                        $('.thongtinsanpham').html(data.product.thongtinsanpham);
                        $('.hinhanhsanpham').attr('src',data.product.hinhanhsanpham);
                        $('.xuatxu').text(data.product.xuatxu);
                        $('.loaisanpham').text(data.productcategory);
                        $('.chungloaisanpham').text(data.product.chungloaisanpham);
                        $('.dongiasanpham').text(data.product.dongiasanpham + ' (VNĐ)');
                        $('.khoiluongsanpham').text(data.product.khoiluongsanpham + ' (Kilôgram)');
                        $('.donvitinhsanpham').text(data.product.donvitinhsanpham);
                        $('.mavachsanpham').html(data.product.mavachsanpham);
                    }
                });
            });
        });
    </script>
@endsection
