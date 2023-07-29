<?php
    $price = new action_product();
    $arr_price_max = $price->getMaxPrice();
    $arr_price_min = $price->getMinPrice();
    $price_max = $arr_price_max["MAX(product_price)"];
    $price_min = $arr_price_min["MIN(product_price)"];
?>
<script>
function filterProducts() {
    var price_range = $('#amount').val();
    $.ajax({
        type: 'POST',
        url: '/functions/ajax/getProducts.php',
        data:'price_range='+price_range,
        async:true,
        success: function (data) {
            $('#productContainer').html(data);
        },
        error:function(error){
            alert('Lỗi');
        }
    });
}
</script>
<link rel="stylesheet" href="/plugin/jquery-ui/jquery-ui.min.css">
<div class="gb-filterprices-sidebar-naustore widget-sidebar">
    <aside class="widget">
        <h3 class="widget-title-sidebar-naustore">Lọc theo giá</h3>
        <div class="widget-content">
            <div class="uni-filter-price">
                <div id="slider-range"></div>
                <div class="label-filter-price"><input type="text" id="amount" value="100000,5000000" readonly=""></div>
                <input type="button" class="btn-filter-prince" value="SEARCH" onclick="filterProducts()">

                <div class="clearfix"></div>
            </div>
        </div>
    </aside>
</div>
<script src="/plugin/jquery-ui/jquery-ui.min.js"></script>

<script>
    $(document).ready(function () {
        $( function() {
            $( "#slider-range" ).slider({
                range: true,
                min: <?= $price_min ?>,
                max: <?= $price_max ?>,
                step:500,
                values: [ <?= $price_min + 110000 ?>, <?= $price_max - 110000 ?> ],
                slide: function( event, ui ) {
                    $( "#amount" ).val( ui.values[ 0 ] + " VNĐ - "  + ui.values[ 1 ] + " VNĐ " );
                }
            });
            $( "#amount" ).val( $( "#slider-range" ).slider( "values", 0 ) + " VNĐ" +
                " - " + $( "#slider-range" ).slider( "values", 1 ) + " VNĐ");
        } );
    });
</script>