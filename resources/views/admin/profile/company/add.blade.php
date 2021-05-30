@extends('admin.layouts.admin')

@section('title')
    <title>Công ty | Đăng ký</title>
@endsection

@section('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
    <link rel="stylesheet" href="{{asset('adminLTE/dist/css/mystyle2.css')}}"/>
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
                            <div class="p-3 py-5">
                                <div class="d-flex justify-content-between align-items-center">
                                    <h1 style="font-size: 1.8rem;" class="text-right">ĐĂNG KÝ CÔNG TY</h1>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-7">
                                        <label class="labels">Công ty / Doanh nghiệp *</label>
                                        <input type="text" class="form-control @error('tencongty') is-invalid @enderror"
                                                placeholder="Nhập tên công ty / doanh nghiệp" name="tencongty"
                                                value="{{ old('tencongty') }}">
                                        @error('tencongty')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-md-5">
                                        <label class="labels">Ngày thành lập *</label>
                                        <input type="text" class="form-control @error('ngaythanhlapcongty') is-invalid @enderror"
                                                placeholder="YYYY-MM-DD" name="ngaythanhlapcongty"
                                                value="{{ old('ngaythanhlapcongty') }}">
                                        @error('ngaythanhlapcongty')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-md-12">
                                        <label class="labels">Địa chỉ *</label>
                                        <input type="text" class="form-control @error('diachicongty') is-invalid @enderror"
                                                placeholder="Nhập địa chỉ" name="diachicongty"
                                                value="{{ old('diachicongty') }}">
                                        @error('diachicongty')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-md-12">
                                        <label class="labels">Email *</label>
                                        <input type="email" class="form-control @error('emailcongty') is-invalid @enderror"
                                                placeholder="Nhập email" name="emailcongty"
                                                value="{{ old('emailcongty') }}">
                                        @error('emailcongty')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-md-12">
                                        <label class="labels">Điện thoại</label>
                                        <input type="text" class="form-control @error('dienthoaicongty') is-invalid @enderror"
                                                placeholder="Nhập số điện thoại" name="dienthoaicongty"
                                                value="{{ old('dienthoaicongty') }}">
                                        @error('dienthoaicongty')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-md-12">
                                        <label class="labels">Fax</label>
                                        <input type="text" class="form-control @error('faxcongty') is-invalid @enderror"
                                                placeholder="Nhập số fax" name="faxcongty"
                                                value="{{ old('faxcongty') }}">
                                        @error('faxcongty')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-md-12">
                                        <label class="labels">Website *</label>
                                        <input type="text" class="form-control @error('webcongty') is-invalid @enderror"
                                                placeholder="Nhập website" name="webcongty"
                                                value="{{ old('webcongty') }}">
                                        @error('webcongty')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <label class="labels">Sở / Ngành *</label>
                                        <select class="form-control @error('idso') is-invalid @enderror" name="idso">
                                            <option value="">Chọn Sở/Ngành</option>
                                            @foreach($departments as $department)
                                            <option value="{{$department->id}}">{{$department->tenso}}</option>
                                            @endforeach
                                        </select>
                                        @error('idso')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="labels">Lĩnh vực *</label>
                                        <select class="form-control @error('idlinhvuc') is-invalid @enderror" name="idlinhvuc">
                                            <option value="">Chọn lĩnh vực</option>
                                            @foreach($fields as $field)
                                                <option value="{{$field->id}}">{{$field->tenlinhvuc}}</option>
                                            @endforeach
                                        </select>
                                        @error('idlinhvuc')
                                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="mt-5 text-center">
                                    <button class="btn btn-primary" type="submit">Lưu thông tin</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="p-3 py-5 mt-md-5">
                                <div class="form-group col-md-12">
                                    <label class="labels">Số đăng ký kinh doanh *</label>
                                    <input type="text" class="form-control @error('sdkkdcongty') is-invalid @enderror"
                                            placeholder="Nhập số đăng ký" name="sdkkdcongty"
                                            value="{{ old('sdkkdcongty') }}">
                                    @error('sdkkdcongty')
                                    <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="form-group col-md-12">
                                    <label class="labels">Ngày cấp đăng ký kinh doanh *</label>
                                    <input type="text" class="form-control @error('ngaycapdkkdcongty') is-invalid @enderror"
                                            placeholder="YYYY-MM-DD" name="ngaycapdkkdcongty"
                                            value="{{ old('ngaycapdkkdcongty') }}">
                                    @error('ngaycapdkkdcongty')
                                    <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="form-group col-md-12">
                                    <label class="labels">Nơi cấp *</label>
                                    <input type="text" class="form-control @error('noicapdkkdcongty') is-invalid @enderror"
                                            placeholder="Nhập nơi cấp" name="noicapdkkdcongty"
                                            value="{{ old('noicapdkkdcongty') }}">
                                    @error('noicapdkkdcongty')
                                    <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="form-group col-md-12">
                                    <label class="labels">Mã số thuế *</label>
                                    <input type="text" class="form-control @error('masothuecongty') is-invalid @enderror"
                                            placeholder="Nhập mã số thuế" name="masothuecongty"
                                            value="{{ old('masothuecongty') }}">
                                    @error('masothuecongty')
                                    <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
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
    <script>
        $(document).ready(function(){
            var date_input=$('input[name="ngaythanhlapcongty"]');
            var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
            var options={
                format: 'yyyy-mm-dd',
                container: container,
                todayHighlight: true,
                autoclose: true,
            };
            date_input.datepicker(options);
        })
    </script>
    <script>
        $(document).ready(function(){
            var date_input=$('input[name="ngaycapdkkdcongty"]');
            var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
            var options={
                format: 'yyyy-mm-dd',
                container: container,
                todayHighlight: true,
                autoclose: true,
            };
            date_input.datepicker(options);
        })
    </script>
@endsection
