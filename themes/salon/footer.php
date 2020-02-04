<?php
$header = get_field('footer_header', 'option');
$subheader = get_field('footer_subheader', 'option');

$nav_header = get_field('footer_nav_header', 'option');
$soc_header = get_field('footer_soc_header', 'option');
$info_header = get_field('footer_info_header', 'option');

$logo = get_field('footer_logo', 'option');
$social_networks = get_field('social', 'option');
$phones = get_field('phones', 'option');
$mail = get_field('footer_mail', 'option');
$communication = get_field('footer_skype', 'option');
$copyright = get_field('footer_copyright', 'option');

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
                <?php echo $header; ?>
            </h2>
            <h3 class="sectionSubtitle">
                <?php echo $subheader; ?>
            </h3>
        </div>
        <div class="map__google">
            <iframe src="https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d82773.96989431167!2d34.48730478513853!3d49.584801169035536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d49.5847341!2d34.5574861!5e0!3m2!1sru!2sua!4v1564245764319!5m2!1sru!2sua" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
    </div>
    <div class="wrapper">
        <div class="footer">
            <div class="footer__logo animate bounceInUp wow" data-wow-delay=".1s">
                <img src="<?php echo $logo; ?>" alt="">
            </div>
            <div class="footer__info animate bounceInUp wow" data-wow-delay=".2s">
                <h3>
                    <?php echo $nav_header; ?>
                </h3>
                <?php wp_nav_menu( $menu_args );?>
            </div>
            <div class="footer__hrefs animate bounceInUp wow" data-wow-delay=".3s">
                <h3>
                    <?php echo $soc_header; ?>
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
                    <?php echo $info_header; ?>
                </h3>
                <div class="numbers">
                    <?php foreach ( $phones as $number ):?>
                        <p>
                            <i class="fas fa-phone"></i><?php echo $number['phone_number']; ?>
                        </p>
                    <?php endforeach;?>
                </div>
                <div class="other">
                    <p><i class="fas fa-envelope"></i><?php echo $mail; ?></p>
                    <p><i class="fab fa-skype"></i><?php echo $communication; ?></p>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <?php echo $copyright; ?>
    </div>
</footer>
<?php wp_footer();?>
</body>
</html>
