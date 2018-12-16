<?php
	require_once 'model/connect.php';
	$host = 'http://192.168.64.2/mart/';
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>President Mart</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
	<script src="main.js"></script> -->
</head>
<body>
	<h1 align="center">P<small>RESIDENT</small> M<small>ART</small></h1>
	<a href="<?php echo $host?>">INDEX</a> |
	<a href="<?php echo $host?>index.php?page=products">PRODUCTS</a>
<div>
<?php
	if(isset($_GET['page'])) {
		if($_GET['page'] == "products") {
			//http://192.168.64.2/mart/index.php?page=products
			include 'controller/read-products.php';
			include 'view/products.php';
			
		} else {
			echo "Page Not Found!";
		}
	}
?>
</div>
	
</body>
</html>