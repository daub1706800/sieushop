@extends('admin.layouts.admin')

@section('title')
    <title>{{ $stage->tengiaidoan }} | Chỉnh sửa</title>
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
    @include('admin.partials.content-header', ['name' => 'CHỈNH SỬA', 'key' => Str::upper($stage->tengiaidoan)])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <form action="{{ route('admin.stage.update', ['id' => $stage->id]) }}" method="post">
                    @csrf
                    <input type="hidden" name="product_id" value="{{ $product_id }}">
                    <div class="form-group">
                        <label>Tên giai đoạn *</label>
                        <input type="text" class="form-control @error('tengiaidoan') is-invalid @enderror"
                                name="tengiaidoan" value="{{ old('tengiaidoan', $stage->tengiaidoan) }}" placeholder="Tên lĩnh vực">
                        @error('tengiaidoan')
                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>Mô tả *</label>
                        <textarea class="form-control @error('motagiaidoan') is-invalid @enderror"
                            name="motagiaidoan" rows="3" placeholder="Mô tả lĩnh vực">{{ old('motagiaidoan', $stage->motagiaidoan) }}</textarea>
                        @error('motagiaidoan')
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