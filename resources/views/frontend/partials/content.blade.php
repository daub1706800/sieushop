<div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
    <div class="page-wrapper">
        <div class="blog-top clearfix">
            <h4 class="pull-left">Tin gần đây <a href="#"><i class="fa fa-rss"></i></a></h4>
        </div><!-- end blog-top -->

        @foreach ($content as $key => $row)
            <div class="blog-list clearfix">
            
                <div class="blog-box row">
                    <div class="col-md-4">
                        <div class="post-media">
                            <a href="{{route('detail',['id'=>$row->id])}}" title="">
                                <img src="{{$row->hinhanhtintuc}}" alt="" class="" height="215px">
                                <div class="hovereffect"></div>
                            </a>
                        </div><!-- end media -->
                    </div><!-- end col -->

                    <div class="blog-meta big-meta col-md-8">
                        <h4><a href="{{route('detail',['id'=>$row->id])}}" title="">{{ Str::limit($row->tieudetintuc, 100) }}</a></h4>
                        <p>{!! Str::limit($row->tomtattintuc, 230) !!}</p>
                        <small class="firstsmall"><a class="bg-orange" href="{{route('tinchuyenmuc',['id'=>$row->idchuyenmuc])}}" title="">{{$row->tenchuyenmuc}}</a></small>
                        <small><a href="#" title="">{{$row->ngaydangtintuc}}</a></small>
                        <small><a href="tech-author.html" title="">by {{$row->hothanhvien}} {{$row->tenthanhvien}}</a></small>
                        
                    </div><!-- end meta -->
                </div><!-- end blog-box -->

                <hr class="invis">
            </div><!-- end blog-list -->
        @endforeach
            <!-- <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="banner-spot clearfix">
                        <div class="banner-img">
                            <img src="TemplateTechBlog/upload/banner_02.jpg" alt="" class="img-fluid">
                        </div>
                    </div>
                </div>
            </div> -->

    </div><!-- end page-wrapper -->

    <hr class="invis">

    
</div><!-- end col -->
