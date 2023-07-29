<?php 
    if (!isset($_SESSION['kich-co'])) {
        $_SESSION['kich-co'] = 1;
    }
    // unset($_SESSION['cart_service']);
    if (!isset($_SESSION['cart_service'])) {
        $_SESSION['cart_service'] = array();
    }
    $list_dich_vu = $action->getList('service', '', '', 'service_id', 'desc', '', '', '');
?>
<style>
.active {
    color: #fff;
    background: #F2C600;
}
</style>
<div class="gb-category-product_naustore" style="background-color: #EFEFEF;">
    <div class="container">

        <!-- <div class="row" style="background-color:#fff; margin-bottom: 10px;">
            <div class="col-md-3 box_service_2 hover01_2 column_2" style="background-color:green;">
                <figure class="figure_2"><img class="img_service_2" src="../images/ts-rua-xe.jpg" /></figure>
                <p class="title_service_2">Công bố sản phẩm của Sở Y Tế</p>        
                <button class="btn_thanhsang btn_thanhsang_2"> Chọn dịch vụ</button>            
            </div>        
            <div class="col-md-3 box_service_2 hover01_2 column_2" style="background-color:green;">
                <figure class="figure_2"><img class="img_service_2" src="../images/ts-rua-xe.jpg" /></figure>
                <p class="title_service_2">Công bố sản phẩm của Sở Y Tế</p>
                <button class="btn_thanhsang btn_thanhsang_2"> Chọn dịch vụ</button>    
            </div>
            <div class="col-md-3 box_service_2 hover01_2 column_2" style="background-color:green;">
                <figure class="figure_2"><img class="img_service_2" src="../images/ts-rua-xe.jpg" /></figure>
                <p class="title_service_2">Công bố sản phẩm của Sở Y Tế</p>
                <button class="btn_thanhsang btn_thanhsang_2"> Chọn dịch vụ</button>    
            </div>
            <div class="col-md-3 box_service_2 hover01_2 column_2" style="background-color:green;">
                <figure class="figure_2"><img class="img_service_2" src="../images/ts-rua-xe.jpg" /></figure>
                <p class="title_service_2">Công bố sản phẩm của Sở Y Tế</p>
                <button class="btn_thanhsang btn_thanhsang_2"> Chọn dịch vụ</button>    
            </div>
        </div> -->     
        <div class="row" style="background-color:#fff; margin-bottom: 60px;">
            <?php 
            $d = 0;
            foreach ($list_dich_vu as $item) { 
                $d++;
            ?>
            <div class="col-md-3 box_service_2 hover01_2 column_2" style="background-color:green;">
                <figure class="figure_2"><a href="/<?= $item['friendly_url'] ?>"><img class="img_service_2" src="/images/<?= $item['service_img'] ?>" alt="<?= $item['service_name'] ?>" /></a></figure>
                <p class="title_service_2"><?= $item['service_name'] ?></p>
                <button class="btn_thanhsang btn_thanhsang_2" onclick="chon_dich_vu(<?= $item['service_id'] ?>)"> Chọn dịch vụ</button>                
            </div>        
            <?php 
                if ($d%4==0) {
                    echo '</div><div class="row" style="background-color:#fff; margin-bottom: 60px;">';
                }
            } ?>
        </div> 

        <?php include DIR_PAGINATION."MS_PAGINATION_REM_0001.php";?>  
    </div>
</div>

<a href="#0" class="customization_popup_trigger"><i class="fa fa-th" style="font-size: 32px; padding: 10px 10px;"></i></a>

