<?php 
	$home_procat = $action->getList('productcat', 'productcat_parent', '0', 'productcat_id', 'asc', '', '', '');

	$home_news = $action->getList('news', '', '', 'news_id', 'desc', '', '2', '');

	$home_newscat = $action->getDetail('newscat', 'newscat_id', 69);
?>
<style>

</style>
<div class="container">
	<!-- <h2 class="h2_home">Các khóa học</h2> -->
	<?php 
	foreach ($home_procat as $item) { 
		$home_pro = $action_product->getProductList_byMultiLevel_orderProductId_hot($item['productcat_id'],'desc','','2','');
		$home_pro_count = count($home_pro);
	?>
	<div class="home-khoa-hoc gb-category-product_naustore">
		<h2 class="h2_home"><a href="/<?= $item['friendly_url'] ?>"><span class="xanh">Khóa học</span> <span class="h2_home_phu"><?= $item['productcat_name'] ?></span></a></h2>
		<p class="p_home"><?= $item['productcat_des'] ?></p>
             <hr class="hr_home">
		<div class="row">
			<?php 
			foreach ($home_pro as $pro) { 
				$rowLang1 = $action_product->getProductLangDetail_byId($pro['product_id'],$lang);
                $row1 = $action_product->getProductDetail_byId($pro['product_id'],$lang);
                
                if ($pro['tra_phi'] == 1) {
                	$loai_khoa = 'Trả phí';
                } else {
                	if ($pro['thanh_vien'] == 1) {
                		$loai_khoa = 'Thành viên';
                	} else {
                		$loai_khoa = 'Công khai';
                	}
                }
			?>
			<div class="col-sm-4">
				<div class="gb-product_naustore-item">
                        <div class="gb-product_naustore-item-img">
                            <a href="/<?= $row1['friendly_url'] ?>">
                            	<span class="loai-khoa"><?= $loai_khoa ?></span>
                                <img src="/images/<?= $pro['product_img'] ?>" alt="" class="img-responsive">
                            </a>
                            
                        </div>
                        <div class="gb-product_naustore-item-text">
                            <h2 class="title_boxsp"><a href="/<?= $row1['friendly_url'] ?>" style="position: relative;"><span class="can-giua"><?= $rowLang1['lang_product_name'] ?></span></a></h2>
                            <p class="text-center">Tiến độ: <?= $pro['product_code'] ?> </p>
                            <?php include DIR_CART."MS_CART_REM_0001.php";?>
                        </div>
                    </div>
			</div>
			<?php } ?>
			<?php if ($home_pro_count == 1) { ?>
			<div class="col-sm-4">
				
			</div>
			<?php } ?>
			<div class="col-sm-4">
				<a href="<?= $item['productcat_sub_info1'] ?>" title="">
					<img src="/images/<?= $item['productcat_img'] ?>" alt="khóa học">
				</a>
			</div>
		</div>
	</div>
	<?php } ?>

	<h2 class="h2_home"><a href="/blog-giao-duc"><span class="xanh">Blog</span> <span class="h2_home_phu">giáo dục</span></a></h2>

	<div class="home-news">
		<div class="row">
			<?php foreach ($home_news as $item) { ?>
			<div class="col-sm-4">
				<div class="text-chungnhan">
		            <a href="/<?= $item['friendly_url'] ?>" title=""><img src="/images/<?= $item['news_img'] ?>" alt="<?= $item['news_name'] ?>"></a>
		            <p class="content_news">
		                <span class="date_news"><?= date('d', strtotime($item['news_created_date'])) ?> tháng <?= date('m', strtotime($item['news_created_date'])) ?>, <?= date('Y', strtotime($item['news_created_date'])) ?></span>
		                <br>
		                <span class="title_news"><a href="/<?= $item['friendly_url'] ?>" style="color:#000;" title=""><?= $item['news_name'] ?></a></span>
		                <img style="width: 100%; padding: auto 10px" src="../images/ts_line_news.png"></img>
		                <div class="text-3-line">
		                    <?= $item['news_des'] ?>
		                </div>
		                
		            </p>
		        </div>
			</div>
			<?php } ?>
			
			<div class="col-sm-4">
				<a href="/<?= $home_newscat['newscat_sub_info1'] ?>" title="">
					<img src="/images/<?= $home_newscat['newscat_img'] ?>" alt="khóa học">
				</a>
			</div>
		</div>
	</div>

</div>