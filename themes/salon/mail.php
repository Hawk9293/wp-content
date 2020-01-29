<?php
/*
 * Template name: mail
 */

my_print($_GET);
$to = 'work2010_1@mail.ru';
$message =
	'<table>
		<tr>
			<th>Имя</th>
			<th>Фамилия</th>
			<th>Телефон</th>
		</tr>
		<tr>
			<td>Дмитрий</td>
			<td>Стеценко</td>
			<td>111</td>
		</tr>
	</table>>
		
';
$subject = 'Приглашение на стрижку';
$headers = array(
	'From: Me Myself <salon@gmail.com>',
	'content-type: text/html',
	'Cc: Dmitry',
	'Cc: salon@wordpress.org', // тут можно использовать только простой email адрес
);


$res = wp_mail( $to, $subject, $message, $headers );

if ( $res ) {
	echo 'Mail is send';
} else {
	echo '!!! error';
}