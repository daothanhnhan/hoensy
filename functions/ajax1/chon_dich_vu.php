<?php 
	session_start();
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	$id = $_GET['id'];
	$chon_size = $_SESSION['kich-co'];

	if (!isset($_SESSION['cart_service'])) {
		$_SESSION['cart_service'] = array();
		$_SESSION['cart_service'][] = $id;
	} else {
		if (!in_array($id, $_SESSION['cart_service'])) {
			$_SESSION['cart_service'][] = $id;
		}
	}
	// var_dump($_SESSION['cart_service']);
?>
<tbody>                    
                <tr>
                  <th colspan="4">DỊCH VỤ ĐÃ CHỌN</th>
                </tr>
                <?php 
                $d = 0 ;
                $tong = 0;
                foreach ($_SESSION['cart_service'] as $item) {
                	$d++;
                	// echo $item;
                	$dich_vu = $action->getDetail('service', 'service_id', $item);//var_dump($dich_vu);
                	if ($_SESSION['kich-co'] == 1) {
                		$price = $dich_vu['price_nho'];
                	} elseif ($_SESSION['kich-co'] == 2) {
                		$price = $dich_vu['price_vua'];
                	} elseif ($_SESSION['kich-co'] == 3) {
                		$price = $dich_vu['price_lon'];
                	} elseif ($_SESSION['kich-co'] == 4) {
                		$price = $dich_vu['price_dac_biet'];
                	}
                	$tong += $price;
                ?>
                <tr>
                  <th scope="row"><?= $d ?>.</th>
                  <td><?= $dich_vu['service_name'] ?> </td>
                  <td style="text-align: center;"> <span onclick="xoa_dich_vu(<?= $item ?>)" style="cursor: pointer;"><i class="fa fa-trash"></i> Xóa</span></td>
                  <td style="text-align: right;"><?= number_format($price) ?>đ</td>
                </tr>
                <?php } ?>
                <tr>
                  <th colspan="3">Tổng tiền:</th>                
                  <td style="text-align: right;"><?= number_format($tong) ?>đ</td>
                </tr>
                <tr>
                  <th colspan="4">(Phí dịch vụ có thể phát sinh trong gói: 0đ)</th>                                      
                </tr>
            </tbody>