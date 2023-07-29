<div class="gb-danhmuc-sidebar-naustore widget-sidebar">
    <aside class="widget">
        <h3 class="widget-title-sidebar-naustore">Danh mục tin tức</h3>
        <div class="widget-content">
            <ul>
                <?php
                    $news = new action_news();
                    $list_news_cat = $news->getListNewsCatAll($lang);
                    foreach ($list_news_cat as $item) {
                ?>
                    <li><a href="/<?= $item['friendly_url'] ?>"><i class="fa fa-angle-right" aria-hidden="true"></i> <?= $item['newscat_name'] ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </aside>
</div>