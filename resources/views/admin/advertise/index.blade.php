@extends('admin.layouts.admin')

@section('title')
    <title>Quảng cáo | Danh sách</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{asset('AdminLTE/dist/css/mystyle2.css')}}">
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
                                    <th scope="col">Loại sự kiện</th>
                                    <th scope="col">Ngày tạo</th>
                                    <th scope="col"></th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($advertises as $key => $item)
                                    <tr>
                                        <th scope="row">{{ $item->id }}</th>
                                        <td>
                                            <a href="" class="tieudequangcao"
                                                data-toggle="modal" data-target="#exampleModal"
                                                data-id="{{ $item->id }}">{{ $item->tieudequangcao }}</a>
                                        </td>
                                        <td class="text-center" >
                                            <input type="checkbox" id="loaiquangcao" data-id="{{ $item->id }}" value="{{ $item->loaiquangcao }}" {{ $item->loaiquangcao == 1 ? "checked" : "" }}>
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

<!-- Modal1 -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <div class="col-md-6">
                    <h5 class="modal-title" id="exampleModalLongTitle"
                        style="font-size: 18px; font-weight: bold; color: red">Chi tiết quảng cáo</h5>
                </div>
                <div class="col-md-4 text-right">
                    <p class="modal-title ngaydang"
                        style="font-size: 15px;"></p>
                </div>
            </div>
            <div class="modal-body">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 show-advertise" style="text-align: justify">
                            <p class="tieude" style="font-size: 28px"></p>
                            <p class="tomtat"></p>
                            <p><img src="" style="width:440px; height: 400px" class="hinhanh"></p>
                            <p style="font-style: italic; font-weight: 10px; text-align: center"
                                class="mt-0">Hình ảnh chỉ mang tính chất minh họa</p>
                            <div class="noidung"></div>
                            <div class="video"></div>
                            <p class="tacgia" style="font-size: 15px; float: right"></p>
                        </div>
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
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        $(document).ready(function(){
            $('.item-news').on('click', function() {
                let url = $(this).data('url');
                window.location = url;
            });

            $(document).on('click', '.tieudequangcao', function() {
                var idAdvertise = $(this).data('id');
                $.ajax({
                    url : "{{ route('advertise.view') }}",
                    type : "post",
                    data : {
                        "idAdvertise":idAdvertise,
                        "_token": "{{ csrf_token() }}"
                    },
                    success:function(data) {
                        // console.log(data);
                        $('.ngaydang').html('Tạo ngày ' + data.date);
                        $('.show-advertise').html(data.output);
                    }
                });
            });

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

            $(document).on('click', '#loaiquangcao', function() {
                var id = $(this).data('id');
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

                        $('#loaiquangcao').val(data);
                    }
                });
            });
        });
    </script>
@endsection
