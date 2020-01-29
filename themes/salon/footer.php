<?php

$phones             = get_fromDB('phoneNumbers');
$footer_header      = get_fromDB( 'footer_block_header' );
$footer_info_header = get_fromDB( 'footer_block_info_header' );
$soc_net            = get_fromDB( 'social_networks' );
$copyright          = get_fromDB( 'copyright' );

$social_networks = get_field('social', 'option');
$phones = get_field('phones', 'option');

$menu_args = [
    'theme_location' => 'primary',
    'container'      => '',
    'menu_class'     => ''
];

?>

<footer class="footerBlock" data-page-url="contacts">
    <div class="map">
        <div class="servicesHeader animate fadeIn wow" data-wow-delay=".1s">
            <h2 class="sectionTitle">
                <?php echo $footer_header[0]['main_header']; ?>
            </h2>
            <h3 class="sectionSubtitle">
                <?php echo $footer_header[0]['sub_header']; ?>
            </h3>
        </div>
        <div class="map__google">
            <iframe src="https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d82773.96989431167!2d34.48730478513853!3d49.584801169035536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d49.5847341!2d34.5574861!5e0!3m2!1sru!2sua!4v1564245764319!5m2!1sru!2sua" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
    </div>
    <div class="wrapper">
        <div class="footer">
            <div class="footer__logo animate bounceInUp wow" data-wow-delay=".1s">
                <p>
                    <?php echo $footer_info_header[0]['main_header'] ?>
                </p>
            </div>
            <div class="footer__info animate bounceInUp wow" data-wow-delay=".2s">
                <h3>
                    <?php echo $footer_info_header[1]['main_header'] ?>
                </h3>
                <?php wp_nav_menu( $menu_args );?>
            </div>
            <div class="footer__hrefs animate bounceInUp wow" data-wow-delay=".3s">
                <h3>
                    <?php echo $footer_info_header[2]['main_header'] ?>
                </h3>
                <ul>
                    <?php foreach( $social_networks as $social_network ): ?>
                        <li>
                            <a href="<?php echo $social_network['soc_link'];?>">
                                <i class="fab fa-<?php echo $social_network['soc_name'];?>"></i>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
            <div class="footer__contacts animate bounceInUp wow" data-wow-delay=".4s">
                <h3>
                    <?php echo $footer_info_header[3]['main_header'] ?>
                </h3>
                <div class="numbers">
                    <?php foreach ( $phones as $number ):?>
                        <p>
                            <i class="fas fa-phone"></i><?php echo $number['phone_number']; ?>
                        </p>
                    <?php endforeach;?>
                </div>
                <div class="other">
                    <p><i class="fas fa-envelope"></i>info@bellavita.kiev.ua</p>
                    <p><i class="fab fa-skype"></i>BellaVita</p>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <?php echo $copyright[0]['copyright']; ?>
    </div>
</footer>

<?php wp_footer();?>
</body>
</html>
