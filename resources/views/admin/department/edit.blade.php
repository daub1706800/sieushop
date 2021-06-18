@extends('admin.layouts.admin')

@section('title')
    <title>Sở ngành | Chỉnh sửa</title>
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
    @include('admin.partials.content-header', ['name' => 'CHỈNH SỬA', 'key' => 'SỞ NGÀNH'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <form action="{{ route('department.update', ['id' => $department->id]) }}" method="post">
                    @csrf
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Sở ngành *</label>
                            <input type="text" class="form-control @error('tenso') is-invalid @enderror"
                                    name="tenso" value="{{ old('tenso', $department->tenso) }}">
                            @error('tenso')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Địa chỉ *</label>
                            <input type="text" class="form-control @error('diachiso') is-invalid @enderror"
                                    name="diachiso" value="{{ old('diachiso', $department->diachiso) }}">
                            @error('diachiso')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Email *</label>
                            <input type="text" class="form-control @error('emailso') is-invalid @enderror"
                                    name="emailso" value="{{ old('emailso', $department->emailso) }}">
                            @error('emailso')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label>Điện thoại</label>
                            <input type="text" class="form-control @error('dienthoaiso') is-invalid @enderror"
                                    name="dienthoaiso" value="{{ old('dienthoaiso', $department->dienthoaiso) }}">
                            @error('dienthoaiso')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Fax</label>
                            <input type="text" class="form-control @error('faxso') is-invalid @enderror"
                                    name="faxso" value="{{ old('faxso', $department->faxso) }}">
                            @error('faxso')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Website *</label>
                            <input type="text" class="form-control @error('webso') is-invalid @enderror"
                                    name="webso" value="{{ old('webso', $department->webso) }}">
                            @error('webso')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                <div class="col-md-6 text-center mb-3">
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
