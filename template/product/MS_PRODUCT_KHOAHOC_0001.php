<?php 
    $action_product = new action_product(); 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_product->getProductLangDetail_byUrl($slug,$lang);
    $row1 = $action_product->getProductDetail_byId($rowLang[$nameColIdProduct_productLanguage],$lang);
    $_SESSION['productcat_id_relate'] = $row1[$nameColIdProductCat_product];
    $_SESSION['sidebar'] = 'productDetail';
    $arr_id = $row1['productcat_ar'];
    $arr_id = explode(',', $arr_id);
    $productcat_id = (int)$arr_id[0];
    $product_breadcrumb = $action_product->getProductCatLangDetail_byId($productcat_id, $lang);
    $breadcrumb_url = $product_breadcrumb['friendly_url'];
    $breadcrumb_name = $product_breadcrumb['lang_productcat_name'];
    $use_breadcrumb = true;

    $img_sub = json_decode($row1['product_sub_img']);

    //List Color
    $list_color = $action_product->listcolorProduct($row1['product_id']);
    /////////////////////////////
    $list_chuong = array();
    $xem_dn = 1;
    $xem_kh = 1;
    $xem = 0;

// var_dump($row1['tra_phi']);
    if ($row1['tra_phi'] == 1) {
      if (isset($_SESSION['user_id_gbvn'])) {
        $user_kich_hoat = $action->getDetail('user', 'user_id', $_SESSION['user_id_gbvn'])['kich_hoat'];//var_dump($user_kich_hoat);
        if ($user_kich_hoat == 1) {
          echo 'vao';
          $xem_kh = 1;
        } else {
          $xem_kh = 0;
        }
        
      } else {
        $xem_kh = 0;
      }
    } else {
      $xem_kh = 0;
      if ($row1['thanh_vien'] == 1) {
        if (isset($_SESSION['user_id_gbvn'])) {
          $xem_dn = 1;
        } else {
          $xem_dn = 0;
        }
      }
    }

    if ($xem_dn == 1) {
      $xem = 1;
      if ($xem_kh == 0 && $row1['tra_phi'] == 1) {
        $xem = 0;
      }
    }

    $thong_bao = '';
    if ($xem_dn == 0) {
      $thong_bao = 'Bạn chưa đăng nhập.';
    } else {
      if ($xem_kh == 0 && $xem == 0) {
        $thong_bao = 'Khóa học này cần trả phí để tham gia, vui lòng ib mess page để được kích hoạt.';
        if (in_array($row1['product_id'], $user_khoa_hoc)) {
          $thong_bao = '';
          $xem = 1;
        }
      }
    }

    if ($xem == 1) {
      $list_chuong = $action->getList('chuong', 'product_id', $row1['product_id'], 'id', 'asc', '', '', '');
    }
    // var_dump($xem_kh);
    // var_dump($xem_dn);
    // var_dump($xem);
?>
<style>
.accordion {
  background-color: #eee;
  color: #444;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 16px;
  transition: 0.4s;
  font-weight: bold;
  text-transform: uppercase;
}

.active, .accordion:hover {
  background-color: #ccc;
}

.accordion:after {
  content: '\002B';
  color: #777;
  font-weight: bold;
  float: right;
  margin-left: 5px;
}

.active:after {
  content: "\2212";
}

.panel {
  padding: 0 18px;
  background-color: white;
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.2s ease-out;
  margin-bottom: 0;
}

.chi-tiet-khoa-hoc .text-title {
	background: #BC251D;
	padding: 20px;
	color: #fff;
	font-size: 20px;
  font-weight: bold;
  text-transform: uppercase;
}
.chi-tiet-khoa-hoc .link-bai {
	background: #fff;
	padding: 10px;
	border-radius: 5px;
	color: #000;
	display: inline-block;
  margin-bottom: 5px;
  border: 1px solid #490B79;
}
.chi-tiet-khoa-hoc .link-bai:hover {
  background: #490B79;
  color: #fff;
}
.chi-tiet-khoa-hoc .box-link {
	padding: 10px;
}

.chi-tiet-khoa-hoc .h2_home {
  font-size: 30px;
}
.chi-tiet-khoa-hoc .ten-bai {
  font-weight: bold;
  color: #490B79;
}
.chi-tiet-khoa-hoc .ten-bai span {
  float: right;
  font-weight: 100;
  color: #ccc;
}
.chi-tiet-khoa-hoc iframe {
  /*width: 100%;*/
  /*height: 200px;*/
}
.chi-tiet-khoa-hoc .thong-bao {
  margin-top: 20px;
  font-size: 20px;
}

.aspect-video {
  position: relative;
  widows: 100%;
  padding-top: 53%;
}
.aspect-video iframe {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 100%;
}
</style>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_THANHSANG_0002.php";?>
<div class="container chi-tiet-khoa-hoc">
	<h2 class="h2_home" style=""><?= $row1['product_name'] ?></h2>
	<div class="row m-8">
		<div class="col-md-7 p-8">
			<p class="text-title"><i class="fa fa-bars"></i> Nội dung khóa học</p>
			
			<?php 
			foreach ($list_chuong as $chuong) { 
				$list_bai = $action->getList('bai', 'chuong_id', $chuong['id'], 'id', 'asc', '', '', '');
			?>

			<button class="accordion"><?= $chuong['name'] ?></button>
			<div class="panel">
				<?php 
				foreach ($list_bai as $bai) { 
					$list_link = $action->getList('link_bai', 'bai_id', $bai['id'], 'id', 'asc', '', '', '');
          $da_phat_hanh = 'Đã phát hành';
          if (!empty($bai['ngay_phat_hanh'])) {
            $now = date('Y-m-d');
            if ($now < $bai['ngay_phat_hanh']) {
              $da_phat_hanh = $bai['ngay_phat_hanh'];
            }
          }
				?>
			  <p class="ten-bai"><?= $bai['name'] ?> <span><?= $da_phat_hanh ?></span></p>
			  <div class="box-link">
			  	<?php foreach ($list_link as $link) { ?>
			  		<a href="<?= $link['link'] ?>" title="" class="link-bai" target="_blank"><?= $link['name'] ?></a>
			  	<?php } ?>
			  </div>
				<?php } ?>
			</div>

			<?php } ?>

      <p class="thong-bao"><?= $thong_bao ?></p>

		</div>
		<div class="col-md-5 p-8">
      <div class="aspect-video">
        <?= $row1['product_sub_info2'] ?>
      </div>
			<a href="<?= $row1['product_sub_info1'] ?>" title="">
				<img src="/images/<?= $row1['product_img_qc'] ?>" alt="banner" style="width: 100%;margin-bottom: 30px;">
			</a>
		</div>
	</div>
</div>

<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}
</script>