<?php 
    $action_product = new action_product(); 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_product->getProductLangDetail_byUrl($slug,$lang);
    $row1 = $action_product->getProductDetail_byId($rowLang[$nameColIdProduct_productLanguage],$lang);
    $_SESSION['productcat_id_relate'] = $row1[$nameColIdProductCat_product];
    $_SESSION['sidebar'] = 'productDetail';
    $arr_id = $row1['productcat_ar'];
    $arr_id = explode(',', $arr_id);
    $productcat_id = (int)$arr_id[0];
    $product_breadcrumb = $action_product->getProductCatLangDetail_byId($productcat_id, $lang);
    $breadcrumb_url = $product_breadcrumb['friendly_url'];
    $breadcrumb_name = $product_breadcrumb['lang_productcat_name'];
    $use_breadcrumb = true;

    $img_sub = json_decode($row1['product_sub_img']);

    //List Color
    $list_color = $action_product->listcolorProduct($row1['product_id']);
?>
<?php 
    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_productDetail($slug, $lang);
?>
<script type="text/javascript">
   $(document).ready(function(data){  
      $('.btn_addCart').click(function(){  
          var size = $('#size_id').val();
          if(size == ""){
            alert("Bạn chưa chọn size tranh");
            return false;
          }else{
            var product_id = $('#product_id').val();
             var product_name = $('#product_name').val();  
             var product_price = $('#product_price').val();  
             var product_quantity = $('.number_cart').val();
             var name_color = $('.color_product').val();
             var product_name_1 = product_name + " ( " + name_color +" )";
             var product_img = $('#product_image').val();
             var action = "add";
             
             if(product_quantity > 0)  
             {                  
                   $.ajax({  
                       url:"/functions/ajax.php?action=add_cart",  
                       method:"POST",  
                       dataType:"json",  
                       data:{  
                            product_id:product_id,   
                            product_name:product_name_1,   
                            product_price:product_price,   
                            product_quantity:product_quantity,
                            product_img:product_img,
                            action:action  
                      },  
                      success:function(data)  
                      {   
                            if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không')) {
                                window.location = '/cart';
                            }else{
                                location.reload();
                            }  
                       },
                       error: function () {
                          alert('loi');
                       }  
                  });  

             }  
             else  
             {  
                  alert("Please Enter Number of Quantity")  
             } 
          }
      });
   });
 </script>
