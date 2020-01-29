<?php

$menu_args = [
	'theme_location' => 'primary',
	'container'      => '',
	'menu_class'     => 'nav'
];

$social_networks = get_field('social', 'option');
$phones = get_field('phones', 'option');

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
</head>
<body data-page-url="main" <?php body_class();?>> <!-- http://bellavita.kiev.ua/ -->
<header class="headerBlock">
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
