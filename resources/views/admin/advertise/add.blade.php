@extends('admin.layouts.admin')

@section('title')
    <title>Quảng cáo | Thêm mới</title>
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
    @include('admin.partials.content-header', ['name' => 'THÊM', 'key' => 'QUẢNG CÁO'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form action="{{ route('advertise.store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Loại banner *</label>
                                <select name="loaibanner" class="form-control loai-banner @error('loaibanner') is-invalid @enderror">
                                    <option value=""></option>
                                    <option value="0">Banner dọc - Độ phân giải tối đa 500 x 1000 pixel</option>
                                    <option value="1">Banner ngang - Độ phân giải tối đa 1000 x 500 pixel</option>
                                    <option value="2">Banner vuông - Độ phân giải tối đa 1000 x 1000 pixel</option>
                                </select>
                                @error('loaibanner')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group col-md-6">
                                <label>Ảnh quảng cáo *</label>
                                <input type="file" class="form-control-file @error('dulieuhinhanhquangcao.*') is-invalid @enderror @error('dulieuhinhanhquangcao1.*') is-invalid @enderror @error('dulieuhinhanhquangcao2.*') is-invalid @enderror"
                                        name="dulieuhinhanhquangcao[]" multiple>
                                @error('dulieuhinhanhquangcao.*')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                                @error('dulieuhinhanhquangcao1.*')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                                @error('dulieuhinhanhquangcao2.*')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label>Tiêu đề quảng cáo *</label>
                                <input type="text" class="form-control @error('tieudequangcao') is-invalid @enderror"
                                        name="tieudequangcao" value="{{ old('tieudequangcao') }}" placeholder="Tiêu đề quảng cáo">
                                @error('tieudequangcao')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            
                            <div class="form-group col-md-6">
                                <input type="checkbox" id="loaiquangcao" name="loaiquangcao" value="1">
                                <label for="loaiquangcao">Quảng cáo sự kiện?</label>
                            </div>
                        </div>
                        <div class="text-center">
                            <button id="submit-banner" type="submit" class="btn btn-primary mb-5">Lưu</button>
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
            if (!$('.form-control-file').val()) {
                $('#submit-banner').attr('disabled','disable');
            }
            $(document).on('change', '.loai-banner', function () {
                var loai_banner = $(this).val();
                if (loai_banner == 0) {
                    $('.form-control-file').attr('name', 'dulieuhinhanhquangcao[]');
                }
                else if (loai_banner == 1) {
                    $('.form-control-file').attr('name', 'dulieuhinhanhquangcao1[]');
                }
                else
                {
                    $('.form-control-file').attr('name', 'dulieuhinhanhquangcao2[]');
                }
                
                
            });

            $(document).on('change', '.form-control-file', function () {
                if ($(this).val()) {
                    $('#submit-banner').removeAttr('disabled');
                }
                else
                {
                    $('#submit-banner').attr('disabled','disable');
                }
            });

            $(function(){
                $(".loai-banner").select2({
                    tags: false,
                    placeholder : 'Chọn loại banner',
                    theme: "classic",
                    width: "100%",
                    // multiple: true
                });
            });
        });
    </script>
@endsection
