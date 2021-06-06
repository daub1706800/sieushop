<!-- ------------------------- -->
<!-- sidebar -->
<section class="section first-section">
    <div class="container-fluid">
        <div class="masonry-blog clearfix">

            
            
            @foreach ($sidebar as $key => $row)
                <?php
                    if($key==0){
                        $cl1 = "first-slot";
                    }
                    else $cl1 = "second-slot";
                ?>
                <div class="<?php echo $cl1 ?>">
                    <div class="masonry-box post-media">
                        <img src="{{$row->hinhanhtintuc}}" alt="" class="" width="788px" height="433px" >
                        <div class="shadoweffect">
                            <div class="shadow-desc">
                                <div class="blog-meta">
                                    <span class="bg-orange"><a href="#" title="">{{$row->tenchuyenmuc}}</a></span>
                                    <h4><a href="#" title="">{{$row->tieudetintuc}}</a></h4>
                                    <small><a href="#" title="">{{$row->ngaydangtintuc}}</a></small>
                                    <small><a href="#" title="">Tác giả: {{$row->hothanhvien}} {{$row->tenthanhvien}}</a></small>
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
