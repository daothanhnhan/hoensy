<?php 
    $message_login = '';

    function randomString($length = 6) {
        $str = "";
        $characters = array_merge(range('A','Z'), range('a','z'), range('0','9'));
        $max = count($characters) - 1;
        for ($i = 0; $i < $length; $i++) {
            $rand = mt_rand(0, $max);
            $str .= $characters[$rand];
        }
        return $str;
    }

    function dangnhap () {
        global $conn_vn;
        global $message_login;
        if (isset($_POST['login'])) {
            $email = ($_POST['email']==NULL) ? '' : $_POST['email'];
            $pass = ($_POST['pass']==NULL) ? '' : $_POST['pass'];

            $sql = "SELECT * FROM user Where user_email = '$email'";
            //echo $sql;die;
            $result = mysqli_query($conn_vn, $sql);
            $num = mysqli_num_rows($result);
            if ($num == 0) {
                $message_login = "Mật khẩu hoặc Tên đăng nhập không đúng";
            } else {
                $row = mysqli_fetch_assoc($result);
                $pass_hash = $row['user_password'];
                if (password_verify($pass, $pass_hash)) {
                    $_SESSION['user_id_gbvn'] = $row['user_id'];
                    $_SESSION['user_name_gbvn'] = $row['user_name'];
                    $_SESSION['session_id'] = session_id();
                    if (isset($_POST['rememberme'])) {
                        $identify = randomString(20);
                        $token = randomString(30);
                        $cooki = $identify . ':' . $token;

                        setcookie('user_id_trichdan', $cooki, time() + 2592000);
                        $sql_me = "UPDATE user SET remember_me_identify = '$identify', remember_me_token = '$token' Where user_id = " . $row['user_id'];
                        $result_me = mysqli_query($conn_vn, $sql_me);
                    }
                    echo '<script type="text/javascript">alert(\'Bạn đã đăng nhập thành công!\'); window.location.href = "/thong-tin-ca-nhan";</script>';
                } else {
                    $message_login = "Mật khẩu hoặc Tên đăng nhập không đúng";
                }
            }
        }
    }

    dangnhap();

    if (isset($_SESSION['user_id_gbvn'])) {
        header('Location: /thong-tin-ca-nhan');
    }
?>
<div class="gb-login">
    <div class="container">
        <h1>Đăng nhập</h1>
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="gb-login-form">
                    <div class="col-md-12 col-xs-12">
                        <form action="" method="post">
                            <label style="color: red;"><?= $message_login ?></label>
                            <div class="form-group">
                                <label>Nhập Email: </label>
                                <input type="email" class="form-control" name="email" placeholder="Nhập địa chỉ Email." required>
                            </div>
                            <div class="form-group">
                                <label>Mật khẩu:</label>
                                <input type="password" class="form-control" name="pass" placeholder="Nhập mật khẩu" required>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="rememberme">
                                <label>Duy trì đăng nhập.</label>
                            </div>

                            <button type="submit" class="btn" name="login">ĐĂNG NHẬP</button>

                            <div class="gb-btn-quen-mat-khau">
                                <a href="/forget-pass">Quên mật khẩu?</a>
                            </div>
                            <div class="gb-btn-quen-mat-khau">
                                <a href="/register">Đăng ký</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>