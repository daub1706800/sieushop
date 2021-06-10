@extends('frontend.layouts.master')

@section('title')
    <title>Gadget Page</title>
@endsection

@section('content')
<div id="wrapper">
    <div class="page-title lb single-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <h2><i class="fa fa-gears bg-orange"></i> Sản phẩm <small class="hidden-xs-down hidden-sm-down">Nulla felis eros, varius sit amet volutpat non. </small></h2>
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

                                @foreach($gadget as $key => $row)
                                    <div class="col-md-6">
                                        <div class="blog-box">
                                            <div class="post-media">
                                                <a href="tech-single.html" title="">
                                                    <img src="TemplateTechBlog/upload/tech_menu_01.jpg" alt="" class="img-fluid">
                                                    <div class="hovereffect">
                                                        <span></span>
                                                    </div><!-- end hover -->
                                                </a>
                                            </div><!-- end media -->
                                            <div class="blog-meta big-meta">
                                                <span class="color-orange"><a href="tech-category-01.html" title="">{{$row->tenloaisanpham}}</a></span>
                                                <h4><a href="tech-single.html" title="">{{$row->tensanpham}}</a></h4>
                                                <p>{{$row->thongtinsanpham}}</p>
                                                <!-- <small><a href="tech-single.html" title="">14 July, 2017</a></small> -->
                                                <small><a href="tech-author.html" title="">by {{$row->tencongty}}</a></small>
                                                <small><a href="tech-single.html" title=""><i class="fa fa-eye"></i> 2887</a></small>
                                            </div><!-- end meta -->
                                        </div><!-- end blog-box -->
                                    </div><!-- end col -->
                                @endforeach
                                {{$gadget->links()}}

                            </div><!-- end row -->
                        </div><!-- end blog-grid-system -->
                    </div><!-- end page-wrapper -->


                    
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </section>
    <div class="dmtop">Scroll to Top</div>
</div><!-- end wrapper -->
@endsection

