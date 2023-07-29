<?php
    $actions = new action_product();
    $list_mau_sac = $actions->getListProductRelate_byIdCat_hasLimit(232,4);
    $list_chu_de = $actions->getListProductRelate_byIdCat_hasLimit(231,4);
    $list_chan_dung = $actions->getListProductRelate_byIdCat_hasLimit(235,4);
?>
<div class="gb-col-4-news-product_naustore">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="gb-col-4-news-product_naustore-item">
                    <div class="gb-col-4-news-product_naustore-item-item">
                        Tranh Theo Màu Sắc
                    </div>
                    <div class="gb-newlist-details">
                        <?php
                            foreach ($list_mau_sac as $item) {
                                $rowLang1 = $actions->getProductLangDetail_byId($item['product_id'],$lang);
                                $row1 = $actions->getProductDetail_byId($item['product_id'],$lang); 
                        ?>
                            <div class="gb-product-sidebar_naustore-item">
                                <div class="gb-product-sidebar_naustore-item-img">
                                    <a href="<?= $row1['friendly_url'] ?>">
                                        <img src="/images/<?= $row1['product_img'] ?>" alt="review" class="img-responsive">
                                    </a>
                                </div>
                                <div class="gb-product-sidebar_naustore-item-info">
                                    <h4><a href="/<?= $row1['friendly_url'] ?>"><?= $rowLang1['lang_product_name'] ?></a></h4>
                                    <!--PRICE-->
                                    <?php include DIR_PRODUCT."MS_PRODUCT_REM_0002.php";?>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="gb-col-4-news-product_naustore-item">
                    <div class="gb-col-4-news-product_naustore-item-item">
                        Tranh Theo Chủ Đề
                    </div>
                    <div class="gb-newlist-details">
                        <?php
                            foreach ($list_chu_de as $item) {
                                $rowLang1 = $actions->getProductLangDetail_byId($item['product_id'],$lang);
                                $row1 = $actions->getProductDetail_byId($item['product_id'],$lang); 
                        ?>
                            <div class="gb-product-sidebar_naustore-item">
                                <div class="gb-product-sidebar_naustore-item-img">
                                    <a href="<?= $row1['friendly_url'] ?>">
                                        <img src="/images/<?= $row1['product_img'] ?>" alt="review" class="img-responsive">
                                    </a>
                                </div>
                                <div class="gb-product-sidebar_naustore-item-info">
                                    <h4><a href="/<?= $row1['friendly_url'] ?>"><?= $rowLang1['lang_product_name'] ?></a></h4>
                                    <!--PRICE-->
                                    <?php include DIR_PRODUCT."MS_PRODUCT_REM_0002.php";?>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="gb-col-4-news-product_naustore-item">
                    <div class="gb-col-4-news-product_naustore-item-item">
                        Tranh Kiểu Tranh
                    </div>
                    <div class="gb-newlist-details">
                        <?php
                            foreach ($list_chan_dung as $item) {
                                $rowLang1 = $actions->getProductLangDetail_byId($item['product_id'],$lang);
                                $row1 = $actions->getProductDetail_byId($item['product_id'],$lang); 
                        ?>
                            <div class="gb-product-sidebar_naustore-item">
                                <div class="gb-product-sidebar_naustore-item-img">
                                    <a href="<?= $row1['friendly_url'] ?>">
                                        <img src="/images/<?= $row1['product_img'] ?>" alt="review" class="img-responsive">
                                    </a>
                                </div>
                                <div class="gb-product-sidebar_naustore-item-info">
                                    <h4><a href="/<?= $row1['friendly_url'] ?>"><?= $rowLang1['lang_product_name'] ?></a></h4>
                                    <!--PRICE-->
                                    <?php include DIR_PRODUCT."MS_PRODUCT_REM_0002.php";?>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>