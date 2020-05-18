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
-- 資料表結構 `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `admin`
--

INSERT INTO `admin` (`adminID`, `account`, `password`, `created_at`, `updated_at`) VALUES
(1, 'cake_admin', 'test12345', NULL, NULL),
(2, 'user', 'user123', NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
CREATE TABLE `customer_orders` (
  `customer_orderID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `order_no` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `shipping` varchar(255) NOT NULL,
  `pay_method` varchar(255) DEFAULT NULL,
  `receive_method` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `customer_orders`
--

INSERT INTO `customer_orders` (`customer_orderID`, `memberID`, `status`, `order_no`, `order_date`, `name`, `phone`, `address`, `total`, `shipping`, `pay_method`, `receive_method`, `created_at`, `updated_at`) VALUES
(1, 3, 0, 'HC20191216163750', '2019-12-16 16:37:50', 'Kemie', '0944111222', '320桃園市中壢區中山路111號', '490', '150', '信用卡', '超商取貨付款', '2019-12-16 16:37:50', NULL),
(2, 4, 2, 'HC20191220101605', '2019-12-20 10:16:05', 'Andy', '0911222444', '207新北市萬里區15號', '550', '150', 'ATM轉帳', '超商取貨付款', '2019-12-20 10:16:05', NULL),
(3, 4, 0, 'HC20191220101723', '2019-12-20 10:17:23', 'Cathy', '0944111222', '300新竹市東區100號', '330', '100', '信用卡', '宅配', '2019-12-20 10:17:23', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `memberID` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `members`
--

INSERT INTO `members` (`memberID`, `level`, `account`, `password`, `name`, `phone`, `email`, `birthday`, `mobile`, `gender`, `county`, `district`, `zipcode`, `address`, `created_at`, `updated_at`) VALUES
(1, 0, 'kemiedon@gmail.com', '12345', 'Kemie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 0, 'kemie22@gmail.com', 'test12345', 'Kemie', '', '', '1977-06-17', '', 1, '桃園市', '中壢區', '320', '中山路111號', '2019-12-12 13:50:25', '2019-12-16 14:25:38'),
(4, 0, 'andy@gmail.com', 'test111', 'Andy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-12 14:16:27', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `newsID` int(11) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `published_at` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`newsID`, `picture`, `published_at`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'abc.jpg', '2019-12-02', 'Happy Cake優惠8折起', 'Happy Cake優惠8折起Happy Cake優惠8折起Happy Cake優惠8折起Happy Cake優惠8折起', '2019-12-02', NULL),
(2, 'test.jpg', '2019-12-01', '星巴克陪您過耶誕 - 耶誕紅杯轉轉數位活動', '歡慶冬末，每日參與數位活動，猜中可愛白熊藏身在哪一個耶誕紅杯之中品嚐咖啡，即可領取專屬飲料優惠，節日快樂，香醇隨行！\r\n\r\n兌換期間：D+2 ，最後兌換日是2020/1/2。\r\n\r\n活動路徑https://goo.gl/qWvlEj\r\n使用Google帳號的顧客:請使用手機的網頁瀏覽器搜尋【星巴克】，並點選星巴克網站的【門市最新活動】內的活動路徑。', '2019-12-01', NULL),
(3, 'aaa.jpg', '2019-11-20', '測試新聞資料', '據《ETtoday》報導，柯女指控今年2月因晚3天未繳房租，向蕭男表示自己將搬走，只是新房還不確定，蕭男隨即要求她把東西拿走，沒想到竟趁她拿起物品下樓時丟擲鐵製拖車及雜物造成左側肩膀挫傷，她嚇得報警並驗傷提告。\r\n\r\n蕭男否認傷害及毀損犯行，堅稱自己並未違法，法官認為年薪300萬的蕭男還有50間套房出租，經濟狀況頗佳，卻犯後無悔意也未與被害人和解，最後依傷害罪判刑4個月，可易科罰金24萬元。', '2019-11-20', NULL),
(5, NULL, '2019-12-20', '今天星期四', '自從經歷2015年「最強小三」風波後，陶喆近年乖了不少，尤其今年2月喜獲麟兒後，更是營造出家庭美滿的好爸爸形象。不過日前晚間本刊直擊陶喆再度出征，他的保母車「裝上」多位年輕辣妹，與友人聚會喝酒，陶喆還跟她們續攤到凌晨，並專程送其中一名長腿妹回家，更貼心地將對方「牽」下車，兩人躲到柱子後面，行徑詭異。\r\n\r\n11月28日晚間9點半左右，陶喆被本刊捕捉到和3女一同現身在台北市微風廣場，4人上了他的專屬保母車，司機還特別幫其中一名穿著短裙、長靴的長腿妹撐傘，似乎對她的身分頗為知悉，之後一群人浩浩蕩蕩開往信義區的ATT4FUN九樓高檔KTV續攤。\r\n\r\n', '2019-12-04 16:24:43', '2019-12-05 10:22:20'),
(6, '', '2019-12-19', 'test summernote', '<h2 class=\"canvas-atom canvas-text Mb(1.0em) Mb(0)--sm Mt(0.8em)--sm\"><em><strong>（中央社洛杉磯9日綜合外電報導）</strong></em>第77屆金球獎入圍名單今天揭曉。由影音串流平台Netflix製作發行的「婚姻故事」獲6項提名，傲視群倫。同樣由Netflix出資製作的黑幫電影「愛爾蘭人」則以5項提名居第二。</h2>\r\n<p class=\"canvas-atom canvas-text Mb(1.0em) Mb(0)--sm Mt(0.8em)--sm\">「婚姻故事」（Marriage Story）和「愛爾蘭人」（The Irishman）將共同角逐劇情類最佳影片。入圍此獎項的還有「小丑」（Joker）、「1917」 （1917）和「教宗的承繼」（The Two Popes）。</p>\r\n<p class=\"canvas-atom canvas-text Mb(1.0em) Mb(0)--sm Mt(0.8em)--sm\">同樣獲5項提名的還有「從前，有個好萊塢」（Once Upon a Time &hellip; in Hollywood）。</p>\r\n<p class=\"canvas-atom canvas-text Mb(1.0em) Mb(0)--sm Mt(0.8em)--sm\">由Apple影音串流平台Apple TV+發行的「晨間直播秀」（The Morning Show）則獲3項提名。這是Apple首度競逐好萊塢重要電影電視獎。</p>\r\n<p class=\"canvas-atom canvas-text Mb(1.0em) Mb(0)--sm Mt(0.8em)--sm\">不過，無論是在電影或電視作品方面，Netflix都入圍最多獎項。在電影作品方面，它旗下的「婚姻故事」和「愛爾蘭人」各有6項和5項入圍；在電視作品方面，則憑包括「王冠」（The Crown）和「難，置信」（Unbelievable）等影集囊括總計17項提名。</p>\r\n<p class=\"canvas-atom canvas-text Mb(1.0em) Mb(0)--sm Mt(0.8em)--sm\">金球獎有「奧斯卡風向球」之稱，入圍名單一向備受矚目。第77屆金球獎將於明年1月5日假美國加州比佛利山（Beverly Hills）舉行，恰好就在奧斯卡提名投票結束前兩天。（譯者：陳韻聿/核稿：陳政一）1081209</p>', '2019-12-05 13:19:23', '2019-12-11 10:16:59'),
(8, NULL, '2019-12-04', 'test', '<h2><strong>gggg</strong></h2>', '2019-12-05 14:06:51', '2019-12-05 14:07:38'),
(9, 'christmas-1818598_1280.jpg', '2019-12-24', '新上市，彩色馬卡龍111', '<p>新上市，彩色馬卡龍</p>\r\n<p>全面8折起</p>', '2019-12-06 09:41:34', '2019-12-06 10:40:33');

-- --------------------------------------------------------

--
-- 資料表結構 `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `order_detailsID` int(11) NOT NULL,
  `customer_orderID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `order_details`
--

INSERT INTO `order_details` (`order_detailsID`, `customer_orderID`, `productID`, `picture`, `name`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'bread-rolls-food-brown-baked-bakery-wheat.jpg', '芝麻麵包', 100, 1, '2019-12-16 16:37:50', NULL),
(2, 1, 2, 'chocolate-cake-with-orange-slices.jpg', '巧克力蛋糕', 120, 2, '2019-12-16 16:37:50', NULL),
(3, 2, 5, 'close-up-of-bread-on-table.jpg', '橙香麵包', 80, 2, '2019-12-20 10:16:05', NULL),
(4, 2, 3, 'close-up-of-loaves-of-bread.jpg', '歐式葡萄乾麵包', 120, 1, '2019-12-20 10:16:05', NULL),
(5, 2, 2, 'chocolate-cake-with-orange-slices.jpg', '巧克力蛋糕', 120, 1, '2019-12-20 10:16:05', NULL),
(6, 3, 4, 'bread-rolls-food-brown-baked-bakery-wheat.jpg', '芝麻麵包', 100, 1, '2019-12-20 10:17:23', NULL),
(7, 3, 1, 'wood-food-bread.jpg', '雜糧麵包', 80, 1, '2019-12-20 10:17:23', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `pageID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `pages`
--

INSERT INTO `pages` (`pageID`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, '關於我們', '<h3>Happy Cake 成立於1999年，致力於讓客人吃到幸福的甜點</h3>\r\n<h5>源自英文Fun「有趣玩樂」及義大利文siamo「我們」完美邂逅，意喻著 「Let&rsquo;s have fun together」初衷。提供您與三五好友，享受輕鬆寫意 的交流場域，發掘生活的無限美好，共創甜蜜故事。</h5>\r\n<h5>全方位的科技服務品牌, 顛覆傳統作法，以「客自化」全新思維出發，採全自助烘焙，即便烘焙新手都能親手完成甜點。</h5>\r\n<h5>透過DIY手作為傳遞甜蜜 心意的情感，以手藝傳遞心意，讓生活處處充滿驚喜與歡樂</h5>', '2019-12-05', '2019-12-11 15:16:41');

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `product_categoryID` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `products`
--

INSERT INTO `products` (`productID`, `product_categoryID`, `status`, `name`, `description`, `picture`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '雜糧麵包', '<p>麵包1</p>', 'wood-food-bread.jpg', '80', NULL, '2019-12-06 14:21:24'),
(2, 2, 1, '巧克力蛋糕', '<p>巧克力蛋糕</p>', 'chocolate-cake-with-orange-slices.jpg', '120', NULL, '2019-12-11 13:16:50'),
(3, 1, 1, '歐式葡萄乾麵包', '<p>歐式葡萄乾麵包歐式葡萄乾麵包歐式葡萄乾麵包歐式葡萄乾麵包</p>', 'close-up-of-loaves-of-bread.jpg', '120', '2019-12-06 13:43:29', '2019-12-06 14:21:16'),
(4, 1, 0, '芝麻麵包', '<p>芝麻麵包芝麻麵包芝麻麵包</p>', 'bread-rolls-food-brown-baked-bakery-wheat.jpg', '100', '2019-12-06 13:44:56', '2019-12-06 14:21:08'),
(5, 1, 2, '橙香麵包', '<p>橙香麵包橙香麵包橙香麵包</p>', 'close-up-of-bread-on-table.jpg', '80', '2019-12-06 14:20:41', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories` (
  `product_categoryID` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `product_categories`
--

INSERT INTO `product_categories` (`product_categoryID`, `category`, `created_at`, `updated_at`) VALUES
(1, '歐式麵包', '2019-12-06 11:17:15', NULL),
(2, '精緻蛋糕', '2019-12-06 11:17:23', '2019-12-06 11:17:33');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- 資料表索引 `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`customer_orderID`);

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
-- 資料表索引 `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detailsID`);

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `customer_orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `memberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `newsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pages`
--
ALTER TABLE `pages`
  MODIFY `pageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `product_categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
