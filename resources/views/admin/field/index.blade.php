@extends('admin.layouts.admin')

@section('title')
    <title>Lĩnh vực | Danh sách</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{ asset('AdminLTE/admin/field/index/field.css') }}">
@endsection

@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'DANH SÁCH', 'key' => 'LĨNH VỰC'])
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
                                        <th scope="col">Lĩnh vực</th>
                                        <th scope="col">Mô tả</th>
                                        <th scope="col"></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach( $fields as $key => $field )
                                    <tr>
                                        <th scope="row">{{$field->id}}</th>
                                        <td>{{ $field->tenlinhvuc }}</td>
                                        <td>{{ $field->motalinhvuc }}</td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item text-info" href="{{ route('field.edit', ['id' => $field->id]) }}">Chỉnh sửa</a>
                                                    @if( $field->category->isEmpty() && $field->company->isEmpty() )
                                                    <a class="dropdown-item text-danger" href="{{ route('field.delete', ['id' => $field->id]) }}">Xóa</a>
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
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="col-md-12">
                        <h4><b>Thêm lĩnh vực</b></h4><hr>
                    </div>
                    <form action="{{ route('field.store') }}" method="post">
                        @csrf
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Lĩnh vực *</label>
                                    <input type="text" class="form-control @error('tenlinhvuc') is-invalid @enderror"
                                            name="tenlinhvuc" placeholder="Tên lĩnh vực"
                                            value="{{ old('tenlinhvuc') }}">
                                    @error('tenlinhvuc')
                                    <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Mô tả *</label>
                                    <textarea class="form-control @error('motalinhvuc') is-invalid @enderror"
                                        name="motalinhvuc" rows="5" placeholder="Mô tả lĩnh vực">{{ old('motalinhvuc') }}</textarea>
                                    @error('motalinhvuc')
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
    <script src="{{ asset('AdminLTE/admin/field/index/field.js') }}"></script>
@endsection
