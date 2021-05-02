<div class="grid-item">
    <article class="post-box">
        <div class="post-media">
            <div class="post-image">
            
        <a href="single.html"><img src="<?php echo get_the_post_thumbnail_url( null, 'full' ); ?>" alt=""> </a>
            </div>
        </div>
        <div class="post-data">
            <time class="post-datetime" datetime="2015-03-13T07:44:01+00:00">
                <span class="day"><?php echo get_the_date('d')?></span>
                <span class="month"><?php echo get_the_date('F')?></span>
            </time>

            <div class="post-tag">
                <?php 
                $tags = get_the_tags();
                if($tags):
                foreach ( $tags as $tag ):?> 
                <a href="<?php echo get_tag_link( $tag->term_id );?>"><?php echo $tag->name;?></a>
                <?php endforeach; endif;?>
            </div>

            <h3 class="post-title">
                <a href="<?php the_permalink() ?>"><?php the_title() ?></a>
            </h3>

            <div class="post-info">
                <a href="index.html"><i class="rsicon rsicon-user"></i>by <?php the_author() ?></a>
                <a href="index.html"><i class="rsicon rsicon-comments"></i>56</a>
            </div>
        </div>
    </article>
</div>

<div class="grid-item">
    <article class="post-box">
        <div class="post-media">
            <div class="post-image">
                <a href="single-vimeo.html">
                    <img src="<?php bloginfo('template_directory');?>/img/uploads/thumb-449x286-5.jpg" alt="">
                    <span class="post-type-icon"><i class="rsicon rsicon-play"></i></span>
                </a>
            </div>
        </div>

        <div class="post-data">
            <time class="post-datetime" datetime="2015-03-13T07:44:01+00:00">
                <span class="day">03</span>
                <span class="month">MAY</span>
            </time>

            <div class="post-tag">
                <a href="index.html">#Photo</a>
                <a href="index.html">#Architect</a>
            </div>

            <h3 class="post-title">
                <a href="single-vimeo.html">Vimeo Video Post</a>
            </h3>

            <div class="post-info">
                <a href="index.html"><i class="rsicon rsicon-user"></i>by admin</a>
                <a href="index.html"><i class="rsicon rsicon-comments"></i>56</a>
            </div>
        </div>
    </article>
    </div>							
<?php the_excerpt() ?>