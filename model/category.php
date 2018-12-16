<?php
    $categories = $pdo->query('SELECT categories.id, categories.name FROM categories')->fetchAll();