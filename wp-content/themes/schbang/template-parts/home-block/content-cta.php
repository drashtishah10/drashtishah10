<?php 
$we_specialize = get_field('we_specialize', 'option');  
if(!empty($we_specialize)){ ?>
	 <!--    start We Specialize in -->    
    <section class="we_specialize">
        <?= wp_get_attachment_image(get_field('we_specialize_background_image', 'option') , 'we_specialize_background_image','',array('class'=>'bgimg')) ?>
		<div class="container">
            <div class="intro center wow zoomIn">
                <div class="title title_shape whiteclr"><?= get_field('we_specialize_title', 'option') ?> </div>
            </div>            
            <ul class="special_js wow fadeInUp">
                <?php foreach ($we_specialize as $key=>$single) { ?>
					<li>
						<div class="specailbox">
							<span><?= wp_get_attachment_image($single['icon'] , 'full') ?> <div class="title_s"><?= $single['text'] ?></div>  </span>
						</div>
					</li>
                <?php }?>
            </ul>
        </div>
    </section>    
    <!--    End We Specialize in -->		
<?php } ?>