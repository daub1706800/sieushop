@extends('admin.layouts.admin')

@section('title')
    <title>Quảng cáo | Danh sách</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('AdminLTE/dist/css/mystyle2.css')}}">
    <style>
        .loaiquangcao{
            transform: scale(1.5, 1.5);
        }
    </style>
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'DANH SÁCH', 'key' => 'QUẢNG CÁO'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <a href="{{ route('advertise.add') }}" class="btn btn-primary float-right m-2"><i class="fas fa-plus"></i></a></a>
                </div>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Tiêu đề</th>
                                    <th scope="col">Quảng cáo sự kiện</th>
                                    <th scope="col">Loại banner</th>
                                    <th scope="col">Ngày tạo</th>
                                    <th scope="col"></th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($advertises as $key => $item)
                                    <tr>
                                        <th scope="row">{{ $item->id }}</th>
                                        <td>{{ $item->tieudequangcao }}</td>
                                        <td class="text-center" >
                                            <input type="checkbox" class="loaiquangcao" data-id="{{ $item->id }}" value="{{ $item->loaiquangcao }}" {{ $item->loaiquangcao == 1 ? "checked" : "" }}>
                                        </td>
                                        <td>
                                            @if ($item->advertiseimage->first()->loaibanner == 0)
                                                Dọc
                                            @elseif ($item->advertiseimage->first()->loaibanner == 1)
                                                Ngang
                                            @else
                                                Vuông
                                            @endif
                                        </td>
                                        <td>{{ $item->ngaytaoquangcao }}</td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                        aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="{{ route('advertise.edit', ['id' => $item->id]) }}">Chỉnh sửa</a>
                                                    <a class="dropdown-item" href="{{ route('advertise.delete', ['id' => $item->id]) }}">Xóa</a>
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
@endsection

@section('js')
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        $(document).ready(function(){
            const Toast = Swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                timer: 1000,
                timerProgressBar: false,
                didOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                }
            });

            $(document).on('click', '.loaiquangcao', function() {
                var id = $(this).data('id');
                var that = $(this);
                if ($(this).val() == 1) {
                    var status = 1;
                }
                else
                {
                    var status = 0;
                }
                $.ajax({
                    url : "{{ route('advertise.change-status') }}",
                    type: "get",
                    data: {
                        "id":id,
                        "status":status
                    },
                    success:function(data) {
                        Toast.fire({
                            icon: 'success',
                            title: 'Chuyển đổi thành công'
                        });

                        that.val(data);
                        
                    }
                });
            });
        });
    </script>
@endsection
