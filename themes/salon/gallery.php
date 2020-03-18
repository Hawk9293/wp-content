<?php
/*
Template Name: Gallery
*/
?>

<?php get_header(); ?>

<?php
$imagesId = get_field('main_gallery', '126');
echo do_shortcode('[my_gallery ids="'. $imagesId .'"]');
?>

<?php get_footer(); ?>