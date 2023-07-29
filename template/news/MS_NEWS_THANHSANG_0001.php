<?php 
    $home_news = $action->getList('news', '', '', 'news_id', 'desc', '', '8', '');
?>
<style>
.text-3-line {
   overflow: hidden;
   text-overflow: ellipsis;
   display: -webkit-box;
   -webkit-line-clamp: 3; /* number of lines to show */
   -webkit-box-orient: vertical;
}
</style>
<div class="gb-category-product_naustore" style="padding-bottom: 20px;">
    <div class="container">
        <!-- <div class="titleCategoryProduct_naustore">
            <h4>Sản phẩm bán chạy</h4>
            <a href="chi-tiet-san-pham" class="btn-xemchitiet_naustore">Xem tất cả</a>
        </div> -->

    <div class="row" style="margin-bottom: 10px;">
         <h2 class="h2_home">TIN TỨC <span class="h2_home_phu">SỰ KIỆN</span></h2>
         <p class="p_home">Với 15 năm kinh nghiệm trong ngành, THANH SANG AUTO tự tin sẽ mang đến cho khách hàng những sản phẩm, dịch vụ chất lượng nhất.</p>
         <hr class="hr_home">
    </div>

    <!-- slide chứng nhận -->
    <!-- https://www.jqueryscript.net/slider/Fully-Responsive-Flexible-jQuery-Carousel-Plugin-slick.html -->
    <section class="regular slider gb-chung-nhan owl-carousel owl-theme">
        <?php foreach ($home_news as $item) { ?>
        <div class="text-chungnhan">
            <a href="/<?= $item['friendly_url'] ?>" title=""><img src="/images/<?= $item['news_img'] ?>" alt="<?= $item['news_name'] ?>"></a>
            <p class="content_news">
                <span class="date_news"><?= date('d', strtotime($item['news_created_date'])) ?> tháng <?= date('m', strtotime($item['news_created_date'])) ?>, <?= date('Y', strtotime($item['news_created_date'])) ?></span>
                <br>
                <span class="title_news"><a href="/<?= $item['friendly_url'] ?>" style="color:#000;" title=""><?= $item['news_name'] ?></a></span>
                <img style="width: 100%; padding: auto 10px" src="../images/ts_line_news.png"></img>
                <div class="text-3-line">
                    <?= $item['news_des'] ?>
                </div>
                
            </p>
        </div>
        <?php } ?>

        

        <!-- <div>
          <img src="http://placehold.it/350x300?text=5">
        </div>
        <div>
          <img src="http://placehold.it/350x300?text=6">
        </div> -->
    </section>

</div>
</div>

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        $('.gb-chung-nhan').owlCarousel({
            loop:true,
            margin:10,
            navSpeed:500,
            nav:true,
            dots: false,
            autoplay: true,
            rewind: true,
            navText:[],
            items:1,
            responsive:{
                0:{
                    nav:false,
                    items:1
                },
                375:{
                    nav:false,
                    items:2
                },
                767:{
                    nav:true,
                    items:4
                }
            }
        });
    });
</script>


