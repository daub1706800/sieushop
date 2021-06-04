@extends('admin.layouts.admin')

@section('title')
    <title>Kho | Danh sách</title>
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
                                    <th scope="col"></th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($storages as $key => $storage)
                                    <tr>
                                        <th scope="row">{{ $storage->id }}</th>
                                        <td><a href="" class="storage-item"
                                            data-toggle="modal" data-target="#exampleModalScrollable"
                                            data-id="{{ $storage->id }}">{{ $storage->tenkho }}</a>
                                        </td>
                                        <td>{{ $storage->diachikho }}</td>
                                        <td>{{ $storage->taitrongkho }}</td>
                                        <td>{{ $storage->dientichkho }}</td>
                                        <td>{{ $storage->sonhanvienkho }}</td>
                                        <td>{{ $storage->ghichukho }}</td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="{{ route('storage.edit', ['id' => $storage->id]) }}">Chỉnh sửa</a>
                                                    @if($storage->product->isEmpty())
                                                    <a class="dropdown-item" href="{{ route('storage.delete', ['id' => $storage->id]) }}">Xóa</a>
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

<!-- Modal Add Storage -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="col-md-12">
                    <h4><b>Thêm kho</b></h4><hr>
                </div>
                <form action="{{route('storage.store')}}" method="post">
                    @csrf
                    <div class="col-md-12">
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

<!-- Modal -->
<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <div class="col-md-4">
                    <h5 class="modal-title tenkho" id="exampleModalScrollableTitle"
                        style="font-size: 18px; font-weight: bold; color: red">Modal title</h5>
                </div>
                <div class="col-md-4 offset-md-4 text-right">
                    <p class="modal-title taongay"
                        style="font-size: 15px;"></p>
                </div>
            </div>
            <div class="modal-body">
                <div class="col-md-12">
                    <div class="row">
                        <p><b>Công ty:</b></p>
                        <p class="congty pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Địa chỉ kho:</b></p>
                        <p class="diachikho pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Tải trọng:</b></p>
                        <p class="taitrongkho pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Diện tích:</b></p>
                        <p class="dientichkho pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Tổng số NV:</b></p>
                        <p class="sonhanvien pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Người tạo:</b></p>
                        <p class="nguoitao pl-2"></p>
                    </div>
                    <div class="row">
                        <p><b>Ghi chú:</b></p>
                        <p class="ghichukho pl-2"></p>
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
        $(document).ready(function(){
            $(function() {
                var error = $('.alert-custom').html();
                if(error != null)
                {
                    $('#btn-modal-click').click();
                }
            });

            $(document).on('click', '.storage-item', function() {
                var idStorage = $(this).data('id');
                $.ajax({
                    url : "{{ route('storage.view') }}",
                    type : "post",
                    data : {
                        "idStorage":idStorage,
                        "_token": "{{ csrf_token() }}"
                    },
                    success:function(data) {
                        // console.log(data);
                        $('.tenkho').text(data.storage.tenkho);
                        $('.diachikho').text(data.storage.diachikho);
                        $('.taitrongkho').text(data.storage.taitrongkho + ' (tấn)');
                        $('.dientichkho').text(data.storage.dientichkho + ' (mét vuông)');
                        $('.sonhanvien').text(data.storage.sonhanvienkho);
                        $('.ghichukho').text(data.storage.ghichukho);
                        $('.nguoitao').text(data.author);
                        $('.congty').text(data.company);
                        $('.taongay').text('Tạo ngày ' + data.date);
                    }
                });
            });
        });
    </script>
@endsection
