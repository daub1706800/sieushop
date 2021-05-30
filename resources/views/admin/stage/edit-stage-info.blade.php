@extends('admin.layouts.admin')

@section('title')
<title>Công việc {{ $stageInfo->tencongviec }} | Chỉnh sửa</title>
@endsection

@section('css')
    <!-- include datepicker3 css -->
    <link rel="stylesheet" href="{{ asset('vendor/css/datepicker3.css') }}"/>
    <!-- include summernote css -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
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
    @include('admin.partials.content-header', ['name' => 'SỬA', 'key' => 'CÔNG VIỆC : '.$stageInfo->tencongviec])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form action="{{ route('stage-info.update', ['stageInfo_id' => $stageInfo->id, 'stage_id' => $stage_id, 'product_id' => $product_id]) }}" method="post">
                        @csrf
                        <div class="col-md-12 row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="">Tên công việc *</label>
                                    <input type="text" class="form-control @error('tencongviec') is-invalid @enderror"
                                        name="tencongviec" placeholder="Tên công việc"
                                        value="{{ $stageInfo->tencongviec }}">
                                </div>
                                @error('tencongviec')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Thời gian bắt đầu *</label>
                                    <input type="text" class="form-control @error('thoigianbatdau') is-invalid @enderror"
                                        name="thoigianbatdau" placeholder="YYYY-MM-DD"
                                        value="{{ $stageInfo->thoigianbatdau }}">
                                </div>
                                @error('thoigianbatdau')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Thời gian dự kiến *</label>
                                    <input type="text" class="form-control @error('thoigiandukien') is-invalid @enderror"
                                        name="thoigiandukien" placeholder="VD: 1 tháng"
                                        value="{{ $stageInfo->thoigiandukien }}"/>
                                </div>
                                @error('thoigiandukien')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Thời gian hoàn thành *</label>
                                    <input type="text" class="form-control @error('thoigianhoanthanh') is-invalid @enderror"
                                        name="thoigianhoanthanh" placeholder="YYYY-MM-DD"
                                        value="{{ $stageInfo->thoigianhoanthanh }}"/>
                                </div>
                                @error('thoigianhoanthanh')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Trễ hạn *</label>
                                    <input class="form-control" name="trehan"
                                        placeholder="VD: 0 tháng" type="text" value="{{ $stageInfo->trehan }}"/>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="">Mô tả công việc *</label>
                                    <textarea name="motacongviec" class="form-control summernote @error('motacongviec') is-invalid @enderror">{{ $stageInfo->motacongviec }}</textarea>
                                </div>
                                @error('motacongviec')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12 text-center">
                            <button type="submit" class="btn btn-primary btn-submit-stage mb-5">Lưu chỉnh sửa</button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
@endsection

