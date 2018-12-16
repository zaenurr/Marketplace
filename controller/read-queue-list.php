<?php
	$statement = $pdo->query('SELECT carts.id, customers.name AS Customer_Name FROM carts, customers WHERE carts.id_customer = customers.id ORDER BY carts.id ASC')->fetchAll();