@extends('admin.layouts.admin')

@section('title')
    <title>Công ty | Đăng ký</title>
@endsection

@section('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
    <link rel="stylesheet" href="{{asset('adminLTE/dist/css/mystyle2.css')}}"/>
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
        <div class="content">
            <div class="container rounded bg-white">
                <form action="{{route('profile.company.store')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-8">
                            <div class="py-2">
                                <div class="d-flex justify-content-between align-items-center">
                                    <h1 style="font-size: 1.8rem;" class="text-right">ĐĂNG KÝ CÔNG TY</h1>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-7 mb-1">
                                        <label>Công ty / Doanh nghiệp *</label>
                                        <input type="text" class="form-control @error('tencongty') is-invalid @enderror"
                                                placeholder="Nhập tên công ty / doanh nghiệp" name="tencongty"
                                                value="{{ old('tencongty') }}">
                                        @error('tencongty')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-md-5 mb-1">
                                        <label>Ngày thành lập *</label>
                                        <input type="text" class="form-control @error('ngaythanhlapcongty') is-invalid @enderror"
                                                placeholder="YYYY-MM-DD" name="ngaythanhlapcongty"
                                                value="{{ old('ngaythanhlapcongty') }}">
                                        @error('ngaythanhlapcongty')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-md-12 mb-1">
                                        <label >Địa chỉ *</label>
                                        <input type="text" class="form-control @error('diachicongty') is-invalid @enderror"
                                                placeholder="Nhập địa chỉ" name="diachicongty"
                                                value="{{ old('diachicongty') }}">
                                        @error('diachicongty')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-md-12 mb-1">
                                        <label >Email *</label>
                                        <input type="email" class="form-control @error('emailcongty') is-invalid @enderror"
                                                placeholder="Nhập email" name="emailcongty"
                                                value="{{ old('emailcongty') }}">
                                        @error('emailcongty')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-md-12 mb-1">
                                        <label >Điện thoại</label>
                                        <input type="text" class="form-control @error('dienthoaicongty') is-invalid @enderror"
                                                placeholder="Nhập số điện thoại" name="dienthoaicongty"
                                                value="{{ old('dienthoaicongty') }}">
                                        @error('dienthoaicongty')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-md-12 mb-1">
                                        <label >Fax</label>
                                        <input type="text" class="form-control @error('faxcongty') is-invalid @enderror"
                                                placeholder="Nhập số fax" name="faxcongty"
                                                value="{{ old('faxcongty') }}">
                                        @error('faxcongty')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-md-12 mb-1">
                                        <label>Website * (https:// hoặc http://)</label>
                                        <input type="text" class="form-control @error('webcongty') is-invalid @enderror"
                                                placeholder="Nhập website" name="webcongty"
                                                value="{{ old('webcongty') }}">
                                        @error('webcongty')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 mb-1">
                                        <label>Sở / Ngành *</label>
                                        <select class="form-control department-selected @error('idso') is-invalid @enderror" name="idso">
                                            <option value=""></option>
                                            @foreach( $departments as $department )
                                            <option value="{{ $department->id }}">{{ $department->tenso }}</option>
                                            @endforeach
                                        </select>
                                        @error('idso')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-md-6 mb-1">
                                        <label>Lĩnh vực *</label>
                                        <select class="form-control field-selected @error('idlinhvuc') is-invalid @enderror" name="idlinhvuc">
                                            <option value=""></option>
                                            @foreach( $fields as $field )
                                                <option value="{{ $field->id }}">{{ $field->tenlinhvuc }}</option>
                                            @endforeach
                                        </select>
                                        @error('idlinhvuc')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="py-4 mt-md-5">
                                <div class="form-group col-md-12">
                                    <label>Số đăng ký kinh doanh *</label>
                                    <input type="text" class="form-control @error('sdkkdcongty') is-invalid @enderror"
                                            placeholder="Nhập số đăng ký" name="sdkkdcongty"
                                            value="{{ old('sdkkdcongty') }}">
                                    @error('sdkkdcongty')
                                    <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="form-group col-md-12">
                                    <label>Ngày cấp đăng ký kinh doanh *</label>
                                    <input type="text" class="form-control @error('ngaycapdkkdcongty') is-invalid @enderror"
                                            placeholder="YYYY-MM-DD" name="ngaycapdkkdcongty"
                                            value="{{ old('ngaycapdkkdcongty') }}">
                                    @error('ngaycapdkkdcongty')
                                    <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="form-group col-md-12">
                                    <label>Nơi cấp *</label>
                                    <input type="text" class="form-control @error('noicapdkkdcongty') is-invalid @enderror"
                                            placeholder="Nhập nơi cấp" name="noicapdkkdcongty"
                                            value="{{ old('noicapdkkdcongty') }}">
                                    @error('noicapdkkdcongty')
                                    <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="form-group col-md-12">
                                    <label>Mã số thuế *</label>
                                    <input type="text" class="form-control @error('masothuecongty') is-invalid @enderror"
                                            placeholder="Nhập mã số thuế" name="masothuecongty"
                                            value="{{ old('masothuecongty') }}">
                                    @error('masothuecongty')
                                    <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 mt-2 mb-4 text-center">
                            @if (session()->get('info')['ho'] != "")
                            <button class="btn btn-primary" type="submit">Lưu thông tin</button>
                            @else
                            <label for="">Vui lòng cập nhật thông tin cá nhân
                                <a href="{{ route('profile.index') }}">tại đây.</a>
                            </label>
                            @endif
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

@section('js')
    <!-- Bootstrap Date-Picker Plugin -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    <!-- Select2 Plugin -->
    <script src="{{ asset('vendor/js/select2.js') }}"></script>
    <script>
        $(document).ready(function(){
            $(function(){
                var date_input=$('input[name="ngaythanhlapcongty"]'); //our date input has the name "date"
                var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
                var options={
                    format: 'yyyy-mm-dd',
                    container: container,
                    todayHighlight: true,
                    autoclose: true,
                };
                date_input.datepicker(options);
            });

            $(function(){
                var date_input=$('input[name="ngaycapdkkdcongty"]'); //our date input has the name "date"
                var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
                var options={
                    format: 'yyyy-mm-dd',
                    container: container,
                    todayHighlight: true,
                    autoclose: true,
                };
                date_input.datepicker(options);
            });

            $(function(){
                $(".field-selected").select2({
                    tags: false,
                    theme: "classic",
                    width: "100%",
                    // multiple: true,
                    placeholder: "Chọn lĩnh vực"
                });
            });

            $(function(){
                $(".department-selected").select2({
                    tags: false,
                    theme: "classic",
                    width: "100%",
                    // multiple: true,
                    placeholder: "Chọn sở ngành"
                });
            });
        });
    </script>
@endsection
