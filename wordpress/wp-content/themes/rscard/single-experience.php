<?php 
$args = array(
  'post_type'=> 'experience',
);              

$the_query = new WP_Query( $args );

if($the_query->have_posts() ) : 
  while ( $the_query->have_posts() ) : 
  $the_query->the_post(); ?>

    
  
  <?php
  endwhile; 
  wp_reset_postdata(); 

endif;

?>