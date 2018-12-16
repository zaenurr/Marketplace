<?php
	if (isset($_GET['id']) && $_GET['id'] != null) {
		$id = $_GET['id'];
	    $statement = $pdo->query("SELECT products.name, products.price, products.discount, products.price - (products.price * (discount/100)) AS Price FROM products WHERE products.id = $id")->fetchAll();
	} else {
		echo "<script>window.location = '$host';</script>";
	}