<?php
    $rows = $acc->getList("menu_sp_hot","parent","0","sort","asc",$trang, 200000000, "menu-sp-hot");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-menu-sp-hot">Thêm menu</a></h1>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên</th>
                    <!-- <th>Ảnh</th> -->
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                        $procat = $action->getDetail('productcat', 'productcat_id', $row['productcat_id']);
                        $rows_1 = $acc->getList("menu_sp_hot","parent",$row['id'],"sort","asc",$trang, 200000000, "menu-sp-hot");//var_dump($rows_1);
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $procat['productcat_name']?></td>
                            <!-- <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td> -->
                            <td style="float: none;"><a href="index.php?page=xoa-menu-sp-hot&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-menu-sp-hot&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
                        </tr>
                        <?php 
                        foreach ($rows_1['data'] as $row_1) { 
                            $procat = $action->getDetail('productcat', 'productcat_id', $row_1['productcat_id']);
                        ?>
                            <tr>
                                <td><?= $d ?></td>
                                <td>-- <?= $procat['productcat_name']?></td>
                                
                                <td style="float: none;"><a href="index.php?page=xoa-menu-sp-hot&id=<?= $row_1['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-menu-sp-hot&id=<?= $row_1['id'] ?>" style="float: none;">Sửa</a></td>
                            </tr>
                        <?php } ?>
                    <?php
                    }
                ?>
            </tbody>
        </table>
    	
        <div class="paging">             
        	<?= $rows['paging'] ?>
		</div>
    </div>
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>             