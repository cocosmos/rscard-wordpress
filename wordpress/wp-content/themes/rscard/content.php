<div class="grid-item">
    <article class="post-box">
        <div class="post-media">
            <div class="post-image">
            
                <?php
                if ( has_post_thumbnail() ) :
                    the_post_thumbnail('medium');
                else:
                    the_field('video_embed');
                
                endif;?>
                
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
                    <a href="index.html"><i class="rsicon rsicon-comments"></i><?php echo get_comments_number(); ?></a>
                </div>
            </div>
    </article>
</div>
