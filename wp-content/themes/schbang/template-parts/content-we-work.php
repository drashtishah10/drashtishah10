<section class="hm_wcu"> 
    <?php 
	$why_choose_us = get_field('why_choose_us','option');  
	if(!empty($why_choose_us)  ){ 
	?>
	<div class="container"> 
        <div class="main-heading wow fadeInDown"> <?=  get_field('why_choose_us_title','option') ?>   </div>
        
        <ul class="wcu_list"> 
            <?php foreach($why_choose_us as $key=>$single)  { ?>
				<li class="wow zoomIn" wow-data-delay="0.<?= ($key+2)?>s">  
					<span> <?= wp_get_attachment_image($single['icon'] , 'full') ?> </span>
					<label> <?= $single['title'] ?></label>  
				</li>
            <?php } ?>	
        </ul>
        
    </div>
    <?php } ?>	
    <?= get_template_part( 'template-parts/content', 'common-cta' ); ?>      
</section>

