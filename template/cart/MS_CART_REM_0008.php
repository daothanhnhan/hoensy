<?php 
	$khoa_hoc_free = $action->getList('product', 'tra_phi', '0', 'product_id', 'desc', '', '', '');
	// var_dump($user_khoa_hoc);
?>
<h2 class="title-sidebar"><i class="fa fa-shopping-cart" aria-hidden="true"></i>KHOÁ HỌC ĐANG SỞ HỮU</h2>
<!-- <p style="color: #d43f3a;font-style: italic;">Thông tin đơn hàng của bạn (*)</p>             -->
<table class="table table-striped">
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên khóa học</th>
			<!-- <th>Tên người nhận</th>
			<th>Số điện thoại</th>
			<th>Email</th>
			<th>Ghi chú</th> -->
		</tr>
	</thead>
	<tbody>
		<?php
			$i = 1;
			foreach ($khoa_hoc_free as $item) {
		?>
			<tr>
				<td><?= $i++ ?></td>
				<td>
					<a href="/<?= $item['friendly_url'] ?>" title=""><?= $item['product_name'] ?></a>
				</td>
				<!-- <td><?= $item['name_buyer'] ?></td>
				<td><?= $item['phone_buyer'] ?></td>
				<td><?= $item['mail_buyer'] ?></td>
				<td><?= $item['note_buyer'] ?></td> -->
			</tr>
		<?php } ?>
		<?php 
		foreach ($user_khoa_hoc as $id) { 
			$product = $action->getDetail('product', 'product_id', $id);
		?>
			<tr>
				<td><?= $i++ ?></td>
				<td>
					<a href="/<?= $product['friendly_url'] ?>" title=""><?= $product['product_name'] ?></a>
				</td>
			</tr>
		<?php } ?>
	</tbody>
</table>