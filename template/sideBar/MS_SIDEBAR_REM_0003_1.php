<div class="gb-recenpost-sidebar-naustore widget-sidebar">
    <aside class="widget">
        <h3 class="widget-title-sidebar-naustore">Khóa học mới phát hành</h3>
        <div class="widget-content">
            <div class="gb-blog-left-recent-posts_naustore">
                <ul>
                    <?php
                        $khoa_hoc_moi = $action->getList('product', '', '', 'product_id', 'desc', '', '3', '');
                        foreach ($khoa_hoc_moi as $item) {
                    ?>
                    <li>
                        <div class="gb-item-recent-posts_naustore">
                            <div class="gb-item-recent-posts_naustore-img">
                                <a href="/<?= $item['friendly_url'] ?>">
                                    <img src="/images/<?= $item['product_img'] ?>" alt="">
                                </a>
                            </div>
                            <div class="gb-item-recent-posts_naustore-text">
                                <h2><a href="/<?= $item['friendly_url'] ?>"><?= $item['product_name'] ?></a></h2>
                                <div class="gb-item-recent-post-time_naustore">
                                    <span><i class="fa fa-calendar" aria-hidden="true"></i> <?= date('d/m/Y', strtotime($item['product_created_date'])) ?></span>
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