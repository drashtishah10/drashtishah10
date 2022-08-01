<?php
$why_choose_us = get_field('why_choose_us','option'); 
$why_choose_us_image = get_field('why_choose_us_image','option'); 
if(!empty($why_choose_us) || !empty($why_choose_us_image) ){ ?> 
<!--    start why choose us -->    
<section class="choose_hm">
	<div class="container">
		<div class="choose_div flexdiv">
			<div class="col6 whybg wow fadeInLeft">
				<div class="choose_inner">
					<div class="title alleft"><?=  get_field('why_choose_us_title','option') ?></div>					
					 <?php if(!empty($why_choose_us)){ ?> 
						<div class="line"></div>
						<ul class="dlist">
							<?php foreach($why_choose_us as $key=>$single) echo ' <li>'.$single['text'].'</li>'; ?>
						</ul>
                    <?php } ?>					
				</div>
			</div>
			<?php if(!empty($why_choose_us_image)){ ?>
			<div class="col6 wow fadeInRight">
				<div class="choose_img">					
					<?= wp_get_attachment_image($why_choose_us_image , 'why_choose_us_image') ?>
					<img src="<?php echo get_template_directory_uri(); ?>/assets/images/hypower-logo.png" alt="hypower-logo" data-no-lazy="1" class="hypower" />
				</div>
			</div>
			<?php }
			$why_choose_us_logo = get_field('why_choose_us_logo','option'); 
			if(!empty($why_choose_us_logo)){ ?>
				<div class="logoicon_div"><span><?= wp_get_attachment_image($why_choose_us_logo , 'full') ?></span></div>
			<?php } ?>			
		</div>		
	</div>
</section> <!--    End why choose us -->  
<?php } 