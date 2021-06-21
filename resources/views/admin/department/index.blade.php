@extends('admin.layouts.admin')

@section('title')
    <title>Sở ngành | Danh sách</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{ asset('AdminLTE/admin/department/index/department.css') }}">
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
                                        <a href="{{route('department.edit', ['id' => $department->id])}}" class="department-item">
                                            {{ $department->tenso }}</a>
                                    </td>
                                    <td>{{ $department->diachiso }}</td>
                                    <td>{{ $department->emailso }}</td>
                                    <td>{{ $department->dienthoaiso }}</td>
                                    <td>{{ $department->faxso }}</td>
                                    <td>{{ $department->webso }}</td>
                                    <td class="text-center">
                                        @if($department->company->isEmpty())
                                            <a class="btn btn-sm btn-danger delete-department" href="{{route('department.delete', ['id' => $department->id])}}">
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

<!-- Modal Add Category -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="col-md-12">
                    <h4><b>Thêm Sở/Ngành</b></h4><hr>
                </div>
                <form action="{{ route('department.store') }}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Sở ngành *</label>
                                <input type="text" class="form-control @error('tenso') is-invalid @enderror"
                                        name="tenso" placeholder="Sở ngành" value="{{ old('tenso') }}">
                                @error('tenso')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Địa chỉ *</label>
                                <input type="text" class="form-control @error('diachiso') is-invalid @enderror"
                                    name="diachiso" placeholder="Địa chỉ" value="{{ old('diachiso') }}">
                                @error('diachiso')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Email *</label>
                                <input type="text" class="form-control @error('emailso') is-invalid @enderror"
                                        name="emailso" placeholder="Email" value="{{ old('emailso') }}">
                                @error('emailso')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Điện thoại</label>
                                <input type="text" class="form-control @error('dienthoaiso') is-invalid @enderror"
                                        name="dienthoaiso" placeholder="Điện thoại" value="{{ old('dienthoaiso') }}">
                                @error('dienthoaiso')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Fax</label>
                                <input type="text" class="form-control @error('faxso') is-invalid @enderror"
                                        name="faxso" placeholder="Fax" value="{{ old('faxso') }}">
                                @error('faxso')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Website * (https:// hoặc http://)</label>
                                <input type="text" class="form-control @error('webso') is-invalid @enderror"
                                        name="webso" placeholder="Website" value="{{ old('webso') }}">
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
@endsection

@section('js')
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="{{ asset('AdminLTE/admin/department/index/department.js') }}"></script>
@endsection
