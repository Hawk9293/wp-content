<?php
define('DB_DATA', [
	'user' => 'root',
	'host' => 'localhost',
	'password' => '',
	'db_name' => 'salon'
] );

define('DB_NAME', 'salon');

$link = mysqli_connect(DB_DATA['host'],DB_DATA['user'],DB_DATA['password'],DB_DATA['db_name']);
if ( $err_no = mysqli_connect_errno() ) {
	$err = mysqli_connect_errno();
	echo "Error $err_no : $err";
	exit();
}
