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

add_shortcode('my_gallery', 'show_my_gallery');

function show_my_gallery( $atts ) {
    $my_atts = explode(  ',', $atts['ids']);
    $gallery = '';
    $html = '<div class="gallery" >';
    foreach ( $my_atts as $imageId ){
        $gallery .= '<a class="gallery__item" href="' . wp_get_attachment_image_url( $imageId, 'full' ) . '" rel="gallery">'
                        . wp_get_attachment_image( $imageId, 'full' ) .
                    '</a>';
    }
    $htmlEnd = '</div>';
    return $html . $gallery . $htmlEnd;
}