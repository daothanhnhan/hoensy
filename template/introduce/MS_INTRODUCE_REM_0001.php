<?php
    $news_home = new action_news();
    $detail_news = $news_home->getNewsDetail_byId(51, $lang);
?>
<div class="gb-introvechungtoi_rem">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="gb-introvechungtoi_rem-left">
                    <h2><?= $detail_news['news_name'] ?></h2>
                    <div class="gb-divider"></div>
                    <p><?= $detail_news['news_des'] ?></p>
                    <a href="<?= $detail_news['friendly_url'] ?>" class="gb-introvechungtoi_rem-doctiep">Đọc tiếp</a>
                </div>
            </div>
            <div class="col-md-6">
                <div class="gb-introvechungtoi_rem-right">
                    <img src="/images/<?= $detail_news['news_img'] ?>" alt="" class="img-responsive">
                </div>
            </div>
        </div>
    </div>
</div>