@extends('frontend.layouts.master')

@section('title')
    <title>{{$detailvideo->tieudevideo}}</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{ asset('home/home.css') }}">
@endsection

@section('content')
@endsection

<div id="wrapper">
    

    <section class="section single-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
                    <div class="page-wrapper">
                        <div class="blog-title-area text-center">
                            <ol class="breadcrumb hidden-xs-down">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Blog</a></li>
                                <li class="breadcrumb-item active">{{$detailvideo->tieudevideo}}</li>
                            </ol>

                            <span class="color-orange"><a href="{{route('tinchuyenmuc',['id'=>$detailvideo->idchuyenmuc])}}" title="">{{$detailvideo->tenchuyenmuc}}</a></span>

                            <h3>{{$detailvideo->tieudevideo}}</h3>

                            <div class="blog-meta big-meta">
                                <small><a href="tech-single.html" title="">{{$detailvideo->updated_at}}</a></small>
                                <small><a href="tech-author.html" title="">Tác giả: {{$detailvideo->hothanhvien}} {{$detailvideo->tenthanhvien}}</a></small>
                                <!-- <small><a href="#" title=""><i class="fa fa-eye"></i> 2344</a></small> -->
                            </div><!-- end meta -->

                            <div class="post-sharing">
                                <ul class="list-inline">
                                    <li><a href="#" class="fb-button btn btn-primary"><i class="fa fa-facebook"></i> <span class="down-mobile">Share on Facebook</span></a></li>
                                    <li><a href="#" class="tw-button btn btn-primary"><i class="fa fa-twitter"></i> <span class="down-mobile">Tweet on Twitter</span></a></li>
                                    <li><a href="#" class="gp-button btn btn-primary"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div><!-- end post-sharing -->
                        </div><!-- end title -->

                        

                        <div class="blog-content">
                            <div class="pp">
                                {!!$detailvideo->tomtatvideo!!}
                            </div><!-- end pp -->

                            <!-- <img src="/tech-blog/upload/tech_menu_09.jpg" alt="" class="img-fluid img-fullwidth"> -->

                            <div class="pp">
                                <video width="720px" height="405px" controls>
                                    <source src="{{$detailvideo->dulieuvideotintuc}}" type="video/mp4">
                                </video><br>
                            </div><!-- end pp -->
                        </div><!-- end content -->

                        <div class="blog-title-area">
                            <!-- <div class="tag-cloud-single">
                                <span>Tags</span>
                                <small><a href="#" title="">lifestyle</a></small>
                                <small><a href="#" title="">colorful</a></small>
                                <small><a href="#" title="">trending</a></small>
                                <small><a href="#" title="">another tag</a></small>
                            </div>end meta -->

                            <div class="post-sharing">
                                <ul class="list-inline">
                                    <li><a href="#" class="fb-button btn btn-primary"><i class="fa fa-facebook"></i> <span class="down-mobile">Share on Facebook</span></a></li>
                                    <li><a href="#" class="tw-button btn btn-primary"><i class="fa fa-twitter"></i> <span class="down-mobile">Tweet on Twitter</span></a></li>
                                    <li><a href="#" class="gp-button btn btn-primary"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div><!-- end post-sharing -->
                        </div><!-- end title -->

                        <div class="custombox clearfix">
                            <h4 class="small-title">Video liên quan:</h4>
                            <div class="row">
                                @foreach($detailvideolienquan as $key => $row)
                                <div class="col-lg-6">
                                    <div class="blog-box">
                                        <div class="post-media">
                                            <a href="{{route('detailvideo',['id'=>$row->id])}}" title="">
                                                <img src="{{$row->hinhdaidienvideo}}" alt="" class="" height="170px">
                                                <div class="hovereffect">
                                                    <span class=""></span>
                                                </div><!-- end hover -->
                                            </a>
                                        </div><!-- end media -->
                                        <div class="blog-meta">
                                            <h4><a href="{{route('detailvideo',['id'=>$row->id])}}" title="">{{Str::limit($row->tieudevideo,65)}}</a></h4>
                                            <small><a href="{{route('detailvideo',['id'=>$row->id])}}" title="">News</a></small>
                                            <small><a href="{{route('detailvideo',['id'=>$row->id])}}" title="">{{$row->updated_at}}</a></small>
                                        </div><!-- end meta -->
                                    </div><!-- end blog-box -->
                                </div><!-- end col -->
                                @endforeach
                            </div><!-- end row -->
                        </div><!-- end custom-box -->
                        
                    </div><!-- end page-wrapper -->
                </div><!-- end col -->

                @include('frontend.partials.content-sidebar')
            </div><!-- end row -->
        </div><!-- end container -->
    </section>

    <div class="dmtop">Scroll to Top</div>

</div><!-- end wrapper -->


<!-- Core JavaScript
================================================== -->
{{--@section('js')--}}
{{--    <link rel="stylesheet" href="{{ asset('home/home.js') }}">--}}
{{--@endsection--}}