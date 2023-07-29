<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM menu_dv_hot WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=menu-dv-hot');
?>