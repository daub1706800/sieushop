@extends('admin.layouts.admin')

@section('title')
    <title>Công ty | Danh sách</title>
@endsection

@section('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
    <link rel="stylesheet" href="{{asset('adminLTE/dist/css/mystyle2.css')}}"/>
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'DANH SÁCH', 'key' => 'CÔNG TY'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Tên công ty</th>
                                    <th scope="col">Địa chỉ</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Điện thoại</th>
                                    <th scope="col">Ngày thành lập</th>
                                    <th scope="col"></th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($companys as $key => $company)
                                    <tr>
                                        <th scope="row">{{ $company->id }}</th>
                                        <td>{{ $company->tencongty }}</td>
                                        <td>{{ $company->diachicongty }}</td>
                                        <td>{{ $company->emailcongty }}</td>
                                        <td>{{ $company->dienthoaicongty }}</td>
                                        <td>{{ $company->ngaythanhlapcongty }}</td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="{{ route('company.edit', ['id'=>$company->id]) }}">Chỉnh sửa</a>
                                                    @if($company->news->isEmpty() && $company->user->isEmpty() && $company->product->isEmpty()
                                                        && $company->procat->isEmpty() && $company->storage->isEmpty())
                                                    <a class="dropdown-item" href="{{ route('company.edit', ['id'=>$company->id]) }}">Xóa</a>
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
