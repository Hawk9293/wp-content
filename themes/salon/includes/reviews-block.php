<?php

$header = get_field('reviews_header', 'option');
$subHeader = get_field('reviews_subheader', 'option');

$args = array(
    'post_type'   => 'review',
    'numberposts' => -1,
    'order'       => 'ASC'
);

$reviews_posts = get_posts( $args );

?>

<section class="reviewsBlock" data-page-url="reviews">
    <div class="pattern" ></div>
    <div class="wrapper">
        <div class="reviews">
            <div class="servicesHeader animate fadeIn wow" data-wow-delay=".1s">
                <h3 class="sectionSubtitle"><?php echo $subHeader; ?></h3>
                <h2 class="sectionTitle"><?php echo $header; ?></h2>
            </div>
            <?php foreach( $reviews_posts as $index => $review):
                $id = $review -> ID;
                $review_name = get_field('review_name', $id);
                $review_age = get_field('review_age', $id);
                $review_info = get_field('review_info', $id);
                $thumb = get_the_post_thumbnail_url( $id );
                
                $modif = '';
                if ( ( $index ) % 2 ) {
	                $modif = '-reverse';
                }
            ?>
            <div class="reviewsContainer reviewsContainer<?php echo $modif;?>">
                <div class="reviewsContainer__item animate zoomIn wow" data-wow-delay=".1s">
                    <div class="imgLayer imgLayer-first">   
                    </div>
                    <div class="imgLayer imgLayer-second">   
                    </div>
                    <div class="imgLayer imgLayer-third">     
                    </div>
                    <div class="imgLayer imgLayer-fourth">
                        <img src="<?php echo $thumb; ?>" alt="">
                    </div>
                </div>
                <div class="reviewsContainer__item reviewsContainer__item-text animate fadeIn wow" data-wow-delay=".4s">
                    <div class="name">
                        <h2><?php echo $review_name?></h2> 
                    </div>
                    <div class="age">
                        <?php echo $review_age . ' лет';?>
                    </div>
                    <div class="text">
                        <?php echo $review_info; ?>
                    </div>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
    </div>
    <div class="pattern pattern-down"></div>
</section>