<?php
	$str_size = $_POST['size_id'];
	$formula  = explode('x', $str_size);
	if($real_price <= 500000){
		$real_price = ((int)$formula[0] * (int)$formula[1] * 100) + 50000;
	}else{
		$real_price = ((int)$formula[0] * (int)$formula[1] * 100);
	}
	echo number_format($real_price)." VNĐ" ;
?>