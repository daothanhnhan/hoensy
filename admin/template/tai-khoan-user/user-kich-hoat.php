<?php
    $rows = $acc->getList("product","tra_phi","1","product_id","asc",$trang, 20000000, "user-kich-hoat");//var_dump($rows);
    $user = $acc->getDetail('user', 'user_id', $_GET['user_id']);
    // var_dump($user['khoa_hoc']);
    $arr_khoa_hoc = json_decode($user['khoa_hoc'], true);
?>	
    <div class="boxPageNews">
        <!-- <h1><a href="index.php?page=them-thuong-hieu">Thêm</a></h1> -->
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên khóa</th>
                    <th>Kích hoạt</th>
                    <!-- <th>Hoạt động</th> -->
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $row['product_name']?></td>
                            <td><input type="checkbox" name="" onclick="kich_hoat(<?= $_GET['user_id'] ?>, <?= $row['product_id'] ?>)" <?= in_array($row['product_id'], $arr_khoa_hoc) ? 'checked' : '' ?> ></td>
                            <!-- <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td>
                            <td style="float: none;"><a href="index.php?page=xoa-thuong-hieu&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-thuong-hieu&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td> -->
                        </tr>
                    <?php
                    }
                ?>
            </tbody>
        </table>
    	
        <div class="paging">             
        	<?= $rows['paging'] ?>
		</div>
    </div>
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Phát Triển Thương Hiệu Cafe Link Việt Nam</p>             

<script>
    function kich_hoat (user_id, product_id) {
        const xhttp = new XMLHttpRequest();
  xhttp.onload = function() {
    // document.getElementById("demo").innerHTML = this.responseText;
        // alert(this.responseText);
    location.reload();
    }
  xhttp.open("GET", "/functions/ajax/kich_hoat_user_khoa.php?user_id="+user_id+"&product_id="+product_id, true);
  xhttp.send();
    }
</script>