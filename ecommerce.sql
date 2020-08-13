-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2020 at 02:51 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(10) UNSIGNED NOT NULL,
  `ar_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `ar_content`, `en_content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'ffffffffsssss', 'fffffffffssss', '15330383569305.jpg', NULL, '2018-07-31 09:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@test.com', '$2y$10$SNMcbMDzvWIbztvrP8zQKu8/nwquok50RlbYLGWwavnNFeV9stuQu', 'ZVAA2LUufhqUyNnFWR4atZEOwYCVUwc92EAp22XXCml9qW4Eeoig59DGTelJ', '2018-05-14 13:05:57', '2018-05-14 13:05:57'),
(3, 'success', 'success@admin.com', '$2y$10$GTFMRNLdr9UDjDmeNlPB5uP7mRvhAk9wzkJGtPYubtbWfbSsLxgsm', NULL, '2018-05-22 07:54:18', '2018-05-22 07:54:18'),
(4, 'just r test', 'sohila.khalid@cot.c', '$2y$10$3aMxZ2AI/3YSDbGv/ud1LOnhXUTxLq.am4x4dl.IOXAgU3V0FOmcu', NULL, '2018-05-22 07:55:56', '2018-05-22 07:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_ar_name`, `category_en_name`, `logo`, `parent`, `created_at`, `updated_at`) VALUES
(1, 'كاتيجرى', 'category', 'countries/8F5LXjfRoj8Hj2LjhFudlC3hlaoa9DEs9NsoCFZ4.png', NULL, '2018-06-14 09:45:57', '2018-06-14 09:45:57'),
(2, 'سيارات', 'Cars', 'countries/ysDZpqkizVBmGdmM9Z31gYKrFD3NfgitHuZN1FZH.png', NULL, '2018-06-19 07:41:29', '2018-06-19 07:41:29'),
(3, 'بى ام دابليو', 'BMW', 'countries/2VRVqtAgAQXZ2piwSe6t0VjVAZ7NTl4yyhktKpb4.png', '2', '2018-06-19 08:05:39', '2018-06-19 08:05:39');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Virgil Macqueen', 'info@syieducation.com', 'As You Wish', 'Hello there\r\n\r\nShop Ray-Ban Sunglasses $19.95 only today at https://ioverstock.online\r\n\r\nKind Regards,\r\n\r\nElectro - Electronics Ecommerce Theme high-discounts.net', '2018-09-06 14:28:37', '2018-09-06 14:28:37');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mob` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name_ar`, `country_name_en`, `mob`, `code`, `logo`, `parent`, `created_at`, `updated_at`) VALUES
(1, 'مصر', 'Egypt', '02', 'EG', 'countries/bbNZxAHterGKoq7tUiYpryFQQOE9HHFU8TBDHAYs.png', NULL, '2018-06-04 09:44:12', '2018-06-04 09:44:12'),
(7, 'القاهره', 'Cairo', '02', NULL, NULL, '1', '2018-06-12 08:02:36', '2018-06-12 08:02:36'),
(8, 'كفر الشيخ', 'Kafr EL shiekh', '047', 'KFS', NULL, '1', '2018-06-12 08:52:42', '2018-06-12 08:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `department_products`
--

CREATE TABLE `department_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `ar_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_products`
--

INSERT INTO `department_products` (`id`, `ar_name`, `en_name`, `image`, `parent`, `created_at`, `updated_at`) VALUES
(13, 'اثاث منزلي وديكورات', 'Home Furniture and Decorations', '15340831175394.jpg', 0, '2018-08-12 12:11:57', '2018-08-12 12:11:57'),
(14, 'سماعات كمبيوتر', 'Computer Headphones', '15340833441004.jpg', 0, '2018-08-12 12:15:44', '2018-08-12 12:15:44'),
(17, 'موبايلات', 'Mobiles', '15342460069394.jpg', 0, '2018-08-14 09:26:46', '2018-08-14 09:26:46'),
(18, 'أبل', 'Apple', '15344092576007.png', 17, '2018-08-14 09:30:47', '2018-08-16 06:47:37'),
(19, 'سامسونج', 'samsung', '15342560588869.png', 17, '2018-08-14 09:34:43', '2018-08-14 12:14:18'),
(20, 'اوبو', 'oppo', '15342569987866.png', 17, '2018-08-14 12:29:58', '2018-08-14 12:29:58'),
(21, 'جى بى ال', 'jpl', '15342572627674.png', 14, '2018-08-14 12:34:22', '2018-08-14 12:34:22'),
(22, 'بيتس', 'beats', '1534257388702.png', 14, '2018-08-14 12:36:28', '2018-08-14 12:36:28'),
(23, 'لوجيتك', 'logitech', '15342576501014.jpg', 14, '2018-08-14 12:40:50', '2018-08-14 12:40:50'),
(24, 'رويال فرنتشير', 'royal furniture', '15342579639197.jpg', 13, '2018-08-14 12:46:03', '2018-08-14 12:46:03'),
(25, 'اشلي هوم استور', 'ashley home store', '15342580465817.png', 13, '2018-08-14 12:47:26', '2018-08-14 12:47:26'),
(26, 'لايت اتشار', 'light chair', '15342580829883.png', 13, '2018-08-14 12:48:02', '2018-08-14 12:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(10) UNSIGNED NOT NULL,
  `ar_question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `ar_question`, `en_question`, `ar_answer`, `en_answer`, `created_at`, `updated_at`) VALUES
(1, 'أين أجده ؟', 'What Shipping Methods Are Available?', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sapien lorem, consectetur et turpis id, blandit interdum metus. Morbi sed ligula id elit mollis efficitur ut nec ligula. Proin erat magna, pellentesque at elementum at, eleifend a tortor.', '2018-09-03 09:17:50', '2018-09-03 09:17:50'),
(2, 'ما هو \"لوريم إيبسوم\" ؟', 'How Long Will it Take To Get My Package?', 'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور \"ريتشارد ماك لينتوك\" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي \"consectetur\"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب \"حول أقاصي الخير والشر\" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم \"Lorem ipsum dolor sit amet..\" يأتي من سطر في القسم 1.20.32 من هذا الكتاب.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sapien lorem, consectetur et turpis id, blandit interdum metus. Morbi sed ligula id elit mollis efficitur ut nec ligula. Proin erat magna, pellentesque at elementum at, eleifend a tortor.', '2018-09-03 09:18:34', '2018-09-03 09:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_08_101248_create_admins_table', 1),
(4, '2018_05_14_145100_create_settings_table', 2),
(5, '2018_05_27_095745_create_files_table', 3),
(8, '2018_02_17_141051_create_department_product_table', 4),
(9, '2018_05_28_121718_create_countries_table', 4),
(10, '2018_06_12_113051_create_categories_table', 5),
(13, '2018_02_17_141051_create_products_gallary_table', 6),
(14, '2018_02_20_025034_create_products_table', 6),
(15, '2018_02_17_141051_create_products_color_table', 7),
(16, '2018_02_17_141051_create_products_size_table', 7),
(20, '2018_07_18_150951_create_shipments_table', 8),
(21, '2018_02_20_025034_create_shopping_cart_table', 9),
(23, '2018_07_26_161956_create_contactus', 10),
(26, '2018_07_29_110454_create_aboutus', 12),
(27, '2018_07_18_124326_create_orders', 13),
(28, '2018_07_18_124650_create_order_items', 13);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('prepare','ship','done','reject') COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `user_id`, `country_id`, `name`, `address`, `phone`, `email`, `price`, `level`, `seen`, `created_at`, `updated_at`) VALUES
(1, '#242425436', 5, 7, 'test', '104 Bolsover St, Fitzrovia, London W1W 5NU', '0125555555', 'test@test.com', '10000', 'done', 1, '2018-07-31 13:06:57', '2018-09-18 16:00:48'),
(2, '#955654', 5, 8, 'karim', '104 Bolsover St, Fitzrovia, London W1W 5NU', '01126878406', 'karim@test.com', '10000', 'ship', 1, '2018-08-01 09:13:08', '2018-09-18 16:01:02'),
(3, '#153312255862', 5, 8, 'mohamed', '104 Bolsover St, Fitzrovia, London W1W 5NU', '0125555555', 'mohamed@test.com', '200', 'reject', 1, '2018-08-01 09:22:38', '2018-08-30 12:55:55'),
(4, '#15344330506', 5, 7, 'test', '104 Bolsover St, Fitzrovia, London W1W 5NU', '000000000', 'test@test.com', '10000', 'prepare', 1, '2018-08-16 13:24:10', '2018-08-30 12:56:13'),
(5, '#15370367114', 5, 7, 'test', 'hmjhgfd', '01126878406', 'test@test.com', '4000', 'done', 1, '2018-09-15 16:38:31', '2018-09-18 15:59:11'),
(6, '#15386619148', 5, 7, 'test', 'vbjhmvjhmcvhnv', '01111111', 'test@test.com', '400', 'prepare', 0, '2018-10-04 12:05:14', '2018-10-04 12:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `vendor_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `vendor_id`, `vendor_type`, `item_price`, `created_at`, `updated_at`) VALUES
(1, 13, 1, 4, 'vendor', 10000, '2018-07-31 13:06:57', '2018-07-31 13:06:57'),
(2, 13, 2, 4, 'vendor', 10000, '2018-08-01 09:13:08', '2018-08-01 09:13:08'),
(3, 3, 3, 2, 'admin', 200, '2018-08-01 09:22:38', '2018-08-01 09:22:38'),
(4, 2, 4, 2, 'admin', 10000, '2018-08-16 13:24:10', '2018-08-16 13:24:10'),
(5, 5, 5, 2, 'admin', 4000, '2018-09-15 16:38:31', '2018-09-15 16:38:31'),
(6, 3, 6, 2, 'admin', 400, '2018-10-04 12:05:14', '2018-10-04 12:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_dep_id` int(11) DEFAULT NULL,
  `dep_id` int(11) NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `user_type`, `main_dep_id`, `dep_id`, `ar_title`, `en_title`, `en_content`, `ar_content`, `stock`, `price`, `size`, `color`, `photo`, `created_at`, `updated_at`) VALUES
(1, 2, 'admin', 17, 19, 'جالاكسى اس 4', 'Galaxy S4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', 6, '4000', '64 GB', 'white', '15344108881785.jpg', '2018-08-16 07:14:48', '2018-08-16 07:14:48'),
(2, 2, 'admin', 17, 18, 'اى فون 6 بلس', 'I Phone 6 Plus', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', 77, '10000', '64 GB', 'white', '15344120198095.jpg', '2018-08-16 07:33:39', '2018-08-16 07:33:39'),
(3, 2, 'admin', 14, 22, 'بيتس استوديو 3', 'Beats Studio3 Wireless', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', 10, '400', '16 GB', 'rose', '15344122474429.jpg', '2018-08-16 07:37:27', '2018-08-16 07:37:27'),
(4, 2, 'admin', 14, 21, 'T450BT', 'T450BT', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', 2, '3499', '16 GB', 'Black', '15344145459398.jpg', '2018-08-16 08:15:45', '2018-08-16 08:15:45'),
(5, 2, 'admin', 14, 23, 'G933', 'G933', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', 6, '4000', '16 GB', 'Black', '15344162777253.png', '2018-08-16 08:44:37', '2018-08-16 08:44:37'),
(6, 2, 'admin', 13, 26, 'Waterproof Led Bar Chair Sofa', 'Waterproof Led Bar Chair Sofa', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', 2, '1000', 'L', 'orange', '15344167303362.jpg', '2018-08-16 08:52:10', '2018-08-16 08:52:10'),
(7, 2, 'admin', 13, 25, 'Lulu 3-Piece over Bunk Bed', 'Lulu 3-Piece over Bunk Bed', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', 1, '3000', 'L', 'white', '15344170072219.jpg', '2018-08-16 08:56:47', '2018-08-16 08:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `products_color`
--

CREATE TABLE `products_color` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_color`
--

INSERT INTO `products_color` (`id`, `product_id`, `color`, `created_at`, `updated_at`) VALUES
(1, 1, 'black', '2018-08-16 07:14:48', '2018-08-16 07:14:48'),
(2, 2, 'black', '2018-08-16 07:33:40', '2018-08-16 07:33:40'),
(3, 3, 'red', '2018-08-16 07:37:27', '2018-08-16 07:37:27'),
(4, 4, NULL, '2018-08-16 08:15:46', '2018-08-16 08:15:46'),
(5, 5, NULL, '2018-08-16 08:44:38', '2018-08-16 08:44:38'),
(6, 6, 'yellow', '2018-08-16 08:52:10', '2018-08-16 08:52:10'),
(7, 7, NULL, '2018-08-16 08:56:47', '2018-08-16 08:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `products_gallary`
--

CREATE TABLE `products_gallary` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `media` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_gallary`
--

INSERT INTO `products_gallary` (`id`, `product_id`, `media`, `created_at`, `updated_at`) VALUES
(1, 1, 'eTneO-1534410888-wsR.jpg', '2018-08-16 07:14:48', '2018-08-16 07:14:48'),
(2, 2, 'I1OhS-1534412020-qKw.jpg', '2018-08-16 07:33:40', '2018-08-16 07:33:40'),
(3, 3, '2OWZt-1534412247-3Do.jpg', '2018-08-16 07:37:27', '2018-08-16 07:37:27'),
(4, 3, 'IqK6M-1534412247-Ybv.jpg', '2018-08-16 07:37:27', '2018-08-16 07:37:27'),
(5, 3, 'r7S0y-1534412247-acq.jpg', '2018-08-16 07:37:27', '2018-08-16 07:37:27'),
(6, 4, 'rw1me-1534414546-StY.jpg', '2018-08-16 08:15:46', '2018-08-16 08:15:46'),
(7, 4, 'jNxKR-1534414546-wtL.jpg', '2018-08-16 08:15:46', '2018-08-16 08:15:46'),
(8, 5, '0ev2A-1534416277-VpD.png', '2018-08-16 08:44:37', '2018-08-16 08:44:37'),
(9, 5, 'VmsRT-1534416278-4wN.png', '2018-08-16 08:44:38', '2018-08-16 08:44:38'),
(10, 6, 'gSi1n-1534416730-iC8.jpg', '2018-08-16 08:52:10', '2018-08-16 08:52:10'),
(11, 7, 'MeFRZ-1534417007-9PG.jpg', '2018-08-16 08:56:47', '2018-08-16 08:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `products_size`
--

CREATE TABLE `products_size` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_size`
--

INSERT INTO `products_size` (`id`, `product_id`, `size`, `created_at`, `updated_at`) VALUES
(1, 1, '128 GB', '2018-08-16 07:14:48', '2018-08-16 07:14:48'),
(2, 2, '128 GB', '2018-08-16 07:33:40', '2018-08-16 07:33:40'),
(3, 3, NULL, '2018-08-16 07:37:27', '2018-08-16 07:37:27'),
(4, 4, NULL, '2018-08-16 08:15:46', '2018-08-16 08:15:46'),
(5, 5, NULL, '2018-08-16 08:44:38', '2018-08-16 08:44:38'),
(6, 6, NULL, '2018-08-16 08:52:11', '2018-08-16 08:52:11'),
(7, 7, NULL, '2018-08-16 08:56:47', '2018-08-16 08:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `sitename_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sitename_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ar',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `keywords` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('open','close') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `message_mentenance` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `sitename_ar`, `sitename_en`, `logo`, `icon`, `email`, `main_lang`, `description`, `keywords`, `status`, `message_mentenance`, `created_at`, `updated_at`) VALUES
(1, 'اسم الموقع بالعربيه', 'site name en', 'settings/HPQZuFLABTS5nm9SHNUT4q9wpzV0yXSy7GbTNXIb.png', 'settings/K2irf73YdDWg67TKGD9WLygEfO3wz47kEE8q2K1r.jpeg', 'test@demo.com', 'ar', 'message_mentenance', 'message_mentenance', 'open', 'الموقع مغلق فى الوقت الحالى برجاء الرجوع فى وقت اخر', '2018-05-21 09:32:03', '2018-07-31 12:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `vendor_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`id`, `user_id`, `product_id`, `vendor_id`, `vendor_type`, `price`, `created_at`, `updated_at`) VALUES
(1, 5, 4, 2, 'admin', '3499', '2018-10-08 11:50:29', '2018-10-08 11:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `slider_image`
--

CREATE TABLE `slider_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `en_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_image`
--

INSERT INTO `slider_image` (`id`, `en_title`, `ar_title`, `en_content`, `ar_content`, `image`, `created_at`, `updated_at`) VALUES
(3, 'It is a long established fact', 'لتكوّن كتيّب بمثابة دليل', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its lay', '\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', '15344308463950.jpg', '2018-08-16 12:47:26', '2018-08-16 12:47:26'),
(4, 'There are many variations of passages', 'وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها.', 'There are many variations of passages', 'الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.', '15344309183045.jpg', '2018-08-16 12:48:38', '2018-08-16 12:48:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('user','vendor') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `level`, `status`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vendor active', 'vendor@act.com', '$2y$10$LfdnFLdAncRvyE9mD4ncm.vDv/wCXzmkw7UP46YqF0SZa4PJVcL4S', 'vendor', '0', '', NULL, '2018-05-14 13:06:51', '2018-05-14 13:06:51'),
(2, 'vendor deact', 'vendor@deact.com', '$2y$10$uEVJx34WFHs/CxW1vfifKu3lxpkiR8.gCCgXDcsOcf6bvsk9/VTOy', 'vendor', '1', '', NULL, '2018-05-14 13:07:19', '2018-05-14 13:07:19'),
(3, 'user active', 'user@act.com', '$2y$10$TN3cPWwBHwD3AzapSHTEVu9X0CNiqvNtP2cdG/wVbIuO.AahfYRYu', 'user', '1', '', NULL, '2018-05-14 13:07:58', '2018-05-14 13:07:58'),
(4, 'vendor', 'vendor@vendor.com', '$2y$10$vrjuxydxiP9qoFYLLNV/w.OeGiDbDfFwRMi.5eooj0mJQSZmh.jku', 'vendor', '1', '', 'cDmSQz3uMM5muVurfExQJMzpvPQzYvmpjWExRZzmLqYta9ImPZMogbxzR1OU', '2018-07-19 07:57:07', '2018-07-19 07:57:07'),
(5, 'test', 'test@test.com', '$2y$10$W8nYDEMPKwibf5ohD5ePZOahvAfi9xBZd77bTH/pGO91QjeNxy7we', 'user', '1', 'jlLMJrSY1Lmzdy46GjFf4XLokGeDyGpVK2VJaeYLL0sXmAQzGXMv4mEuIdhI', 'OvpSjUsRqKA58vDQtfjGSX76KhuFRaECiyDFkKLWQnlumkwFf2w94B3pexqG', '2018-07-24 11:37:20', '2018-08-26 09:35:36'),
(6, 'karim', 'karim@karim.com', '$2y$10$ciYT542Vq2zAk9P.65KQy.SI0Ri99zs1/Sd6gxdeucneXb84HpMCq', 'user', '0', 'UFptz9VuB0HnHZgFj1FDC3YAswNoNhT77jyQySA2WuxceIqBduT3QOTaG4ym', NULL, '2018-08-08 09:03:36', '2018-08-08 09:03:36'),
(7, 'karim', 'karimhelmy@karim.com', '$2y$10$OTTKTs92vrWY6NZD52xomeEl7YBj.QWr7sTWpzD0o9LATYZk2CWbG', 'user', '1', 'bLKKPAVGnFFuHUiV0QzIdwZbEQuw5HldWTEewMp4cEwTv4Mbz6T7HkfeDPkv', NULL, '2018-08-08 09:08:34', '2018-08-08 09:08:34'),
(8, 'mohamed', 'moh@moh.com', '$2y$10$JosaSgaO2tPoFdSSDdEfD.jdLMiG9Gx3pNWIoCspIUbzaqVU91u4K', 'user', '1', 'VksHF2TYbcjr188eqVSkE8zH3DUYfgYu47lJX8vQhyi3whVZWTC7u1YmeE7h', NULL, '2018-08-08 09:39:01', '2018-08-08 09:39:01'),
(9, 'mohamed', 'mohd@moh.com', '$2y$10$JSu9XNCU3ojbR58q88GV7OQPFH1hEomNvgp.8l664bjoMwQJ2lq/O', 'vendor', '1', 'dQyuRZe0zuigCpPnl1I9E583xZDUzfLCGBgoMxGlIYffkDXFxi8iYB3XOAzM', NULL, '2018-08-08 09:39:16', '2018-08-08 09:39:16'),
(10, 'mohamed', 'mohdjj@moh.com', '$2y$10$gn28BIOprXr/ruIs9pv7O.PKiZdOydhc2rpiLOldQT9EgLq094UOK', 'vendor', '0', 'w2asTH3UCJ896iQnq30XzTQCyT1bpPfbG9eXvk5mun3CYrlaxfU4Q47pvQ6H', NULL, '2018-08-08 09:42:21', '2018-08-08 09:42:21'),
(11, 'test1', 'test1@test.com', '$2y$10$MYSvH89ERtlWoKAtwdisLOB8tMMN/wrZnFQBjq5bNI1Q6pi0i48ha', 'user', '1', 'UTTbaakMCkItLNv06kOwTjnNyPDroPPf9dnWD3CpzKB2WVBcy0omwEU1MAKA', NULL, '2018-08-08 10:24:39', '2018-08-08 10:24:39'),
(12, 'test2', 'test2@test.com', '$2y$10$LBe3oQlzS2pm3XfFwEeRuukEeikpH0K/ipjItWh2ZzcwN.3RL0hTe', 'user', '1', 'UxtohmAKoUY0NBOy5mAzysIvRhZRR3hwtsBj8dF8az71jNF41tROKx21bSxe', NULL, '2018-08-08 10:26:17', '2018-08-08 10:26:17'),
(13, 'test3', 'test3@test.com', '$2y$10$gHN60iD1aDSID5S4BkmT6eiAZL.vQdRgMP309RocoQ202KGvy7LKy', 'user', '1', '7eptBGFjnNVU0AmDQBvaH96qYJUaieti6um6TxzG1z34R3fXiMcbqWxMoq4g', NULL, '2018-08-08 10:39:11', '2018-08-08 10:39:11'),
(14, 'test3', 'test4@test.com', '$2y$10$TXLmAnwh4C7BVfyEbEmdFOyPYtdMAZFu3yrdDdJbEmKxx.EdTUM/K', 'user', '1', 'X17b7JwOuZx29WVlEiqETAvCuDRinULeHWIbLCidchMlXQAhoFVIajEgDAjZ', NULL, '2018-08-08 10:44:25', '2018-08-08 10:44:25'),
(15, 'test  test', 'hazem@test.com', '$2y$10$ufTDHsO5FYlMlqO/jwm3wu0z4sl6EG5mVdSiA06.HUnTW6QrKL1EO', 'user', '1', 'dC5TGB3uHosBIeaVANfs90kDhuIrxdauuOo1qvK3DfnY4RO0n1OmqB2hD2DV', NULL, '2018-08-08 10:49:39', '2018-08-08 10:49:39'),
(16, 'test5', 'test5@test.com', '$2y$10$9OMnFsm52mUUFs/o8KEQfuu6esoORmsXzsX6.OAjWQw7GWzdbb4Tm', 'user', '1', 'tmjsEvYcPhQ3n4XRdcFZaUUaLEauff13QZaJUfuyuPNzf2atvGkTWuuHpORd', NULL, '2018-08-08 10:53:07', '2018-08-08 10:53:07'),
(17, 'test5', 'test6@test.com', '$2y$10$IJ79OLbABX8PqfJa/Zcp3ujhH1s/Ah40fbtpjPia8tvuiQ/YT2/SS', 'user', '1', 'r2ZpznFXUTUPU0fTPcaUho4L731W17V4yQSXYQ0k9opZauzUYoQz2hT7bduH', NULL, '2018-08-08 10:54:37', '2018-08-08 10:54:37'),
(18, 'test5', 'test7@test.com', '$2y$10$VgNXV9o2kRi1xEJgHHjwD..yQYF418Rpjdm6hXrYLNUzqJc1RH/tm', 'user', '1', 'AIWU8z3a6xjV184mPuHFqEwsnMyJGwJ9E640dqZUJL0LAVg4HqXPt17bnUzd', NULL, '2018-08-08 10:56:29', '2018-08-08 10:56:29'),
(19, 'btngana  bate5a', 'b@c.com', '$2y$10$tDDFb7OZAFyiml.E/Bauee8tu3.l7LEzlGtjgDyZ1V7jkYsoC.Bmq', 'vendor', '0', '3K5l0Z8yCoKy6zxUEpBuiVkMeGjEsbf6r0pLRm36Ja2mpmFYhlO47cBO0eBc', NULL, '2018-08-08 12:12:31', '2018-08-08 12:13:57'),
(20, 'hazem  ali', 'hazem.ali@corpy.net', '$2y$10$kBr849yXocY6qz/8Zjur0uxXZkVkEzDCwVSnYrwll0frTfMSC2t2u', 'user', '1', 'CKYshwDNlvX8bIAIYzPiTrQwi9A1oqvWOAIo1z3IyPCJdCREDnmuBDGBhAtS', NULL, '2018-08-08 12:25:34', '2018-08-08 12:25:34'),
(21, 'hazzz  hazzz', 'haze@haze.com', '$2y$10$kCApDzp7nTTa86lf./NMre/IuRJyy10VQsHDR3C6abzl6nNvjXghy', 'vendor', '0', 'q5ALRxEawgcTrfuY1CY6OPx3oQyminNB86rm0ZgQmI0ex2blAv8dfzX3AA5a', NULL, '2018-08-08 12:37:41', '2018-08-08 12:38:01'),
(22, 'a  a', 'a@a.a', '$2y$10$n1IIh3ZRs8GkTsAd7ae7TeBwktAEpObwZYagtv.zp.L8EM.YTN9p6', 'vendor', '0', 'N8s3Kjm331aOhpwF4C1sUpr3m2w7K0L2LEEQNan7WEPAM0GLyrHyN2AQKEz0', NULL, '2018-08-26 09:54:22', '2018-08-27 11:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_products`
--
ALTER TABLE `department_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_color`
--
ALTER TABLE `products_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_gallary`
--
ALTER TABLE `products_gallary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_size`
--
ALTER TABLE `products_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_image`
--
ALTER TABLE `slider_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `department_products`
--
ALTER TABLE `department_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products_color`
--
ALTER TABLE `products_color`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products_gallary`
--
ALTER TABLE `products_gallary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products_size`
--
ALTER TABLE `products_size`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_image`
--
ALTER TABLE `slider_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
