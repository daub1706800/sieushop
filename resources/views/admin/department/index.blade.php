@extends('admin.layouts.admin')

@section('title')
    <title>Sở ngành | Danh sách</title>
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
    @include('admin.partials.content-header', ['name' => 'DANH SÁCH', 'key' => 'SỞ NGÀNH'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <a id="btn-modal-click" href="" class="btn btn-primary float-right mb-3" data-toggle="modal" data-target="#exampleModal"
                    data-whatever="@getbootstrap"><i class="fas fa-plus"></i></a>
            </div>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                <th scope="col">#</th>
                                <th scope="col">Sở ngành</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Email</th>
                                <th scope="col">Điện thoại</th>
                                <th scope="col">Fax</th>
                                <th scope="col">Website</th>
                                <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach( $departments as $key => $department )
                                <tr>
                                    <th scope="row">{{$department->id}}</th>
                                    <td>
                                        <a href="" class="department-item"
                                            data-toggle="modal" data-target="#exampleModalScrollable"
                                            data-id="{{ $department->id }}">{{ $department->tenso }}</a>
                                    </td>
                                    <td>{{ $department->diachiso }}</td>
                                    <td>{{ $department->emailso }}</td>
                                    <td>{{ $department->dienthoaiso }}</td>
                                    <td>{{ $department->faxso }}</td>
                                    <td>{{ $department->webso }}</td>
                                    <td>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="{{route('department.edit', ['id' => $department->id])}}">Chỉnh sửa</a>
                                                @if($department->company->isEmpty())
                                                <a class="dropdown-item" href="{{route('department.delete', ['id' => $department->id])}}">Xóa</a>
                                                @endif
                                            </div>
                                        </div>
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

<!-- Modal Add Category -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="col-md-12">
                    <h4><b>Thêm Sở/Ngành</b></h4><hr>
                </div>
                <form action="{{route('department.store')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Sở ngành *</label>
                                <input type="text" class="form-control @error('tenso') is-invalid @enderror"
                                        name="tenso" placeholder="Sở ngành">
                                @error('tenso')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Địa chỉ *</label>
                                <input type="text" class="form-control @error('diachiso') is-invalid @enderror"
                                    name="diachiso" placeholder="Địa chỉ">
                                @error('diachiso')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Email *</label>
                                <input type="text" class="form-control @error('emailso') is-invalid @enderror"
                                        name="emailso" placeholder="Email">
                                @error('emailso')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Điện thoại</label>
                                <input type="text" class="form-control @error('dienthoaiso') is-invalid @enderror"
                                        name="dienthoaiso" placeholder="Điện thoại">
                                @error('dienthoaiso')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Fax</label>
                                <input type="text" class="form-control @error('faxso') is-invalid @enderror"
                                        name="faxso" placeholder="Fax">
                                @error('faxso')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Website * (https:// hoặc http://)</label>
                                <input type="text" class="form-control @error('webso') is-invalid @enderror"
                                        name="webso" placeholder="Website">
                                @error('webso')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12 text-center">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                            <button type="submit" class="btn btn-primary">Lưu</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <div class="col-md-7">
                    <h5 class="modal-title tenso" id="exampleModalScrollableTitle"
                        style="font-size: 18px; font-weight: bold; color: red">Modal title</h5>
                </div>
                <div class="col-md-5 text-right">
                    <p class="modal-title taongay"
                        style="font-size: 15px;"></p>
                </div>
            </div>
            <div class="modal-body">
                <div class="col-md-12">
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
    <script>
        $(document).ready(function() {
            $(function () {
                var errors = $('.alert-custom').html();
                if (errors != null) {
                    $('#btn-modal-click').click();
                }
            });

            $(document).on('click', '.department-item', function() {
                var idDepartment = $(this).data('id');
                $.ajax({
                    url : "{{ route('department.view') }}",
                    type : "post",
                    data : {
                        "idDepartment":idDepartment,
                        "_token": "{{ csrf_token() }}"
                    },
                    success:function(data) {
                        console.log(data);
                        $('.tenso').text(data.department.tenso);
                        $('.taongay').text('Ngày tạo ' + data.date);
                        $('.diachi').text(data.department.diachiso);
                        $('.email').text(data.department.emailso);
                        $('.dienthoai').text(data.department.dienthoaiso);
                        $('.fax').text(data.department.faxso);
                        $('.website').text(data.department.webso);
                    }
                });
            });
        });
    </script>
@endsection
