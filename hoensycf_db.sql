-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th7 27, 2023 lúc 10:24 AM
-- Phiên bản máy phục vụ: 10.2.43-MariaDB
-- Phiên bản PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoensycf_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_state` int(11) DEFAULT 1,
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '0973262612', '', '', 1, 1),
(4, NULL, NULL, '$2y$10$02.uMGB26ln3fgNk8MyarOf8hnuaF/hWlukTDKk99Kb9TluOarctq', NULL, NULL, NULL, 1, NULL),
(10, 'ducthang98', 'ducthang98', '$2y$10$.cPv6NDsuqhmgoDq.qIF7OJEiCn28nrhJRL5QIy6Bt37lwZG6l2tG', '', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai`
--

CREATE TABLE `bai` (
  `id` int(11) NOT NULL,
  `chuong_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_phat_hanh` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bai`
--

INSERT INTO `bai` (`id`, `chuong_id`, `name`, `ngay_phat_hanh`) VALUES
(2, 2, 'Bài 1: Nền tảng kiến thức cơ học', '2023-08-01'),
(4, 4, 'Bài 1: Khi nào vật DAO ĐỘNG ĐIỀU HÒA', '0000-00-00'),
(7, 2, 'Bài 2: Khi nào vật dao động điều hoà', '2023-08-03'),
(8, 2, 'Bài 3: Phân tích phương trình li độ của vật DĐĐH', '2023-08-05'),
(9, 2, 'Bài 4: Vận tốc của vật dao động điều hoà', '2023-08-08'),
(10, 2, 'Bài 5: Tình bạn chí cốt giữa li độ và vận tốc trong DĐĐH', '2023-08-10'),
(11, 2, 'Bài 6: Gia tốc của vật dao động điều hoà', '2023-08-12'),
(12, 2, 'Bài 7: Lực hồi phục (Lực kéo về, lực phục hồi)', '2023-08-15'),
(13, 2, 'Bài 8: Quan hệ cùng pha, ngược pha giữa gia tốc, lực và li độ', '2023-08-17'),
(14, 2, 'Bài 9: Các khoảng thời gian đặc biệt trong dao động điều hoà', '2023-08-19'),
(15, 2, 'Bài 10: Thời gian vật dao động giữa hai li độ bất kỳ', '2023-08-22'),
(16, 2, 'Bài 11: Thời điểm vật đi qua li độ bất kỳ', '2023-08-24'),
(17, 2, 'Bài 12: Số lần vật đi qua một vị trí bất kỳ', '2023-08-26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_buyer` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuong`
--

CREATE TABLE `chuong` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuong`
--

INSERT INTO `chuong` (`id`, `product_id`, `name`) VALUES
(2, 503, 'CHƯƠNG 1 - DAO ĐỘNG CƠ'),
(3, 503, 'CHƯƠNG 2 - SÓNG CƠ'),
(4, 503, 'CHƯƠNG 3 - ĐIỆN XOAY CHIỀU'),
(5, 503, 'CHƯƠNG 4 - DAO ĐỘNG ĐIỆN TỪ'),
(6, 503, 'CHƯƠNG 5 - SÓNG ÁNH SÁNG'),
(7, 503, 'CHƯƠNG 6 - LƯỢNG TỬ ÁNH SÁNG'),
(8, 503, 'CHƯƠNG 7 - HẠT NHÂN NGUYÊN TỬ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_img_sub` text COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_price` int(11) NOT NULL,
  `percent_sale` int(11) NOT NULL,
  `pic_1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pic_2` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pic_3` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pic_4` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_meta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_logo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_hotline` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home8` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home9` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_map` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slideshow_home` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner1` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tiktok` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `slideshow_home`, `banner1`, `banner2`, `instagram`, `tiktok`) VALUES
(1, 'LỚP HỌC HOENSY', '', 'Huyền xem thử ở đâu đó', 'LỚP HỌC HOENSY', 'logo-hoensy.png', '', '', 'Là một dự án DẠY HỌC LUYỆN THI MIỄN PHÍ được ấp ủ trong nhiều năm. Rất mong nhận được sự ủng hộ của phụ huynh và các bạn học sinh trên cả nước', 'Ninh Bình', 'Nguyenthihuyen16101995@gmail.com', '0865 44 2236', '', '', '', '', '', 'https://goo.gl/maps/FpwxM5DePcZqaDfF8', '', 'https://www.facebook.com/hoensy', 'https://www.youtube.com/channel/UCReTNSstPQfHHFB2B45iNxg', 'https://twitter.com/Hoensy100795', '<iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.97785448771!2d105.80194413492788!3d21.02273601629448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m', 'https://www.youtube.com/channel/UCReTNSstPQfHHFB2B45iNxg', 'LOGO.png', '[\"{\\\"image\\\":\\\"hoensy.jpg\\\"}\"]', NULL, NULL, 'https://www.instagram.com/hoen.sy/', 'https://www.tiktok.com/@hoensy?is_from_webapp=1&sender_device=pc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_meta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_hotline` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home8` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home9` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(20000) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `edit_state`) VALUES
(1, 1, 'vn', 'LỚP HỌC HOENSY', '', 'Huyền xem thử ở đâu đó', 'LỚP HỌC HOENSY', '', '', 'Là một dự án DẠY HỌC LUYỆN THI MIỄN PHÍ được ấp ủ trong nhiều năm. Rất mong nhận được sự ủng hộ của phụ huynh và các bạn học sinh trên cả nước', 'Ninh Bình', 'Nguyenthihuyen16101995@gmail.com', '0865 44 2236', '', '', '', '', '', 'https://goo.gl/maps/FpwxM5DePcZqaDfF8', '', 'https://www.facebook.com/hoensy', 'https://www.youtube.com/channel/UCReTNSstPQfHHFB2B45iNxg', 'https://twitter.com/Hoensy100795', '<p><iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.97785448771!2d105.80194413492788!3d21.02273601629448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9bd9861ca1%3A0xe7887f7b72ca17a9!2zSGFub2ksIEhvw6BuIEtp4bq_bSwgSGFub2k!5e0!3m2!1sen!2s!4v1513235284242\" style=\"border:0\" width=\"600\"></iframe></p>\r\n', 'https://www.youtube.com/channel/UCReTNSstPQfHHFB2B45iNxg', '', 1),
(2, 1, 'en', '', '', '', '', '', '', '', 'V-ONION Organic for your family', 'banhang@rio.net.vn', '+84 971 765 775', 'Số 12 ngõ 5, Tân Mỹ, P.Mỹ Đình 1, Q.Nam Từ Liêm, Hà Nội', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dat_dich_vu`
--

CREATE TABLE `dat_dich_vu` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dat_dich_vu`
--

INSERT INTO `dat_dich_vu` (`id`, `name`, `email`, `phone`, `note`, `size`) VALUES
(2, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'test', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dich_vu_dat`
--

CREATE TABLE `dich_vu_dat` (
  `id` int(11) NOT NULL,
  `dat_dich_vu_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dich_vu_dat`
--

INSERT INTO `dich_vu_dat` (`id`, `dat_dich_vu_id`, `name`, `price`) VALUES
(1, 2, 'Rửa xe + hút bụi và rửa gầm', 20000),
(2, 2, 'Dọn xe nguyên chiếc tại nhà', 111000),
(3, 3, 'Rửa xe + hút bụi và rửa gầm', 20000),
(4, 3, 'Dọn xe nguyên chiếc tại nhà', 111000),
(5, 4, 'Rửa xe + hút bụi và rửa gầm', 20000),
(6, 4, 'Dọn xe nguyên chiếc tại nhà', 111000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`) VALUES
(18, 'Nguyễn Việt Hưng', 'viethung95cute@gmail.com', '', '', 'sdfgsdfg', '2018-05-02 12:01:44'),
(19, 'Việt Hưng', 'viethung95cute@gmail.com', '1672523165', '', 'Tesst  Liên hệ lần 1 ^_^ -_- :D :v :))', '2018-05-07 02:40:46'),
(20, 'Thanh Sang Auto', 'love_loveforever11@yahoo.com', '0123456789', '', 'ss', '2021-11-13 06:43:05'),
(21, 'Huyền', 'Bennhautrondoi65@gmail.com', '0865442236', '', 'Test', '2023-07-15 15:59:48'),
(22, 'Huyền test ạ', 'Bennhautrondoi65@gmail.com', '0865442236', '', 'Em test ạ', '2023-07-20 10:19:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `link_bai`
--

CREATE TABLE `link_bai` (
  `id` int(11) NOT NULL,
  `bai_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `link_bai`
--

INSERT INTO `link_bai` (`id`, `bai_id`, `name`, `link`) VALUES
(2, 2, 'Bài giảng', 'https://www.youtube.com/watch?v=Fhwb0gUobM8'),
(3, 2, 'Bài tập mẫu', 'https://www.youtube.com/watch?v=M0JJ2E8mpjg'),
(4, 2, 'Tài liệu', 'https://drive.google.com/file/d/1WV_xSPdLmbxnMXYN8oTQC3G0oZrb-j5v/view?usp=sharing'),
(5, 2, 'BTVN', 'https://drive.google.com/file/d/13xRXFptuPYSPmSTgMFqTYXMR_L1fKRKg/view?usp=sharing'),
(6, 2, 'Phiếu nộp bài tập về nhà', 'https://docs.google.com/forms/d/e/1FAIpQLScU7AL1WFw-Bxly2AVvLOVgT6s4ATpeko8JQrMTIxLQciCpWw/viewform'),
(7, 2, 'BĐA hoặc GCT', 'https://drive.google.com/file/d/1xwWRiQuGyOzW38frYqi4zSuLQNIMx2SD/view?usp=sharing'),
(8, 2, 'Video chữa BTVN', 'https://www.youtube.com/watch?v=00j4xAIbl1c'),
(16, 4, 'Bài giảng', 'https://www.youtube.com/watch?v=Fhwb0gUobM8'),
(17, 4, 'Bài tập mẫu', 'https://www.youtube.com/watch?v=M0JJ2E8mpjg'),
(18, 4, 'Tài liệu', 'https://drive.google.com/file/d/1WV_xSPdLmbxnMXYN8oTQC3G0oZrb-j5v/view?usp=sharing'),
(19, 4, 'BTVN', 'https://drive.google.com/file/d/13xRXFptuPYSPmSTgMFqTYXMR_L1fKRKg/view?usp=sharing'),
(20, 4, 'Phiếu nộp bài tập về nhà', 'https://docs.google.com/forms/d/e/1FAIpQLScU7AL1WFw-Bxly2AVvLOVgT6s4ATpeko8JQrMTIxLQciCpWw/viewform'),
(21, 4, 'BĐA hoặc GCT', 'https://drive.google.com/file/d/1xwWRiQuGyOzW38frYqi4zSuLQNIMx2SD/view?usp=sharing'),
(22, 4, 'Video chữa BTVN', 'https://www.youtube.com/watch?v=00j4xAIbl1c');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_sort_order` int(11) DEFAULT 0,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT 0,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(114, 'Trang chủ', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(205, 'Giới thiệu', 2, 13, '', 0, 0, 0, 35, 0, 1, 0, 0, 0, NULL),
(207, 'Blog giáo dục', 7, 5, '', 0, 69, 0, 0, 0, 1, 0, 0, 0, NULL),
(208, 'Liên hệ', 9, 9, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(248, 'Khóa học', 4, 2, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(252, 'Vật lý 12', 1, 3, '', 293, 0, 0, 0, 0, 1, 248, 0, 0, NULL),
(253, 'Vật Lý 11', 2, 3, '', 294, 0, 0, 0, 0, 1, 248, 0, 0, NULL),
(254, 'Kinh nghiệm cá nhân', 3, 3, '', 295, 0, 0, 0, 0, 1, 248, 0, 0, NULL),
(255, 'Toán THCS', 4, 3, '', 296, 0, 0, 0, 0, 1, 248, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_dv_hot`
--

CREATE TABLE `menu_dv_hot` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `menu_dv_hot`
--

INSERT INTO `menu_dv_hot` (`id`, `parent`, `name`, `productcat_id`, `sort`) VALUES
(1, 1, NULL, 266, 0),
(15, 0, NULL, 253, 1),
(16, 0, NULL, 276, 2),
(17, 0, NULL, 277, 3),
(18, 0, NULL, 278, 4),
(19, 0, NULL, 279, 6),
(20, 0, NULL, 280, 7),
(21, 0, NULL, 281, 8),
(22, 0, NULL, 282, 9),
(23, 0, NULL, 283, 10),
(24, 0, NULL, 284, 12),
(25, 0, NULL, 290, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(205, 'vn', 'Trang chủ', 1, '', 114),
(206, 'en', 'Home', 1, '', 114),
(387, 'vn', 'Giới thiệu', 1, '', 205),
(388, 'en', 'Introduce', 1, '', 205),
(391, 'vn', 'Blog giáo dục', 1, '', 207),
(392, 'en', 'News', 1, '', 207),
(393, 'vn', 'Liên hệ', 1, '', 208),
(394, 'en', 'Contact', 1, '', 208),
(473, 'vn', 'Khóa học', 0, '', 248),
(474, 'en', 'Khóa học', 0, '', 248),
(481, 'vn', 'Vật lý 12', 0, '', 252),
(482, 'en', 'Vật lý 12', 0, '', 252),
(483, 'vn', 'Vật Lý 11', 0, '', 253),
(484, 'en', 'Vật Lý 11', 0, '', 253),
(485, 'vn', 'Kinh nghiệm cá nhân', 0, '', 254),
(486, 'en', 'Kinh nghiệm cá nhân', 0, '', 254),
(487, 'vn', 'Toán THCS', 0, '', 255),
(488, 'en', 'Toán THCS', 0, '', 255);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_sp_hot`
--

CREATE TABLE `menu_sp_hot` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `menu_sp_hot`
--

INSERT INTO `menu_sp_hot` (`id`, `parent`, `name`, `productcat_id`, `sort`) VALUES
(2, 0, NULL, 254, 1),
(3, 1, NULL, 256, 0),
(4, 1, NULL, 257, 0),
(5, 1, NULL, 255, 0),
(6, 2, NULL, 258, 0),
(7, 0, NULL, 267, 2),
(8, 0, NULL, 268, 3),
(9, 0, NULL, 269, 4),
(10, 0, NULL, 270, 6),
(11, 0, NULL, 271, 7),
(12, 0, NULL, 272, 8),
(13, 0, NULL, 273, 9),
(14, 0, NULL, 274, 10),
(15, 0, NULL, 275, 11),
(16, 2, NULL, 260, 0),
(18, 7, NULL, 287, 0),
(19, 7, NULL, 288, 0),
(20, 2, NULL, 289, 0),
(21, 8, NULL, 291, 0),
(22, 8, NULL, 292, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `news_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `newstag_arr` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `newstag_arr`) VALUES
(28, 'Khóa học vui vẻ', 'Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', '<p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', 'Bài 1.png', 0, 69, '', '2023-07-10 15:07:58', NULL, 1, '', '', '', '', '', 'Khóa học vui vẻ', '', 'khoa-hoc-vui-ve', '', 1, NULL),
(29, 'Kiên thức đi từ cơ bản', 'Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', '<p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', 'Bài 2.png', 0, 69, '', '2023-07-10 15:07:31', NULL, 1, '', '', '', '', '', 'Kiên thức đi từ cơ bản', '', 'kien-thuc-di-tu-co-ban', '', 1, NULL),
(30, 'Các thầy cô tận tình', 'Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', '<p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', 'Bài 3.png', 0, 69, '', '2023-07-10 15:07:59', NULL, 1, '', '', '', '', '', 'Các thầy cô tận tình', '', 'cac-thay-co-tan-tinh', '', 1, NULL),
(31, 'Thắp sáng tương lai từ bây giờ', 'Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', '<p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', 'Bài 4.png', 0, 69, '', '2023-07-10 15:07:48', NULL, 1, '', '', '', '', '', 'Thắp sáng tương lai từ bây giờ', '', 'thap-sang-tuong-lai-tu-bay-gio', '', 1, NULL),
(32, 'Thầy cô nhiệt tình và vui nhộn', 'Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', '<p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', 'Bài 5.png', 0, 69, '', '2023-07-10 15:07:40', NULL, 1, '', '', '', '', '', 'Thầy cô nhiệt tình và vui nhộn', '', 'thay-co-nhiet-tinh-va-vui-nhon', '', 1, NULL),
(33, 'Mỗi buổi học là một lần sôi động', 'Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', '<p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', 'Bài 6.png', 0, 69, '', '2023-07-10 15:07:22', NULL, 1, '', '', '', '', '', 'Mỗi buổi học là một lần sôi động', '', 'moi-buoi-hoc-la-mot-lan-soi-dong', '', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT 0,
  `newscat_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(69, 'Blog giáo dục', '', '', 0, 0, '2023-07-20 10:07:59', NULL, 1, 'anh-click-link.png', '2', '', '', '', '', 'Blog giáo dục', '', 'blog-giao-duc', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(133, 69, 'vn', 'Blog giáo dục', '', NULL, '2', '', '', '', '', 1, 'blog-giao-duc', '', 'Blog giáo dục', ''),
(134, 69, 'en', 'Technology Transfer', '<p>english version</p>\r\n', '1', '', '', '', '', '', 1, 'en-chuyen-giao-cong-nghe', '', 'Chuyển giao công nghệ', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstag`
--

CREATE TABLE `newstag` (
  `newstag_id` int(11) NOT NULL,
  `newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sort_order` int(11) NOT NULL,
  `newstag_created_date` datetime NOT NULL,
  `newstag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `newstag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `newstag`
--

INSERT INTO `newstag` (`newstag_id`, `newstag_name`, `newstag_des`, `newstag_content`, `newstag_sort_order`, `newstag_created_date`, `newstag_update_date`, `state`, `newstag_img`, `newstag_sub_info1`, `newstag_sub_info2`, `newstag_sub_info3`, `newstag_sub_info4`, `newstag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(2, 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'sách hot', 'chuyên sách', 'sach-hot', 'sach', 1),
(3, 'Vở đẹp', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'Vở đẹp', '', 'vo-dep', '', 1),
(4, 'Butb', '<p>bb</p>\r\n', '', 0, '2017-12-13 11:12:54', '2017-12-13 11:12:11', 1, '', '', '', '', '', '', 'Butb', 'bb', 'butb', 'bb', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstag_languages`
--

CREATE TABLE `newstag_languages` (
  `id` int(11) NOT NULL,
  `newstag_id` int(11) NOT NULL,
  `languages_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_content` text CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `lang_newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info5` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `newstag_languages`
--

INSERT INTO `newstag_languages` (`id`, `newstag_id`, `languages_code`, `lang_newstag_name`, `lang_newstag_des`, `lang_newstag_content`, `lang_newstag_sub_info1`, `lang_newstag_sub_info2`, `lang_newstag_sub_info3`, `lang_newstag_sub_info4`, `lang_newstag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(3, 2, 'vn', 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach-hot', 'sach', 'sách hot', 'chuyên sách'),
(4, 2, 'en', 'sách en', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach', 'sach', 'sách', 'chuyên sách'),
(5, 3, 'vn', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(6, 3, 'en', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(7, 4, 'vn', 'But', '<p>but</p>\r\n', '', '', '', '', '', '', 1, 'butb', 'bb', 'Butb', 'bb'),
(8, 4, 'en', 'pen', '<p>pen</p>\r\n', '', '', '', '', '', '', 1, 'but', 'b', 'But', 'b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(55, 28, 'vn', 'Khóa học vui vẻ', 'Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', '<p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', '', '', '', '', '', 0, 'khoa-hoc-vui-ve', 'Khóa học vui vẻ', '', ''),
(56, 28, 'en', 'english version Khóa học vui vẻ', 'english version Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', 'english version <p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', '', '', '', '', '', 0, 'en-khoa-hoc-vui-ve', 'Khóa học vui vẻ', '', ''),
(57, 29, 'vn', 'Kiên thức đi từ cơ bản', 'Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', '<p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', '', '', '', '', '', 0, 'kien-thuc-di-tu-co-ban', 'Kiên thức đi từ cơ bản', '', ''),
(58, 29, 'en', 'english version Kiên thức đi từ cơ bản', 'english version Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', 'english version <p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', '', '', '', '', '', 0, 'en-kien-thuc-di-tu-co-ban', 'Kiên thức đi từ cơ bản', '', ''),
(59, 30, 'vn', 'Các thầy cô tận tình', 'Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', '<p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', '', '', '', '', '', 0, 'cac-thay-co-tan-tinh', 'Các thầy cô tận tình', '', ''),
(60, 30, 'en', 'english version Các thầy cô tận tình', 'english version Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', 'english version <p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', '', '', '', '', '', 0, 'en-cac-thay-co-tan-tinh', 'Các thầy cô tận tình', '', ''),
(61, 31, 'vn', 'Thắp sáng tương lai từ bây giờ', 'Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', '<p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', '', '', '', '', '', 0, 'thap-sang-tuong-lai-tu-bay-gio', 'Thắp sáng tương lai từ bây giờ', '', ''),
(62, 31, 'en', 'english version Thắp sáng tương lai từ bây giờ', 'english version Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', 'english version <p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', '', '', '', '', '', 0, 'en-thap-sang-tuong-lai-tu-bay-gio', 'Thắp sáng tương lai từ bây giờ', '', ''),
(63, 32, 'vn', 'Thầy cô nhiệt tình và vui nhộn', 'Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', '<p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', '', '', '', '', '', 0, 'thay-co-nhiet-tinh-va-vui-nhon', 'Thầy cô nhiệt tình và vui nhộn', '', ''),
(64, 32, 'en', 'english version Thầy cô nhiệt tình và vui nhộn', 'english version Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', 'english version <p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', '', '', '', '', '', 0, 'en-thay-co-nhiet-tinh-va-vui-nhon', 'Thầy cô nhiệt tình và vui nhộn', '', ''),
(65, 33, 'vn', 'Mỗi buổi học là một lần sôi động', 'Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', '<p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', '', '', '', '', '', 0, 'moi-buoi-hoc-la-mot-lan-soi-dong', 'Mỗi buổi học là một lần sôi động', '', ''),
(66, 33, 'en', 'english version Mỗi buổi học là một lần sôi động', 'english version Lớp học Hoensy - Lớp học cung cấp Bộ công thức thần tốc giải nhanh Vật lý. Hoensy giúp học sinh nâng cao mức điểm với các công thức giúp rút ngắn thời gian làm bài và kho tài liệu sẵn có trên website.', 'english version <p dir=\"ltr\">Lớp học Hoensy l&agrave; Lớp học Vật l&yacute; d&agrave;nh cho c&aacute;c bạn học sinh cấp ba, học sinh cuối cấp.</p>\r\n\r\n<p dir=\"ltr\">Với mong muốn cung cấp kiến thức một c&aacute;ch dễ hiểu, đồng thời n&acirc;ng cao mức điểm của học sinh với chiến thuật sử dụng Bộ c&ocirc;ng thức thần tốc giải nhanh Vật l&yacute;, lớp học hỗ trợ c&aacute;c em:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiểu b&agrave;i, hệ thống h&oacute;a được kiến thức</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">&Aacute;p dụng c&aacute;c c&ocirc;ng thức gi&uacute;p giải b&agrave;i đ&uacute;ng thời gian, c&oacute; t&iacute;nh chuẩn x&aacute;c cao</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Li&ecirc;n tục luyện đề v&agrave; giải đề, được chữa c&aacute;c lỗi sai v&agrave; đưa ra hướng xử l&yacute; ph&ugrave; hợp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, để tạo nguồn t&agrave;i liệu dồi d&agrave;o v&agrave; lu&ocirc;n sẵn s&agrave;ng cho học sinh, Lớp học Hoensy cung cấp bộ t&agrave;i liệu online tr&ecirc;n hệ thống website của lớp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ch&uacute;c c&aacute;c em học sinh học h&agrave;nh chăm chỉ v&agrave; đạt th&agrave;nh t&iacute;ch học tập như &yacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/image/images/%E1%BA%A2nh%20gi%E1%BB%9Bi%20thi%E1%BB%87u.png\" width=\"1200\" /></p>\r\n', '', '', '', '', '', 0, 'en-moi-buoi-hoc-la-mot-lan-soi-dong', 'Mỗi buổi học là một lần sôi động', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `page_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(35, 'GIỚI THIỆU LỚP HỌC HOENSY', 'Lớp học Hoensy là dự án dạy học luyện thi vật lý THPT, toán THCS và chia sẻ kinh nghiệm về việc biên soạn tài liệu, word, trang tính, ... hoàn toàn free', '<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Xin ch&agrave;o c&aacute;c bạn, m&igrave;nh l&agrave; Hoensy. Đ&acirc;y l&agrave; biệt danh m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch đ&atilde; l&acirc;u. Nhưng tạm bỏ qua vấn đề n&agrave;y nh&eacute;! Mục đ&iacute;ch ch&iacute;nh m&agrave; m&igrave;nh muốn n&oacute;i đến trong b&agrave;i n&agrave;y l&agrave; về dự &aacute;n Lớp học Hoensy &ndash; Dự &aacute;n đ&atilde; được m&igrave;nh &ldquo;thai ngh&eacute;n&rdquo; từ năm 2020 nhưng bị delay tận 3 năm :( </span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><span style=\"font-size:16.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:blue\">Vậy dự &aacute;n n&agrave;y c&oacute; g&igrave; hay ho m&agrave; khiến bạn phải bỏ ra v&agrave;i ph&uacute;t qu&yacute; gi&aacute; để đọc những d&ograve;ng n&agrave;y nhỉ?</span></span></span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"color:red\">1. Dự &aacute;n n&agrave;y sẽ được khởi nguồn từ bộ m&ocirc;n &ldquo;Vật l&yacute;&rdquo;.</span></strong> Ch&iacute;nh x&aacute;c hơn th&igrave; ch&iacute;nh l&agrave; KHO&Aacute; HỌC LUYỆN THI VẬT L&Yacute; TỪ Z ĐẾN A D&Agrave;NH CHO 2K6 v&agrave; cả 2K5 nếu nhen nh&oacute;m &yacute; định thi lại!</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"color:red\">2. Lớp học ho&agrave;n to&agrave;n FREE</span>.</strong> N&agrave;o! Dừng khoảng chừng l&agrave; v&agrave;i gi&acirc;y để m&igrave;nh n&oacute;i th&ecirc;m ch&uacute;t nh&eacute;! Nhắc đến HỌC MIỄN PH&Iacute;, chắc hẳn nhiều bạn sẽ tặc lưỡi, chắc chất lượng chẳng đi đến đ&acirc;u đ&acirc;u, hay l&agrave; thứ miễn ph&iacute; từ tr&ecirc;n trời rơi xuống th&igrave; chỉ c&oacute; nước mưa v&agrave; &ldquo;cớt chim&rdquo; ... v&acirc;n v&acirc;n v&agrave; m&acirc;y m&acirc;y. NHƯNG, c&acirc;u trả lời l&agrave; kh&ocirc;ng nh&eacute;! M&igrave;nh cũng chưa đủ gi&agrave;u để bỏ c&ocirc;ng sức l&agrave;m một dự &aacute;n kh&ocirc;ng c&oacute; th&ugrave; lao, nhưng thay v&igrave; m&igrave;nh thu ph&iacute; từ c&aacute;c bạn học sinh th&igrave; m&igrave;nh muốn khai th&aacute;c một khoản ph&iacute; nhỏ từ Youtube, từ c&aacute;c lượt click v&agrave;o quảng c&aacute;o nhằm kh&iacute;ch lệ m&igrave;nh tiếp tục từ c&aacute;c bạn, hay từ những lượt mua sản phẩm m&agrave; bạn hay gia đ&igrave;nh bạn cần thiết nếu muốn cảm ơn m&igrave;nh. Vậy n&ecirc;n, M&Igrave;NH GI&Uacute;P C&Aacute;C BẠN &ocirc;n thi, c&aacute;c bạn gi&uacute;p m&igrave;nh ĐĂNG K&Yacute; K&Ecirc;NH v&agrave; xem b&agrave;i thật chăm chỉ nh&eacute;, c&agrave;y view th&igrave; lại c&agrave;ng cảm ơn h&ecirc; h&ecirc;!</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"color:red\">3. Vậy kho&aacute; học c&oacute; g&igrave; để c&aacute;c bạn kh&ocirc;ng thấy ph&iacute; thời gian khi tham gia? </span></strong></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">M&igrave;nh c&oacute; thể khẳng định lu&ocirc;n, chắc chắn chưa c&oacute; một KHO&Aacute; HỌC 0 ĐỒNG n&agrave;o c&oacute; sự đầu tư như DỰ &Aacute;N LỚP HỌC HOENSY!</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Một b&agrave;i học m&igrave;nh sẽ cung cấp đầy đủ cho c&aacute;c bạn c&aacute;c phần sau:</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><img alt=\"\" height=\"105\" src=\"/image/images/Screenshot_57.png\" width=\"417\" /></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Ch&iacute;nh x&aacute;c l&agrave; gồm tất cả c&aacute;c phần tr&ecirc;n đ&oacute;, c&aacute;c bạn kh&ocirc;ng nh&igrave;n nhầm đ&acirc;u! Đ&acirc;y thực sự l&agrave; một sự t&aacute;o bạo của m&igrave;nh khi quyết định đầu tư thời gian v&agrave;o việc soạn b&agrave;i, quay b&agrave;i giảng, soạn đề, quay chữa đề, thiết kế thẻ học đ&oacute;!!! </span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">2024 l&agrave; năm cuối c&ugrave;ng thi theo chương tr&igrave;nh cũ! 2K5 điểm thấp? Kh&ocirc;ng sao, vẫn c&oacute; thể học tạm ở một trường bạn kh&ocirc;ng y&ecirc;u th&iacute;ch v&agrave; rồi 3 th&aacute;ng cuối c&agrave;y lại để thi c&ugrave;ng 2K6. Nhưng c&ograve;n 2K6 th&igrave; sao??? Bạn sẽ phải c&agrave;y ngay từ đầu năm th&igrave; mới c&oacute; thể cạnh tranh với 2K7 v&igrave; chương tr&igrave;nh thi đ&atilde; kh&aacute;c rồi! Vậy n&ecirc;n, năm nay kh&ocirc;ng c&oacute; chỗ cho những sai lầm nh&eacute;!</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Nếu bạn muốn &ldquo;mục sở thị&rdquo; trực tiếp kho&aacute; học, bạn c&oacute; thể xem trực tiếp tại đ&acirc;y nh&eacute; &rarr;&nbsp;http://hoensy.cafelink.org/khoa-tham-hoa</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"color:red\">4. Tr&ecirc;n youtube nhiều video như vậy, t&igrave;m b&agrave;i giảng c&oacute; bất tiện kh&ocirc;ng &aacute;? </span></strong></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Đ&acirc;y l&agrave; vấn đề m&igrave;nh trăn trở nhất n&egrave;! Vậy n&ecirc;n m&igrave;nh đ&atilde; quyết định đầu tư cho em n&oacute; một website đ&aacute;ng đồng tiền b&aacute;t gạo n&egrave;. Link website:&nbsp;hoensy.com</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Việc của bạn chỉ cần truy cập v&agrave;o website, mở đ&uacute;ng kho&aacute; học bạn đang tham gia v&agrave; học từng b&agrave;i một th&ocirc;i! Website sẽ thống k&ecirc; đầy đủ b&agrave;i giảng v&agrave; t&agrave;i liệu học cho bạn một c&aacute;ch logic nhất! Tin m&igrave;nh đi! &ldquo;Đứa con vật chất&rdquo; n&agrave;y của m&igrave;nh sẽ KH&Ocirc;NG L&Agrave;M BẠN THẤT VỌNG đ&acirc;u!</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"color:red\">5. Thứ duy nhất m&agrave; m&igrave;nh chưa c&oacute; đủ ch&iacute;nh l&agrave; động lực từ c&aacute;c bạn!</span></strong></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Vậy n&ecirc;n, m&igrave;nh TRUYỀN LỬA v&agrave; TRUYỀN CẢ CỦI ĐỐT cho c&aacute;c bạn học tập, th&igrave; c&aacute;c bạn h&atilde;y TRUYỀN ĐỘNG LỰC cho m&igrave;nh bằng c&aacute;ch đẩy trend, đẩy view cho m&igrave;nh nh&eacute;! Sự ủng hộ của c&aacute;c bạn v&agrave; phụ huynh sẽ trở th&agrave;nh con s&oacute;ng mạnh mẽ để m&igrave;nh ho&agrave;n th&agrave;nh tốt dự &aacute;n v&agrave; mở rộng cho Vật l&yacute; 10, Vật l&yacute; 11, cho kho&aacute; 2K7 năm tới v&agrave; mở rộng cho cả m&ocirc;n to&aacute;n nữa!&nbsp;</span></span></p>\r\n\r\n<ul dir=\"ltr\">\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Việc đầu ti&ecirc;n ch&iacute;nh l&agrave; click <a href=\"https://www.youtube.com/channel/UCReTNSstPQfHHFB2B45iNxg\" style=\"color:#0563c1; text-decoration:underline\" target=\"_blank\">v&agrave;o đ&acirc;y</a> v&agrave; ĐĂNG K&Yacute; K&Ecirc;NH gi&uacute;p m&igrave;nh! Sau đ&oacute; truy cập v&agrave;o website <a href=\"http://hoensy.com/\" style=\"color:#0563c1; text-decoration:underline\">http://hoensy.com/</a> v&agrave; học th&ocirc;i!!! GET GO!</span></span></li>\r\n</ul>\r\n', 'z2874585884879_9b5698d7f32559b1f4498766958887bb.jpg', '2017-05-11 16:05:22', '2023-07-27 13:07:45', 1, '', '', '', '', '', '', 'Về chúng tôi', '', 'gioi-thieu', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(35, 35, 'vn', 'GIỚI THIỆU LỚP HỌC HOENSY', 'Lớp học Hoensy là dự án dạy học luyện thi vật lý THPT, toán THCS và chia sẻ kinh nghiệm về việc biên soạn tài liệu, word, trang tính, ... hoàn toàn free', '<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Xin ch&agrave;o c&aacute;c bạn, m&igrave;nh l&agrave; Hoensy. Đ&acirc;y l&agrave; biệt danh m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch đ&atilde; l&acirc;u. Nhưng tạm bỏ qua vấn đề n&agrave;y nh&eacute;! Mục đ&iacute;ch ch&iacute;nh m&agrave; m&igrave;nh muốn n&oacute;i đến trong b&agrave;i n&agrave;y l&agrave; về dự &aacute;n Lớp học Hoensy &ndash; Dự &aacute;n đ&atilde; được m&igrave;nh &ldquo;thai ngh&eacute;n&rdquo; từ năm 2020 nhưng bị delay tận 3 năm :( </span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><em><span style=\"font-size:16.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:blue\">Vậy dự &aacute;n n&agrave;y c&oacute; g&igrave; hay ho m&agrave; khiến bạn phải bỏ ra v&agrave;i ph&uacute;t qu&yacute; gi&aacute; để đọc những d&ograve;ng n&agrave;y nhỉ?</span></span></span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"color:red\">1. Dự &aacute;n n&agrave;y sẽ được khởi nguồn từ bộ m&ocirc;n &ldquo;Vật l&yacute;&rdquo;.</span></strong> Ch&iacute;nh x&aacute;c hơn th&igrave; ch&iacute;nh l&agrave; KHO&Aacute; HỌC LUYỆN THI VẬT L&Yacute; TỪ Z ĐẾN A D&Agrave;NH CHO 2K6 v&agrave; cả 2K5 nếu nhen nh&oacute;m &yacute; định thi lại!</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"color:red\">2. Lớp học ho&agrave;n to&agrave;n FREE</span>.</strong> N&agrave;o! Dừng khoảng chừng l&agrave; v&agrave;i gi&acirc;y để m&igrave;nh n&oacute;i th&ecirc;m ch&uacute;t nh&eacute;! Nhắc đến HỌC MIỄN PH&Iacute;, chắc hẳn nhiều bạn sẽ tặc lưỡi, chắc chất lượng chẳng đi đến đ&acirc;u đ&acirc;u, hay l&agrave; thứ miễn ph&iacute; từ tr&ecirc;n trời rơi xuống th&igrave; chỉ c&oacute; nước mưa v&agrave; &ldquo;cớt chim&rdquo; ... v&acirc;n v&acirc;n v&agrave; m&acirc;y m&acirc;y. NHƯNG, c&acirc;u trả lời l&agrave; kh&ocirc;ng nh&eacute;! M&igrave;nh cũng chưa đủ gi&agrave;u để bỏ c&ocirc;ng sức l&agrave;m một dự &aacute;n kh&ocirc;ng c&oacute; th&ugrave; lao, nhưng thay v&igrave; m&igrave;nh thu ph&iacute; từ c&aacute;c bạn học sinh th&igrave; m&igrave;nh muốn khai th&aacute;c một khoản ph&iacute; nhỏ từ Youtube, từ c&aacute;c lượt click v&agrave;o quảng c&aacute;o nhằm kh&iacute;ch lệ m&igrave;nh tiếp tục từ c&aacute;c bạn, hay từ những lượt mua sản phẩm m&agrave; bạn hay gia đ&igrave;nh bạn cần thiết nếu muốn cảm ơn m&igrave;nh. Vậy n&ecirc;n, M&Igrave;NH GI&Uacute;P C&Aacute;C BẠN &ocirc;n thi, c&aacute;c bạn gi&uacute;p m&igrave;nh ĐĂNG K&Yacute; K&Ecirc;NH v&agrave; xem b&agrave;i thật chăm chỉ nh&eacute;, c&agrave;y view th&igrave; lại c&agrave;ng cảm ơn h&ecirc; h&ecirc;!</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"color:red\">3. Vậy kho&aacute; học c&oacute; g&igrave; để c&aacute;c bạn kh&ocirc;ng thấy ph&iacute; thời gian khi tham gia? </span></strong></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">M&igrave;nh c&oacute; thể khẳng định lu&ocirc;n, chắc chắn chưa c&oacute; một KHO&Aacute; HỌC 0 ĐỒNG n&agrave;o c&oacute; sự đầu tư như DỰ &Aacute;N LỚP HỌC HOENSY!</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Một b&agrave;i học m&igrave;nh sẽ cung cấp đầy đủ cho c&aacute;c bạn c&aacute;c phần sau:</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><img alt=\"\" height=\"105\" src=\"/image/images/Screenshot_57.png\" width=\"417\" /></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Ch&iacute;nh x&aacute;c l&agrave; gồm tất cả c&aacute;c phần tr&ecirc;n đ&oacute;, c&aacute;c bạn kh&ocirc;ng nh&igrave;n nhầm đ&acirc;u! Đ&acirc;y thực sự l&agrave; một sự t&aacute;o bạo của m&igrave;nh khi quyết định đầu tư thời gian v&agrave;o việc soạn b&agrave;i, quay b&agrave;i giảng, soạn đề, quay chữa đề, thiết kế thẻ học đ&oacute;!!! </span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">2024 l&agrave; năm cuối c&ugrave;ng thi theo chương tr&igrave;nh cũ! 2K5 điểm thấp? Kh&ocirc;ng sao, vẫn c&oacute; thể học tạm ở một trường bạn kh&ocirc;ng y&ecirc;u th&iacute;ch v&agrave; rồi 3 th&aacute;ng cuối c&agrave;y lại để thi c&ugrave;ng 2K6. Nhưng c&ograve;n 2K6 th&igrave; sao??? Bạn sẽ phải c&agrave;y ngay từ đầu năm th&igrave; mới c&oacute; thể cạnh tranh với 2K7 v&igrave; chương tr&igrave;nh thi đ&atilde; kh&aacute;c rồi! Vậy n&ecirc;n, năm nay kh&ocirc;ng c&oacute; chỗ cho những sai lầm nh&eacute;!</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Nếu bạn muốn &ldquo;mục sở thị&rdquo; trực tiếp kho&aacute; học, bạn c&oacute; thể xem trực tiếp tại đ&acirc;y nh&eacute; &rarr;&nbsp;http://hoensy.cafelink.org/khoa-tham-hoa</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"color:red\">4. Tr&ecirc;n youtube nhiều video như vậy, t&igrave;m b&agrave;i giảng c&oacute; bất tiện kh&ocirc;ng &aacute;? </span></strong></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Đ&acirc;y l&agrave; vấn đề m&igrave;nh trăn trở nhất n&egrave;! Vậy n&ecirc;n m&igrave;nh đ&atilde; quyết định đầu tư cho em n&oacute; một website đ&aacute;ng đồng tiền b&aacute;t gạo n&egrave;. Link website:&nbsp;hoensy.com</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Việc của bạn chỉ cần truy cập v&agrave;o website, mở đ&uacute;ng kho&aacute; học bạn đang tham gia v&agrave; học từng b&agrave;i một th&ocirc;i! Website sẽ thống k&ecirc; đầy đủ b&agrave;i giảng v&agrave; t&agrave;i liệu học cho bạn một c&aacute;ch logic nhất! Tin m&igrave;nh đi! &ldquo;Đứa con vật chất&rdquo; n&agrave;y của m&igrave;nh sẽ KH&Ocirc;NG L&Agrave;M BẠN THẤT VỌNG đ&acirc;u!</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"color:red\">5. Thứ duy nhất m&agrave; m&igrave;nh chưa c&oacute; đủ ch&iacute;nh l&agrave; động lực từ c&aacute;c bạn!</span></strong></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Vậy n&ecirc;n, m&igrave;nh TRUYỀN LỬA v&agrave; TRUYỀN CẢ CỦI ĐỐT cho c&aacute;c bạn học tập, th&igrave; c&aacute;c bạn h&atilde;y TRUYỀN ĐỘNG LỰC cho m&igrave;nh bằng c&aacute;ch đẩy trend, đẩy view cho m&igrave;nh nh&eacute;! Sự ủng hộ của c&aacute;c bạn v&agrave; phụ huynh sẽ trở th&agrave;nh con s&oacute;ng mạnh mẽ để m&igrave;nh ho&agrave;n th&agrave;nh tốt dự &aacute;n v&agrave; mở rộng cho Vật l&yacute; 10, Vật l&yacute; 11, cho kho&aacute; 2K7 năm tới v&agrave; mở rộng cho cả m&ocirc;n to&aacute;n nữa!&nbsp;</span></span></p>\r\n\r\n<ul dir=\"ltr\">\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:16pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Việc đầu ti&ecirc;n ch&iacute;nh l&agrave; click <a href=\"https://www.youtube.com/channel/UCReTNSstPQfHHFB2B45iNxg\" style=\"color:#0563c1; text-decoration:underline\" target=\"_blank\">v&agrave;o đ&acirc;y</a> v&agrave; ĐĂNG K&Yacute; K&Ecirc;NH gi&uacute;p m&igrave;nh! Sau đ&oacute; truy cập v&agrave;o website <a href=\"http://hoensy.com/\" style=\"color:#0563c1; text-decoration:underline\">http://hoensy.com/</a> v&agrave; học th&ocirc;i!!! GET GO!</span></span></li>\r\n</ul>\r\n', '', '', '', '', '', 1, 'gioi-thieu', 'Về chúng tôi', '', ''),
(36, 35, 'en', 'Giới thiệu en', 'Giới thiệu công ty. Được thành lập vào năm 1993, Công ty Cổ Phần Kỹ Thuật Toàn Thắng được biết đến như một nhà cung cấp chuyên nghiệp các giải pháp ...', '<p>Được th&agrave;nh lập v&agrave;o năm 1993, C&ocirc;ng ty Cổ Phần Kỹ Thuật To&agrave;n Thắng được biết đến như một&nbsp; nh&agrave; cung cấp chuy&ecirc;n nghiệp c&aacute;c giải ph&aacute;p thiết bị v&agrave; dịch vụ kỹ thuật chất lượng cao, c&ocirc;ng nghệ ti&ecirc;n tiến&nbsp;cho kh&aacute;ch h&agrave;ng ng&agrave;nh dầu kh&iacute;, điện lực v&agrave; một số ng&agrave;nh c&ocirc;ng nghiệp nặng kh&aacute;c.</p>\r\n\r\n<p>C&ocirc;ng ty c&oacute; văn ph&ograve;ng ch&iacute;nh tại TP. Hồ Ch&iacute; Minh v&agrave; một c&ocirc;ng ty con tại TP. Vũng T&agrave;u. Với đội ngũ chuy&ecirc;n gia, kỹ sư được đ&agrave;o tạo chuy&ecirc;n s&acirc;u, chuy&ecirc;n tr&aacute;ch từng mảng sản phẩm, ch&uacute;ng t&ocirc;i lu&ocirc;n đem đến cho kh&aacute;ch h&agrave;ng những giải ph&aacute;p kỹ thuật, thương mại đa dạng, đ&aacute;p ứng tốt nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" height=\"564\" src=\"/image/images/670px-conceptualmapfloss(1).png\" style=\"float:right\" width=\"670\" /></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cũng đảm nhận cung cấp c&aacute;c dịch vụ sau b&aacute;n h&agrave;ng như: Bảo tr&igrave;, đại tu, sửa chữa, đ&agrave;o tạo, hướng dẫn sử dụng, dịch vụ quản l&yacute; t&agrave;i sản &amp; hợp đồng v&agrave; c&aacute;c dịch vụ kh&aacute;c tại c&ocirc;ng trường cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 1, 'gioi-thieu-en', 'Giới thiệu', '', 'Mô tả cho bài viết giới thiệu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT 0,
  `product_new` int(11) DEFAULT 0,
  `product_sale` int(11) DEFAULT 0,
  `product_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_original` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_size` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_package` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_delivery` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_delivery_time` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_payment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_payment_type` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_ar` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `producttag_arr` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_size` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_size_1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_size_2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_size_3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_hot` int(11) NOT NULL DEFAULT 0,
  `home` int(11) NOT NULL DEFAULT 0,
  `banner1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `thanh_vien` int(11) NOT NULL DEFAULT 0,
  `tra_phi` int(11) NOT NULL DEFAULT 0,
  `product_img_qc` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `alias`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `producttag_arr`, `picture_size`, `picture_size_1`, `picture_size_2`, `picture_size_3`, `service_hot`, `home`, `banner1`, `thanh_vien`, `tra_phi`, `product_img_qc`) VALUES
(503, 'Khóa Thám Hoa', NULL, '', '', '', '', '', '', 0, 0, 0, '260720231122.png', '[]', '2023-07-07 11:07:56', '2023-07-26 16:07:59', 0, 1, 0, 0, '3 bài/tuần', '', '', '', '', '', '', '', '1', '<iframe width=\"1268\" height=\"713\" src=\"https://www.youtube.com/embed/N7Av4cMRqdo\" title=\"Học sinh hỏi bài số 2 lớp 11 - Định luật Ôm cho toàn mạch/Ghép nguồn/Dòng điện không đổi\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', '', '', 0, 'Khóa Thám Hoa', '', 'khoa-tham-hoa', '', 1, '', '', '', NULL, NULL, '293,293', NULL, '', '', '', '', 0, 0, NULL, 0, 0, '260720231323.png'),
(504, 'Khóa Bảng Nhãn', NULL, '', '', '', '', '', '', 0, 0, 0, '260720231123.png', '[]', '2023-07-07 17:07:26', '2023-07-26 16:07:10', 0, 1, 0, 0, '1 bài/tuần', '', '', '', '', '', '', '', '', '<iframe width=\"1268\" height=\"713\" src=\"https://www.youtube.com/embed/N7Av4cMRqdo\" title=\"Học sinh hỏi bài số 2 lớp 11 - Định luật Ôm cho toàn mạch/Ghép nguồn/Dòng điện không đổi\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', '', '', 0, 'Khóa Bảng Nhãn', '', 'khoa-bang-nhan', '', 1, '', '', '', NULL, NULL, '293,293', NULL, '', '', '', '', 0, 0, NULL, 0, 0, '260720231322.png'),
(505, 'Khóa Trạng Nguyên', NULL, '', '', '', '', '', '', 0, 0, 0, '260720231124.png', '[]', '2023-07-10 14:07:25', '2023-07-26 16:07:03', 0, 1, 0, 0, '1 đề/tuần', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Khóa Trạng Nguyên', '', 'khoa-trang-nguyen', '', 1, '', '', '', NULL, NULL, '293,293', NULL, '', '', '', '', 0, 0, NULL, 0, 0, '260720231322.png'),
(506, 'Vật Lý 11 - Kết nối tri thức', NULL, '', '', '', '', '', '', 0, 0, 0, '260720231547.png', '[]', '2023-07-10 14:07:05', '2023-07-26 16:07:38', 0, 1, 0, 0, '1 bài/tuần', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Vật Lý 11 - Kết nối tri thức', '', 'vat-ly-11-ket-noi-tri-thuc', '', 1, '', '', '', NULL, NULL, '294,294', NULL, '', '', '', '', 0, 0, NULL, 0, 0, '260720231322.png'),
(507, 'Vật Lý 11 - Cánh Diều', NULL, '', '', '', '', '', '', 0, 0, 0, '260720231546.png', '[]', '2023-07-10 14:07:47', '2023-07-26 16:07:38', 0, 1, 0, 0, '1 bài/tuần', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Vật Lý 11 - Cánh Diều', '', 'vat-ly-11-canh-dieu', '', 1, '', '', '', NULL, NULL, '294,294', NULL, '', '', '', '', 0, 0, NULL, 0, 0, '260720231546.png'),
(508, 'Toán 9', NULL, '', '', '', '', '', '', 0, 0, 0, '260720231620.png', '[]', '2023-07-10 14:07:16', '2023-07-27 13:07:40', 0, 1, 0, 0, '2 bài/tuần', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Toán 9', '', 'toan-9', '', 1, '', '', '', NULL, NULL, '296,296', NULL, '', '', '', '', 0, 0, NULL, 0, 0, NULL),
(512, 'Vật Lý 11 - Chân trời sáng tạo', NULL, '', '', '', '', '', '', 0, 0, 0, '260720231545.png', '[\"{\\\"image\\\":\\\"260720231545.png\\\"}\"]', '2023-07-26 16:07:48', NULL, 0, 0, 0, 0, '1 bài/tuần', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Vật Lý 11 - Chân trời sáng tạo', '', 'vat-ly-11-chan-troi-sang-tao', '', NULL, '', '', '', NULL, NULL, '294,294', NULL, '', '', '', '', 0, 0, NULL, 0, 0, NULL),
(513, 'CHUẨN HOÁ FILE ĐỀ TRẮC NGHIỆM', NULL, '', '', '', '', '', '', 0, 0, 0, '260720231618.png', '[]', '2023-07-27 13:07:07', '2023-07-27 13:07:43', 0, 1, 0, 0, 'Tuỳ biến', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'CHUẨN HOÁ FILE ĐỀ TRẮC NGHIỆM', '', 'chuan-hoa-file-de-trac-nghiem', '', NULL, '', '', '', NULL, NULL, '295,295', NULL, '', '', '', '', 0, 0, NULL, 0, 0, NULL),
(514, 'BỘ GÕ MATHTYPE - MATHCHA', NULL, '', '', '', '', '', '', 0, 0, 0, '260720231619.png', '[]', '2023-07-27 13:07:14', NULL, 0, 1, 0, 0, 'Tuỳ biến', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'BỘ GÕ MATHTYPE - MATHCHA', '', 'bo-go-mathtype-mathcha', '', NULL, '', '', '', NULL, NULL, '295,295', NULL, '', '', '', '', 0, 0, NULL, 0, 0, NULL),
(515, 'Toán 8', NULL, '', '', '', '', '', '', 0, 0, 0, '260720231621.png', '[]', '2023-07-27 13:07:06', NULL, 0, 1, 0, 0, '2 bài/tuần', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Toán 8', '', 'toan-8', '', NULL, '', '', '', NULL, NULL, '296,296', NULL, '', '', '', '', 0, 0, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_parent` int(11) NOT NULL DEFAULT 0,
  `productcat_sort_order` int(11) NOT NULL DEFAULT 0,
  `productcat_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat`
--

INSERT INTO `productcat` (`productcat_id`, `productcat_name`, `productcat_des`, `productcat_content`, `productcat_parent`, `productcat_sort_order`, `productcat_img`, `productcat_created_date`, `productcat_update_date`, `productcat_sub_info1`, `productcat_sub_info2`, `productcat_sub_info3`, `productcat_sub_info4`, `productcat_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(293, 'Vật lý 12', 'Trọn bộ 3 khoá học luyện thi Vật lý 12 năm cuối cùng theo chương trình cũ dành cho 2k6 hoàn thành mục tiêu KHÔNG QUAY ĐẦU. Khoá THÁM HOA với các chuyên đề luyện thi kiến thức 12 trong 8 tháng đầu, khoá BẢNG NHÃN nhẳm tổng ôn toàn bộ kiến thức, bứt phá điểm số trong 3 tháng cuối và khoá TRẠNG NGUYÊN là khoá sưu tầm các đề thi thử bán kỳ, học kỳ, thi thử THPT của các trường, các Sở trên cả nước nhằm cho các em học sinh có nguồn tài liệu dồi dào, được cọ sát với nhiều phong cách ra đề khác nhau nhằm tối ưu điểm số.', '', 0, 0, '260720231323.png', '2023-07-26 15:07:13', NULL, '1', '', '', '', '', 1, 'Vật lý 12', '', 'vat-ly-12', '', 1),
(294, 'Vật Lý 11', 'Khoá học đơn giản hoá môn Vật lý 11 cho học sinh, để môn lý không còn là ác mộng. Nhưng vì cô khá bận nên khoá học này vẫn đang rất cần động lực để phát hành. Hi vọng nhận được nhiều lượt vote tham gia của các bạn để có động lực phát hành khoá học nha.', '', 0, 0, '260720231322.png', '2023-07-26 16:07:15', NULL, '', '', '', '', '', 1, 'Vật Lý 11', '', 'vat-ly-11', '', 1),
(295, 'Kinh nghiệm cá nhân', 'Các khoá học này nhằm gửi đến các bạn học sinh, các thầy cô cũng như các bạn nhân viên văn phòng một số kinh nghiệm về soạn thảo văn bản, soạn thảo đề thi, tổ chức thi thử online, giới thiệu một số phần mềm cô Hoèn thường dùng để hỗ trợ công việc. Tất cả các kiến thức này đều mang tính chất cá nhân và có thể còn nhiều thiếu xót, chỉ mang tính chất có thêm một kênh tham khảo cho những ai cần. Nên mong mọi người hoan hỉ đón nhận và góp ý thêm ạ.', '', 0, 0, '260720231324.png', '2023-07-26 15:07:43', NULL, '', '', '', '', '', 1, 'Kinh nghiệm cá nhân', '', 'kinh-nghiem-ca-nhan', '', 1),
(296, 'Toán THCS', '', '', 0, 0, '260720231322.png', '2023-07-27 13:07:24', NULL, '', '', '', '', '', 1, 'Toán THCS', '', 'toan-thcs', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat_languages`
--

INSERT INTO `productcat_languages` (`id`, `productcat_id`, `lang_productcat_name`, `languages_code`, `lang_productcat_des`, `lang_productcat_content`, `lang_productcat_sub_info1`, `lang_productcat_sub_info2`, `lang_productcat_sub_info3`, `lang_productcat_sub_info4`, `lang_productcat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(571, 293, 'Vật lý 12', 'vn', 'Trọn bộ 3 khoá học luyện thi Vật lý 12 năm cuối cùng theo chương trình cũ dành cho 2k6 hoàn thành mục tiêu KHÔNG QUAY ĐẦU. Khoá THÁM HOA với các chuyên đề luyện thi kiến thức 12 trong 8 tháng đầu, khoá BẢNG NHÃN nhẳm tổng ôn toàn bộ kiến thức, bứt phá điểm số trong 3 tháng cuối và khoá TRẠNG NGUYÊN là khoá sưu tầm các đề thi thử bán kỳ, học kỳ, thi thử THPT của các trường, các Sở trên cả nước nhằm cho các em học sinh có nguồn tài liệu dồi dào, được cọ sát với nhiều phong cách ra đề khác nhau nhằm tối ưu điểm số.', '', '1', '', '', '', '', 0, 'vat-ly-12', '', 'Vật lý 12', ''),
(572, 293, 'english version Loại khóa học số 1', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-loai-khoa-hoc-so-1', '', 'Loại khóa học số 1', ''),
(573, 294, 'Vật Lý 11', 'vn', 'Khoá học đơn giản hoá môn Vật lý 11 cho học sinh, để môn lý không còn là ác mộng. Nhưng vì cô khá bận nên khoá học này vẫn đang rất cần động lực để phát hành. Hi vọng nhận được nhiều lượt vote tham gia của các bạn để có động lực phát hành khoá học nha.', '', '', '', '', '', '', 0, 'vat-ly-11', '', 'Vật Lý 11', ''),
(574, 294, 'english version Sách kết nối tri thức Vật Lý 11', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-sach-ket-noi-tri-thuc-vat-ly-11', '', 'Sách kết nối tri thức Vật Lý 11', ''),
(575, 295, 'Kinh nghiệm cá nhân', 'vn', 'Các khoá học này nhằm gửi đến các bạn học sinh, các thầy cô cũng như các bạn nhân viên văn phòng một số kinh nghiệm về soạn thảo văn bản, soạn thảo đề thi, tổ chức thi thử online, giới thiệu một số phần mềm cô Hoèn thường dùng để hỗ trợ công việc. Tất cả các kiến thức này đều mang tính chất cá nhân và có thể còn nhiều thiếu xót, chỉ mang tính chất có thêm một kênh tham khảo cho những ai cần. Nên mong mọi người hoan hỉ đón nhận và góp ý thêm ạ.', '', '', '', '', '', '', 0, 'kinh-nghiem-ca-nhan', '', 'Kinh nghiệm cá nhân', ''),
(576, 295, 'english version Sách kết nối tri thức Vật Lý 10', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-sach-ket-noi-tri-thuc-vat-ly-10', '', 'Sách kết nối tri thức Vật Lý 10', ''),
(577, 296, 'Toán THCS', 'vn', '', '', '', '', '', '', '', 0, 'toan-thcs', '', 'Toán THCS', ''),
(578, 296, 'english version Toán 9', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-toan-9', '', 'Toán 9', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttag`
--

CREATE TABLE `producttag` (
  `producttag_id` int(11) NOT NULL,
  `producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sort_order` int(11) NOT NULL,
  `producttag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_created_date` datetime NOT NULL,
  `producttag_update_date` datetime NOT NULL,
  `producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `producttag`
--

INSERT INTO `producttag` (`producttag_id`, `producttag_name`, `producttag_des`, `producttag_content`, `producttag_sort_order`, `producttag_img`, `producttag_created_date`, `producttag_update_date`, `producttag_sub_info1`, `producttag_sub_info2`, `producttag_sub_info3`, `producttag_sub_info4`, `producttag_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(5, 'đỏ', '<p>des</p>\r\n', '<p>content1</p>\r\n', 0, '', '2017-12-12 19:12:53', '2017-12-13 12:12:30', '', '', '', '', '', 1, 'đỏ', 'a1', 'do', 'a1', 1),
(7, 'Xanh', '', '', 0, '', '2017-12-13 12:12:49', '2017-12-13 12:12:49', '', '', '', '', '', 1, 'Xanh', '', 'xanh', '', 1),
(8, 'Vàng', '', '', 0, '', '2017-12-13 12:12:04', '2017-12-13 17:12:26', '', '', '', '', '', 1, 'Vàng', '', 'vang', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttag_languages`
--

CREATE TABLE `producttag_languages` (
  `id` int(11) NOT NULL,
  `producttag_id` int(11) NOT NULL,
  `lang_producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `languages_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `producttag_languages`
--

INSERT INTO `producttag_languages` (`id`, `producttag_id`, `lang_producttag_name`, `languages_code`, `lang_producttag_des`, `lang_producttag_content`, `lang_producttag_sub_info1`, `lang_producttag_sub_info2`, `lang_producttag_sub_info3`, `lang_producttag_sub_info4`, `lang_producttag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(2, 5, 'đỏ', 'vn', '<p>des</p>\r\n', '<p>content1</p>\r\n', '', '', '', '', '', 1, 'do', 'a1', 'đỏ', 'a1'),
(3, 5, 'tag produnt', 'en', '<p>des</p>\r\n', '<p>content</p>\r\n', '', '', '', '', '', 1, 'tag-produnt', 'a', 'tag produnt', 'a'),
(6, 7, 'Xanh', 'vn', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(7, 7, 'Xanh', 'en', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(8, 8, 'Vàng', 'vn', '<p>1</p>\r\n', '<p>1</p>\r\n', '', '', '', '', '', 1, 'vang', '', 'Vàng', ''),
(9, 8, 'yellow', 'en', '', '', '', '', '', '', '', 1, 'vang', '', 'Vàng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_original` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_size` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_package` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_delivery` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_payment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(993, 503, 'vn', 'Khóa Thám Hoa', '', '', '', '', '', '', '3 bài/tuần', '', '', '', '', '', '', '', '1', '<iframe width=\"1268\" height=\"713\" src=\"https://www.youtube.com/embed/N7Av4cMRqdo\" title=\"Học sinh hỏi bài số 2 lớp 11 - Định luật Ôm cho toàn mạch/Ghép nguồn/Dòng điện không đổi\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', '', '', 0, 'khoa-tham-hoa', 'Khóa Thám Hoa', '', ''),
(994, 503, 'en', 'english version Tên khóa học một', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ten-khoa-hoc-mot', 'Tên khóa học một', '', ''),
(995, 504, 'vn', 'Khóa Bảng Nhãn', '', '', '', '', '', '', '1 bài/tuần', '', '', '', '', '', '', '', '', '<iframe width=\"1268\" height=\"713\" src=\"https://www.youtube.com/embed/N7Av4cMRqdo\" title=\"Học sinh hỏi bài số 2 lớp 11 - Định luật Ôm cho toàn mạch/Ghép nguồn/Dòng điện không đổi\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', '', '', 0, 'khoa-bang-nhan', 'Khóa Bảng Nhãn', '', ''),
(996, 504, 'en', 'english version Tên khóa học hai', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ten-khoa-hoc-hai', 'Tên khóa học hai', '', ''),
(997, 505, 'vn', 'Khóa Trạng Nguyên', '', '', '', '', '', '', '1 đề/tuần', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'khoa-trang-nguyen', 'Khóa Trạng Nguyên', '', ''),
(998, 505, 'en', 'english version Khóa Trạng Nguyên', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-khoa-trang-nguyen', 'Khóa Trạng Nguyên', '', ''),
(999, 506, 'vn', 'Vật Lý 11 - Kết nối tri thức', '', '', '', '', '', '', '1 bài/tuần', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'vat-ly-11-ket-noi-tri-thuc', 'Vật Lý 11 - Kết nối tri thức', '', ''),
(1000, 506, 'en', 'english version Sách kết nối tri thức Vật Lý 11 - PHần 1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-sach-ket-noi-tri-thuc-vat-ly-11-phan-1', 'Sách kết nối tri thức Vật Lý 11 - PHần 1', '', ''),
(1001, 507, 'vn', 'Vật Lý 11 - Cánh Diều', '', '', '', '', '', '', '1 bài/tuần', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'vat-ly-11-canh-dieu', 'Vật Lý 11 - Cánh Diều', '', ''),
(1002, 507, 'en', 'english version Sách kết nối tri thức Vật Lý 10 - Phần 1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-sach-ket-noi-tri-thuc-vat-ly-10-phan-1', 'Sách kết nối tri thức Vật Lý 10 - Phần 1', '', ''),
(1003, 508, 'vn', 'Toán 9', '', '', '', '', '', '', '2 bài/tuần', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'toan-9', 'Toán 9', '', ''),
(1004, 508, 'en', 'english version Khóa Toán 9 Cơ bản', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-khoa-toan-9-co-ban', 'Khóa Toán 9 Cơ bản', '', ''),
(1011, 512, 'vn', 'Vật Lý 11 - Chân trời sáng tạo', '', '', '', '', '', '', '1 bài/tuần', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'vat-ly-11-chan-troi-sang-tao', 'Vật Lý 11 - Chân trời sáng tạo', '', ''),
(1012, 512, 'en', 'english version Vật Lý 11 - Chân trời sáng tạo', 'english version ', '', '', 'english version ', '', '', '1 bài/tuần', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-vat-ly-11-chan-troi-sang-tao', 'Vật Lý 11 - Chân trời sáng tạo', '', ''),
(1013, 513, 'vn', 'CHUẨN HOÁ FILE ĐỀ TRẮC NGHIỆM', '', '', '', '', '', '', 'Tuỳ biến', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'chuan-hoa-file-de-trac-nghiem', 'CHUẨN HOÁ FILE ĐỀ TRẮC NGHIỆM', '', ''),
(1014, 513, 'en', 'english version CHUẨN HOÁ FILE ĐỀ TRẮC NGHIỆM', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-chuan-hoa-file-de-trac-nghiem', 'CHUẨN HOÁ FILE ĐỀ TRẮC NGHIỆM', '', ''),
(1015, 514, 'vn', 'BỘ GÕ MATHTYPE - MATHCHA', '', '', '', '', '', '', 'Tuỳ biến', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'bo-go-mathtype-mathcha', 'BỘ GÕ MATHTYPE - MATHCHA', '', ''),
(1016, 514, 'en', 'english version BỘ GÕ MATHTYPE - MATHCHA', 'english version ', '', '', 'english version ', '', '', 'Tuỳ biến', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-bo-go-mathtype-mathcha', 'BỘ GÕ MATHTYPE - MATHCHA', '', ''),
(1017, 515, 'vn', 'Toán 8', '', '', '', '', '', '', '2 bài/tuần', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'toan-8', 'Toán 8', '', ''),
(1018, 515, 'en', 'english version Toán 8', 'english version ', '', '', 'english version ', '', '', '2 bài/tuần', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-toan-8', 'Toán 8', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT 1,
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT 1,
  `regInfor_answer2` int(11) DEFAULT 1,
  `regInfor_answer3` int(11) DEFAULT 1,
  `regInfor_answer4` int(11) DEFAULT 1,
  `regInfor_answer5` int(11) DEFAULT 1,
  `regInfor_answer6` int(11) DEFAULT 1,
  `regInfor_answer7` int(11) DEFAULT 1,
  `regInfor_answer8` int(11) DEFAULT 1,
  `regInfor_answer9` int(11) DEFAULT 1,
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30'),
(14, 'viethung95cute@gmail.com', '2018-06-19'),
(15, 'tuan@gmail.com', '2023-07-13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `service_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `servicetag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `price_nho` bigint(20) NOT NULL,
  `price_vua` bigint(20) NOT NULL,
  `price_lon` bigint(20) NOT NULL,
  `price_dac_biet` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `servicetag_arr`, `price_nho`, `price_vua`, `price_lon`, `price_dac_biet`) VALUES
(65, 'PHÁT HÀNH THẺ CHĂM SÓC Ô TÔ', 'Thanh Sang Auto thông báo phát hành thẻ dịch vụ chăm sóc ô tô tại Garage. Quý khách hàng có thể mua thẻ để làm quà tặng cho người thân, bạn bè của mình. ', '', 'ảnh thẻ thành viên.jpg', '785215', 0, '', '2021-09-05', '2021-10-21', 1, NULL, NULL, NULL, NULL, NULL, 'PHÁT HÀNH THẺ CHĂM SÓC Ô TÔ', 'Giảm Giá Ưu Đãi Tại Thanh Sang Auto', 'phat-hanh-the-cham-soc-o-to', 'Ưu Đãi Tại Thanh Sang Auto', 1, '', 0, 0, 0, 0),
(66, 'LẮP ĐẶT MÀN HÌNH OTO', 'Độ màn hình ô tô, xe hơi đang được rất nhiều chủ xe quan tâm. Có rất nhiều các tìm kiếm phổ biến liên quan tới món phụ kiện công nghệ này như: màn hình dvd ô tô, màn hình ô tô android, màn hình ô tô cảm ứng', '<h3>Độ m&agrave;n h&igrave;nh &ocirc; t&ocirc;, xe hơi đang được rất nhiều chủ xe quan t&acirc;m. C&oacute; rất nhiều c&aacute;c t&igrave;m kiếm phổ biến li&ecirc;n quan tới m&oacute;n phụ kiện c&ocirc;ng nghệ n&agrave;y như: m&agrave;n h&igrave;nh dvd &ocirc; t&ocirc;, m&agrave;n h&igrave;nh &ocirc; t&ocirc; android, m&agrave;n h&igrave;nh &ocirc; t&ocirc; cảm ứng,&hellip;. nhưng tựu chung lại, thắc mắc của anh em thường li&ecirc;n quan đến gi&aacute; m&agrave;n h&igrave;nh &ocirc; t&ocirc;? m&agrave;n h&igrave;nh &ocirc; t&ocirc; tốt nhất? n&ecirc;n lắp m&agrave;n h&igrave;nh &ocirc; t&ocirc; 7 inch, 9 inch, hay 10 inch?. Với lợi thế l&agrave; trung t&acirc;m lắp đặt m&agrave;n h&igrave;nh &ocirc; t&ocirc; uy t&iacute;n tại Gia Lai, l&agrave; đại l&yacute; c&aacute;c thương hiệu nổi tiếng: m&agrave;n h&igrave;nh &ocirc; t&ocirc; Zestech, m&agrave;n h&igrave;nh &ocirc; t&ocirc; Kovar,&hellip;<strong>Thanh Sang Auto</strong> tự tin mang đến cho qu&yacute; Kh&aacute;ch H&agrave;ng những sản phẩm tốt nhất về chất lượng, gi&aacute; b&aacute;n, bảo h&agrave;nh hậu m&atilde;i&hellip;</h3>\r\n\r\n<p><img alt=\"\" height=\"1200\" src=\"/image/images/163952404_1629324120590726_8875899516245883139_n.jpg\" width=\"1200\" /></p>\r\n\r\n<h2><strong>C&oacute; n&ecirc;n lắp m&agrave;n h&igrave;nh android &ocirc; t&ocirc;?</strong></h2>\r\n\r\n<h3><strong>DVD &ocirc; t&ocirc; zin thực sự &ldquo;ngh&egrave;o n&agrave;n&rdquo;</strong></h3>\r\n\r\n<p>Ch&iacute;nh x&aacute;c đ&acirc;y l&agrave; c&acirc;u hỏi m&agrave; anh em cần trả lời đầu ti&ecirc;n, trước khi quyết định c&oacute; n&ecirc;n n&acirc;ng cấp&nbsp;m&agrave;n h&igrave;nh dvd&nbsp;zin l&ecirc;n android.</p>\r\n\r\n<p>X&eacute;t về thiết kế, m&agrave;n h&igrave;nh nguy&ecirc;n bản tr&ecirc;n c&aacute;c d&ograve;ng xe &ocirc; t&ocirc; tầm trung đổ xuống thường kh&ocirc;ng c&oacute; nhiều điểm nổi bật nếu so s&aacute;nh với&nbsp;<strong>m&agrave;n h&igrave;nh android</strong>&nbsp;thế hệ mới c&oacute; viền si&ecirc;u mỏng, độ ph&acirc;n giải sắc n&eacute;t b&ecirc;n trong một k&iacute;ch thước m&agrave;n h&igrave;nh lớn 7 &ndash; 10 inch.</p>\r\n\r\n<h3><strong>V&igrave; sao n&ecirc;n độ m&agrave;n h&igrave;nh &ocirc; t&ocirc; cho xế cưng ?</strong></h3>\r\n\r\n<p>Kh&ocirc;ng phải ngẫu nhi&ecirc;n m&agrave; nhiều chủ xe quyết định trang bị, n&acirc;ng cấp phụ kiện&nbsp;<strong>m&agrave;n h&igrave;nh android&nbsp;</strong>cho xe hơi. Dưới đ&acirc;y l&agrave; những t&iacute;nh năng vượt trội của sản phẩm.</p>\r\n\r\n<h4><strong>M&agrave;n h&igrave;nh android n&acirc;ng tầm kh&ocirc;ng gian nội thất</strong></h4>\r\n\r\n<p>Kh&ocirc;ng qu&aacute; khi n&oacute;i rằng&nbsp;<strong>m&agrave;n h&igrave;nh android &ocirc; t&ocirc;</strong>&nbsp;gi&uacute;p n&acirc;ng tầm sự sang trọng &amp; hiện đại cho to&agrave;n bộ kh&ocirc;ng gian nội thất xe. Thiết kế tinh tế với viền m&agrave;n h&igrave;nh si&ecirc;u mỏng, chất lượng&nbsp;<em>full HD</em>&nbsp;cho g&oacute;c nh&igrave;n tho&aacute;ng đạt, mang lại cảm gi&aacute;c nhẹ nh&agrave;ng, rộng r&atilde;i cho h&agrave;nh kh&aacute;ch.</p>\r\n\r\n<p>So với m&agrave;n h&igrave;nh zin c&oacute; phần &ldquo;lỗi thời&rdquo;,&nbsp;m&agrave;n h&igrave;nh &ocirc; t&ocirc; android&nbsp;thực sự đ&atilde; mang đến một trải nghiệm mới mẻ, đầy hứng th&uacute; cho bất kỳ ai sở hữu m&oacute;n phụ kiện n&agrave;y.<img alt=\"\" height=\"1200\" src=\"/image/images/164067088_1629324520590686_305606933960348352_n.jpg\" width=\"1200\" /></p>\r\n\r\n<h4><strong>Điều khiển m&agrave;n h&igrave;nh bằng giọng n&oacute;i</strong></h4>\r\n\r\n<p>Cho ph&eacute;p t&agrave;i xế điều khiển bằng giọng n&oacute;i l&agrave; một trong những t&iacute;nh năng đ&aacute;ng tiền nhất của&nbsp;<strong>m&agrave;n h&igrave;nh dvd android.</strong>&nbsp;Chỉ với thao t&aacute;c đơn giản, th&ocirc;ng qua n&uacute;t bấm khởi động t&iacute;ch hợp tr&ecirc;n v&ocirc; lăng, mọi chức năng đều c&oacute; thể được k&iacute;ch hoạt qua c&acirc;u lệnh, từ mở camera, chỉ dẫn đường hay nghe nhạc, xem phim,&hellip;</p>\r\n\r\n<p>L&uacute;c n&agrave;y, b&aacute;c t&agrave;i c&oacute; thể &ldquo;rảnh mắt, rảnh tay&rdquo;, tập trung 100% v&agrave;o việc l&aacute;i xe để đảm bảo an to&agrave;n tối đa.</p>\r\n\r\n<h4><strong>Kết nối internet mọi l&uacute;c mọi nơi</strong></h4>\r\n\r\n<p>Giống như một chiếc m&aacute;y t&iacute;nh bảng th&ocirc;ng minh, &nbsp;<strong>m&agrave;n h&igrave;nh &ocirc; t&ocirc; android&nbsp;</strong>hỗ trợ lắp sim 4G &ndash; khả năng kết nối internet mọi l&uacute;c mọi nơi. Kết nối linh hoạt gi&uacute;p m&agrave;n h&igrave;nh &ocirc; t&ocirc; c&oacute; thể ph&aacute;t huy tối đa những t&iacute;nh năng được trang bị.</p>\r\n\r\n<p>Người d&ugrave;ng c&oacute; thể thoải m&aacute;i sử dụng c&aacute;c ứng dụng giải tr&iacute; trực tuyến một c&aacute;ch nhanh nhất. Lướt web xem tin tức, thời sự, xem youtube, nghe nhạc trực tuyến, truyền tải dữ liệu,&hellip; cho đến việc trở th&agrave;nh điểm truy cập wifi cho điện thoại / laptop trở n&ecirc;n dễ d&agrave;ng hơn bao giờ hết.</p>\r\n\r\n<p>Phụ kiện cũng được trang bị đầy đủ c&aacute;c chuẩn kết nối ngoại vi: USB, Bluetooth,&hellip;.</p>\r\n\r\n<h4><strong>M&agrave;n h&igrave;nh android dẫn đường th&ocirc;ng minh</strong></h4>\r\n\r\n<p>T&iacute;nh năng hỗ trợ dẫn đường của&nbsp;<strong>DVD android</strong>&nbsp;được giới chủ xe đ&aacute;nh gi&aacute; cao bởi cập nhật nhanh ch&oacute;ng v&agrave; t&iacute;nh ch&iacute;nh x&aacute;c cao. T&ugrave;y v&agrave;o mỗi d&ograve;ng m&agrave;n h&igrave;nh sẽ hỗ trợ c&aacute;c loại bản đồ kh&aacute;c nhau như VietMap S1, Google Map, Navitel,&hellip;</p>\r\n\r\n<p>Th&ocirc;ng qua ứng dụng, b&aacute;c t&agrave;i c&oacute; thể l&aacute;i xe nhanh ch&oacute;ng, dễ d&agrave;ng hơn, nhất l&agrave; khi di chuyển tr&ecirc;n những h&agrave;nh tr&igrave;nh d&agrave;i. Ngo&agrave;i ra, một số t&iacute;nh năng cảnh b&aacute;o kh&aacute;c cũng rất tiện lợi tr&ecirc;n bản đồ như định vị GPS, cảnh b&aacute;o tắc đường, cảnh b&aacute;o giới hạn tốc độ,&hellip;</p>\r\n\r\n<p><img alt=\"\" height=\"1200\" src=\"/image/images/241126129_1743898032466667_4653776621030480513_n.jpg\" width=\"1200\" /></p>\r\n\r\n<h4><strong>T&iacute;ch hợp t&iacute;nh năng hỗ trợ l&aacute;i xe an to&agrave;n</strong></h4>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh DVD android</strong>&nbsp;hiện đại được t&iacute;ch hợp nhiều chức năng, g&oacute;p phần mang đến cho b&aacute;c t&agrave;i những trải nghiệm l&aacute;i xe an to&agrave;n nhất.</p>\r\n\r\n<p>&ndash; M&agrave;n h&igrave;nh c&oacute; khả năng kết nối với bộ 3 camera: camera h&agrave;nh tr&igrave;nh, camera 360, camera l&ugrave;i v&agrave; hiển thị h&igrave;nh ảnh ngay tr&ecirc;n m&agrave;n h&igrave;nh lớn, gi&uacute;p b&aacute;c t&agrave;i trực tiếp quan s&aacute;t dễ d&agrave;ng, từ đ&oacute; đưa ra xử l&yacute; tốt nhất.</p>\r\n\r\n<p>&ndash; T&iacute;ch hợp hiển thị th&ocirc;ng tin cảm biến &aacute;p suất lốp để chủ động theo d&otilde;i 24/24, đảm bảo an to&agrave;n tối đa. Khi c&oacute; bất thường, l&aacute;i xe c&oacute; thể cập nhanh th&ocirc;ng tin qua m&agrave;n h&igrave;nh hoặc hệ thống &acirc;m thanh cảnh b&aacute;o tr&ecirc;n xe.</p>\r\n\r\n<p>&ndash; C&ocirc;ng nghệ mới c&ograve;n cho ph&eacute;p&nbsp;<strong>m&agrave;n h&igrave;nh android &ocirc; t&ocirc;</strong>&nbsp;hiển thị cảnh b&aacute;o an to&agrave;n, c&aacute;c th&ocirc;ng tin li&ecirc;n quan đến qu&aacute; tr&igrave;nh hoạt động của xe để b&aacute;c t&agrave;i l&agrave;m chủ được qu&aacute; tr&igrave;nh xe vận h&agrave;nh.</p>\r\n\r\n<h4><strong>K&ecirc;nh giải tr&iacute; đa phương tiện tiện dụng</strong></h4>\r\n\r\n<p>Sở hữu m&agrave;n h&igrave;nh cảm ứng 7 &ndash; 10 inch hiện đại, độ ph&acirc;n giải Full HD mang lại g&oacute;c nh&igrave;n sắc n&eacute;t. Đ&acirc;y l&agrave; yếu tố quan trọng biến chiếc m&agrave;n h&igrave;nh android &ocirc; t&ocirc; trở th&agrave;nh thiết bị giải tr&iacute; chất lượng nhất.</p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh t&iacute;ch hợp lắp sim 4G</em>&nbsp;cho ph&eacute;p kết nối internet dễ d&agrave;ng, gi&uacute;p c&aacute;c ứng dụng giải tr&iacute; hoạt động mượt m&agrave; nhất. Biến&nbsp;<strong>dvd android</strong>&nbsp;trở th&agrave;nh một chiếc m&aacute;y t&iacute;nh bảng c&oacute; thể đ&aacute;p ứng mọi nhu cầu giải tr&iacute; của chủ xe: xem phim, nghe nhạc, lướt web, tải ứng dụng dễ d&agrave;ng từ CH Play,&hellip;</p>\r\n\r\n<h2><strong>Trung t&acirc;m lắp m&agrave;n h&igrave;nh &ocirc; t&ocirc; uy t&iacute;n tại Gia Lai</strong></h2>\r\n\r\n<p>Lựa chọn&nbsp;<strong>trung t&acirc;m lắp đặt m&agrave;n h&igrave;nh &ocirc; t&ocirc;</strong>&nbsp;uy t&iacute;n để đảm bảo quyền lợi về l&acirc;u d&agrave;i cho anh em. Chế độ bảo h&agrave;nh hậu m&atilde;i, sản phẩm chất lượng, lắp đặt đ&uacute;ng kĩ thuật, hướng dẫn sử dụng chi tiết,&hellip; l&agrave; những lợi &iacute;ch chỉ c&oacute; tại c&aacute;c trung t&acirc;m đồ chơi &ocirc; t&ocirc; uy t&iacute;n.</p>\r\n\r\n<p>Đến với <strong>Thanh Sang Auto</strong>, ch&uacute;ng t&ocirc;i cam kết:</p>\r\n\r\n<p>✅&nbsp;Đội ngũ kỹ thuật vi&ecirc;n chuy&ecirc;n nghiệp được đ&agrave;o tạo b&agrave;i bản sẽ gi&uacute;p giải quyết mọi vấn đề nhanh ch&oacute;ng v&agrave; chuẩn x&aacute;c nhất.</p>\r\n\r\n<p>✅&nbsp;<strong>M&agrave;n h&igrave;nh android &ocirc; t&ocirc;</strong>&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng, giấy tờ chứng từ r&otilde; r&agrave;ng sẽ đảm bảo được chất lượng cho phụ kiện lắp tr&ecirc;n xe Kh&aacute;ch H&agrave;ng</p>\r\n\r\n<p>✅&nbsp;Chế độ bảo h&agrave;nh tận t&acirc;m gi&uacute;p Kh&aacute;ch H&agrave;ng thoải m&aacute;i khi trải nghiệm sản phẩm.</p>\r\n\r\n<p>✅&nbsp;Gi&aacute; cả được&nbsp;<em>ni&ecirc;m yết</em>&nbsp;r&otilde; r&agrave;ng để Kh&aacute;ch H&agrave;ng c&oacute; thể t&iacute;nh to&aacute;n v&agrave; chuẩn bị được nguồn kinh ph&iacute; hợp l&yacute; nhất trước khi tiến h&agrave;nh n&acirc;ng cấp xế hộp.</p>\r\n\r\n<p>✅&nbsp;Cung cấp dịch vụ&nbsp;<strong>lắp m&agrave;n h&igrave;nh &ocirc; t&ocirc; tại nh&agrave;</strong>&hellip;</p>\r\n\r\n<p><img alt=\"\" height=\"760\" src=\"/image/images/233791027_1728714530651684_1531221821608009847_n.jpg\" width=\"1140\" /></p>\r\n\r\n<h3><strong>Dịch vụ lắp m&agrave;n h&igrave;nh android oto tại nh&agrave;</strong></h3>\r\n\r\n<p>Nhằm phục vụ kh&aacute;ch h&agrave;ng tốt nhất, <strong>Thanh Sang Auto</strong> ti&ecirc;n phong triển khai g&oacute;i dịch vụ Home Service cho&nbsp;<strong>lắp đặt m&agrave;n h&igrave;nh &ocirc; t&ocirc; tại nh&agrave;</strong>, MIỄN PH&Iacute; nội th&agrave;nh Gia Lai</p>\r\n\r\n<p>Dịch vụ giải quyết được nỗi lo di chuyển xa hay kh&ocirc;ng sắp xếp được thời gian của chủ xe, để c&oacute; thể trang bị m&oacute;n phụ kiện chất lượng cho xế y&ecirc;u của m&igrave;nh ngay tại nh&agrave;. Điều quan trọng l&agrave; vẫn được đảm bảo về chất lượng dịch vụ v&agrave; sản phẩm, bảo h&agrave;nh uy t&iacute;n v&agrave; chi ph&iacute; hợp l&yacute; nhất.</p>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch H&agrave;ng c&oacute; nhu cầu&nbsp;<strong>lắp đặt m&agrave;n h&igrave;nh android cho &ocirc; t&ocirc;</strong>, vui l&ograve;ng li&ecirc;n hệ&nbsp;<strong>Hotline 0973 262 612</strong>&nbsp;hoặc để lại số điện thoại để nhận được tư vấn miễn ph&iacute; trong thời gian nhanh nhất từ Thanh Sang Auto</p>\r\n\r\n<p>Địa chỉ:&nbsp;03-05 L&ecirc; Th&aacute;nh T&ocirc;n, Pleiku, Gia Lai</p>\r\n\r\n<p>Tel:&nbsp;0973 262 612</p>\r\n\r\n<p>Email:&nbsp;gnassang14@gmail.com</p>\r\n\r\n<p>Website:&nbsp;<a href=\"https://thanhsangauto.com/\">thanhsangauto.com</a></p>\r\n', 'z2665802235668_a1d843a27cc844eea865dc27e2c27ef7.jpg', '56452', 0, 'Thanh Sang Auto', '2021-09-13', '2021-10-24', 1, NULL, NULL, NULL, NULL, NULL, 'LẮP ĐẶT MÀN HÌNH OTO', 'Lắp Đặt Màn Hình Ôto - Thanh Sang Auto', 'lap-dat-man-hinh-oto', 'Lắp Đặt Màn Hình Ôto - Thanh Sang Auto', 1, '', 0, 0, 0, 0),
(67, 'DÁN PHIM CÁCH NHIỆT HI-KOOL', 'Bạn đang tìm hiểu về phim cách nhiệt ô tô? Bạn phân vân có nên dán phim cách nhiệt cho ô tô? Đâu là thương hiệu phim cách nhiệt ô tô tốt nhất hiện nay: phim cách nhiệt ô tô 3M, phim cách nhiệt ô tô Ntech, phim cách nhiệt ô tô Luxo, phim cách nhiệt ô tô Vkool, phim cách nhiệt ô tô Suntek ? Sau khi chọn được dòng phim chất lượng, bạn chưa biết sẽ dán phim cách nhiệt ô tô ở đâu tại Gia Lai? Giá dán phim cách nhiệt ô tô đắt rẻ như thế nào? Hãy cùng Thanh Sang Auto làm rõ những thắc mắc trên nhé!', '<p>Bạn đang t&igrave;m hiểu về phim c&aacute;ch nhiệt &ocirc; t&ocirc;? Bạn ph&acirc;n v&acirc;n c&oacute; n&ecirc;n d&aacute;n phim c&aacute;ch nhiệt cho &ocirc; t&ocirc;? Đ&acirc;u l&agrave; thương hiệu phim c&aacute;ch nhiệt &ocirc; t&ocirc; tốt nhất hiện nay: phim c&aacute;ch nhiệt &ocirc; t&ocirc; 3M, phim c&aacute;ch nhiệt &ocirc; t&ocirc; Ntech, phim c&aacute;ch nhiệt &ocirc; t&ocirc; Luxo, phim c&aacute;ch nhiệt &ocirc; t&ocirc; Vkool, phim c&aacute;ch nhiệt &ocirc; t&ocirc; Suntek ? Sau khi chọn được d&ograve;ng phim chất lượng, bạn chưa biết sẽ d&aacute;n phim c&aacute;ch nhiệt &ocirc; t&ocirc; ở đ&acirc;u tại Gia Lai? Gi&aacute; d&aacute;n phim c&aacute;ch nhiệt &ocirc; t&ocirc; đắt rẻ như thế n&agrave;o? H&atilde;y c&ugrave;ng <strong>Thanh Sang Auto</strong> l&agrave;m r&otilde; những thắc mắc tr&ecirc;n nh&eacute;!</p>\r\n\r\n<p><img alt=\"\" height=\"897\" src=\"/image/images/234803142_1733130003543470_3369892124658607226_n.jpg\" width=\"1350\" /></p>\r\n\r\n<p><strong>D&aacute;n phim c&aacute;ch nhiệt &ocirc; t&ocirc;</strong>, xe hơi&nbsp;l&agrave; giải ph&aacute;p chống n&oacute;ng&nbsp;hữu hiệu v&agrave; to&agrave;n diện nhất&nbsp;cho xế y&ecirc;u. So với những biện ph&aacute;p th&ocirc;ng thường như d&ugrave;ng &aacute;o tr&ugrave;m xe, tấm che nắng, việc chủ xe d&aacute;n&nbsp;<strong>film c&aacute;ch nhiệt&nbsp;</strong>bảo đảm&nbsp;t&iacute;nh linh hoạt tuyệt đối.</p>\r\n\r\n<h2><strong>D&aacute;n phim c&aacute;ch nhiệt &ocirc; t&ocirc; cho xế y&ecirc;u, N&ecirc;n hay Kh&ocirc;ng?</strong></h2>\r\n\r\n<p>Nắng n&oacute;ng gay gắt ở Việt Nam với nền nhiệt vượt ngưỡng 39-40&deg;C l&agrave; nỗi &ldquo;&aacute;m ảnh kinh ho&agrave;ng&rdquo; của&nbsp;chủ xe mỗi khi ra đường. Điều n&agrave;y đe dọa trực tiếp đến an to&agrave;n sức khỏe con người&nbsp;cũng như gi&aacute; trị xe.</p>\r\n\r\n<p>&ndash;&nbsp;<em>Nội thất xe xuống cấp</em>: Những chi tiết mặt taplo, tay cầm v&ocirc; lăng, ghế da, linh kiện điện tử,&hellip; nhanh ch&oacute;ng bạc m&agrave;u, xuống cấp sau thời gian sử dụng,&nbsp;ảnh hưởng đến sử dụng xe v&agrave; t&iacute;nh thẩm mỹ. Một số chất dễ biến đổi dưới t&aacute;c động của nhiệt độ sẽ sinh ra m&ugrave;i h&ocirc;i kh&oacute; chịu v&agrave; độc hại.</p>\r\n\r\n<p>&ndash;&nbsp;<em>Đe dọa an to&agrave;n sức khỏe</em>: Bề mặt da tay, da mặt bị kh&ocirc; r&aacute;t, đen sạm ngay cả khi ngồi trong xe &ocirc; t&ocirc;. Nguy hiểm hơn, tia UV c&ograve;n g&acirc;y ra nhiều bệnh nguy hiểm như&nbsp;vi&ecirc;m gi&aacute;c mạc, đục thủy tinh thể (mắt), ung thư da,&hellip;</p>\r\n\r\n<p><img alt=\"Thanh Sang Auto\" height=\"859\" src=\"/image/images/DSCF5405.JPG\" width=\"1288\" /></p>\r\n\r\n<p>V&igrave; an to&agrave;n cơ thể v&agrave; giữ g&igrave;n gi&aacute; trị của&nbsp;phương tiện, Qu&yacute; Kh&aacute;ch H&agrave;ng&nbsp;cần c&oacute; giải ph&aacute;p xử l&yacute; sớm nhất. Trong đ&oacute;,&nbsp;<strong>d&aacute;n phim c&aacute;ch nhiệt &ocirc;t&ocirc;</strong>&nbsp;(d&aacute;n film c&aacute;ch nhiệt &ocirc; t&ocirc;) được đ&ocirc;ng đảo chủ xe lựa chọn v&agrave; mang lại hiệu quả vượt trội.</p>\r\n\r\n<h3><strong>Phim c&aacute;ch nhiệt &ocirc; t&ocirc; l&agrave; g&igrave;?</strong></h3>\r\n\r\n<p><strong>Phim c&aacute;ch nhiệt &ocirc; t&ocirc;</strong>, hay c&ograve;n gọi&nbsp;<strong>film c&aacute;ch nhiệt &ocirc; t&ocirc;</strong>, phim c&aacute;ch nhiệt xe hơi l&agrave; vật liệu c&aacute;ch nhiệt được cấu th&agrave;nh từ nhiều lớp nhựa polyester. Mỗi lớp đều tr&aacute;ng phủ c&aacute;c chất c&aacute;ch nhiệt như kim loại, carbon, nano ceramic,&hellip; Ngo&agrave;i ra, tấm phim c&oacute; t&iacute;ch hợp sẵn keo d&iacute;nh cực mỏng v&agrave; trong suốt,&nbsp; cho độ b&aacute;m d&iacute;nh tốt.</p>\r\n\r\n<p><img alt=\"Thanh Sang Auto\" height=\"859\" src=\"/image/images/DSCF5406.JPG\" width=\"1287\" /></p>\r\n\r\n<p>C&ocirc;ng nghệ&nbsp;<strong>film c&aacute;ch nhiệt</strong>&nbsp;đa dạng, bao gồm nano ceramic, ph&uacute;n xạ kim loại, tr&aacute;ng phủ kim loại v&agrave; nhuộm m&agrave;u. Trong đ&oacute;, nano ceramic v&agrave; ph&uacute;n xạ kim loại được ứng dụng phổ biến hơn.</p>\r\n\r\n<h3><strong>Những T&aacute;c Dụng của phim c&aacute;ch nhiệt &ocirc; t&ocirc;</strong></h3>\r\n\r\n<p>Kh&ocirc;ng chỉ&nbsp;c&aacute;ch nhiệt, việc&nbsp;d&aacute;n k&iacute;nh &ocirc; t&ocirc; c&ograve;n mang lại nhiều t&aacute;c dụng tuyệt vời kh&aacute;c cho người sử dụng v&agrave; phương tiện.</p>\r\n\r\n<p>1.&nbsp;<em>Ổn định nhiệt độ&nbsp;trong xe</em>:&nbsp;<strong>Phim c&aacute;ch nhiệt</strong>&nbsp;c&oacute; khả năng ngăn chặn&nbsp; từ 60-98% nhiệt lượng truyền v&agrave;o b&ecirc;n trong, gi&uacute;p ổn định nhiệt độ m&aacute;t mẻ hơn so với ngo&agrave;i trời.&nbsp;L&uacute;c n&agrave;y, h&agrave;nh kh&aacute;ch&nbsp;thoải m&aacute;i, dễ chịu hơn;&nbsp;b&aacute;c t&agrave;i cũng giữ trạng th&aacute;i tỉnh t&aacute;o, tập trung l&aacute;i xe an to&agrave;n.</p>\r\n\r\n<p>2.&nbsp;<em>Loại bỏ UV, bảo vệ sức khỏe&nbsp;</em>: Vật liệu c&aacute;ch nhiệt n&agrave;y<strong>&nbsp;</strong>c&oacute; thể triệt ti&ecirc;u hơn 99,9% tia UV c&oacute; hại trong &aacute;nh s&aacute;ng mặt trời để bảo vệ cho h&agrave;nh kh&aacute;ch khỏi những vấn đề nguy hiểm về mắt v&agrave; da.</p>\r\n\r\n<p>3.&nbsp;<em>Tiết kiệm nhi&ecirc;n liệu xe</em>: Khi nhiệt độ trong xe ổn định, chủ xe c&oacute; thể giảm bớt c&ocirc;ng suất hoạt động của hệ thống l&agrave;m m&aacute;t, gi&uacute;p tiết kiệm nguồn nhi&ecirc;n liệu v&agrave; tăng tuổi thọ thiết bị.</p>\r\n\r\n<p>4.&nbsp;<em>Tiết kiệm chi ph&iacute; bảo dưỡng</em>: Phim d&aacute;n c&aacute;ch nhiệt c&ograve;n ngăn&nbsp; sự ph&aacute; hủy của nhiệt độ v&agrave; tia UV l&ecirc;n c&aacute;c chi tiết ghế da, taplo, linh kiện điện tử,&hellip;&nbsp;Nhờ đ&oacute;, chủ xe c&oacute; thể tiết kiệm chi ph&iacute; sửa chữa hay thay mới.</p>\r\n\r\n<p><em>5. Hỗ trợ l&aacute;i xe an to&agrave;n</em>: D&aacute;n k&iacute;nh &ocirc; t&ocirc;&nbsp;giảm mức s&aacute;ng từ mặt trời hoặc đ&egrave;n pha đối diện, chống ch&oacute;i l&oacute;a hay mỏi mắt cho b&aacute;c t&agrave;i, nhất l&agrave; khi di chuyển đường d&agrave;i; Tăng cường t&iacute;nh chắc chắn cho k&iacute;nh xe,&nbsp;an to&agrave;n khi c&oacute; va chạm.</p>\r\n\r\n<p>6.&nbsp;<em>Bảo đảm t&iacute;nh ri&ecirc;ng tư, k&iacute;n đ&aacute;o</em>: Phim tối m&agrave;u ngăn cản&nbsp;&aacute;nh nh&igrave;n từ b&ecirc;n ngo&agrave;i v&agrave;o trong xe, mang lại sự ri&ecirc;ng tư, k&iacute;n đ&aacute;o cho chủ xe v&agrave; h&agrave;nh kh&aacute;ch. Đồng thời, đối tượng xấu kh&oacute; c&oacute; thể &ldquo;nh&ograve;m ng&oacute;&rdquo; t&agrave;i sản b&ecirc;n trong xe.</p>\r\n\r\n<p>7.&nbsp;<em>Chống trộm, bảo vệ t&agrave;i sản trong xe</em>: D&aacute;n phim gi&uacute;p&nbsp;cố định mảnh k&iacute;nh vỡ, l&agrave;m chậm thao t&aacute;c ph&aacute; k&iacute;nh, trộm cắp khi chủ xe kh&ocirc;ng cho ph&eacute;p.</p>\r\n\r\n<p>8.&nbsp;<em>Thẩm mỹ v&agrave; c&aacute; t&iacute;nh hơn</em>: M&agrave;u phim mới gi&uacute;p xế y&ecirc;u th&ecirc;m ấn tượng v&agrave; phong c&aacute;ch hơn. C&ugrave;ng với đ&oacute;, cũng thể hiện đẳng cấp v&agrave; c&aacute; t&iacute;nh ri&ecirc;ng&nbsp;chủ xe.</p>\r\n\r\n<h2><strong>Khi n&agrave;o chủ xe cần d&aacute;n phim c&aacute;ch nhiệt ?</strong></h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"1292\" src=\"/image/images/z2782408746592_faff4c851900566ef01edef54da0c13d.jpg\" width=\"969\" /></p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; những nguy&ecirc;n tắc quan trọng m&agrave; chủ xe cần lưu &yacute; khi d&aacute;n phim cho xế y&ecirc;u.</p>\r\n\r\n<h3><strong>D&aacute;n phim c&aacute;ch nhiệt c&oacute; bị phạt kh&ocirc;ng?</strong></h3>\r\n\r\n<p>C&oacute; thể nhiều chủ xe sợ rằng&nbsp;<strong>d&aacute;n k&iacute;nh &ocirc; t&ocirc;</strong>&nbsp;tối m&agrave;u c&oacute; thể bị &ldquo;tu&yacute;t c&ograve;i&rdquo;. Thực tế, chưa c&oacute; điều luật n&agrave;o quy định&nbsp;<strong>d&aacute;n phim c&aacute;ch nhiệt</strong>&nbsp;sẽ bị xử phạt.</p>\r\n\r\n<p>Chủ xe c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m sử dụng&nbsp;phim c&aacute;ch nhiệt&nbsp;cho xế y&ecirc;u của m&igrave;nh, miễn sao cảm thấy thoải m&aacute;i&nbsp;v&agrave;&nbsp;an to&agrave;n khi&nbsp;tham gia giao th&ocirc;ng.</p>\r\n\r\n<h3><strong>Phim c&aacute;ch nhiệt d&aacute;n trong hay ngo&agrave;i k&iacute;nh?</strong></h3>\r\n\r\n<p><strong>Film c&aacute;ch nhiệt &ocirc; t&ocirc;</strong>&nbsp;d&aacute;n trong k&iacute;nh xe, thay v&igrave; mặt&nbsp;ngo&agrave;i như nhiều chủ xe vẫn nghĩ. Điều n&agrave;y vừa ph&aacute;t huy triệt để khả năng c&aacute;ch nhiệt, vừa giữ cho tấm phim kh&ocirc;ng bị bay m&agrave;u hay bong tr&oacute;c trước t&aacute;c động của thời tiết.</p>\r\n\r\n<p>Vậy d&aacute;n phim cho k&iacute;nh xe&nbsp;c&oacute; l&acirc;u kh&ocirc;ng? T&ugrave;y thuộc v&agrave;o phần diện t&iacute;ch k&iacute;nh d&aacute;n, trung b&igrave;nh khoảng từ 2,5-3 giờ cho xe Sedan v&agrave; 3,5-5 giờ&nbsp;cho xe SUV/MPV (nếu d&aacute;n to&agrave;n bộ k&iacute;nh).</p>\r\n\r\n<h3><strong>Quy tr&igrave;nh d&aacute;n phim đạt ti&ecirc;u chuẩn quốc tế</strong></h3>\r\n\r\n<p><strong><img alt=\"\" height=\"678\" src=\"/image/images/DSCF5405.JPG\" width=\"1017\" /></strong></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;<em>D&aacute;n phim k&iacute;nh&nbsp;&ocirc; t&ocirc; đạt chuẩn tại Thanh Sang Auto</em></p>\r\n\r\n<p>Th&ocirc;ng thường,&nbsp;<strong>d&aacute;n phim c&aacute;ch nhiệt &ocirc; t&ocirc;</strong>&nbsp;đạt chuẩn bắt buộc tiến h&agrave;nh đầy đủ v&agrave; đ&uacute;ng kỹ thuật c&aacute;c bước sau:</p>\r\n\r\n<p>Bước 1: Tiếp nhận v&agrave; kiểm tra xe, k&iacute;nh xe.</p>\r\n\r\n<p>Bước 2: L&agrave;m sạch bề mặt trong v&agrave; ngo&agrave;i k&iacute;nh xe.</p>\r\n\r\n<p>Bước 3: Chuẩn bị phim v&agrave; dung dịch hỗn hợp. Bước n&agrave;y cần sự tỉ mỉ v&agrave; ch&iacute;nh x&aacute;c khi đo đạc bề mặt k&iacute;nh cần d&aacute;n.</p>\r\n\r\n<p>Bước 4:&nbsp;<strong>D&aacute;n phim c&aacute;ch nhiệt</strong>&nbsp;l&ecirc;n k&iacute;nh sao cho c&acirc;n đối, sau đ&oacute; d&ugrave;ng gạt k&iacute;nh loại bỏ nước v&agrave; bọt kh&iacute; giữa mặt tiếp x&uacute;c k&iacute;nh xe v&agrave; phim.</p>\r\n\r\n<p>Bước 5: Sấy lại mặt phim&nbsp;v&agrave; kiểm tra lại to&agrave;n bộ xe.</p>\r\n\r\n<p>Bước 6: B&agrave;n giao xe v&agrave; tư vấn sử dụng.</p>\r\n\r\n<h3><strong>Trung t&acirc;m chuy&ecirc;n d&aacute;n phim c&aacute;ch nhiệt &ocirc; t&ocirc; ch&iacute;nh h&atilde;ng &ndash; Thanh Sang Auto</strong></h3>\r\n\r\n<p>Thanh Sang Auto l&agrave; đơn vị&nbsp;chuy&ecirc;n&nbsp;<strong>d&aacute;n phim c&aacute;ch nhiệt</strong>&nbsp;uy t&iacute;n tại Gia Lai. Với hơn 8 năm trong nghề, ch&uacute;ng t&ocirc;i khao kh&aacute;t mang đến tay Qu&yacute; vị&nbsp;những dịch vụ uy t&iacute;n v&agrave; chất lượng nhất.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"714\" src=\"/image/images/DSCF5412.JPG\" width=\"1071\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Thanh Sang Auto chuy&ecirc;n cung cấp phim c&aacute;ch nhiệt &ocirc; t&ocirc; ch&iacute;nh h&atilde;ng</em></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>Chuy&ecirc;n cung cấp&nbsp;<strong>phim c&aacute;ch nhiệt</strong>&nbsp;ch&iacute;nh h&atilde;ng&nbsp;với gi&aacute; ni&ecirc;m yết hợp l&yacute;, ph&ugrave; hợp nhiều đối tượng kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Đội ngũ kỹ thuật&nbsp;được đ&agrave;o tạo b&agrave;i bản, c&oacute; kinh nghiệm d&aacute;n phim chuy&ecirc;n nghiệp.</p>\r\n\r\n<p>Quy tr&igrave;nh thi c&ocirc;ng&nbsp;đạt chuẩn.</p>\r\n\r\n<p>Điều kiện d&aacute;n phim chuy&ecirc;n nghiệp: Ph&ograve;ng d&aacute;n phim rộng, đạt ti&ecirc;u chuẩn về &aacute;nh s&aacute;ng, nhiệt độ, độ ẩm,&hellip;; Dụng cụ vật tư chuy&ecirc;n dụng đầy đủ, mới nhất.</p>\r\n\r\n<p>Chế độ h&agrave;nh uy t&iacute;n v&agrave; l&acirc;u d&agrave;i.</p>\r\n\r\n<p><strong>H&atilde;y li&ecirc;n hệ ngay&nbsp;Thanh Sang Auto để nhận tư vấn về sản phẩm!</strong>&nbsp;</p>\r\n\r\n<p>Địa chỉ: 03 - 03 L&ecirc; Th&aacute;nh T&ocirc;n - Tp.Pleiku - Tỉnh Gia Lai</p>\r\n\r\n<p>Hotline:&nbsp;0973 262 612</p>\r\n\r\n<p>Email:&nbsp;gnassang14@gmail.com</p>\r\n\r\n<p>Website:&nbsp;<a href=\"https://thanhsangauto.com/\">thanhsangauto.com</a></p>\r\n', 'z2665802227568_83450495d48ad2bd2946dcd19ed938a8.jpg', '59434', 0, 'Thanh Sang Auto', '2021-09-13', '2021-10-24', 1, NULL, NULL, NULL, NULL, NULL, 'DÁN PHIM CÁCH NHIỆT HI-KOOL', 'Thanh Sang Auto - Dán Phim Cách Nhiệt Hi Kool', 'dan-phim-cach-nhiet-hi-kool', 'Thanh Sang Auto - Dán Phim Cách Nhiệt Hi Kool', 1, '', 0, 0, 0, 0),
(68, 'NÂNG CẤP ĐÈN BI CHÍNH HÃNG TẠI THANH SANG AUTO', 'Độ đèn ô tô là gói độ xe được giới chủ xe đặc biệt quan tâm. Vậy, Quý Khách Hàng quan tâm điều gì nhất khi độ đèn cho xế cưng? Mức sáng của đèn sau khi độ, thẩm mỹ hay phong cách,…?', '<p dir=\"ltr\">Ri&ecirc;ng với <strong>Thanh Sang Auto</strong>, ch&uacute;ng t&ocirc;i ưu ti&ecirc;n yếu tố &ldquo;<strong>độ đ&egrave;n tăng s&aacute;ng an to&agrave;n</strong>&rdquo; l&ecirc;n h&agrave;ng đầu. Phạm tr&ugrave; &ldquo;tăng s&aacute;ng an to&agrave;n&rdquo; ở đ&acirc;y l&agrave; g&igrave;? C&ugrave;ng theo d&otilde;i b&agrave;i viết dưới đ&acirc;y để hiểu th&ecirc;m về độ đ&egrave;n tăng s&aacute;ng an to&agrave;n tại <strong>Thanh Sang Auto</strong> nh&eacute;!</p>\r\n\r\n<h2 dir=\"ltr\"><strong>1.&nbsp;C&oacute; n&ecirc;n độ đ&egrave;n xe &ocirc; t&ocirc; tăng s&aacute;ng cho &ldquo;vợ hai&rdquo;?</strong></h2>\r\n\r\n<p>Đ&egrave;n xe l&agrave; giữ nhiệm vụ cung cấp &aacute;nh s&aacute;ng cho b&aacute;c t&agrave;i quan s&aacute;t v&agrave; điều khiển phương tiện một c&aacute;ch an to&agrave;n khi l&aacute;i xe trong điều kiện &aacute;nh s&aacute;ng yếu.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, hầu hết &ocirc; t&ocirc; tr&ecirc;n thị trường hiện nay chỉ được trang bị b&oacute;ng đ&egrave;n Halogen truyền thống. Loại b&oacute;ng n&agrave;y cho &aacute;nh s&aacute;ng v&agrave;ng, mức s&aacute;ng hạn chế.Trong những trường hợp kh&ocirc;ng c&oacute; đ&egrave;n đường hỗ trợ, mức s&aacute;ng tr&ecirc;n chưa thể đảm bảo tầm nh&igrave;n, tiềm ẩn nguy cơ va chạm, tai nạn giao th&ocirc;ng.</p>\r\n\r\n<p>Chưa kể, ở nhiều d&ograve;ng xe bản thấp bị cắt giảm chi tiết đ&egrave;n gầm c&agrave;ng l&agrave;m mức chiếu s&aacute;ng bị hạn chế hơn nữa.</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; những l&yacute; do tr&ecirc;n,&nbsp;<strong>độ đ&egrave;n &ocirc; t&ocirc;</strong>&nbsp;tăng s&aacute;ng l&agrave; y&ecirc;u cầu bắt buộc cần thiết đối với chủ xe.</p>\r\n\r\n<h2><strong>2. Giải ph&aacute;p độ đ&egrave;n &ocirc; t&ocirc; tăng s&aacute;ng an to&agrave;n l&agrave; g&igrave;?</strong></h2>\r\n\r\n<p>Được h&igrave;nh th&agrave;nh dựa tr&ecirc;n t&acirc;m huyết của những người c&oacute; niềm đam m&ecirc; v&agrave; kinh nghiệm trong lĩnh vực xe &ocirc; t&ocirc;. Ch&iacute;nh v&igrave; vậy, những dịch vụ tại <strong>Thanh Sang&nbsp;Auto</strong> ngo&agrave;i cam kết chất lượng th&igrave; yếu tố an to&agrave;n lu&ocirc;n được đặt l&ecirc;n h&agrave;ng đầu.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"1200\" src=\"/image/images/z2855182624317_0a5ec5f7d8d5a9dd4e804ad06b138e48.jpg\" width=\"900\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>N&acirc;ng cấp đ&egrave;n Omega Laser tr&ecirc;n Ranger tại&nbsp;Thanh Sang Auto</em></p>\r\n\r\n<h3><em>- </em>N&acirc;ng cấo đ&egrave;n tại <strong>Thanh Sang Auto</strong> kh&aacute;ch h&agrave;ng được tặng:</h3>\r\n\r\n<h4><em>1. <strong>G&oacute;i độ mắt quỷ</strong></em></h4>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"1080\" src=\"/image/images/z2704058293987_82a42c7c76ecd10f7127213a490f928a(1).jpg\" width=\"1080\" /></p>\r\n\r\n<h3 style=\"text-align:center\"><em>Ảnh tại <strong>Thanh Sang Auto</strong></em></h3>\r\n\r\n<h3><em>2. Chụp xi theo xe</em></h3>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"1080\" src=\"/image/images/z2704058343302_31337e9a9b4bea409ad0c2058f2de6ce.jpg\" width=\"1080\" /></p>\r\n\r\n<h3 style=\"text-align:center\"><em>Tặng&nbsp;chụp xi tại <strong>Thanh Sang Auto</strong></em></h3>\r\n\r\n<h3><em>3. G&oacute;i dọn nội thất</em></h3>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"715\" src=\"/image/images/DSCF4822(1).JPG\" width=\"1071\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Tặng dọn nội thất tại <strong>Thanh Sang Auto</strong></em></p>\r\n\r\n<p>Đối với dịch vụ&nbsp;<strong>độ đ&egrave;n xe &ocirc; t&ocirc;</strong>&nbsp;tăng s&aacute;ng, <strong>Thanh Sang Auto</strong> đảm bảo 3 ti&ecirc;u ch&iacute; quan trọng m&agrave; kh&ocirc;ng phải bất cứ cơ sở độ đ&egrave;n n&agrave;o cũng c&oacute; thể đ&aacute;p ứng được.</p>\r\n\r\n<h3><strong>An to&agrave;n khi l&aacute;i xe</strong></h3>\r\n\r\n<p>✔️ &Ocirc; t&ocirc; sau khi độ đ&egrave;n tăng s&aacute;ng sẽ đảm bảo mức &aacute;nh s&aacute;ng khỏe hơn, hỗ trợ quan s&aacute;t r&otilde; r&agrave;ng trong điều kiện &aacute;nh s&aacute;ng yếu. Từ đ&oacute;, hạn chế tối đa nguy cơ va chạm do kh&ocirc;ng kịp xử l&yacute; t&igrave;nh huống bất ngờ.</p>\r\n\r\n<p>✔️ &Aacute;nh s&aacute;ng &ldquo;th&acirc;n thiện&rdquo; với người v&agrave; phương tiện di chuyển ngược chiều khi kh&ocirc;ng g&acirc;y t&igrave;nh trạng ch&oacute;i mắt, cảm gi&aacute;c kh&oacute; chịu.</p>\r\n\r\n<h3><strong>An to&agrave;n cho phương tiện</strong></h3>\r\n\r\n<p>✔️ Khi chủ xe&nbsp;<strong>độ đ&egrave;n &ocirc; t&ocirc;&nbsp;</strong>tại <strong>Thanh Sang Auto</strong> sẽ được tư vấn, giới thiệu g&oacute;i dịch vụ, sản phẩm ph&ugrave; hợp nhất với xế cưng của m&igrave;nh. C&ocirc;ng suất đ&egrave;n được t&iacute;nh to&aacute;n tương th&iacute;ch với đầu ra, kh&ocirc;ng cần n&acirc;ng b&igrave;nh, kh&ocirc;ng g&acirc;y qu&aacute; tải, sụt b&igrave;nh,&hellip;</p>\r\n\r\n<p>✔️ Nếu như trước đ&acirc;y, kỹ thuật c&ograve;n hạn chế, qu&aacute; tr&igrave;nh độ đ&egrave;n thường g&acirc;y ảnh hưởng đến hệ thống điện, cắt d&acirc;y, nối d&acirc;y. Th&igrave; hiện tại, <strong>Thanh Sang Auto</strong> đảm bảo qu&aacute; tr&igrave;nh độ đ&egrave;n ho&agrave;n to&agrave;n kh&ocirc;ng độ chế, cắt nối d&acirc;y điện m&agrave; chỉ cắm giắc Zin, đảm bảo an to&agrave;n tối đa.</p>\r\n\r\n<h3><strong>Độ đ&egrave;n kh&ocirc;ng ảnh hưởng đến đăng kiểm</strong></h3>\r\n\r\n<p>Đăng kiểm hay độ đ&egrave;n &ocirc; t&ocirc; c&oacute; bị phạt kh&ocirc;ng l&agrave; vấn đề băn khoăn h&agrave;ng đầu khi chủ xe c&oacute; &yacute; định độ đ&egrave;n &ocirc; t&ocirc;. Tuy nhi&ecirc;n, ch&uacute;ng ta cần hiểu rằng việc độ đ&egrave;n xuất ph&aacute;t từ mục đ&iacute;ch cải thiện &aacute;nh s&aacute;ng, hỗ trợ l&aacute;i xe an to&agrave;n, đ&acirc;y l&agrave; điều cần thiết v&agrave; ch&iacute;nh đ&aacute;ng.</p>\r\n\r\n<p>Hiểu được t&acirc;m l&yacute; n&agrave;y, <strong>Thanh Sang Auto</strong> đặc biệt c&oacute; những sự &ldquo;ưu ti&ecirc;n hỗ trợ&rdquo; cho Qu&yacute; Kh&aacute;ch H&agrave;ng khi độ đ&egrave;n tại trung t&acirc;m như:</p>\r\n\r\n<p>✔️ Mục đ&iacute;ch đưa ra từ đầu l&agrave; cải thiện mức s&aacute;ng, đảm bảo an to&agrave;n trong qu&aacute; tr&igrave;nh xe di chuyển.</p>\r\n\r\n<p>✔️ Ưu ti&ecirc;n những giải ph&aacute;p ph&ugrave; hợp nhất với phương tiện, kh&ocirc;ng thay đổi cấu tr&uacute;c đ&egrave;n nguy&ecirc;n bản. &Aacute;nh s&aacute;ng kh&ocirc;ng g&acirc;y ch&oacute;i mắt cho phương tiện di chuyển ngược chiều v&agrave; hạn chế tối đa sự ch&uacute; &yacute; của CSGT.</p>\r\n\r\n<p><em>Với việc đảm bảo những ti&ecirc;u ch&iacute; an to&agrave;n kể tr&ecirc;n, anh em chủ xe ho&agrave;n to&agrave;n c&oacute; thể an t&acirc;m sử dụng dịch vụ&nbsp;<strong>độ đ&egrave;n &ocirc; t&ocirc;</strong>&nbsp;tăng s&aacute;ng tại <strong>Thanh Sang Auto</strong>. </em></p>\r\n\r\n<p><em>Li&ecirc;n hệ hotline:</em><strong><em>&nbsp;0973 262 612</em></strong><strong><em>&nbsp;</em></strong><em>để được tư vấn cụ thể nh&eacute;!</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>B&aacute;o gi&aacute; độ đ&egrave;n &ocirc; t&ocirc; tăng s&aacute;ng an to&agrave;n tại Thang Sang Auto</strong></h2>\r\n\r\n<p>Những g&oacute;i độ đ&egrave;n tăng s&aacute;ng &ocirc; t&ocirc; tại <strong>Thanh Sang Auto&nbsp;</strong>kh&ocirc;ng những đảm bảo yếu tố an to&agrave;n m&agrave; chi ph&iacute; cũng rất tiết kiệm v&agrave; ph&ugrave; hợp với ng&acirc;n s&aacute;ch của anh em chủ xe. Một số g&oacute;i độ đ&egrave;n ti&ecirc;u biểu tại <strong><em>Thanh Sang Auto</em></strong> c&oacute; gi&aacute; độ đ&egrave;n &ocirc; t&ocirc; giao động từ 5.500.000 vnđ &ndash; hơn 20.000.000 vnđ.</p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; b&aacute;o&nbsp;<strong>gi&aacute; độ đ&egrave;n &ocirc; t&ocirc;</strong>&nbsp;tăng s&aacute;ng chi tiết tại Trung t&acirc;m.</p>\r\n\r\n<p><em>Li&ecirc;n hệ hotline:</em><strong><em>&nbsp;0973 262 612</em></strong><strong><em>&nbsp;</em></strong><em>để được tư vấn cụ thể nh&eacute;!</em></p>\r\n\r\n<p>Hi vọng, qua th&ocirc;ng tin gi&aacute; độ đ&egrave;n xe hơi tr&ecirc;n, anh em chủ xe sẽ chủ động tham khảo v&agrave; chọn lựa cho m&igrave;nh giải ph&aacute;p độ đ&egrave;n ph&ugrave; hợp nhất!</p>\r\n\r\n<h2><strong>Dịch vụ độ đ&egrave;n &ocirc; t&ocirc; tại Thanh Sang Auto</strong></h2>\r\n\r\n<p><strong>Độ đ&egrave;n &ocirc; t&ocirc;</strong>&nbsp;l&agrave; một lĩnh vực mới v&agrave; đang nhận được sự quan t&acirc;m đặc biệt từ ph&iacute;a chủ xe. Tuy nhi&ecirc;n, để đảm bảo an to&agrave;n tuyệt đối cho hệ thống xe cũng như hiệu quả trong qu&aacute; tr&igrave;nh sử dụng, Qu&yacute; Kh&aacute;ch H&agrave;ng cần c&acirc;n nhắc lựa chọn cơ sở độ đ&egrave;n uy t&iacute;n nhất.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"1200\" src=\"/image/images/z2685894960531_83f23ca52dad666a4b476deafc81d14c.jpg\" width=\"900\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Trung t&acirc;m chuy&ecirc;n độ đ&egrave;n &ocirc; t&ocirc; uy t&iacute;n v&agrave; an to&agrave;n Thanh Sang Auto tại Gia Lai</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với hơn 8 năm kinh nghiệm trong lĩnh vực&nbsp;<strong>độ xe &ocirc; t&ocirc;</strong>, <strong>Thanh Sang Auto</strong> cam kết mang đến cho Kh&aacute;ch H&agrave;ng dịch vụ độ đ&egrave;n an to&agrave;n v&agrave; hiệu quả nhất.</p>\r\n\r\n<p>✅ Tư vấn giải ph&aacute;p tăng s&aacute;ng cũng như d&ograve;ng sản phẩm th&iacute;ch ứng với thiết kế v&agrave; c&ocirc;ng suất xe.</p>\r\n\r\n<p>✅ Cam kết chất lượng dịch vụ đảm bảo, độ s&aacute;ng ổn định, bảo h&agrave;nh d&agrave;i hạn cho Kh&aacute;ch H&agrave;ng.</p>\r\n\r\n<p>✅ Quy tr&igrave;nh lắp đặt kh&ocirc;ng độ chế, ho&agrave;n to&agrave;n cắm giắc zin, đảm bảo zin xe.</p>\r\n\r\n<p>✅ Đội ngũ kỹ thuật thi c&ocirc;ng c&oacute; hơn 15 năm kinh nghiệm trong&nbsp;<strong>độ đ&egrave;n &ocirc; t&ocirc;</strong>.</p>\r\n\r\n<p>✅ Cơ sở hạ tầng đảm bảo: Ph&ograve;ng độ đ&egrave;n chuy&ecirc;n nghiệp, đảm bảo yếu tố &aacute;nh s&aacute;ng, nhiệt độ.</p>\r\n\r\n<p>✅ Hệ thống m&aacute;y m&oacute;c thiết bị đầy đủ v&agrave; hiện đại: m&aacute;y hấp, hệ thống căn chỉnh&hellip;</p>\r\n\r\n<p><em>Qu&yacute; Kh&aacute;ch H&agrave;ng c&oacute; nhu cầu độ đ&egrave;n tăng s&aacute;ng an to&agrave;n cho xe &ocirc; t&ocirc; vui l&ograve;ng li&ecirc;n hệ:&nbsp;<strong>0973 262 612</strong></em><strong><em>&nbsp;</em></strong><em>ngay h&ocirc;m nay để kh&ocirc;ng bỏ lỡ những ưu đ&atilde;i đặc biệt.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Một số h&igrave;nh ảnh độ đ&egrave;n tăng s&aacute;ng an to&agrave;n tại Thanh Sang Auto</strong></h2>\r\n\r\n<p><strong><em>Thanh Sang Auto</em></strong> xin gửi đến anh em chủ xe một số h&igrave;nh ảnh&nbsp;<strong>độ đ&egrave;n &ocirc; t&ocirc;</strong>&nbsp;&ndash; tăng s&aacute;ng an to&agrave;n thực hiện tại trung t&acirc;m. Xin cảm ơn Qu&yacute; Vị đ&atilde; tin tưởng v&agrave; lựa chọn Thanh Sang Auto!</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"1080\" src=\"/image/images/z2704058278836_85ab6260155c0e12b58a7c8991ef479e.jpg\" width=\"1080\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"1200\" src=\"/image/images/z2704058879102_452d492e68e8dbb90b34f5b6f4676849.jpg\" width=\"900\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"1200\" src=\"/image/images/z2683370486254_bfb042d2daf27c0eea4ecb9d29d8db81.jpg\" width=\"899\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"1200\" src=\"/image/images/z2685894960267_548c2935f94fbefcc58a8a9f14459ea0.jpg\" width=\"900\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>H&atilde;y li&ecirc;n hệ ngay&nbsp;Thanh Sang Auto để nhận tư vấn về sản phẩm!</strong>&nbsp;</p>\r\n\r\n<p>Địa chỉ: 03 - 03 L&ecirc; Th&aacute;nh T&ocirc;n - Tp.Pleiku - Tỉnh Gia Lai</p>\r\n\r\n<p>Hotline:&nbsp;0973 262 612</p>\r\n\r\n<p>Email:&nbsp;gnassang14@gmail.com</p>\r\n\r\n<p>Website:&nbsp;<a href=\"https://thanhsangauto.com/\">thanhsangauto.com</a></p>\r\n', 'z2665802242894_a5add88a2e58eab10f79a26c011b8307.jpg', '196844', 0, 'Thanh Sang Auto', '2021-09-13', '2021-10-24', 1, NULL, NULL, NULL, NULL, NULL, 'NÂNG CẤP ĐÈN BI CHÍNH HÃNG TẠI THANH SANG AUTO', 'Nâng Cấp Đèn Bi Chính Hãng - Thanh Sang Auto', 'nang-cap-den-bi-chinh-hang-tai-thanh-sang-auto', 'Nâng Cấp Đèn Bi Chính Hãng - Thanh Sang Auto', 1, '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetag`
--

CREATE TABLE `servicetag` (
  `servicetag_id` int(11) NOT NULL,
  `servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sort_order` int(11) NOT NULL,
  `servicetag_created_date` datetime NOT NULL,
  `servicetag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `servicetag_img` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetag`
--

INSERT INTO `servicetag` (`servicetag_id`, `servicetag_name`, `servicetag_des`, `servicetag_content`, `servicetag_sort_order`, `servicetag_created_date`, `servicetag_update_date`, `state`, `servicetag_img`, `servicetag_sub_info1`, `servicetag_sub_info2`, `servicttag_sub_info3`, `servicetag_sub_info4`, `servicetag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(4, 'hot', '', '', 0, '2017-12-13 15:12:00', '2017-12-13 15:12:00', 1, '', '', '', '', '', '', 'hot', '', 'hot', '', 1),
(5, 'sale', '', '', 0, '2017-12-13 15:12:12', '2017-12-13 15:12:12', 1, '', '', '', '', '', '', 'sale', '', 'sale', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetag_languages`
--

CREATE TABLE `servicetag_languages` (
  `id` int(11) NOT NULL,
  `servicetag_id` int(11) NOT NULL,
  `languages_code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetag_languages`
--

INSERT INTO `servicetag_languages` (`id`, `servicetag_id`, `languages_code`, `lang_servicetag_name`, `lang_servicetag_des`, `lang_servicetag_content`, `lang_servicetag_sub_info1`, `lang_servicetag_sub_info2`, `lang_servicetag_sub_info3`, `lang_servicetag_sub_info4`, `lang_servicetag_sub_info5`, `title_seo`, `des_seo`, `keyword`, `friendly_url`, `state`) VALUES
(4, 4, 'vn', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(5, 4, 'en', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(6, 5, 'vn', 'sale', '<p>1</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1),
(7, 5, 'en', 'sale', '<p>2</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `service_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(85, 'vn', 'PHÁT HÀNH THẺ CHĂM SÓC Ô TÔ', 'Thanh Sang Auto thông báo phát hành thẻ dịch vụ chăm sóc ô tô tại Garage. Quý khách hàng có thể mua thẻ để làm quà tặng cho người thân, bạn bè của mình. ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'PHÁT HÀNH THẺ CHĂM SÓC Ô TÔ', 'Giảm Giá Ưu Đãi Tại Thanh Sang Auto', 'phat-hanh-the-cham-soc-o-to', 'Ưu Đãi Tại Thanh Sang Auto', NULL, 65),
(86, 'en', 'english version Vệ sinh nội thất ô tô tại nhà', 'english version Sau một thời gian sử dụng, bụi bẩn cũng như các vụn thức ăn thừa, mồ hôi…sẽ bám vào nội thất xe khiến xe bốc mùi hôi khó chịu. Nếu không được vệ sinh thường xuyên, chúng sẽ hình thành nên các tác nhân gây bệnh, ảnh hưởng rất lớn đến sức khỏe của người dùng.', 'english version <p>Sau một thời gian sử dụng, bụi bẩn cũng như c&aacute;c vụn thức ăn thừa, mồ h&ocirc;i&hellip;sẽ b&aacute;m v&agrave;o nội thất xe khiến xe bốc m&ugrave;i h&ocirc;i kh&oacute; chịu. Nếu kh&ocirc;ng được vệ sinh thường xuy&ecirc;n, ch&uacute;ng sẽ h&igrave;nh th&agrave;nh n&ecirc;n c&aacute;c t&aacute;c nh&acirc;n g&acirc;y bệnh, ảnh hưởng rất lớn đến sức khỏe của người d&ugrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Quy tr&igrave;nh vệ sinh nội thất &ocirc; t&ocirc; chuy&ecirc;n nghiệp tại CƯỜNG NGA &Ocirc; T&Ocirc;:</h2>\r\n\r\n<h3><strong>Bước 1: Tiến h&agrave;nh th&aacute;o ghế v&agrave; thiết bị</strong></h3>\r\n\r\n<p>Th&aacute;o ghế, h&uacute;t bụi v&agrave; l&agrave;m sạch sơ bộ xe, phụ kiện &ocirc; t&ocirc;. Đ&acirc;y l&agrave; bước rất quan trọng v&igrave; nếu c&ograve;n để ghế tr&ecirc;n xe th&igrave; ch&uacute;ng ta kh&ocirc;ng thể l&agrave;m sạch đến từng ng&oacute;c ng&aacute;ch của xe được. Th&aacute;o ghế ra sẽ gi&uacute;p vệ sinh xe được sạch hơn.</p>\r\n\r\n<h3><strong>Bước 2: Vệ sinh trần xe</strong></h3>\r\n\r\n<p>Khu vực trần xe kh&ocirc;ng qu&aacute; bẩn nhưng lại c&oacute; thể d&iacute;nh bụi. Do đ&oacute;, người thợ sẽ sử dụng s&uacute;ng tạo lốc xo&aacute;y để phun dung dịch l&agrave;m sạch trần xe gi&uacute;p lấy đi hết bụi bẩn v&agrave; c&aacute;c vết bẩn cứng đầu b&aacute;m l&acirc;u ng&agrave;y tr&ecirc;n đ&oacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Bước 3: Vệ sinh taplo bảng điều khiển</strong></h3>\r\n\r\n<p>L&agrave;m sạch khu vực Taplo, v&ocirc; lăng v&agrave; bảng điều khiển. Những bộ phận n&agrave;y của &ocirc; t&ocirc; thường xuy&ecirc;n phải chịu t&aacute;c động khi sử dụng ch&iacute;nh v&igrave; vậy dễ d&iacute;nh bẩn nhất. Bạn cần vệ sinh kỹ v&ocirc; lăng, bảng điều khiển v&agrave; c&aacute;c hộc chứa đồ. C&aacute;c bộ phần n&agrave;y c&oacute; rất nhiều chi tiết nhỏ v&igrave; thế cần d&ugrave;ng chổi l&ocirc;ng, khăn mềm v&agrave; dung dịch chuy&ecirc;n dụng để lau dọn cho sạch</p>\r\n\r\n<h3><strong>Bước 4: Vệ sinh ghế da, ghế nỉ v&agrave; thảm trải s&agrave;n</strong></h3>\r\n\r\n<p>Nh&acirc;n vi&ecirc;n sẽ d&ugrave;ng dung dịch vệ sinh nội thất chuy&ecirc;n dụng phun l&ecirc;n bề mặt ghế da sau đ&oacute; lấy b&agrave;n chải l&ocirc;ng mềm để lau cho sạch. Đối với ghế nỉ cần c&oacute; sự trợ gi&uacute;p của s&uacute;ng dọn nội thất tạo ra luồng lốc xo&aacute;y cực mạnh đ&aacute;nh bay vết bẩn cứng đầu sau đ&oacute; d&ugrave;ng dung dịch tẩy rửa chuy&ecirc;n dụng l&agrave;m sạch lại lần nữa. Thảm nỉ để ch&acirc;n sẽ được đem đi giặt sạch v&agrave; x&igrave; kh&ocirc;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Bước 5: L&agrave;m sạch c&aacute;nh cửa k&iacute;nh xe</strong></h3>\r\n\r\n<ul>\r\n	<li>L&agrave;m ẩm khăn Microfiber với chất tẩy rửa cửa sổ (đ&acirc;y l&agrave; loại khăn si&ecirc;u mịn gi&uacute;p loại bỏ c&aacute;c vết ố tr&ecirc;n cửa sổ rất tốt v&agrave; kh&ocirc;ng để lại vệt trắng sau khi ch&ugrave;i)</li>\r\n	<li>Vị tr&iacute; cửa k&iacute;nh của xe th&igrave; dung dịch tẩy rửa chuy&ecirc;n dụng để đảm bảo k&iacute;nh được lau sạch v&agrave; kh&ocirc;ng để lại c&aacute;c vết xước. Hoặc b&igrave;nh để xịt nước l&ecirc;n k&iacute;nh rồi d&ugrave;ng khăn mềm lau lại để l&agrave;m sạch vết bẩn tr&ecirc;n k&iacute;nh,</li>\r\n	<li>D&ugrave;ng khăn tẩm chất tẩy ch&ugrave;i sạch k&iacute;nh xe từ k&iacute;nh chắn gi&oacute; cho đến cửa sổ b&ecirc;n v&agrave; cả cửa sổ m&aacute;i (nếu c&oacute;). Tương tự như lau ch&ugrave;i nội thất xe, n&ecirc;n lau theo chiều kim đồng hồ để tối ưu h&oacute;a việc l&agrave;m sạch.</li>\r\n	<li>C&aacute;c khu vực r&igrave;a cửa sổ thường đ&oacute;ng bẩn nhiều hơn c&aacute;c vị tr&iacute; kh&aacute;c. Trong l&uacute;c ch&ugrave;i, n&ecirc;n đổi mặt giẻ lau để bề mặt ch&ugrave;i lu&ocirc;n sạch, kh&ocirc;ng d&acirc;y bẩn đến c&aacute;c v&ugrave;ng kh&aacute;c.</li>\r\n</ul>\r\n\r\n<p><strong>Lưu &yacute;:</strong>&nbsp;Theo kinh nghiệm chăm s&oacute;c v&agrave; bảo dưỡng xe &ocirc; t&ocirc;, n&ecirc;n tr&aacute;nh chất tẩy rửa c&oacute; th&agrave;nh phẩm amoniac v&igrave; ch&uacute;ng ẩn chứa nguy cơ l&agrave;m hư hại c&aacute;c trang bị từ nhựa v&agrave; l&agrave;m hỏng cửa k&iacute;nh. Hơn nữa, n&ecirc;n cẩn thận v&agrave; lựa chọn chất tẩy rửa ph&ugrave; hợp với k&iacute;nh nhằm tr&aacute;nh trường hợp bay m&agrave;u, loang lỗ.</p>\r\n\r\n<h3><strong>Bước 6: Vệ sinh cốp xe</strong></h3>\r\n\r\n<p>Vị tr&iacute; cốp xe l&agrave; nơi thường để những vật dụng của kh&aacute;ch như thức ăn, vật dụng nhất n&ecirc;n sẽ rất l&agrave; bẩn, nếu kh&ocirc;ng dọn dẹp thường xuy&ecirc;n sẽ l&agrave; m&ocirc;i trường sinh s&ocirc;i cho c&aacute;c loại nấm mốc v&agrave; g&acirc;y m&ugrave;i h&ocirc;i kh&oacute; chịu cho cả chiếc xe. Đối với vị tr&iacute; cốp xe th&igrave; bạn cần phải dọn dẹp những thứ kh&ocirc;ng cần thiết rồi h&uacute;t bụi cẩn thận l&agrave; sẽ ổn cả th&ocirc;i.</p>\r\n\r\n<h3><strong>Bước 7: Vệ sinh s&agrave;n xe</strong></h3>\r\n\r\n<p>Đ&acirc;y là nơi thường bám bụi b&acirc;̉n nhi&ecirc;̀u nh&acirc;́t tr&ecirc;n xe nhưng lại là nơi v&ecirc;̣ sinh đơn giản nh&acirc;́t. Bạn chỉ việc sử dụng m&aacute;y h&uacute;t bụi h&uacute;t sạch sẽ những &nbsp;bụi bẩn b&aacute;m tr&ecirc;n s&agrave;n sau đ&oacute; d&ugrave;ng nước v&ecirc;̣ sinh n&ocirc;̣i th&acirc;́t &ocirc; t&ocirc; xịt l&ecirc;n r&ocirc;̀i dùng khăn lau chùi, trường hợp sàn xe làm từ nỉ thì chúng ta sẽ dùng bàn chải đ&ecirc;̉ chà.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Bước 8: Lau v&agrave; sấy kh&ocirc;</strong></h3>\r\n\r\n<p>Đ&acirc;y l&agrave; bước cuối cũng nhưng kh&ocirc;ng k&eacute;m phần quan trọng. Bạn cần lau kh&ocirc; kh&ocirc;ng n&ecirc;n để tự kh&ocirc;, sẽ để lại vằn vệnh nh&igrave;n rất mất thẩm mỹ.</p>\r\n\r\n<h2>Dịch vụ vệ sinh nội thất &ocirc; t&ocirc; tại nh&agrave;:</h2>\r\n\r\n<p>Với dịch vụ n&agrave;y của ch&uacute;ng t&ocirc;i, bạn chỉ việc đặt lịch hẹn. Ch&uacute;ng t&ocirc;i sẽ đến tận nơi chăm s&oacute;c cho &quot;xế y&ecirc;u&quot; của bạn. CƯỜNG NGA &Ocirc; T&Ocirc; cam kết sẽ mang đến cho qu&yacute; kh&aacute;ch h&agrave;ng những sản phẩm, dịch vụ chất lượng nhất.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Vệ sinh nội thất ô tô tại nhà', 'Sau một thời gian sử dụng, bụi bẩn cũng như các vụn thức ăn thừa, mồ hôi…sẽ bám vào nội thất xe khiến xe bốc mùi hôi khó chịu. Nếu không được vệ sinh thường xuyên, chúng sẽ hình thành nên các tác nhân gây bệnh, ảnh hưởng rất lớn đến sức khỏe của người dùng.', 'en-ve-sinh-noi-that-o-to-tai-nha', '', NULL, 65),
(87, 'vn', 'LẮP ĐẶT MÀN HÌNH OTO', 'Độ màn hình ô tô, xe hơi đang được rất nhiều chủ xe quan tâm. Có rất nhiều các tìm kiếm phổ biến liên quan tới món phụ kiện công nghệ này như: màn hình dvd ô tô, màn hình ô tô android, màn hình ô tô cảm ứng', '<h3>Độ m&agrave;n h&igrave;nh &ocirc; t&ocirc;, xe hơi đang được rất nhiều chủ xe quan t&acirc;m. C&oacute; rất nhiều c&aacute;c t&igrave;m kiếm phổ biến li&ecirc;n quan tới m&oacute;n phụ kiện c&ocirc;ng nghệ n&agrave;y như: m&agrave;n h&igrave;nh dvd &ocirc; t&ocirc;, m&agrave;n h&igrave;nh &ocirc; t&ocirc; android, m&agrave;n h&igrave;nh &ocirc; t&ocirc; cảm ứng,&hellip;. nhưng tựu chung lại, thắc mắc của anh em thường li&ecirc;n quan đến gi&aacute; m&agrave;n h&igrave;nh &ocirc; t&ocirc;? m&agrave;n h&igrave;nh &ocirc; t&ocirc; tốt nhất? n&ecirc;n lắp m&agrave;n h&igrave;nh &ocirc; t&ocirc; 7 inch, 9 inch, hay 10 inch?. Với lợi thế l&agrave; trung t&acirc;m lắp đặt m&agrave;n h&igrave;nh &ocirc; t&ocirc; uy t&iacute;n tại Gia Lai, l&agrave; đại l&yacute; c&aacute;c thương hiệu nổi tiếng: m&agrave;n h&igrave;nh &ocirc; t&ocirc; Zestech, m&agrave;n h&igrave;nh &ocirc; t&ocirc; Kovar,&hellip;<strong>Thanh Sang Auto</strong> tự tin mang đến cho qu&yacute; Kh&aacute;ch H&agrave;ng những sản phẩm tốt nhất về chất lượng, gi&aacute; b&aacute;n, bảo h&agrave;nh hậu m&atilde;i&hellip;</h3>\r\n\r\n<p><img alt=\"\" height=\"1200\" src=\"/image/images/163952404_1629324120590726_8875899516245883139_n.jpg\" width=\"1200\" /></p>\r\n\r\n<h2><strong>C&oacute; n&ecirc;n lắp m&agrave;n h&igrave;nh android &ocirc; t&ocirc;?</strong></h2>\r\n\r\n<h3><strong>DVD &ocirc; t&ocirc; zin thực sự &ldquo;ngh&egrave;o n&agrave;n&rdquo;</strong></h3>\r\n\r\n<p>Ch&iacute;nh x&aacute;c đ&acirc;y l&agrave; c&acirc;u hỏi m&agrave; anh em cần trả lời đầu ti&ecirc;n, trước khi quyết định c&oacute; n&ecirc;n n&acirc;ng cấp&nbsp;m&agrave;n h&igrave;nh dvd&nbsp;zin l&ecirc;n android.</p>\r\n\r\n<p>X&eacute;t về thiết kế, m&agrave;n h&igrave;nh nguy&ecirc;n bản tr&ecirc;n c&aacute;c d&ograve;ng xe &ocirc; t&ocirc; tầm trung đổ xuống thường kh&ocirc;ng c&oacute; nhiều điểm nổi bật nếu so s&aacute;nh với&nbsp;<strong>m&agrave;n h&igrave;nh android</strong>&nbsp;thế hệ mới c&oacute; viền si&ecirc;u mỏng, độ ph&acirc;n giải sắc n&eacute;t b&ecirc;n trong một k&iacute;ch thước m&agrave;n h&igrave;nh lớn 7 &ndash; 10 inch.</p>\r\n\r\n<h3><strong>V&igrave; sao n&ecirc;n độ m&agrave;n h&igrave;nh &ocirc; t&ocirc; cho xế cưng ?</strong></h3>\r\n\r\n<p>Kh&ocirc;ng phải ngẫu nhi&ecirc;n m&agrave; nhiều chủ xe quyết định trang bị, n&acirc;ng cấp phụ kiện&nbsp;<strong>m&agrave;n h&igrave;nh android&nbsp;</strong>cho xe hơi. Dưới đ&acirc;y l&agrave; những t&iacute;nh năng vượt trội của sản phẩm.</p>\r\n\r\n<h4><strong>M&agrave;n h&igrave;nh android n&acirc;ng tầm kh&ocirc;ng gian nội thất</strong></h4>\r\n\r\n<p>Kh&ocirc;ng qu&aacute; khi n&oacute;i rằng&nbsp;<strong>m&agrave;n h&igrave;nh android &ocirc; t&ocirc;</strong>&nbsp;gi&uacute;p n&acirc;ng tầm sự sang trọng &amp; hiện đại cho to&agrave;n bộ kh&ocirc;ng gian nội thất xe. Thiết kế tinh tế với viền m&agrave;n h&igrave;nh si&ecirc;u mỏng, chất lượng&nbsp;<em>full HD</em>&nbsp;cho g&oacute;c nh&igrave;n tho&aacute;ng đạt, mang lại cảm gi&aacute;c nhẹ nh&agrave;ng, rộng r&atilde;i cho h&agrave;nh kh&aacute;ch.</p>\r\n\r\n<p>So với m&agrave;n h&igrave;nh zin c&oacute; phần &ldquo;lỗi thời&rdquo;,&nbsp;m&agrave;n h&igrave;nh &ocirc; t&ocirc; android&nbsp;thực sự đ&atilde; mang đến một trải nghiệm mới mẻ, đầy hứng th&uacute; cho bất kỳ ai sở hữu m&oacute;n phụ kiện n&agrave;y.<img alt=\"\" height=\"1200\" src=\"/image/images/164067088_1629324520590686_305606933960348352_n.jpg\" width=\"1200\" /></p>\r\n\r\n<h4><strong>Điều khiển m&agrave;n h&igrave;nh bằng giọng n&oacute;i</strong></h4>\r\n\r\n<p>Cho ph&eacute;p t&agrave;i xế điều khiển bằng giọng n&oacute;i l&agrave; một trong những t&iacute;nh năng đ&aacute;ng tiền nhất của&nbsp;<strong>m&agrave;n h&igrave;nh dvd android.</strong>&nbsp;Chỉ với thao t&aacute;c đơn giản, th&ocirc;ng qua n&uacute;t bấm khởi động t&iacute;ch hợp tr&ecirc;n v&ocirc; lăng, mọi chức năng đều c&oacute; thể được k&iacute;ch hoạt qua c&acirc;u lệnh, từ mở camera, chỉ dẫn đường hay nghe nhạc, xem phim,&hellip;</p>\r\n\r\n<p>L&uacute;c n&agrave;y, b&aacute;c t&agrave;i c&oacute; thể &ldquo;rảnh mắt, rảnh tay&rdquo;, tập trung 100% v&agrave;o việc l&aacute;i xe để đảm bảo an to&agrave;n tối đa.</p>\r\n\r\n<h4><strong>Kết nối internet mọi l&uacute;c mọi nơi</strong></h4>\r\n\r\n<p>Giống như một chiếc m&aacute;y t&iacute;nh bảng th&ocirc;ng minh, &nbsp;<strong>m&agrave;n h&igrave;nh &ocirc; t&ocirc; android&nbsp;</strong>hỗ trợ lắp sim 4G &ndash; khả năng kết nối internet mọi l&uacute;c mọi nơi. Kết nối linh hoạt gi&uacute;p m&agrave;n h&igrave;nh &ocirc; t&ocirc; c&oacute; thể ph&aacute;t huy tối đa những t&iacute;nh năng được trang bị.</p>\r\n\r\n<p>Người d&ugrave;ng c&oacute; thể thoải m&aacute;i sử dụng c&aacute;c ứng dụng giải tr&iacute; trực tuyến một c&aacute;ch nhanh nhất. Lướt web xem tin tức, thời sự, xem youtube, nghe nhạc trực tuyến, truyền tải dữ liệu,&hellip; cho đến việc trở th&agrave;nh điểm truy cập wifi cho điện thoại / laptop trở n&ecirc;n dễ d&agrave;ng hơn bao giờ hết.</p>\r\n\r\n<p>Phụ kiện cũng được trang bị đầy đủ c&aacute;c chuẩn kết nối ngoại vi: USB, Bluetooth,&hellip;.</p>\r\n\r\n<h4><strong>M&agrave;n h&igrave;nh android dẫn đường th&ocirc;ng minh</strong></h4>\r\n\r\n<p>T&iacute;nh năng hỗ trợ dẫn đường của&nbsp;<strong>DVD android</strong>&nbsp;được giới chủ xe đ&aacute;nh gi&aacute; cao bởi cập nhật nhanh ch&oacute;ng v&agrave; t&iacute;nh ch&iacute;nh x&aacute;c cao. T&ugrave;y v&agrave;o mỗi d&ograve;ng m&agrave;n h&igrave;nh sẽ hỗ trợ c&aacute;c loại bản đồ kh&aacute;c nhau như VietMap S1, Google Map, Navitel,&hellip;</p>\r\n\r\n<p>Th&ocirc;ng qua ứng dụng, b&aacute;c t&agrave;i c&oacute; thể l&aacute;i xe nhanh ch&oacute;ng, dễ d&agrave;ng hơn, nhất l&agrave; khi di chuyển tr&ecirc;n những h&agrave;nh tr&igrave;nh d&agrave;i. Ngo&agrave;i ra, một số t&iacute;nh năng cảnh b&aacute;o kh&aacute;c cũng rất tiện lợi tr&ecirc;n bản đồ như định vị GPS, cảnh b&aacute;o tắc đường, cảnh b&aacute;o giới hạn tốc độ,&hellip;</p>\r\n\r\n<p><img alt=\"\" height=\"1200\" src=\"/image/images/241126129_1743898032466667_4653776621030480513_n.jpg\" width=\"1200\" /></p>\r\n\r\n<h4><strong>T&iacute;ch hợp t&iacute;nh năng hỗ trợ l&aacute;i xe an to&agrave;n</strong></h4>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh DVD android</strong>&nbsp;hiện đại được t&iacute;ch hợp nhiều chức năng, g&oacute;p phần mang đến cho b&aacute;c t&agrave;i những trải nghiệm l&aacute;i xe an to&agrave;n nhất.</p>\r\n\r\n<p>&ndash; M&agrave;n h&igrave;nh c&oacute; khả năng kết nối với bộ 3 camera: camera h&agrave;nh tr&igrave;nh, camera 360, camera l&ugrave;i v&agrave; hiển thị h&igrave;nh ảnh ngay tr&ecirc;n m&agrave;n h&igrave;nh lớn, gi&uacute;p b&aacute;c t&agrave;i trực tiếp quan s&aacute;t dễ d&agrave;ng, từ đ&oacute; đưa ra xử l&yacute; tốt nhất.</p>\r\n\r\n<p>&ndash; T&iacute;ch hợp hiển thị th&ocirc;ng tin cảm biến &aacute;p suất lốp để chủ động theo d&otilde;i 24/24, đảm bảo an to&agrave;n tối đa. Khi c&oacute; bất thường, l&aacute;i xe c&oacute; thể cập nhanh th&ocirc;ng tin qua m&agrave;n h&igrave;nh hoặc hệ thống &acirc;m thanh cảnh b&aacute;o tr&ecirc;n xe.</p>\r\n\r\n<p>&ndash; C&ocirc;ng nghệ mới c&ograve;n cho ph&eacute;p&nbsp;<strong>m&agrave;n h&igrave;nh android &ocirc; t&ocirc;</strong>&nbsp;hiển thị cảnh b&aacute;o an to&agrave;n, c&aacute;c th&ocirc;ng tin li&ecirc;n quan đến qu&aacute; tr&igrave;nh hoạt động của xe để b&aacute;c t&agrave;i l&agrave;m chủ được qu&aacute; tr&igrave;nh xe vận h&agrave;nh.</p>\r\n\r\n<h4><strong>K&ecirc;nh giải tr&iacute; đa phương tiện tiện dụng</strong></h4>\r\n\r\n<p>Sở hữu m&agrave;n h&igrave;nh cảm ứng 7 &ndash; 10 inch hiện đại, độ ph&acirc;n giải Full HD mang lại g&oacute;c nh&igrave;n sắc n&eacute;t. Đ&acirc;y l&agrave; yếu tố quan trọng biến chiếc m&agrave;n h&igrave;nh android &ocirc; t&ocirc; trở th&agrave;nh thiết bị giải tr&iacute; chất lượng nhất.</p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh t&iacute;ch hợp lắp sim 4G</em>&nbsp;cho ph&eacute;p kết nối internet dễ d&agrave;ng, gi&uacute;p c&aacute;c ứng dụng giải tr&iacute; hoạt động mượt m&agrave; nhất. Biến&nbsp;<strong>dvd android</strong>&nbsp;trở th&agrave;nh một chiếc m&aacute;y t&iacute;nh bảng c&oacute; thể đ&aacute;p ứng mọi nhu cầu giải tr&iacute; của chủ xe: xem phim, nghe nhạc, lướt web, tải ứng dụng dễ d&agrave;ng từ CH Play,&hellip;</p>\r\n\r\n<h2><strong>Trung t&acirc;m lắp m&agrave;n h&igrave;nh &ocirc; t&ocirc; uy t&iacute;n tại Gia Lai</strong></h2>\r\n\r\n<p>Lựa chọn&nbsp;<strong>trung t&acirc;m lắp đặt m&agrave;n h&igrave;nh &ocirc; t&ocirc;</strong>&nbsp;uy t&iacute;n để đảm bảo quyền lợi về l&acirc;u d&agrave;i cho anh em. Chế độ bảo h&agrave;nh hậu m&atilde;i, sản phẩm chất lượng, lắp đặt đ&uacute;ng kĩ thuật, hướng dẫn sử dụng chi tiết,&hellip; l&agrave; những lợi &iacute;ch chỉ c&oacute; tại c&aacute;c trung t&acirc;m đồ chơi &ocirc; t&ocirc; uy t&iacute;n.</p>\r\n\r\n<p>Đến với <strong>Thanh Sang Auto</strong>, ch&uacute;ng t&ocirc;i cam kết:</p>\r\n\r\n<p>✅&nbsp;Đội ngũ kỹ thuật vi&ecirc;n chuy&ecirc;n nghiệp được đ&agrave;o tạo b&agrave;i bản sẽ gi&uacute;p giải quyết mọi vấn đề nhanh ch&oacute;ng v&agrave; chuẩn x&aacute;c nhất.</p>\r\n\r\n<p>✅&nbsp;<strong>M&agrave;n h&igrave;nh android &ocirc; t&ocirc;</strong>&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng, giấy tờ chứng từ r&otilde; r&agrave;ng sẽ đảm bảo được chất lượng cho phụ kiện lắp tr&ecirc;n xe Kh&aacute;ch H&agrave;ng</p>\r\n\r\n<p>✅&nbsp;Chế độ bảo h&agrave;nh tận t&acirc;m gi&uacute;p Kh&aacute;ch H&agrave;ng thoải m&aacute;i khi trải nghiệm sản phẩm.</p>\r\n\r\n<p>✅&nbsp;Gi&aacute; cả được&nbsp;<em>ni&ecirc;m yết</em>&nbsp;r&otilde; r&agrave;ng để Kh&aacute;ch H&agrave;ng c&oacute; thể t&iacute;nh to&aacute;n v&agrave; chuẩn bị được nguồn kinh ph&iacute; hợp l&yacute; nhất trước khi tiến h&agrave;nh n&acirc;ng cấp xế hộp.</p>\r\n\r\n<p>✅&nbsp;Cung cấp dịch vụ&nbsp;<strong>lắp m&agrave;n h&igrave;nh &ocirc; t&ocirc; tại nh&agrave;</strong>&hellip;</p>\r\n\r\n<p><img alt=\"\" height=\"760\" src=\"/image/images/233791027_1728714530651684_1531221821608009847_n.jpg\" width=\"1140\" /></p>\r\n\r\n<h3><strong>Dịch vụ lắp m&agrave;n h&igrave;nh android oto tại nh&agrave;</strong></h3>\r\n\r\n<p>Nhằm phục vụ kh&aacute;ch h&agrave;ng tốt nhất, <strong>Thanh Sang Auto</strong> ti&ecirc;n phong triển khai g&oacute;i dịch vụ Home Service cho&nbsp;<strong>lắp đặt m&agrave;n h&igrave;nh &ocirc; t&ocirc; tại nh&agrave;</strong>, MIỄN PH&Iacute; nội th&agrave;nh Gia Lai</p>\r\n\r\n<p>Dịch vụ giải quyết được nỗi lo di chuyển xa hay kh&ocirc;ng sắp xếp được thời gian của chủ xe, để c&oacute; thể trang bị m&oacute;n phụ kiện chất lượng cho xế y&ecirc;u của m&igrave;nh ngay tại nh&agrave;. Điều quan trọng l&agrave; vẫn được đảm bảo về chất lượng dịch vụ v&agrave; sản phẩm, bảo h&agrave;nh uy t&iacute;n v&agrave; chi ph&iacute; hợp l&yacute; nhất.</p>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch H&agrave;ng c&oacute; nhu cầu&nbsp;<strong>lắp đặt m&agrave;n h&igrave;nh android cho &ocirc; t&ocirc;</strong>, vui l&ograve;ng li&ecirc;n hệ&nbsp;<strong>Hotline 0973 262 612</strong>&nbsp;hoặc để lại số điện thoại để nhận được tư vấn miễn ph&iacute; trong thời gian nhanh nhất từ Thanh Sang Auto</p>\r\n\r\n<p>Địa chỉ:&nbsp;03-05 L&ecirc; Th&aacute;nh T&ocirc;n, Pleiku, Gia Lai</p>\r\n\r\n<p>Tel:&nbsp;0973 262 612</p>\r\n\r\n<p>Email:&nbsp;gnassang14@gmail.com</p>\r\n\r\n<p>Website:&nbsp;<a href=\"https://thanhsangauto.com/\">thanhsangauto.com</a></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'LẮP ĐẶT MÀN HÌNH OTO', 'Lắp Đặt Màn Hình Ôto - Thanh Sang Auto', 'lap-dat-man-hinh-oto', 'Lắp Đặt Màn Hình Ôto - Thanh Sang Auto', NULL, 66),
(88, 'en', 'english version Vệ sinh mâm, tẩy mâm', 'english version ', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Vệ sinh mâm, tẩy mâm', '', 'en-ve-sinh-mam-tay-mam', '', NULL, 66),
(89, 'vn', 'DÁN PHIM CÁCH NHIỆT HI-KOOL', 'Bạn đang tìm hiểu về phim cách nhiệt ô tô? Bạn phân vân có nên dán phim cách nhiệt cho ô tô? Đâu là thương hiệu phim cách nhiệt ô tô tốt nhất hiện nay: phim cách nhiệt ô tô 3M, phim cách nhiệt ô tô Ntech, phim cách nhiệt ô tô Luxo, phim cách nhiệt ô tô Vkool, phim cách nhiệt ô tô Suntek ? Sau khi chọn được dòng phim chất lượng, bạn chưa biết sẽ dán phim cách nhiệt ô tô ở đâu tại Gia Lai? Giá dán phim cách nhiệt ô tô đắt rẻ như thế nào? Hãy cùng Thanh Sang Auto làm rõ những thắc mắc trên nhé!', '<p>Bạn đang t&igrave;m hiểu về phim c&aacute;ch nhiệt &ocirc; t&ocirc;? Bạn ph&acirc;n v&acirc;n c&oacute; n&ecirc;n d&aacute;n phim c&aacute;ch nhiệt cho &ocirc; t&ocirc;? Đ&acirc;u l&agrave; thương hiệu phim c&aacute;ch nhiệt &ocirc; t&ocirc; tốt nhất hiện nay: phim c&aacute;ch nhiệt &ocirc; t&ocirc; 3M, phim c&aacute;ch nhiệt &ocirc; t&ocirc; Ntech, phim c&aacute;ch nhiệt &ocirc; t&ocirc; Luxo, phim c&aacute;ch nhiệt &ocirc; t&ocirc; Vkool, phim c&aacute;ch nhiệt &ocirc; t&ocirc; Suntek ? Sau khi chọn được d&ograve;ng phim chất lượng, bạn chưa biết sẽ d&aacute;n phim c&aacute;ch nhiệt &ocirc; t&ocirc; ở đ&acirc;u tại Gia Lai? Gi&aacute; d&aacute;n phim c&aacute;ch nhiệt &ocirc; t&ocirc; đắt rẻ như thế n&agrave;o? H&atilde;y c&ugrave;ng <strong>Thanh Sang Auto</strong> l&agrave;m r&otilde; những thắc mắc tr&ecirc;n nh&eacute;!</p>\r\n\r\n<p><img alt=\"\" height=\"897\" src=\"/image/images/234803142_1733130003543470_3369892124658607226_n.jpg\" width=\"1350\" /></p>\r\n\r\n<p><strong>D&aacute;n phim c&aacute;ch nhiệt &ocirc; t&ocirc;</strong>, xe hơi&nbsp;l&agrave; giải ph&aacute;p chống n&oacute;ng&nbsp;hữu hiệu v&agrave; to&agrave;n diện nhất&nbsp;cho xế y&ecirc;u. So với những biện ph&aacute;p th&ocirc;ng thường như d&ugrave;ng &aacute;o tr&ugrave;m xe, tấm che nắng, việc chủ xe d&aacute;n&nbsp;<strong>film c&aacute;ch nhiệt&nbsp;</strong>bảo đảm&nbsp;t&iacute;nh linh hoạt tuyệt đối.</p>\r\n\r\n<h2><strong>D&aacute;n phim c&aacute;ch nhiệt &ocirc; t&ocirc; cho xế y&ecirc;u, N&ecirc;n hay Kh&ocirc;ng?</strong></h2>\r\n\r\n<p>Nắng n&oacute;ng gay gắt ở Việt Nam với nền nhiệt vượt ngưỡng 39-40&deg;C l&agrave; nỗi &ldquo;&aacute;m ảnh kinh ho&agrave;ng&rdquo; của&nbsp;chủ xe mỗi khi ra đường. Điều n&agrave;y đe dọa trực tiếp đến an to&agrave;n sức khỏe con người&nbsp;cũng như gi&aacute; trị xe.</p>\r\n\r\n<p>&ndash;&nbsp;<em>Nội thất xe xuống cấp</em>: Những chi tiết mặt taplo, tay cầm v&ocirc; lăng, ghế da, linh kiện điện tử,&hellip; nhanh ch&oacute;ng bạc m&agrave;u, xuống cấp sau thời gian sử dụng,&nbsp;ảnh hưởng đến sử dụng xe v&agrave; t&iacute;nh thẩm mỹ. Một số chất dễ biến đổi dưới t&aacute;c động của nhiệt độ sẽ sinh ra m&ugrave;i h&ocirc;i kh&oacute; chịu v&agrave; độc hại.</p>\r\n\r\n<p>&ndash;&nbsp;<em>Đe dọa an to&agrave;n sức khỏe</em>: Bề mặt da tay, da mặt bị kh&ocirc; r&aacute;t, đen sạm ngay cả khi ngồi trong xe &ocirc; t&ocirc;. Nguy hiểm hơn, tia UV c&ograve;n g&acirc;y ra nhiều bệnh nguy hiểm như&nbsp;vi&ecirc;m gi&aacute;c mạc, đục thủy tinh thể (mắt), ung thư da,&hellip;</p>\r\n\r\n<p><img alt=\"Thanh Sang Auto\" height=\"859\" src=\"/image/images/DSCF5405.JPG\" width=\"1288\" /></p>\r\n\r\n<p>V&igrave; an to&agrave;n cơ thể v&agrave; giữ g&igrave;n gi&aacute; trị của&nbsp;phương tiện, Qu&yacute; Kh&aacute;ch H&agrave;ng&nbsp;cần c&oacute; giải ph&aacute;p xử l&yacute; sớm nhất. Trong đ&oacute;,&nbsp;<strong>d&aacute;n phim c&aacute;ch nhiệt &ocirc;t&ocirc;</strong>&nbsp;(d&aacute;n film c&aacute;ch nhiệt &ocirc; t&ocirc;) được đ&ocirc;ng đảo chủ xe lựa chọn v&agrave; mang lại hiệu quả vượt trội.</p>\r\n\r\n<h3><strong>Phim c&aacute;ch nhiệt &ocirc; t&ocirc; l&agrave; g&igrave;?</strong></h3>\r\n\r\n<p><strong>Phim c&aacute;ch nhiệt &ocirc; t&ocirc;</strong>, hay c&ograve;n gọi&nbsp;<strong>film c&aacute;ch nhiệt &ocirc; t&ocirc;</strong>, phim c&aacute;ch nhiệt xe hơi l&agrave; vật liệu c&aacute;ch nhiệt được cấu th&agrave;nh từ nhiều lớp nhựa polyester. Mỗi lớp đều tr&aacute;ng phủ c&aacute;c chất c&aacute;ch nhiệt như kim loại, carbon, nano ceramic,&hellip; Ngo&agrave;i ra, tấm phim c&oacute; t&iacute;ch hợp sẵn keo d&iacute;nh cực mỏng v&agrave; trong suốt,&nbsp; cho độ b&aacute;m d&iacute;nh tốt.</p>\r\n\r\n<p><img alt=\"Thanh Sang Auto\" height=\"859\" src=\"/image/images/DSCF5406.JPG\" width=\"1287\" /></p>\r\n\r\n<p>C&ocirc;ng nghệ&nbsp;<strong>film c&aacute;ch nhiệt</strong>&nbsp;đa dạng, bao gồm nano ceramic, ph&uacute;n xạ kim loại, tr&aacute;ng phủ kim loại v&agrave; nhuộm m&agrave;u. Trong đ&oacute;, nano ceramic v&agrave; ph&uacute;n xạ kim loại được ứng dụng phổ biến hơn.</p>\r\n\r\n<h3><strong>Những T&aacute;c Dụng của phim c&aacute;ch nhiệt &ocirc; t&ocirc;</strong></h3>\r\n\r\n<p>Kh&ocirc;ng chỉ&nbsp;c&aacute;ch nhiệt, việc&nbsp;d&aacute;n k&iacute;nh &ocirc; t&ocirc; c&ograve;n mang lại nhiều t&aacute;c dụng tuyệt vời kh&aacute;c cho người sử dụng v&agrave; phương tiện.</p>\r\n\r\n<p>1.&nbsp;<em>Ổn định nhiệt độ&nbsp;trong xe</em>:&nbsp;<strong>Phim c&aacute;ch nhiệt</strong>&nbsp;c&oacute; khả năng ngăn chặn&nbsp; từ 60-98% nhiệt lượng truyền v&agrave;o b&ecirc;n trong, gi&uacute;p ổn định nhiệt độ m&aacute;t mẻ hơn so với ngo&agrave;i trời.&nbsp;L&uacute;c n&agrave;y, h&agrave;nh kh&aacute;ch&nbsp;thoải m&aacute;i, dễ chịu hơn;&nbsp;b&aacute;c t&agrave;i cũng giữ trạng th&aacute;i tỉnh t&aacute;o, tập trung l&aacute;i xe an to&agrave;n.</p>\r\n\r\n<p>2.&nbsp;<em>Loại bỏ UV, bảo vệ sức khỏe&nbsp;</em>: Vật liệu c&aacute;ch nhiệt n&agrave;y<strong>&nbsp;</strong>c&oacute; thể triệt ti&ecirc;u hơn 99,9% tia UV c&oacute; hại trong &aacute;nh s&aacute;ng mặt trời để bảo vệ cho h&agrave;nh kh&aacute;ch khỏi những vấn đề nguy hiểm về mắt v&agrave; da.</p>\r\n\r\n<p>3.&nbsp;<em>Tiết kiệm nhi&ecirc;n liệu xe</em>: Khi nhiệt độ trong xe ổn định, chủ xe c&oacute; thể giảm bớt c&ocirc;ng suất hoạt động của hệ thống l&agrave;m m&aacute;t, gi&uacute;p tiết kiệm nguồn nhi&ecirc;n liệu v&agrave; tăng tuổi thọ thiết bị.</p>\r\n\r\n<p>4.&nbsp;<em>Tiết kiệm chi ph&iacute; bảo dưỡng</em>: Phim d&aacute;n c&aacute;ch nhiệt c&ograve;n ngăn&nbsp; sự ph&aacute; hủy của nhiệt độ v&agrave; tia UV l&ecirc;n c&aacute;c chi tiết ghế da, taplo, linh kiện điện tử,&hellip;&nbsp;Nhờ đ&oacute;, chủ xe c&oacute; thể tiết kiệm chi ph&iacute; sửa chữa hay thay mới.</p>\r\n\r\n<p><em>5. Hỗ trợ l&aacute;i xe an to&agrave;n</em>: D&aacute;n k&iacute;nh &ocirc; t&ocirc;&nbsp;giảm mức s&aacute;ng từ mặt trời hoặc đ&egrave;n pha đối diện, chống ch&oacute;i l&oacute;a hay mỏi mắt cho b&aacute;c t&agrave;i, nhất l&agrave; khi di chuyển đường d&agrave;i; Tăng cường t&iacute;nh chắc chắn cho k&iacute;nh xe,&nbsp;an to&agrave;n khi c&oacute; va chạm.</p>\r\n\r\n<p>6.&nbsp;<em>Bảo đảm t&iacute;nh ri&ecirc;ng tư, k&iacute;n đ&aacute;o</em>: Phim tối m&agrave;u ngăn cản&nbsp;&aacute;nh nh&igrave;n từ b&ecirc;n ngo&agrave;i v&agrave;o trong xe, mang lại sự ri&ecirc;ng tư, k&iacute;n đ&aacute;o cho chủ xe v&agrave; h&agrave;nh kh&aacute;ch. Đồng thời, đối tượng xấu kh&oacute; c&oacute; thể &ldquo;nh&ograve;m ng&oacute;&rdquo; t&agrave;i sản b&ecirc;n trong xe.</p>\r\n\r\n<p>7.&nbsp;<em>Chống trộm, bảo vệ t&agrave;i sản trong xe</em>: D&aacute;n phim gi&uacute;p&nbsp;cố định mảnh k&iacute;nh vỡ, l&agrave;m chậm thao t&aacute;c ph&aacute; k&iacute;nh, trộm cắp khi chủ xe kh&ocirc;ng cho ph&eacute;p.</p>\r\n\r\n<p>8.&nbsp;<em>Thẩm mỹ v&agrave; c&aacute; t&iacute;nh hơn</em>: M&agrave;u phim mới gi&uacute;p xế y&ecirc;u th&ecirc;m ấn tượng v&agrave; phong c&aacute;ch hơn. C&ugrave;ng với đ&oacute;, cũng thể hiện đẳng cấp v&agrave; c&aacute; t&iacute;nh ri&ecirc;ng&nbsp;chủ xe.</p>\r\n\r\n<h2><strong>Khi n&agrave;o chủ xe cần d&aacute;n phim c&aacute;ch nhiệt ?</strong></h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"1292\" src=\"/image/images/z2782408746592_faff4c851900566ef01edef54da0c13d.jpg\" width=\"969\" /></p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; những nguy&ecirc;n tắc quan trọng m&agrave; chủ xe cần lưu &yacute; khi d&aacute;n phim cho xế y&ecirc;u.</p>\r\n\r\n<h3><strong>D&aacute;n phim c&aacute;ch nhiệt c&oacute; bị phạt kh&ocirc;ng?</strong></h3>\r\n\r\n<p>C&oacute; thể nhiều chủ xe sợ rằng&nbsp;<strong>d&aacute;n k&iacute;nh &ocirc; t&ocirc;</strong>&nbsp;tối m&agrave;u c&oacute; thể bị &ldquo;tu&yacute;t c&ograve;i&rdquo;. Thực tế, chưa c&oacute; điều luật n&agrave;o quy định&nbsp;<strong>d&aacute;n phim c&aacute;ch nhiệt</strong>&nbsp;sẽ bị xử phạt.</p>\r\n\r\n<p>Chủ xe c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m sử dụng&nbsp;phim c&aacute;ch nhiệt&nbsp;cho xế y&ecirc;u của m&igrave;nh, miễn sao cảm thấy thoải m&aacute;i&nbsp;v&agrave;&nbsp;an to&agrave;n khi&nbsp;tham gia giao th&ocirc;ng.</p>\r\n\r\n<h3><strong>Phim c&aacute;ch nhiệt d&aacute;n trong hay ngo&agrave;i k&iacute;nh?</strong></h3>\r\n\r\n<p><strong>Film c&aacute;ch nhiệt &ocirc; t&ocirc;</strong>&nbsp;d&aacute;n trong k&iacute;nh xe, thay v&igrave; mặt&nbsp;ngo&agrave;i như nhiều chủ xe vẫn nghĩ. Điều n&agrave;y vừa ph&aacute;t huy triệt để khả năng c&aacute;ch nhiệt, vừa giữ cho tấm phim kh&ocirc;ng bị bay m&agrave;u hay bong tr&oacute;c trước t&aacute;c động của thời tiết.</p>\r\n\r\n<p>Vậy d&aacute;n phim cho k&iacute;nh xe&nbsp;c&oacute; l&acirc;u kh&ocirc;ng? T&ugrave;y thuộc v&agrave;o phần diện t&iacute;ch k&iacute;nh d&aacute;n, trung b&igrave;nh khoảng từ 2,5-3 giờ cho xe Sedan v&agrave; 3,5-5 giờ&nbsp;cho xe SUV/MPV (nếu d&aacute;n to&agrave;n bộ k&iacute;nh).</p>\r\n\r\n<h3><strong>Quy tr&igrave;nh d&aacute;n phim đạt ti&ecirc;u chuẩn quốc tế</strong></h3>\r\n\r\n<p><strong><img alt=\"\" height=\"678\" src=\"/image/images/DSCF5405.JPG\" width=\"1017\" /></strong></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;<em>D&aacute;n phim k&iacute;nh&nbsp;&ocirc; t&ocirc; đạt chuẩn tại Thanh Sang Auto</em></p>\r\n\r\n<p>Th&ocirc;ng thường,&nbsp;<strong>d&aacute;n phim c&aacute;ch nhiệt &ocirc; t&ocirc;</strong>&nbsp;đạt chuẩn bắt buộc tiến h&agrave;nh đầy đủ v&agrave; đ&uacute;ng kỹ thuật c&aacute;c bước sau:</p>\r\n\r\n<p>Bước 1: Tiếp nhận v&agrave; kiểm tra xe, k&iacute;nh xe.</p>\r\n\r\n<p>Bước 2: L&agrave;m sạch bề mặt trong v&agrave; ngo&agrave;i k&iacute;nh xe.</p>\r\n\r\n<p>Bước 3: Chuẩn bị phim v&agrave; dung dịch hỗn hợp. Bước n&agrave;y cần sự tỉ mỉ v&agrave; ch&iacute;nh x&aacute;c khi đo đạc bề mặt k&iacute;nh cần d&aacute;n.</p>\r\n\r\n<p>Bước 4:&nbsp;<strong>D&aacute;n phim c&aacute;ch nhiệt</strong>&nbsp;l&ecirc;n k&iacute;nh sao cho c&acirc;n đối, sau đ&oacute; d&ugrave;ng gạt k&iacute;nh loại bỏ nước v&agrave; bọt kh&iacute; giữa mặt tiếp x&uacute;c k&iacute;nh xe v&agrave; phim.</p>\r\n\r\n<p>Bước 5: Sấy lại mặt phim&nbsp;v&agrave; kiểm tra lại to&agrave;n bộ xe.</p>\r\n\r\n<p>Bước 6: B&agrave;n giao xe v&agrave; tư vấn sử dụng.</p>\r\n\r\n<h3><strong>Trung t&acirc;m chuy&ecirc;n d&aacute;n phim c&aacute;ch nhiệt &ocirc; t&ocirc; ch&iacute;nh h&atilde;ng &ndash; Thanh Sang Auto</strong></h3>\r\n\r\n<p>Thanh Sang Auto l&agrave; đơn vị&nbsp;chuy&ecirc;n&nbsp;<strong>d&aacute;n phim c&aacute;ch nhiệt</strong>&nbsp;uy t&iacute;n tại Gia Lai. Với hơn 8 năm trong nghề, ch&uacute;ng t&ocirc;i khao kh&aacute;t mang đến tay Qu&yacute; vị&nbsp;những dịch vụ uy t&iacute;n v&agrave; chất lượng nhất.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"714\" src=\"/image/images/DSCF5412.JPG\" width=\"1071\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Thanh Sang Auto chuy&ecirc;n cung cấp phim c&aacute;ch nhiệt &ocirc; t&ocirc; ch&iacute;nh h&atilde;ng</em></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>Chuy&ecirc;n cung cấp&nbsp;<strong>phim c&aacute;ch nhiệt</strong>&nbsp;ch&iacute;nh h&atilde;ng&nbsp;với gi&aacute; ni&ecirc;m yết hợp l&yacute;, ph&ugrave; hợp nhiều đối tượng kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Đội ngũ kỹ thuật&nbsp;được đ&agrave;o tạo b&agrave;i bản, c&oacute; kinh nghiệm d&aacute;n phim chuy&ecirc;n nghiệp.</p>\r\n\r\n<p>Quy tr&igrave;nh thi c&ocirc;ng&nbsp;đạt chuẩn.</p>\r\n\r\n<p>Điều kiện d&aacute;n phim chuy&ecirc;n nghiệp: Ph&ograve;ng d&aacute;n phim rộng, đạt ti&ecirc;u chuẩn về &aacute;nh s&aacute;ng, nhiệt độ, độ ẩm,&hellip;; Dụng cụ vật tư chuy&ecirc;n dụng đầy đủ, mới nhất.</p>\r\n\r\n<p>Chế độ h&agrave;nh uy t&iacute;n v&agrave; l&acirc;u d&agrave;i.</p>\r\n\r\n<p><strong>H&atilde;y li&ecirc;n hệ ngay&nbsp;Thanh Sang Auto để nhận tư vấn về sản phẩm!</strong>&nbsp;</p>\r\n\r\n<p>Địa chỉ: 03 - 03 L&ecirc; Th&aacute;nh T&ocirc;n - Tp.Pleiku - Tỉnh Gia Lai</p>\r\n\r\n<p>Hotline:&nbsp;0973 262 612</p>\r\n\r\n<p>Email:&nbsp;gnassang14@gmail.com</p>\r\n\r\n<p>Website:&nbsp;<a href=\"https://thanhsangauto.com/\">thanhsangauto.com</a></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'DÁN PHIM CÁCH NHIỆT HI-KOOL', 'Thanh Sang Auto - Dán Phim Cách Nhiệt Hi Kool', 'dan-phim-cach-nhiet-hi-kool', 'Thanh Sang Auto - Dán Phim Cách Nhiệt Hi Kool', NULL, 67),
(90, 'en', 'english version Dọn xe nguyên chiếc tại nhà', 'english version ', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dọn xe nguyên chiếc tại nhà', '', 'en-don-xe-nguyen-chiec-tai-nha', '', NULL, 67),
(91, 'vn', 'NÂNG CẤP ĐÈN BI CHÍNH HÃNG TẠI THANH SANG AUTO', 'Độ đèn ô tô là gói độ xe được giới chủ xe đặc biệt quan tâm. Vậy, Quý Khách Hàng quan tâm điều gì nhất khi độ đèn cho xế cưng? Mức sáng của đèn sau khi độ, thẩm mỹ hay phong cách,…?', '<p dir=\"ltr\">Ri&ecirc;ng với <strong>Thanh Sang Auto</strong>, ch&uacute;ng t&ocirc;i ưu ti&ecirc;n yếu tố &ldquo;<strong>độ đ&egrave;n tăng s&aacute;ng an to&agrave;n</strong>&rdquo; l&ecirc;n h&agrave;ng đầu. Phạm tr&ugrave; &ldquo;tăng s&aacute;ng an to&agrave;n&rdquo; ở đ&acirc;y l&agrave; g&igrave;? C&ugrave;ng theo d&otilde;i b&agrave;i viết dưới đ&acirc;y để hiểu th&ecirc;m về độ đ&egrave;n tăng s&aacute;ng an to&agrave;n tại <strong>Thanh Sang Auto</strong> nh&eacute;!</p>\r\n\r\n<h2 dir=\"ltr\"><strong>1.&nbsp;C&oacute; n&ecirc;n độ đ&egrave;n xe &ocirc; t&ocirc; tăng s&aacute;ng cho &ldquo;vợ hai&rdquo;?</strong></h2>\r\n\r\n<p>Đ&egrave;n xe l&agrave; giữ nhiệm vụ cung cấp &aacute;nh s&aacute;ng cho b&aacute;c t&agrave;i quan s&aacute;t v&agrave; điều khiển phương tiện một c&aacute;ch an to&agrave;n khi l&aacute;i xe trong điều kiện &aacute;nh s&aacute;ng yếu.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, hầu hết &ocirc; t&ocirc; tr&ecirc;n thị trường hiện nay chỉ được trang bị b&oacute;ng đ&egrave;n Halogen truyền thống. Loại b&oacute;ng n&agrave;y cho &aacute;nh s&aacute;ng v&agrave;ng, mức s&aacute;ng hạn chế.Trong những trường hợp kh&ocirc;ng c&oacute; đ&egrave;n đường hỗ trợ, mức s&aacute;ng tr&ecirc;n chưa thể đảm bảo tầm nh&igrave;n, tiềm ẩn nguy cơ va chạm, tai nạn giao th&ocirc;ng.</p>\r\n\r\n<p>Chưa kể, ở nhiều d&ograve;ng xe bản thấp bị cắt giảm chi tiết đ&egrave;n gầm c&agrave;ng l&agrave;m mức chiếu s&aacute;ng bị hạn chế hơn nữa.</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; những l&yacute; do tr&ecirc;n,&nbsp;<strong>độ đ&egrave;n &ocirc; t&ocirc;</strong>&nbsp;tăng s&aacute;ng l&agrave; y&ecirc;u cầu bắt buộc cần thiết đối với chủ xe.</p>\r\n\r\n<h2><strong>2. Giải ph&aacute;p độ đ&egrave;n &ocirc; t&ocirc; tăng s&aacute;ng an to&agrave;n l&agrave; g&igrave;?</strong></h2>\r\n\r\n<p>Được h&igrave;nh th&agrave;nh dựa tr&ecirc;n t&acirc;m huyết của những người c&oacute; niềm đam m&ecirc; v&agrave; kinh nghiệm trong lĩnh vực xe &ocirc; t&ocirc;. Ch&iacute;nh v&igrave; vậy, những dịch vụ tại <strong>Thanh Sang&nbsp;Auto</strong> ngo&agrave;i cam kết chất lượng th&igrave; yếu tố an to&agrave;n lu&ocirc;n được đặt l&ecirc;n h&agrave;ng đầu.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"1200\" src=\"/image/images/z2855182624317_0a5ec5f7d8d5a9dd4e804ad06b138e48.jpg\" width=\"900\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>N&acirc;ng cấp đ&egrave;n Omega Laser tr&ecirc;n Ranger tại&nbsp;Thanh Sang Auto</em></p>\r\n\r\n<h3><em>- </em>N&acirc;ng cấo đ&egrave;n tại <strong>Thanh Sang Auto</strong> kh&aacute;ch h&agrave;ng được tặng:</h3>\r\n\r\n<h4><em>1. <strong>G&oacute;i độ mắt quỷ</strong></em></h4>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"1080\" src=\"/image/images/z2704058293987_82a42c7c76ecd10f7127213a490f928a(1).jpg\" width=\"1080\" /></p>\r\n\r\n<h3 style=\"text-align:center\"><em>Ảnh tại <strong>Thanh Sang Auto</strong></em></h3>\r\n\r\n<h3><em>2. Chụp xi theo xe</em></h3>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"1080\" src=\"/image/images/z2704058343302_31337e9a9b4bea409ad0c2058f2de6ce.jpg\" width=\"1080\" /></p>\r\n\r\n<h3 style=\"text-align:center\"><em>Tặng&nbsp;chụp xi tại <strong>Thanh Sang Auto</strong></em></h3>\r\n\r\n<h3><em>3. G&oacute;i dọn nội thất</em></h3>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"715\" src=\"/image/images/DSCF4822(1).JPG\" width=\"1071\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Tặng dọn nội thất tại <strong>Thanh Sang Auto</strong></em></p>\r\n\r\n<p>Đối với dịch vụ&nbsp;<strong>độ đ&egrave;n xe &ocirc; t&ocirc;</strong>&nbsp;tăng s&aacute;ng, <strong>Thanh Sang Auto</strong> đảm bảo 3 ti&ecirc;u ch&iacute; quan trọng m&agrave; kh&ocirc;ng phải bất cứ cơ sở độ đ&egrave;n n&agrave;o cũng c&oacute; thể đ&aacute;p ứng được.</p>\r\n\r\n<h3><strong>An to&agrave;n khi l&aacute;i xe</strong></h3>\r\n\r\n<p>✔️ &Ocirc; t&ocirc; sau khi độ đ&egrave;n tăng s&aacute;ng sẽ đảm bảo mức &aacute;nh s&aacute;ng khỏe hơn, hỗ trợ quan s&aacute;t r&otilde; r&agrave;ng trong điều kiện &aacute;nh s&aacute;ng yếu. Từ đ&oacute;, hạn chế tối đa nguy cơ va chạm do kh&ocirc;ng kịp xử l&yacute; t&igrave;nh huống bất ngờ.</p>\r\n\r\n<p>✔️ &Aacute;nh s&aacute;ng &ldquo;th&acirc;n thiện&rdquo; với người v&agrave; phương tiện di chuyển ngược chiều khi kh&ocirc;ng g&acirc;y t&igrave;nh trạng ch&oacute;i mắt, cảm gi&aacute;c kh&oacute; chịu.</p>\r\n\r\n<h3><strong>An to&agrave;n cho phương tiện</strong></h3>\r\n\r\n<p>✔️ Khi chủ xe&nbsp;<strong>độ đ&egrave;n &ocirc; t&ocirc;&nbsp;</strong>tại <strong>Thanh Sang Auto</strong> sẽ được tư vấn, giới thiệu g&oacute;i dịch vụ, sản phẩm ph&ugrave; hợp nhất với xế cưng của m&igrave;nh. C&ocirc;ng suất đ&egrave;n được t&iacute;nh to&aacute;n tương th&iacute;ch với đầu ra, kh&ocirc;ng cần n&acirc;ng b&igrave;nh, kh&ocirc;ng g&acirc;y qu&aacute; tải, sụt b&igrave;nh,&hellip;</p>\r\n\r\n<p>✔️ Nếu như trước đ&acirc;y, kỹ thuật c&ograve;n hạn chế, qu&aacute; tr&igrave;nh độ đ&egrave;n thường g&acirc;y ảnh hưởng đến hệ thống điện, cắt d&acirc;y, nối d&acirc;y. Th&igrave; hiện tại, <strong>Thanh Sang Auto</strong> đảm bảo qu&aacute; tr&igrave;nh độ đ&egrave;n ho&agrave;n to&agrave;n kh&ocirc;ng độ chế, cắt nối d&acirc;y điện m&agrave; chỉ cắm giắc Zin, đảm bảo an to&agrave;n tối đa.</p>\r\n\r\n<h3><strong>Độ đ&egrave;n kh&ocirc;ng ảnh hưởng đến đăng kiểm</strong></h3>\r\n\r\n<p>Đăng kiểm hay độ đ&egrave;n &ocirc; t&ocirc; c&oacute; bị phạt kh&ocirc;ng l&agrave; vấn đề băn khoăn h&agrave;ng đầu khi chủ xe c&oacute; &yacute; định độ đ&egrave;n &ocirc; t&ocirc;. Tuy nhi&ecirc;n, ch&uacute;ng ta cần hiểu rằng việc độ đ&egrave;n xuất ph&aacute;t từ mục đ&iacute;ch cải thiện &aacute;nh s&aacute;ng, hỗ trợ l&aacute;i xe an to&agrave;n, đ&acirc;y l&agrave; điều cần thiết v&agrave; ch&iacute;nh đ&aacute;ng.</p>\r\n\r\n<p>Hiểu được t&acirc;m l&yacute; n&agrave;y, <strong>Thanh Sang Auto</strong> đặc biệt c&oacute; những sự &ldquo;ưu ti&ecirc;n hỗ trợ&rdquo; cho Qu&yacute; Kh&aacute;ch H&agrave;ng khi độ đ&egrave;n tại trung t&acirc;m như:</p>\r\n\r\n<p>✔️ Mục đ&iacute;ch đưa ra từ đầu l&agrave; cải thiện mức s&aacute;ng, đảm bảo an to&agrave;n trong qu&aacute; tr&igrave;nh xe di chuyển.</p>\r\n\r\n<p>✔️ Ưu ti&ecirc;n những giải ph&aacute;p ph&ugrave; hợp nhất với phương tiện, kh&ocirc;ng thay đổi cấu tr&uacute;c đ&egrave;n nguy&ecirc;n bản. &Aacute;nh s&aacute;ng kh&ocirc;ng g&acirc;y ch&oacute;i mắt cho phương tiện di chuyển ngược chiều v&agrave; hạn chế tối đa sự ch&uacute; &yacute; của CSGT.</p>\r\n\r\n<p><em>Với việc đảm bảo những ti&ecirc;u ch&iacute; an to&agrave;n kể tr&ecirc;n, anh em chủ xe ho&agrave;n to&agrave;n c&oacute; thể an t&acirc;m sử dụng dịch vụ&nbsp;<strong>độ đ&egrave;n &ocirc; t&ocirc;</strong>&nbsp;tăng s&aacute;ng tại <strong>Thanh Sang Auto</strong>. </em></p>\r\n\r\n<p><em>Li&ecirc;n hệ hotline:</em><strong><em>&nbsp;0973 262 612</em></strong><strong><em>&nbsp;</em></strong><em>để được tư vấn cụ thể nh&eacute;!</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>B&aacute;o gi&aacute; độ đ&egrave;n &ocirc; t&ocirc; tăng s&aacute;ng an to&agrave;n tại Thang Sang Auto</strong></h2>\r\n\r\n<p>Những g&oacute;i độ đ&egrave;n tăng s&aacute;ng &ocirc; t&ocirc; tại <strong>Thanh Sang Auto&nbsp;</strong>kh&ocirc;ng những đảm bảo yếu tố an to&agrave;n m&agrave; chi ph&iacute; cũng rất tiết kiệm v&agrave; ph&ugrave; hợp với ng&acirc;n s&aacute;ch của anh em chủ xe. Một số g&oacute;i độ đ&egrave;n ti&ecirc;u biểu tại <strong><em>Thanh Sang Auto</em></strong> c&oacute; gi&aacute; độ đ&egrave;n &ocirc; t&ocirc; giao động từ 5.500.000 vnđ &ndash; hơn 20.000.000 vnđ.</p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; b&aacute;o&nbsp;<strong>gi&aacute; độ đ&egrave;n &ocirc; t&ocirc;</strong>&nbsp;tăng s&aacute;ng chi tiết tại Trung t&acirc;m.</p>\r\n\r\n<p><em>Li&ecirc;n hệ hotline:</em><strong><em>&nbsp;0973 262 612</em></strong><strong><em>&nbsp;</em></strong><em>để được tư vấn cụ thể nh&eacute;!</em></p>\r\n\r\n<p>Hi vọng, qua th&ocirc;ng tin gi&aacute; độ đ&egrave;n xe hơi tr&ecirc;n, anh em chủ xe sẽ chủ động tham khảo v&agrave; chọn lựa cho m&igrave;nh giải ph&aacute;p độ đ&egrave;n ph&ugrave; hợp nhất!</p>\r\n\r\n<h2><strong>Dịch vụ độ đ&egrave;n &ocirc; t&ocirc; tại Thanh Sang Auto</strong></h2>\r\n\r\n<p><strong>Độ đ&egrave;n &ocirc; t&ocirc;</strong>&nbsp;l&agrave; một lĩnh vực mới v&agrave; đang nhận được sự quan t&acirc;m đặc biệt từ ph&iacute;a chủ xe. Tuy nhi&ecirc;n, để đảm bảo an to&agrave;n tuyệt đối cho hệ thống xe cũng như hiệu quả trong qu&aacute; tr&igrave;nh sử dụng, Qu&yacute; Kh&aacute;ch H&agrave;ng cần c&acirc;n nhắc lựa chọn cơ sở độ đ&egrave;n uy t&iacute;n nhất.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"1200\" src=\"/image/images/z2685894960531_83f23ca52dad666a4b476deafc81d14c.jpg\" width=\"900\" /></p>\r\n\r\n<p style=\"text-align:center\"><em>Trung t&acirc;m chuy&ecirc;n độ đ&egrave;n &ocirc; t&ocirc; uy t&iacute;n v&agrave; an to&agrave;n Thanh Sang Auto tại Gia Lai</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với hơn 8 năm kinh nghiệm trong lĩnh vực&nbsp;<strong>độ xe &ocirc; t&ocirc;</strong>, <strong>Thanh Sang Auto</strong> cam kết mang đến cho Kh&aacute;ch H&agrave;ng dịch vụ độ đ&egrave;n an to&agrave;n v&agrave; hiệu quả nhất.</p>\r\n\r\n<p>✅ Tư vấn giải ph&aacute;p tăng s&aacute;ng cũng như d&ograve;ng sản phẩm th&iacute;ch ứng với thiết kế v&agrave; c&ocirc;ng suất xe.</p>\r\n\r\n<p>✅ Cam kết chất lượng dịch vụ đảm bảo, độ s&aacute;ng ổn định, bảo h&agrave;nh d&agrave;i hạn cho Kh&aacute;ch H&agrave;ng.</p>\r\n\r\n<p>✅ Quy tr&igrave;nh lắp đặt kh&ocirc;ng độ chế, ho&agrave;n to&agrave;n cắm giắc zin, đảm bảo zin xe.</p>\r\n\r\n<p>✅ Đội ngũ kỹ thuật thi c&ocirc;ng c&oacute; hơn 15 năm kinh nghiệm trong&nbsp;<strong>độ đ&egrave;n &ocirc; t&ocirc;</strong>.</p>\r\n\r\n<p>✅ Cơ sở hạ tầng đảm bảo: Ph&ograve;ng độ đ&egrave;n chuy&ecirc;n nghiệp, đảm bảo yếu tố &aacute;nh s&aacute;ng, nhiệt độ.</p>\r\n\r\n<p>✅ Hệ thống m&aacute;y m&oacute;c thiết bị đầy đủ v&agrave; hiện đại: m&aacute;y hấp, hệ thống căn chỉnh&hellip;</p>\r\n\r\n<p><em>Qu&yacute; Kh&aacute;ch H&agrave;ng c&oacute; nhu cầu độ đ&egrave;n tăng s&aacute;ng an to&agrave;n cho xe &ocirc; t&ocirc; vui l&ograve;ng li&ecirc;n hệ:&nbsp;<strong>0973 262 612</strong></em><strong><em>&nbsp;</em></strong><em>ngay h&ocirc;m nay để kh&ocirc;ng bỏ lỡ những ưu đ&atilde;i đặc biệt.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Một số h&igrave;nh ảnh độ đ&egrave;n tăng s&aacute;ng an to&agrave;n tại Thanh Sang Auto</strong></h2>\r\n\r\n<p><strong><em>Thanh Sang Auto</em></strong> xin gửi đến anh em chủ xe một số h&igrave;nh ảnh&nbsp;<strong>độ đ&egrave;n &ocirc; t&ocirc;</strong>&nbsp;&ndash; tăng s&aacute;ng an to&agrave;n thực hiện tại trung t&acirc;m. Xin cảm ơn Qu&yacute; Vị đ&atilde; tin tưởng v&agrave; lựa chọn Thanh Sang Auto!</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"1080\" src=\"/image/images/z2704058278836_85ab6260155c0e12b58a7c8991ef479e.jpg\" width=\"1080\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"1200\" src=\"/image/images/z2704058879102_452d492e68e8dbb90b34f5b6f4676849.jpg\" width=\"900\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"1200\" src=\"/image/images/z2683370486254_bfb042d2daf27c0eea4ecb9d29d8db81.jpg\" width=\"899\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Thanh Sang Auto\" height=\"1200\" src=\"/image/images/z2685894960267_548c2935f94fbefcc58a8a9f14459ea0.jpg\" width=\"900\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>H&atilde;y li&ecirc;n hệ ngay&nbsp;Thanh Sang Auto để nhận tư vấn về sản phẩm!</strong>&nbsp;</p>\r\n\r\n<p>Địa chỉ: 03 - 03 L&ecirc; Th&aacute;nh T&ocirc;n - Tp.Pleiku - Tỉnh Gia Lai</p>\r\n\r\n<p>Hotline:&nbsp;0973 262 612</p>\r\n\r\n<p>Email:&nbsp;gnassang14@gmail.com</p>\r\n\r\n<p>Website:&nbsp;<a href=\"https://thanhsangauto.com/\">thanhsangauto.com</a></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'NÂNG CẤP ĐÈN BI CHÍNH HÃNG TẠI THANH SANG AUTO', 'Nâng Cấp Đèn Bi Chính Hãng - Thanh Sang Auto', 'nang-cap-den-bi-chinh-hang-tai-thanh-sang-auto', 'Nâng Cấp Đèn Bi Chính Hãng - Thanh Sang Auto', NULL, 68),
(92, 'en', 'english version Rửa xe + hút bụi và rửa gầm', 'english version ', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Rửa xe + hút bụi và rửa gầm', '', 'en-rua-xe-hut-bui-va-rua-gam', '', NULL, 68);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `time` date DEFAULT NULL,
  `ask` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_me_identify` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_me_token` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `kich_hoat` int(11) NOT NULL DEFAULT 0,
  `khoa_hoc` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`, `time`, `ask`, `remember_me_identify`, `remember_me_token`, `kich_hoat`, `khoa_hoc`) VALUES
(12, 'Trương Quang Tuấn', 'tuan@gmail.com', NULL, NULL, '$2y$10$l15wzeHOCfLeLmoCLs1J0e9XjAj2PpEouJM9AbLK2ANaKQKZU4m42', NULL, 1, '2023-07-10', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '7G4R6MVZ5rKbCpGK9Qqn', 'rNEpNQkofF6Ha3y2VHMq87jfOnJAR9', 0, '[\"508\"]'),
(13, 'Nguyễn Thị Huyền', 'Bennhautrondoi65@gmail.com', NULL, NULL, '$2y$10$VYw3H8zz4zNJ5dPl19mYUum8G3RmXTAk7xp0m9jNQW/HsuN28zaGG', NULL, 1, '2023-07-13', '$2y$10$66gyyO6/YoWL.2NTn46W4u5Wq9Isg8.TlfwXwHt36iPLbPxSNR5pe', 'mjRfCGWm4ojAzDVR4ogY', 'stET9Ww1TJ88FtiiUmYMtzy7dOOoxj', 1, '[\"508\"]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT 0,
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `bai`
--
ALTER TABLE `bai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chuong_id` (`chuong_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `chuong`
--
ALTER TABLE `chuong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `dat_dich_vu`
--
ALTER TABLE `dat_dich_vu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dich_vu_dat`
--
ALTER TABLE `dich_vu_dat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `link_bai`
--
ALTER TABLE `link_bai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bai_id` (`bai_id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_dv_hot`
--
ALTER TABLE `menu_dv_hot`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_sp_hot`
--
ALTER TABLE `menu_sp_hot`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `newstag`
--
ALTER TABLE `newstag`
  ADD PRIMARY KEY (`newstag_id`);

--
-- Chỉ mục cho bảng `newstag_languages`
--
ALTER TABLE `newstag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `producttag`
--
ALTER TABLE `producttag`
  ADD PRIMARY KEY (`producttag_id`);

--
-- Chỉ mục cho bảng `producttag_languages`
--
ALTER TABLE `producttag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicetag`
--
ALTER TABLE `servicetag`
  ADD PRIMARY KEY (`servicetag_id`);

--
-- Chỉ mục cho bảng `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bai`
--
ALTER TABLE `bai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chuong`
--
ALTER TABLE `chuong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dat_dich_vu`
--
ALTER TABLE `dat_dich_vu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `dich_vu_dat`
--
ALTER TABLE `dich_vu_dat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `link_bai`
--
ALTER TABLE `link_bai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT cho bảng `menu_dv_hot`
--
ALTER TABLE `menu_dv_hot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;

--
-- AUTO_INCREMENT cho bảng `menu_sp_hot`
--
ALTER TABLE `menu_sp_hot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT cho bảng `newstag`
--
ALTER TABLE `newstag`
  MODIFY `newstag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `newstag_languages`
--
ALTER TABLE `newstag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=591;

--
-- AUTO_INCREMENT cho bảng `producttag`
--
ALTER TABLE `producttag`
  MODIFY `producttag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `producttag_languages`
--
ALTER TABLE `producttag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1019;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `servicetag`
--
ALTER TABLE `servicetag`
  MODIFY `servicetag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bai`
--
ALTER TABLE `bai`
  ADD CONSTRAINT `bai_ibfk_1` FOREIGN KEY (`chuong_id`) REFERENCES `chuong` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chuong`
--
ALTER TABLE `chuong`
  ADD CONSTRAINT `chuong_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `link_bai`
--
ALTER TABLE `link_bai`
  ADD CONSTRAINT `link_bai_ibfk_1` FOREIGN KEY (`bai_id`) REFERENCES `bai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
