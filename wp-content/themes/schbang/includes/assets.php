<?php

add_action('wp_enqueue_scripts', 'mytheme_wp_enqueue_scripts');
function mytheme_wp_enqueue_scripts(){
    wp_deregister_script('jquery');
    wp_register_script('jquery', get_template_directory_uri() . '/assets/js/jquery-3.4.1.min.js', false, '', false);
    wp_enqueue_script('jquery');
    //assets/css
   
    // wp_enqueue_style('font-awesome-css', get_template_directory_uri() . '/assets/css/font-awesome.min.css', array(), '');  
    // wp_enqueue_style('slick-theme-css', get_template_directory_uri() . '/assets/css/slick-theme.css', array(), '');    
    // wp_enqueue_style('slick-css', get_template_directory_uri() . '/assets/css/slick.css', array(), '');    
    // wp_enqueue_style('common-css', get_template_directory_uri() . '/assets/css/common.css', array(), '');  
    

	// if(is_front_page() && is_page_template('page-templates/page-home.php')){   
    //     wp_enqueue_style('smk-accordion-css', get_template_directory_uri() . '/assets/css/smk-accordion.css', array(), '');      
    //     wp_enqueue_style('animate-css', get_template_directory_uri() . '/assets/css/animate.css', array(), '');      
    //     wp_enqueue_style('home-css', get_template_directory_uri() . '/assets/css/home.css', array(), '');      
    // }  
   
    // if(is_page_template('page-templates/page-contact.php')){
    //     wp_enqueue_style('contact-css', get_template_directory_uri() . '/assets/css/contact.css', array(), '');
    // }
    // wp_enqueue_style('dev-css', get_template_directory_uri() . '/assets/css/dev.css', array(), '');

    // //assets/js

        wp_enqueue_script('validate-js', get_template_directory_uri() . '/assets/js/jquery.validate.min.js', '','', true);    
    // wp_enqueue_script('script-js', get_template_directory_uri() . '/assets/js/script.js', '','', true);    
    // wp_enqueue_script('modal-box-js', get_template_directory_uri() . '/assets/js/modal-box.js', '','', true);    
       
    // if(is_front_page() && is_page_template('page-templates/page-home.php')) {    
	// 	wp_enqueue_script('smk-accordion-js', get_template_directory_uri() . '/assets/js/smk-accordion.js', '','', true);  
	// 	wp_enqueue_script('tabs-js', get_template_directory_uri() . '/assets/js/tabs.js', '','', true);  
	// 	wp_enqueue_script('wow.min-js', get_template_directory_uri() . '/assets/js/wow.min.js', '','', true);  
	// 	wp_enqueue_script('home-js', get_template_directory_uri() . '/assets/js/home.js', '','', true);  
		
    // }
  
    wp_enqueue_script('custom-js', get_template_directory_uri() . '/assets/js/custom.js', '', '', true);
    // wp_localize_script('custom-js', 'object', array(
    //     'site_url' => site_url(),
    //     'theme_folder' => get_template_directory_uri() . '/images',
    //     'admin_ajax' => admin_url('admin-ajax.php'),
    // ));
    //localize data for script
    wp_localize_script( 'custom-js', 'POST_SUBMITTER', array(
        'root' => esc_url_raw( rest_url() ),
        'nonce' => wp_create_nonce( 'wp_rest' ),
        'success' => __( 'Thanks for your submission!', 'your-text-domain' ),
        'failure' => __( 'Your submission could not be processed.', 'your-text-domain' ),
        'current_user_id' => get_current_user_id()
    )
);
}