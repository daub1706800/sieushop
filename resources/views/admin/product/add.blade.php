@extends('admin.layouts.admin')

@section('title')
    <title>Sản phẩm | Thêm mới</title>
@endsection
@section('css')
    <!-- include summernote css -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <!-- include select2 css -->
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
    @include('admin.partials.content-header', ['name' => 'THÊM', 'key' => 'SẢN PHẨM'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form action="{{route('product.store')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Tên sản phẩm *</label>
                                <input  type="text" class="form-control @error('tensanpham') is-invalid @enderror"
                                        name="tensanpham" placeholder="Tên sản phẩm"
                                        value="{{ old('tensanpham') }}">
                                @error('tensanpham')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Kho *</label>
                                <select class="form-control storage-selected @error('idkho') is-invalid @enderror"
                                        name="idkho">
                                    <option value="">Chọn kho</option>
                                    @foreach($storages as $storage)
                                    <option value="{{ $storage->id }}">{{ $storage->tenkho }}</option>
                                    @endforeach
                                </select>
                                @error('idkho')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Loại sản phẩm *</label>
                                <select class="form-control productcategories-selected @error('idloaisanpham') is-invalid @enderror"
                                        name="idloaisanpham">
                                    <option value="">Loại sản phẩm</option>
                                    @foreach($productcategories as $productcategory)
                                    <option value="{{ $productcategory->id }}">{{ $productcategory->tenloaisanpham }}</option>
                                    @endforeach
                                </select>
                                @error('idloaisanpham')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Xuất xứ *</label>
                                <input  type="text" class="form-control @error('xuatxu') is-invalid @enderror"
                                        name="xuatxu" placeholder="Xuất xứ"
                                        value="{{ old('xuatxu') }}">
                                @error('xuatxu')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Chủng loại *</label>
                                <input  type="text" class="form-control @error('chungloaisanpham') is-invalid @enderror"
                                        name="chungloaisanpham" placeholder="Chủng loại"
                                        value="{{ old('chungloaisanpham') }}">
                                @error('chungloaisanpham')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Đơn giá (Nếu = 0 là "Liên hệ")</label>
                                <input  type="text" class="form-control @error('dongiasanpham') is-invalid @enderror"
                                        name="dongiasanpham" placeholder="Đơn giá"
                                        value="{{ old('dongiasanpham') }}">
                                @error('dongiasanpham')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Khối lượng sản phẩm (Kg)*</label>
                                <input  type="text" class="form-control @error('khoiluongsanpham') is-invalid @enderror"
                                        name="khoiluongsanpham" placeholder="Khối lượng"
                                        value="{{ old('khoiluongsanpham') }}">
                                @error('khoiluongsanpham')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Đơn vị tính *</label>
                                <input  type="text" class="form-control @error('donvitinhsanpham') is-invalid @enderror"
                                        name="donvitinhsanpham" placeholder="Đơn vị tính"
                                        value="{{ old('donvitinhsanpham') }}">
                                @error('donvitinhsanpham')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Mã vạch *</label>
                                <input  type="text" class="form-control @error('mavachsanpham') is-invalid @enderror"
                                        name="mavachsanpham" placeholder="Mã vạch sản phẩm"
                                        value="{{ old('mavachsanpham') }}">
                                @error('mavachsanpham')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Ảnh sản phẩm *</label>
                                <input  type="file" class="form-control-file @error('hinhanhsanpham') is-invalid @enderror"
                                        name="hinhanhsanpham">
                                @error('hinhanhsanpham')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Ảnh chi tiết *</label>
                                <input  type="file" class="form-control-file @error('hinhanhchitiet.*') is-invalid @enderror @error('hinhanhchitiet') is-invalid @enderror"
                                        name="hinhanhchitiet[]" multiple>
                                @error('hinhanhchitiet.*')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                                @error('hinhanhchitiet')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Thông tin sản phẩm *</label>
                                <textarea class="form-control summernote @error('thongtinsanpham') is-invalid @enderror"
                                        rows="20" name="thongtinsanpham">
                                    {{ old('thongtinsanpham') }}
                                </textarea>
                                @error('thongtinsanpham')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="text-center mb-4">
                            <button type="submit" class="btn btn-primary">Lưu</button>
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
    <!-- include summernote js -->
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <!-- include select2 js -->
    <script src="{{ asset('vendor/js/select2.js') }}"></script>
    <script>
        $(document).ready(function() {
            $(function(){
                $('.summernote').summernote({
                    height: 400,                // set editor height
                    minHeight: 400,             // set minimum height of editor
                    maxHeight: 400,             // set maximum height of editor
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
                        // ['insert', ['link', 'picture', 'video']],
                        ['view', ['help']]
                    ]
                });
            });
            $(function(){
                $(".storage-selected").select2({
                    tags: false,
                    placeholder : 'Chọn vai trò',
                    theme: "classic",
                    width: "100%"
                });
            });
            $(function(){
                $(".productcategories-selected").select2({
                    tags: false,
                    placeholder : 'Chọn vai trò',
                    theme: "classic",
                    width: "100%"
                });
            });
        });
    </script>
@endsection
