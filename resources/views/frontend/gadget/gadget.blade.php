@extends('frontend.layouts.master')

@section('title')
    <title>Sản phẩm mới nhất</title>
@endsection

@section('content')
<div id="wrapper">
    <div class="page-title lb single-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <h2><i class="fa fa-gears bg-orange"></i> Sản phẩm mới nhất<small class="hidden-xs-down hidden-sm-down"></small></h2>
                </div><!-- end col -->
                <div class="col-lg-4 col-md-4 col-sm-12 hidden-xs-down hidden-sm-down">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Blog</a></li>
                        <li class="breadcrumb-item active">Sản phẩm</li>
                    </ol>
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end page-title -->
    <section class="section">
        <div class="container">
            <div class="row">
                
                @include('frontend.partials.content-sidebar')

                <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
                    <div class="page-wrapper">
                        <div class="blog-grid-system">
                            <div class="row">
                                <div class="tag-cloud-single">
                                    <span>Loại sản phẩm</span>
                                    @foreach($loaisanpham as $key => $row)
                                    <small><a href="#" title="">{{$row->tenloaisanpham}}</a></small>&nbsp&nbsp&nbsp|
                                    @endforeach
                                </div>

                                @foreach($gadget as $key => $row)
                                    <div class="col-md-4">
                                        <div class="blog-box">
                                            <div class="post-media">
                                                <a href="{{route('detailsanpham',['id'=>$row->id])}}" title=""">
                                                    <img src="{{$row->hinhanhsanpham}}" style="height:230px" alt="" class="img-fluid">
                                                    <div class="hovereffect">
                                                        <span></span>
                                                    </div><!-- end hover -->
                                                </a>
                                            </div><!-- end media -->
                                            <div class="blog-meta big-meta">
                                                <h4><a href="{{route('detailsanpham',['id'=>$row->id])}}" title="">{{Str::limit($row->tensanpham,23)}}</a></h4>
                                                <span style="color:red; font-size:29px; font-family:bold">{{$row->dongiasanpham}} đ</span>
                                                <p>Xuất xứ: {!! Str::limit($row->xuatxu, 60) !!}</p>
                                            </div><!-- end meta -->
                                        </div><!-- end blog-box -->
                                    </div><!-- end col -->
                                @endforeach
                                

                            </div><!-- end row -->
                        </div><!-- end blog-grid-system -->
                    </div><!-- end page-wrapper -->
                    {{$gadget->links()}}

                    
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </section>
    <div class="dmtop">Scroll to Top</div>
</div><!-- end wrapper -->
@endsection