<link rel="stylesheet" href="/plugin/slickNav/slicknav.css"/>
<link rel="stylesheet" href="/plugin/slick/slick.css"/>
<link rel="stylesheet" href="/plugin/slick/slick-theme.css"/>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_THANHSANG_0001.php";?>
<div class="gb-chitiet_sanpham_naustore">
    <div class="gb-chitiet_sanpham_naustore-body">
        <div class="container">
            <div class="gb-chitiet_sanpham_naustore-left">

                <!--chi titest sản phẩm-->
                <div class="row">
                    <div class="col-md-6">
                        <div class="gb-chitiet_sanpham_naustore_left-img">
                            <div class="uni-single-car-gallery-images">
                                <div class="color-content">
                                    <div class="slider slider-for">
                                        <?php 
                                            $d = 0;
                                            foreach ($img_sub as $item) {
                                                $d++;
                                                $image = json_decode($item, true);
                                        ?>
                                            <div class="slide-item">
                                                <img src="/images/<?= $image['image'] ?>" alt="" class="img-responsive img1" data-zoom-image="/images/<?= $image['image'] ?>">
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                                <div class="slider slider-nav">
                                    <?php 
                                        $d = 0;
                                        foreach ($img_sub as $item) {
                                            $d++;
                                            $image = json_decode($item, true);
                                    ?>
                                    <div class="slide-item-nav">
                                        <img src="/images/<?= $image['image'] ?>" alt="" class="img-responsive" data-zoom-image="/images/<?= $image['image'] ?>">
                                    </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="gb-chitiet_sanpham_naustore_left-info">
                            <h1 class="product_title entry-title"><?= $rowLang['lang_product_name'] ?></h1>
                            <!-- .description -->
                            <div class="description">
                                <p>
                                     <?= $rowLang['lang_product_des'] ?>
                                </p>                                
                            </div>
                            <!--ENTRY PRICE-->

                            <!--SỐ LƯỢNG VÀ ADD TO CART-->
                            <?php include DIR_CART."MS_CART_THANHSANG_0001.php";?>

                            <!-- LIST COLOR -->
                            <!-- <div class="color-product">
                                <label class="title-color" style="display: block;margin-bottom: 8px;">Chọn tranh muốn mua (Hình thức mua lẻ)</label>
                                <input type="hidden" name="color_product" class="color_product" value="">
                                <?php 
                                $i = 0;
                                foreach ($list_color as $item) { 
                                    $i++;
                                ?>  
                                    <div class="item-color">
                                        <img src="/images/<?= $item['color_img'] ?>" width="50" height="50" mau="<?= $item['color_name'] ?>" color="<?= $item['color_id'] ?>" onclick="color(this)">
                                        <span style="display: block;font-size: 12px;text-align: center;color: #8c8b8b;padding: 5px 0px;">Mẫu <?= $i ?> </span>
                                    </div>
                                <?php } ?>
                            </div> -->
                            <div class="gb-divider"></div>
                            <!--SHARE-->
                            <?php include DIR_SOCIAL."MS_SOCIAL_REM_0002.php";?>

                        </div>
                    </div>
                </div>

                <!--THÔNG SỐ VÀ MÔ TẢ-->
                <div class="gb-thongso-mota">
                    <div class="uni-shortcode-tabs-default">
                        <div class="uni-shortcode-tab-3">
                            <div class="tabbable-panel">
                                <div class="tabbable-line">
                                    <ul class="nav nav-tabs ">
                                        <li  class="active">
                                            <a href="#tab_default_32" data-toggle="tab">
                                                Mô tả sản phẩm</a>
                                        </li>
                                        <li>
                                            <a href="#tab_default_33" data-toggle="tab">
                                                Chính sách khách hàng</a>
                                        </li>
                                        <li>
                                            <a href="#tab_default_34" data-toggle="tab">
                                                Nhận xét sản phẩm</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab_default_32">
                                            <?= $rowLang['lang_product_content'] ?>

                                        </div>
                                        <div class="tab-pane" id="tab_default_33">
                                            <p>Comes Beautifully Gift Boxed as shown. Delivered from the UK.</p>
                                        </div>
                                        <div class="tab-pane" id="tab_default_34">
                                            <div class="fb-comments" data-href="http://tranhtrangtri2.thietkewebsitegbvn.com" data-width="100%" data-numposts="5"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--realte product-->
                <?php include DIR_PRODUCT."MS_PRODUCT_REM_0005.php";?>

            </div>
        </div>
    </div>
</div>

<script src="/plugin/slick/scripts.js"></script>
<script src="/plugin/slick/slick.js"></script>
<script src="/plugin/slickNav/jquery.slicknav.js"></script>

<div id="fb-root"></div>
<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

<script type="text/javascript">
    $(document).ready(function() {
        $('.slider-for').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            speed: 500,
            arrows: false,
            fade: true,
            asNavFor: '.slider-nav'
        });
        $('.slider-nav').slick({
            slidesToShow: 4,
            slidesToScroll: 1,
            speed: 500,
            asNavFor: '.slider-for',
            dots: false,
            focusOnSelect: true,
            slide: 'div'
        });
    });
</script>
<script type="text/javascript">
    function color (data) {
        var id = data.getAttribute("color");
        // alert(id);
        var name_color = data.getAttribute("mau");
        
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             var bien = this.responseText;
             // alert(bien);
            var obj = JSON.parse(bien);

            var images = obj.images;
            var price = obj.price;
            var size_1 = obj.pic_1;
            var size_2 = obj.pic_2;
            var size_3 = obj.pic_3;
            var size_4 = obj.pic_4;

             // alert(price);
             document.getElementsByClassName("color_product")[0].value = name_color;
             // alert('Bạn đã chọn '+name_color);
             document.getElementsByClassName("color-content")[0].innerHTML = "<div class='slider slider-for'><div class='slide-item'><img src='/images/"+images+"' alt=''></div></div>";
            document.getElementsByClassName("prices_naustore")[0].innerHTML = price + " VNĐ";
            document.getElementsByClassName("content-size")[0].innerHTML = "<option value=''>Chọn kích thước tranh</option><option value='"+ size_1 +"'>"+ size_1 +" cm</option><option value='"+size_2+"'>"+size_2+" cm</option><option value='"+size_3+"'>"+size_3+" cm</option><option value='"+size_4+"'>"+size_4+" cm</option>";
            }
          };
          xhttp.open("GET", "/functions/ajax/color.php?id="+id, true);
          xhttp.send();
    }
</script>