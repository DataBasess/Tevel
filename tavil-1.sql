-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2016 at 11:54 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tavil`
--

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
(41, 'anuson', 'anuson@hotmail.com', 'bkk', '0940282690'),
(42, 'r', 't', '7', 'r'),
(43, 'Teerawat Banpet', 'Phoo123@hotmail.com', '6/203 ??????? ??? 52', '0931198132'),
(44, '', '', '', ''),
(45, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `P_id` int(11) NOT NULL
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
(6, '2016-12-22 17:13:07', '28900.00', 2, 'ธวัชศักดิ์ แตงเอี่ยม', 'bie008o@hotmail.com', '0111111111', '6/5, moo 9', 'บึงคำพร้อย', 'ปทุมธานี', '12150', 'pending'),
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
(43, '2016-12-17 16:46:12', '24500.00', 2, 'anuson', 'anuson@hotmail.com', '0940282690', 'bkk', 'bkk', 'bkk', '10220', 'pending'),
(45, '2016-12-22 17:14:12', '2580.00', 2, 'Teerawat Banpet', 'Phoo123@hotmail.com', '0931198132', '6/203 ทาร์ซาน พหล 52', 'คลองถนน', 'กรุงเทพ', '10220', 'pending'),
(46, '2016-12-22 19:33:32', '13820.00', 2, '', '', '', '', '', '', '', 'pending');

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
(43, 6, 1, '24500.00'),
(45, 5, 2, '1290.00'),
(46, 5, 3, '1290.00'),
(46, 24, 5, '1990.00');

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
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'ชื่อสินค้า',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'ราคาสินค้า',
  `brandname` varchar(100) CHARACTER SET utf8 COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ยี่ห้อสินค้า',
  `detail` text CHARACTER SET utf8 COLLATE utf8_thai_520_w2 COMMENT 'รายละเอียดสินค้า',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_thai_520_w2 DEFAULT 'ecimage.jpg' COMMENT 'รูปภาพหลักสินค้า',
  `created` datetime DEFAULT NULL COMMENT 'วันที่สร้าง',
  `product_categorie_id` int(11) NOT NULL COMMENT 'รหัสประเภทสินค้า',
  `map` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `brandname`, `detail`, `image`, `created`, `product_categorie_id`, `map`) VALUES
(5, 'Kanchanaburi', '1290.00', 'Kanchanaburi Resort', '				ที่พัก : โรงแรม Kanchanaburi Resort\r\nระยะเวลา : 3 วัน 2 คืน\r\n\r\nกิจกรรม\r\n-Club House Karaoke\r\n-พายเรือคายัค\r\n-วงล้อน้ำ\r\n-บอลลูนน้ำ\r\n-กิจกรรมโดดหอ 1 รอบ\r\n-จักรยานครอบครัว\r\n-สไลด์เดอร์สระว่ายน้ำ\r\n-ตู้ซาวน์น่า										', 'P1.jpg', NULL, 30, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d987984.276853612!2d98.473906987135!3d14.694850396268976!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30e31ad50641d69d%3A0x4f97bc0e92713e12!2z4LiB4Liy4LiN4LiI4LiZ4Lia4Li44Lij4Li1!5e0!3m2!1sth!2sth!4v1482441722820'),
(6, 'Khao Kho 3 days 2 nights.', '1990.00', 'Kho Flora Resort', '				แพคเกจเขาค้อ   -ชมความงามภูทับเบิก/ วัดป่าภูทับเบิก/ วัดพระธาตุผาซ่อนแก้ว/ แวะให้นมแกะที่ค้ออินเลิฟ\r\nรายละเอียดแพคเกจ	\r\n-ที่พักโรงแรม Kho Flora Resort\r\n-ระยะเวลา 3 วัน 2 คืน\r\n-อาหาร 3 มื้อ (เช้า 2 มื้อ กลางวัน 1 มื้อ)\r\n-โปรแกรมทัวร์เขาค้อ-ภูทับเบิก ตามโปรแกรม เดินทางโดยรถสองแถว\r\n- ประกันภัย/ไกด์ท้องถิ่น/ ค่าธรรมเนียมเข้าอุทยาน และสถานที่ต่างๆ\r\n -Internet Wi-Fi ตามจุดที่โรงแรมกำหนด\r\n													', '14462942_1119204948144574_79550478061030351_n.jpg', NULL, 31, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d244597.33571405348!2d100.83973889749701!3d16.685219741757106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31206a75edd368bd%3A0x304fb54b0087a10!2z4Lit4Liz4LmA4Lig4LitIOC5gOC4guC4suC4hOC5ieC4rSDguYDguJ7guIrguKPguJrguLnguKPguJPguYw!5e0!3m2!1sth!2sth!4v1482442001787'),
(7, 'Phung Ratchaburi', '1290.00', 'Mali Villa Resort', '								ที่พัก:Mali Villa Resort\r\nระยะเวลา 3 วัน 2  คืน\r\nอัตรานี้รวม\r\n\r\n-   ค่ารถโค้ชปรับอากาศ VIP50 ที่นั่ง 2 ชั้น  //  รถตู้ VIP  9 ที่นั่ง\r\n\r\n-   ค่าที่พัก 1 คืน (พักห้องละ 2-3 คน )\r\n\r\n -  ค่าอาหาร 5 มื้อ\r\n\r\n-  ค่าน้ำดื่มและขนมคบเคี้ยวตลอดการเดินทาง\r\n\r\n-  ค่าธรรมเนียมเข้าชมสถานที่ต่าง ๆ\r\n\r\n-  ค่าประกันอุบัติเหตุ\r\n\r\n-  ค่ามัคคุเทศก์ตลอดการเดินทาง\r\n\r\nอัตรานี้ไม่รวม\r\n\r\n- รายการท่องเที่ยวนอกเหนือจากโปรแกรม\r\n\r\n- เครื่องดื่มแอลกอฮอล์นอกเหนือจากรายการที่กำหนดไว้\r\n\r\n- ค่าทิปทีมงาน\r\n\r\n- รายการอาหารนอกเหนือจากเมนู รวมถึงการนำเข้าของเครื่องดื่มที่นำเข้าไปทานในร้าน\r\n\r\n- อาหารและเครื่องดื่มภายในห้องพัก รวมถึงบริการเสริมต่างๆ\r\n\r\n- ค่าซักรีด\r\n\r\n- Vat 7% และ ภาษีหัก ณ ที่จ่าย 3%													', 'P3.jpg', NULL, 34, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d104371.34549508114!2d99.25195855313257!3d13.552556177098896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x24cf51d1a321fd50!2z4LmA4Lin4LmA4LiZ4LmC4LiV4LmJIOC4quC4p-C4meC4nOC4tuC5ieC4hw!5e0!3m2!1sth!2sth!4v1482442648194'),
(8, '3 days 2 nights Chiang Mai', '1990.00', 'Boutique Hotel', '				แพคเกจเชียงใหม่	\r\n-นมัสการพระธาตุดอยสุเทพ พระธาตุประจำปีมะแม พร้อมชมวิถีชีวิตชาวเขาที่บ้านแม้วดอยปุย/ ชมความงามของทิวทัศน์เมืองเชียงใหม่\r\nรายละเอียดแพคเกจ	\r\n-โรงแรม Boutique Hotel \r\nระยะเวลา 3 วัน 2 คืน\r\n -อาหาร 3 มื้อ (เช้า 2 มื้อ กลางวัน 1 มื้อ)\r\n -Wecome Drink หรือเครื่องดื่มที่ทางโรงแรมกำหนด\r\n -ประกันภัย/ ไกด์ท้องถิ่น\r\n -Internet Wi-Fi ในจุดที่โรงแรมกำหนด\r\n										', 'P4.jpg', NULL, 34, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d812609.372809288!2d99.14379523643306!3d18.893864803859582!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5c182cf9c0aea8d4!2z4Lit4Li44LiX4Lii4Liy4LiZ4LmB4Lir4LmI4LiH4LiK4Liy4LiV4Li04LiU4Lit4Lii4Lit4Li04LiZ4LiX4LiZ4LiZ4LiX4LmM!5e0!3m2!1sth!2sth!4v1482442788891'),
(9, 'Pai 3 days 2 nights', '1990.00', 'Kiri''s Retro House', '								แพคเกจปาย 	\r\n-วัดพระธาตุแม่เย็น/ โป่งน้ำร้อนท่าปาย/ สะพานประวัติศาสตร์/ Coffee in Love/ วัดน้ำฮู้/ หมู่บ้านจีน สันติชล/ น้ำตกหมอแปง\r\nรายละเอียดแพคเกจ\r\n-โรงแรม Kiri''s Retro House\r\n-ระยะเวลา 3 วัน 2 คืน\r\n -อาหาร 2 มื้อ (เช้า 2 มื้อ)\r\n -โปรแกรมทัวร์ 9 แห่ง เดินทางโดยรถตู้ปรับอากาศ\r\n -ประกันภัย/ ไกด์ท้องถิ่น/ ค่าธรรมเนียมเข้าอุทยาน และสถานที่ต่างๆ\r\n -Internet Wi-Fi ตามจุดที่โรงแรมกำหนด\r\n\r\n							', 'P5.jpg', NULL, 31, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7749.02513460729!2d98.42956200948706!3d19.35994228939333!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xca7755e81fa9877d!2z4LiX4Li14LmI4Lin4LmI4Liy4LiB4Liy4Lij4Lit4Liz4LmA4Lig4Lit4Lib4Liy4Lii!5e0!3m2!1sth!2sth!4v1482442192892'),
(11, 'Chiao Lan', '1990.00', 'Tree Top River Hut.', '				ที่พัก : โรงแรมTree Top River Hut.\r\nระยะเวลา : 3 วัน 2 คืน\r\n\r\nแพ็คเกจนี้ รวม \r\n\r\n         - ค่าเรือหางยาวที่จะนำท่านไปสู่ที่พัก และอยู่รวมเดินทางกับท่านตลอดโปรแกรมในเขื่อนเชี่ยวหลาน\r\n\r\n         - ค่าห้องพักในแพ 1 คืน (ลักษณะแพขึ้นอยู่กับจำนวนผู้เข้าพัก และระยะเวลาการจอง)\r\n\r\n         - น้ำดื่มระหว่างทำกิจกรรม , Soft Drink\r\n\r\n         - อาหารว่างยามเช้า\r\n\r\n         - กาแฟ,โอวัลตินบนแพ\r\n\r\n         - อาหาร 3 มื้อ\r\n\r\n         - เรือคะยัคพายด้วยตัวเองในเขื่อน\r\n\r\n         - ค่าตั๋วเข้าบริเวณอุทยาน\r\n\r\n         - กิจกรรมการเข้าชมถ้ำปะการัง\r\n\r\n         - มัคคุเทศก์ในพื้นที่ ที่มีความรู้ความชำนาญในพื้นที่ และได้รับใบอนุญาตอย่างถูกต้องจากการกระทรวงท่องเที่ยวและกีฬา                ดูแลท่านตลอดทริป\r\n\r\n         - ประกันอุบัติเหตุสำหรับทุกท่านวงเงินประกัน 1,000,000 บาท (อายุ 15-70 ปี ต่ำหรือเกินกว่านั้น 50%) 										', 'P6.jpg', NULL, 30, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1970.4754279746012!2d98.80334965812648!3d8.976669647747947!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x305136686030dcf7%3A0x143a36db793cc2f5!2z4LmA4LiK4Li14LmI4Lii4Lin4Lir4Lil4Liy4LiZ!5e0!3m2!1sth!2sth!4v1482441899419'),
(12, 'Koh Chang 3 days 2 nights.', '1990.00', 'Koh Chang resort', '								แพคเกจเกาะช้าง 	\r\n-ทัวร์ดำน้ำดูปะการังหมู่เกาะรัง/ เกาะหวาย/ เกาะยักษ์  และเกาะโล้น\r\nรายละเอียดแพคเกจ\r\n-โรงแรม Koh Chang resort \r\n-ระยะเวลา 3 วัน 2 คืน\r\n -อาหาร 5 มื้อ (เช้า 2 มื้อ กลางวัน 1 มื้อ ค่ำ 2 มื้อ)\r\n -ทัวร์ดำน้ำดูปะการัง เดินทางโดยเรือไม้ใหญ่\r\n -กิจกรรมทัวร์ทางบก วันแรกจุดชมวิว ดูพระอาทิตย์ตกน้ำ เดินทางโดยรถตู้ของรีสอร์ท\r\n -กิจกรรมพายเรือคายัคฟรี  ที่โรงแรม\r\n -ค่าอุปกรณ์ดำน้ำตื้น/เสื้อชูชีพ/ประกันภัย/ไกด์ท้องถิ่น/ ค่าธรรมเนียมเข้าอุทยาน และสถานที่ต่างๆ\r\n											', 'P7.jpg', NULL, 33, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d60642.11324082119!2d102.30105056628663!3d12.099045897073935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xba41d53d3ce911f4!2z4LmC4Lij4LiH4LmB4Lij4Lih4LmA4LiB4Liy4Liw4LiK4LmJ4Liy4LiH4Lil4Liy4LiB4Li54LiZIOC4o-C4teC4quC4reC4o-C5jOC4lw!5e0!3m2!1sth!2sth!4v1482442884251'),
(20, 'Phuket 3 days 2 nights', '2990.00', 'The Royal Paradise Hotel & Spa.', '									รายละเอียดแพคเกจ	โรงแรม The Royal Paradise Hotel & Spa. Phuket 3 days 2 nights\r\n 	อาหาร 3 มื้อ (เช้า 2 มื้อ กลางวัน 1 มื้อ)\r\n 	ทัวร์เกาะพีพี โดยเรือเฟอรรี่ One Day Trip/ ดำน้ำชมปะการังที่เกาะพีพีดอนพร้อมทานอาหารเที่ยงแบบบุฟเฟ่ต์\r\n 	อุปกรณ์ดำน้ำตื้น/ เสื้อชูชีพ/ประกันภัย/ ไกด์ท้องถิ่น/ ค่าธรรมเนียมเข้าอุทยาน/ สถานที่ต่างๆ\r\n 	Internet Wi-Fi ตามจุดที่โรงแรมกำหนด\r\n									', 'P8.jpg', NULL, 32, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9131.981421803352!2d98.28998446453318!3d7.891734574998389!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcc5867fadf2d57a8!2z4Lir4Liy4LiU4Lib4LmI4Liy4LiV4Lit4LiH!5e0!3m2!1sth!2sth!4v1482442300699'),
(21, 'Koh Samui 3 days 2 nights', '2490.00', 'Intercontinental Oriental Samui. Baan Taling Ngam Resort', '							', 'P9.jpg', NULL, 33, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31476.65641065776!2d100.07476839557552!3d9.544991740492359!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6c5571900dfd7835!2sAmari+Koh+Samui!5e0!3m2!1sth!2sth!4v1482442959964'),
(22, 'Koh Lipe 3 days 2 nights.', '3990.00', 'Bella Vista Beach Koh Lipe.', '				รายละเอียดแพคเกจ	Koh Lipe 3 days 2 nights.\r\n 	อาหาร 3 มื้อ (เช้า 2 มื้อ กลางวัน 1 มื้อ)\r\n 	โปรแกรมทัวร์เดินทางโดยเรือ Speed Boat\r\n 	อุปกรณ์ดำน้ำตื้น/ เสื้อชูชีพ/ ประกันภัย/ ไกด์ท้องถิ่น/ ค่าธรรมเนียมเข้าอุทยาน/ สถานที่ต่างๆ  \r\n 	บริการรถรับ–ส่ง  จากท่าเรือปากอ่าวบารามาโรงแรมและโรงแรมไปทัวร์\r\n			', 'P10.jpg', NULL, 33, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7928.531518994423!2d99.29695746450858!3d6.487992554675482!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x304c04b682540c8f%3A0xef2301cf0a9d3394!2z4LmA4LiB4Liy4Liw4Lir4Lil4Li14LmA4Lib4LmK4Liw!5e0!3m2!1sth!2sth!4v1482443023315'),
(23, 'Koh Kood Three days and two nights', '3990.00', 'Koh Kood Resort', '				-มีรีสอร์ทหลากหลายระดับ ให้ลูกค้าเลือกพัก\r\n-เดินทางโดย Speed Boat ปลอดภัย กัปตันมีความชำนาญเส้นทาง\r\n-มีอาหารอร่อยบริการทุกมื้อตามรายการเดินทาง\r\n-พาเที่ยวชมความสวยงามน้ำตกคลองเจ้า\r\n-นำเที่ยวดำน้ำ สน๊อคเกิ้ล หมู่เกาะ 4 เกาะหากเป็นกรุ๊ปใหญ่\r\n-มีปาร์ตี้ คาราโอเกะพายเรือคายัคชมทัศนียภาพอันสวยงามของท้องทะเล\r\n-มีประกันภัยในเรื่องของอุบัติเหตุ					', 'P12.jpg', NULL, 33, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d125038.59910250454!2d102.49647654549581!3d11.662044998539155!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31069badd0f9c685%3A0x6e4c6c3c1cb65b83!2z4LmA4LiB4Liy4Liw4LiB4Li54LiU!5e0!3m2!1sth!2sth!4v1482443079298'),
(24, 'Krabi 3 days 2 nights', '1990.00', 'Sleep Whale Hotel.', '				รายละเอียดแพคเกจ	Sleep Whale Hotel. Krabi 3 days 2 nights\r\n 	อาหาร 3 มื้อ (เช้า 2 มื้อ กลางวัน 1 มื้อ)\r\n 	บริการรถรับ-ส่ง ไป-กลับ ระหว่างโรงแรมกับสนามบินหรือ บขส. กระบี่\r\n 	ทัวร์ 4 แห่ง 7 เกาะ ตามโปรแกรม โดยเรือหางยาวขนาดใหญ่\r\n 	อุปกรณ์ดำน้ำตื้น/ เสื้อชูชีพ/ ประกันภัย/ ไกด์ท้องถิ่น/ ค่าธรรมเนียมเข้าอุทยาน/ สถานที่ต่างๆ\r\n 	บริการรถรับ-ส่ง ไป-กลับหน้าหาด (ทุกๆ 2 ชั่วโมง)\r\n 	Internet Wi-Fi ตามจุดที่โรงแรมกำหนด\r\n			', 'P13.jpg', NULL, 32, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30706.967479638435!2d98.85214534089792!3d8.015042777968583!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4a7d5acaeb77b7bb!2z4LmE4Lij4LmI4LmA4Lil4Lii4LmM4Lin4Li04Lin4Lie4Lit4Lii4LiX4LmM4Lij4Li14Liq4Lit4Lij4LmM4LiX!5e0!3m2!1sth!2sth!4v1482442439715'),
(25, 'Samet 3 day 2 night trip', '2990.00', 'Samed Seaside Resort', '				แพคเกจเกาะเสม็ด	โปรแกรมทัวร์ดำน้ำดูปะการัง 4 เกาะ เกาะกูฏี/เกาะขาม/เกาะปลายตีน/เกาะทะลุ  และชมกระชังเลี้ยงปลา\r\nรายละเอียดแพคเกจ	ที่พักโรงแรมSamed Seaside Resort \r\nระยะเวลา 3 วัน 2 คืน\r\nอาหาร 3 มื้อ (เช้า 2 มื้อ กลางวัน 1 มื้อ)\r\nค่าอุปกรณ์ดำน้ำตื้น/ เสื้อชูชีพ/ ประกันภัย/ ไกด์ท้องถิ่น/ ค่าธรรมเนียมเข้าอุทยาน และสถานที่ต่างๆ\r\n																', 'P15.jpg', NULL, 33, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31155.620717621365!2d101.43850754600602!3d12.55238087234753!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3103a9e750050d41%3A0x76fa7e572c5fc247!2z4LmA4LiB4Liy4Liw4LmA4Liq4Lih4LmH4LiU!5e0!3m2!1sth!2sth!4v1482443129060');

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
(30, 'P001', 'Waterfront accommodation', '2016-12-22 13:09:36'),
(31, 'P002', 'Accommodation near Mt.', '2016-12-22 13:11:25'),
(32, 'P003', 'Stay close to the sea', '2016-12-22 13:12:10'),
(33, 'P004', 'Accommodation on the island', '2016-12-22 13:16:58'),
(34, 'P005', 'caravanserai', '2016-12-22 13:13:17');

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
(4, 'anuson', 'duangsri', '1234', '12345678', 'anusondd@hotmail.com', '0811448167', 'nbu', 'สายไหม', 'กรุงเทพ', '12150', '2014-09-08 22:02:36', 'admin'),
(5, 'teerawat', 'banpet', 'teerawat', '0931198132', '', '', '', '', '', '', '0000-00-00 00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=47;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสมาชิก', AUTO_INCREMENT=6;
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
