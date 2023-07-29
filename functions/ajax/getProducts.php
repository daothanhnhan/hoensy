<?php
if(isset($_POST['price_range'])){

    include_once('../database.php');

    $priceRange = $_POST['price_range'];
    $str_price = explode(" ", $priceRange);
    $from_price = $str_price[0];
    $to_price = $str_price[3];

    if(!empty($priceRange)){
        $whereSQL = "WHERE product_price BETWEEN '".$from_price."' AND '".$to_price."'";
        $orderSQL = " ORDER BY product_price ASC ";
    }else{
        $orderSQL = " ORDER BY product_id DESC ";
    }

    $sql = "SELECT * FROM product $whereSQL $orderSQL";
    $result = mysqli_query($conn_vn, $sql);
    if(mysqli_num_rows($result) != 0){
    while ($row1 = mysqli_fetch_assoc($result)) {
?>
    <div class="col-sm-4">
        <div class="gb-product_naustore-item">
            <div class="gb-product_naustore-item-img">
                <a href="/<?= $row1['friendly_url'] ?>">
                    <img src="/images/<?= $row1['product_img'] ?>" alt="" class="img-responsive">
                </a>
                <!--ADD TO CART-->
                <button type="button" name="add-to-cart" class="btn btn-addtocart_naustore add_cart" onclick="load_url('<?php echo $row1['product_id'];?>', '<?php echo $row1['product_name'];?>', '<?php echo $row1['product_price']-($row1['product_price']*($row1['product_price_sale']/100));?>')">
                    Add to cart
                </button>
            </div>
            <div class="gb-product_naustore-item-text">
                <h2><a href="/<?= $row1['friendly_url'] ?>"><?= $row1['product_name'] ?></a></h2>
                <!--PRICE-->
               <p class="prices_naustore"><?= number_format($row1['product_price']) ?> VNĐ</p>
            </div>
        </div>
    </div>
<?php
    }
}else{
    echo "<div class='alert alert-info text-center'>
          <strong>Cảm ơn bạn đã ghé thăm website!</strong> Sản phẩm bạn vừa tìm hiện đang được cập nhật!
        </div>";
}
}
?>
<script type="text/javascript">
    function load_url (id, name, price) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
           if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không')) {
              window.location = '/cart';
          }else{
              location.reload();
          }  
          }
        };
        xhttp.open("POST", "/functions/ajax-add-cart.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("product_id="+id+"&product_name="+name+"&product_price="+price+"&product_quantity=1&action=add");
        xhttp.send();        
    }
</script>