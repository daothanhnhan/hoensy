<style>

</style>
<nav class="gb-main-menu_ldpvinhome sticky-menu hidden-xs" >
    <div class="container">
        <nav class="main-navigation uni-menu-text_ldpvinhome">
            <div class="cssmenu" style="display: flex;justify-content: flex-end;">
                <a href="/" title=""><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="logo" class="logo-menu"></a>
                <?php
                    $list_menu = $menu->getListMainMenu_byOrderASC();
                    $menu->showMenu_byMultiLevel_mainMenuTranhTrangTri($list_menu,0,$lang,0);
                ?>
                <?php if (!isset($_SESSION['user_id_gbvn'])) { ?>
                <a class="nut-dang-nhap" href="/login">Đăng nhập</a>
                <?php } else { ?>
                <a class="nut-dang-nhap" href="/thong-tin-ca-nhan">Khóa học đang sở hữu</a>
                <!-- <span class="user-name"><?= $user_name ?></span> -->
                <?php } ?>
            </div>
        </nav>
    </div>
</nav>
<div class="hidden-sm hidden-md hidden-lg">
    <a href="/" title=""><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="logo" style="height: 50px;margin: 5px 15px;"></a>
</div>
<style>

</style>
<script src="/plugin/sticky/jquery.sticky.js"></script>
<script>
    $(document).ready(function () {
        var headerHeight = $('.gb-main-menu_ldpvinhome').outerHeight();

        $('.slide-section').click(function () {
            var linkHref = $(this).attr('href');
            $('html, body').animate({
                scrollTop: $(linkHref).offset().top - headerHeight
            }, 1000);
            e.preventDefault();
        });

        $(".sticky-menu").sticky({topSpacing:0});
    });
</script>
<script>
    $(document).ready(function(){
        $("#search").click(function(){
            $(".gb-box-search").slideToggle("slow", function(){

            });
        });
    });
</script>