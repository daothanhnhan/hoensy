<?php
    if (isset($_GET['search']) && $_GET['search'] != '') {
        $rows = $action->getSearchAdmin('product',array('product_name','product_code'), $_GET['search'],$trang,20,$_GET['page']);
    }else{
        $rows = $action->getList('product','','','product_id','desc',$trang,20,'san-pham');
    }
?>	
<div class="boxPageNews">
	<div class="searchBox">
        <form action="">
            <input type="hidden" name="page" value="san-pham">
            <button type="submit" class="btnSearchBox" name="">Tìm kiếm</button>
            <input type="text" class="txtSearchBox" name="search" />                                  
        </form>
    </div>
    <table class="table table-condensed table-hover">
        <thead>
            <tr>
                <th>Tên</th>
                <th>Danh mục</th>
                <th>Giá</th>
                <th>Trạng thái</th>
                <th>Thành viên</th>
                <th>Trả phí</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                foreach ($rows['data'] as $key => $row) {
                ?>
                    <tr>
                        <td><a href="index.php?page=sua-san-pham&id=<?= $row['product_id']; ?>" title=""><?= $row['product_name']; ?></a></td>
                        <td>
                            <?php 
                                $action1 = new action_page('VN');
                                echo $action1->getDetail('productcat','productcat_id',$row['productcat_id'])['productcat_name'];
                            ?>
                        </td>
                        <td><?= number_format($row['product_price'],'0','','.')?> đ</td>
                        <td><?= $row['state'] == 1 ? 'Hiển thị' : 'Không'?></td>
                        <td><input type="checkbox" onclick="thanh_vien(<?= $row['product_id'] ?>)" <?= $row['thanh_vien']==1 ? 'checked' : '' ?> ></td>
                        <td><input type="checkbox" onclick="tra_phi(<?= $row['product_id'] ?>)" <?= $row['tra_phi']==1 ? 'checked' : '' ?> ></td>
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
<?php  ?>

<script>
    function thanh_vien (product_id) {
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            // document.getElementById("demo").innerHTML = this.responseText;
            }
          xhttp.open("GET", "/functions/ajax/thanh_vien.php?product_id="+product_id, true);
          xhttp.send();
    }

    function tra_phi (product_id) {
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            // document.getElementById("demo").innerHTML = this.responseText;
            }
          xhttp.open("GET", "/functions/ajax/tra_phi.php?product_id="+product_id, true);
          xhttp.send();
    }
</script>