@extends('admin.layouts.admin')

@section('title')
    <title>Kho | Danh sách</title>
@endsection
@section('css')
    <link rel="stylesheet" href="{{asset('vendor/css/select2.css')}}">
    <link rel="stylesheet" href="{{ asset('AdminLTE/admin/storage/index/storage.css') }}">
@endsection
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'DANH SÁCH', 'key' => 'KHO'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                <a id="btn-modal-click" href="" class="btn btn-primary float-right m-2"
                    data-toggle="modal" data-target="#exampleModal"
                    data-whatever="@getbootstrap"><i class="fas fa-plus"></i></a>
                </div>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                          <table id="example1" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Tên kho</th>
                                    <th scope="col">Địa chỉ kho</th>
                                    <th scope="col">Tải trọng (tấn)</th>
                                    <th scope="col">Diện tích (m2)</th>
                                    <th scope="col">Số nhân viên</th>
                                    <th scope="col">Ghi chú</th>
                                    <th scope="col">Công ty</th>
                                    <th scope="col"></th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($storages as $key => $storage)
                                    <tr>
                                        <th scope="row">{{ $storage->id }}</th>
                                        <td>
                                            <a href="{{ route('admin.storage.edit', ['id' => $storage->id]) }}">{{ $storage->tenkho }}</a>
                                        </td>
                                        <td>{{ $storage->diachikho }}</td>
                                        <td>{{ $storage->taitrongkho }}</td>
                                        <td>{{ $storage->dientichkho }}</td>
                                        <td>{{ $storage->sonhanvienkho }}</td>
                                        <td>{{ $storage->ghichukho }}</td>
                                        <td>{{ $storage->company->tencongty }}</td>
                                        <td class="text-center">
                                            @if($storage->product->isEmpty())
                                                <a class="btn btn-sm btn-danger delete-storage" href="{{ route('admin.storage.delete', ['id' => $storage->id]) }}">
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

<!-- Modal Add Storage -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="col-md-12">
                    <h4><b>Thêm kho</b></h4><hr>
                </div>
                <form action="{{route('admin.storage.store')}}" method="post">
                    @csrf
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Công ty *</label>
                            <select class="form-control company-selected @error('idcongty') is-invalid @enderror" name="idcongty">
                                <option value=""></option>
                                @foreach($companies as $company)
                                    <option value="{{$company->id}}">{{$company->tencongty}}</option>
                                @endforeach
                            </select>
                        </div>
                        @error('idcongty')
                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                        @enderror
                        <div class="form-group">
                            <label>Tên kho *</label>
                            <input type="text" class="form-control @error('tenkho') is-invalid @enderror"
                                name="tenkho" value="{{ old('tenkho') }}"
                                placeholder="Tên kho">
                        </div>
                        @error('tenkho')
                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Tải trọng (tấn) *</label>
                            <input type="text" class="form-control @error('taitrongkho') is-invalid @enderror"
                                name="taitrongkho" value="{{ old('taitrongkho') }}"
                                placeholder="Tải trọng kho">
                        </div>
                        @error('taitrongkho')
                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Diện tích (m2) *</label>
                            <input type="text" class="form-control @error('dientichkho') is-invalid @enderror"
                                name="dientichkho" value="{{ old('dientichkho') }}"
                                placeholder="Diện tích kho">
                        </div>
                        @error('dientichkho')
                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Tổng số nhân viên *</label>
                            <input type="text" value="{{ old('sonhanvienkho') }}"
                                class="form-control @error('sonhanvienkho') is-invalid @enderror"
                                name="sonhanvienkho" placeholder="Tổng số nhân viên kho">
                        </div>
                        @error('sonhanvienkho')
                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Địa chỉ *</label>
                            <input type="text" class="form-control @error('diachikho') is-invalid @enderror"
                                name="diachikho" value="{{ old('diachikho') }}"
                                placeholder="Địa chỉ kho">
                        </div>
                        @error('diachikho')
                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Ghi chú *</label>
                            <textarea class="form-control @error('ghichukho') is-invalid @enderror" rows="5"
                                name="ghichukho" placeholder="Ghi chú kho">{{ old('ghichukho') }}</textarea>
                        </div>
                        @error('ghichukho')
                        <div class="alert alert-danger alert-custom">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-12 text-center">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                        <button type="submit" class="btn btn-primary">Lưu</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@section('js')
    <script src="{{ asset('vendor/js/select2.js') }}"></script>
    <script src="{{ asset('AdminLTE/admin/storage/index/storage.js') }}"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@endsection

