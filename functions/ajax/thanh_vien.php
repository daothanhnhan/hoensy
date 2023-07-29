<?php 
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	$product_id = $_GET['product_id'];

	$product = $action->getDetail('product', 'product_id', $product_id);

	if ($product['thanh_vien'] == 0) {
		$sql = "UPDATE product SET thanh_vien = 1 WHERE product_id = $product_id";
	} else {
		$sql = "UPDATE product SET thanh_vien = 0 WHERE product_id = $product_id";
	}

	$result = mysqli_query($conn_vn, $sql);