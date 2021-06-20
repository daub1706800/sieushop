@extends('admin.layouts.admin')

@section('title')
    <title>Kho | Chỉnh sửa</title>
@endsection
@section('css')
    <link rel="stylesheet" href="{{ asset('AdminLTE/company/storage/edit/storage.css') }}">
@endsection
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'CHỈNH SỬA', 'key' => 'KHO'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                <form action="{{ route('storage.update', ['id' => $storage->id]) }}" method="post">
                    @csrf
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Tên kho *</label>
                            <input type="text" name="tenkho"
                                class="form-control @error('tenkho') is-invalid @enderror"
                                value="{{ old('tenkho', $storage->tenkho) }}">
                            @error('tenkho')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Tải trọng (tấn) *</label>
                            <input type="text" name="taitrongkho"
                                class="form-control @error('taitrongkho') is-invalid @enderror"
                                value="{{ old('taitrongkho', $storage->taitrongkho) }}">
                            @error('taitrongkho')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Diện tích (m2) *</label>
                            <input type="text" name="dientichkho"
                                class="form-control @error('dientichkho') is-invalid @enderror"
                                value="{{ old('dientichkho', $storage->dientichkho) }}">
                            @error('dientichkho')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Số nhân viên *</label>
                            <input type="text" name="sonhanvienkho"
                                class="form-control @error('sonhanvienkho') is-invalid @enderror"
                                value="{{ old('sonhanvienkho', $storage->sonhanvienkho) }}">
                            @error('sonhanvienkho')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Địa chỉ *</label>
                            <input type="text" name="diachikho"
                                class="form-control @error('diachikho') is-invalid @enderror"
                                value="{{ old('diachikho', $storage->diachikho) }}">
                            @error('diachikho')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Ghi chú *</label>
                            <textarea class="form-control @error('ghichukho') is-invalid @enderror" rows="5"
                                name="ghichukho">{{ old('ghichukho', $storage->ghichukho) }}</textarea>
                            @error('ghichukho')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-12 text-center">
                        <button type="submit" class="btn btn-primary mb-2">Lưu chỉnh sửa</button>
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
