@extends('frontend.layouts.master')

@section('title')
    <title>Contact Page</title>
@endsection

@section('content')
<div id="wrapper">
    <div class="page-title lb single-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <h2><i class="fa fa-gears bg-orange"></i> Gadgets <small class="hidden-xs-down hidden-sm-down">Nulla felis eros, varius sit amet volutpat non. </small></h2>
                </div><!-- end col -->
                <div class="col-lg-4 col-md-4 col-sm-12 hidden-xs-down hidden-sm-down">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Blog</a></li>
                        <li class="breadcrumb-item active">Gadgets</li>
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
                                            <span class="color-orange"><a href="tech-category-01.html" title="">Gadgets</a></span>
                                            <h4><a href="tech-single.html" title="">We visited the ancient theater in Macedonia</a></h4>
                                            <p>Aenean interdum arcu blandit, vehicula magna non, placerat elit. Mauris et pharetratortor. Suspendissea sodales urna. In at augue elit. Vivamus enim nibh.</p>
                                            <small><a href="tech-single.html" title="">14 July, 2017</a></small>
                                            <small><a href="tech-author.html" title="">by Jack</a></small>
                                            <small><a href="tech-single.html" title=""><i class="fa fa-eye"></i> 2887</a></small>
                                        </div><!-- end meta -->
                                    </div><!-- end blog-box -->
                                </div><!-- end col -->

                                <div class="col-md-6">
                                    <div class="blog-box">
                                        <div class="post-media">
                                            <a href="tech-single.html" title="">
                                                <img src="TemplateTechBlog/upload/tech_menu_02.jpg" alt="" class="img-fluid">
                                                <div class="hovereffect">
                                                    <span></span>
                                                </div><!-- end hover -->
                                            </a>
                                        </div><!-- end media -->
                                        <div class="blog-meta big-meta">
                                            <span class="color-orange"><a href="tech-category-01.html" title="">Gadgets</a></span>
                                            <h4><a href="tech-single.html" title="">To visit the fairy chimneys and antique cities in Turkey</a></h4>
                                            <p>Aenean interdum arcu blandit, vehicula magna non, placerat elit. Mauris et pharetratortor. Suspendissea sodales urna. In at augue elit. Vivamus enim nibh.</p>
                                            <small><a href="tech-single.html" title="">14 July, 2017</a></small>
                                            <small><a href="tech-author.html" title="">by Jack</a></small>
                                            <small><a href="tech-single.html" title=""><i class="fa fa-eye"></i> 2887</a></small>
                                        </div><!-- end meta -->
                                    </div><!-- end blog-box -->
                                </div><!-- end col -->

                            </div><!-- end row -->
                        </div><!-- end blog-grid-system -->
                    </div><!-- end page-wrapper -->

                    <hr class="invis3">

                    <div class="row">
                        <div class="col-md-12">
                            <nav aria-label="Page navigation">
                                <ul class="pagination justify-content-start">
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">Next</a>
                                    </li>
                                </ul>
                            </nav>
                        </div><!-- end col -->
                    </div><!-- end row -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </section>
    <div class="dmtop">Scroll to Top</div>
</div><!-- end wrapper -->
@endsection

