<?php

    $statement = $pdo->query('SELECT products.id, products.name, products.price - (products.price * (products.discount / 100)) AS Price, categories.name AS Category, brands.name AS Brand FROM products, categories, brands WHERE id_category = categories.id AND id_brand = brands.id ORDER BY products.id DESC')->fetchAll();