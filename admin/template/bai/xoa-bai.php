<?php 
	$id = $_GET['id'];
	$sql = "SELECT * FROM bai WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$chuong_id = $row['chuong_id'];

	$sql = "DELETE FROM bai WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=bai&chuong_id='.$chuong_id);
?>