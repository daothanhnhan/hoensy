<?php
    $rows = $acc->getList("bai","chuong_id",$_GET['chuong_id'],"id","asc",$trang, 20, "bai");//var_dump($rows);
    $chuong = $action->getDetail('chuong', 'id', $_GET['chuong_id']);
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-bai&chuong_id=<?= $_GET['chuong_id'] ?>">Thêm bài</a></h1>
        <a href="index.php?page=chuong&product_id=<?= $chuong['product_id'] ?>" title="">Quay lại</a>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên</th>
                    <th>Ngày</th>
                    <th>Hoạt động</th>
                    <th>Link bài</th>
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
                            <td><?= $row['name']?></td>
                            <td><?= $row['ngay_phat_hanh']?></td>
                            <!-- <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td> -->
                            <td style="float: none;"><a href="index.php?page=xoa-bai&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-bai&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>

                            <td>
                                <a href="index.php?page=link-bai&bai_id=<?= $row['id'] ?>" title="">Link bài</a>
                            </td>
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