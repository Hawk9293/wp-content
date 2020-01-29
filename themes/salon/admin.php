<?php

require_once "includes/my-functions.php";
require_once "includes/db-connect.php";

$tables = get_tables();

$data = $_POST;

my_print( $data );
echo "<hr>";



foreach ( $data as $key => $value ) {
    if ($key !== 'table_name') {
        //my_print(parse_key($key));
	    $is_update = update_table( $data, parse_key($key), $value );

	    if (!$is_update) {
		    my_print($is_update . ' - WRONG UPDATE');
	    }
    }
}


//die();



?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Cache-Control" content="no-cache">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Админка</title>
</head>
<body>
    <a href="user_admin.php">user_admin.php</a>
<?php
/*echo "<pre>";
print_r($tables); echo "<br>";
echo "</pre>";*/
?>
<section class="adminBlock">
    <div class="wrapper">
<?php foreach( $tables as $table ) :
    	$table_name = $table['Tables_in_' . DB_NAME];
    	$fields = get_fields_from_tables($table_name);
        //$u = update_table($table_name, $column, $data);

    	$columns = get_columns_from_fields($table_name);
//        $update = update_table($table_name);
    	/*echo "<pre>";
    	print_r($fields);
        print_r($columns); echo "</pre>";
        die();*/
        ?>
        <form action="admin.php" method="post" class="fromBd">
            <label style="display: none">
                <input name="table_name" value="<?php echo $table_name; ?>">
            </label>
        	<table class="tableBd" >
        		<caption class="tableBd__header"><?php echo $table_name; ?></caption>
        		<tr >
        		<?php foreach ( $fields as $field ): ?>
    				<th >
    					<?php echo $field['Field']?>
    				</th>
    			<?php endforeach; ?>
    			<?php foreach ( $columns as $column ): ?>
                    <tr>
    					<?php foreach ( $column as $index => $value ): ?>
                            <td>
                                <label>
                                    <textarea name="<?php echo  $index .'_'. $column['id'] ; ?>"><?php echo $value;?></textarea>
                                </label>
                                <!-- <?php
                                    echo "<pre>";
                                    print_r($column); echo "<br>";
                                    echo "</pre>";
                                ?> -->
                            </td>
    					<?php endforeach;?>
    				</tr>
        		<?php endforeach;?>
        		</tr>
        	</table>
            <button type="submit">Обновить данные <?php ?></button>
        </form>
<?php endforeach; ?>
    </div>
</section>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="crossorigin="anonymous"></script>
<script src="js/wow.min.js"></script>
<script src="js/slick.js"></script>
<script src="js/main.js"></script>
</body>
</html>