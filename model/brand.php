<?php
    $brands = $pdo->query('SELECT brands.id, brands.name FROM brands')->fetchAll();