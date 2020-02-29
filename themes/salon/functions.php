<?php

define( 'ASSETS_PATH', get_template_directory_uri() . '/assets/' );

// include acf repeater
include_once( 'acf-repeater/acf-repeater.php' );
// добавляем нужные пукты в меню Options ------------------------------
include_once( 'acf-options-page/acf-options-page.php' );
if( function_exists( 'acf_add_options_sub_page') ) {
    acf_add_options_sub_page( 'Header' );
    acf_add_options_sub_page( 'Footer' );
    acf_add_options_sub_page( 'Other' );
    acf_add_options_sub_page( 'Styles' );
}
//////////////////////////// подключаем скрипты и стили ////////////////////////////
add_action( 'wp_enqueue_scripts', 'add_styles' );
function add_styles(){
    wp_enqueue_style( 'style', get_stylesheet_uri() );
};

add_action( 'wp_enqueue_scripts', 'add_scripts' );
function add_scripts(){
    wp_enqueue_script( 'jquery' );
    wp_enqueue_script( 'wow-js', ASSETS_PATH . 'js/wow.min.js', array( 'jquery' ), '1.0', true );
    wp_enqueue_script( 'slick', ASSETS_PATH . 'js/slick.js', array( 'jquery' ), '1.0', true );
    wp_enqueue_script( 'main-js', ASSETS_PATH . 'js/main.js', array( 'jquery', 'slick', 'wow-js' ), '1.0', true );
    wp_localize_script('main-js', 'myAjax' , array( 'ajaxUrl' => admin_url('admin-ajax.php') ));
};

// разрешает миниатюру записи
add_theme_support( 'post-thumbnails' ); // для всех типов постов
//add_theme_support( 'post-thumbnails', array( 'post' ) ); // для типа записи post

// возможность работать с меню
add_action( 'after_setup_theme', 'theme_register_nav_menu' );
function theme_register_nav_menu() {
    register_nav_menus(
        [
            'primary' => 'Главное меню',
            // 'footer' => 'Меню в подвале'
        ]
    );
}

//////////////////////////// my functions ////////////////////////////

function my_print( $value, $color = 'white', $end = 0 ) {
    echo "<pre style='background:" . $color. "';>";
    print_r($value);
    echo "</pre>";

    if ( $end ) die();
}

// Отправка писем AJAX
add_action('wp_ajax_send_mail', 'send_email');
add_action('wp_ajax_nopriv_send_mail', 'send_email');

function send_email() {
    $data = $_POST['mail_data'];
    $to = 'work2010_1@mail.ru';
    $td = '';
    $th = '';

    foreach( $data as $key => $item ){
        $td .= '<td>' . $item . '</td>';
        $th .= '<th>' . $key . '</th>';

    }

    $message =
        '<table>
		<tr>
		' . $th . '
		</tr>
		<tr>
		' . $td . '
		</tr>
	</table>
		
';
    $subject = 'Приглашение на стрижку';

    $headers = array(
        'From: Me Myself <salon@gmail.com>',
        'content-type: text/html',
        'Cc: Dmitry',
        'Cc: salon@wordpress.org', // тут можно использовать только простой email адрес
    );
    wp_mail($to, $subject, $message, $headers);

    echo json_encode($data);
    wp_die();
}