<div class="customization_popup" role="alert" style="z-index: 100;">
    <div class="customization_popup_container">

        <p class="title_2">CHỌN KÍCH CỠ XE <a href="../images/ts_kichthuocxe.jpg"> (Xem hướng dẫn)</a> </p>
        <div style="margin: -40px 0px 10px 0px;" id="kich-co">
            <button class="btn_thanhsang_3 <?= $_SESSION['kich-co']==1 ? 'active' : '' ?>" onclick="chon_size(1)">Nhỏ</button>
            <button class="btn_thanhsang_3 <?= $_SESSION['kich-co']==2 ? 'active' : '' ?>" onclick="chon_size(2)">Vừa</button>
            <button class="btn_thanhsang_3 <?= $_SESSION['kich-co']==3 ? 'active' : '' ?>" onclick="chon_size(3)">Lớn</button>
            <button class="btn_thanhsang_3 <?= $_SESSION['kich-co']==4 ? 'active' : '' ?>" onclick="chon_size(4)">Đặc biệt</button>
        </div>  
        <table class="table table-bordered" border="0" style="margin-right: 15px; margin-left: 5px;" id="gio-hang-dich-vu">
            <tbody>                    
                <tr>
                  <th colspan="4">DỊCH VỤ ĐÃ CHỌN</th>
                </tr>
                <?php 
                $d = 0 ;
                $tong = 0;
                foreach ($_SESSION['cart_service'] as $item) {
                    $d++;
                    // echo $item;
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
                    $tong += $price;
                ?>
                <tr>
                  <th scope="row"><?= $d ?>.</th>
                  <td><?= $dich_vu['service_name'] ?> </td>
                  <td style="text-align: center;"> <span onclick="xoa_dich_vu(<?= $item ?>)" style="cursor: pointer;"><i class="fa fa-trash"></i> Xóa</span></td>
                  <td style="text-align: right;"><?= number_format($price) ?>đ</td>
                </tr>
                <?php } ?>
                <tr>
                  <th colspan="3">Tổng tiền:</th>                
                  <td style="text-align: right;">1.490.000đ</td>
                </tr>
                <tr>
                  <th colspan="4">(Phí dịch vụ có thể phát sinh trong gói: 0đ)</th>                                      
                </tr>
            </tbody>
        </table> 
        <form action="/dat-dich-vu" method="post">
          <button type="submit" class="btn btn-default">Đặt dịch vụ</button>
        </form>
        
        
        <a href="#0" class="customization_popup_close img-replace">X</a>

    </div> 
</div>

<script type="text/javascript">
    jQuery(document).ready(function($) {
        $('.customization_popup_trigger').on('click', function(event) {
            event.preventDefault();
            $('.customization_popup').addClass('is-visible');
        });
        $('.customization_popup').on('click', function(event) {
            if ($(event.target).is('.customization_popup_close') || $(event.target).is('.customization_popup')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
            }
        });
        $(document).keyup(function(event) {
            if (event.which == '27') {
                $('.customization_popup').removeClass('is-visible');
            }
        });
    });

</script>
<script>
// Get the container element
var btnContainer = document.getElementById("kich-co");

// Get all buttons with class="btn" inside the container
var btns = btnContainer.getElementsByClassName("btn_thanhsang_3");

// Loop through the buttons and add the active class to the current/clicked button
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");

    // If there's no active class
    if (current.length > 0) {
      current[0].className = current[0].className.replace(" active", "");
    }

    // Add the active class to the current/clicked button
    this.className += " active";
  });
}
</script>
<script>
    function chon_size (so) {
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            document.getElementById("gio-hang-dich-vu").innerHTML = this.responseText;
            }
          xhttp.open("GET", "/functions/ajax1/chon_size.php?size="+so, true);
          xhttp.send();
    }

    function chon_dich_vu (id) {
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            document.getElementById("gio-hang-dich-vu").innerHTML = this.responseText;
            }
          xhttp.open("GET", "/functions/ajax1/chon_dich_vu.php?id="+id, true);
          xhttp.send();
    }

    function xoa_dich_vu (id) {
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            document.getElementById("gio-hang-dich-vu").innerHTML = this.responseText;
            }
          xhttp.open("GET", "/functions/ajax1/xoa_dich_vu.php?id="+id, true);
          xhttp.send();
    }
</script>