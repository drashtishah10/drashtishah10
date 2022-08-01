<?php

/**
 * The plugin bootstrap file
 *
 * This file is read by WordPress to generate the plugin information in the plugin
 * admin area. This file also includes all of the dependencies used by the plugin,
 * registers the activation and deactivation functions, and defines a function
 * that starts the plugin.
 *
 * @link              Schbang.com
 * @since             1.0.0
 * @package           Schbang
 *
 * @wordpress-plugin
 * Plugin Name:       Schbang
 * Plugin URI:        Schbang.com
 * Description:       This is a short description of what the plugin does. It's displayed in the WordPress admin area.
 * Version:           1.0.0
 * Author:            Drashti
 * Author URI:        Schbang.com
 * License:           GPL-2.0+
 * License URI:       http://www.gnu.org/licenses/gpl-2.0.txt
 * Text Domain:       schbang
 * Domain Path:       /languages
 */

// If this file is called directly, abort.
if ( ! defined( 'WPINC' ) ) {
	die;
}

/**
 * Currently plugin version.
 * Start at version 1.0.0 and use SemVer - https://semver.org
 * Rename this for your plugin and update it as you release new versions.
 */
define( 'SCHBANG_VERSION', '1.0.0' );

/**
 * The code that runs during plugin activation.
 * This action is documented in includes/class-schbang-activator.php
 */
function activate_schbang() {
	require_once plugin_dir_path( __FILE__ ) . 'includes/class-schbang-activator.php';
	Schbang_Activator::activate();
}

/**
 * The code that runs during plugin deactivation.
 * This action is documented in includes/class-schbang-deactivator.php
 */
function deactivate_schbang() {
	require_once plugin_dir_path( __FILE__ ) . 'includes/class-schbang-deactivator.php';
	Schbang_Deactivator::deactivate();
}

register_activation_hook( __FILE__, 'activate_schbang' );
register_deactivation_hook( __FILE__, 'deactivate_schbang' );

/**
 * The core plugin class that is used to define internationalization,
 * admin-specific hooks, and public-facing site hooks.
 */
require plugin_dir_path( __FILE__ ) . 'includes/class-schbang.php';

/**
 * Begins execution of the plugin.
 *
 * Since everything within the plugin is registered via hooks,
 * then kicking off the plugin from this point in the file does
 * not affect the page life cycle.
 *
 * @since    1.0.0
 */

function test_contact_form()
{      
  global $wpdb; 
  $test_db_version = '1.0.0';
  $db_table_name = $wpdb->prefix . 'contactus_detail';  // table name
  $charset_collate = $wpdb->get_charset_collate();

 //Check to see if the table exists already, if not, then create it
 if($wpdb->get_var( "show tables like '$db_table_name'" ) != $db_table_name ) 
 {
       $sql = "CREATE TABLE `$db_table_name` (
                `id` int(11) NOT NULL auto_increment,
                `name` varchar(60) NOT NULL,
                `emailid` varchar(200) NOT NULL,
                `mobileno` varchar(10) NOT NULL,
                `message` varchar(1000) NOT NULL,
                UNIQUE KEY id (id)
        ) $charset_collate;";

   require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
   dbDelta( $sql );
   add_option( 'test_db_version', $test_db_version );
 }
} 

register_activation_hook( __FILE__, 'test_contact_form' );

function run_schbang() {

	$plugin = new Schbang();
	$plugin->run();

}
run_schbang();


/**
 * get_homepage_data_endpoint
 * @return WP_REST_Response
 */
