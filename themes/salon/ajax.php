<?php

require_once "includes/my-functions.php";
require_once "includes/db-connect.php";

$format_data = array(
	'tableName' => array(
		'fieldsId' => array(
			'fieldName' => 'value',
			'fieldName' => 'value',
			'fieldName' => 'value'
		),
		'fieldsId' => array(
			'fieldName' => 'value',
			'fieldName' => 'value',
			'fieldName' => 'value'
		)
	),
);



$data = $_POST;
//echo json_encode( $data );

foreach ( $data as $tableName => $fields ) {
    foreach ($fields as $fieldsId => $field) {
    	foreach ($field as $fieldName => $value) {
    		update_table_user( $tableName, $fieldsId, $fieldName, $value );
    	}
    }
}