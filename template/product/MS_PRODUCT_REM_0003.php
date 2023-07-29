<?php 
    $action = new action();
    $action_product = new action_product();                                                                                
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];
        $rowCatLang = $action_product->getProductCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_product->getProductCatDetail_byId($rowCatLang[$nameColIdProductCat_productCatLanguage],$lang);
        $rows = $action_product->getProductList_byMultiLevel_orderProductId($rowCat[$nameColId_productCat],'desc',$trang,6,$slug);
    }else{
        $rows = $action->getList($nameTable_product,'','',$nameColId_product,'desc',$trang,9,'san-pham');
        
    }
    $_SESSION['sidebar'] = 'productCat';
?>
<div class="gb-page-blog_naustore">
    <div class="container">
        <div class="row">
            

            <?php if(newsCatPageHasSub){?>
                <input type="hidden" name="lang_current" id="lang_current" value="<?php echo $lang;?>">
                <input type="hidden" name="url_lang" value="<?php echo $url_lang;?>" id="url_lang"> 
            <div class="col-md-8 col-md-push-4">
                <div class="row">
                    <?php 
                        $d = 0;
                        foreach ($rows['data'] as $item) { 
                            $d++;
                            $action_product1 = new action_product(); 
                            $rowLang1 = $action_product1->getProductLangDetail_byId($item['product_id'],$lang);
                            $row1 = $action_product1->getProductDetail_byId($item['product_id'],$lang);
                    ?>
                        <div class="col-sm-6">
                            <div class="gb-news-blog_naustore-item">
                                <div class="gb-news-blog_naustore-item-img">
                                    <a href="/<?= $rowLang1['friendly_url'] ?>">
                                        <img src="/images/<?= $row1['product_img'] ?>" class="img-responsive">
                                    </a>
                                    <div class="caption caption-large">
                                        <time class="the-date"><?= date('d/m/Y', strtotime($row1['product_created_date'])) ?></time>
                                    </div>
                                </div>
                                <div class="gb-news-blog_naustore-item-text">
                                    <div class="gb-news-blog_naustore-item-title">
                                        <h3><a href="/<?= $rowLang1['friendly_url'] ?>"><?= $rowLang1['lang_product_name'] ?></a></h3>
                                    </div>
                                    <div class="gb-news-blog_naustore-item-text-des">
                                        <p><?= $rowLang1['lang_product_des'] ?></p>
                                    </div>
                                </div>
                                <div class="gb-news-blog_naustore-item-button">
                                    <a href="/<?= $rowLang1['friendly_url'] ?>">
                                        <button type="button" class="btn gb-btn-readmore">ĐỌC TIẾP</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
                <?php include DIR_PAGINATION."MS_PAGINATION_REM_0001.php";?>
            </div>
            <?php }else{ ?>
                <div class="col-md-8">
                    <div class="row">
                        <?php 
                            $d = 0;
                            foreach ($rows['data'] as $item) { 
                                $d++;
                                $action_news1 = new action_news(); 
                                $rowLang1 = $action_news1->getNewsLangDetail_byId($item['news_id'],$lang);
                                $row1 = $action_news1->getNewsDetail_byId($item['news_id'],$lang);
                        ?>
                            <div class="col-sm-6">
                                <div class="gb-news-blog_naustore-item">
                                    <div class="gb-news-blog_naustore-item-img">
                                        <a href="/<?= $rowLang1['friendly_url'] ?>">
                                            <img src="/images/<?= $row1['news_img'] ?>" class="img-responsive">
                                        </a>
                                        <div class="caption caption-large">
                                            <time class="the-date"><?= date('d/m/Y', strtotime($row1['news_created_date'])) ?></time>
                                        </div>
                                    </div>
                                    <div class="gb-news-blog_naustore-item-text">
                                        <div class="gb-news-blog_naustore-item-title">
                                            <h3><a href="/<?= $rowLang1['friendly_url'] ?>"><?= $rowLang1['lang_news_name'] ?></a></h3>
                                        </div>
                                        <div class="gb-news-blog_naustore-item-text-des">
                                            <p><?= $rowLang1['lang_news_des'] ?></p>
                                        </div>
                                    </div>
                                    <div class="gb-news-blog_naustore-item-button">
                                        <a href="/<?= $rowLang1['friendly_url'] ?>">
                                            <button type="button" class="btn gb-btn-readmore">ĐỌC TIẾP</button>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                    <?php include DIR_PAGINATION."MS_PAGINATION_REM_0001.php";?>
                </div>
            <?php } ?>
            <div class="col-md-4 col-md-pull-8">
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_REM_0001.php";?>
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_REM_0002.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_REM_0003_1.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_REM_0003.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_KHOAHOC_0001.php";?>
            </div>
        </div>
    </div>
</div>