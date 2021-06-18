@extends('admin.layouts.admin')

@section('title')
    <title>Lĩnh vực | Chỉnh sửa</title>
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
    @include('admin.partials.content-header', ['name' => 'CHỈNH SỬA', 'key' => 'LĨNH VỰC'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <form action="{{ route('field.update', ['id' => $field->id]) }}" method="post">
                    @csrf
                    <div class="form-group">
                        <label>Lĩnh vực *</label>
                        <input type="text" class="form-control @error('tenlinhvuc') is-invalid @enderror"
                                name="tenlinhvuc" value="{{ old('tenlinhvuc', $field->tenlinhvuc) }}" placeholder="Tên lĩnh vực">
                        @error('tenlinhvuc')
                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>Mô tả *</label>
                        <textarea class="form-control @error('motalinhvuc') is-invalid @enderror"
                            name="motalinhvuc" rows="3" placeholder="Mô tả lĩnh vực">{{ old('motalinhvuc', $field->motalinhvuc) }}</textarea>
                        @error('motalinhvuc')
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
