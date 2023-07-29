<?php 
    $message = "";

    function update_infor(){
        global $conn_vn;
        if(isset($_POST['update_infor'])){
            $name = ($_POST['name']==NULL) ? '' : $_POST['name'];
            $email = ($_POST['email']==NULL) ? '' : $_POST['email'];
            $address = ($_POST['address']==NULL) ? '' : $_POST['address'];
            $phone = ($_POST['phone']==NULL) ? '' : $_POST['phone'];

            $sql = "UPDATE user SET user_name = '$name', user_email = '$email', user_phone = '$phone', user_address = '$address' Where user_id = " . $_SESSION['user_id_gbvn'];
            $result = mysqli_query($conn_vn, $sql) or die('error: ' . mysqli_error($conn_vn));
            echo '<script type="text/javascript">alert(\'Thông tin được cập nhật thành công!\'); window.location.href = "/thong-tin-ca-nhan";</script>';
        }
    }

    update_infor();

    function get_list_user(){
        global $conn_vn;
        $user = $_SESSION['user_name_gbvn'];
        $sql = "SELECT * FROM user Where user_name = '$user'";
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        return $row;
    }
    $list_user = get_list_user();
?>
<div class="gb-register1">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="gb-register-body">
                    <h1>Cập nhật thông tin cá nhân </h1>
                    <p>Cập nhật đầy đủ chi tiết thông tin cá nhân, để chúng tôi có thể hỗ trợ và tư vấn cho bạn dễ dàng hơn</p>
                    <div class="row">
                        <div class="col-md-8  col-md-offset-2">
                            <form action="" method="post">
                                <div class="form-group">
                                    <label>Họ và tên:</label>
                                    <input type="text" class="form-control" name="name" placeholder="Họ và tên" value="<?= $list_user['user_name'] ?>" required>
                                </div>
                                <div class="form-group">
                                        <label>Email:</label>
                                    <input type="email" class="form-control" name="email" placeholder="Địa chỉ Email" value="<?= $list_user['user_email'] ?>" required>
                                </div>
                                <div class="form-group">
                                    <label>Địa chỉ:</label>
                                    <input type="text" class="form-control" name="address" placeholder="Địa chỉ" value="<?= $list_user['user_address'] ?>" required>
                                </div>
                                <div class="form-group">
                                    <label>Số điện thoại:</label>
                                    <input type="text" class="form-control" name="phone" placeholder="Số điện thoại" value="<?= $list_user['user_phone'] ?>" required>
                                </div>
                                <div class="form-group">
                                    <button type="submit" name="update_infor" class="btn btn-success">Cập nhật</button>
                                    <a href="/thong-tin-ca-nhan" class="btn btn-danger" role="button">Hủy</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>