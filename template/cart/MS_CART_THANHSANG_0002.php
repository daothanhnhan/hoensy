<?php 
  function dat_dich_vu () {
    global $conn_vn;
    global $action;
    if (isset($_POST['dat_dich_vu'])) {
      $size = $_SESSION['kich-co'];
      $name = mysqli_real_escape_string($conn_vn, $_POST['name']);
      $phone = mysqli_real_escape_string($conn_vn, $_POST['phone']);
      $email = mysqli_real_escape_string($conn_vn, $_POST['email']);
      $note = mysqli_real_escape_string($conn_vn, $_POST['note']);

      if (empty($_SESSION['cart_service'])) {
        echo '<script>alert(\'Bạn chưa chọn dịch vụ\');</script>';
      } else {
        $sql = "INSERT INTO dat_dich_vu (name, phone, email, note, size) VALUES ('$name', '$phone', '$email', '$note', '$size')";
        $result = mysqli_query($conn_vn, $sql);
        if ($result) {
          $id = mysqli_insert_id($conn_vn);
          foreach ($_SESSION['cart_service'] as $item) {
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
                $ten_dv = $dich_vu['service_name'];
                $ten_dv = mysqli_real_escape_string($conn_vn, $ten_dv);

            $sql = "INSERT INTO dich_vu_dat (name, price, dat_dich_vu_id) VALUES ('$ten_dv', '$price', '$id')";
            $result1 = mysqli_query($conn_vn, $sql);
          }
          $_SESSION['cart_service'] = array();
          echo '<script>alert(\'Bạn đã đặt dịch vụ thành công.\');</script>';
        } else {
          echo '<script>alert(\'Có lỗi xảy ra.\');</script>';
        }
      }
    }
  }
  dat_dich_vu();
?>

<div class="container">
  <h1 style="font-size: 30px;text-align: center;">Thông tin đặt dịch vụ</h1>
  <form action="" method="post">
    <div class="form-group">
      <label for="email">Họ và tên*:</label>
      <input type="text" class="form-control" name="name" id="email" required="">
    </div>
    <div class="form-group">
      <label for="pwd">Số điện thoại*:</label>
      <input type="text" class="form-control" name="phone" id="pwd" required="">
    </div>
    <div class="form-group">
      <label for="pwd1">Email:</label>
      <input type="email" class="form-control" name="email" id="pwd1">
    </div>
    <div class="form-group">
      <label for="comment">Ghi chú:</label>
      <textarea class="form-control" rows="5" name="note" id="comment"></textarea>
    </div>
    <button type="submit" name="dat_dich_vu" class="btn btn-default">Đặt dịch vụ</button>
  </form>
</div>
