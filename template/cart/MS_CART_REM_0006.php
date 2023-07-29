<div class="uni-cart">
    <div id="wrapper-container" class="site-wrapper-container">
        <div id="main-content" class="site-main-content">
            <div class="site-content-area">
                <main id="main" class="site-main">

                    <?php include DIR_BREADCRUMBS."MS_BREADCRUMS_REM_0001.php";?>

                    <div class="uni-cart-body">
                        <div id="post" class="container">
                            <div class="entry-content">
                                <div class="woocommerce">
                                    <div class="table-responsive" id="order_table" style="width: 100%;">  
                                       <table class="table table-bordered" style="margin-bottom: 100px;">  
                                            <tr>  
                                                 <th width="20%">Ảnh sản phẩm</th>  
                                                 <th width="40%">Product Name</th>  
                                                 <th width="10%">Quantity</th>  
                                                 <th width="20%">Price</th>  
                                                 <th width="15%">Total</th>  
                                                 <th width="5%">Action</th>  
                                            </tr>  
                                            <?php 
                                            if(!empty($_SESSION["shopping_cart"]))  
                                            {  
                                                 $total = 0;  
                                                 foreach($_SESSION["shopping_cart"] as $keys => $values)  
                                                 {                  
                                                 $product = new action_product();       
                                                 $detail_product = $product->getProductDetail_byId($values['product_id'], $lang);         
                                            ?>  
                                                <tr>  
                                                    <td><img style="width: 50%;" src="/images/<?php echo $values['product_img']; ?>" alt=""></td>
                                                    <td>
                                                        <a href="/<?= $detail_product['friendly_url'] ?>" title="">
                                                            <?php echo $values["product_name"]; ?>
                                                        </a>
                                                    </td>  
                                                     <td><input type="text" name="quantity[]" id="quantity<?php echo $values["product_id"]; ?>" value="<?php echo $values["product_quantity"]; ?>" data-product_id="<?php echo $values["product_id"]; ?>" class="form-control quantity" /></td>  
                                                     <td align="right"><?php echo number_format($values["product_price"]); ?> VNĐ</td>  
                                                     <td align="right"><?php echo number_format($values["product_quantity"] * $values["product_price"], 2); ?> VNĐ</td>  
                                                     <td><button name="delete" class="btn btn-danger btn-xs delete" id="<?php echo $values["product_id"]; ?>" style="margin: 0px;">Remove</button></td>  
                                                </tr>  
                                            <?php  
                                                      $total = $total + ($values["product_quantity"] * $values["product_price"]);

                                                 } 
                                                 $_SESSION['total'] = $total; 
                                            ?>  
                                            <tr>  
                                                 <td colspan="4" align="right">Total</td>  
                                                 <td align="right"><?php echo number_format($total, 2); ?> VNĐ</td>  
                                                 <td></td>  
                                            </tr>  
                                            <tr>  
                                                 <td colspan="6" align="center">  
                                                      <form method="post" action="/thanh-toan">  
                                                           <input type="submit" name="place_order" class="btn btn-warning" value="Thanh toán" style="width: 15%;" />  
                                                      </form>  
                                                 </td>  
                                            </tr>  
                                            <?php  
                                            }  
                                            ?>  
                                       </table>  
                                  </div>   
                                </div>
                            </div>
                        </div>
                    </div>
                </main>

            </div>
        </div>
    </div>
</div>
<script>  
 $(document).ready(function(data){  
      $('.add_to_cart').click(function(){  
           var product_id = $(this).attr("id");  
           var product_name = $('#name'+product_id).val();  
           var product_price = $('#price'+product_id).val();  
           var product_quantity = $('#quantity'+product_id).val();  
           var action = "add";  
           if(product_quantity > 0)  
           {  
                $.ajax({  
                     url:"../functions/action_cart_tmp.php",  
                     method:"POST",  
                     dataType:"json",  
                     data:{  
                          product_id:product_id,   
                          product_name:product_name,   
                          product_price:product_price,   
                          product_quantity:product_quantity,   
                          action:action  
                     },  
                     success:function(data)  
                     {  
                          $('#order_table').html(data.order_table);  
                          $('.badge').text(data.cart_item);  
                          alert("Product has been Added into Cart");  
                     }  
                });  
           }  
           else  
           {  
                alert("Please Enter Number of Quantity")  
           }  
      });  
      $(document).on('click', '.delete', function(){  
           var product_id = $(this).attr("id");  
           var action = "remove";  
           if(confirm("Are you sure you want to remove this product?"))  
           {  
                $.ajax({  
                     url:"../functions/action_cart_tmp.php",  
                     method:"POST",  
                     dataType:"json",  
                     data:{product_id:product_id, action:action},  
                     success:function(data){  
                          $('#order_table').html(data.order_table);  
                          $('.badge').text(data.cart_item);
                          // alert(data.order_table);
                          // alert('success');
                     },
                     error:function(){
                        alert('loi.');
                     }  
                });  


           }  
           else  
           {  
                return false;
           }  
      });  
      $(document).on('keyup', '.quantity', function(){  
           var product_id = $(this).data("product_id");  
           var quantity = $(this).val();  
           var action = "quantity_change";  
           if(quantity != '')  
           {  
                $.ajax({  
                     url :"../functions/action_cart_tmp.php",  
                     method:"POST",  
                     dataType:"json",  
                     data:{product_id:product_id, quantity:quantity, action:action},  
                     success:function(data){  
                          $('#order_table').html(data.order_table);  
                     }  
                });  


           }  
      });  
 });  
 </script>