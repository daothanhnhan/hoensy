<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM menu_sp_hot WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=menu-sp-hot');
?>