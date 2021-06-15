<div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
    <div class="page-wrapper">
        <div class="blog-top clearfix">
            <h4 class="pull-left">Tin gần đây <a href="#"><i class="fa fa-rss"></i></a></h4>
        </div><!-- end blog-top -->

        @foreach ($content as $key => $row)
            <?php
                if($key==0 || $key==1 || $key==2)
                    $an = "display:none";
                else $an = "display:block";
            ?>
            

            <div class="blog-list clearfix" style="<?php echo $an; ?>">
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
                        <small><a href="#" title="">{{$row->updated_at}}</a></small>
                        <small><a href="tech-author.html" title="">by {{$row->hothanhvien}} {{$row->tenthanhvien}}</a></small>
                        
                    </div><!-- end meta -->
                </div><!-- end blog-box -->

                <hr class="invis">
            </div><!-- end blog-list -->
            @if(($key-2) % 5 == 0 && $key!=0 && $key!=1 && $key!=2)
                <div class="row">
                    <div class="col-lg-10 offset-lg-1">
                        <div class="banner-spot clearfix">
                            <div class="banner-img">
                                <!-- <img src="TemplateTechBlog/upload/banner_02.jpg" alt="" class="img-fluid"> -->
                                <img src="https://ivyprep.edu.vn/wp-content/uploads/banner-web-3-1024x324.jpg" alt="" class="img-fluid">
                                <!-- <img src="https://graphics.vietnamprinting.com/wp-content/uploads/2020/01/mau-banner-bong-da-vietnamprinting-muabannhanh.jpg" alt="" class="img-fluid"> -->
                            </div>
                        </div>
                    </div>
                </div>
                <hr class="invis">
            @endif
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
