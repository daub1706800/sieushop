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
        .custome{
            min-width: 150px;
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
                        <div class="row mb-3">
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label>Tiêu đề quảng cáo *</label>
                                    <input type="text" class="form-control @error('tieudequangcao') is-invalid @enderror"
                                            name="tieudequangcao" value="{{ old('tieudequangcao') }}" placeholder="Tiêu đề quảng cáo">
                                    @error('tieudequangcao')
                                    <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-6 mt-2">
                                <div class="row">
                                    <label class="ml-2">Loại banner *</label>
                                    <div class="form-check ml-5 mr-5"
                                        data-toggle="popover" data-placement="bottom" data-html="true" data-boundary='scrollParent'
                                        data-content="<img width='240' height='30' src='{{ asset('TemplateTechBlog/upload/banner_01.jpg') }}'>">
                                        <input class="form-check-input" type="radio" name="loaibanner"
                                            id="banner1" value="1">
                                        <label class="form-check-label" for="banner1">Ngang</label>
                                    </div>
                                    <div class="form-check mr-5"
                                        data-toggle="popover" data-placement="bottom" data-html="true" data-boundary='scrollParent'
                                        data-content="<img width='90' height='180' src='{{ asset('TemplateTechBlog/upload/banner_07.jpg') }}'>">
                                        <input class="form-check-input" type="radio" name="loaibanner"
                                            id="banner2" value="0">
                                        <label class="form-check-label" for="banner2">Dọc</label>
                                    </div>
                                    <div class="form-check"
                                        data-toggle="popover" data-placement="bottom" data-html="true" data-boundary='scrollParent'
                                        data-content="<img width='100' height='100' src='{{ asset('TemplateTechBlog/upload/banner_03.jpg') }}'>">
                                        <input class="form-check-input" type="radio" name="loaibanner"
                                            id="banner3" value="2">
                                        <label class="form-check-label" for="banner3">Vuông</label>
                                    </div>
                                </div>
                                @error('loaibanner')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6 mt-2">
                                <div class="row">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="loaiquangcao" name="loaiquangcao" value="1">
                                        <label class="form-check-label font-weight-bold" for="loaiquangcao">
                                            Quảng cáo sự kiện ?
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Ảnh quảng cáo *</label>
                                <input type="file" class="form-control-file"
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
                        <div class="col-md-8 text-center">
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
            $(document).on('change', 'input[type=radio][name=loaibanner]', function () {
                // var loai_banner = $(this).val();
                if (this.value == 0) {
                    $('.form-control-file').attr('name', 'dulieuhinhanhquangcao[]');
                }
                else if (this.value == 1) {
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

            $(function () {
                $('[data-toggle="popover"]').popover({
                    trigger: 'focus',
                    delay: { "show": 100, "hide": 100 }
                });
                
            })
        });
    </script>
@endsection
