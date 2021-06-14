@extends('admin.layouts.admin')

@section('title')
    <title>Quảng cáo | Chỉnh sửa</title>
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
    @include('admin.partials.content-header', ['name' => 'CHỈNH SỬA', 'key' => 'QUẢNG CÁO'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form action="{{ route('advertise.update', ['id' => $advertise->id]) }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label>Ảnh quảng cáo *</label>
                                <input type="file" class="col-md-6 form-control-file @error('dulieuhinhanhquangcao') is-invalid @enderror @error('dulieuhinhanhquangcao.*') is-invalid @enderror"
                                        name="dulieuhinhanhquangcao[]" multiple>
                                <div class="row mt-3">
                                @foreach ($advertise->advertiseimage as $item)
                                    <div class="col-md-3">
                                        <img style="width:250px; height:250px" src="{{ $item->dulieuhinhanhquangcao }}">
                                    </div>
                                @endforeach
                                </div>
                                @error('dulieuhinhanhquangcao')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                                @error('dulieuhinhanhquangcao.*')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label>Tiêu đề quảng cáo *</label>
                                <input type="text" class="form-control @error('tieudequangcao') is-invalid @enderror"
                                        name="tieudequangcao" value="{{ old('tieudequangcao', $advertise->tieudequangcao) }}" placeholder="Tiêu đề quảng cáo">
                                @error('tieudequangcao')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            
                            <div class="form-group col-md-6">
                                <input type="checkbox" id="loaiquangcao" name="loaiquangcao" value="1"
                                    {{ $advertise->loaiquangcao == 1 ? "checked":"" }}>
                                <label for="loaiquangcao">Quảng cáo sự kiện?</label>
                            </div>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary mb-5">Lưu</button>
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
