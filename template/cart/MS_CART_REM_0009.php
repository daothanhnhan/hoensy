<h2 class="title-sidebar">
	<i class="fa fa-shopping-cart" aria-hidden="true"></i>Chi tiết đơn hàng #<?php echo $rowOrder['id_cart'];?>
</h2>
<p style="color: #d43f3a;font-style: italic;">Thông tin chi tiết sản phẩm bạn đã mua (*)</p>            
<table class="table table-striped">
	<thead>
		<tr>
			<th>STT</th>
			<th>Hình ảnh</th>
			<th>Tên sản phẩm</th>
			<th>Giá x Số Lượng</th>
			<th>Thành tiền</th>
		</tr>
	</thead>
	<tbody>
		<?php
			$totalprice = 0;
			$i = 1;
    		foreach ($listOrderDetail as $item) {
		?>
			<tr>
				<td><?= $i++ ?></td>
				<td><span class="item_image"><img src="/images/<?= $item['product_img'];?>" alt=""></span></td>
				<td><a href="/<?= $item['friendly_url'] ?>" title=""><?php echo $item['product_name'] ;?></a></td>
				<td>
					<?php echo number_format($item['price_product'],"0","",".");?> VNĐ
					x
					<?= $item['qyt_product'] ?>
			</td>
				<td>
					<?php echo number_format($item['price_product']*$item['qyt_product'],"0","",".");?> VNĐ
				</td>
			</tr>
			<?php
				$totalprice += $item['totalprice_product'];
			?>
		<?php } ?>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td>Tổng tiền</td>
				<td><?php echo number_format($totalprice, "0","",".");?> VNĐ</td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td>Trạng thái đơn hàng</td>
				<?php foreach ($orderStates as $orderState) { 
					if($orderState['order_state_id'] == $rowOrder['id_orderState']){
				?>		
					<td><span class="status"><?php echo $orderState['order_state_name'];?></span></td>
				<?php } } ?>
			</tr>
	</tbody>
</table>