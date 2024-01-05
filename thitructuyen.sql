-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 05, 2024 lúc 02:50 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thitructuyen`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhoi`
--

CREATE TABLE `cauhoi` (
  `id_cauhoi` int(11) NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhanh` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `a` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `b` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `c` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `d` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dapan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_loaich` int(11) DEFAULT NULL,
  `id_mucdo` int(11) DEFAULT NULL,
  `id_khoi` int(11) DEFAULT NULL,
  `id_mh` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cauhoi`
--

INSERT INTO `cauhoi` (`id_cauhoi`, `noidung`, `hinhanh`, `a`, `b`, `c`, `d`, `dapan`, `id_loaich`, `id_mucdo`, `id_khoi`, `id_mh`, `created_at`, `updated_at`) VALUES
(1, 'How do you feel?', 'cuoi.jpg', 'I am good', 'bad', 'dont know', 'happy', 'A', 3, 1, 1, 3, NULL, NULL),
(2, 'A .......... knit community is the one in which relationships are very close.', NULL, 'close', 'closely', 'tightly', 'ugly', 'B', 2, 1, 1, 3, NULL, NULL),
(3, 'Mr. Brown is bored with doing the ................ chores.', NULL, 'household', 'domestic', 'housework', 'table', 'C', 1, 1, 1, 3, NULL, NULL),
(4, 'There has been a shift of ................. from manufacturing to service industries.', NULL, 'change', 'alteration', 'emphasis', 'movement', 'D', 1, 3, 1, 3, NULL, NULL),
(5, 'There was a wealth of .................... evidence.', NULL, 'supportive', 'support', 'supported', 'supporting', 'B', 1, 3, 1, 3, NULL, NULL),
(11, '<p>What are you doing?</p>', NULL, '<p>False</p>', '<p>True</p>', NULL, NULL, 'A', 4, 3, 1, 3, '2023-12-19 14:12:11', '2023-12-19 14:12:11'),
(40, 'He ...................... on business yesterday', '', 'went', 'goes', 'go        ', 'going', 'D', 1, 1, 1, 3, '2023-12-19 14:12:21', '2023-12-19 14:12:21'),
(41, '<p>Tom likes dancing, but Mike......................</p>', '', '<p>doesn&#39;t</p>', '<p>did&nbsp;</p>', '<p>do</p>', '<p>does not</p>', 'A', 2, 2, 1, 3, '2023-12-19 14:12:34', '2023-12-19 14:12:34'),
(42, ' Listen! Somebody......................for help.', '', 'are screaming', 'scream', 'is screaming', 'has screamed', 'C', 1, 3, 1, 3, '2023-12-19 14:12:47', '2023-12-19 14:12:47'),
(43, ' Waiter! There......................forks on this table.', '', 'are not some ', 'isn’t any', 'are not any', 'are some', 'A', 1, 2, 1, 3, '2023-12-19 14:13:08', '2023-12-19 14:13:08'),
(44, 'I have a test tomorrow, so I......................sit up late tonight to study.', '', 'will have to', 'can have to', 'have', 'have to', 'A', 1, 2, 1, 3, '2023-12-19 14:13:41', '2023-12-19 14:13:41'),
(45, 'An island on which......................is called a deserted island.', NULL, 'no people', 'no peoples live', 'no people live', 'people are living', 'C', 1, 2, 1, 3, '2023-12-19 14:13:51', '2023-12-19 14:13:51'),
(46, 'We wondered who......................to pay for the broken window.', NULL, 'is going ', 'was going', 'have', 'would', 'D', 2, 1, 1, 3, '2023-12-19 14:13:58', '2023-12-19 14:13:58'),
(47, 'Linda......................tie her shoes when she was only 3 years old', NULL, 'knew to', 'knew how to', 'could to', 'may', 'B', 3, 3, 1, 3, '2023-12-19 14:14:12', '2023-12-19 14:14:12'),
(48, '<p>I ..... to do homework.</p>', '', '<p>want</p>', '<p>do</p>', '<p>know</p>', '<p>All are correct</p>', 'A', 1, 1, 1, 3, '2023-12-19 14:14:28', '2023-12-19 14:14:28'),
(51, '<p>What is this season?</p>', 'TOOE_tusach.jpg', '<p>Spring</p>', '<p>Summer</p>', '<p>autumn</p>', '<p>Winter</p>', 'B', 1, 1, 1, 3, '2023-12-19 14:14:31', '2023-12-19 14:14:31'),
(52, 'He ...................... on business yesterday', 'a.jpg', 'went', 'goes', 'go        ', 'going', 'C', 1, 1, 1, 3, '2023-12-19 14:14:34', '2023-12-19 14:14:34'),
(53, 'Tom doesn\'t like dancing, but Mike......................', 'a.jpg', 'does', 'did ', 'do', 'doesn\'t', 'D', 1, 2, 1, 3, '2023-12-19 14:14:35', '2023-12-19 14:14:35'),
(54, ' Listen! Somebody......................for help.', 'a.jpg', 'are screaming', 'scream', 'is screaming', 'has screamed', 'A', 1, 3, 1, 3, '2023-12-19 14:14:37', '2023-12-19 14:14:37'),
(55, ' Waiter! There......................forks on this table.', 'a.jpg', 'are not some ', 'isn’t any', 'are not any', 'are some', 'C', 1, 1, 1, 3, '2023-12-19 14:14:39', '2023-12-19 14:14:39'),
(56, 'I have a test tomorrow, so I......................sit up late tonight to study.', 'a.jpg', 'will have to', 'can have to', 'have', 'have to', 'D', 1, 2, 1, 3, '2023-12-19 14:14:41', '2023-12-19 14:14:41'),
(57, 'An island on which......................is called a deserted island.', NULL, 'no people', 'no peoples live', 'no people live', 'people are living', 'A', 1, 1, 1, 1, '2023-12-19 14:14:44', '2023-12-19 14:14:44'),
(58, 'We wondered who......................to pay for the broken window.', NULL, 'is going ', 'was going', 'have', 'would', 'B', 2, 1, 1, 1, '2023-12-19 14:14:46', '2023-12-19 14:14:46'),
(59, 'Linda......................tie her shoes when she was only 3 years old', NULL, 'knew to', 'knew how to', 'could to', 'may', 'C', 3, 1, 1, 1, '2023-12-19 14:14:48', '2023-12-19 14:14:48'),
(60, '<p>1 + 1 = ?</p>', '', '<p>1</p>', '<p>2</p>', '<p>3</p>', '<p>4</p>', 'D', 1, 1, 1, 1, '2023-12-19 14:14:51', '2023-12-19 14:14:51'),
(61, '1+1=?', 'a.jpg', '1', '2', '3', '4', 'A', 1, 1, 1, 3, '2023-12-19 14:15:59', '2023-12-19 14:15:59'),
(62, 'Tom doesn\'t like dancing, but Mike......................', 'a.jpg', '2', 'did ', 'do', 'doesn\'t', 'B', 1, 2, 1, 3, '2023-12-19 14:16:01', '2023-12-19 14:16:01'),
(65, 'I have a test tomorrow, so I......................sit up late tonight to study.', 'a.jpg', 'will have to', 'can have to', 'have', 'have to', 'C', 1, 2, 1, 3, '2023-12-19 14:16:03', '2023-12-19 14:16:03'),
(66, 'An island on which......................is called a deserted island.', NULL, 'no people', 'no peoples live', 'no people live', 'people are living', 'D', 1, 1, 1, 1, '2023-12-19 14:16:05', '2023-12-19 14:16:05'),
(67, 'We wondered who......................to pay for the broken window.', NULL, 'is going ', 'was going', 'have', 'would', 'A', 2, 1, 1, 1, '2023-12-19 14:16:07', '2023-12-19 14:16:07'),
(68, '<p>Linda......................tie her shoes when she was only 3 years old</p>', NULL, '<p>knew to</p>', '<p>knew how to</p>', '<p>could to</p>', '<p>may</p>', 'B', 3, 1, 1, 1, '2023-12-19 14:16:09', '2023-12-19 14:16:09'),
(69, '<p>1 + 2 =&nbsp;</p>', '', '<p>1</p>', '<p>2</p>', '<p>3</p>', '<p>4</p>', 'C', 1, 1, 1, 1, '2023-12-05 11:44:02', '2023-12-05 11:44:02'),
(70, '<p>1+1=</p>', '', '<p>2</p>', '<p>3</p>', '<p>4</p>', '<p>5</p>', 'C', 1, 2, 4, 4, '2023-12-20 02:19:51', '2023-12-20 02:19:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctbailam`
--

CREATE TABLE `ctbailam` (
  `id` int(11) NOT NULL,
  `id_cauhoi` int(11) NOT NULL,
  `da_chon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `id_de` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ctbailam`
--

INSERT INTO `ctbailam` (`id`, `id_cauhoi`, `da_chon`, `updated_at`, `id_de`, `id_user`, `created_at`) VALUES
(107, 1, 'A', '2019-04-19 05:33:10', 24, 4, '2019-04-19 05:33:10'),
(108, 2, 'B', '2019-04-19 05:33:14', 24, 4, '2019-04-19 05:33:14'),
(109, 4, 'B', '2019-04-19 05:33:18', 24, 4, '2019-04-19 05:33:18'),
(110, 5, 'A', '2019-04-19 05:33:21', 24, 4, '2019-04-19 05:33:21'),
(111, 11, 'B', '2019-04-19 05:33:24', 24, 4, '2019-04-19 05:33:24'),
(112, 41, 'B', '2019-04-19 05:33:30', 24, 4, '2019-04-19 05:33:30'),
(113, 42, 'B', '2019-04-19 05:33:33', 24, 4, '2019-04-19 05:33:33'),
(114, 43, 'D', '2019-04-19 05:33:35', 24, 4, '2019-04-19 05:33:35'),
(115, 45, 'B', '2019-04-19 05:33:37', 24, 4, '2019-04-19 05:33:37'),
(116, 47, 'C', '2019-04-19 05:33:40', 24, 4, '2019-04-19 05:33:40'),
(117, 1, 'A', '2019-04-19 06:47:12', 24, 2, '2019-04-19 06:47:12'),
(118, 2, 'B', '2019-04-19 06:47:16', 24, 2, '2019-04-19 06:47:16'),
(119, 4, 'A', '2019-04-19 06:47:18', 24, 2, '2019-04-19 06:47:18'),
(120, 5, 'B', '2019-04-19 06:47:21', 24, 2, '2019-04-19 06:47:21'),
(121, 41, 'D', '2019-04-19 06:47:24', 24, 2, '2019-04-19 06:47:24'),
(122, 42, 'B', '2019-04-19 06:47:27', 24, 2, '2019-04-19 06:47:27'),
(123, 43, 'D', '2019-04-19 06:47:31', 24, 2, '2019-04-19 06:47:31'),
(124, 45, 'B', '2019-04-19 06:47:34', 24, 2, '2019-04-19 06:47:34'),
(125, 45, 'D', '2019-04-19 06:47:37', 24, 2, '2019-04-19 06:47:37'),
(126, 47, 'B', '2019-04-19 06:47:39', 24, 2, '2019-04-19 06:47:39'),
(292, 1, 'A', '2023-11-13 09:47:26', 1, 2, '2023-11-13 09:47:26'),
(293, 1, 'B', '2023-11-13 13:41:22', 1, 2, '2023-11-13 13:41:22'),
(294, 1, 'A', '2023-11-22 14:14:25', 1, 6, '2023-11-22 14:14:25'),
(295, 5, 'C', '2023-11-22 14:14:34', 1, 6, '2023-11-22 14:14:34'),
(296, 4, 'C', '2023-11-22 14:14:36', 1, 6, '2023-11-22 14:14:36'),
(297, 11, 'B', '2023-11-22 14:14:38', 1, 6, '2023-11-22 14:14:38'),
(298, 1, 'A', '2023-11-22 17:34:40', 2, 6, '2023-11-22 17:34:40'),
(299, 2, 'B', '2023-11-22 17:34:50', 2, 6, '2023-11-22 17:34:50'),
(300, 1, 'A', '2023-11-22 17:35:08', 1, 6, '2023-11-22 17:35:08'),
(301, 2, 'B', '2023-11-22 17:35:10', 1, 6, '2023-11-22 17:35:10'),
(302, 3, 'C', '2023-11-22 17:35:12', 1, 6, '2023-11-22 17:35:12'),
(303, 4, 'D', '2023-11-22 17:35:14', 1, 6, '2023-11-22 17:35:14'),
(304, 1, 'B', '2023-12-02 14:27:46', 2, 2, '2023-12-02 14:27:46'),
(305, 1, 'A', '2023-12-05 12:06:36', 1, 2, '2023-12-05 12:06:36'),
(306, 1, 'B', '2023-12-09 02:47:29', 1, 2, '2023-12-09 02:47:29'),
(307, 1, 'B', '2023-12-17 17:32:16', 1, 8, '2023-12-17 17:32:16'),
(308, 43, 'C', '2023-12-17 17:32:19', 1, 8, '2023-12-17 17:32:19'),
(309, 1, 'A', '2023-12-19 08:21:58', 1, 2, '2023-12-19 08:21:58'),
(310, 2, 'C', '2023-12-19 08:22:01', 1, 2, '2023-12-19 08:22:01'),
(311, 4, 'C', '2023-12-19 08:22:04', 1, 2, '2023-12-19 08:22:04'),
(312, 44, 'C', '2023-12-19 08:22:06', 1, 2, '2023-12-19 08:22:06'),
(313, 1, 'C', '2023-12-19 08:25:36', 1, 8, '2023-12-19 08:25:36'),
(314, 2, 'C', '2023-12-19 08:25:37', 1, 8, '2023-12-19 08:25:37'),
(315, 3, 'A', '2023-12-19 08:25:40', 1, 8, '2023-12-19 08:25:40'),
(316, 4, 'B', '2023-12-19 08:25:41', 1, 8, '2023-12-19 08:25:41'),
(317, 5, 'B', '2023-12-19 08:25:43', 1, 8, '2023-12-19 08:25:43'),
(318, 11, 'B', '2023-12-19 08:25:46', 1, 8, '2023-12-19 08:25:46'),
(319, 40, 'B', '2023-12-19 08:25:48', 1, 8, '2023-12-19 08:25:48'),
(320, 41, 'C', '2023-12-19 08:25:50', 1, 8, '2023-12-19 08:25:50'),
(321, 42, 'C', '2023-12-19 08:25:52', 1, 8, '2023-12-19 08:25:52'),
(322, 43, 'C', '2023-12-19 08:25:55', 1, 8, '2023-12-19 08:25:55'),
(323, 44, 'D', '2023-12-19 08:25:57', 1, 8, '2023-12-19 08:25:57'),
(324, 1, 'B', '2023-12-19 13:28:08', 1, 8, '2023-12-19 13:28:08'),
(325, 2, 'B', '2023-12-19 13:28:13', 1, 8, '2023-12-19 13:28:13'),
(326, 2, 'C', '2023-12-19 13:28:15', 1, 8, '2023-12-19 13:28:15'),
(327, 3, 'B', '2023-12-19 13:28:17', 1, 8, '2023-12-19 13:28:17'),
(328, 4, 'A', '2023-12-19 13:28:19', 1, 8, '2023-12-19 13:28:19'),
(329, 5, 'A', '2023-12-19 13:28:21', 1, 8, '2023-12-19 13:28:21'),
(330, 11, 'B', '2023-12-19 13:28:24', 1, 8, '2023-12-19 13:28:24'),
(331, 1, 'B', '2023-12-19 14:35:39', 1, 8, '2023-12-19 14:35:39'),
(332, 1, 'B', '2023-12-20 02:25:07', 1, 8, '2023-12-20 02:25:07'),
(333, 2, 'B', '2023-12-20 02:25:14', 1, 8, '2023-12-20 02:25:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdethi`
--

CREATE TABLE `ctdethi` (
  `id_de` int(11) NOT NULL,
  `id_cauhoi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ctdethi`
--

INSERT INTO `ctdethi` (`id_de`, `id_cauhoi`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-03-25 15:30:16', '0000-00-00 00:00:00'),
(1, 2, '2019-03-25 15:30:16', '0000-00-00 00:00:00'),
(1, 3, '2019-03-25 15:30:23', '0000-00-00 00:00:00'),
(1, 4, '2019-04-07 01:52:20', '0000-00-00 00:00:00'),
(1, 5, '2019-04-07 01:52:20', '0000-00-00 00:00:00'),
(1, 11, '2019-04-07 01:52:25', '0000-00-00 00:00:00'),
(1, 40, '2019-04-08 14:48:00', '0000-00-00 00:00:00'),
(1, 41, '2019-04-08 14:48:00', '0000-00-00 00:00:00'),
(1, 42, '2019-04-08 14:48:15', '0000-00-00 00:00:00'),
(1, 43, '2019-04-08 14:48:15', '0000-00-00 00:00:00'),
(1, 44, '2019-04-08 14:48:28', '0000-00-00 00:00:00'),
(1, 45, '2019-04-08 14:48:28', '0000-00-00 00:00:00'),
(1, 46, '2019-04-08 14:48:42', '0000-00-00 00:00:00'),
(1, 47, '2019-04-08 14:48:42', '0000-00-00 00:00:00'),
(1, 48, '2019-04-10 08:47:54', '0000-00-00 00:00:00'),
(2, 1, '2019-04-11 12:25:14', '2019-04-11 12:25:14'),
(2, 2, '2019-04-11 12:25:14', '2019-04-11 12:25:14'),
(2, 3, '2019-04-11 12:25:14', '2019-04-11 12:25:14'),
(2, 4, '2019-04-11 12:25:14', '2019-04-11 12:25:14'),
(2, 5, '2019-04-11 12:25:14', '2019-04-11 12:25:14'),
(2, 40, '2019-04-11 12:25:14', '2019-04-11 12:25:14'),
(2, 41, '2019-04-11 12:25:14', '2019-04-11 12:25:14'),
(2, 43, '2019-04-11 12:25:14', '2019-04-11 12:25:14'),
(2, 44, '2019-04-11 12:25:14', '2019-04-11 12:25:14'),
(2, 46, '2019-04-11 12:25:14', '2019-04-11 12:25:14'),
(6, 2, '2019-04-11 12:45:41', '2019-04-11 12:45:41'),
(6, 4, '2019-04-11 12:45:41', '2019-04-11 12:45:41'),
(6, 5, '2019-04-11 12:45:41', '2019-04-11 12:45:41'),
(6, 11, '2019-04-11 12:45:41', '2019-04-11 12:45:41'),
(6, 40, '2019-04-11 12:45:41', '2019-04-11 12:45:41'),
(6, 41, '2019-04-11 12:45:41', '2019-04-11 12:45:41'),
(6, 42, '2019-04-11 12:45:41', '2019-04-11 12:45:41'),
(6, 43, '2019-04-11 12:45:41', '2019-04-11 12:45:41'),
(6, 45, '2019-04-11 12:45:41', '2019-04-11 12:45:41'),
(6, 47, '2019-04-11 12:45:41', '2019-04-11 12:45:41'),
(12, 1, '2019-04-12 04:36:54', '2019-04-12 04:36:54'),
(12, 2, '2019-04-12 04:36:54', '2019-04-12 04:36:54'),
(12, 4, '2019-04-12 04:36:54', '2019-04-12 04:36:54'),
(12, 5, '2019-04-12 04:36:54', '2019-04-12 04:36:54'),
(12, 11, '2019-04-12 04:36:54', '2019-04-12 04:36:54'),
(12, 41, '2019-04-12 04:36:54', '2019-04-12 04:36:54'),
(12, 42, '2019-04-12 04:36:54', '2019-04-12 04:36:54'),
(12, 44, '2019-04-12 04:36:54', '2019-04-12 04:36:54'),
(12, 45, '2019-04-12 04:36:54', '2019-04-12 04:36:54'),
(12, 47, '2019-04-12 04:36:54', '2019-04-12 04:36:54'),
(13, 4, '2019-04-22 04:58:47', '2019-04-22 04:58:47'),
(13, 5, '2019-04-22 04:58:47', '2019-04-22 04:58:47'),
(13, 41, '2019-04-22 04:58:47', '2019-04-22 04:58:47'),
(13, 42, '2019-04-22 04:58:47', '2019-04-22 04:58:47'),
(13, 43, '2019-04-22 04:58:47', '2019-04-22 04:58:47'),
(13, 47, '2019-04-22 04:58:47', '2019-04-22 04:58:47'),
(13, 48, '2019-04-22 04:58:47', '2019-04-22 04:58:47'),
(13, 51, '2019-04-22 04:58:47', '2019-04-22 04:58:47'),
(13, 54, '2019-04-22 04:58:47', '2019-04-22 04:58:47'),
(13, 55, '2019-04-22 04:58:47', '2019-04-22 04:58:47'),
(20, 1, '2019-04-16 11:59:34', '2019-04-16 11:59:34'),
(20, 3, '2019-04-16 11:59:34', '2019-04-16 11:59:34'),
(20, 4, '2019-04-16 11:59:34', '2019-04-16 11:59:34'),
(20, 5, '2019-04-16 11:59:34', '2019-04-16 11:59:34'),
(20, 11, '2019-04-16 11:59:34', '2019-04-16 11:59:34'),
(20, 40, '2019-04-16 11:59:34', '2019-04-16 11:59:34'),
(20, 41, '2019-04-16 11:59:34', '2019-04-16 11:59:34'),
(20, 42, '2019-04-16 11:59:34', '2019-04-16 11:59:34'),
(20, 43, '2019-04-16 11:59:34', '2019-04-16 11:59:34'),
(20, 44, '2019-04-16 11:59:34', '2019-04-16 11:59:34'),
(20, 45, '2019-04-16 11:59:34', '2019-04-16 11:59:34'),
(20, 46, '2019-04-16 11:59:34', '2019-04-16 11:59:34'),
(20, 47, '2019-04-16 11:59:34', '2019-04-16 11:59:34'),
(20, 48, '2019-04-16 11:59:34', '2019-04-16 11:59:34'),
(24, 1, '2019-04-16 12:02:27', '2019-04-16 12:02:27'),
(24, 2, '2019-04-16 12:02:27', '2019-04-16 12:02:27'),
(24, 4, '2019-04-16 12:02:27', '2019-04-16 12:02:27'),
(24, 5, '2019-04-16 12:02:27', '2019-04-16 12:02:27'),
(24, 11, '2019-04-16 12:02:27', '2019-04-16 12:02:27'),
(24, 41, '2019-04-16 12:02:27', '2019-04-16 12:02:27'),
(24, 42, '2019-04-16 12:02:27', '2019-04-16 12:02:27'),
(24, 43, '2019-04-16 12:02:27', '2019-04-16 12:02:27'),
(24, 45, '2019-04-16 12:02:27', '2019-04-16 12:02:27'),
(24, 47, '2019-04-16 12:02:27', '2019-04-16 12:02:27'),
(25, 2, '2019-04-19 06:45:37', '2019-04-19 06:45:37'),
(25, 4, '2019-04-19 06:45:37', '2019-04-19 06:45:37'),
(25, 40, '2019-04-19 06:45:37', '2019-04-19 06:45:37'),
(25, 41, '2019-04-19 06:45:37', '2019-04-19 06:45:37'),
(25, 44, '2019-04-19 06:45:37', '2019-04-19 06:45:37'),
(25, 45, '2019-04-19 06:45:37', '2019-04-19 06:45:37'),
(25, 46, '2019-04-19 06:45:37', '2019-04-19 06:45:37'),
(25, 51, '2019-04-19 06:45:37', '2019-04-19 06:45:37'),
(25, 55, '2019-04-19 06:45:37', '2019-04-19 06:45:37'),
(25, 56, '2019-04-19 06:45:37', '2019-04-19 06:45:37'),
(27, 4, '2019-05-09 06:34:15', '2019-05-09 06:34:15'),
(27, 40, '2019-05-09 06:34:15', '2019-05-09 06:34:15'),
(27, 42, '2019-05-09 06:34:15', '2019-05-09 06:34:15'),
(27, 43, '2019-05-09 06:34:15', '2019-05-09 06:34:15'),
(27, 46, '2019-05-09 06:34:15', '2019-05-09 06:34:15'),
(27, 53, '2019-05-09 06:34:15', '2019-05-09 06:34:15'),
(27, 54, '2019-05-09 06:34:15', '2019-05-09 06:34:15'),
(27, 55, '2019-05-09 06:34:15', '2019-05-09 06:34:15'),
(27, 56, '2019-05-09 06:34:15', '2019-05-09 06:34:15'),
(29, 58, '2023-12-20 02:22:29', '2023-12-20 02:22:29'),
(29, 59, '2023-12-20 02:22:29', '2023-12-20 02:22:29'),
(29, 60, '2023-12-20 02:22:29', '2023-12-20 02:22:29'),
(29, 66, '2023-12-20 02:22:29', '2023-12-20 02:22:29'),
(29, 68, '2023-12-20 02:22:29', '2023-12-20 02:22:29'),
(30, 57, '2023-11-22 14:37:09', '2023-11-22 14:37:09'),
(30, 58, '2023-11-22 14:37:09', '2023-11-22 14:37:09'),
(30, 59, '2023-11-22 14:37:09', '2023-11-22 14:37:09'),
(30, 60, '2023-11-22 14:37:09', '2023-11-22 14:37:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dethi`
--

CREATE TABLE `dethi` (
  `id_de` int(11) NOT NULL,
  `id_ky` int(11) NOT NULL,
  `id_khoi` int(11) NOT NULL,
  `id_mh` int(11) NOT NULL,
  `tendethi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thoigianthi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngaythi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `socau` int(11) NOT NULL,
  `id_gv` int(11) NOT NULL,
  `trangthai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dethi`
--

INSERT INTO `dethi` (`id_de`, `id_ky`, `id_khoi`, `id_mh`, `tendethi`, `thoigianthi`, `ngaythi`, `socau`, `id_gv`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 3, 'Đề thi Ngoại Ngữ 1', '15', '2023-12-23', 15, 1, 'Thi thử', '2023-12-16 09:04:46', '2023-12-16 09:04:46'),
(2, 4, 1, 1, 'Đề thi Toán', '45', '2025-12-16', 35, 1, 'Thi thử', '2023-12-16 09:07:34', '2023-12-16 09:07:34'),
(3, 4, 1, 2, 'Đề thi Vật Lý THPT', '45', '2019-10-20', 50, 1, 'Thi thử', '2023-12-16 09:07:04', '2023-12-16 09:07:04'),
(4, 4, 1, 4, 'Đề thi Hoá học', '45', '2019-10-20', 50, 1, 'Thi thử', '2023-12-16 09:06:46', '2023-12-16 09:06:46'),
(5, 4, 1, 5, 'Thi THPT Quốc gia Sinh học', '45', '2019-10-20', 50, 1, 'Thi thử', '2023-12-16 09:06:28', '2023-12-16 09:06:28'),
(6, 4, 1, 10, 'Đề thi Địa lý THPT Quốc gia', '50', '2023-12-23', 50, 1, 'Thi thử', '2023-12-16 09:04:09', '2023-12-16 09:04:09'),
(9, 4, 1, 10, 'ĐỀ THI ĐỊA LÝ THPT QUỐC GIA', '45', '2019-10-20', 50, 1, 'Thi thử', '2023-12-02 14:23:14', '2023-12-02 14:23:14'),
(10, 5, 1, 1, '', '45', '2019-10-20', 50, 1, 'Thi thử', '2019-04-16 10:39:47', '0000-00-00 00:00:00'),
(11, 5, 1, 2, '', '45', '2019-10-20', 50, 1, 'Thi thử', '2019-04-16 10:39:47', '0000-00-00 00:00:00'),
(14, 5, 1, 10, '', '45', '2019-10-20', 50, 1, 'Thi thử', '2019-04-16 10:39:47', '0000-00-00 00:00:00'),
(15, 2, 1, 5, 'Thi THPT Quốc gia Sinh học', '45', '2023-12-26', 50, 1, 'Thi thử', '2023-12-16 09:06:03', '2023-12-16 09:06:03'),
(18, 1, 1, 1, '', '23', '2019-10-20', 23, 1, 'Thi thử', '2019-04-16 10:39:47', '2019-04-02 08:26:15'),
(20, 5, 1, 3, '', '45', '2019-10-20', 50, 2, 'Thi thử', '2019-04-22 01:45:47', '2019-04-16 11:53:07'),
(21, 1, 1, 1, '', '13', '2019-10-20', 2, 1, 'Thi thử', '2019-04-22 01:45:47', '2019-04-16 11:04:17'),
(23, 1, 1, 1, 'Đề thi Toán THPT Quốc gia', '11', '2019-12-12', 23, 1, 'Thi thử', '2023-12-16 09:05:10', '2023-12-16 09:05:10'),
(24, 1, 1, 3, 'ĐỀ THI NGOẠI NGỮ 10', '15', '2019-10-20', 15, 1, 'Thi thử', '2023-12-02 14:23:33', '2023-12-02 14:23:33'),
(25, 1, 1, 3, 'Đề thi Ngoại Ngữ 1', '10', '2019-10-20', 10, 1, 'Thi thử', '2023-12-02 14:22:40', '2023-12-02 14:22:40'),
(27, 1, 1, 3, 'Đề thi Tiếng Anh 15 phút', '15', '2019-04-02', 9, 1, 'Thi thử', '2023-12-02 14:22:22', '2023-12-02 14:22:22'),
(28, 1, 1, 1, 'ĐỀ THI ĐỊA LÝ', '15', '2023-11-14', 10, 1, 'Thi thử', '2023-12-04 09:12:59', '2023-12-04 09:12:59'),
(29, 1, 1, 1, 'Đề thi Toán', '15', '2023-11-23', 5, 1, 'Thi thử', '2023-12-20 02:22:01', '2023-12-20 02:22:01'),
(30, 4, 1, 1, 'Đề thi Toán THPT Quốc gia', '30', '2023-11-30', 4, 1, 'Thi chính thức', '2023-12-16 09:02:25', '2023-12-16 09:02:25'),
(31, 1, 2, 1, 'Test 20/12', '15', '2023-12-21', 4, 1, 'Thi thử', '2023-12-20 02:21:05', '2023-12-20 02:21:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `id_gv` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `id_mh` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`id_gv`, `id`, `hoten`, `hinhanh`, `ngaysinh`, `gioitinh`, `diachi`, `sdt`, `id_mh`, `created_at`, `updated_at`) VALUES
(1, 3, 'Vũ Xuân Thắng', 'face4.png', '', '', 'Yên Mỹ - Hưng Yên', '0967978353', 8, '2019-04-18 15:13:46', '0000-00-00 00:00:00'),
(2, 2, 'Trần Thu Hương', 'face5.png', '', '', 'Khoái Châu - Hưng Yên', '0967978353', 3, '2019-04-18 15:13:46', '0000-00-00 00:00:00'),
(3, 4, 'Trần Thu Hà', 'face6.png', '', '', 'Hưng Yên', '967978353', 1, '2019-04-17 07:27:19', '2019-04-08 07:58:34'),
(4, 5, 'Trần Ngọc Tuấn', 'face7.png', '', '', 'Hưng Yên', '967978353', 1, '2019-04-17 07:27:19', '2019-04-08 07:58:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocsinh`
--

CREATE TABLE `hocsinh` (
  `id_hs` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocsinh`
--

INSERT INTO `hocsinh` (`id_hs`, `id`, `hoten`, `hinhanh`, `ngaysinh`, `diachi`, `gioitinh`, `sdt`, `created_at`, `updated_at`) VALUES
(2, 2, 'Lê Thị Ngọc Thảo', '', '07/02/2002', 'Khoái Châu - Hưng Yên', 'Nữ', '0967978353', '2023-12-19 14:09:27', '2023-12-19 14:09:27'),
(8, 8, 'Phạm Thị Hồng Quyên', 'tRBj_67d1463201cc03b34cf4a4e91ff9be67.jpg', '07/02/2002', 'Hà Nội', 'Nữ', '0969057145', '2023-12-19 07:35:53', '2023-12-19 07:35:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ketqua`
--

CREATE TABLE `ketqua` (
  `id_kq` int(11) NOT NULL,
  `id_de` int(11) NOT NULL,
  `id_hs` int(11) NOT NULL,
  `socaudung` int(11) NOT NULL,
  `diem` int(11) NOT NULL,
  `xeploai` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `id_mh` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ketqua`
--

INSERT INTO `ketqua` (`id_kq`, `id_de`, `id_hs`, `socaudung`, `diem`, `xeploai`, `id_mh`, `created_at`, `updated_at`) VALUES
(106, 1, 2, 0, 0, 'Yếu', 3, '2023-11-13 13:41:24', '2023-11-13 13:41:24'),
(107, 1, 6, 2, 1, 'Yếu', 3, '2023-11-22 14:14:39', '2023-11-22 14:14:39'),
(108, 1, 6, 4, 3, 'Yếu', 3, '2023-11-22 17:35:15', '2023-11-22 17:35:15'),
(109, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 12:30:09', '2023-11-30 12:30:09'),
(110, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 12:30:32', '2023-11-30 12:30:32'),
(111, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 12:30:43', '2023-11-30 12:30:43'),
(112, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 12:31:58', '2023-11-30 12:31:58'),
(113, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 12:33:03', '2023-11-30 12:33:03'),
(114, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 12:34:00', '2023-11-30 12:34:00'),
(115, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 12:35:12', '2023-11-30 12:35:12'),
(116, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 12:35:32', '2023-11-30 12:35:32'),
(117, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 12:35:51', '2023-11-30 12:35:51'),
(118, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 12:36:14', '2023-11-30 12:36:14'),
(119, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 12:36:33', '2023-11-30 12:36:33'),
(120, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 12:36:45', '2023-11-30 12:36:45'),
(121, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 12:37:09', '2023-11-30 12:37:09'),
(122, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:42:15', '2023-11-30 13:42:15'),
(123, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:42:49', '2023-11-30 13:42:49'),
(124, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:42:54', '2023-11-30 13:42:54'),
(125, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:43:06', '2023-11-30 13:43:06'),
(126, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:43:14', '2023-11-30 13:43:14'),
(127, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:43:53', '2023-11-30 13:43:53'),
(128, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:43:56', '2023-11-30 13:43:56'),
(129, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:44:08', '2023-11-30 13:44:08'),
(130, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:44:12', '2023-11-30 13:44:12'),
(131, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:44:18', '2023-11-30 13:44:18'),
(132, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:44:30', '2023-11-30 13:44:30'),
(133, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:44:58', '2023-11-30 13:44:58'),
(134, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:45:41', '2023-11-30 13:45:41'),
(135, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:45:52', '2023-11-30 13:45:52'),
(136, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:46:08', '2023-11-30 13:46:08'),
(137, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:47:33', '2023-11-30 13:47:33'),
(138, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:48:09', '2023-11-30 13:48:09'),
(139, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:48:53', '2023-11-30 13:48:53'),
(140, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:49:39', '2023-11-30 13:49:39'),
(141, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:50:34', '2023-11-30 13:50:34'),
(142, 1, 2, 0, 0, 'Yếu', 3, '2023-11-30 13:50:51', '2023-11-30 13:50:51'),
(143, 1, 2, 0, 0, 'Yếu', 3, '2023-12-02 14:29:20', '2023-12-02 14:29:20'),
(144, 1, 2, 0, 0, 'Yếu', 3, '2023-12-02 14:33:36', '2023-12-02 14:33:36'),
(145, 6, 2, 40, 8, 'Giỏi', 10, '2023-12-02 14:36:24', '2023-12-02 14:36:24'),
(146, 1, 2, 0, 0, 'Yếu', 3, '2023-12-09 02:47:30', '2023-12-09 02:47:30'),
(147, 1, 2, 0, 0, 'Yếu', 3, '2023-12-16 04:41:32', '2023-12-16 04:41:32'),
(148, 1, 2, 0, 0, 'Yếu', 3, '2023-12-16 04:42:15', '2023-12-16 04:42:15'),
(149, 1, 2, 0, 0, 'Yếu', 3, '2023-12-16 04:42:32', '2023-12-16 04:42:32'),
(150, 1, 2, 0, 0, 'Yếu', 3, '2023-12-16 04:42:33', '2023-12-16 04:42:33'),
(151, 1, 2, 0, 0, 'Yếu', 3, '2023-12-16 04:43:22', '2023-12-16 04:43:22'),
(152, 1, 2, 0, 0, 'Yếu', 3, '2023-12-16 04:43:24', '2023-12-16 04:43:24'),
(153, 1, 2, 0, 0, 'Yếu', 3, '2023-12-16 04:43:31', '2023-12-16 04:43:31'),
(154, 1, 2, 0, 0, 'Yếu', 3, '2023-12-16 04:46:00', '2023-12-16 04:46:00'),
(155, 1, 2, 0, 0, 'Yếu', 3, '2023-12-16 04:46:20', '2023-12-16 04:46:20'),
(156, 1, 2, 0, 0, 'Yếu', 3, '2023-12-16 04:46:21', '2023-12-16 04:46:21'),
(157, 1, 2, 0, 0, 'Yếu', 3, '2023-12-16 04:46:44', '2023-12-16 04:46:44'),
(158, 1, 2, 0, 0, 'Yếu', 3, '2023-12-16 04:46:57', '2023-12-16 04:46:57'),
(159, 1, 2, 0, 0, 'Yếu', 3, '2023-12-16 04:47:11', '2023-12-16 04:47:11'),
(160, 1, 8, 0, 0, 'Yếu', 3, '2023-12-17 17:32:20', '2023-12-17 17:32:20'),
(161, 1, 2, 1, 1, 'Yếu', 3, '2023-12-19 08:22:07', '2023-12-19 08:22:07'),
(162, 1, 8, 0, 0, 'Yếu', 3, '2023-12-19 08:25:57', '2023-12-19 08:25:57'),
(163, 1, 8, 0, 0, 'Yếu', 3, '2023-12-19 13:28:25', '2023-12-19 13:28:25'),
(164, 1, 8, 1, 1, 'Yếu', 3, '2023-12-19 14:35:39', '2023-12-19 14:35:39'),
(165, 1, 8, 1, 1, 'Yếu', 3, '2023-12-19 14:35:52', '2023-12-19 14:35:52'),
(166, 1, 8, 2, 1, 'Yếu', 3, '2023-12-20 02:25:15', '2023-12-20 02:25:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoi`
--

CREATE TABLE `khoi` (
  `id_khoi` int(11) NOT NULL,
  `tenkhoi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoi`
--

INSERT INTO `khoi` (`id_khoi`, `tenkhoi`, `created_at`, `updated_at`) VALUES
(1, 'Khối 10', '2019-03-15 04:09:34', '0000-00-00 00:00:00'),
(2, 'Khối 11', '2019-03-15 04:09:34', '0000-00-00 00:00:00'),
(4, 'Khối 12', '2019-03-15 04:09:34', '0000-00-00 00:00:00'),
(7, 'khoi 13', '2019-04-09 06:43:19', '2019-04-09 06:43:19'),
(8, 'khoi 14', '2019-04-09 06:43:19', '2019-04-09 06:43:19'),
(9, 'khoi 15', '2019-04-09 06:43:28', '2019-04-09 06:43:28'),
(10, 'khoi 16', '2019-04-09 06:43:28', '2019-04-09 06:43:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kythi`
--

CREATE TABLE `kythi` (
  `id_ky` int(11) NOT NULL,
  `tenky` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kythi`
--

INSERT INTO `kythi` (`id_ky`, `tenky`, `created_at`, `updated_at`) VALUES
(1, '15 phút', '2019-03-15 04:10:05', '0000-00-00 00:00:00'),
(2, '45 phút', '2019-03-15 04:10:05', '0000-00-00 00:00:00'),
(3, 'HS Giỏi', '2019-03-15 04:10:05', '0000-00-00 00:00:00'),
(4, 'THPT Quốc Gia', '2019-04-03 05:53:15', '0000-00-00 00:00:00'),
(5, 'KT Học Kỳ', '2019-04-01 16:02:52', '2019-04-01 15:47:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaicauhoi`
--

CREATE TABLE `loaicauhoi` (
  `id_loaich` int(11) NOT NULL,
  `tenloai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaicauhoi`
--

INSERT INTO `loaicauhoi` (`id_loaich`, `tenloai`, `created_at`, `updated_at`) VALUES
(1, 'Một Lựa Chọn', '2019-03-16 11:23:13', '2019-03-16 11:23:13'),
(2, 'Nhiều Lựa Chọn', '2019-03-15 04:10:28', '0000-00-00 00:00:00'),
(3, 'Điền Khuyết', '2019-04-04 10:35:17', '0000-00-00 00:00:00'),
(4, 'True/False', '2019-04-04 10:35:17', '2019-03-16 11:28:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monthi`
--

CREATE TABLE `monthi` (
  `id_mh` int(11) NOT NULL,
  `tenmh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `monthi`
--

INSERT INTO `monthi` (`id_mh`, `tenmh`, `hinhanh`, `created_at`, `updated_at`) VALUES
(1, 'Toán', 'toanhoc.jfif', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(2, 'Vật Lý', 'vatly.jpg', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(3, 'Ngoại Ngữ', 'ngoaingu.jpg', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(4, 'Hóa Học', 'hoah.png', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(5, 'Sinh Học', 'sinhhoc.jpg', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(6, 'Ngữ Văn', 'ngu-van.jpg', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(7, 'Công Nghệ', 'congnghe.png', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(8, 'Tin Học', 'tinhoc.png', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(9, 'Lịch Sử', 'lichsu.jpg', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(10, 'Địa Lý', 'dialy.jfif', '2019-04-01 13:44:40', '0000-00-00 00:00:00'),
(11, 'GDCD', '', '2019-04-17 10:11:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mucdo`
--

CREATE TABLE `mucdo` (
  `tenmd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_mucdo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mucdo`
--

INSERT INTO `mucdo` (`tenmd`, `id_mucdo`, `created_at`, `updated_at`) VALUES
('Nhận biết', 1, '2019-04-06 07:47:45', '0000-00-00 00:00:00'),
('Thông hiểu', 2, '2019-04-06 08:32:26', '0000-00-00 00:00:00'),
('Vận dụng', 3, '2019-04-06 08:32:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thaoluandethi`
--

CREATE TABLE `thaoluandethi` (
  `id_thaoluan` int(11) NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `id_de` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thaoluandethi`
--

INSERT INTO `thaoluandethi` (`id_thaoluan`, `noidung`, `id`, `id_de`, `created_at`, `updated_at`) VALUES
(3, 'Mình thấy rất tuyệt.Hiệu quả cho việc ôn thi, tính điểm nhanh và chính xác. Cảm ơn nhiều!', 2, 2, '2019-04-05 15:00:16', '2019-04-05 15:00:16'),
(4, 'Mình chỉ làm đc 30 câu thoi.', 2, 2, '2019-04-05 15:00:31', '2019-04-05 15:00:31'),
(5, 'rất bổ ích', 2, 1, '2019-04-11 06:20:55', '2019-04-11 06:20:55'),
(6, 'hello', 2, 1, '2023-11-30 12:27:00', '2023-11-30 12:27:00'),
(7, 'hello', 2, 9, '2023-12-02 14:24:42', '2023-12-02 14:24:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doituong` int(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `doituong`, `created_at`, `updated_at`) VALUES
(2, 'Quyên', 'lethingocthaohy@gmail.com', '$2y$10$p/hAjfvvHabMXR1wG6X7Uu1fsTTBIaiRLrIX2z4RPYnxLcyEeFWrq', 0, NULL, NULL),
(3, 'Vũ Xuân Thắng', 'vuxuanthang@gmail.com', '$2y$10$IwOW0k8y/O4eX2tu.UDP3.xQkVoPy4OT0ZLpjStkRwGtrcQOmykjG', 1, NULL, NULL),
(4, 'Nguyễn Văn Tú', 'admin@gmail.com', '$2y$10$/Kb/vawvR5wKy0AkgBSzOO6YO4IHRt7MbOQ.jJ2FSNW4PqMeuxIja', 2, NULL, NULL),
(5, 'LDD', 'ledinhdat710@gmail.com', '$2y$10$iruFi6Ja7irh2hguYnih0uPld4fkw1czv7XCsW3UAEz3gVWl1o9ZO', 1, '2023-11-16 08:25:24', '2023-11-16 08:25:24'),
(8, 'Phạm Thị Hồng Quyên', 'phamquyendh002@gmail.com', '$2y$10$bVLSdjMAwhaFC4N5PBfFVOMYEgT1yT1ryTuVBddNussyqK91V4K0q', 0, '2023-12-17 17:11:59', '2023-12-17 17:11:59');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`id_cauhoi`);

--
-- Chỉ mục cho bảng `ctbailam`
--
ALTER TABLE `ctbailam`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ctdethi`
--
ALTER TABLE `ctdethi`
  ADD PRIMARY KEY (`id_de`,`id_cauhoi`);

--
-- Chỉ mục cho bảng `dethi`
--
ALTER TABLE `dethi`
  ADD PRIMARY KEY (`id_de`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`id_gv`);

--
-- Chỉ mục cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`id_hs`);

--
-- Chỉ mục cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  ADD PRIMARY KEY (`id_kq`);

--
-- Chỉ mục cho bảng `khoi`
--
ALTER TABLE `khoi`
  ADD PRIMARY KEY (`id_khoi`);

--
-- Chỉ mục cho bảng `kythi`
--
ALTER TABLE `kythi`
  ADD PRIMARY KEY (`id_ky`);

--
-- Chỉ mục cho bảng `loaicauhoi`
--
ALTER TABLE `loaicauhoi`
  ADD PRIMARY KEY (`id_loaich`);

--
-- Chỉ mục cho bảng `monthi`
--
ALTER TABLE `monthi`
  ADD PRIMARY KEY (`id_mh`);

--
-- Chỉ mục cho bảng `mucdo`
--
ALTER TABLE `mucdo`
  ADD PRIMARY KEY (`id_mucdo`);

--
-- Chỉ mục cho bảng `thaoluandethi`
--
ALTER TABLE `thaoluandethi`
  ADD PRIMARY KEY (`id_thaoluan`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `id_cauhoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `ctbailam`
--
ALTER TABLE `ctbailam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT cho bảng `ctdethi`
--
ALTER TABLE `ctdethi`
  MODIFY `id_de` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `dethi`
--
ALTER TABLE `dethi`
  MODIFY `id_de` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `id_gv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  MODIFY `id_hs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  MODIFY `id_kq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT cho bảng `khoi`
--
ALTER TABLE `khoi`
  MODIFY `id_khoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `kythi`
--
ALTER TABLE `kythi`
  MODIFY `id_ky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `loaicauhoi`
--
ALTER TABLE `loaicauhoi`
  MODIFY `id_loaich` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `monthi`
--
ALTER TABLE `monthi`
  MODIFY `id_mh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `mucdo`
--
ALTER TABLE `mucdo`
  MODIFY `id_mucdo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `thaoluandethi`
--
ALTER TABLE `thaoluandethi`
  MODIFY `id_thaoluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
