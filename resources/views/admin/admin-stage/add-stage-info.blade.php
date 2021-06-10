@extends('admin.layouts.admin')

@section('title')
<title>Giai đoạn sản phẩm | Thêm mới</title>
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
            display: none;
        }
    </style>
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('admin.partials.content-header', ['name' => 'THÊM', 'key' => 'CÔNG VIỆC CHO : '.$stage->tengiaidoan])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 row">
                    <div class="col-md-6">
                        <h4 id="stage-id" data-id="{{ $stage->id }}">{{ $stage->motagiaidoan }}</h4>
                    </div>
                    <div class="col-md-6">
                        <a href="" class="btn btn-primary float-right add-work"><i class="fas fa-plus"></i></a>
                    </div>
                </div>
                <div class="col-md-12">
                    <form id="form-stageInfo" action="{{ route('admin.stage-info.store', ['stage_id' => $stage->id, 'product_id' => $product_id]) }}"
                            method="post">
                        @csrf
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist" data-count="1">
                                <a class="nav-item nav-link active nav-count first-tab" id="nav-1-tab" data-toggle="tab" href="#nav-1"
                                    role="tab" aria-controls="nav-1" aria-selected="true" data-index="1">Công việc 1</a>
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active tab-pane-count" id="nav-1" role="tabpanel" aria-labelledby="nav-1-tab">
                                <div class="row">
                                    <div class="col-md-12">
                                        <button class="delete-work" data-index="1" style="visibility: hidden;"></button>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="">Tên công việc *</label>
                                            <input type="text" class="form-control validated validated-tencongviec enter-keydown"
                                                    name="tencongviec[]" placeholder="Tên công việc" value="{{ old('tencongviec') }}" autofocus>
                                        </div>
                                        <div class="alert alert-danger alert-custom validate-tencongviec"></div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="">Thời gian bắt đầu *</label>
                                                    <input type="text" class="form-control validated validated-thoigianbatdau enter-keydown"
                                                            name="thoigianbatdau[]" placeholder="{{ now()->format('Y-m-d') }}" value="{{ old('thoigianbatdau') }}">
                                                </div>
                                                <div class="alert alert-danger alert-custom validate-thoigianbatdau"></div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="">Thời gian dự kiến (ngày) *</label>
                                                    <input class="form-control validated validated-thoigiandukien enter-keydown" name="thoigiandukien[]"
                                                            placeholder="{{ now()->format('d') }}" type="text" value="{{ old('thoigiandukien') }}">
                                                </div>
                                                <div class="alert alert-danger alert-custom validate-thoigiandukien"></div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="">Thời gian hoàn thành</label>
                                                    <input class="form-control validated validated-thoigianhoanthanh enter-keydown" name="thoigianhoanthanh[]"
                                                            placeholder="{{ now()->format('Y-m-d') }}" type="text" value="{{  old('thoigianhoanthanh') }}">
                                                </div>
                                                <div class="alert alert-danger alert-custom validate-thoigianhoanthanh"></div>
                                            </div>
                                            <div class="col-md-6 som-tre-han">
                                                <div class="form-group">
                                                    <label class="trangthai">Sớm/Trễ hạn (ngày)</label>
                                                    <input type="text" class="form-control validated validated-trehan enter-keydown"
                                                            name="trehan[]" value="0" readonly>
                                                </div>
                                                <div class="alert alert-danger alert-custom validate-trehan"></div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="">Mô tả công việc *</label>
                                                    <textarea name="motacongviec[]" class="form-control summernote validated validated-motacongviec">{{ old('motacongviec') }}</textarea>
                                                </div>
                                                <div class="alert alert-danger alert-custom validate-motacongviec"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 text-center">
                            <button type="submit" id="btn-submit-stageInfo" class="btn btn-primary mb-5">Lưu</button>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.17.1/moment-with-locales.min.js"></script>
    <script>
        $(document).ready(function() {
            initSumernote();

            function initSumernote() {
                $('.summernote').summernote({
                    height: 200,                 // set editor height
                    minHeight: 200,             // set minimum height of editor
                    maxHeight: 300,             // set maximum height of editor
                    focus: false,                  // set focus to editable area after initializing summernote
                    codemirror: { // codemirror options
                        theme: 'monokai'
                    },
                    placeholder: "Nhập mô tả cho công việc",
                    toolbar: [
                        ['style', ['style']],
                        ['font', ['bold', 'underline', 'clear']],
                        ['color', ['color']],
                        ['para', ['ul', 'ol', 'paragraph']],
                        ['table', ['table']],
                        ['insert', ['link', 'picture', 'video']],
                        ['view', ['help']]
                    ]
                });
            }

            $(document).on('mouseenter focus', '.summernote', function(){
                initSumernote();
            });
        });
    </script>
    <script>
        $(document).ready(function(){
            var date_input=$('input[name="thoigianbatdau[]"]');
            var date_input2=$('input[name="thoigianhoanthanh[]"]');
            var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
            var options={
                format: 'yyyy-mm-dd',
                container: container,
                todayHighlight: true,
                autoclose: true,
            };
            date_input.datepicker(options);
            date_input2.datepicker(options);

            $(document).on('focus', '.datepicker', function(){
                $(this).datepicker(options);
            });
        });
    </script>
    <script>
        $(document).ready(function(){
            var stage_id = $('#stage-id').data('id'), // Lấy id stage
                i = $('#nav-tab').data('count'); // Lấy số lượng tab ban đầu từ thẻ div là 1

            // Thêm tab
            $('.add-work').click(function(e){
                e.preventDefault();
                var tencongviec = $('input[name="tencongviec[]"]').val();
                var thoigianbatdau = $('input[name="thoigianbatdau[]"]').val();
                var thoigiandukien = $('input[name="thoigiandukien[]"]').val();
                var motacongviec = $('textarea[name="motacongviec[]"]').val();
                // console.log(tencongviec);
                i++; // Tăng i lên 1 đơn vị;
                $('#nav-tab').attr('data-count', i);
                $('#nav-tab').append('<a class="nav-item nav-link nav-count" id="nav-'+i+'-tab" data-toggle="tab" href="#nav-'+i+'" role="tab" aria-controls="nav-'+i+'" aria-selected="false" data-index="'+i+'">Công việc '+i+'</a>');
                $.ajax({
                    url: "{{ route('admin.stage-info.render-add')}}",
                    type: "get",
                    data: {i:i},
                    success: function(data)
                    {
                        $('#nav-tabContent').append(data.output);
                    }
                });
            });

            // Xóa tab-pane
            $(document).on('click', '.delete-work', function () {
                var e = $('.first-tab').data('index');
                var index = $(this).data('index'); // Lấy vị trí tab cần xóa
                $('#nav-' + index + '-tab').remove(); // Xóa nav-tab ở vị trí index
                $('#nav-' + index).remove(); // Xóa tab-pane ở vị trí index

                /* Dịch chuyển tất cả các tab sau tab cần xóa về trước 1 đơn vị */
                $('#nav-tab a').each(function (a) {
                    // var index_after = $(this).data('index');
                    var index_after = Number(a)+Number(e);
                    if(index_after + 1 > index)
                    {
                        /* Nav-tab */
                        $(this).text('Công việc ' + index_after);
                        $(this).attr('id', 'nav-' + index_after + '-tab');
                        $(this).attr('href', '#nav-' + index_after);
                        $(this).attr('aria-controls', 'nav-' + index_after);
                        $(this).attr('data-index', index_after);
                        /* Tab-pane */
                        $(this).parents().find('#nav-' + (index_after + 1)).attr('id', 'nav-' + index_after);
                        $(this).parents().find('#nav-' + index_after).attr('aria-labelledby', 'nav-' + index_after +'-tab');
                        $('#nav-' + index_after).find('button').attr('data-index', index_after);
                    }
                    else
                    {

                    }
                });

                /* Đếm số tab */
                var count = -1;
                $('.nav-count').each(function() {
                    count++;
                });

                $('.nav-count').each(function (a) {
                    var index_after_render = $(this).data('index');
                    /* Nếu vị trí tab sau tab bị xóa nhỏ hơn vị trí tab bị xóa và lần lập a == count */
                    if(index_after_render < index && a == count) {
                        $('.nav-count').each(function (a) {
                            i = $(this).data('index'); // Gán lại giá trị cho i
                            $('#nav-tab').attr('data-count', i); // Gán lại giá trị cho thẻ có id = nav-tab
                        });
                        $(this).addClass('active');
                        $(this).attr('aria-selected', 'true');
                        $('#nav-' + index_after_render).addClass('active show');
                    }
                    else {
                        $('.nav-count').each(function (a) {
                            i = $(this).data('index');
                            $('#nav-tab').attr('data-count', (i - 1));
                        });
                        $('#nav-' + index + '-tab').addClass('active');
                        $('#nav-' + index + '-tab').attr('aria-selected', 'true');
                        $('#nav-' + index).addClass('active show');

                    }
                });
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            $(document).on('submit', '#form-stageInfo', function(e) {
                e.preventDefault();
                let that = $(this);
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $("input[name*='_token']").val()
                    }
                });
                $.ajax({
                    url : that.attr('action'),
                    method : that.attr('method'),
                    data : that.serialize(),
                    beforeSend : function()
                    {
                        $(document).find('.alert-custom').text('');
                        $(document).find('.alert-custom').css('display', 'none');
                        $(document).find('.validated').removeClass('is-invalid');
                    },
                    success : function(data)
                    {
                        if (data.status == 0) {
                            $.each(data.error, function(prefix, val){
                                let arr = prefix.split(".");
                                $('#nav-' + (Number(arr[1]) + 1)).find('.validate-' + arr[0]).css('display', 'block');
                                $('#nav-' + (Number(arr[1]) + 1)).find('.validate-' + arr[0]).text(val[0]);
                                $('#nav-' + (Number(arr[1]) + 1)).find('.validated-' + arr[0]).addClass('is-invalid');
                            });
                        }
                        else
                        {
                            window.location.href = data.url;
                        }
                    }
                });
            });
        });
    </script>
    <script>
        $(document).ready(function(){
            $(document).on('keydown', '.enter-keydown', function(event) {
                if(event.keyCode == 13 || event.which == 13)
                {
                    event.preventDefault();
                    $('#btn-submit-stageInfo').click();
                }
            });

            function addDays(dateObj, numDays) {
                dateObj.setDate(dateObj.getDate() + numDays);
                return dateObj;
            }

            function subDays(dateObj, dateObj1) {
                dateObj.setDate(dateObj.getDate() - dateObj1.getDate());
                return dateObj;
            }

            $(document).on('change', '.validated-thoigianhoanthanh', function() {
                var ngayhoanthanh = $(this).val();
                var ngaybatdau = $(this).parent().parent().parent().find('input[name="thoigianbatdau[]"]').val();
                var thoigiandukien = $(this).parent().parent().parent().find('input[name="thoigiandukien[]"]').val();

                if (ngaybatdau != "" && ngaybatdau <= ngayhoanthanh) {
                    d = moment(ngayhoanthanh).diff(moment(ngaybatdau), 'days');
                    console.log(d);
                    console.log(thoigiandukien);
                    if (Number(d) > Number(thoigiandukien))
                    {
                        var kq = Number(d) - Number(thoigiandukien);
                        $(this).parent().parent().parent().find('input[name="trehan[]"]').val(kq);
                        $(this).parent().parent().parent().find('.trangthai').text('Trễ hạn (ngày)');
                    }
                    else if (Number(d) <= Number(thoigiandukien))
                    {
                        var kq = Number(thoigiandukien) - Number(d);
                        $(this).parent().parent().parent().find('input[name="trehan[]"]').val(kq);
                        $(this).parent().parent().parent().find('.trangthai').text('Sớm hạn (ngày)');
                    }
                }
                else
                {
                    $(this).parent().parent().parent().find('input[name="trehan[]"]').val(0);
                }
            });
        });
    </script>
@endsection
