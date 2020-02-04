<?php

$menu_args = [
	'theme_location' => 'primary',
	'container'      => '',
	'menu_class'     => 'nav'
];

$social_networks = get_field('social', 'option');
$phones = get_field('phones', 'option');

$colors = [
	'first' => get_field('first_color', 'option'),
	'second' => get_field('second_color', 'option')
];
//my_print($colors,'white');

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Cache-Control" content="no-cache">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
    <title>Карін, Студія Краси</title>
	<?php wp_head()?>

    <style>
        .headerContacts__item .fas {
            color: <?php echo $colors['first']?>;
        }
        .servicesHeader .sectionTitle span {
            color: <?php echo $colors['first']?>;
        }
        .footerBlock {
            background-color: <?php echo $colors['second']?>;
        }
        .reviewsBlock {
            background-color: <?php echo $colors['first']?>;
        }
        .contactUsBlock {
            background-color: <?php echo $colors['first']?>;
        }
        .footerBlock .footer__info ul li a:before {
            background-color: <?php echo $colors['first']?>;
        }
        .footerBlock .footer__contacts .numbers p i {
            color: <?php echo $colors['first']?>;
        }
        .footerBlock .footer__contacts .other p i {
            color: <?php echo $colors['first']?>;
        }
        .copyright {
            border-top: 1px solid <?php echo $colors['first']?>;
        }
        .certificatesBlock .wrapper .certificates .servicesHeader .sectionSubtitle span {
            color: <?php echo $colors['first']?>;
        }
        .afterBeforeBlock .afterBefore .abItem__img .discription__info {
            color: <?php echo $colors['first']?>;
        }
        .afterBeforeBlock .afterBefore .abItem .text__info {
            color: <?php echo $colors['first']?>;
        }
        .afterBeforeBlock .wrapper .servicesHeader .sectionTitle span {
            color: <?php echo $colors['first']?>;
        }
        .heroContent .servicesContent__images .popup .popupBody__mainHeader {
            color: <?php echo $colors['first']?>;
        }
        .heroContent .servicesContent__images .popup .popupBody .popupItem .itemTable__price {
            color: <?php echo $colors['first']?>;
        }
        .heroContent .servicesContent__images .popup .popupBody .popupItem .itemTable__name {
            color: <?php echo $colors['first']?>;
        }
        .contactUsBlock .wrapper .contactUs .servicesHeader .sectionTitle span {
            color: <?php echo $colors['second']?>;
        }
        .contactUsBlock .wrapper .contactUs .servicesHeader .sectionSubtitle span {
            color: <?php echo $colors['second']?>;
        }
        .reviewsBlock .wrapper .reviews .servicesHeader .sectionTitle span {
            color: <?php echo $colors['second']?>;
        }
        .reviewsBlock .wrapper .reviews .servicesHeader .sectionSubtitle span {
            color: <?php echo $colors['second']?>;
        }


        .secondColor {
            color: <?php echo $colors['second']?>;
        }
        .secondColorBackground {
            background-color: <?php echo $colors['second']?>;
        }
    </style>

</head>
<body data-page-url="main" <?php body_class();?>> <!-- http://bellavita.kiev.ua/ -->
<header class="headerBlock" data-ajax="<?php echo admin_url('admin-ajax.php');?>">
	<div class="wrapper">
		<div class="header">
			<div class="headerContacts">
				<ul class="headerContacts__block">
                    <?php foreach ( $phones as $number ):?>
						<li class="headerContacts__item">
							<i class="fas fa-mobile-alt"></i>
							<p>&#8195;<?php echo $number['phone_number'];?></p>
						</li>
                    <?php endforeach;?>
                    <li class="headerContacts__item">
                        <i class="fas fa-map-marker-alt"></i><p>&#8195;<?php the_field('adress', 'option'); ?></p>
                    </li>
                </ul>
			</div>
			<div class="header__hrefs">
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
			<nav class="headerContent__menu">
				<span class="menu">Меню</span>
                <?php wp_nav_menu( $menu_args );?>
			</nav>
		</div>
	</div>
</header>

