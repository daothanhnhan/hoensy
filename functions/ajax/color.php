<?php 
	$id = $_GET['id'];
	include_once dirname(__FILE__).'/../database.php';
	$sql = "SELECT * FROM color WHERE color_id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$arr_img = $row['color_img_sub'];
	$arr_img = json_decode($arr_img, true);
	$img = json_decode($arr_img[0], true);
	$img = $img['image'];

	$price = trim(number_format($row['product_price']));
	$pic_1 = trim($row['pic_1']);
	$pic_2 = trim($row['pic_2']);
	$pic_3 = trim($row['pic_3']);
	$pic_4 = trim($row['pic_4']);

	echo $picture = '{"price":"'.$price.'", "pic_1":"'.$pic_1.'","pic_2":"'.$pic_2.'","pic_3":"'.$pic_3.'", "pic_4":"'.$pic_4.'", "images":"'.$img.'"}';
?>