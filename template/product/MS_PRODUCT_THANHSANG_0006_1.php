<?php
    $list_procat_1 = $action->getList('productcat', 'productcat_parent', '0', 'productcat_id', 'asc', '', '', '');//var_dump($list_procat_1);
    foreach ($list_procat_1 as $item_procat_1) { 
        $list_procat_2 = $action->getList('productcat', 'productcat_parent', $item_procat_1['productcat_id'], 'productcat_id', 'desc', '', '', '');
?>
<div class="gb-category-product_naustore" style="background-color: #EFEFEF;">
    <div class="container">
        <!-- <div class="titleCategoryProduct_naustore">
            <h4>Sản phẩm bán chạy</h4>
            <a href="chi-tiet-san-pham" class="btn-xemchitiet_naustore">Xem tất cả</a>
        </div> -->

        <div class="row">
             <h2 class="h2_home"><?= $item_procat_1['productcat_name'] ?> <span class="h2_home_phu">NỔI BẬT</span></h2>
             <p class="p_home">THANH SANG AUTO chuyên cung cấp các sản phẩm, phụ kiện ô tô chính hãng được nhập khẩu trực tiếp từ các thương hiệu nổi tiếng trên toàn thế giới.</p>
             <hr class="hr_home">
        </div>

        <!-- menu sản phẩm -->

        <div class="row" style="margin-bottom: 15px;">
        <nav class="nav_menu_sanpham" role="navigation">
          <ul class="menu_sanpham_ul">
            <?php foreach ($list_procat_2 as $item_procat_2) { ?>
            <li class="menu_sanpham_li" onclick="chon_procat(<?= $item_procat_1['productcat_id'] ?>, <?= $item_procat_2['productcat_id'] ?>)"><a href="javascript:void(0)"><?= $item_procat_2['productcat_name'] ?></a>
                <!-- <ul class="dropdown_tmp dropdown menu_sanpham_ul">
                    <li class="menu_sanpham_li menu_sanpham_li_dropdown"><a href="#">VIETMAP</a></li>
                    <li class="menu_sanpham_li"><a href="#">OWIN</a></li>
                    <li class="menu_sanpham_li"><a href="#">Ntech window Film</a></li>
                </ul> -->
            </li>
            <?php } ?>
            

          </ul>
        </nav>
        </div>

        <div class="row" id="show-procat-<?= $item_procat_1['productcat_id'] ?>">
            <?php
                $product = new action_product();
                $list_product_hot = $product->getProductList_byMultiLevel_orderProductId($item_procat_1['productcat_id'],'desc','',8,'');
                foreach ($list_product_hot as $item) {
                    $rowLang1 = $product->getProductLangDetail_byId($item['product_id'],$lang);
                    $row1 = $product->getProductDetail_byId($item['product_id'],$lang); 
            ?>
                <div class="col-md-3 col-sm-6 box_sp">
                    <div class="gb-product_naustore-item">
                        <div class="gb-product_naustore-item-img">
                            <a href="/<?= $row1['friendly_url'] ?>">
                                <img src="/images/<?= $row1['product_img'] ?>" alt="" class="img-responsive">
                            </a>
                            <!--ADD TO CART-->
                            <?php //include DIR_CART."MS_CART_REM_0001.php";?>
                        </div>
                        <div class="gb-product_naustore-item-text">
                            <h2 class="title_boxsp"><a href="/<?= $row1['friendly_url'] ?>"><?= $rowLang1['lang_product_name'] ?></a></h2>
                            <!--PRICE-->
                            <?php include DIR_PRODUCT."MS_PRODUCT_REM_0002.php";?>
                            <p class="prices_naustore"> Đánh giá: 
                                <i class="fa fa-star sxam" aria-hidden="true"> </i>
                                <i class="fa fa-star svang" aria-hidden="true"> </i>
                                <i class="fa fa-star svang" aria-hidden="true"> </i>
                                <i class="fa fa-star svang" aria-hidden="true"> </i>
                                <i class="fa fa-star svang" aria-hidden="true"> </i>
                            </p>
                            <?php include DIR_CART."MS_CART_REM_0001.php";?>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>

        <div class="row">
            <div style="margin: 15px auto; text-align: center;">
            <button class="btn_thanhsang"><a href="/<?= $item_procat_1['friendly_url'] ?>" style="color: #fff;">Xem tất cả</a></button>
            </div>
        </div>

    </div>
</div>
<?php } ?>
<script type="text/javascript">
    function load_url (id, name, price) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
           if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không')) {
              window.location = '/cart';
          }else{
              location.reload();
          }  
          }
        };
        xhttp.open("POST", "/functions/ajax-add-cart.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("product_id="+id+"&product_name="+name+"&product_price="+price+"&product_quantity=1&action=add");
        xhttp.send();        
    }
</script>

<script>
    function chon_procat (id1, id2) {
        // alert(id2);
        // alert(id1);
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            document.getElementById("show-procat-"+id1).innerHTML = this.responseText;
            }
          xhttp.open("GET", "/functions/ajax/show_procat.php?procat_id="+id2, true);
          xhttp.send();
    }
</script>