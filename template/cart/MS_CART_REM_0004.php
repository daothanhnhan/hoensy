<!-- <?php 
	$total_cart = 0;
	$price_cart = 0;
	if (isset($_SESSION['shopping_cart'])) {
		foreach ($_SESSION['shopping_cart'] as $v) {
			$total_cart++;
			$price_cart = $price_cart + $_SESSION['shopping_cart'][0]['product_price']*$_SESSION['shopping_cart'][0]['product_quantity'];
		}
	}
?>
<div class="gb-header-cart_naustore">
	<a href="/cart" title="">
		<button class="btn btn-cart-naustore"><i class="fa fa-shopping-bag" aria-hidden="true"></i> <?= $total_cart ?> Sản phẩm - <?= number_format($price_cart) ?> VND</button>	
	</a>
</div> -->

<div class="gb-header-cart_naustore">
	<a href="/cart" title="">
		<span class="btn btn-cart-naustore"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span style="padding-top: 4px; color:#4C4C4C; font-size: 14px;">Email: <?= $rowConfig['content_home2'] ?></span> </span>	
	</a>
</div>