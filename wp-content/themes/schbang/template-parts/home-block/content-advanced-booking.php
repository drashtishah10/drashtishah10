<?php 
$enquiry_form = get_field('enquiry_form', 'option');  
$enquiry_logo = get_field('enquiry_logo', 'option');  
$choose_security_and_safety = get_field('choose_security_and_safety', 'option');  
if(!empty($enquiry_form) || !empty($enquiry_logo)|| !empty($choose_security_and_safety)){ ?>
<div class="choose_securdiv flexdiv ptag">
	<?php if(!empty($choose_security_and_safety)){ ?>
	<div class="ch_securleft">
		<div class="chsecur_inner wow fadeInLeft">
			<div class="safety_wdt">
				<?php 
				if(is_front_page() && is_page_template('page-templates/page-home.php')){ ?>
				<h1 class="title_sm alleft"><?= get_field('choose_security_and_safety_title', 'option') ?></h1>
				<?php }else { ?><div class="title_sm alleft"><?= get_field('choose_security_and_safety_title', 'option') ?></div>
				<?php } ?>
				<ul class="safety_line">
					<?php foreach ($choose_security_and_safety as $single) { ?>						
						<li>
							<div class="guidebx">
								<div class="title_s blueclr"><?= $single['title'] ?></div>
								<p><?= $single['content'] ?><a href="<?= ((!empty($single['link']) )? $single['link'] : 'javascript:void(0);' ) ?>">View More </a> </p>
							</div>
						</li>
					<?php } ?>					
				</ul>
			</div>
		</div>
	</div>
	<?php } 	 
	if(!empty($enquiry_form) || !empty($enquiry_logo)){ ?>
	<div class="enquiry_div wow fadeInRight">
		<div class="title_md whiteclr"><?= get_field('enquiry_title', 'option') ?> </div>
		<?= $enquiry_form ?>
		<?php if(!empty($enquiry_logo)){ ?>
		<ul class="brand_list flexdiv">
			<?php foreach ($enquiry_logo as $single) { ?>
			<li><div class="brandbx"><?= wp_get_attachment_image($single['id'] , 'full','',array('data-no-lazy'=>'1')) ?></div></li>
			<?php } ?>
		</ul>
		<?php } ?>
	</div>
	<?php } ?>
</div>
<?php } 