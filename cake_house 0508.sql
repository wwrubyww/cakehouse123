-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 
-- 伺服器版本： 10.4.11-MariaDB
-- PHP 版本： 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `cake_house`
--

-- --------------------------------------------------------

--
-- 資料表結構 `account`
--

CREATE TABLE `account` (
  `adminID` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `account`
--

INSERT INTO `account` (`adminID`, `level`, `account`, `password`, `created_at`, `update_at`) VALUES
(2, 0, '12345', '12345', NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `members`
--

CREATE TABLE `members` (
  `memberID` int(11) NOT NULL,
  `level` int(12) DEFAULT NULL,
  `name_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `county` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `members`
--

INSERT INTO `members` (`memberID`, `level`, `name_date`, `account`, `password`, `phone`, `mobile`, `email`, `county`, `district`, `zipcode`, `address`, `birthday`, `gender`, `created_at`, `updated_at`) VALUES
(3, 0, '小新', '111@gmail.com', '456', '111111', '901123124', '111@gmail.com', '', '', '', '111', '1992-08-08', 1, NULL, NULL),
(4, 0, '妮妮', '666@gmail.com', '123', '111111', NULL, '666@gmail.com', '', '', '', '1166', '1991-08-08', 1, NULL, '2020-04-25 14:08:56'),
(6, 0, '阿呆', '888@gmail.com', '555', '111111', NULL, '888@gmail.com', '', '', '', '8888', '1991-08-08', 1, NULL, '2020-04-25 14:44:12'),
(7, 0, '正男', '777@gmail.com', '777', '111111', NULL, '777@gmail.com', '', '', '', '7777', '1991-08-08', 1, NULL, '2020-04-25 15:45:32'),
(8, 0, '風間', '555@gmail.com', '555', '111111', '901123125', '555@gmail.com', '', '', '', '5555', '1991-08-08', 1, NULL, '2020-04-25 14:43:29'),
(12, NULL, '阿梅', '222@yahoo.com', '222', '77777', '903111111', '222@yahoo.com', '', '', '', '桃園市', '1991-08-08', 1, '2020-05-07 09:31:01', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `newsID` int(11) NOT NULL,
  `news_categoryID` int(11) NOT NULL,
  `published_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`newsID`, `news_categoryID`, `published_date`, `picture`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 4, '2020-04-22', '', '網站上線摟!', '網站上線摟!網站上線摟!', NULL, NULL),
(2, 4, '2020-04-11', '', '母親節特惠!', '母親節特惠!買一送一', NULL, NULL),
(9, 2, '2020-05-06', '', '最新特惠', '<p>最新特惠</p>\r\n', NULL, '2020-05-06 09:01:00'),
(16, 4, '2020-05-04', '', '這週有母親節', '<p>這週有母親節</p>\r\n', '2020-04-30 22:34:05', '2020-05-06 09:00:23'),
(17, 1, '2020-04-30', '', '測試測試', '<p>測試測試</p>\r\n', '2020-04-30 22:39:25', '2020-05-06 08:59:53');

-- --------------------------------------------------------

--
-- 資料表結構 `news_categories`
--

CREATE TABLE `news_categories` (
  `news_categoryID` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `news_categories`
--

INSERT INTO `news_categories` (`news_categoryID`, `category`, `created_at`, `updated_at`) VALUES
(1, '公告訊息', '2020-04-29 09:33:28', '2020-04-29 10:06:03'),
(2, '優惠訊息', '2020-04-29 09:33:51', NULL),
(4, '母親節特惠', '2020-04-30 22:16:09', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `pages`
--

CREATE TABLE `pages` (
  `pageID` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `pages`
--

INSERT INTO `pages` (`pageID`, `title`, `content`, `created_at`, `update_at`) VALUES
(1, '媽呀!好像成功了?', '測試', '2020-05-05', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `product_categoryID` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `products`
--

INSERT INTO `products` (`productID`, `product_categoryID`, `picture`, `name_date`, `description`, `price`, `created_at`, `updated_at`) VALUES
(2, 1, '19101930.jpg', '提拉米蘇', '<p>提拉米蘇</p>\r\n', 50, '2020-04-23', '2020-05-05 14:01:22'),
(4, 1, 'venus.jpg', '檸檬蛋糕', '<p>檸檬蛋糕</p>\r\n', 120, NULL, '2020-05-05 14:04:27'),
(9, 4, '19101930.jpg', '草莓派', '<p><span style=\"color:#c0392b\">草莓蛋糕</span></p>\r\n', 300, '2020-04-25 15:17:22', '2020-05-05 16:16:28'),
(16, 1, 'cake-715384_640.jpg', '草莓蛋糕', '草莓蛋糕', 500, '2020-05-05 14:03:34', NULL),
(17, 2, '80092721.jpg', '巧克力布朗尼', '巧克力布朗尼', 80, '2020-05-05 14:25:36', NULL),
(18, 1, 'cheese.jpg', '起司蛋糕', '<p>濃郁雙倍起司蛋糕</p>\r\n', 180, '2020-05-06 13:46:40', '2020-05-06 13:54:00');

-- --------------------------------------------------------

--
-- 資料表結構 `product_categories`
--

CREATE TABLE `product_categories` (
  `product_categoryID` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `product_categories`
--

INSERT INTO `product_categories` (`product_categoryID`, `category`, `created_at`, `updated_at`) VALUES
(1, '熱門蛋糕', '2020-04-29 09:33:28', '2020-05-05 14:26:49'),
(2, '季節限定', '2020-04-29 09:33:51', '2020-05-01 08:30:13'),
(4, '母親節特惠', '2020-04-30 22:16:09', '2020-05-01 08:30:00');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`adminID`);

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memberID`);

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsID`);

--
-- 資料表索引 `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`news_categoryID`);

--
-- 資料表索引 `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`pageID`);

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- 資料表索引 `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`product_categoryID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `account`
--
ALTER TABLE `account`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `memberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `newsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `news_categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pages`
--
ALTER TABLE `pages`
  MODIFY `pageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `product_categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
