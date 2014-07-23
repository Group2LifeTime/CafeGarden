-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2014 at 03:41 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cafevn`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `places_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `places_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `places_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=199 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `code`) VALUES
(166, '-S6-img5770.JPG', '531fa538a1cfc03f8c259bce'),
(167, '-EY-img5781.JPG', '531fa538a1cfc03f8c259bce'),
(168, '-2O-img5875.JPG', '531fa538a1cfc03f8c259bce'),
(169, '-91-img5877.JPG', '531fa538a1cfc03f8c259bce'),
(170, '-FK-img5906.JPG', '531fa538a1cfc03f8c259bce'),
(171, '-21-img5928.JPG', '531fa538a1cfc03f8c259bce'),
(172, '-YD-img5937.JPG', '531fa538a1cfc03f8c259bce'),
(173, '-U3-15177224654195569376244224668272148249533n.jpg', '53997c55a1cfc07e9044f1d2'),
(174, '-ZL-acoustic02.jpg', '53997c55a1cfc07e9044f1d2'),
(175, '-SB-acoustic04.jpg', '53997c55a1cfc07e9044f1d2'),
(176, '-SK-acoustic4promo.jpg', '53997c55a1cfc07e9044f1d2'),
(177, '-NK-image001.jpg', '530178b8a1cfc043182b0347'),
(178, '-NX-image002.jpg', '530178b8a1cfc043182b0347'),
(179, '-9Z-image003.jpg', '530178b8a1cfc043182b0347'),
(180, '-VG-image006.jpg', '530178b8a1cfc043182b0347'),
(181, '-ZY-image008.jpg', '530178b8a1cfc043182b0347'),
(182, '-LT-image009.jpg', '530178b8a1cfc043182b0347'),
(183, '-PH-image010.jpg', '530178b8a1cfc043182b0347'),
(184, '-RX-image011.jpg', '530178b8a1cfc043182b0347'),
(185, '-XG-image012.jpg', '530178b8a1cfc043182b0347'),
(186, '-1I-image013.jpg', '530178b8a1cfc043182b0347'),
(187, '-RW--3s-img0229.JPG', '52956ac7a1cfc01b5cbb50f6'),
(188, '-GF--35-img0241.JPG', '52956ac7a1cfc01b5cbb50f6'),
(189, '-GH--dp-img0238.JPG', '52956ac7a1cfc01b5cbb50f6'),
(190, '-F6--dt-img0243.JPG', '52956ac7a1cfc01b5cbb50f6'),
(191, '-42--k4-img0004.JPG', '52956ac7a1cfc01b5cbb50f6'),
(192, '-FE--mv-img0234.JPG', '52956ac7a1cfc01b5cbb50f6'),
(193, '-6D--sk-img0239.JPG', '52956ac7a1cfc01b5cbb50f6'),
(194, '-8U-ca-phe-no1-hoang-dieu-2.jpg', '523b2747a1cfc031a8456904'),
(195, '-CN-ca-phe-no1-hoang-dieu-3.jpg', '523b2747a1cfc031a8456904'),
(196, '-2Q-ca-phe-no1-hoang-dieu-4.jpg', '523b2747a1cfc031a8456904'),
(197, '-O8-ca-phe-no1-hoang-dieu-34.jpg', '523b2747a1cfc031a8456904'),
(198, '-JG-ca-phe-no1-hoang-dieu.jpg', '523b2747a1cfc031a8456904');

-- --------------------------------------------------------

--
-- Table structure for table `informations`
--

CREATE TABLE IF NOT EXISTS `informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timeservice` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `holiday` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priceavg` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `methodpay` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `informations`
--

INSERT INTO `informations` (`id`, `timeservice`, `holiday`, `storage`, `priceavg`, `methodpay`, `lang`, `code`) VALUES
(25, '  06:00 - 23:00 ', '   ... ', '   10 khách ', '   0,000 - 10,000 VNĐ ', '    ', '   English ', '531fa538a1cfc03f8c259bce'),
(26, '  06:00 - 23:00 ', '   ... ', '   10 khách ', '   0,000 - 10,000 VNĐ ', '    ', '   English ', '53997c55a1cfc07e9044f1d2'),
(27, '12:00 - 23:00', 'Đang cập nhật', '150 khách', '15,000 - 35,000 VNĐ', 'Tiền mặt', 'English', '530178b8a1cfc043182b0347'),
(28, '06:00 - 23:30', 'Đang cập nhật', '100 khách', '15,000 - 40,000 VNĐ', 'Tiền mặt', 'English', '52956ac7a1cfc01b5cbb50f6'),
(29, '  07:30 - 23:00 ', '   ... ', '   200 khách ', '   5,000 - 100,000 VNĐ ', '   Tiền mặt ', '   English ', '523b2747a1cfc031a8456904');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `unit` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `categories_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE IF NOT EXISTS `places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `district` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `national` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `houseno` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ward` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `numlike` int(11) DEFAULT NULL,
  `code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vote` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `phone`, `latitude`, `longitude`, `intro`, `image`, `district`, `national`, `street`, `province`, `houseno`, `ward`, `view`, `numlike`, `code`, `vote`) VALUES
