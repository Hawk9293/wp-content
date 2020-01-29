<?php

$args = array(
    'post_type'   => 'after_before',
    'numberposts' => -1,
    'order'       => 'ASC'
);

$ab_posts = get_posts( $args );

$ab_post_sort = [];

foreach( $ab_posts as $ab_post ) {
	$id = $ab_post -> ID;
	$order = get_field('post_id', $id);
	$ab_post_sort[$order] = $id;
}

ksort($ab_post_sort);
//var_dump( $ab_post_sort );
//
//
//wp_die();
?>

<section class="afterBeforeBlock" data-page-url="before_after">
    <div class="doubleroundlinebrown doubleroundlinebrown-down" ></div>
    <div class="wrapper">
        <div class="servicesHeader animate fadeIn wow" data-wow-delay=".1s">
            <h2 class="sectionTitle">
                <?php echo $ab_header[0]['header'] ?>
            </h2>
        </div>
        <div class="afterBefore">
	        <?php foreach( $ab_post_sort as $index => $arr_value ):
                $id = $arr_value;
                $post_class = get_field('ab_post_class', $id);
                $header_on = get_field('ab_header_on', $id);
                $header = get_field('ab_header', $id);
                $subheader = get_field('ab_subheader', $id);
                $list_on = get_field('ab_list_on' ,$id);
                $list_header = get_field('ab_list_header', $id);
                $list = get_field('ab_list', $id);
                $thumb = get_the_post_thumbnail_url( $id );
		        $division = $index % 2;

		        if ( $division ) :?>
                    <div class="abItem">
                    <div class="abItem__img <?php echo $post_class?>">
                        <img src="<?php echo $thumb; ?>">
				        <?php if( $header_on ):?>
                            <div class="text animate fadeInDown wow" data-wow-delay=".1s">
                                <div class="text__header">
                                    <?php echo $header;?>
                                </div>
                                <div class="text__info">
                                    <?php echo $subheader;?>
                                </div>
                            </div>
				        <?php endif;?>
				        <?php if( $list_on ):?>
                            <div class="discription animate fadeInDown wow" data-wow-delay=".1s">
                                <div class="discription__header">
                                    <?php echo $list_header; ?>
                                </div>
                                <ul class="discription__info">
				                    <?php foreach ( $list as $list_item ): ?>
                                        <li>
									        <?php echo $list_item['ab_list_item']; ?>
                                        </li>
				                    <?php endforeach; ?>
                                </ul>
                            </div>
				        <?php endif?>
                    </div>
		        <?php else:?>
                    <div class="abItem__img <?php echo $post_class?>">
                        <img src="<?php echo $thumb; ?>">
				        <?php if( $header_on ):?>
                            <div class="text animate fadeInDown wow" data-wow-delay=".1s">
                                <div class="text__header">
                                    <?php echo $header;?>
                                </div>
                                <div class="text__info">
                                    <?php echo $subheader;?>
                                </div>
                            </div>
				        <?php endif;?>
				        <?php if( $list_on ):?>
                            <div class="discription animate fadeInDown wow" data-wow-delay=".1s">
                                <div class="discription__header">
                                    <?php echo $list_header; ?>
                                </div>
                                <ul class="discription__info">
                			        <?php foreach ( $list as $list_item ): ?>
                                        <li>
                					        <?php echo $list_item['ab_list_item']; ?>
                                        </li>
                			        <?php endforeach; ?>
                                </ul>
                            </div>
				        <?php endif?>
                    </div>
                    </div>
		        <?php endif ?>
	        <?php endforeach ?>
        </div>
    </div>
    <div class="doubleroundlinebrown" <?php echo $blockBottomLine;?> ></div>
</section>