<?php 
    $user = $action->getDetail('user', 'user_id', $_SESSION['user_id_gbvn']);
    $user_name_arr = explode(' ', $user['user_name']);
    $user_name = $user_name_arr[0];
    $user_khoa_hoc = json_decode($user['khoa_hoc'], true);
?>
<style>
img {
    max-width: 100%;
    height: auto;
}
iframe {
    max-width: 100%;
    /*height: auto;*/
}
@media screen and (max-width: 768px) {
    iframe {
        height: 200px;
    }
}
</style>
<!--MENU MOBILE-->
<?php include_once DIR_MENU."MS_MENU_REM_0002.php"; ?>
<!-- End menu mobile-->

<!--MENU DESTOP-->
<header>
    <div class="gb-header-naustore">
        <div class="gb-top-header_naustore">
            <!-- <div class="container">
                <div class="row">
                    <div class="col-md-5 col-sm-3">
                        <?php include DIR_SOCIAL."MS_SOCIAL_REM_0001.php";?>
                    </div>
                    <div class="col-md-8 col-sm-8">
                        <div class="gb-top-header_naustore-right">
                            <ul>
                                <?php
                                    if(isset($_SESSION['user_name_gbvn'])){
                                ?>
                                    <li><a href="/thong-tin-ca-nhan"><i class="fa fa-user" aria-hidden="true"></i> <?= $_SESSION['user_name_gbvn'] ?></a></li>
                                <?php
                                    }else{
                                ?>
                                <li><a href="/login"><i class="fa fa-user" aria-hidden="true"></i> Tài khoản</a></li>
                                <?php } ?>
                                <li><a href=""><i class="fa fa-phone" aria-hidden="true"></i> Bạn cần tư vấn? Liên hệ chúng tôi <?= $rowConfig['content_home3'] ?></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div> -->
        </div>
        <div class="gb-header-between_naustore hidden">
            <div class="container">
                <div class="row row_fix_hp">
                    <div class="col-md-2 col-sm-4 col-xs-4">
                        <div class="gb-header-between_naustore-left">
                            <h1>
                                <a href="/"><img style="height: 84px;" src="/images/<?= $rowConfig['web_logo'] ?>" alt="" class="img-responsive"></a>
                            </h1>
                        </div>
                    </div>

                    <!-- địa chỉ & ... -->
                    <div class="col-md-6">
                        <?php include DIR_CONTACT."MS_CONTACT_REM_0004.php";?>
                    </div>

                    <!-- hotline & email -->
                    <div class="col-md-4 col-sm-8">
                        <div class="gb-header-between_naustore-right">
                            <ul>
                                <li>
                                    <?php include DIR_CART."MS_CART_REM_0003.php";?>                                        
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    <?php include DIR_CART."MS_CART_REM_0004.php";?>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="gb-header-bottom_naustore">
            <?php include DIR_MENU."MS_MENU_REM_0001.php";?>
        </div>
    </div>
</header>

<script src="/plugin/sticky/jquery.sticky.js"></script>
<script>
    $(document).ready(function () {
        $(".sticky-menu").sticky({topSpacing:0});
    });
</script>