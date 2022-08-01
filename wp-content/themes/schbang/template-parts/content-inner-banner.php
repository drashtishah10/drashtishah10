<?php   
$banner_image = get_field('breadcrumb_image');
if(empty($banner_image)) $banner_image = get_field('breadcrumb_image','option');
?>
<section class="brd_box">
	<?= wp_get_attachment_image($banner_image , 'inner_banner_image','',array('class'=>'bgimg')) ?>
	<div class="container">
		<?php 
		$custom_h1_page_title = get_field("custom_h1_page_title");
		if ( is_404() ) { echo '<h1 class="pageheader">404 Not Found </h1> '; } 			
		else{
			if(!empty($custom_h1_page_title)) {  echo '<h1 class="pageheader">'.$custom_h1_page_title.'</h1> '; } 
			else {  echo '<div class="pageheader">'.get_the_title().'</div> '; }
		}?>
		<div class="breadcrumb_bar">
			<?= yoast_breadcrumb( '<ul class="woo_breadcums"><li>', '</li></ul>', false ); ?>	
		</div>
	</div>
</section>