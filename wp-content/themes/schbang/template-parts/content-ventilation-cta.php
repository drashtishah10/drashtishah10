<div class="hm_cta wow fadeInUp">
	<div class="container"> 
		<div class="ctabox"> 
			<?= wp_get_attachment_image(get_field('emergency_cta_background_image','option') , 'emergency_cta_background_image','',array('class'=>'bgimg deskview')) ?>
			<?= wp_get_attachment_image(get_field('emergency_cta_background_mobile_image','option') , 'emergency_cta_background_mobile_image','',array('class'=>'bgimg hidden')) ?>
            <div class="ctatxt flex-container"> 
				<div class="ctaleft flex-container">  
					<div class="ctatit main-heading"> <?= get_field('emergency_cta_title','option')  ?> </div>
					<?= get_field('emergency_cta_content','option')  ?>
				</div>
				<div class="ctaright"> 
					<?php 
					$phone_number = get_field('phone_number','option');
					if(!empty($phone_number)) { ?><a href="tel:<?= $phone_number ?>" class="btn_green"> Need help? Call:<?= $phone_number ?> </a>
					<?php 
					}
					$request_a_quote_link = get_field('request_a_quote_link','option');
					if(!empty($request_a_quote_link)) { ?>
				   <a href="<?= $request_a_quote_link ?>" class="btn_dark">  Request A Quote </a>
					<?php }?>
				</div>            
            </div>
         </div>
	</div>
</div>