function get_homepage_data()
{
	$Home_data = array();
    $site_logo =  get_field('site_logo' , 'option');

	$Home_data['Header_section']['site_logo']['ID'] = $site_logo['ID'];
	$Home_data['Header_section']['site_logo']['url'] = $site_logo['url'];
	
	$menuLocations = get_nav_menu_locations();
	$menuID = $menuLocations['primary']; 
    $primaryNav = wp_get_nav_menu_items($menuID); 

	foreach($primaryNav as $index=>$item) {
		$Home_data['Header_section']['header_manu'][$index]['link'] = get_permalink($item->ID); 
		$Home_data['Header_section']['header_manu'][$index]['title'] = $item->title;
		$Home_data['Header_section']['header_manu'][$index]['target'] = $item->target;
		$Home_data['Header_section']['header_manu'][$index]['classes'] = $item->classes;
	 }

	 $add_location =  get_field('add_location' , 'option');

	 $Home_data['Header_section']['Left_site_location'] = $add_location;

	 $pageID = get_option('page_on_front');

	 $banner_list =  get_field('banner_list' , $pageID);
	 foreach($banner_list as $index=>$banner) {
		$Home_data['home_section']['Banner']['Heading'] = $banner['banner_title'];
		$Home_data['home_section']['Banner']['Image'] = $banner['banner_image'];
	 }

	 $Home_data['home_section']['after_banner_text_section']['content_heading'] = get_field('content_heading' , $pageID);
	 $Home_data['home_section']['after_banner_text_section']['content_text'] = get_field('content_text' , $pageID);

	 $slelect_post =  get_field('slelect_post' , $pageID);
	 $see_more_link =  get_field('see_more_link' , $pageID);

	 foreach($slelect_post as $index=>$post_item) {
		$Home_data['home_section']['Post_listing_Section']['slelect_post'][$index] = $post_item ;
	 }
	 $Home_data['home_section']['Post_listing_Section']['see_more_link'] =  $see_more_link;

	 $Home_data['home_section']['Advance_Booking_Section']['section_heading'] =  get_field('section_heading' , $pageID);

	 $services_listing =  get_field('services_listing' , $pageID);

	 $Home_data['home_section']['Our_Services_Section']['service_heading'] =  get_field('service_heading' , $pageID);
	 $Home_data['home_section']['Our_Services_Section']['services_content'] =  get_field('services_content' , $pageID);
	 foreach($services_listing as $index=>$services_item) {
		$Home_data['home_section']['Our_Services_Section']['services_items'][$index] =  $services_item;
	 }

	 $Home_data['home_section']['Our_Foods_Section']['foods_section_heading'] =  get_field('foods_section_heading' , $pageID);
	 $Home_data['home_section']['Our_Foods_Section']['foods_section_content'] =  get_field('foods_section_content' , $pageID);

	 $args = array( 'post_type' => 'our-food', 'posts_per_page' => -1 );
     $loop = new WP_Query( $args );

	 $Home_data['home_section']['Our_Foods_Section']['foods_item'] =  $loop->posts;

	 $cta_button =  get_field('cta_button', 'option');

	 $Home_data['Bottom_CTA_Section']['cta_title'] =  get_field('cta_title', 'option');
	 $Home_data['Bottom_CTA_Section']['cta_text'] =  get_field('cta_text', 'option');
	 $Home_data['Bottom_CTA_Section']['cta_image'] =  get_field('cta_image', 'option');
	 foreach($cta_button as $index=>$button) {
	 $Home_data['Bottom_CTA_Section']['button'][$index] =  $button['add_button'];
	 }

	 $social_icons =  get_field('social_icons', 'option');

	 $Home_data['Footer_section']['footer_text'] = get_field('footer_text', 'option');
	 $Home_data['Footer_section']['footer_sub_text'] = get_field('footer_sub_text', 'option');
	 foreach($social_icons as $index=>$icons) {
	 $Home_data['Footer_section']['social_icons'][$index] = $icons['add_social_media'];
	 }	
	 $Home_data['Footer_section']['copy_right_text'] = get_field('copy_right_text', 'option');

	 
    return $Home_data;
	//print_r($Home_data) ;
	
	// $home_page_fields = acf_get_fields(48);
	// $home_fields = [];
	// if(count($home_page_fields) > 0) {
	// 	foreach ($home_page_fields as $field) {
	// 		print_r($field);
	// 		if($field['type'] != 'tab' && $field['name'] != '') {
	// 			$home_fields[$field['label']] = $field['value'];
	// 		}
	// 	}
	// }
	// return $home_fields;


}

/**
 * at_rest_init
 */
function at_rest_init()
{
    // route url: domain.com/wp-json/$namespace/$route
    $namespace = 'schbang/v1';
    $route     = 'homepage';

    register_rest_route($namespace, $route, array(
        'methods'   => 'GET',
        'callback'  => 'get_homepage_data'
    ));
}

add_action('rest_api_init', 'at_rest_init');



function get_form_data($request) 
{
	$data = $request->get_params();

	global $wpdb;
	$tablename = $wpdb->prefix.'contactus_detail';

	if(!empty($data)){
		$form_data = array();
		foreach($data as $key => $single){
			$form_data = json_decode($key, TRUE);
			break;
		}
		
		$wpdb->insert( $tablename, array( 'name'=> $form_data['first_name'], 'emailid'=> $form_data['email'],'mobileno'=> $form_data['phone'], 'message'=> $form_data['message']  ),
				array( '%s', '%s', '%s', '%s' ) 
		);

	}
	
	$query = "SELECT * FROM $tablename";
	$results = $wpdb->get_results($query);
	if(!empty($results)){	
			return $results;
		}
	else {
			$response_data = array( 
                'message' => 'Form Data is Empty'
            );
            wp_send_json( $response_data );
		}
          
}

/**
 * Form_rest_init
 */
function form_rest_init()
{
    // route url: domain.com/wp-json/$namespace/$route
    $namespace = 'schbang/v1';
    $route     = 'formdata';

    register_rest_route($namespace, $route, array(
        'methods'   => 'GET',
        'callback'  => 'get_form_data'
    ));
}

add_action('rest_api_init', 'form_rest_init');



