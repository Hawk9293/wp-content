<?php

$id = $post -> ID;
$title = $post -> post_title;

$service_info = get_field( 'service_list' );
$description = get_field('service_description');
$addit_field_on = get_field('service_additional_fields_on');
$thumb = get_the_post_thumbnail_url( $id );

?>

<?php get_header();?>
<div class="singlePost" style="background-image: url(<?php echo $thumb; ?>)">
	<div class="wrapper">
		<div class="heroBox" >
			<div class="heroBox__overlay">
			</div>
			<h1 class="heroBox__header">
				<?php echo $title; ?>
			</h1>
		</div>
		<div class="content">
			<div class="content__descr">
				<h2>
					<?php echo $description;?>
				</h2>
			</div>
			<div class="content__info">
                <div class="table">
					<?php foreach ( $service_info as $info ):?>
                        <div class="itemTable">
                            <?php if ( !$addit_field_on ) :?>
                                <div class="itemTable__name">
									<?php echo $info['service_name'];?>
                                </div>
                                <div class="itemTable__price">
                                    <?php echo $info['service_price'] . ' грн.';?>
                                </div>
                            <?php else :?>
                            	<?php $service_adit_fields = $info['service_adit_fields'];?>

                                <div class="itemTable__name">
                                    <?php echo $info['service_name'];?>
                                </div>
                                <div class="itemTable__additFields">
		                            <?php foreach ($service_adit_fields as $field):?>
		                                <div class="additFields" >
		                                    <div class="additFields__duration">
		                                        <?php echo $field['service_adit_fields_duration'];?>
		                                    </div>
		                                    <div class="additFields__price">
		                                        <?php echo $field['service_adit_fields_price'].' грн.';?>
		                                    </div>
		                                </div>
		                            <?php endforeach; ?>
                                </div>
                            <?php endif; ?>
                        </div>
					<?php endforeach; ?>
                </div>
			</div>
		</div>
	</div>
</div>
<?php get_footer();?>







<!--                 <table class="table">
					<?php foreach ( $service_info as $info ):?>
                        <tr class="itemTable">
                            <?php if ( !$addit_field_on ) :?>
                                <td class="itemTable__name">
									<?php echo $info['service_name'];?>
                                </td>
                                <td class="itemTable__price">
                                    <?php echo $info['service_price'] . ' грн.';?>
                                </td>
                            <?php else :?>
                            	<?php $service_adit_fields = $info['service_adit_fields'];?>

                                <td class="itemTable__name">
                                    <?php echo $info['service_name'];?>
                                </td>
                                <td class="itemTable__additFields">
		                            <?php foreach ($service_adit_fields as $field):?>
		                                <div class="additFields" >
		                                    <div class="additFields__duration">
		                                        <?php echo $field['service_adit_fields_duration'];?>
		                                    </div>
		                                    <div class="additFields__price">
		                                        <?php echo $field['service_adit_fields_price'].' грн.';?>
		                                    </div>
		                                </div>
		                            <?php endforeach; ?>
                                </td>
                            <?php endif; ?>
                        </tr>
					<?php endforeach; ?>
                </table> -->