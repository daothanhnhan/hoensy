<?php
    $product_cat = new action_product();
    $mausac = $product_cat->getProductCatDetail_byId(232, $lang);
    $chude = $product_cat->getProductCatDetail_byId(231, $lang);
    $tranhhoala = $product_cat->getProductCatDetail_byId(237, $lang);
    $tranhdongvat = $product_cat->getProductCatDetail_byId(236, $lang);
    $chandung = $product_cat->getProductCatDetail_byId(235, $lang);
    $amnhac = $product_cat->getProductCatDetail_byId(234, $lang);

?>
<div class="gb-home-categgory-product_rem">
    <div class="container">
        <div class="gb-home-categgory-product_rem-title">
            <h3>Cùng khám phá</h3>
            <p>Những xu hướng trang trí bằng tranh canvas mới nhất</p>
        </div>

        <div class="gb-home-categgory-product_rem-body">
            <div class="row">
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="category_1_rem category_product_rem">
                                <div class="category_grid_box_rem">
                                    <div class="category_item_bkg_rem" style="background-image:url(../images/<?= $mausac['productcat_img'] ?>)"></div>
                                    <a href="<?= $mausac['friendly_url'] ?>" class="category_item_rem">
                                        <div class="category_name_rem"><p><?= $mausac['productcat_name'] ?></p></div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="category_2_rem category_product_rem">
                                <div class="category_grid_box_rem">
                                    <div class="category_item_bkg_rem" style="background-image:url(../images/<?= $chude['productcat_img'] ?>)"></div>
                                    <a href="<?= $chude['friendly_url'] ?>" class="category_item_rem">
                                        <div class="category_name_rem"><p><?= $chude['productcat_name'] ?></p></div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="category_5_rem category_product_rem">
                                <div class="category_grid_box_rem">
                                    <div class="category_item_bkg_rem" style="background-image:url(../images/<?= $tranhhoala['productcat_img'] ?>)"></div>
                                    <a href="<?= $tranhhoala['friendly_url'] ?>" class="category_item_rem">
                                        <div class="category_name_rem"><p><?= $tranhhoala['productcat_name'] ?></p></div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="category_6_rem category_product_rem">
                                <div class="category_grid_box_rem">
                                    <div class="category_item_bkg_rem" style="background-image:url(../images/<?= $tranhdongvat['productcat_img'] ?>)"></div>
                                    <a href="<?= $tranhdongvat['friendly_url'] ?>" class="category_item_rem">
                                        <div class="category_name_rem"><p><?= $tranhdongvat['productcat_name'] ?></p></div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="category_3_rem category_product_rem">
                        <div class="category_grid_box_rem">
                            <div class="category_item_bkg_rem" style="background-image:url(../images/<?= $chandung['productcat_img'] ?>)"></div>
                            <a href="<?= $chandung['friendly_url'] ?>" class="category_item_rem">
                                <div class="category_name_rem"><p><?= $chandung['productcat_name'] ?></p></div>
                            </a>
                        </div>
                    </div>
                    <div class="category_4_rem category_product_rem">
                        <div class="category_grid_box_rem">
                            <div class="category_item_bkg_rem" style="background-image:url(../images/<?= $amnhac['productcat_img'] ?>)"></div>
                            <a href="<?= $amnhac['friendly_url'] ?>" class="category_item_rem">
                                <div class="category_name_rem"><p><?= $amnhac['productcat_name'] ?></p></div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>