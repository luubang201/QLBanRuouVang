-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2021 at 05:05 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_hot` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `image`, `summary`, `description`, `type`, `position`, `status`, `url`, `is_active`, `user_id`, `meta_title`, `meta_description`, `created_at`, `updated_at`, `is_hot`) VALUES
(6, 'The Recipe from a Winemaker’s Restaurent', 'the-recipe-from-a-winemakers-restaurent', 'upload/article/image_1.jpg', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', NULL, 4, NULL, NULL, 1, NULL, 'The Recipe from a Winemaker’s Restaurent', 'The Recipe from a Winemaker’s Restaurent', '2021-07-04 10:10:00', '2021-07-09 01:30:17', 0),
(7, 'The Recipe from a Winemaker’s Restaurent', 'the-recipe-from-a-winemakers-restaurent', 'upload/article/bg_4.jpg', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', NULL, 3, NULL, NULL, 1, NULL, 'The Recipe from a Winemaker’s Restaurent', 'The Recipe from a Winemaker’s Restaurent', '2021-07-04 10:10:33', '2021-07-09 01:30:13', 1),
(8, 'The Recipe from a Winemaker’s Restaurent', 'the-recipe-from-a-winemakers-restaurent', 'upload/article/image_2.jpg', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', NULL, 2, NULL, NULL, 1, NULL, 'The Recipe from a Winemaker’s Restaurent', 'The Recipe from a Winemaker’s Restaurent', '2021-07-04 10:11:10', '2021-07-09 01:30:09', 1),
(9, 'The Recipe from a Winemaker’s Restaurent', 'the-recipe-from-a-winemakers-restaurent', 'upload/article/image_4.jpg', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', NULL, 1, NULL, NULL, 1, NULL, 'The Recipe from a Winemaker’s Restaurent', 'The Recipe from a Winemaker’s Restaurent', '2021-07-04 10:11:39', '2021-07-04 10:11:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `image`, `url`, `target`, `description`, `type`, `position`, `is_active`, `created_at`, `updated_at`, `banner_type`) VALUES
(22, 'Banner', 'banner', 'upload/banner/bg_2.jpg', 'zxcvb', NULL, 'aaa', 0, 1, 1, '2021-06-25 07:19:09', '2021-07-03 11:15:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `website`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(30, 'Brandy', 'brandy', 'upload/brand/1625337623_kind-1.jpg', 'https://phogo.phomuaban.vn/index.php?mod=list&cat=947', 1, 1, '2021-06-23 03:35:51', '2021-07-03 11:40:23'),
(31, 'Gin', 'gin', 'upload/brand/1625337647_kind-2.jpg', 'www.mynghetrungtin.com', 2, 1, '2021-06-23 03:36:22', '2021-07-03 11:40:47'),
(32, 'Rum', 'rum', 'upload/brand/1625337666_kind-3.jpg', 'www.noithatminhtien.vn', 3, 1, '2021-06-23 03:36:52', '2021-07-03 11:41:06'),
(33, 'Tequila', 'tequila', 'upload/brand/1625337681_kind-4.jpg', 'http://old.swood.com.vn/', 4, 1, '2021-06-23 03:37:15', '2021-07-03 11:41:21'),
(34, 'Vodka', 'vodka', 'upload/brand/1625337707_kind-5.jpg', 'http://www.goducthanh.com', 5, 1, '2021-07-03 11:41:47', '2021-07-03 11:41:47'),
(35, 'Whiskey', 'whiskey', 'upload/brand/1625337725_kind-6.jpg', 'http://daicat.com.vn', 6, 1, '2021-07-03 11:42:05', '2021-07-03 11:42:05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 : HInệ thị\r\n0 : ẩn',
  `type` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `parent_id`, `position`, `is_active`, `type`, `created_at`, `updated_at`) VALUES
(69, 'Brandy', 'brandy', 'upload/category/prod-1.jpg', 0, 3, 1, 1, '2021-07-09 01:31:43', '2021-07-09 01:33:06'),
(70, 'Gin', 'gin', 'upload/category/prod-5.jpg', 0, 2, 1, 1, '2021-07-09 01:32:19', '2021-07-09 01:32:19'),
(71, 'Rum', 'rum', 'upload/category/prod-3.jpg', 0, 1, 1, 1, '2021-07-09 01:32:48', '2021-07-09 01:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `content`, `created_at`, `updated_at`) VALUES
(9, 'Thao', '0987689993', 'thao@gmail.com', 'Chao ban', '2020-08-03 07:02:48', '2020-08-03 07:02:48'),
(10, 'Khanh', '0900909999', 'khang@gmail.com', 'Chao ban afasdfsd', '2020-08-14 05:51:58', '2020-08-14 05:51:58'),
(11, 'DEV', '025125456152', '1611062014@hunre.edu.vn', 'chaob', '2020-12-10 05:29:47', '2020-12-10 05:29:47'),
(12, 'Đăng Lâm', '096745897', '1611062014@hunre.edu.vn', 'test', '2020-12-10 05:48:38', '2020-12-10 05:48:38'),
(13, 'fadsf', 'dsfsd', 'anhman01061998@yahoo.com.vn', 'fádfádf', '2020-12-10 05:49:24', '2020-12-10 05:49:24'),
(14, 'fádf', '2323232', 'admin@gmail.com', 'ưẻwêw', '2020-12-10 05:50:02', '2020-12-10 05:50:02'),
(15, 'fádf', 'fád', 'danglam932@gmail.com', 'fádfd', '2020-12-10 05:50:36', '2020-12-10 05:50:36'),
(16, 'fádfda', 'fád', 'test@gmail.com', 'fads', '2020-12-10 05:51:24', '2020-12-10 05:51:24'),
(17, 'Đăng Lâm', '2343432432', '1611062014@hunre.edu.vn', '32424', '2020-12-10 05:53:27', '2020-12-10 05:53:27'),
(18, 'Đăng Lâm', 'adsfádfà', 'hcdung23109@gmail.com', 'dsfádfa', '2020-12-10 05:54:22', '2020-12-10 05:54:22'),
(19, 'Đăng Lâm', '12345890', 'danglam933332@gmail.com', 'fđấ', '2020-12-10 05:56:12', '2020-12-10 05:56:12'),
(20, 'Đăng Lâm', '12345890', '161321062014@hunre.edu.vn', 'fádfá', '2020-12-10 06:02:44', '2020-12-10 06:02:44'),
(21, 'Đăng Lâm', '1234589', '16110333462014@hunre.edu.vn', 'cc', '2020-12-10 06:07:07', '2020-12-10 06:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent`, `created_at`, `updated_at`) VALUES
(1, 'SHOP-KM1', 1, 50000, 30, '2020-05-19 16:50:32', '2020-05-19 16:50:32'),
(2, 'SHOP-K2', 2, NULL, 50, '2020-05-19 16:52:27', '2020-05-19 16:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2020_01_07_122649_create_categories_table', 1),
(10, '2020_01_09_113851_create_products_table', 1),
(11, '2020_02_06_031728_create_banners_table', 2),
(12, '2020_02_06_032831_create_banners_table', 3),
(13, '2020_02_06_125433_create_vendors_table', 4),
(14, '2020_02_06_125734_create_brands_table', 5),
(15, '2020_03_04_083632_create_products_table', 6),
(17, '2020_03_05_122445_create_contacts_table', 7),
(20, '2020_07_13_130015_create_member_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `total` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  `order_status_id` int(11) DEFAULT 0,
  `payment_id` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `fullname`, `email`, `address`, `address2`, `phone`, `discount`, `note`, `coupon`, `total`, `user_id`, `order_status_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(9, NULL, 'Hoàng Công Dũng', 'dungthuy2109@gmail.com', 'HN', NULL, '0986346007', 0, NULL, '0', 25970000, 0, 4, 0, '2020-05-19 12:18:21', '2020-05-19 12:18:21'),
(10, NULL, 'Hoàng Công Dũng', 'hcdung2109@gmail.com', 'HN', NULL, '0986346006', 11395000, 'AB', 'SHOP-K2', 22790000, 0, 1, 0, '2020-05-20 09:55:45', '2020-05-20 09:55:45'),
(11, 'DH-11-20052020', 'Trần Thuỷ', 'thuthuy@gmail.com', 'Long Biên , Hà nội', NULL, '0986346008', 3995000, 'ko', 'SHOP-K2', 7990000, 0, 1, 0, '2020-05-20 11:01:38', '2020-05-20 11:01:38'),
(12, 'DH-12-21052020', 'Trần Thuỷ', 'dungthuy2109@gmail.com', 'HN', NULL, '0986346008', 0, NULL, NULL, 15980000, 0, 1, 0, '2020-05-21 07:41:24', '2020-05-21 07:41:24'),
(13, 'DH-13-21052020', 'Trần Thuỷ', 'dungthuy2109@gmail.com', 'HN', NULL, '0986346008', 0, NULL, NULL, 15980000, 0, 2, 0, '2020-05-21 07:42:09', '2020-05-21 07:42:09'),
(14, 'DH-14-23052020', 'Trần Thuỷ', 'hcdung2109@gmail.com', 'Bắc Ninh', 'fdfd', '0986346008', 0, 'kfdsfsdf', NULL, 23390000, 0, 3, 0, '2020-05-23 00:30:46', '2020-05-25 23:46:41'),
(15, 'DH-15-26052020', 'HCDUNG', 'hcdung2109@gmail.com', 'Tầng 6, Tòa CT Building , Đống Đa , HN', NULL, '0986346008', 0, 'Giao hàng ngoài 17h', NULL, 7990000, 0, 2, 0, '2020-05-25 23:59:42', '2020-05-26 00:05:38'),
(16, 'DH--21082020-1598017675', 'dung', 'hcdung2109@gmail.com', 'HN', NULL, '098793332', 50000, 'N', 'SHOP-KM1', -67400000, 0, 1, 0, '2020-08-21 06:47:55', '2020-08-21 06:47:55'),
(17, 'DH-21082020-1598018495', 'dung', 'admin@gmail.com', 'HN', NULL, '0986468888', 0, 'dag giao hang', NULL, 15980000, 0, 3, 0, '2020-08-21 07:01:35', '2020-08-21 07:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `name`, `image`, `sku`, `user_id`, `order_id`, `product_id`, `price`, `qty`) VALUES
(2, NULL, NULL, '', NULL, 9, 43, 17980000, 2),
(3, NULL, NULL, '', NULL, 9, 30, 7990000, 1),
(4, NULL, NULL, '', NULL, 10, 30, 7990000, 1),
(5, NULL, NULL, '', NULL, 10, 44, 14800000, 2),
(6, NULL, NULL, '', NULL, 11, 30, 7990000, 1),
(7, 'Iphone 7 Plus 32GB - NEW', 'uploads/product/1584949065_iphone-7-plus-gold-400x460-400x460.png', NULL, 0, 13, 30, 15980000, 2),
(8, 'Apple Watch S5 LTE 40mm viền nhôm dây cao su', 'uploads/product/1586667604_apple-watch-s5-lte-40mm-vien-nhom-day-cao-su-ava-400x400.jpg', NULL, 0, 14, 50, 2900000, 1),
(9, 'ASUS ROG Phone 2 512GB', 'uploads/product/1584948535__600x600__crop_600_asus_rog_phone2_min_1.jpg', NULL, 0, 14, 28, 20490000, 1),
(10, 'Iphone 7 Plus 32GB - NEW', 'uploads/product/1584949065_iphone-7-plus-gold-400x460-400x460.png', NULL, 0, 15, 30, 7990000, 1),
(11, 'Iphone 7 Plus 32GB - NEW', 'uploads/product/1584949065_iphone-7-plus-gold-400x460-400x460.png', NULL, 0, 16, 30, 47940000, 6),
(12, 'ASUS ROG Phone 2 512GB', 'uploads/product/1584948535__600x600__crop_600_asus_rog_phone2_min_1.jpg', NULL, 0, 16, 28, 20490000, 1),
(13, 'Oppo Reno 2F', 'uploads/product/1584946658_oppo-reno2-f-400x460.png', NULL, 0, 17, 12, 15980000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Mới'),
(2, 'Đang Xử Lý'),
(3, 'Hoàn Thành'),
(4, 'Hủy');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(255) NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `slug` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `is_active` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `target` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `url` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `sale` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_hot` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `vendor_id` int(11) NOT NULL DEFAULT 0,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `stock`, `price`, `sale`, `position`, `is_active`, `is_hot`, `views`, `category_id`, `url`, `sku`, `color`, `memory`, `brand_id`, `vendor_id`, `summary`, `description`, `meta_title`, `meta_description`, `user_id`, `created_at`, `updated_at`) VALUES
(93, 'Macallan', 'macallan', 'uploads/product/1625336456_prod-6.jpg', 125, 1500000, 1450000, 8, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2021-06-23 03:30:26', '2021-07-09 01:29:57'),
(94, 'Black Label', 'black-label', 'uploads/product/1625336419_prod-5.jpg', 65, 1650000, 1450000, 7, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2021-06-23 03:31:23', '2021-07-09 01:29:52'),
(95, 'The Glenlivet', 'the-glenlivet', 'uploads/product/1625336385_prod-4.jpg', 35, 1250000, 1000000, 6, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2021-06-23 03:32:04', '2021-07-09 01:29:47'),
(96, 'Citadelle', 'citadelle', 'uploads/product/1625336337_prod-3.jpg', 65, 1700000, 1500000, 5, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2021-06-23 03:33:01', '2021-07-09 01:29:42'),
(97, 'Jim Beam Kentucky Straight', 'jim-beam-kentucky-straight', 'uploads/product/1625336276_prod-2.jpg', 32, 1500000, 1250000, 4, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2021-06-23 03:33:32', '2021-07-09 01:29:35'),
(98, 'Bacardi 151', 'bacardi-151', 'uploads/product/1625336217_prod-1.jpg', 120, 1500000, 1200000, 3, 1, 1, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 'hihi', 'hihi', NULL, NULL, 0, '2021-06-23 03:34:25', '2021-07-09 01:29:29'),
(99, 'Old Monk', 'old-monk', 'upload/product/1625336499_prod-7.jpg', 25, 1750000, 1550000, 2, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2021-07-03 11:21:39', '2021-07-09 01:40:06'),
(100, 'Jameson Irish Whiskey', 'jameson-irish-whiskey', 'upload/product/1625336536_prod-8.jpg', 123, 1900000, 1750000, 1, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, '2021-07-03 11:22:17', '2021-07-09 01:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'MANAGER'),
(2, 'ADMIN'),
(3, 'GUEST'),
(5, 'ORTHERS');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company`, `address`, `address2`, `image`, `phone`, `hotline`, `tax`, `facebook`, `email`, `introduce`, `created_at`, `updated_at`) VALUES
(1, 'Công Ty TNHH Hoàng Vinh .co,ltd.', 'Q.Đống Đa , Hà Nội', 'Q.Long Biên, Hà Nội', 'uploads/setting/1606824641_Logo VNNIC Final_VNNIC LOGO 1.jpg', '0886686728', '18001166', '000010', 'https://www.facebook.com/didongthongminh.vn/', 'admin@gmail.com', 'ko', NULL, '2020-12-01 05:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(6) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `first_name`, `last_name`, `email`, `mobile`) VALUES
(2, 'Hoang 2', '', 'vanhoang10@gmail.com', '+84651648612');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `avatar`, `is_active`) VALUES
(19, 'Tạ Văn Định', 'dinh2000@gmail.com', '$2y$10$cGm.EprYksMsrfz34VnjPO/YvjXPoHESdY6cUuasYae/JmeZ15wuu', NULL, '2021-06-25 21:55:37', '2021-06-25 21:55:37', 3, 'upload/user/dinh.jpg', 1),
(20, 'Nguyễn Phương Thuận', 'thuannguyen0108@gmail.com', '$2y$10$RKBl/usqa3.ht6zfAeeRa.UlonZteWcdqRZED4B.vJLORbbmvGVLK', NULL, '2021-06-25 21:55:57', '2021-06-25 21:55:57', 3, 'upload/user/thuan.jpg', 1),
(21, 'Phùng Thị Hạnh', 'phunghanh@gmail.com', '$2y$10$NM38V4cq5nD.w6hzUeH/Qe/oMRcQf2wx0Rf4shesaJRwoxnYyopjq', NULL, '2021-06-25 21:56:30', '2021-06-25 21:56:30', 2, 'upload/user/hanh.jpg', 1),
(22, 'Hoàng Ngọc Anh', 'Ngocanh@gmail.com', '$2y$10$zMOL19AUcnrssA6KcR1lq.SkvPDwgWR0cIBbTf4j/2fueQAJVN0Wu', NULL, '2021-06-25 21:56:46', '2021-06-25 21:56:46', 2, 'upload/user/ngocanh.jpg', 1),
(23, 'Luu Dang', 'dangvuluu201@gmail.com', '$2y$10$MAiChukrtAo82.RfZd0hN.pfcPvH0AB9WIpYzml8xV26Vs503xmoe', NULL, '2021-06-25 21:57:20', '2021-06-25 21:57:20', 1, 'upload/user/55b8b9c82edadc8485cb.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `banners_slug_unique` (`slug`) USING BTREE;

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `brands_slug_unique` (`slug`) USING BTREE;

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `categories_slug_unique` (`slug`) USING BTREE;

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `products_slug_index` (`slug`) USING BTREE,
  ADD KEY `name` (`name`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `vendors_slug_unique` (`slug`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
