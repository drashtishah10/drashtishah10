<?php
/* Template Name: Service Detail */
get_header();
get_template_part( 'template-parts/content', 'inner-banner' );
if(have_posts()):
    while(have_posts()) : the_post();   ?>  
   
	<?php
	endwhile;
    else: get_template_part( 'content', 'none' );
    endif;
get_footer(); ?>