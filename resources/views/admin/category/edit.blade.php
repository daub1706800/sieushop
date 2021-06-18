@extends('admin.layouts.admin')

@section('title')
    <title>Chuyên mục | Chỉnh sửa</title>
@endsection
@section('css')
    <link rel="stylesheet" href="{{asset('vendor/css/select2.css')}}">
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
    @include('admin.partials.content-header', ['name' => 'CHỈNH SỬA', 'key' => 'DANH MỤC'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <form action="{{ route('category.update', ['id' => $category->id]) }}" method="post">
                    @csrf
                    <div class="form-group">
                        <label>Danh mục *</label>
                        <input type="text" class="form-control @error('tenchuyenmuc') is-invalid @enderror"
                                name="tenchuyenmuc" value="{{ old('tenchuyenmuc', $category->tenchuyenmuc) }}" placeholder="Tên danh mục">
                        @error('tenchuyenmuc')
                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>Lĩnh vực *</label>
                        <select class="form-control deparment-selected @error('idlinhvuc') is-invalid @enderror"
                            name="idlinhvuc">
                            @foreach( $fields as $field )
                                <option value="{{ $field->id }}" {{ $category->idlinhvuc == $field->id ? "selected":"" }} >{{ $field->tenlinhvuc }}</option>
                            @endforeach
                        </select>
                        @error('idlinhvuc')
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
@section('js')
    <script src="{{ asset('vendor/js/select2.js') }}"></script>
    <script>
        $(document).ready(function() {
            $(function(){
                $(".deparment-selected").select2({
                    tags: false,
                    placeholder : 'Chọn vai trò',
                    theme: "classic",
                    width: "100%",
                    // multiple: true
                })
            });
        });
    </script>
@endsection
