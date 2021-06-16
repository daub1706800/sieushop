@extends('frontend.layouts.master')

@section('title')
    <title>Tin Video Hấp Dẫn</title>
@endsection

@section('content')
<div id="wrapper">
    <div class="page-title lb single-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <h2><i class="fa fa-gears bg-orange"></i> Video mới nhất <small class="hidden-xs-down hidden-sm-down">Nulla felis eros, varius sit amet volutpat non. </small></h2>
                </div><!-- end col -->
                <div class="col-lg-4 col-md-4 col-sm-12 hidden-xs-down hidden-sm-down">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Blog</a></li>
                        <li class="breadcrumb-item active">Video</li>
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
                                    <span>Chuyên mục</span>
                                    @foreach($header as $key => $row)
                                    <small><a href="#" title="">{{$row->tenchuyenmuc}}</a></small>
                                    @endforeach
                                </div>
                                @foreach($tinvideo as $key => $row)
                                    <div class="col-md-6">
                                        <div class="blog-box">
                                            <div class="post-media">
                                                <a href="{{route('detailvideo',['id'=>$row->id])}}" title="">
                                                    <img src="{{$row->hinhdaidienvideo}}" style="width:397.5px;height:202px" alt="" class="img-fluid">
                                                    <div class="hovereffect">
                                                        <span></span>
                                                    </div><!-- end hover -->
                                                </a>
                                            </div><!-- end media -->
                                            <div class="blog-meta big-meta">
                                                <span class="color-orange"><a href="{{route('detailvideo',['id'=>$row->id])}}" title="">{{$row->tenchuyenmuc}}</a></span>
                                                <h4><a href="{{route('detailvideo',['id'=>$row->id])}}" title="">{{Str::limit($row->tieudevideo,75)}}</a></h4>
                                                <p>{!! Str::limit($row->tomtatvideo, 170) !!}</p>
                                                <!-- <small><a href="tech-single.html" title="">14 July, 2017</a></small> -->
                                                <small><a href="{{route('detailvideo',['id'=>$row->id])}}" title="">Tác giả:  {{$row->hothanhvien}} {{$row->tenthanhvien}}</a></small>
                                                <small><a href="{{route('detailvideo',['id'=>$row->id])}}" title="">Nguồn: {{$row->nguonvideotintuc}}</a></small>
                                            </div><!-- end meta -->
                                        </div><!-- end blog-box -->
                                    </div><!-- end col -->
                                @endforeach
                                

                            </div><!-- end row -->
                        </div><!-- end blog-grid-system -->
                    </div><!-- end page-wrapper -->
                    {{$tinvideo->links()}}

                    
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </section>
    <div class="dmtop">Scroll to Top</div>
</div><!-- end wrapper -->
@endsection

