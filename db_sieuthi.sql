-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 12, 2020 lúc 03:45 PM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_sieuthi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(14, 14, '2017-03-23', 160000, 'COD', 'k', '2017-03-23 04:46:05', '2017-03-23 04:46:05'),
(13, 13, '2017-03-21', 400000, 'ATM', 'Vui lòng giao hàng trước 5h', '2017-03-21 07:29:31', '2017-03-21 07:29:31'),
(12, 12, '2017-03-21', 520000, 'COD', 'Vui lòng chuyển đúng hạn', '2017-03-21 07:20:07', '2017-03-21 07:20:07'),
(11, 11, '2017-03-21', 420000, 'COD', 'không chú', '2017-03-21 07:16:09', '2017-03-21 07:16:09'),
(15, 15, '2017-03-24', 220000, 'COD', 'e', '2017-03-24 07:14:32', '2017-03-24 07:14:32'),
(16, 16, '2019-12-31', 150000, 'COD', 'ttgygtugy', '2019-12-31 02:04:37', '2019-12-31 02:04:37'),
(17, 17, '2020-01-11', 150000, 'COD', 'ư2àdsgdsg', '2020-01-11 02:35:36', '2020-01-11 02:35:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'số lượng',
  `unit_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(18, 15, 62, 5, 220000, '2017-03-24 07:14:32', '2017-03-24 07:14:32'),
(17, 14, 2, 1, 160000, '2017-03-23 04:46:05', '2017-03-23 04:46:05'),
(16, 13, 60, 1, 200000, '2017-03-21 07:29:31', '2017-03-21 07:29:31'),
(15, 13, 59, 1, 200000, '2017-03-21 07:29:31', '2017-03-21 07:29:31'),
(14, 12, 60, 2, 200000, '2017-03-21 07:20:07', '2017-03-21 07:20:07'),
(13, 12, 61, 1, 120000, '2017-03-21 07:20:07', '2017-03-21 07:20:07'),
(12, 11, 61, 1, 120000, '2017-03-21 07:16:09', '2017-03-21 07:16:09'),
(11, 11, 57, 2, 150000, '2017-03-21 07:16:09', '2017-03-21 07:16:09'),
(19, 16, 1, 1, 150000, '2019-12-31 02:04:37', '2019-12-31 02:04:37'),
(20, 17, 1, 1, 150000, '2020-01-11 02:35:36', '2020-01-11 02:35:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(15, 'ê', 'Nữ', 'huongnguyen@gmail.com', 'e', 'e', 'e', '2017-03-24 07:14:32', '2017-03-24 07:14:32'),
(14, 'hhh', 'nam', 'huongnguyen@gmail.com', 'Lê thị riêng', '99999999999999999', 'k', '2017-03-23 04:46:05', '2017-03-23 04:46:05'),
(13, 'Hương Hương', 'Nữ', 'huongnguyenak96@gmail.com', 'Lê Thị Riêng, Quận 1', '23456789', 'Vui lòng giao hàng trước 5h', '2017-03-21 07:29:31', '2017-03-21 07:29:31'),
(12, 'Khoa phạm', 'Nam', 'khoapham@gmail.com', 'Lê thị riêng', '1234567890', 'Vui lòng chuyển đúng hạn', '2017-03-21 07:20:07', '2017-03-21 07:20:07'),
(11, 'Hương Hương', 'Nữ', 'huongnguyenak96@gmail.com', 'Lê Thị Riêng, Quận 1', '234567890-', 'không chú', '2017-03-21 07:16:09', '2017-03-21 07:16:09'),
(16, 'hung tran', 'nam', 'zaikdg@gmail.com', '12 vo thi sau', '123456', 'ttgygtugy', '2019-12-31 02:04:37', '2019-12-31 02:04:37'),
(17, 'áđâs', 'nam', 'zaikdg@gmail.com', '12 vo thi sau', '1642745838', 'ư2àdsgdsg', '2020-01-11 02:35:36', '2020-01-11 02:35:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'tiêu đề',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'nội dung',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'hình',
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `create_at`, `update_at`) VALUES
(1, 'Mùa trung thu năm nay, Hỷ Lâm Môn muốn gửi đến quý khách hàng sản phẩm mới xuất hiện lần đầu tiên tại Việt nam \"Bánh trung thu Bơ Sữa HongKong\".', 'Những ý tưởng dưới đây sẽ giúp bạn sắp xếp tủ quần áo trong phòng ngủ chật hẹp của mình một cách dễ dàng và hiệu quả nhất. ', 'sample1.jpg', '2017-03-11 06:20:23', '0000-00-00 00:00:00'),
(2, 'Tư vấn cải tạo phòng ngủ nhỏ sao cho thoải mái và thoáng mát', 'Chúng tôi sẽ tư vấn cải tạo và bố trí nội thất để giúp phòng ngủ của chàng trai độc thân thật thoải mái, thoáng mát và sáng sủa nhất. ', 'sample2.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(3, 'Đồ gỗ nội thất và nhu cầu, xu hướng sử dụng của người dùng', 'Đồ gỗ nội thất ngày càng được sử dụng phổ biến nhờ vào hiệu quả mà nó mang lại cho không gian kiến trúc. Xu thế của các gia đình hiện nay là muốn đem thiên nhiên vào nhà ', 'sample3.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(4, 'Hướng dẫn sử dụng bảo quản đồ gỗ, nội thất.', 'Ngày nay, xu hướng chọn vật dụng làm bằng gỗ để trang trí, sử dụng trong văn phòng, gia đình được nhiều người ưa chuộng và quan tâm. Trên thị trường có nhiều sản phẩm mẫu ', 'sample4.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(5, 'Phong cách mới trong sử dụng đồ gỗ nội thất gia đình', 'Đồ gỗ nội thất gia đình ngày càng được sử dụng phổ biến nhờ vào hiệu quả mà nó mang lại cho không gian kiến trúc. Phong cách sử dụng đồ gỗ hiện nay của các gia đình hầu h ', 'sample5.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `unit_price`, `promotion_price`, `image`, `unit`, `new`, `created_at`, `updated_at`) VALUES
(1, 'Cua siêu ngon', 1, '', 150000, 0, 'cua.jpg', 'hộp', 1, '2016-10-26 03:00:16', '2019-12-30 08:02:22'),
(2, 'Tôm siêu ngon', 1, '', 180000, 160000, 'tom.jpg', 'hộp', 1, '2016-10-26 03:00:16', '2019-12-30 07:34:35'),
(3, 'Sò siêu ngon', 1, '', 150000, 120000, 'so.jpg', 'hộp', 0, '2016-10-26 03:00:16', '2019-12-30 07:35:50'),
(4, 'Alifood Siêu ngon', 2, '', 160000, 0, 'AlifoodCorner.jpg', 'hộp', 0, '2016-10-26 03:00:16', '2019-12-30 08:12:19'),
(5, 'Áo gió Siêu ngon', 2, '', 160000, 0, 'aogio.jpg', 'hộp', 1, '2016-10-26 03:00:16', '2019-12-30 08:07:09'),
(6, 'Áo len siêu ngon', 2, '', 200000, 180000, 'aolen.jpg', 'hộp', 0, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(7, 'Bộ chuột Siêu ngon', 2, '', 160000, 0, 'bochuot.jpg', 'hộp', 1, '2016-10-26 03:00:16', '2019-12-30 07:40:16'),
(8, 'Bộ sạc Siêu ngon', 2, '', 160000, 150000, 'bosac.jpg', 'hộp', 0, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(9, 'Bộ thu âm Siêu ngon', 2, '', 160000, 150000, 'bothuam.jpg', 'hộp', 0, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(11, 'Cáp sạc nhanh', 2, '', 250000, 0, 'capsac.jpg', 'cái', 0, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(12, 'Combo 2 tay ps4', 2, '', 200000, 180000, 'combo2ps2.jpg', 'cái', 0, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(13, 'Cơm chay siêu ngon', 2, '', 300000, 280000, 'ComChay.jpg', 'cái', 1, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(14, 'Chay halo Siêu ngon', 3, '', 300000, 280000, 'ChayHalo.jpg', 'cái', 0, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(15, 'Dallas Cakes Siêu ngon', 3, '', 350000, 320000, 'DallasCakes.jpg', 'cái', 1, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(16, 'Đồng hồ thể thao', 3, '', 150000, 120000, 'dhthethao.jpg', 'hộp', 0, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(17, 'Đồng hồ treo', 3, '', 250000, 240000, 'dhtreo.jpg', 'cai', 0, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(18, 'Điéu cày đen', 3, '', 180000, 0, 'dieucayden.jpg', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(19, 'Đồng hồ ', 3, '', 150000, 0, 'dongho.png', 'hộp', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(20, 'Đồng hồ thể thao bé trai', 3, '', 150000, 0, 'donghobetrai.jpg', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(21, 'Đồng hồ thể thao điện tử', 3, '', 160000, 150000, 'donghodientu.png', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(22, 'Đồng hồ máy', 3, '', 160000, 150000, 'donghomay.jpg', 'hộp', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(23, 'Đồng hồ nữ', 4, '', 180000, 0, 'donghonu.jpg', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(24, 'Fpt box', 4, '', 180000, 0, 'fptbox.jpg', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(25, 'Gói ném ', 4, '', 80000, 70000, 'goinem.jpg', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(26, 'Giường ngủ', 4, '', 50000, 0, 'giuongngu.png', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(27, 'Trà hight', 4, '', 100000, 80000, 'HighlandsCoffee.jpg', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(28, 'Hộp đựng', 4, '', 120000, 0, 'hopdung.jpg', 'hộp', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(29, 'Iphone 5s', 4, '', 100000, 0, 'IPHONE5S.jpg', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(30, 'Kệ để bàn chải', 4, '', 380000, 350000, 'kedebanchai.jpg', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(31, 'Kvegetarian', 4, '', 380000, 350000, 'KVegetarian.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(32, 'Măng ', 5, '', 380000, 350000, 'MangMania.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(33, 'Máy chơi game', 5, '', 280000, 250000, 'maychoigameps2.jpg', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(34, 'Máy tính ', 5, '', 280000, 0, 'maytinh.jpg', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(35, 'Mỳ chay', 5, '', 320000, 300000, 'michay.jpg', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(36, 'Mỳ ý', 5, '', 320000, 300000, 'miy.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(37, 'Nem ráng', 5, '', 320000, 300000, 'nemran.jpg', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(38, 'Nồi đất', 5, '', 350000, 330000, 'noidat.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(39, 'Nút bấm PUPG', 5, '', 350000, 330000, 'nutbampupg.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(40, 'Tai nghe', 6, '', 350000, 330000, 'tainghe.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(41, 'Tai nghe blutút', 6, '', 350000, 330000, 'taingheblt.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(42, 'Tai nghe Gnet', 6, '', 150000, 130000, 'tainghegnet.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(43, 'Tai nghe không dây', 6, '', 120000, 0, 'tainghekhonggiay.jpg', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(44, 'Tản nhiệt', 6, '', 120000, 0, 'tainhiet.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(45, 'TukTukThaiBistro', 6, '', 120000, 0, 'TukTukThaiBistro.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(46, 'Tượng 4 chú tiểu', 6, '', 120000, 0, 'tuong4.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(47, 'The Pizza Company', 7, '', 140000, 0, 'ThePizzaCompany.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(48, 'Vòi xịt rửa', 7, '', 140000, 0, 'voixitrua.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(49, 'Xốp đại gia', 7, '', 120000, 100000, 'xopdagia.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(50, 'Bánh su kem sữa tươi', 8, '', 120000, 100000, '234.jpg', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(51, 'Bánh su kem sữa tươi chiên giòn', 8, '', 150000, 0, '54eaf93713081_-_07-germany-tuna.jpg', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(52, 'Bánh su kem dâu sữa tươi', 8, '', 150000, 0, '111.jpg', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(53, 'Bánh su kem bơ sữa tươi', 8, '', 150000, 0, '544bc48782741.png,1234.jpg', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(54, 'Bánh su kem nhân trái cây sữa tươi', 8, '', 150000, 0, '40819_food_pizza.jpg', 'hộp', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(55, 'Bánh su kem cà phê', 8, '', 150000, 0, '1234.jpg', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(56, 'Bánh su kem phô mai', 8, '', 150000, 0, '210215-banh-sinh-nhat-rau-cau-body- (6).jpg', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(57, 'Bánh su kem sữa tươi chocolate', 9, '', 150000, 0, '50020041-combo-20-banh-su-que-pho-mai-9.jpg', 'hộp', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(58, 'Bánh Macaron Pháp', 9, '', 200000, 180000, '1430967449-pancake-sau-rieng-6.jpg', '', 0, '2016-10-26 17:00:00', '2016-10-11 17:00:00'),
(59, 'Bánh Tiramisu - Italia', 9, '', 200000, 0, '1434429117-banh-su-kem-chien-20.jpg', '', 0, '2016-10-26 17:00:00', '2016-10-11 17:00:00'),
(60, 'Bánh Táo - Mỹ', 9, '', 200000, 0, 'all1).jpg', '', 0, '2016-10-26 17:00:00', '2016-10-11 17:00:00'),
(61, 'Bánh Cupcake - Anh Quốc', 9, '', 150000, 120000, 'banh kem sinh nhat.jpg', 'cái', 1, NULL, NULL),
(62, 'Bánh Sachertorte', 9, '', 250000, 220000, 'banhbonglantrung.jpg', 'cái', 0, NULL, NULL),
(63, 'Alifood Corner', 5, 'ádád', 1234, 0, 'bochuot.jpg', 'hộp', 0, '2020-01-11 02:37:20', '2020-01-11 02:37:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`, `updated_at`, `created_at`) VALUES
(1, '', '1.jpg', '2019-12-30 13:38:41', NULL),
(2, '', '3.jpg', '2019-12-30 13:39:59', NULL),
(3, '', '4.jpg', '2019-12-30 13:40:08', NULL),
(4, '', '5.jpg', '2019-12-30 13:40:15', NULL),
(5, NULL, '2.jpg', '2019-12-30 13:39:47', '2019-12-30 13:39:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Hải sản tươi sống', 1, 'cua.jpg, tom.jpg, so.jpg', NULL, '2019-12-30 07:18:15'),
(2, 'Cá', 1, 'AlifoodCorner.jpg, aogio.jpg, aolen.jpg, bochuot.jpg, bosac.jpg, bothuam.jpg, capsac.jpg, combo2ps2.jpg, ComChay.jpg', '2016-10-12 02:16:15', '2019-12-30 08:11:46'),
(3, 'Thịt các loại', 1, 'ChayHalo.jpg,DallasCakes.jpg,dhthethao.jpg,dhtreo.jpg,dieucayden.jpg,dongho.png,donghobetrai.jpg,donghodientu.png,donghomay.jpg', '2016-10-18 00:33:33', '2019-12-30 05:08:42'),
(4, 'Đồ hộp', 1, 'donghonu.jpg,fptbox.jpg,goinem.jpg,giuongngu.png,HighlandsCoffee.jpg,hopdung.jpg,IPHONE5S.jpg,kedebanchai.jpg,KVegetarian.jpg', '2016-10-26 03:29:19', '2019-12-30 05:08:48'),
(5, 'Thức ăn nhanh', 1, 'loablt.jpg,MangMania.jpg,maychoigameps2.jpg,maytinh.jpg,michay.jpg,miy.jpg,nemran.jpg,noidat.jpg,nutbampupg.jpg', '2016-10-28 04:00:00', '2019-12-30 05:08:55'),
(6, 'Đặc sản địa phương', 1, 'tainghe.jpg,taingheblt.jpg,tainghegnet.jpg,tainghekhonggiay.jpg,tainhiet.jpg,TukTukThaiBistro.jpg,tuong4.jpg\r\n', '2016-10-25 17:19:00', '2019-12-30 05:09:02'),
(7, 'Rong biển', 1, 'ThePizzaCompany.jpg,voixitrua.jpg,xopdagia.jpg', '2016-10-25 17:19:00', '2019-12-30 05:09:10'),
(8, 'Bánh kem', 1, '54eaf93713081_-_07-germany-tuna.jpg,111.jpg,234.jpg,544bc48782741.png,1234.jpg,40819_food_pizza.jpg,210215-banh-sinh-nhat-rau-cau-body- (6).jpg,50020041-combo-20-banh-su-que-pho-mai-9.jpg,1430967449-pancake-sau-rieng-6.jpg', '2019-12-30 05:07:27', '2019-12-30 05:07:27'),
(9, 'Bánh ngọt', 1, '1434429117-banh-su-kem-chien-20.jpg,20131108144733.jpg,all1).jpg,banh kem sinh nhat.jpg,banhbonglantrung.jpg,banhbonglantrungmuoi.jpg,Banh-kem (6).jpg,banhkem.jpg,banhkem-dau.jpg,banh-man-thu-vi-nhat-1.jpg,banh-mi-nhan-man.jpg,banh-su-kem-ca-phe-1.jpg', '2019-12-30 05:07:43', '2019-12-30 05:07:43'),
(10, 'Các loại ngũ cốc', 1, '1', '2019-12-30 05:07:56', '2019-12-30 05:07:56'),
(11, 'Bếp và phòng ăn', 2, '1', '2019-12-30 05:09:44', '2019-12-30 05:09:44'),
(12, 'Đèn', 2, '1', '2019-12-30 05:09:55', '2019-12-30 05:09:55'),
(13, 'Đồ ngủ', 2, '1', '2019-12-30 05:10:05', '2019-12-30 05:10:05'),
(14, 'Đồ dùng phòng tắm', 2, '11', '2019-12-30 05:10:22', '2019-12-30 05:10:22'),
(15, 'Đồ nội thất', 2, '1', '2019-12-30 05:10:37', '2019-12-30 05:10:37'),
(16, 'Trang trí nhà cửa', 2, '1', '2019-12-30 05:10:48', '2019-12-30 05:10:48'),
(17, 'Công cụ, DYI, Ngoài trời', 2, '1', '2019-12-30 05:11:15', '2019-12-30 05:11:15'),
(18, 'Văn phòng & thủ công', 2, '1', '2019-12-30 05:11:34', '2019-12-30 05:11:34'),
(19, 'Sách', 2, '1', '2019-12-30 05:11:43', '2019-12-30 05:11:43'),
(20, 'Nhạc cụ', 2, '1', '2019-12-30 05:11:51', '2019-12-30 05:11:51'),
(21, 'Điều hòa', 3, '3', '2019-12-30 06:05:53', '2019-12-30 06:05:53'),
(22, 'Máy lạnh', 3, '3', '2019-12-30 06:06:07', '2019-12-30 06:06:07'),
(23, 'Tủ lạnh', 3, '11', '2019-12-30 06:06:20', '2019-12-30 06:06:20'),
(24, 'Máy giặc', 3, '1', '2019-12-30 06:06:31', '2019-12-30 06:06:31'),
(25, 'Quạt các loại', 3, '3', '2019-12-30 06:06:44', '2019-12-30 06:06:44'),
(26, 'Robot hút bụi', 3, '3', '2019-12-30 06:06:59', '2019-12-30 06:06:59'),
(27, 'Máy hút bụi', 3, '3', '2019-12-30 06:07:14', '2019-12-30 06:07:14'),
(28, 'Thiết bị nhà bếp', 3, '1', '2019-12-30 06:07:25', '2019-12-30 06:07:25'),
(29, 'Âm thanh gia đình', 3, '3', '2019-12-30 06:07:43', '2019-12-30 06:07:43'),
(30, 'Máy sấy', 3, '1', '2019-12-30 06:08:14', '2019-12-30 06:08:14'),
(31, 'Trang phục nam', 4, '1', '2019-12-30 06:08:53', '2019-12-30 06:08:53'),
(32, 'Đồ lót nam', 4, '1', '2019-12-30 06:09:01', '2019-12-30 06:09:01'),
(33, 'Giày nam', 4, '1', '2019-12-30 06:09:17', '2019-12-30 06:09:17'),
(34, 'Túi sách nam', 4, '1', '2019-12-30 06:09:29', '2019-12-30 06:09:29'),
(35, 'Phụ kiện nam', 4, '1', '2019-12-30 06:09:44', '2019-12-30 06:09:44'),
(36, 'Trang phục bé trai', 4, '4', '2019-12-30 06:09:56', '2019-12-30 06:09:56'),
(37, 'Giày bé trai', 4, '1', '2019-12-30 06:10:05', '2019-12-30 06:10:05'),
(38, 'Túi trẻ em', 4, '1', '2019-12-30 06:10:27', '2019-12-30 06:10:27'),
(39, 'Đồ lót bé trai', 4, '1', '2019-12-30 06:10:38', '2019-12-30 06:10:38'),
(40, 'Trang phục nữ', 5, '1', '2019-12-30 06:11:22', '2019-12-30 06:11:22'),
(41, 'Giày nữ', 5, '1', '2019-12-30 06:11:39', '2019-12-30 06:11:39'),
(42, 'Túi sách nữ', 5, '1', '2019-12-30 06:11:55', '2019-12-30 06:11:55'),
(43, 'Phụ kiện nữ', 5, '1', '2019-12-30 06:12:05', '2019-12-30 06:12:05'),
(44, 'Đồ ngủ & Nội y', 5, '1', '2019-12-30 06:12:29', '2019-12-30 06:12:29'),
(45, 'Trang phụ bé gái', 5, '1', '2019-12-30 06:13:01', '2019-12-30 06:13:01'),
(46, 'Giày bé gái', 5, '1', '2019-12-30 06:13:13', '2019-12-30 06:13:13'),
(47, 'Phụ kiện bé gái', 5, '1', '2019-12-30 06:13:27', '2019-12-30 06:13:27'),
(48, 'Túi trẻ em', 5, '1', '2019-12-30 06:13:35', '2019-12-30 06:13:35'),
(49, 'Đồ lót bé gái', 5, '1', '2019-12-30 06:13:45', '2019-12-30 06:13:45'),
(50, 'Đồng hồ nam', 6, '1', '2019-12-30 06:14:31', '2019-12-30 06:14:31'),
(51, 'Đồng hồ nữ', 6, '6', '2019-12-30 06:14:47', '2019-12-30 06:14:47'),
(52, 'Đồng hồ trẻ em', 6, '6', '2019-12-30 06:15:29', '2019-12-30 06:15:29'),
(53, 'Kính mát', 6, '1', '2019-12-30 06:15:43', '2019-12-30 06:15:43'),
(54, 'Kính thời trang', 6, '1', '2019-12-30 06:15:51', '2019-12-30 06:15:51'),
(55, 'Kính áp tròng', 6, '6', '2019-12-30 06:16:02', '2019-12-30 06:16:02'),
(56, 'Trang sức nữ', 6, '6', '2019-12-30 06:16:20', '2019-12-30 06:16:20'),
(57, 'Trang sức nam', 6, '6', '2019-12-30 06:16:30', '2019-12-30 06:16:30'),
(58, 'Phụ kiện', 6, '6', '2019-12-30 06:16:37', '2019-12-30 06:16:37'),
(59, 'Xem thêm', 6, '6', '2019-12-30 06:16:45', '2019-12-30 06:16:45'),
(60, 'Trang điểm', 7, '1', '2019-12-30 06:17:20', '2019-12-30 06:17:20'),
(61, 'Chăm sóc da', 7, '7', '2019-12-30 06:17:29', '2019-12-30 06:17:29'),
(62, 'Chăm sóc tóc', 7, '7', '2019-12-30 06:17:43', '2019-12-30 06:17:43'),
(63, 'Dụng cụ làm đẹp', 7, '7', '2019-12-30 06:17:56', '2019-12-30 06:17:56'),
(64, 'Nước hoa', 7, '7', '2019-12-30 06:18:12', '2019-12-30 06:18:12'),
(65, 'Chăm sóc cho nam giới', 7, '7', '2019-12-30 06:18:33', '2019-12-30 06:18:33'),
(66, 'Chăm sóc cơ thể', 7, '7', '2019-12-30 06:18:58', '2019-12-30 06:18:58'),
(67, 'Thực phẩm chức năng', 7, '7', '2019-12-30 06:19:15', '2019-12-30 06:19:15'),
(68, 'Thiết bị y tế', 7, '6', '2019-12-30 06:19:32', '2019-12-30 06:19:32'),
(69, 'Chăm sóc cá nhân', 7, '7', '2019-12-30 06:19:46', '2019-12-30 06:19:46'),
(70, 'Chăm sóc trẻ sơ sinh, nhỏ', 8, '8', '2019-12-30 06:20:45', '2019-12-30 06:20:45'),
(71, 'Đồ dùng bú sửa và ăn dặm', 8, '8', '2019-12-30 06:21:06', '2019-12-30 06:21:06'),
(72, 'Quần áo và phụ kiện', 8, '8', '2019-12-30 06:21:24', '2019-12-30 06:21:24'),
(73, 'Tả và dụng cụ vệ sinh', 8, '8', '2019-12-30 06:21:50', '2019-12-30 06:21:50'),
(74, 'Xe, gế, điệu, nôi', 8, '8', '2019-12-30 06:22:17', '2019-12-30 06:22:17'),
(75, 'Cái loại hạt và trái cây khô', 9, '9', '2019-12-30 06:22:56', '2019-12-30 06:22:56'),
(76, 'Caramel & Kẹo bơ cứng', 9, '9', '2019-12-30 06:23:12', '2019-12-30 06:23:12'),
(77, 'Kẹo cao su & Kẹo the', 9, '9', '2019-12-30 06:23:26', '2019-12-30 06:23:26'),
(78, 'Kẹo đóng hộp', 9, '9', '2019-12-30 06:23:36', '2019-12-30 06:23:36'),
(79, 'Kẹo Marshmallow', 9, '9', '2019-12-30 06:23:48', '2019-12-30 06:23:48'),
(80, 'Kẹo Và Sô Cô La Hộp', 9, '9', '2019-12-30 06:24:02', '2019-12-30 06:24:02'),
(81, 'Thanh protein', 9, '9', '2019-12-30 06:24:16', '2019-12-30 06:24:16'),
(82, 'Kẹo xingom', 9, '9', '2019-12-30 06:24:35', '2019-12-30 06:24:35'),
(83, 'Các Loại Kẹo Khác', 9, '9', '2019-12-30 06:24:46', '2019-12-30 06:24:46'),
(84, 'Điện thoại di động', 10, '10', '2019-12-30 06:25:30', '2019-12-30 06:25:30'),
(85, 'Máy tính bảng', 10, '10', '2019-12-30 06:25:45', '2019-12-30 06:25:45'),
(86, 'Laptop', 10, '10', '2019-12-30 06:25:53', '2019-12-30 06:25:53'),
(87, 'Máy tính để bàn', 10, '10', '2019-12-30 06:26:11', '2019-12-30 06:26:11'),
(88, 'Âm thanh', 10, '10', '2019-12-30 06:26:24', '2019-12-30 06:26:24'),
(89, 'Máy chơi game', 10, '10', '2019-12-30 06:26:35', '2019-12-30 06:26:35'),
(90, 'Camera/Máy quay', 10, '10', '2019-12-30 06:26:53', '2019-12-30 06:26:53'),
(91, 'Camera giám sát', 10, '10', '2019-12-30 06:27:09', '2019-12-30 06:27:09'),
(92, 'Camera kĩ thuật số', 10, '10', '2019-12-30 06:27:42', '2019-12-30 06:27:42'),
(93, 'Xem thêm', 4, '1', '2019-12-30 06:32:37', '2019-12-30 06:32:37'),
(94, 'Kẹo bigbabom', 9, '8', '2019-12-30 06:33:34', '2019-12-30 06:33:34'),
(95, 'Xem thêm', 10, '1', '2019-12-30 06:33:53', '2019-12-30 06:33:53'),
(96, 'Tả lót', 8, '8', '2019-12-30 06:35:24', '2019-12-30 06:35:24'),
(97, 'Tả siêu thấm', 8, '7', '2019-12-30 06:35:39', '2019-12-30 06:35:39'),
(98, 'Tả khô', 8, '8', '2019-12-30 06:35:49', '2019-12-30 06:35:49'),
(99, 'Tả pro siêu to', 8, '1', '2019-12-30 06:36:37', '2019-12-30 06:36:37'),
(100, 'Xem thêm', 8, '8', '2019-12-30 06:36:45', '2019-12-30 06:36:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `remember_token`, `level`, `created_at`, `updated_at`) VALUES
(6, 'Hương Hương', 'huonghuong08.php@gmail.com', '$2y$10$rGY4KT6ZSMmLnxIbmTXrsu2xdgRxm8x0UTwCyYCAzrJ320kYheSRq', '23456789', 'Hoàng Diệu 2', NULL, NULL, '2017-03-23 07:17:33', '2017-03-23 07:17:33'),
(7, 'admin', 'admin@gmail.com', '$2y$10$qfaZ0NwA39mtP0yg5Hs.V.SeCAIqOXcB9xrobuP0iT/.duktmX8Ti', '123456', '123,ABC', NULL, 1, '2019-12-30 12:11:43', '2019-12-30 12:12:40'),
(8, 'ádmànmdk', 'zaikdg@gmail.com', '$2y$10$BwwmzJgDHIHY4Fyb6rVlLunIlN1OHFJrXPhC0UsmxHrE/Ow79o2p6', '123456', 'Street Address', NULL, NULL, '2019-12-30 12:39:41', '2019-12-30 12:39:41');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_ibfk_1` (`id_customer`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
