@extends('admin.layouts.admin')

@section('title')
    <title>Chuyên mục | Danh sách</title>
@endsection
@section('css')
    <link rel="stylesheet" href="{{asset('vendor/css/select2.css')}}">
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
    @include('admin.partials.content-header', ['name' => 'DANH SÁCH', 'key' => 'DANH MỤC'])
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
                                <th scope="col">Chuyên mục</th>
                                <th scope="col">Lĩnh vực</th>
                                <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($categories as $key => $category)
                                <tr>
                                    <th scope="row">{{$category->id}}</th>
                                    <td>{{$category->tenchuyenmuc}}</td>
                                    <td>{{$category->field->tenlinhvuc}}</td>
                                    <td>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"
                                                    aria-haspopup="true" aria-expanded="false">Tùy chọn</button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="{{route('category.edit', ['id' => $category->id])}}">Chỉnh sửa</a>
                                                @if($category->news->isEmpty())
                                                <a class="dropdown-item" href="{{route('category.delete', ['id' => $category->id])}}">Xóa</a>
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
                    <h4><b>Thêm chuyên mục</b></h4><hr>
                </div>
                <form action="{{route('category.store')}}" method="post">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Danh mục *</label>
                                <input type="text" class="form-control @error('tenchuyenmuc') is-invalid @enderror"
                                        name="tenchuyenmuc" placeholder="Danh mục">
                                @error('tenchuyenmuc')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Lĩnh vực *</label>
                                <select class="form-control deparment-selected @error('idlinhvuc') is-invalid @enderror"
                                        name="idlinhvuc">
                                    <option value=""></option>
                                    @foreach($fields as $field)
                                        <option value="{{$field->id}}">{{$field->tenlinhvuc}}</option>
                                    @endforeach
                                </select>
                                @error('idlinhvuc')
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
    <script src="{{ asset('vendor/js/select2.js') }}"></script>
    <script>
        $(document).ready(function() {
            $(function(){
                $(".deparment-selected").select2({
                    tags: false,
                    placeholder : 'Chọn vai trò',
                    theme: "classic",
                    width: "100%",
                    // multiple: true
                })
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
