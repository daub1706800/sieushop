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
            
        @endforeach
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="banner-spot clearfix">
                        <div class="banner-img">
                            
                            <div id="mycarousel1" class="carousel slide" data-ride="carousel">
                                <!--Cho hiện thị chỉ số nếu muốn-->
                                <ol class="carousel-indicators">
                                    @foreach($quangcaongang as $key => $row)
                                        <?php
                                            if($key == 0) $an = "active";
                                            else $an = "";
                                        ?>
                                        <li data-target="#mycarousel1" data-slide-to="{{$key}}" class="<?php echo $an; ?>"></li>
                                    @endforeach
                                </ol>
                                <!--Hết tạo chỉ số-->

                                <!--Các slide bên trong carousel-inner-->
                                <div class="carousel-inner">
                                    @foreach($quangcaongang as $key => $row)
                                        <?php
                                            if($key == 0) $an = "active";
                                            else $an = "";
                                        ?>
                                        <div class="carousel-item <?php echo $an; ?>">
                                            <a class="d-block w-100" href="https://google.com" target="_blank"><img src="{{$row->dulieuhinhanhquangcao}}"/></a>
                                        </div>
                                    @endforeach
                                </div>
                                <!--Cho thêm khiển chuyển slide trước, sau nếu muốn-->
                                <a class="carousel-control-prev" href="#mycarousel1" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span></a>
                                <a class="carousel-control-next" href="#mycarousel1" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
                                <!--Hết tạo điều khiển chuyển Slide--> 

                            </div>

                        </div>
                    </div>
                </div>
            </div>

    </div><!-- end page-wrapper -->

    <hr class="invis">

    
</div><!-- end col -->
