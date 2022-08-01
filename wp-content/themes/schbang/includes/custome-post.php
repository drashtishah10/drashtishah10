<?php
$labels = array(
    'name'               => _x( 'Foods', 'post type general name', 'mytheme' ),
    'singular_name'      => _x( 'Food', 'post type singular name', 'mytheme' ),
    'menu_name'          => _x( 'Foods', 'admin menu', 'mytheme' ),
    'name_admin_bar'     => _x( 'Food', 'add new on admin bar', 'mytheme' ),
    'add_new'            => _x( 'Add New', 'Food', 'mytheme' ),
    'add_new_item'       => __( 'Add New Food', 'mytheme' ),
    'new_item'           => __( 'New Food', 'mytheme' ),
    'edit_item'          => __( 'Edit Food', 'mytheme' ),
    'view_item'          => __( 'View Food', 'mytheme' ),
    'all_items'          => __( 'All Foods', 'mytheme' ),
    'search_items'       => __( 'Search Foods', 'mytheme' ),
    'parent_item_colon'  => __( 'Parent Foods:', 'mytheme' ),
    'not_found'          => __( 'No Food found.', 'mytheme' ),
    'not_found_in_trash' => __( 'No Food found in Trash.', 'mytheme' )
);
$args = array(
    'labels'             => $labels,
    'description'        => __( 'Description.', 'mytheme' ),
    'public'             => true,
    'publicly_queryable' => false,
    'show_ui'            => true,
    'show_in_menu'       => true,
    'query_var'          => false,
    'exclude_from_search' => true,
    'menu_icon'          => 'dashicons-format-chat',
    'rewrite'            => array( 'slug' => 'our-food' ),
    'capability_type'    => 'post',
    'has_archive'        => true,
    'hierarchical'       => false,
    'menu_position'      => null,
    'supports'           => array( 'title', 'editor','custom-fields','thumbnail')
);
register_post_type( 'our-food', $args );