<?php 
    $action = new action();
    $action_product = new action_product();                                                                                
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];
        $rowCatLang = $action_product->getProductCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_product->getProductCatDetail_byId($rowCatLang[$nameColIdProductCat_productCatLanguage],$lang);
        $rows = $action_product->getProductList_byMultiLevel_orderProductId($rowCat[$nameColId_productCat],'desc',$trang,9,$slug);
    }else{
        $rows = $action->getList($nameTable_product,'','',$nameColId_product,'desc',$trang,9,'san-pham');
        
    }
    $_SESSION['sidebar'] = 'productCat';
?>  
<input type="hidden" name="lang_current" id="lang_current" value="<?php echo $lang;?>">
<input type="hidden" name="url_lang" value="<?php echo $url_lang;?>" id="url_lang">
<?php 
    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_productcat($slug, $lang);
?>

<div class="gb-page-sanpham_naustore">
    <div class="container">
        <div class="col-md-9 col-md-push-3">
            <?php //include DIR_SEARCH."MS_SEARCH_REM_0001.php";?>
            <div class="row" id="productContainer">
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                        $action_product1 = new action_product(); 
                        $rowLang1 = $action_product1->getProductLangDetail_byId($row['product_id'],$lang);
                        $row1 = $action_product1->getProductDetail_byId($row['product_id'],$lang); 
                ?>
                    <div class="col-sm-4">
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
                            <?php //include DIR_PRODUCT."MS_PRODUCT_REM_0002.php";?>
                            <!-- <p class="prices_naustore"> Đánh giá: 
                                <i class="fa fa-star sxam" aria-hidden="true"> </i>
                                <i class="fa fa-star svang" aria-hidden="true"> </i>
                                <i class="fa fa-star svang" aria-hidden="true"> </i>
                                <i class="fa fa-star svang" aria-hidden="true"> </i>
                                <i class="fa fa-star svang" aria-hidden="true"> </i>
                            </p> -->
                            <p class="text-center">Tiến độ: <?= $row1['product_code'] ?></p>
                            <?php include DIR_CART."MS_CART_REM_0001.php";?>
                        </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        <?php include DIR_PAGINATION."MS_PAGINATION_REM_0001.php";?>
        </div>
        <div class="col-md-3 col-md-pull-9">
            <?php //include DIR_SIDEBAR."MS_SIDEBAR_REM_0001.php";?>
            <?php //include DIR_SIDEBAR."MS_SIDEBAR_REM_0006.php";?>
            <?php //include DIR_SIDEBAR."MS_SIDEBAR_REM_0008.php";?>
            <?php //include DIR_SIDEBAR."MS_SIDEBAR_REM_0004.php";?>
            <?php //include DIR_SIDEBAR."MS_SIDEBAR_REM_0005.php";?>
            <?php include DIR_SIDEBAR."MS_SIDEBAR_REM_0003_1.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_REM_0003.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_KHOAHOC_0001.php";?>
        </div>
    </div>
</div>
