<div class="gb-recenpost-sidebar-naustore widget-sidebar">
    <aside class="widget">
        <h3 class="widget-title-sidebar-naustore">Blog mới nhất</h3>
        <div class="widget-content">
            <div class="gb-blog-left-recent-posts_naustore">
                <ul>
                    <?php
                        $news  = new action_news();
                        $list_news_new = $news->getListNewsNew_hasLimit(3);
                        foreach ($list_news_new as $item) {
                    ?>
                    <li>
                        <div class="gb-item-recent-posts_naustore">
                            <div class="gb-item-recent-posts_naustore-img">
                                <a href="/<?= $item['friendly_url'] ?>">
                                    <img src="/images/<?= $item['news_img'] ?>" alt="">
                                </a>
                            </div>
                            <div class="gb-item-recent-posts_naustore-text">
                                <h2><a href="/<?= $item['friendly_url'] ?>"><?= $item['news_name'] ?></a></h2>
                                <div class="gb-item-recent-post-time_naustore">
                                    <span><i class="fa fa-calendar" aria-hidden="true"></i> <?= date('d/m/Y', strtotime($item['news_created_date'])) ?></span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <?php } ?>
                </ul>
            </div>
        </div>
    </aside>
</div>