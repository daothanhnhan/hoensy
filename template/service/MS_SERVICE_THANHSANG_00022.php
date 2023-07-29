
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_THANHSANG_0001.php";?>
<?php 
    $action_service = new action_service(); 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_service->getServiceLangDetail_byUrl($slug,$lang);
    $row = $action_service->getServiceDetail_byId($rowLang['news_id'],$lang);
    // $_SESSION['sidebar'] = 'newsDetail';
    // $news_breadcrumb = $action_news->getNewsCatLangDetail_byId($row['newscat_id'], $lang);
    // $breadcrumb_url = $news_breadcrumb['friendly_url'];
    // $breadcrumb_name = $news_breadcrumb['lang_newscat_name'];
    // $use_breadcrumb = true;

    // $action_lang = new action_lang();
    // $url_lang = $action_lang->get_url_lang_newsDetail($slug, $lang);
?>
<div class="gb-gioithieu-page">
    <div class="container" style="padding-bottom: 20px;">
        <div class="box_about">
            <div class="content_about">
                <input type="hidden" name="lang_current" id="lang_current" value="<?php echo $lang;?>">
                <input type="hidden" name="url_lang" value="<?php echo $url_lang;?>" id="url_lang">
                <h1 class="hero-title-breadcrums_naustore h1_ts_page"><?= $rowLang['lang_service_name'] ?></h1>
                <div class="col-md-12">
                   <?= $rowLang['lang_service_content'] ?>
                </div>
            </div>
        </div>
    </div>
</div><!--end WrapperContent-->