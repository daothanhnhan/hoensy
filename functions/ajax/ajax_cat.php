<?php
	if(isset($_POST['category_list'])){

		include_once('../database.php');

		$id_cat = $_POST['category_list'];
		$arr_cat = 	explode(",", $id_cat);
		$where = array();
		foreach ($arr_cat as $item) {
			$where[] = "productcat_ar LIKE '%$item%' ";
		}

		$sql = "SELECT * FROM product";
		if($where){
			$sql .= ' WHERE '.implode(' or ', $where);
		}
		$result = mysqli_query($conn_vn, $sql);
	    if(mysqli_num_rows($result) != 0){
		    while ($row1 = mysqli_fetch_assoc($result)) {
?>
		<div class="col-sm-4">
	        <div class="gb-product_naustore-item">
	            <div class="gb-product_naustore-item-img">
	                <a href="/<?= $row1['friendly_url'] ?>">
	                    <img src="/images/<?= $row1['product_img'] ?>" alt="" class="img-responsive">
	                </a>
	                <!--ADD TO CART-->
	                <button type="button" name="add-to-cart" class="btn btn-addtocart_naustore add_cart" onclick="load_url('<?php echo $row1['product_id'];?>', '<?php echo $row1['product_name'];?>', '<?php echo $row1['product_price']-($row1['product_price']*($row1['product_price_sale']/100));?>')">
	                    Add to cart
	                </button>
	            </div>
	            <div class="gb-product_naustore-item-text">
	                <h2><a href="/<?= $row1['friendly_url'] ?>"><?= $row1['product_name'] ?></a></h2>
	                <!--PRICE-->
	               <p class="prices_naustore"><?= number_format($row1['product_price']) ?> VNĐ</p>
	            </div>
	        </div>
	    </div>
<?php
		    }
		}
	}
?>