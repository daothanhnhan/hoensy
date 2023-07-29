<?php
	$limit = 9;
	function search ($lang, $trang, $limit) {
		if (isset($_POST['q'])) {
			$q = $_POST['q'];
			$q = trim($q);
	        $q = vi_en($q);	        
		} else {
			$q = $_GET['search'];
        	$q = str_replace('-', ' ', $q);
		}

		$start = $trang * $limit;
		global $conn_vn;
		$sql = "SELECT * FROM product_languages INNER JOIN product ON product_languages.product_id = product.product_id WHERE product_languages.lang_product_name like '%$q%' And product_languages.languages_code = '$lang'";
		$result = mysqli_query($conn_vn, $sql);
		$count = mysqli_num_rows($result);

		$sql = "SELECT * FROM product_languages INNER JOIN product ON product_languages.product_id = product.product_id WHERE product_languages.lang_product_name like '%$q%' And product_languages.languages_code = '$lang' LIMIT $start,$limit";
		$result = mysqli_query($conn_vn, $sql);
		$rows = array();
		while ($row = mysqli_fetch_assoc($result)) {
			$rows[] = $row;
		}
		$return = array(
				'data' => $rows,
				'count' => $count,
				'q' => $q
			);
		return $return;
	}
	$rows = search($lang, $trang, $limit);
?>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_THANHSANG_0001.php";?>
<div class="gb-page-sanpham_naustore">
    <div class="container">
        <div class="col-md-9 col-md-push-3">
            <?php //include DIR_SEARCH."MS_SEARCH_REM_0001.php";?>
            <div class="row" id="productContainer">
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                        $action_product1 = new action_product(); 
                        $rowLang1 = $action_product1->getProductLangDetail_byId($row['product_id'],$lang);
                        $row1 = $action_product1->getProductDetail_byId($row['product_id'],$lang); 
                ?>
                    <div class="col-sm-4">
                        <div class="gb-product_naustore-item">
                            <div class="gb-product_naustore-item-img">
                                <a href="/<?= $row1['friendly_url'] ?>">
                                    <img src="/images/hoensy_khoahoc.png" alt="" class="img-responsive">
                                </a>
                                <!--ADD TO CART-->
                                <?php //include DIR_CART."MS_CART_REM_0001.php";?>
                            </div>
                            <div class="gb-product_naustore-item-text">
                                <h2 class="title_boxsp"><a href="/<?= $row1['friendly_url'] ?>"><?= $rowLang1['lang_product_name'] ?></a></h2>
                                <!--PRICE-->
                                <?php //include DIR_PRODUCT."MS_PRODUCT_REM_0002.php";?>
                                <!-- <p class="prices_naustore"> Đánh giá: 
                                    <i class="fa fa-star sxam" aria-hidden="true"> </i>
                                    <i class="fa fa-star svang" aria-hidden="true"> </i>
                                    <i class="fa fa-star svang" aria-hidden="true"> </i>
                                    <i class="fa fa-star svang" aria-hidden="true"> </i>
                                    <i class="fa fa-star svang" aria-hidden="true"> </i>
                                </p> -->
                                <p class="text-center">Tiến độ: 2 bài/tuần</p>
                                <?php include DIR_CART."MS_CART_REM_0001.php";?>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
            <?php 
                $config = array(
                    'current_page'  => $trang+1, // Trang hiện tại
                    'total_record'  => $rows['count'], // Tổng số record
                    'total_page'    => 1, // Tổng số trang
                    'limit'         => $limit,// limit
                    'start'         => 0, // start
                    'link_full'     => '',// Link full có dạng như sau: domain/com/page/{page}
                    'link_first'    => '',// Link trang đầu tiên
                    'range'         => 9, // Số button trang bạn muốn hiển thị 
                    'min'           => 0, // Tham số min
                    'max'           => 0,  // tham số max, min và max là 2 tham số private
                    'search'        => str_replace(' ', '-', $rows['q'])

                );

                $pagination = new Pagination;
                $pagination->init($config);
                echo $pagination->htmlPaging1();
            ?>
        </div>
        <div class="col-md-3 col-md-pull-9">
            <?php //include DIR_SIDEBAR."MS_SIDEBAR_REM_0001.php";?>
            <?php //include DIR_SIDEBAR."MS_SIDEBAR_REM_0006.php";?>
            <?php //include DIR_SIDEBAR."MS_SIDEBAR_REM_0008.php";?>
            <?php //include DIR_SIDEBAR."MS_SIDEBAR_REM_0005.php";?>
            <?php include DIR_SIDEBAR."MS_SIDEBAR_REM_0003_1.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_REM_0003.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_KHOAHOC_0001.php";?>
        </div>
    </div>
</div>