(29, 'Mixx coffee & live music', '', '20.9638896', '105.791835', '                                  Tọa lạc tại một vị tr&iacute; &ldquo;đắc địa&rdquo; của Khu Đ&ocirc; thị Xa La, c&aacute;ch cổng ch&agrave;o khu đ&ocirc; thị Xa La H&agrave; Đ&ocirc;ng chỉ với 50m. Mixx Coffee được thiết kế hướng tới nhiều đối tượng, từ những bạn sinh vi&ecirc;n học sinh muốn t&igrave;m kh&ocirc;ng gian l&atilde;ng mạn tối cuối tuần, những bạn trẻ y&ecirc;u nhạc sống muốn thoả sức đam m&ecirc;, cho đến c&aacute;c thanh ni&ecirc;n y&ecirc;u th&iacute;ch m&ocirc;n thể thao vua B&oacute;ng Đ&aacute; khi m&ugrave;a giải bắt đầu hay cho c&aacute;c doanh nh&acirc;n muốn tận hưởng ly caf&eacute; s&aacute;ng với tờ b&aacute;o kinh tế tr&ecirc;n tay.&nbsp;\r\n \r\n Qu&aacute;n c&oacute; sự đầu tư về nội thất cũng như kh&ocirc;ng gian, ghế ngồi lu&ocirc;n được chăm ch&uacute;t cẩn thận v&agrave; tỉ mỉ từ d&eacute;cor đơn giản nhưng tinh tế bởi những bức tranh vintage cho đến bức ph&aacute;c hoạ 3D mỹ thuật t&agrave;i hoa của hoạ sĩ tranh tường.&nbsp;\r\n \r\n Kh&ocirc;ng gian qu&aacute;n tuy kh&eacute;p k&iacute;n nhưng kh&ocirc;ng bị ngột ngạt bởi sự giao thoa nhịp nh&agrave;ng với những g&oacute;c mở hướng s&acirc;n b&ecirc;n ngo&agrave;i cũng như b&ecirc;n trong, qua &ocirc; cửa k&iacute;nh lớn bạn c&oacute; thể thoải m&aacute;i tựa lưng tr&ecirc;n sofa, trầm chậm lắng nghe một bản nhạc, nh&acirc;m nhi một t&aacute;ch caf&eacute; v&agrave; nh&igrave;n r&otilde; những ồn &agrave;o phố thị b&ecirc;n ngo&agrave;i, những tấp nập vội v&atilde; của cuộc sống.\r\n \r\n Thực đơn của MIxx Coffee rất phong ph&uacute;, đa dạng, ngo&agrave;i thức uống ch&iacute;nh l&agrave; c&agrave; ph&ecirc; c&aacute;c loại được pha chế từ những hạt c&agrave; ph&ecirc; sạch, nguy&ecirc;n chất đến từ cao nguy&ecirc;n L&acirc;m Đồng c&ograve;n c&oacute; c&aacute;c loại kem, c&aacute;c loại sinh tố, nước &eacute;p hoa quả tươi, c&aacute;c m&oacute;n ăn nhẹ&hellip;với mức gi&aacute; hợp l&yacute; cho tất cả mọi đối tượng người ti&ecirc;u d&ugrave;ng khi đến thưởng thức 1 kh&ocirc;ng gian thanh lịch l&atilde;ng mạn n&agrave;y... B&ecirc;n cạnh đ&oacute;, qu&aacute;n c&ograve;n phục vụ b&igrave;nh Shisha đến từ Ả Rập với nhiều hương vị kh&aacute;c nhau.\r\n \r\n &hellip;Với kh&ocirc;ng gian vừa ấm c&uacute;ng, vừa thanh lịch lại vừa sang trọng, Mixx Coffee quả thật l&agrave; nơi l&yacute; tưởng để bạn b&egrave; gặp gỡ giao lưu, l&agrave; nơi l&yacute; tưởng cho c&aacute;c đối t&aacute;c c&ugrave;ng trao đổi c&ocirc;ng việc v&agrave; cũng l&agrave; nơi để c&aacute;c th&agrave;nh vi&ecirc;n trong một gia đ&igrave;nh c&ugrave;ng thư gi&atilde;n chuyện tr&ograve;, c&ugrave;ng thỏa nỗi đam m&ecirc; s&aacute;ng tạo&hellip;\r\n \r\n Kh&ocirc;ng chỉ vậy, v&agrave;o tối cuối tuần từ thứ 4 cho đến thứ 7, Mixx caf&eacute; c&ograve;n c&oacute; những đ&ecirc;m nhạc sống được thực hiện bởi c&aacute;c ca sĩ, nh&oacute;m nhạc, nh&oacute;m nhẩy, belly dance với nhiều phong c&aacute;ch kh&aacute;c nhau, từ phong c&aacute;ch cổ điển l&atilde;ng mạn Acoustic, những bản Ballad nhẹ nh&agrave;ng tinh tế, những t&igrave;nh kh&uacute;c vượt thời gian mang &acirc;m hưởng cuộc sống. Những buổi event với nhiều chương tr&igrave;nh khuyến m&atilde;i, tặng phẩm lu&ocirc;n được qu&aacute;n đưa đến nhằm phục vụ thực kh&aacute;ch một c&aacute;ch tốt nhất.\r\n \r\n &hellip;H&atilde;y cứ đến đ&acirc;y một lần đi, đến rồi h&ograve;a v&agrave;o kh&ocirc;ng gian y&ecirc;n ả, l&atilde;ng mạn, đ&aacute;ng y&ecirc;u n&agrave;y, đến c&ugrave;ng bạn b&egrave;, đến c&ugrave;ng gia đ&igrave;nh hay đơn giản chỉ đến một m&igrave;nh giao lưu với những người bạn mới tại qu&aacute;n &ndash; Mixx Caf&eacute; &ndash; nơi kh&ocirc;ng gian mở cho tất cả mọi người.  https://www.facebook.com/mixxcafe.xala </p>                              ', '-BI-65642796211650395570620267757n.jpg', 'Hà Đông', 'Việt Nam', 'Xa La', 'Hà Nội', 'Vt 16 - Bt 11', 'Phúc xá', 0, 0, '531fa538a1cfc03f8c259bce', 1),
(30, 'Tửng House Acoustic Cafe', '', '10.811714076157', '106.67918635582', '                                  Tửng House&nbsp;l&agrave; một qu&aacute;n tr&agrave; sữa - cafe d&agrave;nh cho c&aacute;c bạn trẻ v&agrave; những ai y&ecirc;u th&iacute;ch chia sẻ cảm x&uacute;c &acirc;m nhạc. Được chăm ch&uacute;t bởi những ch&iacute;nh người trẻ đầy t&acirc;m huyết, Tửng House c&ograve;n mang đậm chất th&acirc;n quen, bạn b&egrave;. M&igrave;nh l&agrave; một trong số những người kh&aacute;ch cảm thấy th&iacute;ch c&aacute;c bạn trẻ tại đ&acirc;y đ&atilde; tạo n&ecirc;n Tửng House. Đ&uacute;ng như slogan &quot;Love Your Life&quot;, Tửng House lu&ocirc;n mong muốn tạo n&ecirc;n những kh&ocirc;ng gian tận hưởng thoải m&aacute;i v&agrave; tuyệt vời nhất cho c&aacute;c bạn.\r\n \r\n Tại đ&acirc;y c&aacute;c bạn c&oacute; thể thưởng thức những m&oacute;n ngon phong ph&uacute; như Tr&agrave; sữa, Cafe, c&aacute;c m&oacute;n sinh tố, nước &eacute;p ngon l&agrave;nh.\r\n Đặc biệt, Tửng House thường xuy&ecirc;n c&oacute; những&nbsp;đ&ecirc;m nhạc Acoustic&nbsp;đầy cảm x&uacute;c, mỗi chương tr&igrave;nh l&agrave; một chủ đề được chuẩn bị kỹ lưỡng. M&igrave;nh đặc biệt th&iacute;ch c&aacute;ch dẫn chuyện v&agrave; bi&ecirc;n tập b&agrave;i h&aacute;t cho những đ&ecirc;m nhạc tại đ&acirc;y, đ&uacute;ng chất l&agrave; một điểm hẹn d&agrave;nh cho những người m&ecirc; nhạc.\r\n \r\n Tửng House\r\n 778/A2 Nguyễn Kiệm Ph&uacute; Nhuận (ngay trường CĐ T&agrave;i ch&iacute;nh Hải Quan)\r\n Gh&eacute; thăm Facebook v&agrave; ủng hộ Tửng House:&nbsp;https://www.facebook.com/tung.cafeandmilktea  &nbsp;        </p>                              ', '-R1-logofb.png', 'Phú Nhuận', 'Việt Nam', '778/A2 Nguyễn Kiệm Phú Nhuận', 'Hồ Chí Minh', '778/A2', '', 0, 0, '53997c55a1cfc07e9044f1d2', 1),
(31, 'Likes Cafe', '', '20.992964033493', '105.84945941003', '                                                                                                                                          &nbsp;                                                                                                                                                                                ', '-R3-image001.jpg', 'Hai Bà Trưng', 'Việt Nam', 'Trương Định', 'Hà Nội', 'Số 2 ngõ Trại Cá 118 Trương Định', 'Trương Định', 0, 0, '530178b8a1cfc043182b0347', 2),
(32, 'Coffee Winner', '', '10.806973488932', '106.64809107766', '                                                                                                                                          &nbsp;                                                                                                                                                                                ', '-8O-img0229.JPG', 'Tân Bình', 'Việt Nam', 'Hoàng Hoa Thám', 'Hồ Chí Minh', '166', '13', 0, 0, '52956ac7a1cfc01b5cbb50f6', 1),
(33, 'Cà phê No1', '', '12.6837278', '108.0386817', '                                  Hãy tận hưởng hương vị cà phê vào mỗi sáng thì hãy đến với cà phê N01. Được tọa lạc ngay giữa trung tâm TP, PG tại đây vừa xinh đẹp vừa rất lịch sự. Quán sẽ làm hài lòng những khách hàng khó tính nhất.                              ', '-EK-ca-phe-no1-hoang-dieu.jpg', 'Tp. Buôn Ma Thuột', 'Việt Nam', 'Hoàng Diệu', 'Đắk Lắk', '20', '', 0, 0, '523b2747a1cfc031a8456904', 1),
(34, 'HAPPY COFFEE BEAN', '', '21.035540436494', '105.85187673569', '                                  Bỏ lại sau lưng những &acirc;m thanh n&aacute;o nhi&ecirc;t của&nbsp; một trong những con phố sầm uất v&agrave; đ&ocirc;ng đ&uacute;c nhất H&agrave; Nội. H&ograve;a m&igrave;nh trong kh&ocirc;ng kh&iacute; l&atilde;ng mạn của Happy Cofee Bean. Đắm ch&igrave;m trong những giọt c&agrave; ph&ecirc; nguy&ecirc;n chất v&agrave; thưởng thức t&igrave;nh y&ecirc;u qua sự ngọt ng&agrave;o m&agrave; caramel ice blended, mocha, expresso, cafe Americano, cappucino, cafe latte, fruit smoothies...mang lại. Happy Cofee Bean l&agrave; nơi m&agrave; bạn kh&ocirc;ng thể bỏ qua khi gh&eacute; thăm 36 phố phường của H&agrave; Nội.&nbsp;  &nbsp;H&atilde;y đ&oacute;n ch&agrave;o một ng&agrave;y rộn r&atilde; niềm vui c&ugrave;ng Happy Coffee Bean 80 H&agrave;ng Buồm. </p>                              ', '-ZH-1379462735517349808485766832288n.jpg', 'Hoàn Kiếm', 'Việt Nam', 'HÀNG BUỒM', 'Hà Nội', '80', 'HÀNG BUỒM', 0, 0, '52667d07a1cfc024c4552ae2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `places_purports`
--

CREATE TABLE IF NOT EXISTS `places_purports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `places_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purports_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=343 ;

--
-- Dumping data for table `places_purports`
--

INSERT INTO `places_purports` (`id`, `places_id`, `purports_id`) VALUES
(287, '531fa538a1cfc03f8c259bce', '21'),
(288, '531fa538a1cfc03f8c259bce', '26'),
(289, '531fa538a1cfc03f8c259bce', '27'),
(290, '531fa538a1cfc03f8c259bce', '31'),
(291, '531fa538a1cfc03f8c259bce', '32'),
(292, '531fa538a1cfc03f8c259bce', '36'),
(293, '53997c55a1cfc07e9044f1d2', '21'),
(294, '53997c55a1cfc07e9044f1d2', '22'),
(295, '53997c55a1cfc07e9044f1d2', '23'),
(296, '53997c55a1cfc07e9044f1d2', '24'),
(297, '53997c55a1cfc07e9044f1d2', '25'),
(298, '53997c55a1cfc07e9044f1d2', '26'),
(299, '53997c55a1cfc07e9044f1d2', '27'),
(300, '53997c55a1cfc07e9044f1d2', '29'),
(301, '53997c55a1cfc07e9044f1d2', '31'),
(302, '53997c55a1cfc07e9044f1d2', '32'),
(303, '53997c55a1cfc07e9044f1d2', '33'),
(304, '53997c55a1cfc07e9044f1d2', '36'),
(305, '53997c55a1cfc07e9044f1d2', '37'),
(306, '53997c55a1cfc07e9044f1d2', '42'),
(307, '530178b8a1cfc043182b0347', '21'),
(308, '530178b8a1cfc043182b0347', '22'),
(309, '530178b8a1cfc043182b0347', '25'),
(310, '530178b8a1cfc043182b0347', '26'),
(311, '530178b8a1cfc043182b0347', '27'),
(312, '530178b8a1cfc043182b0347', '29'),
(313, '530178b8a1cfc043182b0347', '30'),
(314, '530178b8a1cfc043182b0347', '31'),
(315, '530178b8a1cfc043182b0347', '32'),
(316, '530178b8a1cfc043182b0347', '33'),
(317, '530178b8a1cfc043182b0347', '35'),
(318, '530178b8a1cfc043182b0347', '36'),
(319, '530178b8a1cfc043182b0347', '37'),
(320, '530178b8a1cfc043182b0347', '41'),
(321, '530178b8a1cfc043182b0347', '42'),
(322, '530178b8a1cfc043182b0347', '45'),
(323, '52956ac7a1cfc01b5cbb50f6', '21'),
(324, '52956ac7a1cfc01b5cbb50f6', '22'),
(325, '52956ac7a1cfc01b5cbb50f6', '23'),
(326, '52956ac7a1cfc01b5cbb50f6', '24'),
(327, '52956ac7a1cfc01b5cbb50f6', '25'),
(328, '52956ac7a1cfc01b5cbb50f6', '26'),
(329, '52956ac7a1cfc01b5cbb50f6', '27'),
(330, '52956ac7a1cfc01b5cbb50f6', '28'),
(331, '52956ac7a1cfc01b5cbb50f6', '29'),
(332, '52956ac7a1cfc01b5cbb50f6', '31'),
(333, '52956ac7a1cfc01b5cbb50f6', '32'),
(334, '52956ac7a1cfc01b5cbb50f6', '33'),
(335, '52956ac7a1cfc01b5cbb50f6', '34'),
(336, '52956ac7a1cfc01b5cbb50f6', '35'),
(337, '52956ac7a1cfc01b5cbb50f6', '37'),
(338, '52956ac7a1cfc01b5cbb50f6', '38'),
(339, '52956ac7a1cfc01b5cbb50f6', '42'),
(340, '52956ac7a1cfc01b5cbb50f6', '45'),
(341, '523b2747a1cfc031a8456904', '21'),
(342, '523b2747a1cfc031a8456904', '27');

-- --------------------------------------------------------

--
-- Table structure for table `purports`
--

CREATE TABLE IF NOT EXISTS `purports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=50 ;

--
-- Dumping data for table `purports`
--

INSERT INTO `purports` (`id`, `code`, `name`, `created`, `updated`) VALUES
(1, '21', 'Tiếp khách', '2014-07-17 08:50:01', NULL),
(2, '24', 'Mang về-take away', '2014-07-17 08:59:39', NULL),
(3, '27', 'Dành cho nam', '2014-07-17 08:59:39', NULL),
(4, '30', 'Hội họa', '2014-07-17 08:59:39', NULL),
(5, '33', 'Xem phim', '2014-07-17 08:59:39', NULL),
(6, '36', 'Du lịch', '2014-07-17 08:59:39', NULL),
(7, '39', 'Tiệc cưới', '2014-07-17 08:59:39', NULL),
(8, '42', 'Giao lưu kết bạn', '2014-07-17 08:59:39', NULL),
(9, '45', 'FastFood', '2014-07-17 08:59:39', NULL),
(10, '22', 'Thư giãn', '2014-07-17 08:59:39', NULL),
(11, '25', 'Nghe nhạc', '2014-07-17 08:59:39', NULL),
(12, '28', 'Nghe rock', '2014-07-17 08:59:39', NULL),
(13, '31', 'Offline chém gió', '2014-07-17 08:59:39', NULL),
(14, '34', 'Ngắm cảnh', '2014-07-17 08:59:39', NULL),
(15, '37', 'Đọc sách', '2014-07-17 08:59:39', NULL),
(16, '40', 'Thiền', '2014-07-17 08:59:39', NULL),
(17, '43', 'Học tiếng anh', '2014-07-17 08:59:39', NULL),
(18, '23', 'Giao hàng tận nơi', '2014-07-17 08:59:39', NULL),
(19, '26', 'Dành cho nữ', '2014-07-17 08:59:39', NULL),
(20, '29', 'Chụp hình', '2014-07-17 08:59:39', NULL),
(21, '32', 'Hẹn hò', '2014-07-17 08:59:39', NULL),
(22, '35', 'Hát hò', '2014-07-17 08:59:39', NULL),
(23, '38', 'Hội thảo', '2014-07-17 08:59:39', NULL),
(24, '41', 'Thú cưng', '2014-07-17 08:59:39', NULL),
(25, '44', 'Xe cổ', '2014-07-17 08:59:40', NULL),
(26, 'pur2', 'Mang về-take away', '2014-07-17 09:00:50', NULL),
(27, 'pur3', 'Dành cho nam', '2014-07-17 09:00:50', NULL),
(28, 'pur4', 'Hội họa', '2014-07-17 09:00:50', NULL),
(29, 'pur5', 'Xem phim', '2014-07-17 09:00:50', NULL),
(30, 'pur6', 'Du lịch', '2014-07-17 09:00:50', NULL),
(31, 'pur7', 'Tiệc cưới', '2014-07-17 09:00:50', NULL),
(32, 'pur8', 'Giao lưu kết bạn', '2014-07-17 09:00:51', NULL),
(33, 'pur9', 'FastFood', '2014-07-17 09:00:51', NULL),
(34, 'pur10', 'Thư giãn', '2014-07-17 09:00:51', NULL),
(35, 'pur11', 'Nghe nhạc', '2014-07-17 09:00:51', NULL),
(36, 'pur12', 'Nghe rock', '2014-07-17 09:00:51', NULL),
(37, 'pur13', 'Offline chém gió', '2014-07-17 09:00:51', NULL),
(38, 'pur14', 'Ngắm cảnh', '2014-07-17 09:00:51', NULL),
(39, 'pur15', 'Đọc sách', '2014-07-17 09:00:51', NULL),
(40, 'pur16', 'Thiền', '2014-07-17 09:00:51', NULL),
(41, 'pur17', 'Học tiếng anh', '2014-07-17 09:00:51', NULL),
(42, 'pur18', 'Giao hàng tận nơi', '2014-07-17 09:00:51', NULL),
(43, 'pur19', 'Dành cho nữ', '2014-07-17 09:00:51', NULL),
(44, 'pur20', 'Chụp hình', '2014-07-17 09:00:51', NULL),
(45, 'pur21', 'Hẹn hò', '2014-07-17 09:00:51', NULL),
(46, 'pur22', 'Hát hò', '2014-07-17 09:00:51', NULL),
(47, 'pur23', 'Hội thảo', '2014-07-17 09:00:51', NULL),
(48, 'pur24', 'Thú cưng', '2014-07-17 09:00:51', NULL),
(49, 'pur25', 'Xe cổ', '2014-07-17 09:00:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `created`, `updated`, `code`) VALUES
(1, 'Internet Wifi', '2014-07-17 08:36:37', NULL, '0'),
(2, 'Chỗ đậu ô tô', '2014-07-17 08:37:58', NULL, '3'),
(3, 'Bàn bia', '2014-07-17 08:38:51', NULL, '6'),
(4, 'Máy lạnh điều hòa', '2014-07-17 08:39:26', NULL, '9'),
(5, 'Lò sưởi ấm', '2014-07-17 08:40:08', NULL, '12'),
(6, 'Bàn ngoài trời', '2014-07-17 08:40:35', NULL, '15'),
(7, 'Nhạc sống', '2014-07-17 08:41:08', NULL, '18'),
(8, 'Chỗ chơi cho trẻ em', '2014-07-17 08:41:47', NULL, '1'),
(9, 'Xuất hóa đơn đỏ', '2014-07-17 08:42:19', NULL, '4'),
(10, 'Giao hàng theo địa chỉ', '2014-07-17 08:42:49', NULL, '7'),
(11, 'Karaoke', '2014-07-17 08:43:16', NULL, '10'),
(12, 'Chiếu bóng đá', '2014-07-17 08:43:54', NULL, '13'),
(13, 'Thanh toán bằng thẻ', '2014-07-17 08:48:43', NULL, '16'),
(14, 'Thẻ thành viên', '2014-07-17 08:48:43', NULL, '19'),
(15, 'Giữ xe máy miễn phí', '2014-07-17 08:48:43', NULL, '2'),
(16, 'Hỗ trợ người khuyết tật', '2014-07-17 08:48:43', NULL, '5'),
(17, 'Phòng riêng', '2014-07-17 08:48:43', NULL, '8'),
(18, 'Khu vực hút thuốc', '2014-07-17 08:48:43', NULL, '11'),
(19, 'Cho mang về', '2014-07-17 08:48:44', NULL, '14'),
(20, 'Phòng hội thảo', '2014-07-17 08:48:44', NULL, '17'),
(21, 'Tip cho nhân viên', '2014-07-17 08:48:44', NULL, '20');

-- --------------------------------------------------------

--
-- Table structure for table `services_places`
--

CREATE TABLE IF NOT EXISTS `services_places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `services_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `places_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=189 ;

--
-- Dumping data for table `services_places`
--

INSERT INTO `services_places` (`id`, `services_id`, `places_id`) VALUES
(158, '0', '531fa538a1cfc03f8c259bce'),
(159, '2', '531fa538a1cfc03f8c259bce'),
(160, '0', '53997c55a1cfc07e9044f1d2'),
(161, '2', '53997c55a1cfc07e9044f1d2'),
(162, '5', '53997c55a1cfc07e9044f1d2'),
(163, '14', '53997c55a1cfc07e9044f1d2'),
(164, '18', '53997c55a1cfc07e9044f1d2'),
(165, '0', '530178b8a1cfc043182b0347'),
(166, '2', '530178b8a1cfc043182b0347'),
(167, '11', '530178b8a1cfc043182b0347'),
(168, '13', '530178b8a1cfc043182b0347'),
(169, '18', '530178b8a1cfc043182b0347'),
(170, '0', '52956ac7a1cfc01b5cbb50f6'),
(171, '2', '52956ac7a1cfc01b5cbb50f6'),
(172, '3', '52956ac7a1cfc01b5cbb50f6'),
(173, '7', '52956ac7a1cfc01b5cbb50f6'),
(174, '8', '52956ac7a1cfc01b5cbb50f6'),
(175, '9', '52956ac7a1cfc01b5cbb50f6'),
(176, '11', '52956ac7a1cfc01b5cbb50f6'),
(177, '13', '52956ac7a1cfc01b5cbb50f6'),
(178, '14', '52956ac7a1cfc01b5cbb50f6'),
(179, '15', '52956ac7a1cfc01b5cbb50f6'),
(180, '16', '52956ac7a1cfc01b5cbb50f6'),
(181, '17', '52956ac7a1cfc01b5cbb50f6'),
(182, '18', '52956ac7a1cfc01b5cbb50f6'),
(183, '19', '52956ac7a1cfc01b5cbb50f6'),
(184, '3', '523b2747a1cfc031a8456904'),
(185, '6', '523b2747a1cfc031a8456904'),
(186, '9', '523b2747a1cfc031a8456904'),
(187, '11', '523b2747a1cfc031a8456904'),
(188, '13', '523b2747a1cfc031a8456904');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
