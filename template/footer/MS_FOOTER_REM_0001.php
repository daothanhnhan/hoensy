<?php 
    $footer_khoa_hoc = $action->getList('product', 'product_hot', '1', 'product_id', 'desc', '', '5', '');
?>
<footer class="site-footer footer-default">
    <div class="footer-main-content_naustore">
        <div class="container">
            
            <div class="row">
                <div class="col-md-3">
                    <div class="footer-main-content_naustore-element">
                        <aside class="widget-footer">
                            <h3 class="widget-title-footer-naustore uni-uppercase"><?= $rowConfig['web_name'] ?></h3>
                            <div class="widget-content">
                                <div class="footer-about-naustore">
                                    <p><span style="color: #fff;"><?= $rowConfig['web_email'] ?></span></p>
                                    <p><span style="color: #fff; font-weight: 600;">Địa chỉ:</span><span style="color: #fff;"> <?= $rowConfig['content_home1'] ?></span></p>
                                    <p><span style="color: #fff; font-weight: 600;">Tel:</span><span style="color: #fff;"> <?= $rowConfig['content_home3'] ?></span></p>
                                    <p><span style="color: #fff; font-weight: 600;">Email:</span><span style="color: #fff;"> <?= $rowConfig['content_home2'] ?></span></p>
                                    <p><span style="color: #fff; font-weight: 600;">Website:</span><span style="color: #fff;"> <?= $_SERVER['SERVER_NAME'] ?></span></p>
                                    
                                    <?php include DIR_SOCIAL."MS_SOCIAL_REM_0002.php";?>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="footer-main-content_naustore-element">
                        <aside class="widget-footer">
                            <h3 class="widget-title-footer-naustore uni-uppercase">KHÓA HỌC NỔI BẬT</h3>
                            <div class="widget-content">
                                <div class="footer-recentpost-naustore">
                                    <div class="footer-recentpost-naustore-item">                
                                        <div class="footer-recentpost-naustore-item-text">
                                            <?php foreach ($footer_khoa_hoc as $item) { ?>
                                            <h5><a href="/<?= $item['friendly_url'] ?>"><?= $item['product_name'] ?></a></h5>
                                            <?php } ?>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="footer-main-content_naustore-element">
                        <aside class="widget-footer">
                            <h3 class="widget-title-footer-naustore uni-uppercase">YOUTUBE</h3>
                            <!-- <iframe width="100%" height="250" src="https://www.youtube.com/embed/Fhwb0gUobM8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe> -->
                            <div class="widget-content">
                                <?php //include DIR_EMAIL."MS_EMAIL_REM_0001.php";?>
                            </div>
                            <a href="https://www.youtube.com/channel/UCReTNSstPQfHHFB2B45iNxg" target="_blank"><img src="/images/80317ac54bd3988dc1c2.jpg" alt="youtube" style="width: 100%;"></a>
                            <script src="https://apis.google.com/js/platform.js"></script>
                            <div class="g-ytsubscribe" data-channelid="UCReTNSstPQfHHFB2B45iNxg" data-count="default">
                                
                            </div>
                        </aside>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="footer-main-content_naustore-element">
                        <aside class="widget-footer">
                            <h3 class="widget-title-footer-naustore uni-uppercase">Fanpage</h3>
                            <div class="widget-content">
                                <div class="footer-fanpage-naustore">
                                    <iframe src="https://www.facebook.com/plugins/page.php?href=https://www.facebook.com/hoensy/&tabs=timeline&width=340&height=300px&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=176177179839531" width="340" height="250" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright-area_naustore">
        <div class="container">
            <div class="copyright-content_naustore">
                <p class="copyright-text_naustore">© Copyright 2015. All rights reserved. Design by CAFE LINK VIỆT NAM</p>
            </div>
        </div>
    </div>
</footer>

<style>
#nut-zalo {
    position: fixed;
    z-index: 999999;
    right: 10px;
    bottom: 100px;
}
@media screen and (max-width: 768px) {
    #nut-zalo {
        bottom: 18px;
        right: 100px;
    }
}
</style>
<a href="http://zalo.me/<?= preg_replace("/[^0-9]/", "",$rowConfig['content_home3']) ?>" title="" id="nut-zalo"><img src="/images/zalo-icon.png" alt="" width="60"></a>

<style>
#nut-messager {
    position: fixed;
    z-index: 999999;
    right: 10px;
    bottom: 18px;
}
</style>
<a href="https://m.me/hoensy" title="" id="nut-messager">
    <img src="/images/fb-icon.png" alt="messager" width="60">
</a>