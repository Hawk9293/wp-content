<?php

$args = array(
    'post_type'   => 'certificates',
    'numberposts' => -1,
    'order'       => 'ASC'
);

$certificates = get_posts( $args );

global$bodyOverlay;
$header = get_field('certificates_header', 'option');
$subHeader = get_field('certificates_subheader', 'option');

$setting = [
        'bg' => 0,
        'color' => 'red'
];

?>

<script type='text/javascript'>
    /* <![CDATA[ */
    var sliderProps = {
        bg: <?php echo $setting['bg']?>,
        color: '<?php echo $setting['color']?>',
    }
    /* ]]> */
</script>


<section class="certificatesBlock" data-page-url="certificates" <?php echo $bodyOverlay;?>>
    <div class="wrapper">
        <div class="certificates">
            <div class="servicesHeader animate fadeIn wow" data-wow-delay=".1s">
                <h3 class="sectionSubtitle"><?php echo $subHeader; ?></h3>
                <h2 class="sectionTitle"><?php echo $header; ?></h2>
            </div>
            <div class="certificatesContent">
                <?php foreach ( $certificates as $my_post ):
                    $id = $my_post -> ID;
                    $imagesId = get_field('certificates_gallery', $id);
                    $imagesIdExploded = explode(",", $imagesId);
                    ?>
                    <div class="certificatesContent__images">
                        <?php foreach ( $imagesIdExploded as $imageId ): ?>
                            <div class="image">
                                <?php echo wp_get_attachment_image( $imageId, 'full' ); ?>
                            </div>
                        <?php endforeach; ?>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</section>

