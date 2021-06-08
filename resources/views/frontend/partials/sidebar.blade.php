<!-- ------------------------- -->
<!-- sidebar -->
<section class="section first-section">

    <div class="container-fluid">
        <div class="masonry-blog clearfix">

            
            
            @foreach ($sidebar as $key => $row)
                <?php
                    if($key==0) $cl1 = "first-slot";
                    else if($key == 1)  $cl1 = "second-slot";
                    else $cl1 = "last-slot";
                ?>
                <div class="<?php echo $cl1 ?>">
                    <div class="masonry-box post-media">
                        <img src="{{$row->hinhanhtintuc}}" alt="" class="" height="443px">
                        <div class="shadoweffect">
                            <div class="shadow-desc">
                                <div class="blog-meta">
                                    <span class="bg-orange"><a href="tech-category-01.html" title="">{{$row->tenchuyenmuc}}</a></span>
                                    <h4><a href="tech-single.html" title="">{{$row->tieudetintuc}}</a></h4>
                                    <small><a href="tech-single.html" title="">{{$row->ngaydangtintuc}}</a></small>
                                    <small><a href="tech-author.html" title="">Tác giả: {{$row->hothanhvien}} {{$row->tenthanhvien}}</a></small>
                                </div><!-- end meta -->
                            </div><!-- end shadow-desc -->
                        </div><!-- end shadow -->
                    </div><!-- end post-media -->
                </div><!-- end first-side -->
            @endforeach
            

        </div><!-- end masonry -->
    </div>
    
</section>
<!-- end sidebar -->
