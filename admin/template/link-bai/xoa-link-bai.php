<?php 
	$id = $_GET['id'];
	$sql = "SELECT * FROM link_bai WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$bai_id = $row['bai_id'];

	$sql = "DELETE FROM link_bai WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=link-bai&bai_id='.$bai_id);
?>