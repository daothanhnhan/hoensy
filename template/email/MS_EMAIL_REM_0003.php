<?php 
    $lien_he1 = new action_email();
    $lien_he1->lien_he();
?>
<div class="gb-form-lienhe">
    <h3>Thông tin liên hệ</h3>
    <form action="" method="post">
        <div class="form-group">
            <label>Họ và tên</label>
            <input type="text" name="name" class="form-control" required="">
        </div>
        <div class="form-group">
            <label>Phone</label>
            <input type="number" name="phone" class="form-control" required="">
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" class="form-control" required="">
        </div>
        <div class="form-group">
            <label>Nội dung</label>
            <textarea class="input-xlarge form-control" name="note" rows="6"></textarea>
        </div>

        <button class="btn btn-gui" name="lien_he">GỬI LIÊN HỆ</button>
    </form>
</div>