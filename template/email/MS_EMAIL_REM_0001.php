<?php
	$email = new action_email();
	$email->gui_email();
?>
<div class="gb-news-letter_naustore">
    <div class="gb-footer-newletter_naustore">
        <p style="color: #fff; margin-top: 10px;">Nhận tin khuyến mãi sản phẩm mới nhất từ chúng tôi. Hãy nhập email của bạn vào bên dưới</p>
       	<form action="" method="post" accept-charset="utf-8">
       		<div class="input-group">
	            <input type="email" class="form-control" placeholder="Nhập email của bạn" name="email" required="">
	            <span class="input-group-btn" style="background-color:#F58220;">
	                <button class="btn btn-theme" type="submit" name="send_email">
	                	<i class="fa fa-paper-plane" aria-hidden="true"></i>
	                </button>
	            </span>
	        </div>
       	</form>
    </div>
</div>