@section('js')
    <script type="text/javascript" src="{{ asset("vendor/js/datepicker.js") }}"></script>
    <!-- include summernote js -->
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    {{-- <script type="text/javascript" src="{{ asset("vendor/js/summernote.js") }}"></script> --}}
    <script>
        function back(){
            history.back();
        }

        $(document).ready(function() {
            $('.summernote').summernote({
                height: 200,                 // set editor height
                minHeight: null,             // set minimum height of editor
                maxHeight: null,             // set maximum height of editor
                focus: false,                  // set focus to editable area after initializing summernote
                codemirror: { // codemirror options
                    theme: 'monokai'
                },
                placeholder: "Nhập mô tả cho công việc"
            });
        });
    </script>
    <script>
        $(document).ready(function(){
            var date_input=$('input[name="thoigianbatdau"]');
            var date_input2=$('input[name="thoigianhoanthanh"]');
            var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
            var options={
                format: 'yyyy-mm-dd',
                container: container,
                todayHighlight: true,
                autoclose: true,
            };
            date_input.datepicker(options);
            date_input2.datepicker(options);
        });
    </script>
    {{-- <script>
        $(document).ready(function(){
            var i = $('#nav-tab').data('count'), // Lấy số lượng tab ban đầu từ thẻ div là 1
                stage_id = $('#stage-id').data('id'); // Lấy id stage

            $.ajax({
                url : "{{ route('stage.count-stage-info') }}",
                type : "get",
                data : {stage_id:stage_id},
                success : function(data)
                {
                    if(data.count > 0)
                    {
                        i = data.count;
                        $('#nav-tab').attr('data-count', i);
                        $('#nav-tab').html('<a class="nav-item nav-link active nav-count" id="nav-'+i+'-tab" data-toggle="tab" href="#nav-'+i+'" role="tab" aria-controls="nav-'+i+'" aria-selected="true" data-index="'+i+'">Công việc '+i+'</a>');
                        $('#nav-tabContent').html('<div class="tab-pane fade active show tab-pane-count" id="nav-'+i+'" role="tabpanel" aria-labelledby="nav-'+i+'-tab"><div class="row"><div class="col-md-12 row"><div class="col-md-6"><div class="form-group"><label for="">Tên công việc *</label><input type="text" class="form-control" name="tencongviec[]" placeholder="Tên công việc"></div></div><div class="col-md-6"><div class="form-group"><label for="">Thời gian bắt đầu *</label><input class="form-control datepicker" name="thoigianbatdau[]" placeholder="YYYY-MM-DD" type="text"/></div></div><div class="col-md-6"><div class="form-group"><label for="">Thời gian dự kiến *</label><input class="form-control" name="thoigiandukien[]" placeholder="VD: 1 tháng" type="text"/></div></div><div class="col-md-6"><div class="form-group"><label for="">Thời gian hoàn thành *</label><input class="form-control datepicker" name="thoigianhoanthanh[]" placeholder="YYYY-MM-DD" type="text"/></div></div><div class="col-md-12"><div class="form-group"><label for="">Mô tả công việc *</label><textarea name="motacongviec[]" class="form-control summernote"></textarea></div></div></div></div>');
                    }
                }
            });

            // Thêm tab
            $('.add-work').click(function(e){
                e.preventDefault();
                i++; // Tăng i lên 1 đơn vị;
                $('#nav-tab').attr('data-count', i);
                $('#nav-tab').append('<a class="nav-item nav-link nav-count" id="nav-'+i+'-tab" data-toggle="tab" href="#nav-'+i+'" role="tab" aria-controls="nav-'+i+'" aria-selected="false" data-index="'+i+'">Công việc '+i+'</a>');
                $('#nav-tabContent').append('<div class="tab-pane fade tab-pane-count" id="nav-'+i+'" role="tabpanel" aria-labelledby="nav-'+i+'-tab"><div class="row"><div class="col-md-12"><button class="btn btn-danger delete-work float-right" data-index="'+i+'">Xóa công việc</button></div><div class="col-md-12 row"><div class="col-md-6"><div class="form-group"><label for="">Tên công việc *</label><input type="text" class="form-control" name="tencongviec[]" placeholder="Tên công việc"></div></div><div class="col-md-6"><div class="form-group"><label for="">Thời gian bắt đầu *</label><input class="form-control datepicker" name="thoigianbatdau[]" placeholder="YYYY-MM-DD" type="text"/></div></div><div class="col-md-6"><div class="form-group"><label for="">Thời gian dự kiến *</label><input class="form-control" name="thoigiandukien[]" placeholder="VD: 1 tháng" type="text"/></div></div><div class="col-md-6"><div class="form-group"><label for="">Thời gian hoàn thành *</label><input class="form-control datepicker" name="thoigianhoanthanh[]" placeholder="YYYY-MM-DD" type="text"/></div></div><div class="col-md-12"><div class="form-group"><label for="">Mô tả công việc *</label><textarea name="motacongviec[]" class="form-control summernote"></textarea></div></div></div></div>');

            });

            // Xóa tab
            $(document).on('click', '.delete-work', function(){
                var index = $(this).data('index'), // Lấy vị trí tab cần xóa
                    count = 0, // Biến đếm tab bắt đầu từ 0;
                    last_item = 1; // Biến đếm số lượng tab-pane bắt đầu từ 1;

                $(this).parents().find('#nav-'+index+'-tab').remove(); // Xóa nav-tab ở vị trí index
                $(this).parents().find('#nav-'+index).remove(); // Xóa tab-pane ở vị trí index

                // Dời các tab sau vị trí tab bị xóa về trước
                $('.nav-count').each(function(a){
                    var index_nav = $(this).data('index');
                    a++;
                    // Nếu vị trí của tab hiện tại >= vị trí tab cần xóa thì dời về trước 1 đơn vị (a bắt đầu từ 0 => a lúc nào cũng nhỏ hơn index 1 đơn vị);
                    if(index_nav >= index)
                    {
                        $(this).text('Công việc '+(index_nav-1));
                        $(this).attr('id', 'nav-'+(index_nav-1)+'-tab');
                        $(this).attr('href', '#nav-'+(index_nav-1));
                        $(this).attr('aria-controls', 'nav-'+(index_nav-1));
                    }
                    count = $(this).data('index');
                });

                // Dời các tab-pane sau vị trí tab bị xóa về trước
                $('.tab-pane-count').each(function(a){
                    var index_pane = $(this).children('.delete-work').data('index');
                    console.log(index_pane);
                    a++;
                    // Tương tự trên
                    if(index_pane >= index)
                    {
                        $(this).attr('id', 'nav-'+(index_pane-1));
                        $(this).attr('aria-labelledby', 'nav-'+(index_pane-1)+'-tab');
                        $(this).find('button').attr('data-index', (index_pane-1));
                        count = (index_pane-1);
                    }
                });

                i = count; // Gán lại i bằng tổng số tab
                $('#nav-tab').attr('data-count', i); // Gán lại số lượng tab cho thẻ div

                // Kiểm tra nếu vị trí tab được chọn là tab cuối cùng thì active tab trước nó
                if(index == (count+1))
                {
                    $('#nav-'+(index-1)+'-tab').addClass('active');
                    $('#nav-'+(index-1)+'-tab').attr('aria-selected', 'true');
                    $('#nav-'+(index-1)).addClass('active show');
                }
                else // Ngược lại thì active tab được dời lên ngay vị trí của nó
                {
                    $('#nav-'+(index)+'-tab').addClass('active');
                    $('#nav-'+(index)+'-tab').attr('aria-selected', 'true');
                    $('#nav-'+(index)).addClass('active show');
                }
            });
        });
    </script> --}}
@endsection
