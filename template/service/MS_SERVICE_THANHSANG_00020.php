<?php 
     $action_page = new action_page(); 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_page->getPageLangDetail_byUrl($slug,$lang);
    $row = $action_page->getPageDetail_byId($rowLang['news_id'],$lang);
    $_SESSION['sidebar'] = 'pageDetail';

    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_page($slug, $lang);
?>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_THANHSANG_0001.php";?>
<div class="gb-gioithieu-page">
    <div class="container" style="padding-bottom: 20px;">
        <div class="box_about">
            <div class="content_about">
                <input type="hidden" name="lang_current" id="lang_current" value="<?php echo $lang;?>">
                <input type="hidden" name="url_lang" value="<?php echo $url_lang;?>" id="url_lang">
                <h1 class="hero-title-breadcrums_naustore h1_ts_page"><?= $title ?></h1>
                <div class="col-md-12"><?= $rowLang['lang_page_content'] ?></div>
            </div>
        </div>
    </div>    
</div><!--end WrapperContent-->

