@extends('admin.layouts.admin')

@section('title')
    <title>Công ty | Hồ sơ</title>
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
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'HỒ SƠ', 'key' => 'CÔNG TY'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container rounded">
            <form action="{{route('profile.company.update', ['id' => $company->id])}}" method="post">
                @csrf
                <div class="row">
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Công ty / Doanh nghiệp *</label>
                                    <input type="text" class="form-control @error('tencongty') is-invalid @enderror"
                                            value="{{ old('tencongty', $company->tencongty) }}" name="tencongty"
                                            placeholder="Tên công ty">
                                </div>
                                @error('tencongty')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Ngày thành lập *</label>
                                    <input type="text" class="form-control @error('ngaythanhlapcongty') is-invalid @enderror"
                                            value="{{ old('ngaythanhlapcongty', $company->ngaythanhlapcongty) }}" name="ngaythanhlapcongty">
                                </div>
                                @error('ngaythanhlapcongty')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Sở / Ngành *</label>
                                    <select class="form-control department-selected @error('idso') is-invalid @enderror" name="idso">
                                        <option value="">Chọn Sở/Ngành</option>
                                        @foreach( $departments as $department )
                                        <option {{ $company->idso == $department->id ? "selected":"" }} value="{{ $department->id }}">
                                            {{ $department->tenso }}
                                        </option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('idso')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Lĩnh vực *</label>
                                    <select class="form-control field-selected @error('idlinhvuc') is-invalid @enderror" name="idlinhvuc">
                                        <option value="">Chọn lĩnh vực</option>
                                        @foreach( $fields as $field )
                                            <option {{ $company->idlinhvuc == $field->id ? "selected":"" }} value="{{ $field->id }}">
                                                {{ $field->tenlinhvuc }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('idlinhvuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email *</label>
                                    <input type="email" class="form-control @error('emailcongty') is-invalid @enderror"
                                            value="{{ old('emailcongty', $company->emailcongty) }}" name="emailcongty">
                                </div>
                                @error('emailcongty')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Điện thoại</label>
                                    <input type="text" class="form-control @error('dienthoaicongty') is-invalid @enderror"
                                            value="{{ old('dienthoaicongty', $company->dienthoaicongty) }}" name="dienthoaicongty">
                                </div>
                                @error('dienthoaicongty')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Fax</label>
                                    <input type="text" class="form-control @error('faxcongty') is-invalid @enderror"
                                            value="{{ old('faxcongty', $company->faxcongty) }}" name="faxcongty">
                                </div>
                                @error('faxcongty')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Website * (https:// hoặc http://)</label>
                                    <input type="text" class="form-control @error('webcongty') is-invalid @enderror"
                                            value="{{ old('webcongty', $company->webcongty) }}" name="webcongty">
                                </div>
                                @error('webcongty')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Địa chỉ *</label>
                                    <input type="text" class="form-control @error('diachicongty') is-invalid @enderror"
                                            value="{{ old('diachicongty', $company->diachicongty) }}" name="diachicongty">
                                </div>
                                @error('diachicongty')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Số đăng ký kinh doanh *</label>
                            <input type="text" class="form-control @error('sdkkdcongty') is-invalid @enderror"
                                    value="{{ old('sdkkdcongty', $company->sdkkdcongty) }}" name="sdkkdcongty">
                            @error('sdkkdcongty')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Ngày cấp đăng ký kinh doanh *</label>
                            <input type="text" class="form-control @error('ngaycapdkkdcongty') is-invalid @enderror"
                                    value="{{ old('ngaycapdkkdcongty', $company->ngaycapdkkdcongty) }}" name="ngaycapdkkdcongty">
                            @error('ngaycapdkkdcongty')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Nơi cấp *</label>
                            <input type="text" class="form-control @error('noicapdkkdcongty') is-invalid @enderror"
                                    value="{{ old('noicapdkkdcongty', $company->noicapdkkdcongty) }}" name="noicapdkkdcongty">
                            @error('noicapdkkdcongty')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Mã số thuế *</label>
                            <input type="text" class="form-control @error('masothuecongty') is-invalid @enderror"
                                    value="{{ old('masothuecongty', $company->masothuecongty) }}" name="masothuecongty">
                            @error('masothuecongty')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    @can('company-update')
                        <div class="col-md-12 text-center mb-3">
                            <button class="btn btn-primary" type="submit">Lưu chỉnh sửa</button>
                        </div> 
                    @endcan
                </div>
            </form>
        </div>
    </div>
    <!-- /.content -->
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
                    // multiple: true
                });
            });

            $(function(){
                $(".department-selected").select2({
                    tags: false,
                    theme: "classic",
                    width: "100%",
                    // multiple: true
                });
            });
        });
    </script>
@endsection
