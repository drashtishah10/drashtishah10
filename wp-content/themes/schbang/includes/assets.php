<?php

add_action('wp_enqueue_scripts', 'mytheme_wp_enqueue_scripts');
function mytheme_wp_enqueue_scripts(){
    wp_deregister_script('jquery');
    wp_register_script('jquery', get_template_directory_uri() . '/assets/js/jquery-3.4.1.min.js', false, '', false);
    wp_enqueue_script('jquery');
    //assets/css
   
    
     wp_enqueue_style('dev-css', get_template_directory_uri() . '/assets/css/dev.css', array(), '');

    // //assets/js

        wp_enqueue_script('validate-js', get_template_directory_uri() . '/assets/js/jquery.validate.min.js', '','', true);    
   
  
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