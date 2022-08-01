<?php
add_action('after_setup_theme', 'mytheme_after_setup_theme');
function mytheme_after_setup_theme(){
    load_theme_textdomain('schbangdesign');
    add_theme_support('automatic-feed-links');
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
    add_theme_support('menus');
    add_post_type_support( 'page', 'excerpt' );
    register_nav_menus(
        array( 
            'primary' => __('Primary Menu'),
            'quick_links' => __('Quick Links'), 
        ));
    add_theme_support('html5', array(
        'search-form',
        'comment-form',
        'comment-list',
        'gallery',
        'caption'
    ));
    add_theme_support('post-formats', array(
        'aside',
        'image',
        'video',
        'quote',
        'link',
        'gallery',
        'status',
        'audio',
        'chat'
    ));
   
}
function wpcf7_add_text_to_mail_body($contact_form){
    // get mail property
    $mail = $contact_form->prop( 'mail' ); // returns array with mail values
    $copyright_text = get_field('copyright_text', 'option');
    $mail['body'] = str_replace("[footer_copyright]",$copyright_text,$mail['body']);
    // set mail property with changed values)
    $contact_form->set_properties( array( 'mail' => $mail ) );
}
add_action( '', 'wpcf7_add_text_to_mail_body' );
//
function wpcf7_add_logo_to_mail_body($contact_form){
    // get mail property
    $mail = $contact_form->prop( 'mail' ); // returns array with mail values
    $header_logo = get_field('header_logo', 'option');
    $header_logo_url = $header_logo['url'];
    $mail['body'] = str_replace("[site_logo]",$header_logo_url,$mail['body']);
    // set mail property with changed values)
    $contact_form->set_properties( array( 'mail' => $mail ) );
}
add_action( 'wpcf7_before_send_mail', 'wpcf7_add_logo_to_mail_body' );
add_action('after_setup_theme', 'orionelectricalandlightingdesign_setup');
if (function_exists('acf_add_options_page')) {
    // Theme General Settings
    $general_settings = array(
        'page_title' => __('Theme Settings', 'stridegroup'),
        'menu_title' => __('Theme Settings', 'stridegroup'),
        'menu_slug' => 'theme-settings',
        'capability' => 'edit_posts',
        'redirect' => false
    );
    acf_add_options_page($general_settings);
}

// Automatically set the image Title, Alt-Text, Caption & Description upon upload /
add_action('add_attachment', 'my_set_image_meta_upon_image_upload');
function my_set_image_meta_upon_image_upload($post_ID)
{
    if (wp_attachment_is_image($post_ID)) {
        $my_image_title = get_post($post_ID)->post_title;
        $my_image_title = preg_replace('%\s*[-_\s]+\s*%', ' ', $my_image_title); // Sanitize the title:  remove hyphens, underscores & extra spaces:
        $my_image_title = ucwords(strtolower($my_image_title)); // Sanitize the title:  capitalize first letter of every word (other letters lower case):
        $my_image_meta = array('ID' => $post_ID, 'post_title' => $my_image_title);
        update_post_meta($post_ID, '_wp_attachment_image_alt', $my_image_title); // Set the image Alt-Text
    }
}

