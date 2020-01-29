<?php

require_once "includes/my-functions.php";
require_once "includes/db-connect.php";
require_once "ajax.php";

$data = $_POST;
$tables = get_tables();

echo "<pre>";
print_r($data); echo "<br>";
echo "</pre>";


foreach ( $data as $key => $value ) {
    my_print(parse_key($key));
    update_table_user( 'servicesInfo', $data, parse_key($key), $value );
}

$services = get_services();
$services_info = get_services_info();

$ab_descr = get_ab_descr();
$ab_descr_info = get_ab_descr_info();

//my_print($ab_descr_info,'white');

?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	<title>Document</title>
</head>
<body>
    <div class="mainContent">
        <section class="pageBlock">
            <h2 class="pageBlock__header">Главный блок</h2>
            <ul class="pageBlock__content">
		        <?php foreach ($services as $index => $service): ?>
                    <li class="itemContent">
                        <form action="#" method="post" class="form">
                            <div class="tableSection" data-tableName="services">
                            	<label class="itemContent__header">
                                	<input type="text" value="<?php echo $service['category'];?>" 
                                		   name="category" 
                                		   data-id="<?php echo $service['id'];?>"
                                	>
                                	<i class="fas fa-caret-down"></i>
                            	</label>
                            </div>
                            <div class="dropDown">
	                            <div class="tableSection" data-tableName="services">
	                                <label class="dropDown__descr">
	                                    <textarea name="description" data-id="<?php echo $service['id'];?>">
	                                    	<?php echo $service['description']; ?>
	                                    </textarea>
	                                </label>
	                            </div>
	                            <div class="tableSection" data-tableName="servicesInfo">
	                                <div class="innerContent">
			                            <?php
			                            foreach ( $services_info as $index => $info ):
				                            if($service['id'] == $info['services_category_id'] ): ?>
	                                            <div class="innerContent__row">
	                                                <label class="innerContent__name">
	                                                    <input type="text" 
	                                                    	   value="<?php echo $info['name'];?>" 
	                                                    	   name="name" 
	                                                    	   data-id="<?php echo $info['id'];?>"
	                                                   	>
	                                                </label>
	                                                <label class="innerContent__price">
	                                                    <input type="text" 
	                                                    	   value="<?php echo $info['price'];?>" 
	                                                    	   name="price" 
	                                                    	   data-id="<?php echo $info['id'];?>"
	                                                    >
	                                                </label>
	                                            </div>
				                        <?php endif;
			                            endforeach; ?>
	                                </div>
	                            </div>
	                            <button class="submitBtn" type="submit">Save</button>
                        	</div>
                        </form>
                    </li>
		        <?php endforeach; ?>
            </ul>
        </section>

        <section class="pageBlock">
            <h2 class="pageBlock__header">До/После блок</h2>
            <ul class="pageBlock__content">
		        <?php foreach ($ab_descr as $index => $descr): ?>
                    <li class="itemContent">
                        <form action="#" method="post" class="form">
                            <div class="tableSection" data-tableName="abDescription">
                            	<label class="itemContent__header">
                                	<input type="text" value="<?php echo $descr['header'];?>" 
                                		   name="header" 
                                		   data-id="<?php echo $descr['id'];?>"
                                	>
                                	<i class="fas fa-caret-down"></i>
                            	</label>
                            </div>
                            <div class="dropDown">
	                            <div class="tableSection" data-tableName="abDescription">
	                                <label class="dropDown__descr">
	                                    <input type="text" 
	                                    	   value="<?php echo $descr['img']; ?>"
	                                    	   name="img" 
	                                    	   data-id="<?php echo $descr['id'];?>"
	                                    >
	                                </label>
	                            </div>
	                            <div class="tableSection" data-tableName="abDescriptionInfo">
	                                <div class="innerContent">
			                            <?php
			                            foreach ( $ab_descr_info as $index => $info ):
				                            if( $descr['header'] == $info['header'] ): ?>
	                                            <div class="innerContent__row">
	                                                <label class="innerContent__name">
	                                                    <input type="text" 
	                                                    	   value="<?php echo $info['name'];?>" 
	                                                    	   name="name" 
	                                                    	   data-id="<?php echo $info['id'];?>"
	                                                   	>
	                                                </label>
	                                            </div>
				                        	<?php endif;
			                            endforeach; ?>
	                                </div>
	                            </div>
	                            <button class="submitBtn" type="submit">Save</button>
                        	</div>
                        </form>
                    </li>
		        <?php endforeach; ?>
            </ul>
        </section>
    </div>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="crossorigin="anonymous"></script>
<script src="js/admin.js"></script>
<script src="js/ajax.js"></script>
</body>
</html>
