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
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="banner-spot clearfix">
                        <div class="banner-img">
                            
                            <div id="mycarousel" class="carousel slide" data-ride="carousel">
                                <!--Cho hiện thị chỉ số nếu muốn-->
                                <ol class="carousel-indicators">
                                    <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#mycarousel" data-slide-to="1" class=""></li>
                                    <li data-target="#mycarousel" data-slide-to="2" class=""></li>
                                </ol>
                                <!--Hết tạo chỉ số-->

                                <!--Các slide bên trong carousel-inner-->
                                <div class="carousel-inner">
                                    <!--Slide 1 thiết lập hiện thị đầu tiên .active-->
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="https://i.vietgiaitri.com/2019/1/26/tuyen-tap-nhung-hinh-anh-gai-dep-nam-2019-gay-nhieu-chu-y-cua-co-241c94.png">
                                        <!--Cho thêm hiện thị thông tin-->
                                        <!-- <div class="carousel-caption d-none d-md-block">
                                            <h5>Tiêu đề Slide 1</h5>
                                            <p>Dòng text chú thích cho Slide 1</p>
                                        </div> -->
                                    </div>
                                    <!--Slide 2-->
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="https://hicksartgallery.com/wp-content/uploads/2019/08/gai-xinh.jpg">
                                    </div>
                                    <!--Slide 3-->
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="https://vectormienphi.com/wp-content/uploads/2020/04/T%E1%BB%95ng-h%E1%BB%A3p-h%C3%ACnh-%E1%BA%A3nh-g%C3%A1i-xinh-tri%E1%BB%87u-like-tr%C3%AAn-FaceBook-%C4%91%E1%BA%B9p-nh%E1%BA%A5t-2-750x938-1.jpg">
                                    </div>
                                </div>
                                <!--Cho thêm khiển chuyển slide trước, sau nếu muốn-->
                                <a class="carousel-control-prev" href="#mycarousel" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span></a>
                                <a class="carousel-control-next" href="#mycarousel" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
                                <!--Hết tạo điều khiển chuyển Slide--> 

                            </div>

                        </div>
                    </div>
                </div>
            </div>

    </div><!-- end page-wrapper -->

    <hr class="invis">

    
</div><!-- end col -->
