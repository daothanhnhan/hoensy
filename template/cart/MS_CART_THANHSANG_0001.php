<!--chọn cỡ tranh -->
<script>
    $(document).ready(function(){
        $('#size_id').change(function(){
            var size_id = $("#size_id").val();
            var product_price = <?php  echo $row1['product_price']; ?>;
            if(size_id == 1){
                // alert(product_price);
                $.ajax({
                    url:"/functions/ajax/ajax_price1.php",
                    type:"post",
                    data:"product_price="+product_price,
                    async:true,
                    success: function(result){
                        $("#price-size").html(result);
                    },
                    error:function(error){
                        alert('Lỗi');
                    }
                });
            }else{
                $.ajax({
                    url:"/functions/ajax/ajax_price.php",
                    type:"post",
                    data:"size_id="+size_id,
                    async:true,
                    success: function(result){
                        $("#price-size").html(result);
                        $('#product_price').val(result);
                        $('#product_price').val(result.length);
                        $('#product_price').val(result.substring(0, (result.length - 4)));
                        var str_price = result.substring(0, (result.length - 4));
                        $('#product_price').val(str_price.replace(",",""));
                    },
                    error:function(error){
                        alert('Lỗi');
                    }
                });
            }
        return false;
        });
    });


</script>
<div class="price-outer-container">
    <?php include DIR_PRODUCT."MS_PRODUCT_REM_0008.php";?>
</div>
<div class="gb-chi-tiet-add-to-cart">
    <form class="cart" method="post" enctype="multipart/form-data">
        <!-- <div class="gb-selectsize">
            <div class="form-group">
                <label>Select size <span>IN | CM</span></label>
                <select class="form-control content-size" name="size" id="size_id">
                    <option value="1">Chọn kích thước tranh</option>
                    <option value="<?= $row1['picture_size'] ?>"><?= $row1['picture_size'] ?> cm</option>
                    <option value="<?= $row1['picture_size_1'] ?>"><?= $row1['picture_size_1'] ?> cm</option>
                    <option value="<?= $row1['picture_size_2'] ?>"><?= $row1['picture_size_2'] ?> cm</option>
                    <option value="<?= $row1['picture_size_3'] ?>"><?= $row1['picture_size_3'] ?> cm</option>
                </select>
            </div>
        </div> -->
        <div class="quantity">
            <div class="form-group">
                <label>Số lượng:</label>
                <input type="number" class="form-control qty number_cart" id="pwd" min="0" value="1">
                <input type="hidden" name="id" id="product_id" value="<?php echo $rowLang['product_id'];?>">
                <input type="hidden" name="name" id="product_name" value="<?= $rowLang['lang_product_name'];?>">
                <input type="hidden" name="price" id="product_price" value="<?php echo $row1['product_price']-($row1['product_price']*($row1['product_price_sale']/100));?>">
                <input type="hidden" name="pro_img" id="product_image" value="<?php echo $row1['product_img'];?>">
            </div>
        </div>
        <button type="button" name="add-to-cart" class="single_add_to_cart_button button alt btn_addCart">Add to cart</button>
        <div class="clearfix"></div>
    </form>
</div>