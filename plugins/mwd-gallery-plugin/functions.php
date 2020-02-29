<?php
add_action( 'wp_enqueue_scripts', 'add_gallery_styles' );
function add_gallery_styles(){
	wp_enqueue_style( 'magnific', plugins_url('assets/css/gallery_style.css', __FILE__) );
	wp_enqueue_style( 'fancy-box-styles', plugins_url('assets/fancybox/jquery.fancybox-1.3.4.css', __FILE__) );
};
add_action( 'wp_enqueue_scripts', 'add_gallery_scripts' );
function add_gallery_scripts(){
	wp_enqueue_script( 'main', plugins_url( 'assets/js/main.js', __FILE__), array('jquery'), '1.0', true  );
    wp_enqueue_script( 'fancy-box', plugins_url('assets/fancybox/jquery.fancybox-1.3.4.pack.js', __FILE__), array( 'jquery' ), '1.0', true );
    wp_enqueue_script( 'fancy-box-easing', plugins_url('assets/fancybox/jquery.easing-1.3.pack.js', __FILE__), array( 'jquery' ), '1.0', true );
    wp_enqueue_script( 'fancy-box-scroll', plugins_url('assets/fancybox/jquery.mousewheel-3.0.4.pack.js', __FILE__), array( 'jquery' ), '1.0', true );
};