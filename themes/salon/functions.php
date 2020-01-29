<?php

define('ASSETS_PATH', get_template_directory_uri() . '/assets/');

// include acf repeater
include_once( 'acf-repeater/acf-repeater.php');
// добавляем нужные пукты в меню Options ------------------------------
include_once('acf-options-page/acf-options-page.php');
if( function_exists('acf_add_options_sub_page') ) {
	acf_add_options_sub_page('Header');
	acf_add_options_sub_page('Footer');
	acf_add_options_sub_page('Other');
}


add_action('wp_enqueue_scripts', 'add_styles');
function add_styles(){
	wp_enqueue_style( 'style', get_stylesheet_uri() );
};
add_action('wp_enqueue_scripts', 'add_scripts');
function add_scripts(){
	wp_enqueue_script( 'jquery' );
	wp_enqueue_script( 'wow-js', ASSETS_PATH . 'js/wow.min.js', array( 'jquery' ), '1.0', true );
	wp_enqueue_script( 'slick', ASSETS_PATH . 'js/slick.js', array( 'jquery' ), '1.0', true );
	wp_enqueue_script( 'main-js', ASSETS_PATH . 'js/main.js', array( 'jquery', 'slick', 'wow-js' ), '1.0', true );

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

// my functions








require_once 'includes/db-connect.php';

function get_fromDB( $table ) {
	global $link;
	$sql = "SELECT * FROM ${table}";
	$result = mysqli_query($link, $sql);
	$columns = mysqli_fetch_all( $result, MYSQLI_ASSOC );
	return $columns;
}
function get_services() {
	global $link;
	$sql = "SELECT * FROM services";
	$result = mysqli_query($link, $sql);
	$services = mysqli_fetch_all( $result, MYSQLI_ASSOC );
//	$services['table_name'] = 'services';
	return $services;
}
function get_ab_descr() {
	global $link;
	$sql = "SELECT d.*, i.header as blockHeader, i.subHeader as blockSubHeader 
			FROM abDescription d
			LEFT JOIN abInfo i
			ON d.abInfoId = i.id
			ORDER BY d.id;";

	$result = mysqli_query($link, $sql);
	$abInfo = mysqli_fetch_all( $result, MYSQLI_ASSOC );
	return $abInfo;
}
function get_ab_descr_info() {
	global $link;
	$sql = "SELECT abi.id, abi.name, ab.header, ab.class, ab.img
			FROM abDescription ab
			JOIN abDescriptionInfo abi
			ON ab.id = abi.header";
	$result = mysqli_query($link, $sql);
	$abDescription = mysqli_fetch_all( $result, MYSQLI_ASSOC );
	return $abDescription;
}

function get_services_info () {
	global $link;
	$sql = "SELECT s.id, si.id, si.name, si.price, si.services_category_id
			FROM services s 
			JOIN servicesInfo si 
			ON s.id = si.services_category_id";
	$result = mysqli_query($link, $sql);
	$services_info = mysqli_fetch_all( $result, MYSQLI_ASSOC );
	return $services_info;
}


function get_tables() {
	global $link;
	$sql = "SHOW TABLES FROM " . DB_NAME;
	$result = mysqli_query($link, $sql);
	$tables = mysqli_fetch_all( $result, MYSQLI_ASSOC );
	return $tables;
}
function get_fields_from_tables($table_name) {
	global $link;
	$sql = "SHOW FIELDS FROM ". $table_name;
	$result = mysqli_query($link, $sql);
	$fields_from_tables = mysqli_fetch_all( $result, MYSQLI_ASSOC );
	return $fields_from_tables;
}
function get_columns_from_fields($field_name) {
	global $link;
	$sql = "SELECT * FROM ". $field_name;
	$result = mysqli_query($link, $sql);
	$columns_from_fields = mysqli_fetch_all( $result, MYSQLI_ASSOC );
	return $columns_from_fields;
}


function update_table($data, $data_key, $data_value){
	$data_table_name = $data['table_name'];
	$data_field_name = $data_key['field_name'];
	$data_id_value = $data_key['id_value'];
	//$primary_key = $data_key['id'];

	global $link;
	$sql = "UPDATE ${data_table_name} 
		    SET ${data_field_name} = '${data_value}' 
			WHERE id = ${data_id_value}";
	//print_r($sql);
	$result = mysqli_query($link, $sql);
	//$update_table = mysqli_fetch_all( $result, MYSQLI_ASSOC );
	return $result;
}
function update_table_user($table_name, $field_id, $field_name, $value){
	//$data_field_name = $data_key['field_name'];
	//$data_id_value = $data_key['id_value'];

	global $link;
	$sql = "UPDATE $table_name 
		    SET ${field_name} = '${value}' 
			WHERE id = ${field_id}";
	$result = mysqli_query($link, $sql);
	return $result;
}

function parse_key( $key ) {
	$id_value = (int)explode('_', $key)[count(explode('_', $key)) - 1];
	$field_name = str_replace('_' . $id_value, '', $key);

	//$result = array(
	//	   "field_name" => "descr",
	//     "id_value"	=> 2
	//);
	$result = array(
		"field_name" => $field_name,
		"id_value"   => $id_value
	);

	return $result;
}

function my_print( $value, $color = 'white', $end = 0 ) {
	echo "<pre style='background:" . $color. "';>";
	print_r($value);
	echo "</pre>";

	if ( $end ) die();
}