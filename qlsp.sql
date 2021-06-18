-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 18, 2021 at 03:32 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `chuyenmuc`
--

CREATE TABLE `chuyenmuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idlinhvuc` bigint(20) NOT NULL,
  `tenchuyenmuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chuyenmuc`
--

INSERT INTO `chuyenmuc` (`id`, `idlinhvuc`, `tenchuyenmuc`, `created_at`, `updated_at`) VALUES
(1, 2, 'dsd', '2021-04-23 07:09:02', '2021-06-17 14:47:58'),
(2, 1, 'Sức khỏe gia đình', '2021-04-23 07:09:39', '2021-04-23 07:09:39'),
(3, 2, 'Thiên văn', '2021-06-06 15:29:34', '2021-06-06 15:29:34'),
(4, 1, 'An toàn - An ninh mạng', '2021-06-06 15:29:56', '2021-06-06 15:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `congty`
--

CREATE TABLE `congty` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idso` bigint(20) NOT NULL,
  `idlinhvuc` bigint(20) NOT NULL,
  `tencongty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachicongty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailcongty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoaicongty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faxcongty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webcongty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdkkdcongty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaycapdkkdcongty` date NOT NULL,
  `noicapdkkdcongty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masothuecongty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaythanhlapcongty` date NOT NULL,
  `subdomain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `congty`
--

INSERT INTO `congty` (`id`, `idso`, `idlinhvuc`, `tencongty`, `diachicongty`, `emailcongty`, `dienthoaicongty`, `faxcongty`, `webcongty`, `sdkkdcongty`, `ngaycapdkkdcongty`, `noicapdkkdcongty`, `masothuecongty`, `ngaythanhlapcongty`, `subdomain`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Tập đoàn VinGroup', 'Bình Tân, Vĩnh Long', 'vingroup@etc.vn', '1234567890', '1234567890', 'http://www.vingroup.etc.vn', '258147963', '2021-04-06', 'Vĩnh Long', '100225566', '2021-04-28', 'vingroup', NULL, '2021-05-28 17:16:20'),
(2, 2, 2, 'Công ty Hải Sản Miền Trung', 'Miền Trung', 'ctyhaisan@gmail.com', NULL, NULL, 'https://www.ctyhaisan.vn', '123123123', '2021-06-25', 'Phú Yên', '12123565', '2021-05-18', NULL, NULL, '2021-06-17 14:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `danhgia`
--

CREATE TABLE `danhgia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idtaikhoan` bigint(20) NOT NULL,
  `idsanpham` bigint(20) NOT NULL,
  `thoigiandanhgia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `saodanhgia` int(11) NOT NULL,
  `noidungdanhgia` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthaidanhgia` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giaidoan`
--

CREATE TABLE `giaidoan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idsanpham` bigint(20) NOT NULL,
  `idtaikhoan` bigint(20) NOT NULL,
  `tengiaidoan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoigiantao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `motagiaidoan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giaidoan`
--

INSERT INTO `giaidoan` (`id`, `idsanpham`, `idtaikhoan`, `tengiaidoan`, `thoigiantao`, `motagiaidoan`, `created_at`, `updated_at`) VALUES
(1, 24, 2, 'Giai đoạn 1', '2021-05-17 13:16:16', 'Giai đoạn tiền xử lý', '2021-05-17 13:16:16', '2021-05-17 13:16:16'),
(3, 24, 2, 'Giai đoạn 2', '2021-05-18 08:12:52', 'Giai đoạn quan trọng', '2021-05-18 08:12:52', '2021-05-18 08:12:52'),
(4, 1, 1, 'ádâdsa', '2021-06-17 07:06:00', 'đasađâsd', '2021-06-17 07:06:00', '2021-06-17 07:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh`
--

CREATE TABLE `hinhanh` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idsanpham` bigint(20) DEFAULT NULL,
  `iddanhgia` bigint(20) DEFAULT NULL,
  `dulieuhinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hinhanh`
--

INSERT INTO `hinhanh` (`id`, `idsanpham`, `iddanhgia`, `dulieuhinh`, `created_at`, `updated_at`) VALUES
(6, 21, NULL, '/storage/product/detail-images/1/nZ8rzoFAnEzeyfl77ffk.jpg', '2021-04-27 09:36:04', '2021-04-27 09:36:04'),
(7, 22, NULL, '/storage/product/detail-images/1/RhnZvJ98y0UTsJSEAVAk.jpg', '2021-04-27 09:50:20', '2021-04-27 09:50:20'),
(8, 23, NULL, '/storage/product/detail-images/1/FHAtjcwSxc9e9VUj7MOv.jpg', '2021-04-27 10:05:54', '2021-04-27 10:05:54'),
(13, 25, NULL, '/storage/product/detail-images/2/67gxJIFfDk7Rv5exdt2o.jpg', '2021-05-18 16:02:42', '2021-05-18 16:02:42'),
(14, 25, NULL, '/storage/product/detail-images/2/3AE3KSfhwXxN3cBCaLlJ.jpg', '2021-05-18 16:02:42', '2021-05-18 16:02:42'),
(19, 29, NULL, '/storage/product/detail-images/2/MJtMIXABLqYAbkcN3YFd.jpg', '2021-05-18 16:42:17', '2021-05-18 16:42:17'),
(20, 29, NULL, '/storage/product/detail-images/2/UlzvLH52ZNxJ47tH1rNA.jpg', '2021-05-18 16:42:17', '2021-05-18 16:42:17'),
(22, 2, NULL, '/storage/product/detail-images/2/uLaBNVSrhzCWC14diaiI.jpg', '2021-06-17 16:12:22', '2021-06-17 16:12:22'),
(23, 2, NULL, '/storage/product/detail-images/2/FGQ1tKGGXbo19aEbZzPs.jpg', '2021-06-17 16:12:22', '2021-06-17 16:12:22'),
(24, 2, NULL, '/storage/product/detail-images/2/2uM2clxZCeAUQrQisw1S.jpg', '2021-06-17 16:12:22', '2021-06-17 16:12:22'),
(25, 24, NULL, '/storage/product/detail-images/2/kCWt5i8eNLPNq8H7ZxKT.jpg', '2021-06-17 16:30:35', '2021-06-17 16:30:35'),
(26, 24, NULL, '/storage/product/detail-images/2/GhtVE9yx9ifV9cMws6xt.jpg', '2021-06-17 16:30:35', '2021-06-17 16:30:35'),
(27, 24, NULL, '/storage/product/detail-images/2/tk81ISqMERj94VwLhh3X.jpg', '2021-06-17 16:30:35', '2021-06-17 16:30:35'),
(28, 27, NULL, '/storage/product/detail-images/2/IOUW4iIYuZC7pLTMerbQ.jpg', '2021-06-17 16:31:06', '2021-06-17 16:31:06'),
(29, 27, NULL, '/storage/product/detail-images/2/XgvBjkGGV1pXBR8Yt2ny.jpg', '2021-06-17 16:31:06', '2021-06-17 16:31:06'),
(30, 28, NULL, '/storage/product/detail-images/2/qQfOFqkPY6eZqj6pDSSM.jpg', '2021-06-17 16:31:40', '2021-06-17 16:31:40'),
(31, 28, NULL, '/storage/product/detail-images/2/EQjw2ux9a4hdox4zonk9.jpg', '2021-06-17 16:31:40', '2021-06-17 16:31:40'),
(32, 28, NULL, '/storage/product/detail-images/2/uBOGr2SZur9fBp4RuO0b.jpg', '2021-06-17 16:31:40', '2021-06-17 16:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanhquangcao`
--

CREATE TABLE `hinhanhquangcao` (
  `id` bigint(20) NOT NULL,
  `idquangcao` bigint(20) NOT NULL,
  `dulieuhinhanhquangcao` varchar(255) NOT NULL,
  `loaibanner` smallint(6) NOT NULL DEFAULT '0' COMMENT '0-dọc; 1-ngang; 2-vuông',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hinhanhquangcao`
--

INSERT INTO `hinhanhquangcao` (`id`, `idquangcao`, `dulieuhinhanhquangcao`, `loaibanner`, `created_at`, `updated_at`) VALUES
(21, 21, '/storage/advertise/image/1/OVSV3MDSp2UrlP0YTHCT.jpg', 2, '2021-06-15 09:47:17', '2021-06-15 09:47:17'),
(22, 21, '/storage/advertise/image/1/VQDjknFZI9EyPvVo47mT.jpg', 2, '2021-06-15 09:47:17', '2021-06-15 09:47:17'),
(23, 21, '/storage/advertise/image/1/JzBlSn9hNcA7OxeShiB2.jpg', 2, '2021-06-15 09:47:17', '2021-06-15 09:47:17'),
(24, 22, '/storage/advertise/image/1/whlyRY4VknQ0MjqhoU1G.jpg', 2, '2021-06-16 16:48:40', '2021-06-16 16:48:40'),
(25, 22, '/storage/advertise/image/1/tvlxzZ7ACy1Dabjuxj8v.jpg', 2, '2021-06-16 16:48:40', '2021-06-16 16:48:40'),
(26, 22, '/storage/advertise/image/1/j1M780GvKLouuEPMwNHc.jpg', 2, '2021-06-16 16:48:40', '2021-06-16 16:48:40'),
(27, 23, '/storage/advertise/image/1/XJrnbxvKy9kVZsaDDlFI.jpg', 2, '2021-06-16 16:49:04', '2021-06-16 16:49:04'),
(28, 23, '/storage/advertise/image/1/u11HV3eDQxDf5WF2m9Wc.jpg', 2, '2021-06-16 16:49:04', '2021-06-16 16:49:04'),
(29, 23, '/storage/advertise/image/1/OccY2HvMCeTTUadFtePf.jpg', 2, '2021-06-16 16:49:04', '2021-06-16 16:49:04'),
(30, 24, '/storage/advertise/image/1/Gw78haUZuG67cnXbFVft.jpg', 0, '2021-06-16 16:49:21', '2021-06-16 16:49:21'),
(34, 25, '/storage/advertise/image/1/JR1H9uoDfvCdgmgYzs5I.jpg', 2, '2021-06-17 04:06:58', '2021-06-17 04:06:58'),
(35, 26, '/storage/advertise/image/1/NFqO8dzZpyIYaYuaXSuK.jpg', 0, '2021-06-17 04:19:58', '2021-06-17 04:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `kho`
--

CREATE TABLE `kho` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idcongty` bigint(20) NOT NULL,
  `idtaikhoan` bigint(20) NOT NULL,
  `tenkho` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachikho` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taitrongkho` int(11) NOT NULL,
  `dientichkho` int(11) NOT NULL,
  `sonhanvienkho` int(11) NOT NULL,
  `ghichukho` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kho`
--

INSERT INTO `kho` (`id`, `idcongty`, `idtaikhoan`, `tenkho`, `diachikho`, `taitrongkho`, `dientichkho`, `sonhanvienkho`, `ghichukho`, `created_at`, `updated_at`) VALUES
(1, 1, 28, 'Kho hàng 2', 'Tân Quới, Bình Tân, Vĩnh Long', 1000, 1000, 20, 'Lưu trữ hàng hóa có giá trị', '2021-04-25 04:18:18', '2021-04-25 04:26:32'),
(2, 2, 2, 'Kho hàng test', 'Cần Thơ2', 13333, 1232, 22, 'Kho hàng test', '2021-04-28 04:51:43', '2021-05-28 16:00:58'),
(3, 2, 2, 'sdasd', 'xC', 54, 42, 55, 'ac', '2021-04-28 08:31:18', '2021-04-28 08:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `lichsutintuc`
--

CREATE TABLE `lichsutintuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idtintuc` bigint(20) DEFAULT NULL,
  `idvideotintuc` bigint(20) DEFAULT NULL,
  `idtaikhoan` bigint(20) NOT NULL,
  `lydogo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoigian` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lichsutintuc`
--

INSERT INTO `lichsutintuc` (`id`, `idtintuc`, `idvideotintuc`, `idtaikhoan`, `lydogo`, `thoigian`, `created_at`, `updated_at`) VALUES
(1, 12, NULL, 0, 'gfgdgfg', '2021-05-28 23:59:42', NULL, NULL),
(2, 11, NULL, 0, '23232', '2021-05-29 00:00:42', NULL, NULL),
(3, 12, NULL, 0, 'wewewew', '2021-05-29 09:10:32', NULL, NULL),
(4, 12, NULL, 0, '123', '2021-05-30 09:15:52', NULL, NULL),
(5, 12, NULL, 0, 'Sai sot thông tin', '2021-06-01 20:23:46', NULL, NULL),
(6, 13, NULL, 0, 'Sai sot thông tin', '2021-06-01 20:49:24', NULL, NULL),
(7, 13, NULL, 0, 'sa', '2021-06-01 20:49:36', NULL, NULL),
(8, 13, NULL, 0, 'Sai sot thông tin', '2021-06-01 20:53:51', NULL, NULL),
(9, 4, NULL, 0, 'gdfg', '2021-06-01 20:56:50', NULL, NULL),
(10, 13, NULL, 0, 'Sai sot thông tin', '2021-06-02 20:54:27', NULL, NULL),
(11, 13, NULL, 28, 'Sai sot thông tin', '2021-06-02 21:03:44', NULL, NULL),
(12, 3, NULL, 28, 'Sai sot thông tin', '2021-06-02 21:07:13', NULL, NULL),
(13, 14, NULL, 28, 'dá', '2021-06-02 21:53:59', NULL, NULL),
(14, 14, NULL, 2, 'Sai sot thông tin', '2021-06-02 21:55:28', NULL, NULL),
(15, 14, NULL, 2, 'dsafacd', '2021-06-02 21:55:47', NULL, NULL),
(16, 14, NULL, 2, 'Sai sot thông tin', '2021-06-03 21:42:25', NULL, NULL),
(17, 12, NULL, 2, 'dá', '2021-06-03 22:47:54', NULL, NULL),
(18, 14, NULL, 2, 'gd', '2021-06-04 21:56:38', NULL, NULL),
(19, 14, NULL, 2, 'da', '2021-06-04 22:02:38', NULL, NULL),
(20, 13, NULL, 2, 'das', '2021-06-04 22:03:00', NULL, NULL),
(21, 12, NULL, 2, 'asd', '2021-06-04 22:03:31', NULL, NULL),
(22, 13, NULL, 2, 'Sai sot thông tin', '2021-06-07 23:12:12', NULL, NULL),
(23, 13, NULL, 2, 'dá', '2021-06-07 23:13:10', NULL, NULL),
(24, 13, NULL, 2, 'sai hinh', '2021-06-09 15:00:44', NULL, NULL),
(25, 13, NULL, 2, 'dsa', '2021-06-09 15:01:14', NULL, NULL),
(26, 12, NULL, 2, 'fds', '2021-06-09 15:02:08', NULL, NULL),
(27, 11, NULL, 2, 's', '2021-06-09 15:04:30', NULL, NULL),
(28, 13, NULL, 2, 'sd', '2021-06-09 15:09:54', NULL, NULL),
(29, 12, NULL, 2, 'dsa', '2021-06-09 15:16:31', NULL, NULL),
(31, 12, NULL, 2, 'dá', '2021-06-09 16:23:20', NULL, NULL),
(36, 27, NULL, 2, '12132132', '2021-06-12 19:08:03', NULL, NULL),
(37, NULL, 1, 2, 'sđáadsdá', '2021-06-12 21:25:23', '2021-06-12 14:25:23', '2021-06-12 14:25:23'),
(38, NULL, 1, 1, '12321321321312313', '2021-06-12 22:10:58', '2021-06-12 15:10:58', '2021-06-12 15:10:58'),
(39, NULL, 1, 2, 'đâsdấdsađa', '2021-06-16 19:37:57', '2021-06-16 12:37:57', '2021-06-16 12:37:57'),
(40, NULL, 1, 2, 'ewqewq', '2021-06-17 12:24:47', '2021-06-17 05:24:47', '2021-06-17 05:24:47'),
(41, NULL, 2, 2, 'dsadsad', '2021-06-17 12:49:07', '2021-06-17 05:49:07', '2021-06-17 05:49:07'),
(42, NULL, 1, 2, '21312312313', '2021-06-17 13:00:27', '2021-06-17 06:00:27', '2021-06-17 06:00:27'),
(43, NULL, 1, 2, '515151', '2021-06-17 13:03:22', '2021-06-17 06:03:22', '2021-06-17 06:03:22'),
(44, NULL, 2, 2, '1515151', '2021-06-17 13:03:28', '2021-06-17 06:03:28', '2021-06-17 06:03:28'),
(45, 27, NULL, 2, 'ewqeqưe', '2021-06-17 13:07:28', NULL, NULL),
(46, 27, NULL, 2, '12e21e21e', '2021-06-17 13:08:14', NULL, NULL),
(47, 1, NULL, 1, '15151', '2021-06-17 13:09:38', '2021-06-17 06:09:38', '2021-06-17 06:09:38'),
(48, NULL, 2, 1, 'ađâsđấ', '2021-06-17 13:21:14', '2021-06-17 06:21:14', '2021-06-17 06:21:14'),
(49, NULL, 1, 1, 'ưdqưdqdqưdqd', '2021-06-17 13:21:20', '2021-06-17 06:21:20', '2021-06-17 06:21:20'),
(50, NULL, 1, 1, '2151515', '2021-06-17 13:35:19', '2021-06-17 06:35:19', '2021-06-17 06:35:19'),
(51, 28, NULL, 2, 'da', '2021-06-18 22:04:21', NULL, NULL),
(52, 28, NULL, 2, 'da', '2021-06-18 22:05:16', NULL, NULL),
(53, 28, NULL, 2, 'dsa', '2021-06-18 22:08:11', NULL, NULL),
(54, 28, NULL, 2, 'da', '2021-06-18 22:20:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `linhvuc`
--

CREATE TABLE `linhvuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenlinhvuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motalinhvuc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `linhvuc`
--

INSERT INTO `linhvuc` (`id`, `tenlinhvuc`, `motalinhvuc`, `created_at`, `updated_at`) VALUES
(1, 'Khoa học', 'Khoa học Cần Thơ', '2021-04-23 07:08:03', '2021-05-30 03:24:41'),
(2, 'Công nghệ', 'Công nghệ Cần Thơ', '2021-04-23 07:08:16', '2021-05-30 03:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idcongty` bigint(20) NOT NULL,
  `tenloaisanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motaloaisanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `idcongty`, `tenloaisanpham`, `motaloaisanpham`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sửa cho bé', 'Sửa cho bé', '2021-04-25 04:44:41', '2021-05-30 14:17:55'),
(2, 2, 'Điện thoại thông minh', 'Điện thoại', '2021-04-28 04:51:09', '2021-04-28 04:51:09'),
(3, 2, 'afa', 'fsfa', '2021-04-28 08:27:31', '2021-04-28 08:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `logtintuc`
--

CREATE TABLE `logtintuc` (
  `id` bigint(20) NOT NULL,
  `idtintuc` bigint(20) DEFAULT NULL,
  `idvideotintuc` bigint(20) DEFAULT NULL,
  `idtaikhoan` bigint(20) NOT NULL,
  `noidungdanhgia` varchar(255) NOT NULL,
  `thoigian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logtintuc`
--

INSERT INTO `logtintuc` (`id`, `idtintuc`, `idvideotintuc`, `idtaikhoan`, `noidungdanhgia`, `thoigian`, `created_at`, `updated_at`) VALUES
(2, 13, NULL, 28, 'Duyệt tin: tin viet rat hay', '2021-06-02 13:55:01', NULL, NULL),
(3, 13, NULL, 28, 'Xuất bản: tin viet rat hay', '2021-06-02 13:58:53', NULL, NULL),
(4, 14, NULL, 28, 'Duyệt tin: tin viet rat hay', '2021-06-02 14:20:57', NULL, NULL),
(5, 14, NULL, 28, 'Xuất bản: tin viet rat hay', '2021-06-02 14:21:02', NULL, NULL),
(6, 4, NULL, 28, 'Xuất bản: tin viet rat hay', '2021-06-02 14:24:41', NULL, NULL),
(7, 14, NULL, 2, 'Duyệt tin: viet sai chinh ta', '2021-06-02 14:54:52', NULL, NULL),
(8, 14, NULL, 2, 'Xuất bản: tin tốt', '2021-06-02 14:55:08', NULL, NULL),
(9, 14, NULL, 2, 'Duyệt tin: sadasdadsa', '2021-06-02 14:55:38', NULL, NULL),
(10, 14, NULL, 2, 'Duyệt tin: fvdg', '2021-06-02 14:55:55', NULL, NULL),
(11, 14, NULL, 2, 'Duyệt tin: dsa', '2021-06-03 06:28:27', NULL, NULL),
(12, 14, NULL, 2, 'Xuất bản: dâs', '2021-06-03 06:28:32', NULL, NULL),
(13, 14, NULL, 2, 'Duyệt tin: fgsfsf', '2021-06-04 14:24:31', NULL, NULL),
(14, 14, NULL, 2, 'Xuất bản: xuatbantin8', '2021-06-04 14:24:39', NULL, NULL),
(15, 13, NULL, 2, 'Duyệt tin: fds', '2021-06-04 14:24:52', NULL, NULL),
(16, 13, NULL, 2, 'Xuất bản: xuat ban tin 7', '2021-06-04 14:25:00', NULL, NULL),
(17, 12, NULL, 2, 'Duyệt tin: yku666666', '2021-06-04 14:25:14', NULL, NULL),
(18, 12, NULL, 2, 'Xuất bản: xuat ban tin 6', '2021-06-04 14:25:21', NULL, NULL),
(19, 3, NULL, 2, 'Duyệt tin: dasd', '2021-06-04 14:25:32', NULL, NULL),
(20, 14, NULL, 2, 'Duyệt tin: sadasdadsa', '2021-06-04 15:02:44', NULL, NULL),
(21, 14, NULL, 2, 'Xuất bản: sadasdadsa', '2021-06-04 15:02:48', NULL, NULL),
(22, 13, NULL, 2, 'Duyệt tin: sadasdadsa', '2021-06-04 15:03:11', NULL, NULL),
(23, 13, NULL, 2, 'Xuất bản: ewr', '2021-06-04 15:03:14', NULL, NULL),
(24, 12, NULL, 2, 'Duyệt tin: d', '2021-06-04 15:03:40', NULL, NULL),
(25, 12, NULL, 2, 'Xuất bản: sadasdadsa', '2021-06-04 15:03:44', NULL, NULL),
(26, 13, NULL, 2, 'Duyệt tin: tin tốt', '2021-06-07 16:12:21', NULL, NULL),
(27, 13, NULL, 2, 'Xuất bản: tin tốt', '2021-06-07 16:12:26', NULL, NULL),
(28, 13, NULL, 2, 'Duyệt tin: sadasdadsa', '2021-06-07 16:13:25', NULL, NULL),
(29, 13, NULL, 2, 'Xuất bản: sda', '2021-06-07 16:13:31', NULL, NULL),
(30, 13, NULL, 2, 'Duyệt tin: sadasdadsa', '2021-06-09 08:00:53', NULL, NULL),
(31, 13, NULL, 2, 'Xuất bản: dá', '2021-06-09 08:00:59', NULL, NULL),
(32, 13, NULL, 2, 'Duyệt tin: sdf', '2021-06-09 08:01:33', NULL, NULL),
(33, 13, NULL, 2, 'Duyệt tin: sdf', '2021-06-09 08:01:34', NULL, NULL),
(34, 13, NULL, 2, 'Xuất bản: dfs', '2021-06-09 08:01:39', NULL, NULL),
(35, 12, NULL, 2, 'Duyệt tin: fsd', '2021-06-09 08:02:21', NULL, NULL),
(36, 12, NULL, 2, 'Duyệt tin: f', '2021-06-09 08:02:37', NULL, NULL),
(37, 12, NULL, 2, 'Xuất bản: viet sai chinh ta', '2021-06-09 08:02:43', NULL, NULL),
(38, 11, NULL, 2, 'Duyệt tin: s', '2021-06-09 08:04:45', NULL, NULL),
(39, 11, NULL, 2, 'Xuất bản: s', '2021-06-09 08:04:49', NULL, NULL),
(40, 13, NULL, 2, 'Duyệt tin: dsa', '2021-06-09 08:10:12', NULL, NULL),
(41, 13, NULL, 2, 'Xuất bản: d', '2021-06-09 08:10:16', NULL, NULL),
(42, 12, NULL, 2, 'Duyệt tin: viet sai chinh ta', '2021-06-09 08:17:01', NULL, NULL),
(43, 12, NULL, 2, 'Xuất bản: tin tốt', '2021-06-09 08:17:06', NULL, NULL),
(44, 20, NULL, 2, 'Duyệt tin: xeđẹp', '2021-06-09 08:59:43', NULL, NULL),
(45, 20, NULL, 2, 'Xuất bản: đạp quá', '2021-06-09 08:59:50', NULL, NULL),
(46, 23, NULL, 2, 'Duyệt tin: viet sai chinh ta', '2021-06-09 09:10:19', NULL, NULL),
(47, 23, NULL, 2, 'Xuất bản: ádasa', '2021-06-09 09:10:24', NULL, NULL),
(48, 12, NULL, 2, 'Duyệt tin: sda', '2021-06-09 09:26:48', NULL, NULL),
(49, 12, NULL, 2, 'Xuất bản: sdada', '2021-06-09 09:26:53', NULL, NULL),
(50, 20, NULL, 2, 'Duyệt tin: fds', '2021-06-09 09:36:28', NULL, NULL),
(51, 20, NULL, 2, 'Xuất bản: utjujfg', '2021-06-09 09:36:34', NULL, NULL),
(52, 20, NULL, 2, 'Duyệt tin: fds', '2021-06-09 10:09:22', NULL, NULL),
(53, 20, NULL, 2, 'Xuất bản: viet sai chinh ta', '2021-06-09 10:09:27', NULL, NULL),
(54, 22, NULL, 2, 'Duyệt tin: gfdfdsg', '2021-06-10 08:56:34', NULL, NULL),
(55, 22, NULL, 2, 'Xuất bản: fdsdfsd', '2021-06-10 08:56:39', NULL, NULL),
(56, 23, NULL, 2, 'Duyệt tin: dsadasd', '2021-06-10 09:09:02', NULL, NULL),
(57, 23, NULL, 2, 'Xuất bản: đâsda', '2021-06-10 09:09:07', NULL, NULL),
(58, 24, NULL, 2, 'Duyệt tin: xe hay', '2021-06-10 09:30:05', NULL, NULL),
(59, 24, NULL, 2, 'Xuất bản: xe hay quá', '2021-06-10 09:30:14', NULL, NULL),
(60, 27, NULL, 2, 'Duyệt tin: 12313', '2021-06-12 12:07:46', NULL, NULL),
(61, 27, NULL, 2, 'Duyệt tin: 312314846', '2021-06-12 12:08:00', NULL, NULL),
(62, 27, NULL, 2, 'Duyệt tin: +655646546', '2021-06-12 12:08:06', NULL, NULL),
(63, 27, NULL, 2, 'Xuất bản: 965+65+456', '2021-06-12 12:08:09', NULL, NULL),
(64, NULL, 1, 2, 'Duyệt tin: 23123', '2021-06-12 14:09:40', '2021-06-12 14:09:40', '2021-06-12 14:09:40'),
(65, 1, NULL, 2, 'Xuất bản: 131311212', '2021-06-12 14:21:16', '2021-06-12 14:21:16', '2021-06-12 14:21:16'),
(66, NULL, 1, 2, 'Xuất bản: thfhfghfgfg', '2021-06-12 14:22:20', '2021-06-12 14:22:20', '2021-06-12 14:22:20'),
(67, NULL, 1, 2, 'Xuất bản: gdfdfgdfggdf', '2021-06-12 14:22:33', '2021-06-12 14:22:33', '2021-06-12 14:22:33'),
(68, NULL, 1, 1, 'Duyệt tin: 12333333321123', '2021-06-12 15:09:50', '2021-06-12 15:09:50', '2021-06-12 15:09:50'),
(69, NULL, 1, 1, 'Duyệt tin: 213123213', '2021-06-12 15:10:40', '2021-06-12 15:10:40', '2021-06-12 15:10:40'),
(70, NULL, 1, 1, 'Xuất bản: sấđấ', '2021-06-12 15:10:49', '2021-06-12 15:10:49', '2021-06-12 15:10:49'),
(71, NULL, 1, 2, 'Duyệt tin: 1312321', '2021-06-13 17:27:51', '2021-06-13 17:27:51', '2021-06-13 17:27:51'),
(72, NULL, 1, 2, 'Xuất bản: 123123213', '2021-06-13 17:27:57', '2021-06-13 17:27:57', '2021-06-13 17:27:57'),
(73, NULL, 2, 2, 'Duyệt tin: đâsdsa', '2021-06-16 12:37:45', '2021-06-16 12:37:45', '2021-06-16 12:37:45'),
(74, NULL, 1, 2, 'Duyệt tin: qưeqưeqưeqưeq', '2021-06-16 12:38:08', '2021-06-16 12:38:08', '2021-06-16 12:38:08'),
(75, NULL, 2, 2, 'Xuất bản: sadsđsađâs', '2021-06-16 12:38:15', '2021-06-16 12:38:15', '2021-06-16 12:38:15'),
(76, NULL, 1, 2, 'Xuất bản: ádsadsa sad adsa', '2021-06-16 12:38:22', '2021-06-16 12:38:22', '2021-06-16 12:38:22'),
(77, 1, NULL, 1, 'Duyệt tin: 5151', '2021-06-17 04:54:18', '2021-06-17 04:54:18', '2021-06-17 04:54:18'),
(78, 1, NULL, 1, 'Xuất bản: 15151551', '2021-06-17 04:54:35', '2021-06-17 04:54:35', '2021-06-17 04:54:35'),
(79, NULL, 1, 2, 'Duyệt tin: qewqưe', '2021-06-17 05:24:52', '2021-06-17 05:24:52', '2021-06-17 05:24:52'),
(80, NULL, 1, 2, 'Xuất bản: qưewqewqe', '2021-06-17 05:24:57', '2021-06-17 05:24:57', '2021-06-17 05:24:57'),
(81, NULL, 2, 2, 'Duyệt tin: dsdsds', '2021-06-17 05:49:14', '2021-06-17 05:49:14', '2021-06-17 05:49:14'),
(82, NULL, 2, 2, 'Xuất bản: dsdsdsđa', '2021-06-17 05:49:19', '2021-06-17 05:49:19', '2021-06-17 05:49:19'),
(83, 2, NULL, 1, 'Duyệt tin: sdấdá', '2021-06-17 05:59:40', '2021-06-17 05:59:40', '2021-06-17 05:59:40'),
(84, 2, NULL, 1, 'Xuất bản: 123213123', '2021-06-17 05:59:45', '2021-06-17 05:59:45', '2021-06-17 05:59:45'),
(85, NULL, 1, 2, 'Duyệt tin: 12231', '2021-06-17 06:03:11', '2021-06-17 06:03:11', '2021-06-17 06:03:11'),
(86, NULL, 1, 2, 'Xuất bản: 1551', '2021-06-17 06:03:16', '2021-06-17 06:03:16', '2021-06-17 06:03:16'),
(87, 26, NULL, 2, 'Duyệt tin: đâsd', '2021-06-17 06:05:18', NULL, NULL),
(88, 26, NULL, 2, 'Xuất bản: ấđáa', '2021-06-17 06:05:22', NULL, NULL),
(89, 27, NULL, 2, 'Duyệt tin: 2112e12e', '2021-06-17 06:08:03', NULL, NULL),
(90, 27, NULL, 2, 'Xuất bản: 1e21e12e', '2021-06-17 06:08:07', NULL, NULL),
(91, NULL, 1, 1, 'Duyệt tin: dsdâda', '2021-06-17 06:19:33', '2021-06-17 06:19:33', '2021-06-17 06:19:33'),
(92, NULL, 1, 1, 'Xuất bản: dsađá', '2021-06-17 06:19:38', '2021-06-17 06:19:38', '2021-06-17 06:19:38'),
(93, NULL, 2, 1, 'Duyệt tin: eqưeqư', '2021-06-17 06:20:38', '2021-06-17 06:20:38', '2021-06-17 06:20:38'),
(94, NULL, 2, 1, 'Xuất bản: eqeqưe', '2021-06-17 06:20:42', '2021-06-17 06:20:42', '2021-06-17 06:20:42'),
(95, NULL, 1, 1, 'Duyệt tin: eqưeqeqưe', '2021-06-17 06:21:28', '2021-06-17 06:21:28', '2021-06-17 06:21:28'),
(96, NULL, 1, 1, 'Xuất bản: qeqưeqưeqe', '2021-06-17 06:21:33', '2021-06-17 06:21:33', '2021-06-17 06:21:33'),
(97, NULL, 2, 1, 'Duyệt tin: 12e21e1e1e1', '2021-06-17 06:21:38', '2021-06-17 06:21:38', '2021-06-17 06:21:38'),
(98, NULL, 2, 1, 'Xuất bản: e1e12e', '2021-06-17 06:21:43', '2021-06-17 06:21:43', '2021-06-17 06:21:43'),
(99, NULL, 1, 1, 'Duyệt tin: 15515', '2021-06-17 06:35:54', '2021-06-17 06:35:54', '2021-06-17 06:35:54'),
(100, NULL, 1, 1, 'Xuất bản: 15151', '2021-06-17 06:36:05', '2021-06-17 06:36:05', '2021-06-17 06:36:05'),
(101, 1, NULL, 1, 'Duyệt tin: 31312321312', '2021-06-17 06:39:06', '2021-06-17 06:39:06', '2021-06-17 06:39:06'),
(102, 28, NULL, 2, 'Duyệt tin: viet sai chinh ta', '2021-06-18 15:03:13', NULL, NULL),
(103, 28, NULL, 2, 'Xuất bản: sadasdadsa', '2021-06-18 15:03:17', NULL, NULL),
(104, 28, NULL, 2, 'Duyệt tin: fds', '2021-06-18 15:04:53', NULL, NULL),
(105, 28, NULL, 2, 'Xuất bản: tin viet rat hay', '2021-06-18 15:04:56', NULL, NULL),
(106, 28, NULL, 2, 'Duyệt tin: fds', '2021-06-18 15:07:41', NULL, NULL),
(107, 28, NULL, 2, 'Xuất bản: sdasda', '2021-06-18 15:07:52', NULL, NULL),
(108, 28, NULL, 2, 'Duyệt tin: viet sai chinh ta', '2021-06-18 15:09:10', NULL, NULL),
(109, 28, NULL, 2, 'Xuất bản: viet sai chinh ta', '2021-06-18 15:09:13', NULL, NULL),
(110, 27, NULL, 2, 'Duyệt tin: tin tốt', '2021-06-18 15:23:14', NULL, NULL),
(111, 27, NULL, 2, 'Xuất bản: tin tốt', '2021-06-18 15:23:18', NULL, NULL),
(112, 28, NULL, 2, 'Duyệt tin: tin viet rat hay', '2021-06-18 15:23:42', NULL, NULL),
(113, 28, NULL, 2, 'Xuất bản: tin viet rat hay', '2021-06-18 15:23:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(157, '2014_10_12_000000_create_users_table', 1),
(158, '2014_10_12_100000_create_password_resets_table', 1),
(159, '2019_08_19_000000_create_failed_jobs_table', 1),
(160, '2021_04_14_151913_create_so_table', 1),
(161, '2021_04_14_152133_create_linhvuc_table', 1),
(162, '2021_04_14_152217_create_chuyenmuc_table', 1),
(163, '2021_04_14_152301_create_tintuc_table', 1),
(164, '2021_04_14_152623_create_congty_table', 1),
(165, '2021_04_14_152842_create_kho_table', 1),
(166, '2021_04_14_153746_create_loaisanpham_table', 1),
(167, '2021_04_14_153837_create_sanpham_table', 1),
(168, '2021_04_14_164914_create_thongtin_table', 1),
(169, '2021_04_23_103346_create_hinhanh_table', 1),
(170, '2021_04_23_103400_create_video_table', 1),
(171, '2021_04_23_104049_create_danhgia_table', 1),
(172, '2021_04_23_105605_create_giaidoan_table', 1),
(173, '2021_04_23_105801_create_thongtingiaidoan_table', 1),
(174, '2021_04_23_110056_create_quyen_table', 1),
(175, '2021_04_23_110257_create_vaitro_table', 1),
(176, '2021_04_23_110332_create_vaitro_quyen_table', 1),
(177, '2021_04_23_110424_create_taikhoan_vaitro_table', 1),
(178, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(179, '2021_05_15_014853_create_lichsutintuc_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('huynguyen0938858944@gmail.com', '$2y$10$Fiho82SzVNUsyHOUjC1zcOgy59zS5iueuVZVWInmEI6SrtVampGLC', '2021-05-28 06:07:24'),
('trung@dev.com', '$2y$10$pSVsIW7X5lV9G3fWJ30/RuFGJwmdoNwGLo.EKcYk6RI8vhdYZvXlm', '2021-05-28 08:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `quangcao`
--

CREATE TABLE `quangcao` (
  `id` bigint(20) NOT NULL,
  `tieudequangcao` varchar(255) NOT NULL,
  `loaiquangcao` smallint(6) NOT NULL DEFAULT '0' COMMENT '0-thường, 1-sự kiện',
  `ngaytaoquangcao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quangcao`
--

INSERT INTO `quangcao` (`id`, `tieudequangcao`, `loaiquangcao`, `ngaytaoquangcao`, `created_at`, `updated_at`) VALUES
(21, 'dsđâ sd sad ád sa d', 1, '2021-06-15 09:47:17', '2021-06-15 09:47:17', '2021-06-17 04:38:19'),
(22, 'ÁĐA DÂd  da đa ada đa á', 1, '2021-06-16 16:48:40', '2021-06-16 16:48:40', '2021-06-17 04:38:23'),
(23, '113211111111111', 1, '2021-06-16 16:49:04', '2021-06-16 16:49:04', '2021-06-17 04:32:28'),
(24, '15151515155510551515', 1, '2021-06-16 16:49:21', '2021-06-16 16:49:21', '2021-06-17 04:32:27'),
(25, 'sad ad ádsad adsa đá ád ád a', 1, '2021-06-17 03:50:51', '2021-06-17 03:50:51', '2021-06-17 04:32:27'),
(26, '151555155515515', 1, '2021-06-17 04:19:58', '2021-06-17 04:19:58', '2021-06-17 04:32:26');

-- --------------------------------------------------------

--
-- Table structure for table `quyen`
--

CREATE TABLE `quyen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `tenquyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motaquyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` smallint(6) NOT NULL DEFAULT '0' COMMENT '1-on, 0-off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quyen`
--

INSERT INTO `quyen` (`id`, `parent_id`, `tenquyen`, `motaquyen`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 0, 'category', 'Chuyên mục', 0, '2021-04-29 21:01:43', '2021-06-17 15:24:52'),
(2, 1, 'category-list', 'Danh sách', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(3, 1, 'category-view', 'Xem', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(4, 1, 'category-add', 'Thêm', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(5, 1, 'category-update', 'Sửa', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(6, 1, 'category-delete', 'Xóa', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(7, 0, 'company', 'Công ty', 1, '2021-04-29 21:01:43', '2021-05-20 15:16:49'),
(8, 7, 'company-list', 'Danh sách', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(9, 7, 'company-view', 'Xem', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(10, 7, 'company-add', 'Thêm', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(11, 7, 'company-update', 'Sửa', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(12, 7, 'company-delete', 'Xóa', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(13, 0, 'comment', 'Bình luận', 1, '2021-04-29 21:01:43', '2021-05-20 15:17:49'),
(14, 13, 'comment-list', 'Danh sách', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(15, 13, 'comment-view', 'Xem', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(16, 13, 'comment-add', 'Thêm', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(17, 13, 'comment-update', 'Sửa', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(18, 13, 'comment-delete', 'Xóa', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(19, 0, 'stage', 'Giai đoạn', 1, '2021-04-29 21:01:43', '2021-04-29 21:03:15'),
(20, 19, 'stage-list', 'Danh sách', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(21, 19, 'stage-view', 'Xem', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(22, 19, 'stage-add', 'Thêm', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(23, 19, 'stage-update', 'Sửa', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(24, 19, 'stage-delete', 'Xóa', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(25, 0, 'storage', 'Kho', 1, '2021-04-29 21:01:43', '2021-04-29 21:03:16'),
(26, 25, 'storage-list', 'Danh sách', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(27, 25, 'storage-view', 'Xem', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(28, 25, 'storage-add', 'Thêm', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(29, 25, 'storage-update', 'Sửa', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(30, 25, 'storage-delete', 'Xóa', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(31, 0, 'field', 'Lĩnh vực', 0, '2021-04-29 21:01:43', '2021-06-17 15:25:05'),
(32, 31, 'field-list', 'Danh sách', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(33, 31, 'field-view', 'Xem', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(34, 31, 'field-add', 'Thêm', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(35, 31, 'field-update', 'Sửa', 0, '2021-04-29 21:01:43', '2021-04-29 21:01:43'),
(36, 31, 'field-delete', 'Xóa', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(37, 0, 'procat', 'Loại sản phẩm', 1, '2021-04-29 21:01:44', '2021-04-29 21:03:21'),
(38, 37, 'procat-list', 'Danh sách', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(39, 37, 'procat-view', 'Xem', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(40, 37, 'procat-add', 'Thêm', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(41, 37, 'procat-update', 'Sửa', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(42, 37, 'procat-delete', 'Xóa', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(43, 0, 'permission', 'Quyền', 0, '2021-04-29 21:01:44', '2021-05-20 15:11:18'),
(44, 43, 'permission-list', 'Danh sách', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(45, 43, 'permission-view', 'Xem', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(46, 43, 'permission-add', 'Thêm', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(47, 43, 'permission-update', 'Sửa', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(48, 43, 'permission-delete', 'Xóa', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(49, 0, 'product', 'Sản phẩm', 1, '2021-04-29 21:01:44', '2021-04-29 21:03:22'),
(50, 49, 'product-list', 'Danh sách', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(51, 49, 'product-view', 'Xem', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(52, 49, 'product-add', 'Thêm', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(53, 49, 'product-update', 'Sửa', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(54, 49, 'product-delete', 'Xóa', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(55, 0, 'department', 'Sở', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(56, 55, 'department-list', 'Danh sách', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(57, 55, 'department-view', 'Xem', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(58, 55, 'department-add', 'Thêm', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(59, 55, 'department-update', 'Sửa', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(60, 55, 'department-delete', 'Xóa', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(61, 0, 'account', 'Tài khoản', 1, '2021-04-29 21:01:44', '2021-04-29 21:03:25'),
(62, 61, 'account-list', 'Danh sách', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(63, 61, 'account-view', 'Xem', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(64, 61, 'account-add', 'Thêm', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(65, 61, 'account-update', 'Sửa', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(66, 61, 'account-delete', 'Xóa', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(67, 0, 'role', 'Vai trò', 1, '2021-04-29 21:01:44', '2021-04-29 21:03:24'),
(68, 67, 'role-list', 'Danh sách', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(69, 67, 'role-view', 'Xem', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(70, 67, 'role-add', 'Thêm', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(71, 67, 'role-update', 'Sửa', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(72, 67, 'role-delete', 'Xóa', 0, '2021-04-29 21:01:44', '2021-04-29 21:01:44'),
(73, 0, 'news', 'Tin tức', 1, '2021-04-29 21:02:00', '2021-04-29 21:03:27'),
(74, 73, 'news-list', 'Danh sách', 0, '2021-04-29 21:02:00', '2021-04-29 21:02:00'),
(75, 73, 'news-view', 'Xem', 0, '2021-04-29 21:02:00', '2021-04-29 21:02:00'),
(76, 73, 'news-add', 'Thêm', 0, '2021-04-29 21:02:00', '2021-04-29 21:02:00'),
(77, 73, 'news-update', 'Sửa', 0, '2021-04-29 21:02:00', '2021-04-29 21:02:00'),
(78, 73, 'news-delete', 'Xóa', 0, '2021-04-29 21:02:00', '2021-04-29 21:02:00'),
(79, 73, 'news-browse', 'Duyệt bài', 0, '2021-04-29 21:02:00', '2021-04-29 21:02:00'),
(80, 73, 'news-publish', 'Xuất bản', 0, '2021-04-29 21:02:00', '2021-04-29 21:02:00'),
(81, 19, 'stage-browse', 'Duyệt bài', 0, '2021-04-30 02:03:45', '2021-04-30 02:03:45'),
(82, 19, 'stage-publish', 'Xuất bản', 0, '2021-04-30 02:03:45', '2021-04-30 02:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idloaisanpham` bigint(20) NOT NULL,
  `idcongty` bigint(20) NOT NULL,
  `idtaikhoan` bigint(20) NOT NULL,
  `idkho` bigint(20) NOT NULL,
  `tensanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thongtinsanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanhsanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `videosanpham` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xuatxu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chungloaisanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dongiasanpham` int(11) NOT NULL,
  `khoiluongsanpham` int(11) NOT NULL,
  `donvitinhsanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mavachsanpham` longtext COLLATE utf8mb4_unicode_ci,
  `qrcode` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `idloaisanpham`, `idcongty`, `idtaikhoan`, `idkho`, `tensanpham`, `thongtinsanpham`, `hinhanhsanpham`, `videosanpham`, `xuatxu`, `chungloaisanpham`, `dongiasanpham`, `khoiluongsanpham`, `donvitinhsanpham`, `mavachsanpham`, `qrcode`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 2, 2, 'Cá kho333232323', 'Cá kho tiêu khổ qua', '/storage/product/images/2/YIF9lqSkCTQ0cI3Sjs0j.jpg', NULL, 'Việt Nam', 'Đồ ăn - Thức uống', 25000, 1, 'kg', '<div style=\"font-size:0;position:relative;width:202px;height:50px;\">\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:26px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:36px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:70px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:92px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:102px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:114px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:138px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:146px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:154px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:162px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:172px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:186px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:194px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:198px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:202px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:202px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:202px;  font-size: 0.6vw;\">151515151551</div></div>\n', NULL, '2021-06-30 16:09:25', '2021-06-17 16:04:48'),
(2, 2, 2, 2, 2, 'Cá kho5151515', 'Cá kho tiêu khổ qua', '/storage/product/images/2/YIF9lqSkCTQ0cI3Sjs0j.jpg', NULL, 'Việt Nam', 'Đồ ăn - Thức uống', 25000, 1, 'kg', '<div style=\"font-size:0;position:relative;width:290px;height:50px;\">\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:36px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:50px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:58px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:114px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:138px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:144px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:154px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:164px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:170px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:186px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:192px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:198px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:202px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:212px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:228px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:232px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:242px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:254px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:260px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:264px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:274px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:282px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:286px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:290px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:290px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:290px;  font-size: 0.6vw;\">51515155151332323</div></div>\n', NULL, '2021-06-29 16:09:24', '2021-06-17 16:12:22'),
(3, 1, 2, 2, 1, 'Cá kho', 'Cá kho tiêu khổ qua', '/storage/product/images/2/YIF9lqSkCTQ0cI3Sjs0j.jpg', NULL, 'Việt Nam', 'Đồ ăn - Thức uống', 25000, 1, 'kg', '<div style=\"font-size:0;position:relative;width:384px;height:50px;\">\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:40px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:68px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:116px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:152px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:160px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:184px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:188px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:192px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:196px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:228px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:236px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:240px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:248px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:256px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:264px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:272px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:276px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:284px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:288px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:292px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:304px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:308px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:316px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:320px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:324px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:336px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:340px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:344px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:352px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:360px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:364px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:372px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:380px;top:0px;\">&nbsp;</div>\r\n<div style=\"position:absolute;bottom:0; text-align:center; width:384px;  font-size: 0.6vw;\">123456789</div></div>\r\n', NULL, '2021-06-24 16:09:21', NULL),
(4, 1, 2, 2, 1, 'Cá kho', 'Cá kho tiêu khổ qua', '/storage/product/images/2/YIF9lqSkCTQ0cI3Sjs0j.jpg', NULL, 'Việt Nam', 'Đồ ăn - Thức uống', 25000, 1, 'kg', '<div style=\"font-size:0;position:relative;width:384px;height:50px;\">\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:40px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:68px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:116px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:152px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:160px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:184px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:188px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:192px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:196px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:228px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:236px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:240px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:248px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:256px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:264px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:272px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:276px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:284px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:288px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:292px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:304px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:308px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:316px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:320px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:324px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:336px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:340px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:344px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:352px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:360px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:364px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:372px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:380px;top:0px;\">&nbsp;</div>\r\n<div style=\"position:absolute;bottom:0; text-align:center; width:384px;  font-size: 0.6vw;\">123456789</div></div>\r\n', NULL, NULL, NULL),
(5, 1, 2, 2, 1, 'Cá kho', 'Cá kho tiêu khổ qua', '/storage/product/images/2/YIF9lqSkCTQ0cI3Sjs0j.jpg', NULL, 'Việt Nam', 'Đồ ăn - Thức uống', 25000, 1, 'kg', '<div style=\"font-size:0;position:relative;width:384px;height:50px;\">\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:40px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:68px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:116px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:152px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:160px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:184px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:188px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:192px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:196px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:228px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:236px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:240px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:248px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:256px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:264px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:272px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:276px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:284px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:288px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:292px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:304px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:308px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:316px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:320px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:324px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:336px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:340px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:344px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:352px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:360px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:364px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:372px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:380px;top:0px;\">&nbsp;</div>\r\n<div style=\"position:absolute;bottom:0; text-align:center; width:384px;  font-size: 0.6vw;\">123456789</div></div>\r\n', NULL, '2021-06-20 16:09:19', NULL),
(6, 1, 2, 2, 1, 'Cá kho', 'Cá kho tiêu khổ qua', '/storage/product/images/2/YIF9lqSkCTQ0cI3Sjs0j.jpg', NULL, 'Việt Nam', 'Đồ ăn - Thức uống', 25000, 1, 'kg', '<div style=\"font-size:0;position:relative;width:384px;height:50px;\">\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:40px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:68px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:116px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:152px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:160px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:184px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:188px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:192px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:196px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:228px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:236px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:240px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:248px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:256px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:264px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:272px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:276px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:284px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:288px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:292px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:304px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:308px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:316px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:320px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:324px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:336px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:340px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:344px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:352px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:360px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:364px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:372px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:380px;top:0px;\">&nbsp;</div>\r\n<div style=\"position:absolute;bottom:0; text-align:center; width:384px;  font-size: 0.6vw;\">123456789</div></div>\r\n', NULL, '2021-06-21 16:09:17', NULL),
(7, 1, 2, 2, 1, 'Cá kho', 'Cá kho tiêu khổ qua', '/storage/product/images/2/YIF9lqSkCTQ0cI3Sjs0j.jpg', NULL, 'Việt Nam', 'Đồ ăn - Thức uống', 25000, 1, 'kg', '<div style=\"font-size:0;position:relative;width:384px;height:50px;\">\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:40px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:68px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:116px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:152px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:160px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:184px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:188px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:192px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:196px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:228px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:236px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:240px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:248px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:256px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:264px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:272px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:276px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:284px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:288px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:292px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:304px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:308px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:316px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:320px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:324px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:336px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:340px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:344px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:352px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:360px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:364px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:372px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:380px;top:0px;\">&nbsp;</div>\r\n<div style=\"position:absolute;bottom:0; text-align:center; width:384px;  font-size: 0.6vw;\">123456789</div></div>\r\n', NULL, '2021-06-28 16:09:15', NULL);
INSERT INTO `sanpham` (`id`, `idloaisanpham`, `idcongty`, `idtaikhoan`, `idkho`, `tensanpham`, `thongtinsanpham`, `hinhanhsanpham`, `videosanpham`, `xuatxu`, `chungloaisanpham`, `dongiasanpham`, `khoiluongsanpham`, `donvitinhsanpham`, `mavachsanpham`, `qrcode`, `created_at`, `updated_at`) VALUES
(8, 1, 2, 2, 1, 'Cá kho', 'Cá kho tiêu khổ qua', '/storage/product/images/2/YIF9lqSkCTQ0cI3Sjs0j.jpg', NULL, 'Việt Nam', 'Đồ ăn - Thức uống', 25000, 1, 'kg', '<div style=\"font-size:0;position:relative;width:384px;height:50px;\">\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:40px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:68px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:116px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:152px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:160px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:184px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:188px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:192px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:196px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:228px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:236px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:240px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:248px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:256px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:264px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:272px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:276px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:284px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:288px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:292px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:304px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:308px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:316px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:320px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:324px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:336px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:340px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:344px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:352px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:360px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:364px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:372px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:380px;top:0px;\">&nbsp;</div>\r\n<div style=\"position:absolute;bottom:0; text-align:center; width:384px;  font-size: 0.6vw;\">123456789</div></div>\r\n', NULL, '2021-06-15 16:09:13', NULL),
(9, 1, 2, 2, 1, 'Cá kho', 'Cá kho tiêu khổ qua', '/storage/product/images/2/YIF9lqSkCTQ0cI3Sjs0j.jpg', NULL, 'Việt Nam', 'Đồ ăn - Thức uống', 25000, 1, 'kg', '<div style=\"font-size:0;position:relative;width:384px;height:50px;\">\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:40px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:68px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:116px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:152px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:160px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:184px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:188px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:192px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:196px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:228px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:236px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:240px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:248px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:256px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:264px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:272px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:276px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:284px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:288px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:292px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:304px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:308px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:316px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:320px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:324px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:336px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:340px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:344px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:352px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:360px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:364px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:372px;top:0px;\">&nbsp;</div>\r\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:380px;top:0px;\">&nbsp;</div>\r\n<div style=\"position:absolute;bottom:0; text-align:center; width:384px;  font-size: 0.6vw;\">123456789</div></div>\r\n', NULL, '2021-06-02 16:09:11', NULL),
(22, 1, 1, 2, 1, '123123213123', '<p>213213121</p>', '/storage/product/images/1/RhgJ44Kjd8edpvMSikeE.jpg', NULL, '3313', '1232uuhuhuhuhu', 221321, 123, '21321', '<div style=\"font-size:0;position:relative;width:384px;height:50px;\">\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:40px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:68px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:116px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:152px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:160px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:184px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:188px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:192px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:196px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:228px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:236px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:240px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:248px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:256px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:264px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:272px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:276px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:284px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:288px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:292px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:304px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:308px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:316px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:320px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:324px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:336px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:340px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:344px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:352px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:360px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:364px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:372px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:380px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:384px;  font-size: 0.6vw;\">123456789</div></div>\n', NULL, '2021-04-27 09:50:20', '2021-05-30 14:36:49'),
(23, 1, 1, 2, 1, '3213', '<p>1233213131</p>', '/storage/product/images/1/etqDuVSJAI13auNzxl81.jpg', NULL, '312', '131', 123, 123, '12', '<div style=\"font-size:0;position:relative;width:160px;height:50px;\">\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:36px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:92px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:112px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:136px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:156px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:160px;  font-size: 0.6vw;\">23</div></div>\n', NULL, '2021-04-27 10:05:54', '2021-04-27 10:05:54'),
(24, 2, 2, 28, 2, 'sada32313132132213', 'sfsdfsdfsfqe e rw rw rwr wr', '/storage/product/images/2/UGFl7RpiAewBi3Y51RXI.jpg', NULL, 'dsadá', 'ádsadadsa321312321321', 123, 12312, '1321', '<div style=\"font-size:0;position:relative;width:160px;height:50px;\">\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:36px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:68px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:100px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:112px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:136px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:156px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:160px;  font-size: 0.6vw;\">24</div></div>\n', NULL, '2021-04-28 04:52:24', '2021-06-17 16:30:35'),
(27, 3, 2, 2, 3, '1232131231213', '2321wqeqêwqeqe', '/storage/product/images/2/v3DwTFc1MyJotqpGKDC0.jpg', NULL, '213123', '123123313123123', 123131, 12313, 'ewqewqewqe', '<div style=\"font-size:0;position:relative;width:448px;height:50px;\">\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:40px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:68px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:116px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:136px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:144px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:152px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:160px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:180px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:184px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:188px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:192px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:200px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:212px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:228px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:240px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:244px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:248px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:256px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:264px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:276px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:280px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:284px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:288px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:292px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:304px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:308px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:312px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:320px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:328px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:336px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:340px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:344px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:352px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:360px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:372px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:376px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:380px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:384px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:392px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:400px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:404px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:412px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:416px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:424px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:428px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:436px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:444px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:448px;  font-size: 0.6vw;\">12313123213</div></div>\n', NULL, '2021-05-18 16:11:20', '2021-06-17 16:31:06'),
(28, 3, 2, 2, 2, 'Cá kho đông lạnh', 'Cá kho đông lạnh', '/storage/product/images/2/ubMQjVeyZPPzEqeE7AGt.jpg', NULL, 'VN', 'Thức ăn siêu thị', 0, 1, 'kg', '<div style=\"font-size:0;position:relative;width:192px;height:50px;\">\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:40px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:112px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:116px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:136px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:152px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:156px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:160px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:172px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:180px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:188px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:192px;  font-size: 0.6vw;\">111</div></div>\n', NULL, '2021-06-06 15:43:26', '2021-06-17 16:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `so`
--

CREATE TABLE `so` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachiso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoaiso` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faxso` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `so`
--

INSERT INTO `so` (`id`, `tenso`, `diachiso`, `emailso`, `dienthoaiso`, `faxso`, `webso`, `created_at`, `updated_at`) VALUES
(1, 'Khoa học và Công nghệ', 'Cần Thơ', 'skhvcnct@etc.vn', NULL, NULL, 'http://www.aaa.etc.vn', '2021-04-23 07:06:38', '2021-05-30 13:20:33'),
(2, 'Công Thương', 'Cần Thơ', 'ctct@etc.vn', '987654321', '987654321', 'http://www.ctct.etc.vn', '2021-04-23 07:07:17', '2021-05-30 03:21:28'),
(5, 'Sở địa chính', 'Cần Thơ', 'diachinh@gmail.com', '0987654321', '0987654321', 'https://diachinh.com', '2021-05-04 14:40:02', '2021-05-30 03:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan_vaitro`
--

CREATE TABLE `taikhoan_vaitro` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idtaikhoan` bigint(20) NOT NULL,
  `idvaitro` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taikhoan_vaitro`
--

INSERT INTO `taikhoan_vaitro` (`id`, `idtaikhoan`, `idvaitro`, `created_at`, `updated_at`) VALUES
(1, 10, 1, NULL, NULL),
(2, 10, 2, NULL, NULL),
(3, 11, 1, NULL, NULL),
(4, 11, 2, NULL, NULL),
(5, 12, 1, NULL, NULL),
(6, 16, 1, NULL, NULL),
(9, 16, 2, NULL, NULL),
(12, 4, 6, NULL, NULL),
(15, 20, 3, NULL, NULL),
(16, 21, 3, NULL, NULL),
(17, 22, 3, NULL, NULL),
(19, 23, 6, NULL, NULL),
(20, 23, 5, NULL, NULL),
(21, 24, 3, NULL, NULL),
(25, 28, 12, NULL, NULL),
(26, 1, 1, NULL, NULL),
(27, 2, 2, NULL, NULL),
(28, 35, 2, NULL, NULL),
(31, 38, 2, NULL, NULL),
(32, 28, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thongtin`
--

CREATE TABLE `thongtin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idtaikhoan` bigint(20) NOT NULL,
  `hothanhvien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenthanhvien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gioitinhthanhvien` smallint(6) DEFAULT NULL,
  `hinhanhthanhvien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namsinh` date DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dienthoai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thongtin`
--

INSERT INTO `thongtin` (`id`, `idtaikhoan`, `hothanhvien`, `tenthanhvien`, `gioitinhthanhvien`, `hinhanhthanhvien`, `namsinh`, `diachi`, `dienthoai`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Huy', 1, '/storage/profile/1/m5nElWaHjYC5YGmDzr5u.jpg', '1999-12-07', 'Vĩnh Long', '0938858944', '2021-04-23 07:00:25', '2021-04-27 11:56:12'),
(2, 2, 'Nguyễn', 'Huy', 1, '/storage/profile/2/D9wtFxLc7fKeNlLYE08E.jpg', '1999-12-07', 'kkj', '4545621315', '2021-04-24 21:00:06', '2021-06-17 17:18:27'),
(3, 3, 'Trần', 'Tú', 1, '/storage/profile/3/UL9bFa5gVjogBcLbvUMJ.jpg', '2021-03-30', 'Hậu Giang', '0122558866', '2021-04-25 20:38:25', '2021-04-25 20:57:35'),
(4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 20:58:25', '2021-04-25 20:58:25'),
(6, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 21:58:56', '2021-04-25 21:58:56'),
(7, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 22:08:21', '2021-04-25 22:08:21'),
(8, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 23:42:39', '2021-04-25 23:42:39'),
(9, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 23:48:05', '2021-04-25 23:48:05'),
(10, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 23:55:24', '2021-04-25 23:55:24'),
(11, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 23:56:00', '2021-04-25 23:56:00'),
(12, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 23:59:35', '2021-04-25 23:59:35'),
(13, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-26 00:03:07', '2021-04-26 00:03:07'),
(14, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-26 00:04:07', '2021-04-26 00:04:07'),
(16, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-28 04:32:09', '2021-04-28 04:32:09'),
(17, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-28 04:32:40', '2021-04-28 04:32:40'),
(18, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-28 04:33:31', '2021-04-28 04:33:31'),
(19, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-28 04:36:44', '2021-04-28 04:36:44'),
(20, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-28 04:44:50', '2021-04-28 04:44:50'),
(21, 28, 'ABC', 'ACAC', 1, NULL, '2021-04-06', 'acac', '413123', '2021-04-28 07:20:59', '2021-04-28 07:22:20'),
(26, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 17:16:02', '2021-05-15 17:16:02'),
(27, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-18 11:01:27', '2021-05-18 11:01:27'),
(28, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-18 11:06:36', '2021-05-18 11:06:36'),
(30, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-28 14:53:14', '2021-05-28 14:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `thongtingiaidoan`
--

CREATE TABLE `thongtingiaidoan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idgiaidoan` bigint(20) NOT NULL,
  `motacongviec` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tencongviec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoigianbatdau` date NOT NULL,
  `thoigiandukien` int(11) NOT NULL,
  `thoigianhoanthanh` date NOT NULL,
  `trehan` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thongtingiaidoan`
--

INSERT INTO `thongtingiaidoan` (`id`, `idgiaidoan`, `motacongviec`, `tencongviec`, `thoigianbatdau`, `thoigiandukien`, `thoigianhoanthanh`, `trehan`, `created_at`, `updated_at`) VALUES
(4, 1, '<p>;ijopijp</p>', 'ihlhklgk', '2021-05-18', 45, '2021-05-28', 4, '2021-05-19 15:11:56', '2021-05-19 15:11:56'),
(5, 1, '<p>8908989</p>', 'ipipip', '2021-05-18', 9, '2021-05-20', 9, '2021-05-19 16:09:29', '2021-05-19 16:09:29'),
(6, 1, '<p>0890</p>', 'po\'op\'o', '2021-05-18', 9, '2021-05-21', 90, '2021-05-19 16:09:29', '2021-05-19 16:09:29'),
(7, 4, '<p>21212122121211212121212</p>', 'eqưeqưewqeqưe', '2021-06-18', 122, '2022-01-22', 23, '2021-06-17 07:14:09', '2021-06-17 07:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idchuyenmuc` bigint(20) NOT NULL,
  `idcongty` bigint(20) NOT NULL,
  `idtaikhoan` bigint(20) NOT NULL,
  `ngaydangtintuc` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tieudetintuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtattintuc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidungtintuc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanhtintuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `videotintuc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loaitintuc` smallint(6) NOT NULL DEFAULT '0' COMMENT '1-nổi bật, 0-không nổi bật',
  `duyettintuc` smallint(6) NOT NULL DEFAULT '0' COMMENT '1-đã duyệt, 0-chưa duyệt',
  `xuatbantintuc` smallint(6) NOT NULL DEFAULT '0' COMMENT '1-duyệt xuất bản, 0-chưa được xuất bản',
  `ngayxuatban` timestamp NULL DEFAULT NULL,
  `lydogo` smallint(6) NOT NULL DEFAULT '0' COMMENT '1-có, 0-không',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`id`, `idchuyenmuc`, `idcongty`, `idtaikhoan`, `ngaydangtintuc`, `tieudetintuc`, `tomtattintuc`, `noidungtintuc`, `hinhanhtintuc`, `videotintuc`, `loaitintuc`, `duyettintuc`, `xuatbantintuc`, `ngayxuatban`, `lydogo`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, '2021-06-17 06:39:06', 'tin113123121231321213', '<p>tomtat1ffsdfáđàá</p>', 'noidung14565611536156153', '/storage/news/image/1/wfmdffzcTuQv4QSCqI7p.jpg', NULL, 1, 1, 0, NULL, 0, NULL, '2021-06-17 06:39:06'),
(2, 1, 2, 2, '2021-06-17 05:59:45', 'tin2', 'tomtat2', 'noidung2', '/hinhanh/24393.cafe.jpg', NULL, 1, 1, 1, '2021-06-17 05:59:45', 0, NULL, '2021-06-17 05:59:45'),
(3, 1, 2, 2, '2021-06-17 04:44:18', 'tin3', 'noidung3', 'noidung3 435353', '/hinhanh/40651.khautrang.png', NULL, 1, 0, 0, NULL, 1, NULL, '2021-06-17 04:44:18'),
(4, 1, 2, 2, '2021-06-17 04:44:22', 'Indonesia không hưởng quả phạt góc nào trước Việt Nam', 'Bên cạnh tỷ số 4-0, thế trận áp đảo của Việt Nam trước Indonesia còn thể hiện qua số phạt góc cũng như dứt điểm, trong trận đấu thuộc vòng loại World Cup 2022 tối 7/6.\r\n\r\nTrong hiệp một, Việt Nam dồn ép và hưởng tới 10', 'Trong hiệp một, Việt Nam dồn ép và hưởng tới 10 quả phạt góc. Nhiều lần Quang Hải đá phạt góc thẳng ra tuyến hai cho Tuấn Anh hoặc cầu thủ vào thay người Xuân Trường sút xa. Nguy hiểm nhất là cú vô-lê của Tuấn Anh ngay phút thứ 6, bóng đi căng nhưng trúng vị trí thủ môn Nadeo Argawinata.\r\n\r\nSang hiệp hai, Việt Nam tạo ra thêm năm quả phạt góc. Trong đó, quả cuối cùng dẫn tới bàn của Công Phượng phút 67. Xuân Trường sút phạt về cột gần cho Tiến Linh chạy cắt mặt đánh đầu ngược vào trong. Công Phượng bị bất ngờ khi bóng bay đến nhưng vẫn kịp dùng đùi trái đẩy bóng vào lưới cận thành, nâng tỷ số lên 3-0. Kể từ đó, Việt Nam đá giữ sức và không tạo ra thêm phạt góc.\r\n\r\nIndonesia không được đá phạt góc lần nào trong cả trận. Họ cũng không sút được lần nào trong hiệp một. Sang hiệp hai, Indonesia dứt điểm được bốn lần, trong đó một pha bị thủ môn Tấn Trường bắt gọn và một lần trúng xà. Việt Nam cả trận tung ra 13 cú dứt điểm, ghi bốn bàn nhờ công Tiến Linh, Quang Hải, Công Phượng và Văn Thanh trong hiệp hai.\r\n\r\nTỷ lệ kiểm soát bóng cũng nghiêng hẳn về Việt Nam, có lúc lên tới 71% thời gian. Indonesia chỉ hơn Việt Nam về số pha phạm lỗi (16 so với 10) và số thẻ vàng (5 so với 2).\r\n\r\nNhờ chiến thắng này, thầy trò Park Hang-seo giữ đỉnh bảng G với 14 điểm, hơn UAE hai điểm. Ở loạt trận áp chót tối 11/6, Việt Nam gặp Malaysia, còn Indonesia đụng UAE.', '/hinhanh/62409.3277909_3d_red_supercar-wallpaper-1920x1080.jpg', NULL, 1, 1, 1, NULL, 1, NULL, '2021-06-17 04:44:22'),
(5, 2, 2, 1, '2021-06-17 04:44:23', 'tieude5', 'tomtat5', 'noidung5', '/hinhanh/24393.cafe.jpg', NULL, 1, 1, 1, NULL, 0, NULL, '2021-06-17 04:44:23'),
(6, 2, 1, 1, '2021-06-17 04:38:03', 'tieude6', 'tomtat6', 'noidung6', '/hinhanh/24393.cafe.jpg', NULL, 1, 1, 1, NULL, 0, NULL, '2021-06-17 04:38:03'),
(7, 2, 1, 1, '2021-06-17 04:37:51', 'tieude7', 'tomtat7', 'noidung7\r\n', '/hinhanh/24393.cafe.jpg', NULL, 1, 1, 1, NULL, 0, NULL, '2021-06-17 04:37:51'),
(8, 2, 1, 1, '2021-06-17 04:38:05', 'tieude8', 'tomtat8', 'noidung8', '/hinhanh/24393.cafe.jpg', NULL, 1, 1, 1, NULL, 0, NULL, '2021-06-17 04:38:05'),
(9, 2, 1, 1, '2021-06-17 04:37:06', 'tieude9', 'tomtat9', 'noidung9', '/hinhanh/24393.cafe.jpg', NULL, 1, 1, 1, NULL, 0, NULL, '2021-06-17 04:37:06'),
(10, 2, 1, 1, '2021-06-17 04:36:29', 'tieude10', 'tomtat10', 'noidung10', '/hinhanh/24393.cafe.jpg', NULL, 1, 1, 1, NULL, 0, NULL, '2021-06-17 04:36:29'),
(11, 1, 2, 2, '2021-06-11 15:46:47', 'tin5', 'noidung5', 'noidung5', '/hinhanh/79059.quan2.jpg', NULL, 1, 1, 1, NULL, 1, NULL, '2021-06-09 08:04:49'),
(12, 1, 2, 2, '2021-06-11 15:46:49', 'tin6', 'noidung6', 'noidung6', '/hinhanh/16131.khautrang.png', NULL, 1, 1, 1, NULL, 1, NULL, '2021-06-09 09:26:53'),
(13, 2, 2, 2, '2021-06-11 15:46:51', 'Siêu xe về VN qwer tyui opas dfgh jklz xcvb nm,q ưerty uiop asdf ghjkSiêu xe về VN qwer tyui opas dfgh jklz', 'noidung7', 'noidung7', '/hinhanh/62409.3277909_3d_red_supercar-wallpaper-1920x1080.jpg', NULL, 1, 1, 1, NULL, 1, NULL, '2021-06-09 08:10:16'),
(14, 1, 2, 28, '2021-06-11 15:46:56', 'tin8', 'tomtat8', 'noidung8', '/hinhanh/10311.quan1.jpg', NULL, 0, 1, 1, NULL, 1, NULL, '2021-06-04 15:02:48'),
(16, 2, 1, 2, '2021-06-13 16:50:08', 'q', 'q', 'q', '', NULL, 0, 0, 0, NULL, 0, NULL, NULL),
(17, 2, 1, 2, '2021-06-13 16:50:05', 'q', 'q', 'q', '', NULL, 0, 0, 0, NULL, 0, NULL, NULL),
(18, 2, 1, 2, '2021-06-13 16:50:03', 'q', 'q', 'q', '', NULL, 0, 0, 0, NULL, 0, NULL, NULL),
(19, 2, 1, 2, '2021-06-13 16:50:04', 'q', 'q', 'q', '', NULL, 0, 0, 0, NULL, 0, NULL, NULL),
(22, 4, 2, 2, '2021-06-11 15:47:00', 'dấdađâsdasdasd', '<p>đâsdaádasdasdasdas</p>', '<p>sdasdadasdasdad</p>', '/storage/news/image/2/6XyDKrVqkOmxCv7lrLKO.jpg', NULL, 1, 1, 1, NULL, 0, NULL, '2021-06-10 08:56:39'),
(23, 4, 2, 2, '2021-06-11 15:47:01', 'Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline', '<p>Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhân</p>', '<p>Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhânn<br></p>', '/storage/news/image/2/ihUhWX87fUaa0xVUsHzK.jpg', NULL, 1, 1, 1, NULL, 0, NULL, '2021-06-10 09:09:07'),
(24, 4, 2, 2, '2021-06-11 15:47:04', 'Thêm \'biệt thự di động\' Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn', '<p><span style=\"color: rgb(136, 136, 136); font-family: Arial; font-size: 13px;\">Mercedes-Maybach S 650 Pullman là mẫu xe sang bậc nhất hiện nay của thương hiệu ngôi sao 3 cánh, được sản xuất dành cho những VIP.</span><br></p>', '<p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Mới đây, một chiếc Mercedes-Maybach S 650 Pullman đã xuất hiện tại showroom tư nhân ở Sài Gòn. Nhiều khả năng đây chính là chiếc S 650 Pullman thứ ba được đưa về nước.</p><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Về ngoại thất, xe sở hữu màu đen ở toàn bộ phần thân xe, tương đồng với chiếc đầu tiên được nhập khẩu bởi một đại lý tư nhân có tiếng ngoài Hà Nội. Hai chiếc này còn sở hữu bộ mâm giống nhau nên càng khó để phân biệt. Trong khi đó, chiếc thứ 2 mang 2 tông màu tương phản.</p><div class=\"VCSortableInPreviewMode noCaption active\" type=\"Photo\" style=\"padding: 0px; margin-top: 0px; margin-right: auto; margin-left: auto; outline: 0px; display: inline-block; position: relative; text-align: center; transition: all 0.3s ease-in-out 0s; width: 640px; z-index: 100; visibility: visible; overflow-wrap: break-word; cursor: default; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; background-color: rgb(255, 255, 255); margin-bottom: 20px !important;\"><div style=\"padding: 0px; margin: 0px; outline: 0px; position: relative; display: inline-block;\"><div id=\"adnzone_511318\" style=\"padding: 0px; margin: 0px auto; outline: 0px; clear: both; text-align: left; position: absolute; width: 640px; top: 0px;\"><iframe id=\"adnzone_511318_0_80302\" scrolling=\"no\" frameborder=\"no\" style=\"padding: 0px; margin: 0px; width: 640px; height: 132px; border-width: initial; border-style: none; z-index: 2; position: relative; transition: height 1s ease-out 0s;\"></iframe></div><a href=\"https://autopro8.mediacdn.vn/2021/6/10/1924215169500720257929192717118227332894463n-16233093746582091287651.jpg\" data-fancybox=\"img-lightbox\" title=\"\" class=\"detail-img-lightbox\" style=\"padding: 0px; margin: 0px; display: block; outline: none !important;\"><img src=\"https://autopro8.mediacdn.vn/thumb_w/640/2021/6/10/1924215169500720257929192717118227332894463n-16233093746582091287651.jpg\" id=\"img_bdffd720-c9bb-11eb-9c2d-57b61dc229c1\" w=\"960\" h=\"720\" alt=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 1.\" title=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 1.\" rel=\"lightbox\" photoid=\"bdffd720-c9bb-11eb-9c2d-57b61dc229c1\" type=\"photo\" data-original=\"https://autopro8.mediacdn.vn/2021/6/10/1924215169500720257929192717118227332894463n-16233093746582091287651.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"padding-top: unset; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin: 137px auto 0px; display: inline-block; vertical-align: top; pointer-events: none; max-width: 100%;\"></a></div></div><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Ngoại thất của xe sở hữu màu đen bóng, điểm xuyết là các chi tiết bằng kim loại sáng bóng như tay nắm cửa, lưới tản nhiệt, viền cửa sổ... tương tự Mercedes-Maybach S 650 thông thường. Điểm khác biệt lớn nhất của bản Pullman là kích thước xe lên tới 6,5 mét.</p><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Mercedes-Maybach S 650 Pullman thực chất là phiên bản facelift và được đổi tên của phiên bản Mercedes-Maybach S 600 Pullman. Trước đó, giới mê xe Việt đã có cơ hội đón hai chiếc S 600 Pullman với màu sơn trắng và đen.</p><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Sự thay đổi lớn nhất giữa phiên bản S 650 và S 600 đó là&nbsp;phần đầu xe được thiết kế lại với hốc gió mới làm tăng khả năng làm mát động cơ và hệ thống đèn pha LED Multibeam có khả năng chiếu sáng hơn 600 m. Ngoài ra, một thanh nẹp chrome được bổ sung cho cả phần cản trước và cản sau của xe.</p><div class=\"VCSortableInPreviewMode active noCaption\" type=\"Photo\" style=\"padding: 0px; margin-top: 0px; margin-right: auto; margin-left: auto; outline: 0px; display: inline-block; position: relative; text-align: center; transition: all 0.3s ease-in-out 0s; width: 640px; z-index: 100; visibility: visible; overflow-wrap: break-word; cursor: default; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; background-color: rgb(255, 255, 255); margin-bottom: 20px !important;\"><div style=\"padding: 0px; margin: 0px; outline: 0px;\"><a href=\"https://autopro8.mediacdn.vn/2021/6/10/photo-1-16233155612931639098081.jpg\" data-fancybox=\"img-lightbox\" title=\"\" class=\"detail-img-lightbox\" style=\"padding: 0px; margin: 0px; display: block; outline: none !important;\"><img src=\"https://autopro8.mediacdn.vn/thumb_w/640/2021/6/10/photo-1-16233155612931639098081.jpg\" id=\"img_25260ec0-c9ca-11eb-b822-39bd312c79ca\" w=\"1024\" h=\"768\" alt=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 2.\" title=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 2.\" rel=\"lightbox\" photoid=\"25260ec0-c9ca-11eb-b822-39bd312c79ca\" type=\"photo\" data-original=\"https://autopro8.mediacdn.vn/2021/6/10/photo-1-16233155612931639098081.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"padding: 0px; margin: 0px auto; display: inline-block; vertical-align: top; pointer-events: none; max-width: 100%;\"></a></div></div><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Được biết, showroom nhập về chiếc Mercedes-Maybach S 650 Pullman này toạ lạc trên đường An Dương Vương, Q.5, TP.HCM. Đây cũng chính là đơn vị nhập về hai chiếc Ford GT, chiếc Ferrari 488 Pista Spider thứ hai và chiếc Mercedes-Maybach S 650 Pullman hai tông màu kể trên.<br style=\"padding: 0px; margin: 0px;\"></p><div class=\"VCSortableInPreviewMode active noCaption\" type=\"Photo\" style=\"padding: 0px; margin-top: 0px; margin-right: auto; margin-left: auto; outline: 0px; display: inline-block; position: relative; text-align: center; transition: all 0.3s ease-in-out 0s; width: 640px; z-index: 100; visibility: visible; overflow-wrap: break-word; cursor: default; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; background-color: rgb(255, 255, 255); margin-bottom: 20px !important;\"><div style=\"padding: 0px; margin: 0px; outline: 0px;\"><a href=\"https://autopro8.mediacdn.vn/2021/6/10/1943446289472095927458295045540580620425387n-1623309374681828586472.jpg\" data-fancybox=\"img-lightbox\" title=\"\" class=\"detail-img-lightbox\" style=\"padding: 0px; margin: 0px; display: block; outline: none !important;\"><img src=\"https://autopro8.mediacdn.vn/thumb_w/640/2021/6/10/1943446289472095927458295045540580620425387n-1623309374681828586472.jpg\" id=\"img_be1708a0-c9bb-11eb-80f3-9937f5f0f3df\" w=\"960\" h=\"720\" alt=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 3.\" title=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 3.\" rel=\"lightbox\" photoid=\"be1708a0-c9bb-11eb-80f3-9937f5f0f3df\" type=\"photo\" data-original=\"https://autopro8.mediacdn.vn/2021/6/10/1943446289472095927458295045540580620425387n-1623309374681828586472.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"padding: 0px; margin: 0px auto; display: inline-block; vertical-align: top; pointer-events: none; max-width: 100%;\"></a></div></div><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Bên trong nội thất, vô-lăng được thay đổi lên loại 3 chấu, các nút bấm trên vô-lăng được thiết kế lại. Cụm màn hình kích thước 12,3 inch ở phía sau vô lăng cũng như màn hình giải trí trung tâm có giao diện mới mẻ hơn, độ phân giải được cải thiết cho chất lượng sắc nét hơn. Nhìn chung, khoang lái của bản Pullman với bản thường không có sự khác biệt.</p><div id=\"admzone480456\" class=\"mgt10\" style=\"padding: 0px; margin: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; background-color: rgb(255, 255, 255);\"><div id=\"zone-480456\" style=\"padding: 0px; margin: 0px; outline: 0px;\"><div id=\"share-jkkj65ph\" style=\"padding: 0px; margin: 0px; outline: 0px;\"><div id=\"placement-k6ssarfg\" revenue=\"cpm\" style=\"padding: 0px; margin: 0px; outline: 0px;\"><div id=\"banner-480456-554230\" style=\"padding: 0px; margin: 0px; outline: 0px; min-height: 10px; min-width: 10px;\"><div id=\"slot-2-480456-554230\" style=\"padding: 0px; margin: 0px; outline: 0px;\"><div id=\"sspbid_3345\" style=\"padding: 0px; margin: 0px; outline: 0px;\"></div></div></div></div></div></div></div><div class=\"VCSortableInPreviewMode noCaption\" type=\"Photo\" style=\"padding: 0px; margin-top: 0px; margin-right: auto; margin-left: auto; outline: 0px; display: inline-block; position: relative; text-align: center; transition: all 0.3s ease-in-out 0s; width: 640px; z-index: 100; visibility: visible; overflow-wrap: break-word; cursor: default; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; background-color: rgb(255, 255, 255); margin-bottom: 20px !important;\"><div style=\"padding: 0px; margin: 0px; outline: 0px;\"><a href=\"https://autopro8.mediacdn.vn/2020/11/18/robb-pullman-7-16057073259921924881895.jpg\" data-fancybox=\"img-lightbox\" title=\"\" class=\"detail-img-lightbox\" style=\"padding: 0px; margin: 0px; display: block; outline: none !important;\"><img src=\"https://autopro8.mediacdn.vn/thumb_w/640/2020/11/18/robb-pullman-7-16057073259921924881895.jpg\" id=\"img_c9e2ee40-29a4-11eb-b4c3-1b5625fe3d04\" w=\"1280\" h=\"720\" alt=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 4.\" title=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 4.\" rel=\"lightbox\" photoid=\"c9e2ee40-29a4-11eb-b4c3-1b5625fe3d04\" type=\"photo\" data-original=\"https://autopro8.mediacdn.vn/2020/11/18/robb-pullman-7-16057073259921924881895.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"padding: 0px; margin: 0px auto; display: inline-block; vertical-align: top; pointer-events: none; max-width: 100%;\"></a></div></div><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Điểm nhấn của bản Pullman là hàng ghế sau. So với phiên bản S-Class Maybach thường, S 650 Pullman được bổ sung 2 ghế phụ cho khoang sau và có thể gập gọn khi không cần thiết. Phần ghế ngồi phụ này đồng thời được tích hợp 2 màn hình giải trí. Hệ thống âm thanh là loại hàng hiệu Burmester 3D cao cấp. Để tăng tính riêng tư, xe cũng được trang bị một vách ngăn giữa khoang hành khách và tài xế. Một tấm kính nhỏ có thể trượt lên/xuống và làm mờ khi chủ nhân cần không gian riêng tư.</p><div class=\"VCSortableInPreviewMode active noCaption\" type=\"Photo\" style=\"padding: 0px; margin-top: 0px; margin-right: auto; margin-left: auto; outline: 0px; display: inline-block; position: relative; text-align: center; transition: all 0.3s ease-in-out 0s; width: 640px; z-index: 100; visibility: visible; overflow-wrap: break-word; cursor: default; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; background-color: rgb(255, 255, 255); margin-bottom: 20px !important;\"><div style=\"padding: 0px; margin: 0px; outline: 0px;\"><a href=\"https://autopro8.mediacdn.vn/2020/11/18/robb-pullman-6-1605707325968247657870.jpg\" data-fancybox=\"img-lightbox\" title=\"\" class=\"detail-img-lightbox\" style=\"padding: 0px; margin: 0px; display: block; outline: none !important;\"><img src=\"https://autopro8.mediacdn.vn/thumb_w/640/2020/11/18/robb-pullman-6-1605707325968247657870.jpg\" id=\"img_c9ac4de0-29a4-11eb-80f3-9937f5f0f3df\" w=\"1280\" h=\"720\" alt=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 5.\" title=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 5.\" rel=\"lightbox\" photoid=\"c9ac4de0-29a4-11eb-80f3-9937f5f0f3df\" type=\"photo\" data-original=\"https://autopro8.mediacdn.vn/2020/11/18/robb-pullman-6-1605707325968247657870.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"padding: 0px; margin: 0px auto; display: inline-block; vertical-align: top; pointer-events: none; max-width: 100%;\"></a></div></div><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px;\">Động cơ của Mercedes-Maybach S 650 Pullman là loại V12, tăng áp kép, dung tích 6 lít, tạo ra công suất tối đa 630 mã lực, mô-men xoắn cực đại 1.000 Nm cùng với hộp số tự động 7 cấp 7G Tronic.</span></p>', '/storage/news/image/2/TYvLG98Y2fh9sZxSHaSG.jpg', NULL, 1, 1, 1, NULL, 0, NULL, '2021-06-10 09:30:14'),
(25, 1, 1, 1, '2021-06-11 18:45:19', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged</span><br></p>', '<p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchange</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\"><br></span><br></p>', '/storage/news/image/1/4sZqVKRhMYH02vprXK0g.jpg', NULL, 0, 0, 0, NULL, 0, '2021-06-11 17:40:02', '2021-06-11 18:45:19'),
(26, 1, 2, 1, '2021-06-17 06:05:22', '223123135465485654', '<p>kjkjoljklklhkhjklhjkhjkhjhjhjhjl</p>', '<p>gỳtftỳvtyctct cgcghj ghvgh ghjvgvjvjgvvg vvgvgv gvv gg gv jgkhvt ft ohio io nion</p>', '/storage/news/image/1/i8l2CJcdKVCXgQnU2Nhy.jpg', NULL, 1, 1, 1, NULL, 0, '2021-06-12 06:37:40', '2021-06-17 06:05:22'),
(27, 4, 2, 2, '2021-06-17 06:08:14', '31313212qđứaàdà sdf', '<p> D ÁD Ád ád AD SDF  F SF SDF SF SF</p>', '<p> ÁD FDSF SDF SDFSDÀ DSF SD SDF SDA SDA SADF SADF S</p>', '/storage/news/image/2/JRkaRsNQMH9jaDqW1hLU.jpg', '/storage/news/video/2/Dx7h4gMVFADyJeThbpgl.mp4', 1, 1, 1, '2021-06-18 15:23:18', 1, NULL, '2021-06-12 12:08:09'),
(28, 2, 2, 2, '2021-06-18 15:09:13', 'Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhân', '<p>Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhân<br></p>', '<p>Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhân<br></p>', '/storage/news/image/2/1DqrGmAOHVJBnfa5miYj.jpg', NULL, 1, 1, 1, '2021-06-18 15:23:46', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idcongty` bigint(20) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loaitaikhoan` smallint(6) NOT NULL DEFAULT '0' COMMENT '1-admin, 0-normal, 2-administrator',
  `trangthai` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `idcongty`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `loaitaikhoan`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin@dev.com', '2021-05-28 14:57:46', '$2y$10$vFxTKDYsc5xa6LW1UxdTZeeF5Sbk2dzL8kkh/1TUERQnp1nawEULu', NULL, NULL, NULL, 2, 0, NULL, '2021-05-26 16:21:16'),
(2, 2, 'admin2@dev.com', '2021-05-28 14:57:46', '$2y$10$vFxTKDYsc5xa6LW1UxdTZeeF5Sbk2dzL8kkh/1TUERQnp1nawEULu', NULL, NULL, 'FkFkh4fdqeMLCqEAjeCirakFEm8rIaivV6xtVYjEz4MLP3Jo7BpQvfb7Rwkq', 1, 0, NULL, '2021-05-27 15:19:35'),
(28, 2, 'admin3@dev.com', '2021-05-28 14:57:46', '$2y$10$vFxTKDYsc5xa6LW1UxdTZeeF5Sbk2dzL8kkh/1TUERQnp1nawEULu', NULL, NULL, NULL, 1, 0, '2021-04-28 07:20:59', '2021-05-04 14:27:22'),
(36, NULL, 'chau@gmail.com', '2021-05-28 14:57:46', '$2y$10$dwkz7Fr6NzxHwA7n9XUnwOqdDGjIMgNm.mjlrwko9yJO0PfH.cGF2', NULL, NULL, NULL, 1, 0, '2021-05-18 11:01:26', '2021-05-18 11:02:31'),
(37, NULL, 'trung@dev.com', '2021-05-28 14:57:46', '$2y$10$JoBQ0bj7qN6YvW/4xNoM.eMZO.hOinupFaXyJwlZ.O2Q6S5SN1VU.', NULL, NULL, NULL, 1, 0, '2021-05-18 11:06:36', '2021-05-18 11:08:46'),
(47, NULL, 'klthuynguyen1998@gmail.com', '2021-05-28 14:57:46', '$2y$10$yBhLxLXqcvLvGKvpn4eDfOeHBQg45rTZSdf8wWgbzGTKSfPWvTZ3m', NULL, NULL, 'pjmwFZUtPaWEe4AvbkNLEv91ikwwM9PVUK2QZhJsfVuJPHtlV9G3590T3Jgq', 0, 0, '2021-05-28 14:53:09', '2021-05-28 15:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `vaitro`
--

CREATE TABLE `vaitro` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idcongty` bigint(20) DEFAULT NULL,
  `tenvaitro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motavaitro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaivaitro` smallint(6) DEFAULT NULL COMMENT '1-administrator, 2-company',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vaitro`
--

INSERT INTO `vaitro` (`id`, `idcongty`, `tenvaitro`, `motavaitro`, `loaivaitro`, `created_at`, `updated_at`) VALUES
(1, NULL, 'System Administrator', 'Quản trị hệ thống', 1, NULL, '2021-04-30 02:01:21'),
(2, NULL, 'Company Administrator', 'Quản trị công ty', 2, NULL, '2021-04-30 02:01:49'),
(12, 2, 'Test', 'Thử nghiệm', NULL, '2021-04-29 20:39:15', '2021-04-29 20:39:15'),
(13, 2, 'Quản lý tin tức', 'Toàn quyền quản trị module tin tức', NULL, '2021-06-02 13:01:41', '2021-06-02 13:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `vaitro_quyen`
--

CREATE TABLE `vaitro_quyen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idvaitro` bigint(20) NOT NULL,
  `idquyen` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vaitro_quyen`
--

INSERT INTO `vaitro_quyen` (`id`, `idvaitro`, `idquyen`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 1, 4, NULL, NULL),
(4, 1, 5, NULL, NULL),
(5, 1, 6, NULL, NULL),
(6, 1, 8, NULL, NULL),
(7, 1, 9, NULL, NULL),
(8, 1, 10, NULL, NULL),
(9, 1, 11, NULL, NULL),
(10, 1, 12, NULL, NULL),
(11, 1, 14, NULL, NULL),
(12, 1, 15, NULL, NULL),
(13, 1, 16, NULL, NULL),
(14, 1, 17, NULL, NULL),
(15, 1, 18, NULL, NULL),
(16, 1, 20, NULL, NULL),
(17, 1, 21, NULL, NULL),
(18, 1, 22, NULL, NULL),
(19, 1, 23, NULL, NULL),
(20, 1, 24, NULL, NULL),
(21, 1, 26, NULL, NULL),
(22, 1, 27, NULL, NULL),
(23, 1, 28, NULL, NULL),
(24, 1, 29, NULL, NULL),
(25, 1, 30, NULL, NULL),
(26, 1, 32, NULL, NULL),
(27, 1, 33, NULL, NULL),
(28, 1, 34, NULL, NULL),
(29, 1, 35, NULL, NULL),
(30, 1, 36, NULL, NULL),
(31, 1, 38, NULL, NULL),
(32, 1, 39, NULL, NULL),
(33, 1, 40, NULL, NULL),
(34, 1, 41, NULL, NULL),
(35, 1, 42, NULL, NULL),
(37, 1, 45, NULL, NULL),
(38, 1, 46, NULL, NULL),
(39, 1, 47, NULL, NULL),
(40, 1, 48, NULL, NULL),
(41, 1, 50, NULL, NULL),
(42, 1, 51, NULL, NULL),
(43, 1, 52, NULL, NULL),
(44, 1, 53, NULL, NULL),
(45, 1, 54, NULL, NULL),
(46, 1, 56, NULL, NULL),
(47, 1, 57, NULL, NULL),
(48, 1, 58, NULL, NULL),
(49, 1, 59, NULL, NULL),
(50, 1, 60, NULL, NULL),
(51, 1, 62, NULL, NULL),
(52, 1, 63, NULL, NULL),
(53, 1, 64, NULL, NULL),
(54, 1, 65, NULL, NULL),
(55, 1, 66, NULL, NULL),
(56, 1, 68, NULL, NULL),
(57, 1, 69, NULL, NULL),
(58, 1, 70, NULL, NULL),
(59, 1, 71, NULL, NULL),
(60, 1, 72, NULL, NULL),
(61, 1, 74, NULL, NULL),
(62, 1, 75, NULL, NULL),
(63, 1, 76, NULL, NULL),
(64, 1, 77, NULL, NULL),
(65, 1, 78, NULL, NULL),
(66, 1, 79, NULL, NULL),
(67, 1, 80, NULL, NULL),
(68, 2, 8, NULL, NULL),
(69, 2, 9, NULL, NULL),
(70, 2, 10, NULL, NULL),
(71, 2, 11, NULL, NULL),
(72, 2, 12, NULL, NULL),
(73, 2, 14, NULL, NULL),
(74, 2, 15, NULL, NULL),
(75, 2, 16, NULL, NULL),
(76, 2, 17, NULL, NULL),
(77, 2, 18, NULL, NULL),
(78, 2, 20, NULL, NULL),
(79, 2, 21, NULL, NULL),
(80, 2, 22, NULL, NULL),
(81, 2, 23, NULL, NULL),
(82, 2, 24, NULL, NULL),
(83, 2, 26, NULL, NULL),
(84, 2, 27, NULL, NULL),
(85, 2, 28, NULL, NULL),
(86, 2, 29, NULL, NULL),
(87, 2, 30, NULL, NULL),
(88, 2, 38, NULL, NULL),
(89, 2, 39, NULL, NULL),
(90, 2, 40, NULL, NULL),
(91, 2, 41, NULL, NULL),
(92, 2, 42, NULL, NULL),
(93, 2, 50, NULL, NULL),
(94, 2, 51, NULL, NULL),
(95, 2, 52, NULL, NULL),
(96, 2, 53, NULL, NULL),
(97, 2, 54, NULL, NULL),
(98, 2, 62, NULL, NULL),
(99, 2, 63, NULL, NULL),
(100, 2, 64, NULL, NULL),
(101, 2, 65, NULL, NULL),
(102, 2, 66, NULL, NULL),
(103, 2, 68, NULL, NULL),
(104, 2, 69, NULL, NULL),
(105, 2, 70, NULL, NULL),
(106, 2, 71, NULL, NULL),
(107, 2, 72, NULL, NULL),
(108, 2, 74, NULL, NULL),
(109, 2, 75, NULL, NULL),
(110, 2, 76, NULL, NULL),
(111, 2, 77, NULL, NULL),
(112, 2, 78, NULL, NULL),
(113, 2, 79, NULL, NULL),
(114, 2, 80, NULL, NULL),
(116, 12, 62, NULL, NULL),
(117, 12, 63, NULL, NULL),
(126, 1, 44, NULL, NULL),
(127, 12, 64, NULL, NULL),
(128, 1, 81, NULL, NULL),
(129, 1, 82, NULL, NULL),
(130, 13, 74, NULL, NULL),
(131, 13, 75, NULL, NULL),
(132, 13, 76, NULL, NULL),
(133, 13, 77, NULL, NULL),
(134, 13, 78, NULL, NULL),
(135, 13, 79, NULL, NULL),
(136, 13, 80, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iddanhgia` bigint(20) NOT NULL,
  `dulieuvideo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videotintuc`
--

CREATE TABLE `videotintuc` (
  `id` bigint(20) NOT NULL,
  `idchuyenmuc` bigint(20) NOT NULL,
  `idcongty` bigint(20) NOT NULL,
  `idtaikhoan` bigint(20) NOT NULL,
  `tieudevideo` varchar(255) NOT NULL,
  `tomtatvideo` text NOT NULL,
  `hinhdaidienvideo` varchar(255) NOT NULL,
  `dulieuvideotintuc` varchar(255) NOT NULL,
  `nguonvideotintuc` varchar(255) NOT NULL,
  `ngaydangvideo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `loaivideotintuc` smallint(6) NOT NULL DEFAULT '0' COMMENT '1-nổi bật, 0-không nổi bật',
  `duyetvideotintuc` smallint(6) NOT NULL DEFAULT '0' COMMENT '1-đã duyệt, 0-chưa duyệt',
  `xuatbanvideotintuc` smallint(6) NOT NULL DEFAULT '0' COMMENT '1-xuất bản, 0-chưa xuất bản',
  `ngayxuatban` timestamp NULL DEFAULT NULL,
  `trangthaithuhoi` smallint(6) NOT NULL DEFAULT '0' COMMENT '1-có, 0-không',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videotintuc`
--

INSERT INTO `videotintuc` (`id`, `idchuyenmuc`, `idcongty`, `idtaikhoan`, `tieudevideo`, `tomtatvideo`, `hinhdaidienvideo`, `dulieuvideotintuc`, `nguonvideotintuc`, `ngaydangvideo`, `loaivideotintuc`, `duyetvideotintuc`, `xuatbanvideotintuc`, `ngayxuatban`, `trangthaithuhoi`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 2, 'Nhạc hay quá đii', '<p>Haccscshcshshsdhsdhádhsfdhsdfh dhj a áhda sda ád ád ád a</p>', '/storage/news/image/2/niQx63LgJtEabf5ADO5i.jpg', '/storage/news/video/2/2jLiZSBCDrJfCu9JA0kH.mp4', 'Trên mạng213231231231', '2021-06-12 13:10:39', 1, 1, 1, '2021-06-17 06:36:05', 0, '2021-06-12 13:05:07', '2021-06-17 06:36:05'),
(2, 4, 2, 2, 'fsdf sdfds fdsf dsf dsf dsfsdf', '<p>dsf dsfdsf sdf ádf sdà sdf sdà sdf sdfsdfsdà</p>', '/storage/news/image/2/kPSr5UfnnTp0D79C6l6S.jpg', '/storage/news/video/2/IpX6QI630OaiwokNbman.mp4', 'ẻwe rưẻ ưẻ ưqẻ ưẻ ử ưẻ ưẻ ử', '2021-06-12 13:33:03', 1, 1, 1, '2021-06-17 06:21:43', 0, '2021-06-12 13:33:03', '2021-06-17 06:21:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chuyenmuc`
--
ALTER TABLE `chuyenmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `congty`
--
ALTER TABLE `congty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subdomain` (`subdomain`);

--
-- Indexes for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `giaidoan`
--
ALTER TABLE `giaidoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hinhanhquangcao`
--
ALTER TABLE `hinhanhquangcao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kho`
--
ALTER TABLE `kho`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lichsutintuc`
--
ALTER TABLE `lichsutintuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linhvuc`
--
ALTER TABLE `linhvuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logtintuc`
--
ALTER TABLE `logtintuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenquyen` (`tenquyen`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `so`
--
ALTER TABLE `so`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taikhoan_vaitro`
--
ALTER TABLE `taikhoan_vaitro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thongtin`
--
ALTER TABLE `thongtin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thongtingiaidoan`
--
ALTER TABLE `thongtingiaidoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vaitro`
--
ALTER TABLE `vaitro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaitro_quyen`
--
ALTER TABLE `vaitro_quyen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videotintuc`
--
ALTER TABLE `videotintuc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chuyenmuc`
--
ALTER TABLE `chuyenmuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `congty`
--
ALTER TABLE `congty`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giaidoan`
--
ALTER TABLE `giaidoan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `hinhanhquangcao`
--
ALTER TABLE `hinhanhquangcao`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `kho`
--
ALTER TABLE `kho`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lichsutintuc`
--
ALTER TABLE `lichsutintuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `linhvuc`
--
ALTER TABLE `linhvuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logtintuc`
--
ALTER TABLE `logtintuc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `quyen`
--
ALTER TABLE `quyen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `so`
--
ALTER TABLE `so`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `taikhoan_vaitro`
--
ALTER TABLE `taikhoan_vaitro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `thongtin`
--
ALTER TABLE `thongtin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `thongtingiaidoan`
--
ALTER TABLE `thongtingiaidoan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `vaitro`
--
ALTER TABLE `vaitro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vaitro_quyen`
--
ALTER TABLE `vaitro_quyen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `videotintuc`
--
ALTER TABLE `videotintuc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
