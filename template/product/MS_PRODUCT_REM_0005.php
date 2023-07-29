<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<div class="gb-home-product gb-home-product-relate" style="margin-bottom: 10px;">
    <div class="container">
        <div class="titleCategoryProduct_naustore">SẢN PHẨM LIÊN QUAN</div>
        <div class="gb-home-product-relate-slide owl-carousel owl-theme">
            <?php
                $product = new action_product();
                $list_product_relative = $product->getListProductRelate_byIdCat_hasLimit($productcat_id, 8);
                foreach ($list_product_relative as $item) {
                    $rowLang1 = $product->getProductLangDetail_byId($item['product_id'],$lang);
                    $row1 = $product->getProductDetail_byId($item['product_id'],$lang); 
            ?>
                <div class="item">
                    <div class="gb-product_naustore-item">
                        <div class="gb-product_naustore-item-img">
                            <a href="/<?= $rowLang1['friendly_url'] ?>">
                                <img src="/images/<?= $row1['product_img'] ?>" alt="" class="img-responsive">
                            </a>
                            <!--ADD TO CART-->
                            <?php include DIR_CART."MS_CART_REM_0001.php";?>
                        </div>
                        <div class="gb-product_naustore-item-text">
                            <h2><a href="/<?= $rowLang1['friendly_url'] ?>"><?= $rowLang1['lang_product_name'] ?></a></h2>
                            <!--PRICE-->
                            <?php include DIR_PRODUCT."MS_PRODUCT_REM_0002.php";?>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        var owl = $('.gb-home-product-relate-slide');
        owl.owlCarousel({
            loop:true,
            margin:30,
            navSpeed:500,
            nav:true,
            dots:false,
            autoplay: true,
            rewind: true,
            navText:[],
            items:4,
            responsive:{
                0:{
                    // nav:false
                    items:1
                },
                767:{
                    // nav:true
                    items:4
                }
            }
        });
    });
</script>