<?php
/* Template Name: About Us  */
get_header();
get_template_part( 'template-parts/content', 'inner-banner' );
if(have_posts()):
    while(have_posts()) : the_post();   ?>  
    <!-- SECTION PAGE INNER -->
    <section class="inpage">
        <div class="container">
		<?= wp_get_attachment_image( get_post_thumbnail_id(), 'about_thumb_image','',array('class'=>'mrgb40')); ?>
            
            <div class="about-wrapper flex-container wrap">
                <div class="about-left-heading">
                    <div class="inpg-subheading"><?= get_field('content_title') ?></div>
                    <?php
					$phone_number = get_field('phone_number','option');     
					$alternate_phone_number = get_field('alternate_phone_number','option');     
					if(!empty($phone_number) || !empty($alternate_phone_number)) { ?>				
						<span class="btn-theme btnyellow">
							<?php 
							if(!empty($phone_number)) echo '<a href="tel:'.$phone_number.'" ><i class="fa fa-phone-square"></i>'.$phone_number.'</a>';
							if(!empty($alternate_phone_number)) echo ' / <a href="tel:'.$alternate_phone_number.'" >'.$alternate_phone_number.'</a>';
							?>							
						</span>						
					<?php }  ?>	
                </div>
                <div class="about-right-content">
                    <?= the_content() ?>
                </div>
            </div>
        </div>
    </section>
	<?= get_template_part( 'template-parts/content', 'free-sample' ); ?> 
	<div class="container">		
		<?= get_template_part( 'template-parts/content', 'trust-factors' ); ?>  		
	</div>
	<?php
	endwhile;
    else: get_template_part( 'content', 'none' );
    endif;
get_footer(); ?>