@extends('admin.layouts.admin')

@section('title')
    <title>Công ty | Danh sách</title>
@endsection

@section('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
    <link rel="stylesheet" href="{{asset('adminLTE/dist/css/mystyle2.css')}}"/>
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'DANH SÁCH', 'key' => 'CÔNG TY'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Tên công ty</th>
                                    <th scope="col">Địa chỉ</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Điện thoại</th>
                                    <th scope="col">Ngày thành lập</th>
                                    <th scope="col"></th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($companys as $key => $company)
                                    <tr>
                                        <th scope="row">{{ $company->id }}</th>
                                        <td>
                                            <a href="" class="company-item"
                                                data-toggle="modal" data-target="#exampleModal"
                                                data-id="{{ $company->id }}" data-url="{{ route('company.view') }}">
                                                {{ $company->tencongty }}</a>
                                        </td>
                                        <td>{{ $company->diachicongty }}</td>
                                        <td>{{ $company->emailcongty }}</td>
                                        <td>{{ $company->dienthoaicongty }}</td>
                                        <td>{{ $company->ngaythanhlapcongty }}</td>
                                        <td class="text-center">
                                            <a class="btn btn-sm btn-info" href="{{ route('company.edit', ['id'=>$company->id]) }}">
                                                <i class="fas fa-pencil-alt"></i></a>
                                            @if($company->news->isEmpty() && $company->user->isEmpty() && $company->product->isEmpty()
                                                && $company->procat->isEmpty() && $company->storage->isEmpty())
                                                <a class="btn btn-sm btn-danger delete-company" href="{{ route('company.edit', ['id'=>$company->id]) }}">
                                                    <i class="fas fa-trash-alt"></i></a>
                                            @else
                                                <a class="btn btn-sm btn-secondary">
                                                    <i class="fas fa-trash-alt"></i></a>
                                            @endif
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <div class="col-md-7">
                    <h5 class="modal-title congty" id="exampleModalLongTitle"
                        style="font-size: 18px; font-weight: bold; color: red"></h5>
                </div>
                <div class="col-md-5 text-right">
                    <p class="modal-title ngaythanhlap"
                        style="font-size: 15px;"></p>
                </div>
            </div>
            <div class="modal-body">
                <div class="col-md-12">
                    <div class="row">
                        <p><b>Sở/Ngành:</b></p>
                        <p class="tenso pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Lĩnh vực:</b></p>
                        <p class="linhvuc pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Địa chỉ:</b></p>
                        <p class="diachi pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Email:</b></p>
                        <p class="email pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Điện thoại:</b></p>
                        <p class="dienthoai pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Fax:</b></p>
                        <p class="fax pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Website:</b></p>
                        <p class="website pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Số đăng ký kinh doanh:</b></p>
                        <p class="sdkkd pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Ngày cấp:</b></p>
                        <p class="ngaycap pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Nơi cấp:</b></p>
                        <p class="noicap pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Mã số thuế:</b></p>
                        <p class="masothue pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Subdomain:</b></p>
                        <p class="subdomain pl-2"></p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="col-md-12 text-center">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('js')
    <script src="{{ asset('AdminLTE/admin/company/index/company.js') }}"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@endsection
