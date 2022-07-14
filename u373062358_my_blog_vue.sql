-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2022 年 07 月 14 日 12:05
-- 伺服器版本： 10.5.12-MariaDB-cll-lve
-- PHP 版本： 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `u373062358_my_blog_vue`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `admin_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `password` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 資料表結構 `article_list`
--

CREATE TABLE `article_list` (
  `id` int(10) NOT NULL,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `text` mediumtext COLLATE utf8_bin NOT NULL,
  `posted_date` date NOT NULL DEFAULT current_timestamp(),
  `author` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT 'Anonymous',
  `cover_picture` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 傾印資料表的資料 `article_list`
--

INSERT INTO `article_list` (`id`, `title`, `text`, `posted_date`, `author`, `cover_picture`) VALUES
(1, 'title101', '<p>hello1</p>', '0000-00-00', 'whoknow', NULL),
(2, 'title102', '<p>hello2</p>', '0000-00-00', 'whoknow', NULL),
(3, 'title1', '<p>hello2</p>', '0000-00-00', 'whoknow', NULL),
(4, 'title1', '<p>hello2</p>', '2022-04-11', 'whoknow', NULL),
(5, 'title1', '<p>hello2</p>', '2022-04-15', 'whoknow', NULL),
(6, 'title101', '<</p>', '2022-04-15', 'fuck', NULL),
(7, 'title1', '<p>hello2</p>', '2022-07-05', 'whoknow', NULL),
(8, '23445', '234', '2022-07-05', '23456', NULL),
(9, 'title1', '<p>hello2</p>', '2022-07-05', 'whoknow', NULL),
(10, '6666', '234', '2022-07-05', '23456', NULL),
(11, '為什么不行了', '為什么这個就行呢', '2022-07-06', '23456', NULL),
(12, '我真的不理解了', '為什么这個就行呢', '2022-07-06', '23456', NULL),
(13, '我真的不理解了', '為什么这個就行呢', '2022-07-06', '23456', NULL),
(14, '我真的不理解了', '為什么这個就行呢', '2022-07-06', '23456', NULL),
(15, '我真的不理解了', '為什么这個就行呢', '2022-07-06', '23456', NULL),
(16, '我真的不理解了', '為什么postman就行呢', '2022-07-06', '23456', NULL),
(17, '我真的不理解了', '為什么postman就行呢', '2022-07-06', '23456', NULL),
(18, '我真的不理解了', '為什么postman就行呢', '2022-07-06', '23456', NULL),
(19, '我沒有力氣了', '為什么postman就行呢', '2022-07-06', '23456', NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `article_list`
--
ALTER TABLE `article_list`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `article_list`
--
ALTER TABLE `article_list`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
