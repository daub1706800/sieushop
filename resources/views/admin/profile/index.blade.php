@extends('admin.layouts.admin')

@section('title')
<title>Hồ sơ | Chỉnh sửa</title>
@endsection

@section('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
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
        <div class="container-fluid emp-profile">
            <div style="display:none;margin-top: 5px;padding: 3px 5px;" class="alert alert-danger" id="file"></div>
            <div class="row">
                <div class="col-md-4">
                    <div class="profile-img">
                        <img style="width: 200px; height: 200px;" src="{{ asset(session()->get('info')['image']) }}" alt=""/>
                        <form id="changeform" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="file btn btn-lg btn-primary">
                                Change Photo
                                <input style="z-index: 1;height: 38px;" type="file" name="file" id="changeavatar" data-url="{{route('profile.change', ['id' => $profile->id])}}"/>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="profile-head">
                        <h5>
                            <b>{{$profile->tenthanhvien != null || $profile->hothanhvien != null ? $profile->tenthanhvien . ' ' . $profile->hothanhvien : "Username"}}</b></h5>
                        <p><b>{{$profile->user->idcongty != null ? $company->tencongty : "Chưa có công ty"}}</b></p>
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Thông tin</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="profile-work">
                        <p>Công việc</p>
                        <a id="btn-modal-click" href="" data-toggle="modal" data-target="#exampleModal"
                           data-whatever="@getbootstrap">Chỉnh sửa hồ sơ</a><br/>
                        @if(!empty(auth()->user()->idcongty))
                            <a href="{{route('profile.company.index')}}">Hồ sơ công ty</a>
                        @endif
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="tab-content profile-tab" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Họ</label>
                                </div>
                                <div class="col-md-6">
                                    <p>{{$profile->hothanhvien}}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Tên</label>
                                </div>
                                <div class="col-md-6">
                                    <p>{{$profile->tenthanhvien}}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Giới tính</label>
                                </div>
                                <div class="col-md-6">
                                    @if($profile->gioitinhthanhvien == 1)
                                        <p>Nam</p>
                                    @elseif($profile->gioitinhthanhvien == 2)
                                        <p>Nữ</p>
                                    @elseif($profile->gioitinhthanhvien == 3)
                                        <p>Khác</p>
                                    @endif
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Năm sinh</label>
                                </div>
                                <div class="col-md-6">
                                    <p>{{$profile->namsinh}}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Địa chỉ</label>
                                </div>
                                <div class="col-md-6">
                                    <p>{{$profile->diachi}}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Điên thoại</label>
                                </div>
                                <div class="col-md-6">
                                    <p>{{$profile->dienthoai}}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal Edit Profile -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="col-md-12">
                    <h4><b>Cập nhật thông tin</b></h4><hr>
                </div>
                <form action="{{route('profile.update', ['id' => $profile->id])}}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Họ *</label>
                            <input type="text" class="form-control @error('hothanhvien') is-invalid @enderror" name="hothanhvien"
                                   value="{{$profile->hothanhvien != null ? $profile->hothanhvien : old('hothanhvien')}}"
                                   placeholder="Họ">
                            @error('hothanhvien')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Tên *</label>
                            <input type="text" class="form-control @error('tenthanhvien') is-invalid @enderror" name="tenthanhvien"
                                   value="{{$profile->tenthanhvien != null ? $profile->tenthanhvien : old('tenthanhvien')}}"
                                   placeholder="Tên">
                            @error('tenthanhvien')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="row ml-2">
                            <div class="form-check">
                                <input type="radio" class="form-check-input" name="gioitinhthanhvien"
                                        id="gioitinhthanhvien1" value="1" checked>
                                <label class="form-check-label" for="gioitinhthanhvien1"> Nam</label>
                            </div>
                            <div class="form-check ml-4">
                                <input type="radio" class="form-check-input" name="gioitinhthanhvien"
                                        id="gioitinhthanhvien2" value="2">
                                <label class="form-check-label" for="gioitinhthanhvien2"> Nữ</label>
                            </div>
                            <div class="form-check ml-4">
                                <input type="radio" class="form-check-input" name="gioitinhthanhvien"
                                        id="gioitinhthanhvien3" value="3">
                                <label class="form-check-label" for="gioitinhthanhvien3"> Khác</label>
                            </div>
                        </div>
                        <div class="form-group mt-2"> <!-- Date input -->
                            <label class="control-label" for="date">Ngày sinh *</label>
                            <input class="form-control @error('namsinh') is-invalid @enderror" id="date" name="namsinh"
                                   value="{{$profile->namsinh != null ? $profile->namsinh : old('namsinh')}}"
                                   placeholder="YYYY-MM-DD" type="text"/>
                            @error('namsinh')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Địa chỉ *</label>
                            <input type="text" class="form-control @error('diachi') is-invalid @enderror" name="diachi"
                                   value="{{$profile->diachi != null ? $profile->diachi : old('diachi')}}"
                                   placeholder="Địa chỉ">
                            @error('diachi')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Điện thoại *</label>
                            <input type="text" class="form-control @error('dienthoai') is-invalid @enderror" name="dienthoai"
                                   value="{{$profile->dienthoai != null ? $profile->dienthoai : old('dienthoai')}}"
                                   placeholder="Điện thoại">
                            @error('dienthoai')
                            <div class="alert alert-danger alert-custom">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="text-center">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                        <button type="submit" class="btn btn-primary">Lưu chỉnh sửa</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@section('js')
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    <script>
        $(document).ready(function(){
            var date_input=$('input[name="namsinh"]'); //our date input has the name "date"
            var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
            var options={
                format: 'yyyy-mm-dd',
                container: container,
                todayHighlight: true,
                autoclose: true,
            };
            date_input.datepicker(options);
        });

        $(document).ready(function (){
            $('#changeavatar').on('change', function (){
                var url = $('#changeavatar').data('url');
                $.ajax({
                    url : url,
                    type: 'post',
                    data : new FormData($('#changeform')[0]),
                    processData: false,
                    contentType: false,
                    success:function (data)
                    {
                        if (data.status == 1)
                        {
                            location.reload();
                        }
                        else
                        {
                            $.each(data.error, function(prefix, val){
                                console.log(prefix)
                                $('#' + prefix).text(val);
                                $('#' + prefix).css('display', 'block');
                            });
                        }
                    }
                });
            });
            $(function () {
                var errors = $('.alert-custom').html();
                if (errors != null) {
                    $('#btn-modal-click').click();
                }
            });
        });
    </script>
@endsection
