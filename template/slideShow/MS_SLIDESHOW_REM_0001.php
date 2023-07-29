<style>
@media screen and (max-width: 768px) {
    .gb-slideshow_naustore .owl-nav [class*=owl-] {
        width: 20px;
        height: 20px;
        /*color: #f58220;*/
        /*background: none;*/
        /*border: 0;*/
    }
}
</style>
<div class="gb-slideshow_naustore">
    <div class="gb-slideshow_naustore-slide owl-carousel owl-theme">
        <?php
            $slide_dem = 0;
            $array = json_decode($rowConfig['slideshow_home'], true);
            foreach ($array as $key => $val) {
                $img = json_decode($val, true);
                if ($img != '') {
                    $slide_dem++;
        ?>
        <div class="item">
            <img src="images/<?= $img['image']?>" alt="" class="img-responsive">
        </div>
        <?php } } ?>
        <?php 
        if (!empty($rowConfig['content_home4'])) { 
            $slide_dem++;
        ?>
        <div class="item slide-aspect-box">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/<?= $rowConfig['content_home4'] ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen class="slide-aspect-iframe"></iframe>
        </div>
    <?php } ?>
    </div>
</div>

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        $('.gb-slideshow_naustore-slide').owlCarousel({
            loop:true,
            margin:0,
            navSpeed:500,
            nav:true,
            dots: false,
            <?php if ($slide_dem == 1) { ?>
            autoplay: false,
            <?php } else {  ?>
            autoplay: true,
            <?php } ?>
            rewind: true,
            navText:[],
            items:1
        });
    });
</script>