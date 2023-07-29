<?php 
    $list_dich_vu = $action->getList('service', '', '', 'service_id', 'desc', '', '', '');
?>
<div class="gb-category-product_naustore" style="background-color: #EFEFEF;">
    <div class="container">
        <!-- <div class="titleCategoryProduct_naustore">
            <h4>Sản phẩm bán chạy</h4>
            <a href="chi-tiet-san-pham" class="btn-xemchitiet_naustore">Xem tất cả</a>
        </div> -->

    <div class="row">
         <h2 class="h2_home">DỊCH VỤ <span class="h2_home_phu">KHUYẾN MÃI</span></h2>
         <p class="p_home">Đây chính là Dịch vụ đang áp dụng khuyễn mãi của THANH SANG AUTO. Các bạn chỉ cần đặt dịch vụ, chúng tôi sẽ đến tận nơi phục vụ các bạn.</p>
         <hr class="hr_home">
    </div>


    <!-- slide chứng nhận -->
    <!-- https://www.jqueryscript.net/slider/Fully-Responsive-Flexible-jQuery-Carousel-Plugin-slick.html -->
    <section class="regular slider gb-chung-nhan owl-carousel owl-theme">
        
        <?php foreach ($list_dich_vu as $item) { ?>
        <a href="/<?= $item['friendly_url'] ?>">
        <div class="box_service hover01 column">
            <figure><img class="img_service" src="/images/<?= $item['service_img'] ?>" alt="<?= $item['service_name'] ?>" /></figure>
            <p class="title_service"><?= $item['service_name'] ?></p>
        </div>
        </a>
        <?php } ?>
        

    </section>
    <!-- end slide chứng nhận -->

<!-- <div class="hover01 column">
  <div>
    <figure><img src="../images/ts-rua-xe.jpg" /></figure>
    <span>Hover</span>
  </div>
  <div>
    <figure><img src="../images/ts-rua-xe.jpg" /></figure>
    <span>Hover</span>
  </div>
  <div>
    <figure><img src="../images/ts-rua-xe.jpg" /></figure>
    <span>Hover</span>
  </div>
</div> -->

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
                767:{
                    nav:false,
                    items:2
                },
                1024:{
                    nav:true,
                    items:4
                }
            }
        });
    });
</script>
<!-- 375 -->

