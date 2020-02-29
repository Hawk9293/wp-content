<?php get_header();?>
<?php require "includes/hero-block.php"?>

<?php
$imagesId = get_field('main_gallery', '126');
echo do_shortcode('[my_gallery ids="'. $imagesId .'"]');
?>

<?php require "includes/after-before-block.php"?>
<?php require "includes/reviews-block.php"?>
<?php require "includes/certificates-block.php"?>
<?php require "includes/contact-us-block.php"?>
<?php get_footer();?>
