<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function menu_sp_hot ($id) {
		global $conn_vn;
		if (isset($_POST['add_trademark'])) {
			$src= "../images/";
			// $src = "uploads/";

			$image = '';
			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$productcat_id = mysqli_real_escape_string($conn_vn, $_POST['productcat_id']);
			$parent = mysqli_real_escape_string($conn_vn, $_POST['parent']);
			$sort = mysqli_real_escape_string($conn_vn, $_POST['sort']);

			$sql = "UPDATE menu_sp_hot SET productcat_id = '$productcat_id', parent = '$parent', sort = '$sort' WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một menu.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	menu_sp_hot($_GET['id']);

	$list_procat = $action->getList('productcat', '', '', 'productcat_id', 'asc', '', '', '');

	$list_menu = $action->getList('menu_sp_hot', 'parent', '0', 'sort', 'asc', '', '', '');

	$info = $action->getDetail('menu_sp_hot', 'id', $_GET['id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin menu<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=menu-sp-hot">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Danh mục sản phẩm</p>
            <select name="productcat_id" class="txtNCP1">
            	<?php foreach ($list_procat as $item) { ?>
            	<option value="<?= $item['productcat_id'] ?>" <?= $info['productcat_id']==$item['productcat_id'] ? 'selected' : '' ?> ><?= $item['productcat_name'] ?></option>
            	<?php } ?>
            </select>
            <p class="titleRightNCP">Menu</p>
            <select name="parent" class="txtNCP1">
            	<option value="0">Cấp 1</option>
            	<?php 
            	foreach ($list_menu as $item) { 
            		$procat = $action->getDetail('productcat', 'productcat_id', $item['productcat_id']);
            	?>
            	<option value="<?= $item['id'] ?>" <?= $info['parent']==$item['id'] ? 'selected' : '' ?> ><?= $item['productcat_name'] ?><?= $procat['productcat_name'] ?></option>
            	<?php } ?>
            </select>
            <p class="titleRightNCP">Sort</p>
            <input type="number" class="txtNCP1" value="<?= $info['sort'] ?>" name="sort" required/>
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>