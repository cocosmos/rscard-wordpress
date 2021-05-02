<?php get_header(); ?>
<div class="content">
  <div class="container">
    <div class="row animate-up">
    <div class="col-sm-8">
      <main class="post-single">
        <article class="post-content section-box">
        <div class="post-media">
          <?php
          if ( has_post_thumbnail() ) {
            the_post_thumbnail('medium');
          }else{
            the_field('video_embed');
          }
          ?>
        </div>
          <div class="post-inner">
          
            <header class="post-header">
              <div class="post-data">
                <div class="post-tag">

                  <?php 
                  $tags = get_the_tags();
                  if($tags):
                  foreach ( $tags as $tag ):?> 
                  <a href="<?php echo get_tag_link( $tag->term_id );?>"><?php echo $tag->name;?></a>
                  <?php endforeach; endif;?>
                
                </div>
               

                <div class="post-title-wrap">
                  <h1 class="post-title"><?php the_title()?></h1>
                  <time class="post-datetime" datetime="2015-03-13T07:44:01+00:00">
                    <span class="day"><?php echo get_the_date('d')?></span>
                    <span class="month"><?php echo get_the_date('F')?></span>
                  </time>
                </div>

                <div class="post-info">
                  <a href="single.html"><i class="rsicon rsicon-user"></i>by <?php the_author_meta('display_name', 1); ?></a>
                  <a href="single.html"><i class="rsicon rsicon-comments"></i><?php echo get_comments_number(); ?></a>
                </div>
              </div>
            </header>
            <div class="post-editor clearfix">
              <?php the_content()?>
            </div>

            <footer class="post-footer">
              <div class="post-share">
                <script type="text/javascript" src="https://s7.addthis.com/js/300/addthis_widget.js#pubid=ra-503b5cbf65c3f4d8" async="async"></script>
                <div class="addthis_sharing_toolbox"></div>
              </div>
            </footer>
          </div><!-- .post-inner -->
        </article><!-- .post-content -->
          
        <div class="post-comments">
							<h2 class="section-title">Comments (<?php echo get_comments_number(); ?>)</h2>
							<div class="section-box">
              <?php
          if (comments_open() || get_comments_number()):
            comments_template();
          endif;
          ?>
          </div><!-- .section-box -->
        </div><!-- .post-comments -->
      </main>
      <!-- .post-single -->
    </div>
    </div>
    </div>
    <?php get_sidebar(); ?>
  </div><!-- /.row -->

</main><!-- /.container -->
<?php get_footer(); ?>