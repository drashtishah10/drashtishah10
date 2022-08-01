<?php
/* Template Name: Home Page*/
get_header();
if (have_posts()):
    while (have_posts()) : the_post(); 	?>  

	<?= get_template_part( 'template-parts/home-block/content', 'banner' ); ?>

     <!--    start Post Listing Section   -->
    <?= get_template_part( 'template-parts/home-block/content', 'Post-listing' ); ?> 
     <!--    End Post Listing Section  --> 

     <!--    start advanced booking Section   -->
     <?= get_template_part( 'template-parts/home-block/content', 'advanced-booking' ); ?> 
      <!--    End advanced booking Section  -->

    <!--    start our services   -->
    <?= get_template_part( 'template-parts/home-block/content', 'services' ); ?>
    <!--    End our services   --> 
    
    <!--    start Foods Section    -->
    <?= get_template_part( 'template-parts/home-block/content', ' Foods' ); ?> 
    <!--    End Foods Section   -->  

	<?= get_template_part( 'template-parts/content', 'cta' ); ?>    
       
             
     <?php 
	endwhile;
else: get_template_part('content', 'none');
endif;
get_footer(); ?>