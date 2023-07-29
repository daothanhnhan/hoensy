<?php
    $product = new action_product();
    $list_product_cat_1 = $product->getProductCat_byProductCatIdParent(231, '');
    $list_product_cat_2 = $product->getProductCat_byProductCatIdParent(232, '');
?>
<script type="text/javascript">
    $(document).ready(function(){
        $('.color_1').on('change', function(){
            var category_list = [];
            $('#filters :input:checked').each(function(){
                var category = $(this).val();
                category_list.push(category);
            });
            alert(category_list);
            $.ajax({
                url:"/functions/ajax/ajax_cat.php",
                type:"post",
                data:"category_list="+category_list,
                async:true,
                success: function(result){
                    $("#productContainer").html(result);
                },
                error:function(error){
                    alert('Lỗi');
                }
            });
        });
    });
</script>
<script type="text/javascript">
    $(document).ready(function(){
        $('.themes').on('change', function(){
            var category_list = [];
            $('#filters_themes :input:checked').each(function(){
                var category = $(this).val();
                category_list.push(category);
            });
            $.ajax({
                url:"/functions/ajax/ajax_cat.php",
                type:"post",
                data:"category_list="+category_list,
                async:true,
                success: function(result){
                    $("#productContainer").html(result);
                },
                error:function(error){
                    alert('Lỗi');
                }
            });
        });
    });
</script>
<div class="gb-locchekbox-sidebar-naustore widget-sidebar">
    <aside class="widget">
        <h3 class="widget-title-sidebar-naustore">Lọc theo màu sắc</h3>
        <p id="demo"></p>
        <div class="widget-content"  id="filters">
            <form action="" method="post" accept-charset="utf-8">
                <?php
                    foreach ($list_product_cat_2 as $item) {
                        $arr_product = $product->getListProduct_byIdCat($item['productcat_id']);
                        $num = count($arr_product);
                ?>
                <div class="checkbox">
                    <label style="width: 100%;">
                        <input type="checkbox" name="color" class="color_1" value="<?= $item['productcat_id'] ?>"><?= $item['productcat_name'] ?> <span><?= $num ?></span>
                    </label>
                </div>
                <?php } ?>
            </form>
        </div>
    </aside>
</div>
<div class="gb-locchekbox-sidebar-naustore widget-sidebar">
    <aside class="widget">
        <h3 class="widget-title-sidebar-naustore">Lọc theo chủ đề</h3>
        <div class="widget-content" id="filters_themes">
            <form action="" method="post" accept-charset="utf-8">
                <?php
                    foreach ($list_product_cat_1 as $item) {
                        $arr_product = $product->getListProduct_byIdCat($item['productcat_id']);
                        $num = count($arr_product);
                ?>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="themes[]" class="themes" value="<?= $item['productcat_id'] ?>"><?= $item['productcat_name'] ?> <span><?= $num ?></span>
                    </label>
                </div>
                <?php } ?>
            </form>
        </div>
    </aside>
</div>