<?php 
$banners = get_field('banners','option'); ?>		
    <!--	Start Banner -->
    <section class="banner">
        <div class="js_hmbanner wow fadeInUp">
            <?php
			foreach($banners as $key=>$bnr){
				$desktop_banner = $bnr['desktop_banner'];
				$mobile_banner = $bnr['mobile_banner'];
				$years_of_experience = $bnr['years_of_experience'];
				$title = $bnr['title'];
				$sub_title = $bnr['sub_title'];
				$button_title = $bnr['button_title'];
				$button_url = $bnr['button_url'];
				$banner_logo = $bnr['banner_logo'];
			?>	
            <div class="slideingdiv">
			<?= wp_get_attachment_image($desktop_banner , 'desktop_banner','',array('class'=>'ban_desk')) ?> 
			<?= wp_get_attachment_image($mobile_banner , 'mobile_banner','',array('class'=>'ban_xs')) ?> 
                <div class="bannertext second1">
                    <div class="container hmbo_wrap">
                        <div class="webox">
							<?php if($years_of_experience) { ?><div class="yeartxt"><?= $years_of_experience; ?></div><?php } ?>
								<?php if($title) { ?>
									<div class="big_title"><?= $title; ?></div>
							<?php } ?>            
							<?php if($sub_title) { ?><div class="small_title"><?= $sub_title; ?></div><?php } ?>
                            <ul class="btnlist">
							<?php if($button_url) {?>
                                <li>
                                    <a href="<?= $button_url ?>" class="btn_blk"><?= $button_title; ?> </a>
                                </li>
							<?php } ?>
							<?php if($banner_logo) { ?>
                                <li>
                                     <?= wp_get_attachment_image($banner_logo , 'logo_banner','',array('class'=>'')) ?>   
                                </li>
							<?php } ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
			<?php 
			if( is_page_template('page-templates/page-areas-we-serve.php') ||  is_page_template('page-templates/page-suburb.php'))break;
			} ?>
        </div>
        <?php
			$banner_trust_factor = get_field('banner_trust_factor','option');
			 if($banner_trust_factor) { 
		?>
        <div class="trust_factor wow fadeInUp">
            <div class="container">
                <ul class="bantrust_js">
					<?php
					foreach($banner_trust_factor as $trust) { 
						$icon = $trust['icon'];
						$title = $trust['title'];
					?>
                    <li>
                        <div class="trustbx">
                            <?= wp_get_attachment_image($icon , 'banner_trust_icon','',array('class'=>'')) ?>
                            <p><?= $title ?></p>
                        </div>
                    </li>
					<?php } ?>
                 </ul>
            </div>
        </div>
			 <?php } ?>
    </section>
    <!--	End Banner  -->