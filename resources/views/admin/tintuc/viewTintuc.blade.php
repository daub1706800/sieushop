@extends('admin.layouts.admin')

@section('title')
    <title>Tin tức | Nội dung</title>
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'NỘI DUNG', 'key' => 'TIN TỨC'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form action="{{route('tintuc.editTintuc')}}" method="post" enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="row">
                            <div class="form-group col-md-6">
                                <input type="hidden" name="id"value="{{$data->id}}">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="hidden" name="idchuyenmuc" value="{{$data->idchuyenmuc}}">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="hidden" name="idcongty" value="{{$data->idcongty}}">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="hidden" name="idtaikhoan" value="{{$data->idtaikhoan}}">
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Hình ảnh tiêu đề *</label><br>
                                <img src='{{$data->hinhanhtintuc}}' style="width:320px; height:240px; margin-top:10px">
                            </div>
                            <div class="form-group col-md-4">
                                <label>Video tin tức</label><br>
                                <video width="320px" height="240px" controls>
                                    <source src="{{$data->videotintuc}}" type="video/mp4">
                                </video>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Tiêu đề tin tức *</label>
                            <input type="text" class="form-control" name="tieudetintuc" value="{{$data->tieudetintuc}}" disabled>
                        </div>
                        <div class="form-group">
                            <label>Tóm tắt tin tức*</label>
                            <p>{!!$data->tomtattintuc!!}</p>
                        </div>
                        <div class="form-group">
                            <label>Nội dung chính*</label>
                            <p>{!!$data->noidungtintuc!!}</p>
                        </div>
                        @if($data->loaitintuc === 1)
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1" name="tinnoibat" value="1" checked disabled>
                            <label class="form-check-label" for="exampleCheck1">Tin nổi bật</label>
                        </div>
                        @else
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1" name="tinnoibat" value="1" disabled>
                            <label class="form-check-label" for="exampleCheck1">Tin nổi bật</label>
                        </div>
                        @endif
                    </form>
                </div>
                
                
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
@endsection


