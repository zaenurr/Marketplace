<?php require_once '../model/connect.php';

    $rows[] = [
        'name'          => $_POST['name'],
        'detail'        => $_POST['detail'],
        'price'         => $_POST['price'],
        'discount'      => $_POST['discount'],
        'id_category'   => $_POST['id_category'],
        'id_brand'      => $_POST['id_brand']
    ];

$sql = "INSERT INTO products_test SET name=:name, detail=:detail, price=:price, discount=:discount, id_category=:id_category, id_brand=:id_brand;";
$status = $pdo->prepare($sql)->execute($row);

if ($status) {
    $lastId = $pdo->lastInsertId();
    echo $lastId;
}

echo "<a href='http://192.168.64.2/mart/index.php?page=products'>SUCCESS!</a>";


