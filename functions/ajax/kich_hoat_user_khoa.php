<?php 
	session_start();

	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	$user_id = $_GET['user_id'];
	$product_id = $_GET['product_id'];

	$user = $action->getDetail('user', 'user_id', $user_id);

	$khoa_hoc_user = $user['khoa_hoc'];



	if (empty($khoa_hoc_user)) {
		$arr_khoa_khoc = array($product_id);echo 'trắng';
	} else {
		$get_khoa_hoc = json_decode($khoa_hoc_user, true);
		if (empty($get_khoa_hoc)) {
			$arr_khoa_khoc = array($product_id);echo 'chống';
		} else {
			if (in_array($product_id, $get_khoa_hoc)) {
				foreach ($get_khoa_hoc as $k => $item) {
					if ($item == $product_id) {
						unset($get_khoa_hoc[$k]);
					}
				}
			} else {
				$get_khoa_hoc[] = $product_id;echo 'thêm';
			}

			$arr_khoa_khoc = $get_khoa_hoc;
		}
	}
	// var_dump($arr_khoa_khoc);

	$set_khoa_hoc = json_encode($arr_khoa_khoc);
	$set_khoa_hoc = mysqli_real_escape_string($conn_vn, $set_khoa_hoc);

	$sql = "UPDATE user SET khoa_hoc = '$set_khoa_hoc' WHERE user_id = $user_id";//echo $sql;
	$result = mysqli_query($conn_vn, $sql);