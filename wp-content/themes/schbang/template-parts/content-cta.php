<?php 
$security_cta_content = get_field('security_cta_content', 'option');  
$phone_number = get_field('phone_number','option'); 
$get_a_free_quote_link = get_field('get_a_free_quote_link','option');  
if(!empty($security_cta_content)){ ?>
<!--    start Home security  -->
<section class="home_security">
	<img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo-icon.png" alt="logo-icon" class="logo_icon"/>
	<div class="container">
		<div class="securit_inner center wow zoomIn">
			<?= $security_cta_content ?>
			<ul class="btnlist">
				<?php if(!empty($phone_number)){ ?>
					<li><a href="tel:<?php echo $phone_number; ?>" class="btn_black"> <?php echo $phone_number; ?></a></li>
				<?php } if(!empty($get_a_free_quote_link)){ ?>
					<li><a href="<?php echo $get_a_free_quote_link; ?>" class="btn_blk">Get a Free Quote </a></li>
				<?php } ?>					
			  </ul>
		</div>
	</div>
</section>
<!--    End Home security  -->
<?php } ?>