<?php
/* Template Name: Thank you */   
get_header();
get_template_part( 'template-parts/content', 'inner-banner' );
if(have_posts()):
    while(have_posts()) : the_post(); $id = get_the_ID();  ?>
       <section class="inpage thank-404-pg">
			<div class="container">
				<div class="thank_you_content">
				<?= wp_get_attachment_image( get_post_thumbnail_id(), 'full'); ?>
				<?= the_content() ?> 
				</div>
			</div>
		</section>
		
        <?php   
        endwhile; 
    else: get_template_part( 'content', 'none' );
    endif;
get_footer(); ?>