<?php
$service_title = get_field('service_title','option'); 
$our_services = get_field('our_services','option'); 
if(!empty($our_services)){  ?>

	    <section class="our_services graybg ptag">
        <div class="container">
            <div class="intro center wow zoomIn">
                <?= $service_title; ?>
            </div>
            <ul class="services_js wow fadeInUp">
			<?php foreach($our_services as $services){
				$image = $services['image'];
				$icon = $services['icon'];
				$title = $services['title'];
				$blurb = $services['blurb'];
				$link = $services['link'];
				?>
                <li>
                    <a href="<?php echo $link ?>" class="serbox">
                        <div class="serimg">
                            <?= wp_get_attachment_image($image , 'home_service','',array('class'=>'')) ?>
                            <div class="ser_overlay">
                                <div class="icon">
                                    <span>
                                        <?= wp_get_attachment_image($icon , 'full','',array('class'=>'')) ?>
                                    </span>
                                </div>
                                <div class="title_sm whiteclr"><?= $title ?></div>
                                <div class="vert_line"></div>
                            </div>
                        </div>
                        <div class="ser_info">
                            <?= $blurb; ?>
                        </div>
                    </a>
                </li>
			<?php } ?>
            </ul>
        </div>
    </section>
<?php }