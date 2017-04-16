-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2016 at 02:12 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecproduct`
--

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL COMMENT 'รหัส',
  `codename` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'หัวข้อเรื่อง',
  `detail` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'รายละเอียด',
  `created` datetime NOT NULL COMMENT 'วันที่สร้าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `codename`, `topic`, `detail`, `created`) VALUES
(1, 'howtopay', 'วิธีการสั่งซื้อ', '', '2016-11-20 15:15:26'),
(2, 'aboutus', 'เกี่ยวกับเรา', 'ฟฟ', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `phone` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `address`, `phone`) VALUES
(1, 'anuson', 'anusondd@gmail.com', 'nbu', '00000000'),
(2, 'anuson', 'anusondd@gmail.com', 'nbu', '00000000'),
(3, 'anuson', 'anusondd@gmail.com', 'nbu', '00000000'),
(4, 'anuson', 'anusondd@gmail.com', 'nbu', '00000000'),
(5, 'anuson', 'anusondd@gmail.com', 'nbu', '00000000'),
(6, '', '', '', ''),
(7, '', '', '', ''),
(8, 'anuson', 'anusondd@gmail.com', 'nbu', '00000000'),
(9, 'anuson', 'anusondd@gmail.com', 'nbu', '00000000'),
(10, '', '', '', ''),
(11, '', '', '', ''),
(12, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(13, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(14, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(15, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(16, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(17, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(18, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(19, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(20, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(21, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(22, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(23, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(24, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(25, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(26, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(27, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(28, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(29, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(30, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(31, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(32, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(33, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(34, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(35, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(36, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(37, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(38, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(39, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(40, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(41, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL COMMENT 'รหัส',
  `order_date` datetime NOT NULL COMMENT 'วันที่สั่งซื้อ',
  `total` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'ราคารวม',
  `user_id` int(11) NOT NULL COMMENT 'ผู้สั่งซื้อ',
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อผู้สั่งซื้อ',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'อีเมล์',
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เบอร์โทรศัพท์',
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ที่อยู่ผู้รับสินค้า',
  `district` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'อำเภอ',
  `province` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'จังหวัด',
  `postcode` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสไปรษณีย์',
  `order_status` enum('pending','payments','shipping','delivery') CHARACTER SET utf8 NOT NULL DEFAULT 'pending' COMMENT 'สถานะการสั่งซื้อสินค้า'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `total`, `user_id`, `fullname`, `email`, `phone`, `address`, `district`, `province`, `postcode`, `order_status`) VALUES
(1, '2014-12-06 18:00:05', '143400.00', 2, 'ธวัชศักดิ์ แตงเอี่ยม', 'bie008o@hotmail.com', '0998726726', '6/5, moo 9', 'บึงคำพร้อย', 'ปทุมธานี', '12150', 'payments'),
(3, '2014-12-08 15:53:00', '56880.00', 2, 'ธวัชศักดิ์ แตงเอี่ยม', 'inonzent@hotmail.com', '0998726726', '6/5, moo 9', 'บึงคำพร้อย', 'ปทุมธานี', '12150', 'payments'),
(6, '2014-12-08 16:31:26', '28900.00', 2, 'ธวัชศักดิ์ แตงเอี่ยม', 'bie008o@hotmail.com', '0111111111', '6/5, moo 9', 'บึงคำพร้อย', 'ปทุมธานี', '12150', 'pending'),
(7, '2016-12-08 21:47:00', '24500.00', 2, '', 'anusondd@gmail.com', '', '', '', '', '', 'pending'),
(12, '2016-12-17 16:12:02', '122500.00', 2, '', '', '', '', '', '', '', 'pending'),
(13, '2016-12-17 16:12:45', '122500.00', 2, '', '', '', '', '', '', '', 'pending'),
(14, '2016-12-17 16:17:15', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(15, '2016-12-17 16:18:04', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(16, '2016-12-17 16:18:39', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(17, '2016-12-17 16:18:54', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(18, '2016-12-17 16:25:00', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(19, '2016-12-17 16:26:13', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(20, '2016-12-17 16:26:16', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(21, '2016-12-17 16:28:57', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(22, '2016-12-17 16:29:32', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(23, '2016-12-17 16:30:06', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(24, '2016-12-17 16:31:08', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(25, '2016-12-17 16:32:00', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(26, '2016-12-17 16:33:16', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(27, '2016-12-17 16:33:36', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(28, '2016-12-17 16:35:41', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(29, '2016-12-17 16:37:11', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(30, '2016-12-17 16:37:38', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(31, '2016-12-17 16:39:15', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(32, '2016-12-17 16:40:04', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(33, '2016-12-17 16:40:26', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(34, '2016-12-17 16:40:33', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(35, '2016-12-17 16:40:51', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(36, '2016-12-17 16:40:57', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(37, '2016-12-17 16:42:40', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(38, '2016-12-17 16:42:49', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(39, '2016-12-17 16:43:33', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(40, '2016-12-17 16:44:01', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(41, '2016-12-17 16:44:19', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(42, '2016-12-17 16:45:25', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(43, '2016-12-17 16:46:12', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL COMMENT 'รหัสสั่งซื้อ',
  `product_id` int(11) NOT NULL COMMENT 'รหัสสินค้า',
  `quantity` int(11) NOT NULL COMMENT 'จำนวนสั่งซื้อ',
  `price` decimal(8,2) NOT NULL COMMENT 'ราคา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 5, 2, '24500.00'),
(1, 6, 1, '24500.00'),
(1, 11, 10, '6990.00'),
(3, 5, 2, '24500.00'),
(3, 11, 1, '6990.00'),
(3, 12, 1, '890.00'),
(6, 8, 1, '28900.00'),
(7, 5, 1, '24500.00'),
(12, 6, 5, '24500.00'),
(13, 6, 5, '24500.00'),
(14, 6, 1, '24500.00'),
(15, 6, 1, '24500.00'),
(16, 6, 1, '24500.00'),
(17, 6, 1, '24500.00'),
(18, 6, 1, '24500.00'),
(19, 6, 1, '24500.00'),
(20, 6, 1, '24500.00'),
(21, 6, 1, '24500.00'),
(22, 6, 1, '24500.00'),
(23, 6, 1, '24500.00'),
(24, 6, 1, '24500.00'),
(25, 6, 1, '24500.00'),
(26, 6, 1, '24500.00'),
(27, 6, 1, '24500.00'),
(28, 6, 1, '24500.00'),
(29, 6, 1, '24500.00'),
(30, 6, 1, '24500.00'),
(31, 6, 1, '24500.00'),
(32, 6, 1, '24500.00'),
(33, 6, 1, '24500.00'),
(34, 6, 1, '24500.00'),
(35, 6, 1, '24500.00'),
(36, 6, 1, '24500.00'),
(37, 6, 1, '24500.00'),
(38, 6, 1, '24500.00'),
(39, 6, 1, '24500.00'),
(40, 6, 1, '24500.00'),
(41, 6, 1, '24500.00'),
(42, 6, 1, '24500.00'),
(43, 6, 1, '24500.00');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL COMMENT 'รหัสหน้าเพจ',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `short_detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort_item` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `detail`, `created`, `short_detail`, `sort_item`) VALUES
(2, 'Promotions', '<div>โปรโมชั่นจากร้าน ทุกๆเดือน</div>\r\n', '2014-09-08 22:54:59', 'ข่าวสารโปรโมชั่น', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL COMMENT 'รหัสชำระเงิน',
  `pay_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'จำนวนโอน',
  `pay_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'วันเวลาโอน',
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0.00' COMMENT 'รายละเอียด',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT 'รหัสใบสั่งซื้อ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `pay_money`, `pay_date`, `detail`, `order_id`) VALUES
(1, '56880.01', '2014-12-12 23:05:00', '<div>ทดสอบตัวอักษร</div>\r\n\r\n<div>ทดสอบ</div>', 3),
(3, '143000.00', '2014-12-12 12:25:00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL COMMENT 'รหัส',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อสินค้า',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'ราคาสินค้า',
  `brandname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ยี่ห้อสินค้า',
  `detail` text COLLATE utf8_unicode_ci COMMENT 'รายละเอียดสินค้า',
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'ecimage.jpg' COMMENT 'รูปภาพหลักสินค้า',
  `created` datetime DEFAULT NULL COMMENT 'วันที่สร้าง',
  `product_categorie_id` int(11) NOT NULL COMMENT 'รหัสประเภทสินค้า'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `brandname`, `detail`, `image`, `created`, `product_categorie_id`) VALUES
