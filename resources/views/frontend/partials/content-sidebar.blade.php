<!-- slider -->
<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
    <div class="sidebar">
        @yield('thongtincongty')
        <div class="widget">
            <div class="banner-spot clearfix">
                <div class="banner-img">
                    <!-- <img src="{{ asset('TemplateTechBlog/upload/banner_07.jpg') }}" alt="" class="img-fluid"> -->
                    <!-- <img src="https://nukeviet.vn/uploads/store/demo_images/2013_01/banner13.png" alt="" class="" height="600px"> -->
                    
                    <div id="mycarousel0" class="carousel slide" data-ride="carousel">
                        <!--Cho hiện thị chỉ số nếu muốn-->
                        <ol class="carousel-indicators">
                            @foreach($quangcaodoc as $key => $row)
                                <?php
                                    if($key == 0) $an = "active";
                                    else $an = "";
                                ?>
                                <li data-target="#mycarousel0" data-slide-to="{{$key}}" class="<?php echo $an; ?>"></li>
                            @endforeach
                        </ol>
                        <!--Hết tạo chỉ số-->

                        <!--Các slide bên trong carousel-inner-->
                        <div class="carousel-inner">
                            @foreach($quangcaodoc as $key => $row)
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
                        <a class="carousel-control-prev" href="#mycarousel0" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span></a>
                        <a class="carousel-control-next" href="#mycarousel0" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
                        <!--Hết tạo điều khiển chuyển Slide--> 

                    </div>

                </div><!-- end banner-img -->
            </div><!-- end banner -->
        </div><!-- end widget -->
        <div class="widget">
            <h2 class="widget-title">Trend Videos</h2>
            <div class="trend-videos">
                @foreach ($videotintuc as $key => $row)
                    <div class="blog-box">
                        <div class="post-media">
                            <a href="{{route('loadvideo')}}" data-id="{{$row->id}}" id="loadvideo">
                                <img src="{{$row->hinhdaidienvideo}}" alt="" class="img-fluid" style="object-fit:cover; height:150px">
                                <div class="hovereffect">
                                    <span class="videohover"></span>
                                </div>
                            </a>
                            
                        </div><!-- end media -->
                        <div class="blog-meta">
                            <h4><a href="{{ route('detailvideo', ['id' => $row->id]) }}" title="">{{ Str::limit($row->tieudevideo, 65) }}</a></h4>
                        </div><!-- end meta -->
                    </div><!-- end blog-box -->

                    <hr class="invis">
                @endforeach
            </div><!-- end videos -->
        </div><!-- end widget -->
        <div class="widget">
            <h2 class="widget-title">Popular Posts</h2>
            <div class="blog-list-widget">
                <div class="list-group">
                    <a href="tech-single.html"
                       class="list-group-item list-group-item-action flex-column align-items-start">
                        <div class="w-100 justify-content-between">
                            <img src="TemplateTechBlog/upload/tech_blog_08.jpg" alt=""
                                 class="img-fluid float-left">
                            <h5 class="mb-1">5 Beautiful buildings you need..</h5>
                            <small>12 Jan, 2016</small>
                        </div>
                    </a>

                    <a href="tech-single.html"
                       class="list-group-item list-group-item-action flex-column align-items-start">
                        <div class="w-100 justify-content-between">
                            <img src="TemplateTechBlog/upload/tech_blog_01.jpg" alt=""
                                 class="img-fluid float-left">
                            <h5 class="mb-1">Let's make an introduction for..</h5>
                            <small>11 Jan, 2016</small>
                        </div>
                    </a>

                    <a href="tech-single.html"
                       class="list-group-item list-group-item-action flex-column align-items-start">
                        <div class="w-100 last-item justify-content-between">
                            <img src="TemplateTechBlog/upload/tech_blog_03.jpg" alt=""
                                 class="img-fluid float-left">
                            <h5 class="mb-1">Did you see the most beautiful..</h5>
                            <small>07 Jan, 2016</small>
                        </div>
                    </a>
                </div>
            </div><!-- end blog-list -->
        </div><!-- end widget -->
        <div class="widget">
            <h2 class="widget-title">Recent Reviews</h2>
            <div class="blog-list-widget">
                <div class="list-group">
                    <a href="tech-single.html"
                       class="list-group-item list-group-item-action flex-column align-items-start">
                        <div class="w-100 justify-content-between">
                            <img src="TemplateTechBlog/upload/tech_blog_02.jpg" alt=""
                                 class="img-fluid float-left">
                            <h5 class="mb-1">Banana-chip chocolate cake recipe..</h5>
                            <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </span>
                        </div>
                    </a>

                    <a href="tech-single.html"
                       class="list-group-item list-group-item-action flex-column align-items-start">
                        <div class="w-100 justify-content-between">
                            <img src="TemplateTechBlog/upload/tech_blog_03.jpg" alt=""
                                 class="img-fluid float-left">
                            <h5 class="mb-1">10 practical ways to choose organic..</h5>
                            <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </span>
                        </div>
                    </a>

                    <a href="tech-single.html"
                       class="list-group-item list-group-item-action flex-column align-items-start">
                        <div class="w-100 last-item justify-content-between">
                            <img src="TemplateTechBlog/upload/tech_blog_07.jpg" alt=""
                                 class="img-fluid float-left">
                            <h5 class="mb-1">We are making homemade ravioli..</h5>
                            <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </span>
                        </div>
                    </a>
                </div>
            </div><!-- end blog-list -->
        </div><!-- end widget -->
        <div class="widget">
            <h2 class="widget-title">Follow Us</h2>

            <div class="row text-center">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <a href="#" class="social-button facebook-button">
                        <i class="fa fa-facebook"></i>
                        <p>27k</p>
                    </a>
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <a href="#" class="social-button twitter-button">
                        <i class="fa fa-twitter"></i>
                        <p>98k</p>
                    </a>
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <a href="#" class="social-button google-button">
                        <i class="fa fa-google-plus"></i>
                        <p>17k</p>
                    </a>
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                    <a href="#" class="social-button youtube-button">
                        <i class="fa fa-youtube"></i>
                        <p>22k</p>
                    </a>
                </div>
            </div>
        </div><!-- end widget -->
        <div class="widget">
            <div class="banner-spot clearfix">
                <div class="banner-img">
                    <!-- <img src="TemplateTechBlog/upload/banner_03.jpg" alt="" class="img-fluid"> -->
                    <!-- <img src="https://inanaz.com.vn/wp-content/uploads/2020/02/mau-banner-quang-cao-dep-15.jpg" alt="" class="" height="200px"> -->

                    <div id="mycarousel2" class="carousel slide" data-ride="carousel">
                        <!--Cho hiện thị chỉ số nếu muốn-->
                        <ol class="carousel-indicators">
                            @foreach($quangcaovuong as $key => $row)
                                <?php
                                    if($key == 0) $an = "active";
                                    else $an = "";
                                ?>
                                <li data-target="#mycarousel2" data-slide-to="{{$key}}" class="<?php echo $an; ?>"></li>
                            @endforeach
                        </ol>
                        <!--Hết tạo chỉ số-->

                        <!--Các slide bên trong carousel-inner-->
                        <div class="carousel-inner">
                            @foreach($quangcaovuong as $key => $row)
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
                        <a class="carousel-control-prev" href="#mycarousel2" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span></a>
                        <a class="carousel-control-next" href="#mycarousel2" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
                        <!--Hết tạo điều khiển chuyển Slide--> 

                    </div>

                </div><!-- end banner-img -->
            </div><!-- end banner -->
        </div><!-- end widget -->
    </div><!-- end sidebar -->
</div><!-- end col -->
<!-- end slider -->
