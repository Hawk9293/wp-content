<?php
add_action( 'wp_enqueue_scripts', 'add_gallery_styles' );
function add_gallery_styles(){
	wp_enqueue_style( 'magnific', plugins_url('assets/css/gallery_style.css', __FILE__) );
};
add_action( 'wp_enqueue_scripts', 'add_gallery_scripts' );
function add_gallery_scripts(){
	wp_enqueue_script( 'main', ASSETS_PATH . 'js/main.js', array('jquery', 'modernizr', 'move-top', 'magnific', 'easing'), '1.0', true  );
};