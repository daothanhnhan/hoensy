<?php 
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";
	include_once dirname(__FILE__) . "/../action_product.php";

	$action = new action();
    $lang = 'vn';
	$procat_id = $_GET['procat_id'];//echo $procat_id;
    $procat = $action->getDetail('productcat', 'productcat_id', $procat_id);
?>
<?php
                $product = new action_product();
                $list_product_hot = $product->getProductList_byMultiLevel_orderProductId($procat_id,'desc','',8,'');
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
                            <?php include dirname(__FILE__)."/../../template/product/MS_PRODUCT_REM_0002.php";?>
                            <p class="prices_naustore"> Đánh giá: 
                                <i class="fa fa-star sxam" aria-hidden="true"> </i>
                                <i class="fa fa-star svang" aria-hidden="true"> </i>
                                <i class="fa fa-star svang" aria-hidden="true"> </i>
                                <i class="fa fa-star svang" aria-hidden="true"> </i>
                                <i class="fa fa-star svang" aria-hidden="true"> </i>
                            </p>
                            <?php include dirname(__FILE__) . "/../../template/cart/MS_CART_REM_0001.php";?>
                        </div>
                    </div>
                </div>
                
            <?php } ?>
            <div class="row">
                    <div style="margin: 15px auto; text-align: center;clear: both;">
                    <button class="btn_thanhsang"><a href="/<?= $procat['friendly_url'] ?>" style="color: #fff;">Xem tất cả</a></button>
                    </div>
                </div>