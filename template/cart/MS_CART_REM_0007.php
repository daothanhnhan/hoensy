<div class="order">
	<h3 class="title-sidebar"><i class="fa fa-users" aria-hidden="true"></i>Thông tin khách hàng</h3>
	<p class="infor"><i class="fa fa-user" aria-hidden="true"></i> User name: <span class="user"><?= $_SESSION['user_name_gbvn'] ?></span></p>
	<p class="infor"><i class="fa fa-envelope" aria-hidden="true"></i> Email: <span class="user"><?= $list_user['user_email'] ?></span></p>
	<p class="infor"><i class="fa fa-phone-square" aria-hidden="true"></i> Số điện thoại: <span class="user">
		<?php if($list_user['user_phone'] == NULL){echo "<span class='update'>Cập nhật số điện thoại</span>";}else{echo $list_user['user_phone']; }  ?></span></p>
	<p class="infor"><i class="fa fa-map-signs" aria-hidden="true"></i> Địa chỉ: <span class="user">
		<?php if($list_user['user_address'] == NULL){echo "<span class='update'>Cập nhật địa chỉ</span>";}else{echo $list_user['user_address']; }  ?></span>
	</p>
	<p class="infor"><i class="fa fa-calendar" aria-hidden="true"></i> Ngày đăng ký: <span class="user"><?= $list_user['time'] ?></span></p>
	<p class="infor">
		<a href="/update-infor" class="btn btn-danger" role="button">Cập nhật thông tin</a>
	</p>
	<p class="infor">
		<a href="/logout" class="btn btn-danger" role="button">Đăng xuất</a>
	</p>
</div>