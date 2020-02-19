<?php
/**
 * Plugin Name: mwd-gallery-plugin
 * Description: Плагин галлереи
 * Plugin URI:  www
 * Author URI:  www
 * Author:      Nikita
 * Version:     1.0
 */

require_once __DIR__ . '/functions.php';

add_shortcode('test', 'show_test_info');

function show_test_info( $params ) {

	$gallery_html = '<div class="gallery">';
	$gallery_img = '';

	$count = 0;

	foreach ( explode(',', $params['ids']) as $img__id ) {
		$img = wp_get_attachment_url( $img__id );
		$gallery_img .=
			'
			<div class="gallery__item">
				<div class="innerImg">
					<img src="' . $img . '" alt="gallery img">	
				</div>
			</div>
			';
		$count++;
	}

	$gallery_html .= $gallery_img . '</div>';
	return $gallery_html;
}