<?php

$args = array(
	'post_type'   => 'services',
	'numberposts' => -1,
	'order'       => 'ASC'
);

$services_posts = get_posts( $args );
?>

<section class="heroBlock" data-page-url="services">
    <div class="wrapper">
        <div class="heroContent">
            <div class="servicesContent">
                <div class="servicesContent__header">услуги салона</div>
                <ul class="servicesContent__images">
					<?php
					$wowDelay = 0;
					$counter  = 1;
					foreach ( $services_posts as $my_post ):
						$id = $my_post -> ID;
						$title = $my_post -> post_title;
						$subtitle1 = get_field('service_subtitle_1', $id);
                        $subtitle2 = get_field('service_subtitle_2', $id);
						$description = get_field('service_description', $id);
						$thumb = get_the_post_thumbnail_url( $id );
						$addit_field_on = get_field('service_additional_fields_on' ,$id);
                    ?>

                        <li class="serviceParent animate flipInX wow" data-wow-delay="<?php echo $wowDelay; ?>s">
                            <div class="skew">
                                <span class="project">      
                                    <div class="skewBack">
                                        <div class="project__title">
                                            <div class="border">
                                                <a href="#">
                                                    <i class="fa fa-arrow-right"></i>
                                                </a>
                                            </div>
                                            <h2><?php echo $title;?></h2>
                                            <h3><?php echo $subtitle1;?></h3>
                                            <span><?php echo $subtitle2;?></span>
                                        </div>
                                        <img src="<?php echo $thumb; ?>">
                                    </div>
                                </span>
                            </div>
                            <div class="popup">
                                <div class="popupBody">
                                    <h2 class="popupBody__mainHeader">
	                                    <?php echo $title;?>
                                    </h2>
                                    <div class="popupBody__mainDescr">
										<?php echo $description;?>
                                    </div>
                                    <table class="popupItem">

									<?php
                                    $service_info = get_field( 'service_list', $id );
                                    foreach ( $service_info as $info ):
                                    ?>
                                        <tr class="itemTable">
                                            <?php if ( !$addit_field_on ) :?>
                                                <td class="itemTable__service">
                                                    <div class="itemTable__name">
    													<?php echo $info['service_name'];
    													?>
                                                    </div>
                                                </td>
                                                <td class="itemTable__price">
                                                    <?php
                                                    echo $info['service_price'] . ' грн.';
                                                    ?>
                                                </td>
                                            <?php else :?>
                                                <?php $service_adit_fields = $info['service_adit_fields'];
	                                            ?>
                                                    <td class="itemTable__service">
                                                        <div class="itemTable__name">
                                                            <?php echo $info['service_name'];
                                                            ?>
                                                        </div>
                                                    </td>
                                                    <td class="itemTable__info">
	                                            <?php foreach ($service_adit_fields as $field):
		                                            ?>
                                                    <div class="info" >
                                                        <div class="info__duration">
                                                            <?php echo $field['service_adit_fields_duration']?>
                                                        </div>
                                                        <div class="info__price">
                                                            <?php echo $field['service_adit_fields_price'].' грн.'; ?>
                                                        </div>
                                                    </div>
	                                            <?php endforeach; ?>
                                                    </td>
                                            <?php endif; ?>
                                        </tr>
									<?php endforeach; ?>
                                    </table>
                                </div>
                            </div>
                        </li>
						<?php
						$wowDelay += 0.1;
						$wowDelay = ( $counter === 3 ) ? 0.1 : $wowDelay;
						$counter ++;
					endforeach; ?>
                </ul>
            </div>
        </div>
    </div>
</section>
