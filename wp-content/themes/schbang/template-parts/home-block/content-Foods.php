<?php 
$deals = get_field('deals', 'option'); 
$phone_number = get_field('phone_number','option'); 
$get_a_free_quote_link = get_field('get_a_free_quote_link','option');  
if(!empty($deals)){ ?>
	 <!--    start deal   -->    
    <section class="hm_deal wow fadeInUp">
        <div class="container">
            <div class="deal_inner">
				<div class="title deal_title"><?= get_field('deals_title', 'option') ?></div>
				<ul class="tabs">
					 <?php foreach ($deals as $key=>$single) { ?>
					<li class="<?= ($key==0)?'active':'' ?>" rel="tab<?= $key ?>">
						<p><?= $single['title'] ?></p>
					</li>
					 <?php } ?>                        
				</ul>
               	<div class="tab_container">
				     <?php foreach ($deals as $key=>$single) { ?>
					<div id="tab<?= $key ?>" class="tab_content">
				        <div class="cctv_div"> <?= wp_get_attachment_image($single['background_image'], 'deals_background_image','',array('class'=>'bgimg')) ?>                         
                            <div class="cctv_info">
								<?= wp_get_attachment_image($single['icon'], 'full') ?>
								<?= $single['content'] ?>                               
                                <ul class="btnlist">
                                    <?php if(!empty($phone_number)){ ?>
										<li><a href="tel:<?php echo $phone_number; ?>" class="btn_black"> <?php echo $phone_number; ?></a></li>
									<?php } if(!empty($get_a_free_quote_link)){ ?>
										<li><a href="<?php echo $get_a_free_quote_link; ?>" class="btn_blk">Get a Free Quote </a></li>
									<?php } ?>										
                                  </ul>
                            </div>
                        </div>				   
					</div>
				    <?php } ?>
				</div>
            </div>
        </div>
    </section>    
    <!--    End deal   -->	
<?php } 