(5, 'iPhone 5S 16GB Space Gray', '24500.00', 'APPLE', '<div>\r\n<table cellpadding="5" cellspacing="1">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>OS</strong></td>\r\n			<td>iOS 7, upgradable to iOS 7.1.2, planned upgrade to iOS 8</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Processor</strong></td>\r\n			<td>Dual-core 1.3 GHz Cyclone (ARM v8-based)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Display</strong></td>\r\n			<td>4&quot; LED-backlit IPS LCD, capacitive touchscreen, 16M colors</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Internal , ram</strong></td>\r\n			<td>16 GB. , 1 GB. RAM DDR3</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Network</strong></td>\r\n			<td>2G Network : GSM 850 / 900 / 1800 / 1900<br />\r\n			3G Network : HSDPA 850 / 900 / 1700 / 1900 / 2100<br />\r\n			4G Network : LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Camera</strong></td>\r\n			<td>Back Camera : 8 MP, 3264 x 2448 pixels, autofocus, dual-LED (dual tone) flash<br />\r\n			Front Camera : .2 MP, 720p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chipset</strong></td>\r\n			<td>Apple A7</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>GPU</strong></td>\r\n			<td>PowerVR G6430 (quad-core graphics)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>SIM</strong></td>\r\n			<td>Nano-SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Card slot</strong></td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Battery</strong></td>\r\n			<td>Non-removable Li-Po 1560 mAh battery (5.92 Wh)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Dimension</strong></td>\r\n			<td>123.8 x 58.6 x 7.6 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Warranty</strong></td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', '201412101739141.png', '2014-11-17 17:27:31', 30),
(6, 'iPhone 5S 16GB Silver', '24500.00', 'APPLE', '<div>\r\n<table cellpadding="5" cellspacing="1">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>OS</strong></td>\r\n			<td>iOS 7, upgradable to iOS 7.1.2, planned upgrade to iOS 8</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Processor</strong></td>\r\n			<td>Dual-core 1.3 GHz Cyclone (ARM v8-based)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Display</strong></td>\r\n			<td>4&quot; LED-backlit IPS LCD, capacitive touchscreen, 16M colors</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Internal , ram</strong></td>\r\n			<td>16 GB. , 1 GB. RAM DDR3</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Network</strong></td>\r\n			<td>2G Network : GSM 850 / 900 / 1800 / 1900<br />\r\n			3G Network : HSDPA 850 / 900 / 1700 / 1900 / 2100<br />\r\n			4G Network : LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Camera</strong></td>\r\n			<td>Back Camera : 8 MP, 3264 x 2448 pixels, autofocus, dual-LED (dual tone) flash<br />\r\n			Front Camera : .2 MP, 720p@30fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chipset</strong></td>\r\n			<td>Apple A7</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>GPU</strong></td>\r\n			<td>PowerVR G6430 (quad-core graphics)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>SIM</strong></td>\r\n			<td>Nano-SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Card slot</strong></td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Battery</strong></td>\r\n			<td>Non-removable Li-Po 1560 mAh battery (5.92 Wh)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Dimension</strong></td>\r\n			<td>123.8 x 58.6 x 7.6 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Warranty</strong></td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', '201411171730103.jpg', '2014-11-17 17:30:10', 30),
(7, 'iPhone 6 16GB Space Gray', '24900.00', 'APPLE', '<div>\r\n<table cellpadding="5" cellspacing="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>OS</td>\r\n			<td>iOS 8, upgradable to iOS 8.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor</td>\r\n			<td>Apple A8 Dual Core 2014 1.4 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display</td>\r\n			<td>4.7&quot; Retina Display 1334 x 750 Pixel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Internal , ram</td>\r\n			<td>16 GB. , 1 GB.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Network</td>\r\n			<td>2G : 850/900/1800/1900<br />\r\n			3G : 850 /900/2100<br />\r\n			4G : LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera</td>\r\n			<td>Back Camara : 8 MP<br />\r\n			Front Camara : 1.2 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Apple A8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>PowerVR GX6450 (quad-core graphics)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SIM</td>\r\n			<td>Nano-SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Card slot</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Battery</td>\r\n			<td>Non-removable Li-Po 1810 mAh battery (6.9 Wh)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dimension</td>\r\n			<td>138.1 x 67 x 6.9 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Warranty</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', '201411171732320.jpg', '2014-11-17 17:32:32', 30),
(8, 'iPhone 6 Plus 16GB Space Gray', '28900.00', 'APPLE', '<div>\r\n<table cellpadding="5" cellspacing="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>OS</td>\r\n			<td>iOS 8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor</td>\r\n			<td>Dual Core 2014 1.4 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display</td>\r\n			<td>5.5&quot; Retina Display</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Internal , ram</td>\r\n			<td>16 GB. / 1 GB.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Network</td>\r\n			<td>2G : 850/900/1800/1900<br />\r\n			3G : 850 /900/2100<br />\r\n			4G : LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera</td>\r\n			<td>Back Camara : 8 MP<br />\r\n			Front Camara : 1.2 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>Apple A8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>PowerVR GX6450 (quad-core graphics)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SIM</td>\r\n			<td>Nano-SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Card slot</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Battery</td>\r\n			<td>Li - Polymer 2915 mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dimension</td>\r\n			<td>158.10 x 77.80 mm.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Warranty</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', '201411171733516.jpg', '2014-11-17 17:33:51', 30),
(9, 'Aspire e5-411', '10990.00', 'Acer', '<div>\r\n<table cellpadding="5" cellspacing="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Intel Celeron N2830</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display</td>\r\n			<td>14&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Main Memory</td>\r\n			<td>4 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Storage</td>\r\n			<td>500 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Optical Media Drive</td>\r\n			<td>DVD Super Multi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Graphics</td>\r\n			<td>UMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Web Camera</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>D-Sub/VGA</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>e-SATA</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HDMI</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Card Reader</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Express Slot</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Finger Print</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Connection</td>\r\n			<td>WLAN<br />\r\n			Bluetooth 4.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Battery</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Dos</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Warranty</td>\r\n			<td>1</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', '201411171737166.jpg', '2014-11-17 17:37:16', 31),
(11, 'MS-WINDOWS 8.1 PRO 64 BIT', '6990.00', 'Microsoft', '<div>Operating System Windows 8.1 64-bit Eng</div>', '201411171743588.jpg', '2014-11-17 17:43:58', 32),
(12, 'KASPERSKY INTERNET SECURITY 2015', '890.00', 'KASPERSKY', '<div>Features Anti-virus<br />\r\nAnti-spyware<br />\r\nAnti-phishing<br />\r\nAnti-spam<br />\r\nAnti-rootkit<br />\r\nAnti-banner<br />\r\nSafe Money<br />\r\nAutomatic exploit prevention<br />\r\nTwo-way firewall</div>', '201411211736326.jpg', '2014-11-17 17:45:16', 32);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL COMMENT 'รหัส',
  `codename` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสประเภทสินค้า',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ประเภทสินค้า',
  `created` datetime NOT NULL COMMENT 'วันที่สร้าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `codename`, `name`, `created`) VALUES
