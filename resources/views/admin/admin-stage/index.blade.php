@extends('admin.layouts.admin')

@section('title')
<title>Giai đoạn sản phẩm | Danh sách</title>
@endsection
@section('css')
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
    @include('admin.partials.content-header', ['name' => 'DANH SÁCH', 'key' => 'GIAI ĐOẠN'])

    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 row mb-3">
                    <div class="col-md-12">
                        <h4>SẢN PHẨM : {{ $product->tensanpham }}</h4>
                    </div>
                </div>
                <div class="col-md-12 row mb-3">
                    <div class="col-md-6">
                        <a href="{{ route('admin.product.index') }}" class="btn btn-primary">Danh sách sản phẩm</a>
                    </div>
                    <div class="col-md-6">
                        <a id="btn-modal-click" href="" class="btn btn-primary float-right" data-toggle="modal" data-target="#exampleModal"
                            data-whatever="@getbootstrap"><i class="fas fa-plus"></i></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Tên giai đoạn</th>
                                    <th scope="col">Mô tả</th>
                                    <th scope="col">Ngày tạo</th>
                                    <th scope="col"></th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($stages as $stage)
                                    <tr>
                                        <th scope="row">{{ $stage->id }}</th>
                                        <td><a href="{{ route('admin.stage-info.index', ['stage_id' => $stage->id, 'product_id' => $product_id]) }}"
                                                class="stage-info">
                                            {{ $stage->tengiaidoan }}</a>
                                        </td>
                                        <td>{{ $stage->motagiaidoan }}</td>
                                        <td>{{ $stage->thoigiantao }}</td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="{{ route('admin.stage.edit', ['id' => $stage->id, 'product_id' => $product_id]) }}">Chỉnh sửa</a>
                                                    @if ($stage->stageInfo->isEmpty())
                                                    <a class="dropdown-item" href="{{ route('admin.stage.delete', ['id' => $stage->id]) }}">Xóa</a>
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

<!-- Modal Add Stage -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <h4><b>Thêm giai đoạn</b></h4><hr>
                <form action="{{ route('admin.stage.store', ['product_id' => $product->id]) }}" method="post">
                    {{-- <input type="hidden" id="csrf" value="{{csrf_token()}}"> --}}
                    @csrf
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Tên giai đoạn *</label>
                            <input type="text" class="form-control @error('tengiaidoan') is-invalid @enderror"
                                    name="tengiaidoan" placeholder="Tên giai đoạn" value="{{ old('tengiaidoan') }}">
                            {{-- <input type="hidden" id="idsp" name="idsp" value="{{ $product_id }}"> --}}
                        </div>
                        @error('tengiaidoan')
                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Mô tả *</label>
                            <textarea class="form-control @error('motagiaidoan') is-invalid @enderror" rows="3"
                                name="motagiaidoan" placeholder="Mô tả giai đoạn">{{ old('motagiaidoan') }}</textarea>
                        </div>
                        @error('motagiaidoan')
                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                        @enderror
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
    <script>
        $(document).ready(function (){
            $(function () {
                var errors = $('.alert-custom').html();
                if (errors != null) {
                    $('#btn-modal-click').click();
                }
            });
        });
    </script>
@endsection
