<?php

function load_stylesheets()
{
    //Icon fonts
    wp_register_style('icon', get_template_directory_uri() . '/fonts/map-icons/css/map-icons.min.css', array(), 1, 'all');
    wp_enqueue_style('icon');

    wp_register_style('icomooncss', get_template_directory_uri() . '/fonts/map-icons/css/map-icons.min.css', array(), 1, 'all');
    wp_enqueue_style('icomooncss');

    wp_register_style('icomooncss2', get_template_directory_uri() . '/fonts/icomoon/style.css', array(), 1, 'all');
    wp_enqueue_style('icomooncss2');

    //Styles and scripts
    wp_register_style('bxslider', get_template_directory_uri() . '/js/plugins/jquery.bxslider/jquery.bxslider.css', array(), 1, 'all');
    wp_enqueue_style('bxslider');

    wp_register_style('customscroll', get_template_directory_uri() . '/js/plugins/jquery.customscroll/jquery.mCustomScrollbar.min.css', array(), 1, 'all');
    wp_enqueue_style('customscroll');

    wp_register_style('mediaelement', get_template_directory_uri() . '/js/plugins/jquery.mediaelement/mediaelementplayer.min.css', array(), 1, 'all');
    wp_enqueue_style('mediaelement');

    wp_register_style('fancybox', get_template_directory_uri() . '/js/plugins/jquery.fancybox/jquery.fancybox.css', array(), 1, 'all');
    wp_enqueue_style('fancybox');

    wp_register_style('carousel', get_template_directory_uri() . '/js/plugins/jquery.owlcarousel/owl.carousel.css', array(), 1, 'all');
    wp_enqueue_style('carousel');

    wp_register_style('owlcarousel', get_template_directory_uri() . '/js/plugins/jquery.owlcarousel/owl.theme.css', array(), 1, 'all');
    wp_enqueue_style('owlcarousel');

    wp_register_style('optionpanel', get_template_directory_uri() . '/js/plugins/jquery.optionpanel/option-panel.css', array(), 1, 'all');
    wp_enqueue_style('optionpanel');

    wp_register_style('style', get_template_directory_uri() . '/style.css', array(), 1, 'all');
    wp_enqueue_style('style');

    wp_register_style('color', get_template_directory_uri() . '/colors/theme-color.css', array(), 1, 'all');
    wp_enqueue_style('color');

}
add_action( 'wp_enqueue_scripts', 'load_stylesheets' );
    

function load_scripts()
{
    wp_register_script('bootstrap', get_template_directory_uri() . '/js/bootstrap.min.js', array('jquery'), 1, 1, 1);
    wp_enqueue_script('bootstrap');

    wp_register_script('modernizr', get_template_directory_uri() . '/js/libs/modernizr.js', array('jquery'), 1, 1, 1);
    wp_enqueue_script('modernizr');

    wp_register_script('site', get_template_directory_uri() . '/js/site.js', array('jquery'), 1, 1, 1);
    wp_enqueue_script('site');
}
add_action( 'wp_enqueue_scripts', 'load_scripts' );


add_action( 'after_setup_theme', 'custom_theme_setup' );
function custom_theme_setup() {
   // WordPress Titles
   add_theme_support( 'title-tag' );
   
   add_theme_support( 'post-thumbnails' );
   
   register_nav_menus( array(
       'primary' => 'Menu principal',
   ) );
}



//portfolio
function register_portfolio_post_type() {
    register_post_type(
    'portfolio',
    [
        'labels' => [
            'name' => __( 'Portfolio' ),
            'singular_name' => __( 'Portfolio' ),
            ],
        'public' => true,
        'has_archive' => true,
        'menu_icon' => 'dashicons-format-gallery',
        'supports' => [
            'title',        // Post title
            'editor',       // Post content
            'thumbnail',
        ]
        
    ]
    );
}
add_action( 'init', 'register_portfolio_post_type' );

//experience part
function register_experience_post_type() {
    register_post_type(
    'experience',
    [
        'labels' => [
            'name' => __( 'Experiences' ),
            'singular_name' => __( 'Experiences' ),
            ],
        'public' => true,
        'has_archive' => true,
        'menu_icon' => 'dashicons-building',
        'supports' => [
            'title',        // Post title
            'editor',       // Post content
            
        ]
        
    ]
    );
}
add_action( 'init', 'register_experience_post_type' );


//education part
function register_education_post_type() {
    register_post_type(
    'education',
    [
        'labels' => [
            'name' => __( 'Education' ),
            'singular_name' => __( 'Education' ),
            ],
        'public' => true,
        'has_archive' => true,
        'menu_icon' => 'dashicons-awards',
        'supports' => [
            'title',        // Post title
        ]
        
    ]
    );
}
add_action( 'init', 'register_education_post_type' );

//references part
function register_reference_post_type() {
    register_post_type(
    'reference',
    [
        'labels' => [
            'name' => __( 'Reference' ),
            'singular_name' => __( 'Reference' ),
            ],
        'public' => true,
        'has_archive' => true,
        'menu_icon' => 'dashicons-businessman',
        'supports' => [
            'title',        // Post title
            'editor',       // Post content
        ]
        
    ]
    );
}
add_action( 'init', 'register_reference_post_type' );