(30, 'P001', 'Smartphone', '2014-11-17 17:17:41'),
(31, 'P002', 'Notebook', '2014-11-17 17:18:06'),
(32, 'P003', 'Software', '2014-11-17 17:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT 'รหัสสมาชิก',
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อจริง',
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'นามสกุล',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อเข้าใช้',
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสผ่าน',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'อีเมล์',
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เบอร์โทรศัพท์',
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ที่อยู่',
  `district` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'อำเภอ',
  `province` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'จังหวัด',
  `postcode` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสไปรษณีย์',
  `created` datetime NOT NULL COMMENT 'วันที่สร้าง',
  `user_type` enum('user','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user' COMMENT 'ประเภทสมาชิก'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `phone`, `address`, `district`, `province`, `postcode`, `created`, `user_type`) VALUES
(1, 'anuson', 'duangsri', 'anusondd', '12345678', 'anusondd@hotmail.com', '0811448167', 'nbu', 'สายไหม', 'กรุงเทพ', '12150', '2014-09-08 22:02:36', 'admin'),
(2, 'ทั่วไป', '', 'guest', 'guest', 'itoffside@itoffside.com', '0811448167', 'none', 'none', 'none', '12150', '2014-12-05 23:08:20', 'user'),
(3, 'anuson', 'duangsri', 'admin', '12345678', 'anusondd@hotmail.com', '0811448167', 'nbu', 'สายไหม', 'กรุงเทพ', '12150', '2014-09-08 22:02:36', 'admin'),
(4, 'anuson', 'duangsri', '1234', '12345678', 'anusondd@hotmail.com', '0811448167', 'nbu', 'สายไหม', 'กรุงเทพ', '12150', '2014-09-08 22:02:36', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_payments_orders` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categorie_id` (`product_categorie_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสหน้าเพจ', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสชำระเงิน', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสมาชิก', AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `FK_payments_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_categorie_id`) REFERENCES `product_categories` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
