<?php

global $bodyOverlay;
$certif_header = get_fromDB('certificates_block_header');
$certif_img = get_fromDB('certificates_block_img');

?>

<section class="certificatesBlock" data-page-url="certificates" <?php echo $bodyOverlay;?>>
    <div class="wrapper">
        <div class="certificates">
            <div class="servicesHeader animate fadeIn wow" data-wow-delay=".1s">
                <h3 class="sectionSubtitle"><?php echo $certif_header[0]['main_header']; ?></h3>
                <h2 class="sectionTitle"><?php echo $certif_header[0]['sub_header']; ?></h2>
            </div>
            <div class="certificatesContent">
                <div class="certificatesContent__images">
                    <?php foreach ( $certif_img as $img ): ?>
                    <div class="image">
                        <img src="<?php echo get_template_directory_uri();?>/assets/img/<?php echo $img['img_name']; ?>" alt="Сертификат">
                    </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
</section>