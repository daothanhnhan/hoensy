<?php
    if (isset($_GET['search']) && $_GET['search'] != '') {
        $rows = $action->getSearchAdmin('user1',array('nick','first_name','last_name','email'), $_GET['search'],$trang,10,$_GET['page']);
    }else{
       
        $rows = $acc->getList("user","","","","asc",$trang, 10, "tai-khoan-user");
    }
    


?>	
    <div class="boxPageNews">
    	<div class="searchBox">
            <form action="">
                <input type="hidden" name="page" value="tai-khoan">
            	<button type="submit" class="btnSearchBox" name="">Tìm kiếm</button>
                <input type="text" class="txtSearchBox" name="search" />                	                
            </form>
        </div>
        
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Tên tài khoản</th>
                    <th>Email</th>
                    <th>Ngày khởi tạo</th>
                    <!-- <th>Trạng thái</th> -->
                    <th>Kích hoạt</th>
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    foreach ($rows['data'] as $row) {
                        // var_dump($row['kich_hoat']);
                    ?>
                        <tr>
                            <td><a href="javascrip:void(0)" title=""><?= $row['user_name']; ?></a></td>
                            <td><?= $row['user_email']?></td>
                            <td>
                               <!--  <?php 
                                    $acc = new action_account("VN");
                                    $rowRole = $acc->getDetail("admin_role","admin_role_id",$row['admin_role']);
                                    echo $rowRole['admin_role_name'];
                                ?> -->
                                <?= date('d-m-Y H:m:s', strtotime($row['time'])); ?>
                            </td>
                            <!-- <td><?= $row['admin_state'] == 1 ? 'Hoạt động' : 'Khóa'?></td> -->
                            <!-- <td><input type="checkbox" onclick="kich_hoat(<?= $row['user_id'] ?>)" <?= $row['kich_hoat']==1 ? 'checked' : '' ?> ></td> -->
                            <td><a href="index.php?page=user-kich-hoat&user_id=<?= $row['user_id'] ?>" title="">Kích hoạt</a></td>

                            <td style="float: none;"><a href="index.php?page=xoa-user&id=<?= $row['user_id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a>  <a href="index.php?page=sua-thuong-hieu&id=<?= $row['id'] ?>" style="float: none;"></a></td>
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
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>

<script>
    function kich_hoat (user_id) {
        // alert(user_id);
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            // document.getElementById("demo").innerHTML = this.responseText;
            }
          xhttp.open("GET", "/functions/ajax/kich_hoat_user.php?user_id="+user_id, true);
          xhttp.send();
    }
</script>