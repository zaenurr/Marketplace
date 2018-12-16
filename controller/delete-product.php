<?php
require_once '../model/connect.php';
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $where = ['id' => $id];
    $pdo->prepare("DELETE FROM products WHERE id=:id")->execute($where);
    echo "Success!";
    header('Location: ../index.php?page=products');
} else {
    echo "Error Isset!";
}