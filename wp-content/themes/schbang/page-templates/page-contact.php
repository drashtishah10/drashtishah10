<?php
/* Template Name: Contact Us */
get_header();
if(have_posts()):
    while(have_posts()) : the_post(); ?>
       <!-- SECTION PAGE INNER -->
	
<form action="<?php echo site_url(); ?>/wp-json/schbang/v1/formdata" name="schbang_test_form" id="schbang_test_form" method="get">
                    <div class="form-row">
                        <h3>PERSONAL INFO</h3>
                        <div class="row">
                            <div class="form-group col-md-12 col-lg-12">
                                <label>Name *</label>
                                <input type="text" name="first_name" id="first_name" placeholder="First Name" class="name_field sform-control">
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6 col-lg-6">
                                <label>Phone *</label>
                                <input type="tel" name="phone" id="phone" placeholder="Phone" class="number_field form-control">
                            </div>
                            <div class="form-group col-md-6 col-lg-6">
                                <label>Email *</label>
                                <input type="email" name="email" id="email" placeholder="Email" class="form-control">
                            </div>
                        </div>
                        <div class="row message-group">
                            <div class="form-group col-md-12 col-lg-12">
                                <label>Message</label>
                                <textarea name="message" id="message" class="form-control"></textarea>
                            </div>
                        </div>

						<input type="submit" name="submit" id="submit">
                    </div>
                    
                    <div class="row sect_row">
                                            <div class="col-12">
                                                <div class="alert form-messages" role="alert">
                                                </div>
                                            </div>
                                        </div>
                </form>
    <?php 
	endwhile;
else: get_template_part( 'content', 'none' );
endif;
get_footer(); ?>