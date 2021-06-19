-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2021 at 04:45 AM
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
(1, 2, 'Xe và Đời sống', '2021-04-23 00:09:02', '2021-04-23 00:09:13'),
(2, 1, 'Sức khỏe gia đình', '2021-04-23 00:09:39', '2021-04-23 00:09:39'),
(3, 1, 'Giáo Dục và Đào Tạo', '2021-06-08 04:55:45', '2021-06-08 04:55:45'),
(4, 1, 'Tài Nguyên', '2021-06-08 05:12:18', '2021-06-08 05:12:18'),
(5, 4, 'Mẹp vặt', '2021-06-09 00:24:56', '2021-06-09 00:24:56'),
(6, 4, 'Cây Thuốc- Vị Thuốc', '2021-06-09 00:38:31', '2021-06-09 00:38:31'),
(7, 5, 'Kinh Doanh', '2021-06-09 00:38:52', '2021-06-09 00:38:52'),
(8, 5, 'Pháp Luật', '2021-06-09 00:39:27', '2021-06-09 00:39:27'),
(9, 5, 'Đời Sống', '2021-06-09 00:39:43', '2021-06-09 00:39:43'),
(10, 5, 'Giáo dục', '2021-06-09 00:41:54', '2021-06-09 00:41:54'),
(11, 6, 'Vệ Tinh', '2021-06-09 00:42:18', '2021-06-09 00:42:18'),
(12, 6, 'Vệ Tinh', '2021-06-09 00:42:18', '2021-06-09 00:42:18'),
(13, 6, 'Thiên Hà', '2021-06-09 00:42:36', '2021-06-09 00:42:36'),
(14, 7, 'Tự Nhiên', '2021-06-09 00:50:51', '2021-06-09 00:50:51'),
(15, 8, 'Cơ Khí', '2021-06-09 00:51:42', '2021-06-09 00:51:42'),
(16, 9, 'Công Nghệ 4.0', '2021-06-09 00:52:52', '2021-06-09 00:52:52'),
(17, 10, 'Nông Nghiệp', '2021-06-09 00:53:40', '2021-06-09 00:53:40'),
(18, 11, 'Hoạt Động', '2021-06-09 00:54:55', '2021-06-09 00:54:55'),
(19, 12, 'Giải Pháp', '2021-06-09 00:55:50', '2021-06-09 00:55:50'),
(20, 13, 'Trong Nước', '2021-06-09 00:56:48', '2021-06-09 00:56:48'),
(21, 14, 'Dinh Dưỡng', '2021-06-09 00:57:41', '2021-06-09 00:57:41'),
(22, 15, 'Sinh Vật', '2021-06-09 00:58:53', '2021-06-09 00:58:53');

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
(2, 2, 2, 'Công ty Hải Sản Miền Trung', 'Miền Trung', 'ctyhaisan@gmail.com', NULL, NULL, 'https://www.ctyhaisan.vn', '123123123', '2021-06-25', 'Phú Yên', '12123565', '2021-05-18', NULL, NULL, '2021-06-17 14:58:13'),
(3, 1, 1, 'Cty TNHH nhựa Hoàng Thắng', '239 QL 91 P.Tân Hưng, Q.Thốt Nốt, TPCT.', 'toanthang@gmail.com', '7106299979', '7103863990', 'https://can-tho.congtydoanhnghiep.com/cong-ty-tnhh-nhua-hoang-thang', '3345345', '2021-06-10', 'Cần Thơ', '1801475303', '2021-06-08', NULL, NULL, '2021-06-08 21:14:23'),
(4, 1, 1, 'Công ty cổ phần XNK Thủy sản Cần Thơ', 'Lô 2.12, KCN Trà Nóc 2, TP. Cần Thơ', 'sales@caseamex.com', '2923842344', '2923842344', 'http://vasep.com.vn/hoi-vien/thong-tin/cong-ty-cp-xnk-thuy-san-can-tho-100.html', '33453455', '2021-06-22', 'Cần Thơ', '18014753035', '2021-06-08', NULL, NULL, NULL),
(5, 7, 2, 'DNTN cơ khí Trung Anh', '23/4 Nguyễn Việt Dũng P.Lê Bình Q.Cái Răng TPCT.', 'trunganh@gmail.com', '7103525595', '7103525595', 'https://trangvangvietnam.com/listings/1065444/trung-anh-dntn.html', '334534554', '2021-09-24', 'Vĩnh Long', '180147530350', '2021-06-07', NULL, NULL, NULL);

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
(3, 2, 2, 'sdasd', 'xC', 54, 42, 55, 'ac', '2021-04-28 08:31:18', '2021-04-28 08:31:18'),
(4, 1, 1, 'Kho hàng hóa nhập khẩu', 'Ninh Kiều,Cần Thơ', 1000000, 300000, 5000, 'Kho nhập hàng', '2021-06-08 05:05:01', '2021-06-08 05:05:01'),
(5, 3, 1, 'Kho Nhựa', 'Ninh Kiều,Cần Thơ', 1000000, 300000, 5000, '.', '2021-06-08 21:18:05', '2021-06-08 21:18:05'),
(6, 4, 48, 'Kho dự trữ', 'Ninh Kiều,Cần Thơ', 1000000, 300000, 5000, '.', '2021-06-08 21:47:29', '2021-06-10 20:51:32'),
(7, 5, 1, 'Kho cơ khí chính', 'Cai Lậy,Tiền Giang', 200000, 60000, 600, 'Kho cơ khí ,hóa chất', '2021-06-09 07:13:20', '2021-06-10 20:51:49'),
(8, 1, 28, 'Kho hàng hóa', 'Tân Quới, Bình Tân, Vĩnh Long', 10000, 10000, 200, 'Lưu trữ hàng hóa có giá trị', '2021-04-24 21:18:18', '2021-06-10 20:50:34'),
(9, 2, 2, 'Kho hàng lạnh', 'Cần Thơ', 130000, 12300, 220, 'Kho hàng lạnh', '2021-04-27 21:51:43', '2021-06-10 20:50:09'),
(10, 2, 2, 'Kho hàng ép khô', 'Tam Bình,Vĩnh Long', 5400, 4200, 550, 'Kho hàng tồn', '2021-04-28 01:31:18', '2021-06-10 20:51:18');

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
(54, 28, NULL, 2, 'da', '2021-06-18 22:20:48', NULL, NULL),
(55, 28, NULL, 2, 'dá', '2021-06-18 22:33:59', NULL, NULL),
(56, 26, NULL, 2, 'da', '2021-06-18 22:35:39', NULL, NULL),
(57, 27, NULL, 2, 'dá', '2021-06-19 11:07:09', NULL, NULL),
(58, 26, NULL, 2, 'dá', '2021-06-19 11:09:53', NULL, NULL),
(59, NULL, 1, 2, 'Sai sot thông tin', '2021-06-19 11:11:49', '2021-06-19 04:11:49', '2021-06-19 04:11:49'),
(60, NULL, 2, 2, 'Sai sot thông tin', '2021-06-19 11:18:06', '2021-06-19 04:18:06', '2021-06-19 04:18:06'),
(61, NULL, 1, 2, 'Sai sot thông tin', '2021-06-19 11:19:26', '2021-06-19 04:19:26', '2021-06-19 04:19:26'),
(62, 24, NULL, 2, 'dá', '2021-06-19 11:21:09', NULL, NULL);

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
(1, 'Khoa học', 'Khoa học Cần Thơ', '2021-04-23 00:08:03', '2021-05-29 20:24:41'),
(2, 'Công nghệ', 'Công nghệ Cần Thơ', '2021-04-23 00:08:16', '2021-05-29 20:24:52'),
(4, 'Đời Sống', 'Đời SỐng', '2021-06-08 04:32:02', '2021-06-09 04:32:02'),
(5, 'Xã Hội', 'Xả Hội Hiện', '2021-06-09 00:25:44', '2021-06-09 00:25:44'),
(6, 'Vũ Trụ', 'Vũ Trụ Thế Giới', '2021-06-09 00:41:25', '2021-06-09 00:41:25'),
(7, 'Nghiên Cứu', 'Nghiên cứu', '2021-06-09 00:50:17', '2021-06-09 00:50:17'),
(8, 'Công Nghệ', 'Công nghệ hd', '2021-06-09 00:51:20', '2021-06-09 00:51:20'),
(9, 'Thông Tin', 'Thông Tin ngày nay', '2021-06-09 00:52:33', '2021-06-09 00:52:33'),
(10, 'Ứng Dụng', 'Ứng Dụng kỹ thuật', '2021-06-09 00:53:18', '2021-06-09 00:53:18'),
(11, 'Sở Hữu Trí Tuệ', 'Sở Hữu Trí Tuệ', '2021-06-09 00:54:32', '2021-06-09 00:54:32'),
(12, 'Năng Lượng', 'Năng Lượng', '2021-06-09 00:55:29', '2021-06-09 00:55:29'),
(13, 'Hợp Tác', 'Hợp tác thương mại', '2021-06-09 00:56:34', '2021-06-09 00:56:34'),
(14, 'Sức khỏe', 'Sức khỏe dd', '2021-06-09 00:57:27', '2021-06-09 00:57:27'),
(15, 'Thiên Nhiên', 'Thiên nhiên5', '2021-06-09 00:58:38', '2021-06-09 00:58:38');

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
(3, 2, 'afa', 'fsfa', '2021-04-28 08:27:31', '2021-04-28 08:27:31'),
(4, 3, 'Đồ Nhựa', 'Đổ Nhựa', '2021-06-08 21:18:50', '2021-06-08 21:18:50'),
(5, 4, 'Tôm xk', 'Tôm xk', '2021-06-08 21:48:01', '2021-06-08 21:48:01'),
(7, 5, 'Ắc Quy Xe', 'phụ kiện xe', '2021-06-09 07:13:54', '2021-06-09 07:13:54'),
(8, 1, 'Smart Phone', 'Smart Phone', '2021-06-10 20:52:48', '2021-06-10 20:52:48'),
(9, 1, 'Phụ kiện xe', 'Phụ kiện xe', '2021-04-24 21:44:41', '2021-06-10 04:37:15'),
(10, 2, 'Điện thoại thông minh', 'Điện thoại', '2021-04-27 21:51:09', '2021-04-27 21:51:09'),
(11, 2, 'Tôm khô', 'TÔm khô xk', '2021-04-28 01:27:31', '2021-06-09 07:34:11');

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
(113, 28, NULL, 2, 'Xuất bản: tin viet rat hay', '2021-06-18 15:23:46', NULL, NULL),
(114, 28, NULL, 2, 'Duyệt tin: fds', '2021-06-18 15:34:45', NULL, NULL),
(115, 28, NULL, 2, 'Xuất bản: fds', '2021-06-18 15:35:31', NULL, NULL),
(116, 26, NULL, 2, 'Duyệt tin: tin tốt', '2021-06-18 15:35:43', NULL, NULL),
(117, 26, NULL, 2, 'Xuất bản: tin tốt', '2021-06-18 15:35:47', NULL, NULL),
(118, 29, NULL, 2, 'Duyệt tin: tin viet rat hay', '2021-06-19 04:03:47', NULL, NULL),
(119, 29, NULL, 2, 'Xuất bản: viet sai chinh ta', '2021-06-19 04:03:51', NULL, NULL),
(120, 30, NULL, 2, 'Duyệt tin: fds', '2021-06-19 04:05:48', NULL, NULL),
(121, 30, NULL, 2, 'Xuất bản: viet sai chinh ta', '2021-06-19 04:05:52', NULL, NULL),
(122, 27, NULL, 2, 'Duyệt tin: sadasdadsa', '2021-06-19 04:07:59', NULL, NULL),
(123, 27, NULL, 2, 'Xuất bản: tin tốt', '2021-06-19 04:08:03', NULL, NULL),
(124, 26, NULL, 2, 'Duyệt tin: fds', '2021-06-19 04:11:00', NULL, NULL),
(125, 26, NULL, 2, 'Xuất bản: tin viet rat hay', '2021-06-19 04:11:04', NULL, NULL),
(126, NULL, 1, 2, 'Duyệt tin: tin tốt', '2021-06-19 04:14:56', '2021-06-19 04:14:56', '2021-06-19 04:14:56'),
(127, NULL, 1, 2, 'Xuất bản: tin tốt', '2021-06-19 04:15:03', '2021-06-19 04:15:03', '2021-06-19 04:15:03'),
(128, NULL, 3, 2, 'Duyệt tin: sadasdadsa', '2021-06-19 04:15:22', '2021-06-19 04:15:22', '2021-06-19 04:15:22'),
(129, NULL, 3, 2, 'Xuất bản: sadasdadsa', '2021-06-19 04:15:29', '2021-06-19 04:15:29', '2021-06-19 04:15:29'),
(130, NULL, 2, 2, 'Duyệt tin: sadasdadsa', '2021-06-19 04:18:41', '2021-06-19 04:18:41', '2021-06-19 04:18:41'),
(131, NULL, 2, 2, 'Xuất bản: sadasdadsa', '2021-06-19 04:18:47', '2021-06-19 04:18:47', '2021-06-19 04:18:47'),
(132, NULL, 1, 2, 'Duyệt tin: viet sai chinh ta', '2021-06-19 04:19:56', '2021-06-19 04:19:56', '2021-06-19 04:19:56'),
(133, NULL, 1, 2, 'Xuất bản: fds', '2021-06-19 04:20:01', '2021-06-19 04:20:01', '2021-06-19 04:20:01'),
(134, 24, NULL, 2, 'Duyệt tin: sadasdadsa', '2021-06-19 04:21:19', NULL, NULL),
(135, 24, NULL, 2, 'Xuất bản: tin tốt', '2021-06-19 04:21:22', NULL, NULL);

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
(10, 1, 1, 2, 4, 'Bánh xe tải', '<p>213213121</p>', '/storage/product/images/1/kii9qjuSjS74QRPGs08h.jfif', NULL, 'Tiền Giang,ViệtNam', 'Phụ kiện xe', 500000, 123, '21321', '<div style=\"font-size:0;position:relative;width:246px;height:50px;\">\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:26px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:34px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:100px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:118px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:122px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:154px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:158px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:184px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:190px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:198px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:206px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:214px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:230px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:238px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:242px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:246px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:246px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:246px;  font-size: 0.6vw;\">1242323454354</div></div>\n', NULL, '2021-04-27 02:50:20', '2021-06-10 20:55:40'),
(11, 2, 2, 28, 2, 'Samsung 20 utral', 'Điện thoia5&nbsp;<p></p>', '/storage/product/images/1/uiaa034hN4uOD9jOHsgO.jpg', NULL, 'Tiền Giang,ViệtNam', 'Điện thoại thông minh', 12000000, 1, 'VND', '<div style=\"font-size:0;position:relative;width:224px;height:50px;\">\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:26px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:36px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:102px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:122px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:126px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:142px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:154px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:162px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:166px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:182px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:192px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:198px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:224px;  font-size: 0.6vw;\">43547897876876</div></div>\n', NULL, '2021-04-27 21:52:24', '2021-06-10 20:57:18'),
(12, 1, 1, 1, 4, 'Bình Ắc Quy', 'http://www.tcvg.hochiminhcity.gov.vn/default.aspx', '/storage/product/images/1/aAfJhVYEZHMT9Z5sTGM8.jfif', NULL, 'Tiền Giang,ViệtNam', 'Phụ kiện xe', 500000, 1, 'VND', '<div style=\"font-size:0;position:relative;width:246px;height:50px;\">\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:26px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:34px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:100px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:118px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:122px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:154px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:158px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:184px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:190px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:198px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:206px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:214px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:230px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:238px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:242px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:246px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:246px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:246px;  font-size: 0.6vw;\">1242323454354</div></div>\n', NULL, '2021-06-10 04:36:39', '2021-06-10 04:36:39'),
(13, 5, 4, 1, 6, 'Tôm Xuất  Khẩu', 'Tôm cuất khẩu .', '/storage/product/images/1/yZOrymypco8NWzSxUf4v.jpeg', NULL, 'Tiền Giang,ViệtNam', 'Tôm Xuất khẩu', 1100000, 1, 'VND', '<div style=\"font-size:0;position:relative;width:224px;height:50px;\">\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:26px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:34px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:100px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:118px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:122px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:136px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:146px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:154px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:162px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:166px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:186px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:190px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:198px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:224px;  font-size: 0.6vw;\">12423234543</div></div>\n', NULL, '2021-06-10 04:41:45', '2021-06-10 04:41:45'),
(14, 8, 1, 1, 1, 'Iphone 12 pro max', 'Điện thoại apple', '/storage/product/images/1/j5COilqJNQ1vSwowMaVc.jfif', NULL, 'Tiền Giang,ViệtNam', 'Điện thoại thông minh', 7500000, 1, 'VND', '<div style=\"font-size:0;position:relative;width:224px;height:50px;\">\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:26px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:34px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:100px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:118px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:122px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:136px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:146px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:154px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:162px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:166px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:186px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:190px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:198px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:224px;  font-size: 0.6vw;\">12423234543</div></div>\n', NULL, '2021-06-10 20:54:53', '2021-06-10 20:54:53'),
(22, 1, 1, 2, 1, '123123213123', '<p>213213121</p>', '/storage/product/images/1/RhgJ44Kjd8edpvMSikeE.jpg', NULL, '3313', '1232uuhuhuhuhu', 221321, 123, '21321', '<div style=\"font-size:0;position:relative;width:384px;height:50px;\">\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:40px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:68px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:116px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:152px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:160px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:184px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:188px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:192px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:196px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:228px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:236px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:240px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:248px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:256px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:264px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:272px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:276px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:284px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:288px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:292px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:304px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:308px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:316px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:320px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:324px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:336px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:340px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:344px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:352px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:360px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:364px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:372px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:380px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:384px;  font-size: 0.6vw;\">123456789</div></div>\n', NULL, '2021-04-27 09:50:20', '2021-05-30 14:36:49'),
(23, 1, 1, 2, 1, '3213', '<p>1233213131</p>', '/storage/product/images/1/etqDuVSJAI13auNzxl81.jpg', NULL, '312', '131', 123, 123, '12', '<div style=\"font-size:0;position:relative;width:160px;height:50px;\">\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:36px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:92px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:112px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:136px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:156px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:160px;  font-size: 0.6vw;\">23</div></div>\n', NULL, '2021-04-27 10:05:54', '2021-04-27 10:05:54'),
(24, 2, 2, 28, 2, 'sada32313132132213', 'sfsdfsdfsfqe e rw rw rwr wr', '/storage/product/images/2/UGFl7RpiAewBi3Y51RXI.jpg', NULL, 'dsadá', 'ádsadadsa321312321321', 123, 12312, '1321', '<div style=\"font-size:0;position:relative;width:160px;height:50px;\">\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:36px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:68px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:100px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:112px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:136px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:156px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:160px;  font-size: 0.6vw;\">24</div></div>\n', NULL, '2021-04-28 04:52:24', '2021-06-17 16:30:35');
INSERT INTO `sanpham` (`id`, `idloaisanpham`, `idcongty`, `idtaikhoan`, `idkho`, `tensanpham`, `thongtinsanpham`, `hinhanhsanpham`, `videosanpham`, `xuatxu`, `chungloaisanpham`, `dongiasanpham`, `khoiluongsanpham`, `donvitinhsanpham`, `mavachsanpham`, `qrcode`, `created_at`, `updated_at`) VALUES
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
(1, 'Khoa học và Công nghệ Cần Thơ', '2 Lý Thường Kiệt, Tân An, Ninh Kiều, Cần Thơ', 'skhvcnct@etc.vn', '02923820674', '02923821471', 'http://sokhcn.cantho.gov.vn/default.aspx?pid=2&cid=2&p=17', '2021-04-23 00:06:38', '2021-06-10 20:36:56'),
(2, 'Công Thương Cần Thơ', '19-21 Đ. Lý Tự Trọng, An Phú, Ninh Kiều, Cần Thơ', 'ctct@etc.vn', '02439366400', '02439366402', 'https://congthuong.vn/tag/so-cong-thuong-thanh-pho-can-tho-3825.tag', '2021-04-23 00:07:17', '2021-06-10 20:37:28'),
(5, 'Sở địa chính', 'Cần Thơ', 'diachinh@gmail.com', '0987654321', '0987654321', 'https://diachinh.com', '2021-05-04 07:40:02', '2021-05-29 20:21:41'),
(6, 'CỔNG THÔNG TIN ĐIỆN TỬ THÀNH PHỐ CẦN THƠ', 'Số 02 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', 'banbientap@cantho.gov.vn', '08071162', '08071162', 'https://www.cantho.gov.vn/', '2021-06-08 04:31:42', '2021-06-10 20:39:52'),
(7, 'Sở Nội vụ TP Cần Thơ', 'Số 51 Lý Tự Trọng, phường An Phú, quận Ninh Kiều, Thành phố Cần Thơ.', 'sonv@cantho.gov.vn', '02923820715', '02923825228', 'https://www.moha.gov.vn/gioi-thieu/so-noi-vu/so-noi-vu-tp-can-tho-12446.html', '2021-06-08 04:50:08', '2021-06-10 20:40:31'),
(8, 'Sở GD&DT Cần Thơ', '39 đường 3 tháng 2 - Phường Xuân Khánh - Quận Ninh Kiều - Thành phố Cần Thơ', 'sogddt@cantho.gov.vn', '02923830753', '02923830451', 'http://cantho.edu.vn/', '2021-06-08 04:51:54', '2021-06-10 20:41:08'),
(9, 'CÔNG AN THÀNH PHỐ CẦN THƠ', '9B, đường Trần Phú, phường Cái Khế, Q.Ninh Kiều, TP. Cần Thơ.', 'ca@cantho.gov.vn', '0693672118', '0693672129', 'https://cantho.xuatnhapcanh.gov.vn/faces/index.jsf', '2021-06-08 04:54:33', '2021-06-08 04:54:33'),
(10, 'SỞ LAO ĐỘNG - THƯƠNG BINH VÀ XÃ HỘI THÀNH PHỐ CẦN THƠ', '12 Ngô Quyền, Hoàn Kiếm, Hà Nội', 'banbientap@molisa.gov.vn', '02462703645', '02462703609', 'http://www.molisa.gov.vn/Pages/gioithieu/cocautochucchitiet.aspx?ToChucID=1527', '2021-06-08 05:03:36', '2021-06-10 20:41:39'),
(11, 'Sở Tư pháp thành phố Cần Thơ', 'Số 296 đường 30/4 - P.Xuân Khánh - Q.Ninh Kiều - TP.Cần Thơ', 'httt@moj.gov.vn', '02922220807', '02922220807', 'https://lltptructuyen.moj.gov.vn/thanhphocantho', '2021-06-08 05:09:04', '2021-06-10 20:42:03'),
(12, 'SỞ VĂN HÓA, THỂ THAO VÀ DU LỊCH TỈNH HẬU GIANG', 'số 5, Đường Thống Nhất, KV4, Phường 5, Thành phố Vị Thanh, tỉnh Hậu Giang', 'sovhttdl@haugiang.gov.vn', '029338786540', '02933878654', 'https://sovhttdl.haugiang.gov.vn/', '2021-06-08 05:11:18', '2021-06-10 20:42:21'),
(13, 'Trung tâm Thông tin Khoa học và Công nghệ - Sở Khoa học & Công nghệ TP. Cần Thơ', '118/3 Trần Phú - Phường Cái Khế - Quận Ninh Kiều - thành phố Cần Thơ', 'cantho@toaan.gov.vn', '0919039364', '0919039364', 'http://casti.vn/', '2021-06-09 01:06:47', '2021-06-10 20:43:08'),
(14, 'Sở Tài chính', '142 Nguyễn Thị Minh Khai, Quận 3, TP. Hồ Chí Minh', 'stc@tphcm.gov.vn', '0839333223', '039304663', 'http://www.tcvg.hochiminhcity.gov.vn/default.aspx', '2021-06-10 04:35:16', '2021-06-10 20:43:52');

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
(24, 4, 2, 2, '2021-06-11 15:47:04', 'Thêm \'biệt thự di động\' Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn', '<p><span style=\"color: rgb(136, 136, 136); font-family: Arial; font-size: 13px;\">Mercedes-Maybach S 650 Pullman là mẫu xe sang bậc nhất hiện nay của thương hiệu ngôi sao 3 cánh, được sản xuất dành cho những VIP.</span><br></p>', '<p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Mới đây, một chiếc Mercedes-Maybach S 650 Pullman đã xuất hiện tại showroom tư nhân ở Sài Gòn. Nhiều khả năng đây chính là chiếc S 650 Pullman thứ ba được đưa về nước.</p><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Về ngoại thất, xe sở hữu màu đen ở toàn bộ phần thân xe, tương đồng với chiếc đầu tiên được nhập khẩu bởi một đại lý tư nhân có tiếng ngoài Hà Nội. Hai chiếc này còn sở hữu bộ mâm giống nhau nên càng khó để phân biệt. Trong khi đó, chiếc thứ 2 mang 2 tông màu tương phản.</p><div class=\"VCSortableInPreviewMode noCaption active\" type=\"Photo\" style=\"padding: 0px; margin-top: 0px; margin-right: auto; margin-left: auto; outline: 0px; display: inline-block; position: relative; text-align: center; transition: all 0.3s ease-in-out 0s; width: 640px; z-index: 100; visibility: visible; overflow-wrap: break-word; cursor: default; color: rgb(0, 0, 0); font-family: \"Times New Roman\"; font-size: medium; background-color: rgb(255, 255, 255); margin-bottom: 20px !important;\"><div style=\"padding: 0px; margin: 0px; outline: 0px; position: relative; display: inline-block;\"><div id=\"adnzone_511318\" style=\"padding: 0px; margin: 0px auto; outline: 0px; clear: both; text-align: left; position: absolute; width: 640px; top: 0px;\"><iframe id=\"adnzone_511318_0_80302\" scrolling=\"no\" frameborder=\"no\" style=\"padding: 0px; margin: 0px; width: 640px; height: 132px; border-width: initial; border-style: none; z-index: 2; position: relative; transition: height 1s ease-out 0s;\"></iframe></div><a href=\"https://autopro8.mediacdn.vn/2021/6/10/1924215169500720257929192717118227332894463n-16233093746582091287651.jpg\" data-fancybox=\"img-lightbox\" title=\"\" class=\"detail-img-lightbox\" style=\"padding: 0px; margin: 0px; display: block; outline: none !important;\"><img src=\"https://autopro8.mediacdn.vn/thumb_w/640/2021/6/10/1924215169500720257929192717118227332894463n-16233093746582091287651.jpg\" id=\"img_bdffd720-c9bb-11eb-9c2d-57b61dc229c1\" w=\"960\" h=\"720\" alt=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 1.\" title=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 1.\" rel=\"lightbox\" photoid=\"bdffd720-c9bb-11eb-9c2d-57b61dc229c1\" type=\"photo\" data-original=\"https://autopro8.mediacdn.vn/2021/6/10/1924215169500720257929192717118227332894463n-16233093746582091287651.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"padding-top: unset; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin: 137px auto 0px; display: inline-block; vertical-align: top; pointer-events: none; max-width: 100%;\"></a></div></div><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Ngoại thất của xe sở hữu màu đen bóng, điểm xuyết là các chi tiết bằng kim loại sáng bóng như tay nắm cửa, lưới tản nhiệt, viền cửa sổ... tương tự Mercedes-Maybach S 650 thông thường. Điểm khác biệt lớn nhất của bản Pullman là kích thước xe lên tới 6,5 mét.</p><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Mercedes-Maybach S 650 Pullman thực chất là phiên bản facelift và được đổi tên của phiên bản Mercedes-Maybach S 600 Pullman. Trước đó, giới mê xe Việt đã có cơ hội đón hai chiếc S 600 Pullman với màu sơn trắng và đen.</p><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Sự thay đổi lớn nhất giữa phiên bản S 650 và S 600 đó là phần đầu xe được thiết kế lại với hốc gió mới làm tăng khả năng làm mát động cơ và hệ thống đèn pha LED Multibeam có khả năng chiếu sáng hơn 600 m. Ngoài ra, một thanh nẹp chrome được bổ sung cho cả phần cản trước và cản sau của xe.</p><div class=\"VCSortableInPreviewMode active noCaption\" type=\"Photo\" style=\"padding: 0px; margin-top: 0px; margin-right: auto; margin-left: auto; outline: 0px; display: inline-block; position: relative; text-align: center; transition: all 0.3s ease-in-out 0s; width: 640px; z-index: 100; visibility: visible; overflow-wrap: break-word; cursor: default; color: rgb(0, 0, 0); font-family: \"Times New Roman\"; font-size: medium; background-color: rgb(255, 255, 255); margin-bottom: 20px !important;\"><div style=\"padding: 0px; margin: 0px; outline: 0px;\"><a href=\"https://autopro8.mediacdn.vn/2021/6/10/photo-1-16233155612931639098081.jpg\" data-fancybox=\"img-lightbox\" title=\"\" class=\"detail-img-lightbox\" style=\"padding: 0px; margin: 0px; display: block; outline: none !important;\"><img src=\"https://autopro8.mediacdn.vn/thumb_w/640/2021/6/10/photo-1-16233155612931639098081.jpg\" id=\"img_25260ec0-c9ca-11eb-b822-39bd312c79ca\" w=\"1024\" h=\"768\" alt=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 2.\" title=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 2.\" rel=\"lightbox\" photoid=\"25260ec0-c9ca-11eb-b822-39bd312c79ca\" type=\"photo\" data-original=\"https://autopro8.mediacdn.vn/2021/6/10/photo-1-16233155612931639098081.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"padding: 0px; margin: 0px auto; display: inline-block; vertical-align: top; pointer-events: none; max-width: 100%;\"></a></div></div><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Được biết, showroom nhập về chiếc Mercedes-Maybach S 650 Pullman này toạ lạc trên đường An Dương Vương, Q.5, TP.HCM. Đây cũng chính là đơn vị nhập về hai chiếc Ford GT, chiếc Ferrari 488 Pista Spider thứ hai và chiếc Mercedes-Maybach S 650 Pullman hai tông màu kể trên.<br style=\"padding: 0px; margin: 0px;\"></p><div class=\"VCSortableInPreviewMode active noCaption\" type=\"Photo\" style=\"padding: 0px; margin-top: 0px; margin-right: auto; margin-left: auto; outline: 0px; display: inline-block; position: relative; text-align: center; transition: all 0.3s ease-in-out 0s; width: 640px; z-index: 100; visibility: visible; overflow-wrap: break-word; cursor: default; color: rgb(0, 0, 0); font-family: \"Times New Roman\"; font-size: medium; background-color: rgb(255, 255, 255); margin-bottom: 20px !important;\"><div style=\"padding: 0px; margin: 0px; outline: 0px;\"><a href=\"https://autopro8.mediacdn.vn/2021/6/10/1943446289472095927458295045540580620425387n-1623309374681828586472.jpg\" data-fancybox=\"img-lightbox\" title=\"\" class=\"detail-img-lightbox\" style=\"padding: 0px; margin: 0px; display: block; outline: none !important;\"><img src=\"https://autopro8.mediacdn.vn/thumb_w/640/2021/6/10/1943446289472095927458295045540580620425387n-1623309374681828586472.jpg\" id=\"img_be1708a0-c9bb-11eb-80f3-9937f5f0f3df\" w=\"960\" h=\"720\" alt=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 3.\" title=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 3.\" rel=\"lightbox\" photoid=\"be1708a0-c9bb-11eb-80f3-9937f5f0f3df\" type=\"photo\" data-original=\"https://autopro8.mediacdn.vn/2021/6/10/1943446289472095927458295045540580620425387n-1623309374681828586472.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"padding: 0px; margin: 0px auto; display: inline-block; vertical-align: top; pointer-events: none; max-width: 100%;\"></a></div></div><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Bên trong nội thất, vô-lăng được thay đổi lên loại 3 chấu, các nút bấm trên vô-lăng được thiết kế lại. Cụm màn hình kích thước 12,3 inch ở phía sau vô lăng cũng như màn hình giải trí trung tâm có giao diện mới mẻ hơn, độ phân giải được cải thiết cho chất lượng sắc nét hơn. Nhìn chung, khoang lái của bản Pullman với bản thường không có sự khác biệt.</p><div id=\"admzone480456\" class=\"mgt10\" style=\"padding: 0px; margin: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: \"Times New Roman\"; font-size: medium; background-color: rgb(255, 255, 255);\"><div id=\"zone-480456\" style=\"padding: 0px; margin: 0px; outline: 0px;\"><div id=\"share-jkkj65ph\" style=\"padding: 0px; margin: 0px; outline: 0px;\"><div id=\"placement-k6ssarfg\" revenue=\"cpm\" style=\"padding: 0px; margin: 0px; outline: 0px;\"><div id=\"banner-480456-554230\" style=\"padding: 0px; margin: 0px; outline: 0px; min-height: 10px; min-width: 10px;\"><div id=\"slot-2-480456-554230\" style=\"padding: 0px; margin: 0px; outline: 0px;\"><div id=\"sspbid_3345\" style=\"padding: 0px; margin: 0px; outline: 0px;\"></div></div></div></div></div></div></div><div class=\"VCSortableInPreviewMode noCaption\" type=\"Photo\" style=\"padding: 0px; margin-top: 0px; margin-right: auto; margin-left: auto; outline: 0px; display: inline-block; position: relative; text-align: center; transition: all 0.3s ease-in-out 0s; width: 640px; z-index: 100; visibility: visible; overflow-wrap: break-word; cursor: default; color: rgb(0, 0, 0); font-family: \"Times New Roman\"; font-size: medium; background-color: rgb(255, 255, 255); margin-bottom: 20px !important;\"><div style=\"padding: 0px; margin: 0px; outline: 0px;\"><a href=\"https://autopro8.mediacdn.vn/2020/11/18/robb-pullman-7-16057073259921924881895.jpg\" data-fancybox=\"img-lightbox\" title=\"\" class=\"detail-img-lightbox\" style=\"padding: 0px; margin: 0px; display: block; outline: none !important;\"><img src=\"https://autopro8.mediacdn.vn/thumb_w/640/2020/11/18/robb-pullman-7-16057073259921924881895.jpg\" id=\"img_c9e2ee40-29a4-11eb-b4c3-1b5625fe3d04\" w=\"1280\" h=\"720\" alt=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 4.\" title=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 4.\" rel=\"lightbox\" photoid=\"c9e2ee40-29a4-11eb-b4c3-1b5625fe3d04\" type=\"photo\" data-original=\"https://autopro8.mediacdn.vn/2020/11/18/robb-pullman-7-16057073259921924881895.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"padding: 0px; margin: 0px auto; display: inline-block; vertical-align: top; pointer-events: none; max-width: 100%;\"></a></div></div><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Điểm nhấn của bản Pullman là hàng ghế sau. So với phiên bản S-Class Maybach thường, S 650 Pullman được bổ sung 2 ghế phụ cho khoang sau và có thể gập gọn khi không cần thiết. Phần ghế ngồi phụ này đồng thời được tích hợp 2 màn hình giải trí. Hệ thống âm thanh là loại hàng hiệu Burmester 3D cao cấp. Để tăng tính riêng tư, xe cũng được trang bị một vách ngăn giữa khoang hành khách và tài xế. Một tấm kính nhỏ có thể trượt lên/xuống và làm mờ khi chủ nhân cần không gian riêng tư.</p><div class=\"VCSortableInPreviewMode active noCaption\" type=\"Photo\" style=\"padding: 0px; margin-top: 0px; margin-right: auto; margin-left: auto; outline: 0px; display: inline-block; position: relative; text-align: center; transition: all 0.3s ease-in-out 0s; width: 640px; z-index: 100; visibility: visible; overflow-wrap: break-word; cursor: default; color: rgb(0, 0, 0); font-family: \"Times New Roman\"; font-size: medium; background-color: rgb(255, 255, 255); margin-bottom: 20px !important;\"><div style=\"padding: 0px; margin: 0px; outline: 0px;\"><a href=\"https://autopro8.mediacdn.vn/2020/11/18/robb-pullman-6-1605707325968247657870.jpg\" data-fancybox=\"img-lightbox\" title=\"\" class=\"detail-img-lightbox\" style=\"padding: 0px; margin: 0px; display: block; outline: none !important;\"><img src=\"https://autopro8.mediacdn.vn/thumb_w/640/2020/11/18/robb-pullman-6-1605707325968247657870.jpg\" id=\"img_c9ac4de0-29a4-11eb-80f3-9937f5f0f3df\" w=\"1280\" h=\"720\" alt=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 5.\" title=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 5.\" rel=\"lightbox\" photoid=\"c9ac4de0-29a4-11eb-80f3-9937f5f0f3df\" type=\"photo\" data-original=\"https://autopro8.mediacdn.vn/2020/11/18/robb-pullman-6-1605707325968247657870.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"padding: 0px; margin: 0px auto; display: inline-block; vertical-align: top; pointer-events: none; max-width: 100%;\"></a></div></div><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px;\">Động cơ của Mercedes-Maybach S 650 Pullman là loại V12, tăng áp kép, dung tích 6 lít, tạo ra công suất tối đa 630 mã lực, mô-men xoắn cực đại 1.000 Nm cùng với hộp số tự động 7 cấp 7G Tronic.</span></p>', '/storage/news/image/2/ZsCNhSN9nMmRbNB2SuA3.jpg', NULL, 0, 1, 1, '2021-06-19 04:21:22', 1, NULL, '2021-06-10 09:30:14'),
(25, 1, 1, 1, '2021-06-11 18:45:19', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged</span><br></p>', '<p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchange</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\"><br></span><br></p>', '/storage/news/image/1/4sZqVKRhMYH02vprXK0g.jpg', NULL, 0, 0, 0, NULL, 0, '2021-06-11 17:40:02', '2021-06-11 18:45:19'),
(26, 1, 2, 1, '2021-06-17 06:05:22', 'Hoà Scotland 0-0 ngay tại Wembley tối 18/6, Anh vẫn đứng thứ hai bảng D và lỡ cơ hội giành vé sớm vào vòng 1/8 Euro 2021.', '<p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Ở trận đấu sớm, Croatia và CH Czech đã cầm chân nhau 1-1. Anh, vì thế, sẽ chiếm đầu bảng và sớm giành vé đi tiếp nếu đánh bại Scotland.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Tuy nhiên, đội chủ nhà đã không thể nào tìm được đường vào khung thành đối phương. Họ vì thế đứt luôn chuỗi bảy trận thắng trên mọi đấu trường. Đây cũng lần thứ hai Anh hòa không bàn thắng tại Wembley, kể từ khi sân này được xây dựng lại và mở cửa năm 2007. Trận hòa 0-0 còn lại diễn ra tháng 10/2010, khi Anh dưới thời HLV Fabio Capello để Montenegro cầm chân tại vòng loại Euro. Số trận hòa không bàn thắng của Anh tại Euro và World Cup cũng được nâng lên con số 17 - nhiều nhất của một đội tuyển trong lịch sử hai giải đấu.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Billy Gilmour, trong trận đấu đầu tiên xuất phát cho Scotland, được bầu là cầu thủ hay nhất trận. Tiền vệ 20 tuổi thuộc biên chế Chelsea thi đấu ấn tượng, khi chuyền bóng chính xác 91%, tám lần thu hồi bóng và hai cú tắc bóng sau 75 phút trên sân.</p><figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\" style=\"margin-right: auto; margin-bottom: 15px; margin-left: auto; padding: 0px; text-rendering: optimizelegibility; max-width: 100%; clear: both; position: relative; text-align: center; width: 670px; float: left; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\"><div class=\"fig-picture\" style=\"margin: 0px; padding: 0px 0px 446.219px; text-rendering: optimizelegibility; width: 670px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;\"><picture data-inimage=\"done\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><source data-srcset=\"https://i1-thethao.vnecdn.net/2021/06/19/000-9CK2JK-jpeg-1385-1624056816.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=AAoVOpDT9HXEUwPrLbuxIw 1x, https://i1-thethao.vnecdn.net/2021/06/19/000-9CK2JK-jpeg-1385-1624056816.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=XNzKIyR3mogjYSAP-aGmXQ 1.5x, https://i1-thethao.vnecdn.net/2021/06/19/000-9CK2JK-jpeg-1385-1624056816.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=33vr-qyz0f-ELbAvAhSH0w 2x\" srcset=\"https://i1-thethao.vnecdn.net/2021/06/19/000-9CK2JK-jpeg-1385-1624056816.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=AAoVOpDT9HXEUwPrLbuxIw 1x, https://i1-thethao.vnecdn.net/2021/06/19/000-9CK2JK-jpeg-1385-1624056816.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=XNzKIyR3mogjYSAP-aGmXQ 1.5x, https://i1-thethao.vnecdn.net/2021/06/19/000-9CK2JK-jpeg-1385-1624056816.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=33vr-qyz0f-ELbAvAhSH0w 2x\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><img itemprop=\"contentUrl\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Kane không thể làm nên đột biến và phải rời sân nhường chỗ cho Marcus Rashford. Ảnh: AFP.\" class=\"lazy lazied\" src=\"https://i1-thethao.vnecdn.net/2021/06/19/000-9CK2JK-jpeg-1385-1624056816.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=AAoVOpDT9HXEUwPrLbuxIw\" data-src=\"https://i1-thethao.vnecdn.net/2021/06/19/000-9CK2JK-jpeg-1385-1624056816.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=AAoVOpDT9HXEUwPrLbuxIw\" data-ll-status=\"loaded\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; position: absolute; top: 0px; left: 0px; max-height: 700px; width: 670px;\"><div class=\"embed-container\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-left: 0px; text-rendering: optimizelegibility; position: absolute; height: 100px; overflow: hidden; clear: both; width: 670px; bottom: -1px; margin-bottom: 0px !important; padding-bottom: 0px !important;\"></div></picture></div><figcaption itemprop=\"description\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 670px; float: left; text-align: left;\"><p class=\"Image\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; text-rendering: optimizespeed; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22.4px;\">Kane không thể làm nên đột biến và phải rời sân nhường chỗ cho Marcus Rashford. Ảnh:&nbsp;<em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">AFP.</em></p></figcaption></figure><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">HLV Gareth Southgate giữ nguyên hàng công so với ở trận mở màn thắng Croatia 1-0, với bộ ba Phil Foden, Raheem Sterling và Harry Kane. Tuy nhiên, họ đã trải qua ngày thi đấu thất vọng. Kane chỉ có hai cú sút trước khi bị thay ra bởi Marcus Rashford phút 74.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Những cơ hội ngon ăn nhất của Anh đều thuộc về... các hậu vệ và chia đều trong mỗi hiệp. Phút 12, từ quả đá phạt góc của Mason Mount, trung vệ John Stones bật cao đánh đầu đưa bóng dội cột dọc. Đầu hiệp hai, Reece James tung cú sút chân phải quyết đoán sát mép vòng cấm, nhưng bóng đi vọt xà ngang khung thành thủ môn David Marshall.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Tình huống đáng chú ý nhất của Scotland đến không lâu sau cú sút của James. Phút 62, xuất phát từ tình huống lộn xộn trong vòng cấm, tiền đạo Lyndon Dykes sút chéo góc rất nhanh, nhưng chính James đã kịp lui về phá bóng ngay trên vạch vôi cứu thua cho chủ nhà.</p><figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\" style=\"margin-right: auto; margin-bottom: 15px; margin-left: auto; padding: 0px; text-rendering: optimizelegibility; max-width: 100%; clear: both; position: relative; text-align: center; width: 670px; float: left; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\"><div class=\"fig-picture\" style=\"margin: 0px; padding: 0px 0px 446.219px; text-rendering: optimizelegibility; width: 670px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;\"><picture style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><source data-srcset=\"https://i1-thethao.vnecdn.net/2021/06/19/000-9CJ9J4-jpeg-2041-1624056950.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=__o3twNz629hj0gK57Jp_w 1x, https://i1-thethao.vnecdn.net/2021/06/19/000-9CJ9J4-jpeg-2041-1624056950.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=PFLcQXsCaqX0oNn_xLtrzg 1.5x, https://i1-thethao.vnecdn.net/2021/06/19/000-9CJ9J4-jpeg-2041-1624056950.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=3ZRZDBWOsiVP1ExlIJzGTw 2x\" srcset=\"https://i1-thethao.vnecdn.net/2021/06/19/000-9CJ9J4-jpeg-2041-1624056950.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=__o3twNz629hj0gK57Jp_w 1x, https://i1-thethao.vnecdn.net/2021/06/19/000-9CJ9J4-jpeg-2041-1624056950.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=PFLcQXsCaqX0oNn_xLtrzg 1.5x, https://i1-thethao.vnecdn.net/2021/06/19/000-9CJ9J4-jpeg-2041-1624056950.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=3ZRZDBWOsiVP1ExlIJzGTw 2x\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><img itemprop=\"contentUrl\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Phil Foden bị cầu thủ Scotland ngăn chặn. Ảnh: AFP.\" class=\"lazy lazied\" src=\"https://i1-thethao.vnecdn.net/2021/06/19/000-9CJ9J4-jpeg-2041-1624056950.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=__o3twNz629hj0gK57Jp_w\" data-src=\"https://i1-thethao.vnecdn.net/2021/06/19/000-9CJ9J4-jpeg-2041-1624056950.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=__o3twNz629hj0gK57Jp_w\" data-ll-status=\"loaded\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; position: absolute; top: 0px; left: 0px; max-height: 700px; width: 670px;\"></picture></div><figcaption itemprop=\"description\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 670px; float: left; text-align: left;\"><p class=\"Image\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; text-rendering: optimizespeed; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22.4px;\">Phil Foden bị cầu thủ Scotland ngăn chặn. Ảnh:&nbsp;<em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">AFP.</em></p></figcaption></figure><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Hòa Scotland, Anh vẫn đứng nhì bảng D, cùng bốn điểm như CH Czech nhưng thua hiệu số. Trong khi đó, Scotland tiếp tục xếp bét bảng với một điểm, nhưng vẫn còn cơ hội đi tiếp. Ở lượt cuối ngày 22/6, Anh đụng CH Czech còn Scotland gặp Croatia.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\"><strong style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Danh sách thi đấu</strong></p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\"><em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Anh</em>: Pickford, Shaw, Mings, Stones, James, Rice, Phillips, Mount, Foden (Grealish 63), Sterling, Kane (Rashford 74).</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\"><em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Scotland</em>: Marshall, O\'Donnell, Robertson, McTominay, Hanley, Tierney, McGinn, McGregor, Gilmour (Armstrong 76\'), Dykes, Adams (Nisbet 86).</p>', '<p>gỳtftỳvtyctct cgcghj ghvgh ghjvgvjvjgvvg vvgvgv gvv gg gv jgkhvt ft ohio io nion</p>', '/storage/news/image/2/3bsg7cESLrWYy2CiYGYy.jpg', NULL, 0, 1, 1, '2021-06-19 04:11:04', 1, '2021-06-12 06:37:40', '2021-06-17 06:05:22'),
(27, 4, 2, 2, '2021-06-17 06:08:14', 'Lamborghini Aventador Roadster màu xanh lá rất lạ xuất hiện tại Sài thành', '<p><span style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 700;\">Hình ảnh chiếc siêu xe mui trần Lamborghini Aventador LP700-4 Roadster mang tông màu xanh lá nổi bần bật được một người chuyên mua bán xe sang ở Sài thành chia sẻ đã khiến giới mê xe tò mò muốn biết lai lịch mẫu xe này.</span><br></p>', '<p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Số lượng dòng siêu xe mui trần&nbsp;<a href=\"https://tinxe.vn/gia-xe-lamborghini-aventador\" style=\"color: rgb(236, 119, 35);\"><strong>Lamborghini Aventador LP700-4</strong></a>&nbsp;tại Việt Nam chỉ có khoảng 4 chiếc và tất cả đều mang tông màu trắng. Tuy nhiên, mới đây, hình ảnh một chiếc xe Lamborghini Aventador LP700-4 Roadster mang tông màu xanh lá đã được chia sẻ lên mạng khiến không ít người tò mò.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Hình ảnh do một người chuyên mua bán xe sang ở Sài thành chia sẻ cho thấy, chiếc siêu xe Lamborghini Aventador LP700-4 mui trần mang tông màu xanh lá nổi bần bật được tiết lộ mới thay áo bằng phương pháp dán đề-can.</p><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-0\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/95ywCUPr/193709501-1940207466139574-5551447284724329117-n-17e9.jpg\" data-desc=\"Lamborghini Aventador Roadster màu xanh lá rất lạ xuất hiện tại Sài thành\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Lamborghini Aventador Roadster màu xanh lá rất lạ xuất hiện tại Sài thành\" data-height=\"1769\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/95ywCUPr/193709501-1940207466139574-5551447284724329117-n-17e9.jpg\" title=\"Lamborghini Aventador Roadster màu xanh lá rất lạ xuất hiện tại Sài thành\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Lamborghini Aventador Roadster màu xanh lá rất lạ xuất hiện tại Sài thành</em></p></div><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-1\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/95ywCUPr/194354245-1940209929472661-3436294791819122856-n-6f4f.jpg\" data-desc=\"Ngoại thất xe được dán đề-can màu xanh lá nổi bật\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Ngoại thất xe được dán đề-can màu xanh lá nổi bật\" data-height=\"1044\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/95ywCUPr/194354245-1940209929472661-3436294791819122856-n-6f4f.jpg\" title=\"Ngoại thất xe được dán đề-can màu xanh lá nổi bật\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Ngoại thất xe được dán đề-can màu xanh lá nổi bật</em></p></div><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-2\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/95ywCUPr/198539301-1940207746139546-4536290876708553667-n-5c13.jpg\" data-desc=\"Cả 4 chiếc Lamborghini Aventador LP700-4 mui trần tại Việt Nam đều có màu sơn nguyên bản là trắng\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Cả 4 chiếc Lamborghini Aventador LP700-4 mui trần tại Việt Nam đều có màu sơn nguyên bản là trắng\" data-height=\"1217\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/95ywCUPr/198539301-1940207746139546-4536290876708553667-n-5c13.jpg\" title=\"Cả 4 chiếc Lamborghini Aventador LP700-4 mui trần tại Việt Nam đều có màu sơn nguyên bản là trắng\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Cả 4 chiếc Lamborghini Aventador LP700-4 mui trần tại Việt Nam đều có màu sơn nguyên bản là trắng</em></p></div><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-3\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/95ywCUPr/197226402-1940207506139570-2108999548764779390-n-bd65.jpg\" data-desc=\"Rất có thể 1 trong 4 chiếc Lamborghini Aventador Roadster này mới dán đổi màu\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Rất có thể 1 trong 4 chiếc Lamborghini Aventador Roadster này mới dán đổi màu\" data-height=\"1600\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/95ywCUPr/197226402-1940207506139570-2108999548764779390-n-bd65.jpg\" title=\"Rất có thể 1 trong 4 chiếc Lamborghini Aventador Roadster này mới dán đổi màu\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Rất có thể 1 trong 4 chiếc Lamborghini Aventador Roadster này mới dán đổi màu</em></p></div><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-4\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/95ywCUPr/195538169-1940207589472895-3461139109826816022-n-bc2b.jpg\" data-desc=\"Ống xả độ này rất giống Lamborghini Aventador Roadster của Bình Phước\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Ống xả độ này rất giống Lamborghini Aventador Roadster của Bình Phước\" data-height=\"1885\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/95ywCUPr/195538169-1940207589472895-3461139109826816022-n-bc2b.jpg\" title=\"Ống xả độ này rất giống Lamborghini Aventador Roadster của Bình Phước\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Ống xả độ này rất giống Lamborghini Aventador Roadster của Bình Phước</em></p></div><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Nhiều khả năng đây là 1 trong chiếc 4 chiếc siêu xe Lamborghini Aventador LP700-4 Roadster có mặt tại Việt Nam hiện nay và dựa vào trang bị ống xả cùng như body kit ngoại thất khiến giới mê xe nghĩ đến chiếc siêu xe mui trần Lamborghini Aventador LP700-4 của một người chơi lan đột biến ở tỉnh Bình Phước.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Đa phần những chiếc&nbsp;<a href=\"https://tinxe.vn/gia-xe-lamborghini\" style=\"color: rgb(236, 119, 35);\"><strong>siêu xe Lamborghini tại Việt Nam</strong></a>&nbsp;có bộ áo màu xanh cốm là Murcielago hay Huracan, đây là lần hiếm hoi 1 chiếc xe Aventador sở hữu bộ áo xanh lá dù được dán bằng đề-can. Điểm ấn tượng trên dòng xe Lamborghini Aventador LP700-4 Roadster chính là phần mui xe có thể dễ dàng tháo lắp bằng tay để biến chiếc xe từ bản Coupe sang mui trần và ngược lại.</p><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-5\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/95ywCUPr/196321956-1940207559472898-8127244265287771625-n-85d0.jpg\" data-desc=\"Ghế ngồi xe bọc da màu đen cùng chỉ trắng\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Ghế ngồi xe bọc da màu đen cùng chỉ trắng\" data-height=\"1777\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/95ywCUPr/196321956-1940207559472898-8127244265287771625-n-85d0.jpg\" title=\"Ghế ngồi xe bọc da màu đen cùng chỉ trắng\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Ghế ngồi xe bọc da màu đen cùng chỉ trắng</em></p></div><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-6\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/95ywCUPr/201003793-1940207719472882-7987776009872304917-n-e29d.jpg\" data-desc=\"Khoang lái xe có vài chi tiết ốp carbon\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Khoang lái xe có vài chi tiết ốp carbon\" data-height=\"1339\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/95ywCUPr/201003793-1940207719472882-7987776009872304917-n-e29d.jpg\" title=\"Khoang lái xe có vài chi tiết ốp carbon\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Khoang lái xe có vài chi tiết ốp carbon</em></p></div><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Phần mui của siêu xe Lamborghini Aventador LP700-4 Roadster&nbsp;được chia thành hai phần riêng biệt, mỗi mui chỉ nặng 6 kg do làm từ carbon. Chủ nhân của siêu xe mui trần này có thể tháo mui bằng tay và để vào khoang hành lý phía trước của xe, thời gian hoàn thành việc tháo hay lắp mui sẽ tuỳ vào độ nhanh nhẹn nhưng nhanh nhất cũng phải trên 20 giây.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Siêu xe Lamborghini Aventador LP700-4 mui trần sử dụng động cơ V12, dung tích 6.5 lít, sản sinh công suất tối đa 700 mã lực tại vòng tua máy&nbsp;8.250 vòng/phút và mô-men xoắn cực đại 690 Nm tại vòng tua máy&nbsp;5.500 vòng/phút.&nbsp;Sức mạnh được truyền tới cả bốn bánh thông qua hộp số tự động 7 cấp ISR, nhờ đó, Lamborghini Aventador LP700-4 Roadster có thể tăng tốc từ vị trí xuất phát lên 100 km/h trong thời gian 2,9 giây trước khi đạt vận tốc tối đa 349 km/h.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px; text-align: right;\">Ảnh:&nbsp;<em style=\"line-height: 18px; margin: 0px;\">Công Khanh</em></p>', '/storage/news/image/2/xd68PQX0yN6TZgTms1XN.jpg', '/storage/news/video/2/Dx7h4gMVFADyJeThbpgl.mp4', 1, 1, 1, '2021-06-19 04:08:03', 1, NULL, '2021-06-12 12:08:09'),
(28, 2, 2, 2, '2021-06-18 15:09:13', 'Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhân', '<p>Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhân<br></p>', '<p>Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhân<br></p>', '/storage/news/image/2/1DqrGmAOHVJBnfa5miYj.jpg', NULL, 1, 1, 1, '2021-06-18 15:35:31', 1, NULL, NULL);
INSERT INTO `tintuc` (`id`, `idchuyenmuc`, `idcongty`, `idtaikhoan`, `ngaydangtintuc`, `tieudetintuc`, `tomtattintuc`, `noidungtintuc`, `hinhanhtintuc`, `videotintuc`, `loaitintuc`, `duyettintuc`, `xuatbantintuc`, `ngayxuatban`, `lydogo`, `created_at`, `updated_at`) VALUES
(29, 2, 2, 2, '2021-06-19 04:03:32', 'Nissan Navara Pro-4X Warrior 2021 được hé lộ, chuẩn bị đối đầu Ford Ranger Raptor', '<p><span style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 700;\">Được phát triển dựa trên bản Pro-4X cao cấp nhất của dòng Nissan Navara 2021 hiện đang bán tại Úc, Pro-4X Warrior sẽ thay thế đàn anh N-Trek Warrior cũ.</span><br></p>', '<div class=\"box-detail\" data-title=\"Nissan Navara Pro-4X Warrior 2021 được hé lộ, chuẩn bị đối đầu Ford Ranger Raptor\" data-url=\"\" style=\"width: 730.047px; display: inline-block;\"><div class=\"blog-detail\"><div class=\"content-detail group-image-lightbox\" style=\"width: 730.047px; display: inline-block; font-size: 18px; line-height: 28px; color: rgb(51, 51, 51); margin-top: 10px;\"><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Chẳng bao lâu sau khi tung ra Navara 2021 tại thị trường Úc, hãng Nissan lại chuẩn bị vén màn 1 phiên bản mới của dòng xe bán tải này, mang tên Pro-4X Warrior. Được phát triển dựa trên bản Pro-4X cao cấp nhất của dòng&nbsp;<a href=\"https://tinxe.vn/gia-xe-nissan-navara\" target=\"_blank\" title=\"Giá xe Nissan Navara\" style=\"color: rgb(236, 119, 35);\"><strong>Nissan Navara 2021</strong></a>&nbsp;hiện đang bán tại Úc, Pro-4X Warrior sẽ thay thế đàn anh&nbsp;N-Trek Warrior cũ.</p><div class=\"dvg_photo_box\" style=\"font-family: Sarabun, Arial, Helvetica, sans-serif;\"><figure id=\"imageGalleryId-0\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-1-bd30.jpg\" data-desc=\"Nissan Navara Pro-4X Warrior 2021 được hé lộ hình ảnh dù xe chưa ra mắt\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Nissan Navara Pro-4X Warrior 2021 được hé lộ hình ảnh dù xe chưa ra mắt\" data-height=\"445\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-1-bd30.jpg\" title=\"Nissan Navara Pro-4X Warrior 2021 được hé lộ hình ảnh dù xe chưa ra mắt\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p class=\"dvg_photo_caption\" style=\"margin-bottom: 10px; font-size: 14px; line-height: 18px; color: rgb(153, 153, 153); text-align: center; font-style: italic;\"><a href=\"https://tinxe.vn/tin-xe/nissan-navara-pro4x-warrior-2021-duoc-he-lo-chuan-bi-doi-dau-ford-ranger-raptor-id20210618225823628\" style=\"color: rgb(236, 119, 35);\">Nissan Navara Pro-4X Warrior 2021 được hé lộ hình ảnh</a>&nbsp;dù xe chưa ra mắt</p></div><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Tương tự đàn anh N-Trek Warrior, Nissan Navara Pro-4X Warrior 2021 cũng do công ty kỹ thuật nổi tiếng của Úc là&nbsp;Premcar lắp ráp. Ngoài ra, mẫu xe này còn có những nâng cấp tương tự Nissan Navara N-Trek Warrior cũ như thanh bảo vệ cản trước hầm hố, tích hợp dải đèn bổ sung bên dưới lưới tản nhiệt.</p><div class=\"dvg_photo_box\" style=\"font-family: Sarabun, Arial, Helvetica, sans-serif;\"><figure id=\"imageGalleryId-1\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-7-afaf.jpg\" data-desc=\"Nissan Navara Pro-4X Warrior 2021 có thêm thanh bảo vệ cản trước hầm hố\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Nissan Navara Pro-4X Warrior 2021 có thêm thanh bảo vệ cản trước hầm hố\" data-height=\"445\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-7-afaf.jpg\" title=\"Nissan Navara Pro-4X Warrior 2021 có thêm thanh bảo vệ cản trước hầm hố\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p class=\"dvg_photo_caption\" style=\"margin-bottom: 10px; font-size: 14px; line-height: 18px; color: rgb(153, 153, 153); text-align: center; font-style: italic;\">Nissan Navara Pro-4X Warrior 2021 có thêm thanh bảo vệ cản trước hầm hố</p><div class=\"dvg_photo_box\"><figure id=\"imageGalleryId-2\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-5-3735.jpg\" data-desc=\"Tấm ốp bảo vệ gầm bên dưới cản trước của Nissan Navara Pro-4X Warrior 2021\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Tấm ốp bảo vệ gầm bên dưới cản trước của Nissan Navara Pro-4X Warrior 2021\" data-height=\"567\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-5-3735.jpg\" title=\"Tấm ốp bảo vệ gầm bên dưới cản trước của Nissan Navara Pro-4X Warrior 2021\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p class=\"dvg_photo_caption\" style=\"margin-bottom: 10px; font-size: 14px; line-height: 18px; color: rgb(153, 153, 153); text-align: center; font-style: italic;\">Tấm ốp bảo vệ gầm bên dưới cản trước của xe</p><div class=\"dvg_photo_box\"><figure id=\"imageGalleryId-3\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-8-c924.jpg\" data-desc=\"Dải đèn LED bổ sung trên đầu xe Nissan Navara Pro-4X Warrior 2021\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Dải đèn LED bổ sung trên đầu xe Nissan Navara Pro-4X Warrior 2021\" data-height=\"445\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-8-c924.jpg\" title=\"Dải đèn LED bổ sung trên đầu xe Nissan Navara Pro-4X Warrior 2021\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p class=\"dvg_photo_caption\" style=\"margin-bottom: 10px; font-size: 14px; line-height: 18px; color: rgb(153, 153, 153); text-align: center; font-style: italic;\">Trên thanh bảo vệ cản trước còn có dải đèn LED bổ sung</p></div></div></div><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Tất nhiên, thanh bảo vệ cản trước này đã được thay đổi thiết kế để phù hợp với Nissan Navara mới. Chi tiết này được chế tạo dựa trên thanh bảo vệ cản trước mà hãng Nissan phát triển dành cho Navara mới. Tuy nhiên, khác với phụ kiện chính hãng của Nissan, thanh cản trước trên Navara Pro-4X Warrior 2021 lại được sơn màu giống với thân xe.</p><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Ngoài ra, Nissan Navara Pro-4X Warrior 2021 còn có thêm hệ thống treo cải tiến đặc biệt và có kích thước lớn hơn so với bản thường. Hệ thống treo này kết hợp cùng lốp chạy mọi địa hình Cooper Discoverer 32 inch để mang đến khả năng off-road tốt hơn cho Nissan Navara Pro-4X Warrior mới.</p><div class=\"dvg_photo_box\" style=\"font-family: Sarabun, Arial, Helvetica, sans-serif;\"><figure id=\"imageGalleryId-4\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-2-b7ae.jpg\" data-desc=\"Nissan Navara Pro-4X Warrior 2021 sẽ được cải tiến hệ thống treo\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Nissan Navara Pro-4X Warrior 2021 sẽ được cải tiến hệ thống treo\" data-height=\"567\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-2-b7ae.jpg\" title=\"Nissan Navara Pro-4X Warrior 2021 sẽ được cải tiến hệ thống treo\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p class=\"dvg_photo_caption\" style=\"margin-bottom: 10px; font-size: 14px; line-height: 18px; color: rgb(153, 153, 153); text-align: center; font-style: italic;\">Nissan Navara Pro-4X Warrior 2021 sẽ được cải tiến hệ thống treo...</p><div class=\"dvg_photo_box\"><figure id=\"imageGalleryId-5\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-4-4305.jpg\" data-desc=\"Nissan Navara Pro-4X Warrior 2021 dùng lốp 32 inch\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Nissan Navara Pro-4X Warrior 2021 dùng lốp 32 inch\" data-height=\"567\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-4-4305.jpg\" title=\"Nissan Navara Pro-4X Warrior 2021 dùng lốp 32 inch\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p class=\"dvg_photo_caption\" style=\"margin-bottom: 10px; font-size: 14px; line-height: 18px; color: rgb(153, 153, 153); text-align: center; font-style: italic;\">... và dùng lốp 32 inch</p></div></div><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Theo tin đồn, hệ thống treo trước của Nissan Navara Pro-4X Warrior 2021 sẽ giống với N-Trek Warrior cũ. Tuy nhiên, giảm xóc và nhíp sẽ được sơn màu giống với tấm ốp gầm bên dưới cản trước.</p><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Những chi tiết còn lại của Nissan Navara Pro-4X Warrior 2021 sẽ được bê nguyên từ N-Trek Warrior sang như bộ vành hợp kim rộng hơn nhằm phù hợp với bộ lốp off-road cỡ lớn hơn, đệm cao su (bump stop) ở lò xo nâng cấp, ốp bảo vệ gầm và chiều cao gầm có thể tăng thêm&nbsp;42 mm.</p><div class=\"dvg_photo_box\" style=\"font-family: Sarabun, Arial, Helvetica, sans-serif;\"><figure id=\"imageGalleryId-6\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-9-88a0.jpg\" data-desc=\"Nissan Navara Pro-4X Warrior 2021 được nâng cao gầm để chạy off-road tốt hơn\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Nissan Navara Pro-4X Warrior 2021 được nâng cao gầm để chạy off-road tốt hơn\" data-height=\"567\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-9-88a0.jpg\" title=\"Nissan Navara Pro-4X Warrior 2021 được nâng cao gầm để chạy off-road tốt hơn\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p class=\"dvg_photo_caption\" style=\"margin-bottom: 10px; font-size: 14px; line-height: 18px; color: rgb(153, 153, 153); text-align: center; font-style: italic;\">Nissan Navara Pro-4X Warrior 2021 được nâng cao gầm để chạy off-road tốt hơn</p></div><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Hiện chưa có nhiều thông tin chính thức liên quan đến Nissan Navara Pro-4X Warrior 2021. Dự đoán, xe sẽ dùng động cơ giống Nissan Navara Pro-4X 2021, cụ thể là máy dầu 4 xi-lanh, tăng áp kép, dung tích 2.3L, sản sinh công suất tối đa 190 mã lực và mô-men xoắn cực đại 450 Nm tại dải tua máy từ 1.500 - 2.500 vòng/phút. Động cơ kết hợp với hộp số tự động 7 cấp và hệ dẫn động 4 bánh có chế độ cầu chậm.</p><div class=\"dvg_photo_box\" style=\"font-family: Sarabun, Arial, Helvetica, sans-serif;\"><figure id=\"imageGalleryId-7\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-6-b223.jpg\" data-desc=\"Nissan Navara Pro-4X Warrior 2021 nhiều khả năng dùng động cơ giống bản thường\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Nissan Navara Pro-4X Warrior 2021 nhiều khả năng dùng động cơ giống bản thường\" data-height=\"567\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-6-b223.jpg\" title=\"Nissan Navara Pro-4X Warrior 2021 nhiều khả năng dùng động cơ giống bản thường\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p class=\"dvg_photo_caption\" style=\"margin-bottom: 10px; font-size: 14px; line-height: 18px; color: rgb(153, 153, 153); text-align: center; font-style: italic;\">Nissan Navara Pro-4X Warrior 2021 nhiều khả năng dùng động cơ giống bản thường</p></div><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Theo ông Bernie Quinn, giám đốc kỹ thuật của công ty Premcar, mẫu xe bán tải này \"đ<em style=\"line-height: 18px; margin: 0px;\">ược thiết kế để phù hợp hoàn toàn với điều kiện vận hành tại Úc, cả trên đường phố lẫn off-road, mà không phải hi sinh sự tiện nghi hay tính thực dụng</em>\".</p><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Hãng Nissan hiện chưa công bố thời điểm ra mắt thị trường Úc của Navara Pro-4X Warrior 2021. Dự đoán, xe sẽ được tung ra thị trường này vào tháng 8 hoặc tháng 9 năm nay như đối thủ mới dành cho&nbsp;<a href=\"https://tinxe.vn/gia-xe-ford-ranger-raptor\" target=\"_blank\" title=\"Giá xe Ford Ranger Raptor\" style=\"color: rgb(236, 119, 35);\"><strong>Ford Ranger Raptor</strong></a>.</p><div class=\"dvg_photo_box\" style=\"font-family: Sarabun, Arial, Helvetica, sans-serif;\"><figure id=\"imageGalleryId-8\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-3-6d9f.jpg\" data-desc=\"Giá bán của Nissan Navara Pro-4X Warrior 2021 chưa được công bố\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Giá bán của Nissan Navara Pro-4X Warrior 2021 chưa được công bố\" data-height=\"567\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-3-6d9f.jpg\" title=\"Giá bán của Nissan Navara Pro-4X Warrior 2021 chưa được công bố\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure></div></div></div></div>', '/storage/news/image/2/i10hCKpTYEGSvcbzdKeW.jpg', NULL, 1, 1, 1, '2021-06-19 04:03:51', 0, NULL, NULL),
(30, 2, 2, 2, '2021-06-19 04:05:40', 'Bộ tam Rolls-Royce màu trắng đọ dáng cùng nhau khiến nhiều người nghĩ ảnh được chụp ở trời Tây', '<p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><span style=\"font-weight: 700;\">Tâm điểm của 3 chiếc xe siêu sang Rolls-Royce này là Wraith đỗ chính giữa và 2 \"cánh gà\" là Ghost bản cũ. Không ít người xem đã cho rằng nếu không có biển số, bức ảnh này có thể chụp ở Dubai hay Monaco danh tiếng.</span><br></p>', '<p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Gần đây, giới mê xe trong nước lại xôn xao trước hình ảnh chụp lại&nbsp;<span style=\"font-weight: bolder;\"><a href=\"https://tinxe.vn/tin-xe/bo-tam-rollsroyce-mau-trang-do-dang-cung-nhau-khien-nhieu-nguoi-nghi-anh-duoc-chup-o-troi-tay-id20210608171737565\" style=\"color: rgb(236, 119, 35);\">3 chiếc xe siêu sang Rolls-Royce</a></span>&nbsp;màu trắng đọ dáng cùng nhau trong một khung cảnh khiến không ít người xem phải thốt lên rằng chẳng khác gì ở Anh, Monaco hay Thuỵ Sĩ.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Được biết, khung cảnh mà 3 chiếc xe siêu sang Rolls-Royce \"tông xuyệt tông\" màu trắng được mang ra tạo dáng cùng nhau là một khu \"sống ảo\" nằm ở quận 8 nhưng lại rất quen thuộc với giới trẻ tại Sài thành trong 1 năm trở lại đây.</p><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-0\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/08/95ywCUPr/196824694-1931473470346307-318225143556833869-n-a1b9.jpg\" data-desc=\"Bộ tam Rolls-Royce màu trắng đọ dáng cùng nhau khiến nhiều người nghĩ ảnh được chụp ở trời Tây\" style=\"margin-bottom: 0px; padding: 0px; text-align: center;\"><img alt=\"Bộ tam Rolls-Royce màu trắng đọ dáng cùng nhau khiến nhiều người nghĩ ảnh được chụp ở trời Tây\" data-height=\"1270\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/08/95ywCUPr/196824694-1931473470346307-318225143556833869-n-a1b9.jpg\" title=\"Bộ tam Rolls-Royce màu trắng đọ dáng cùng nhau khiến nhiều người nghĩ ảnh được chụp ở trời Tây\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Bộ tam Rolls-Royce màu trắng đọ dáng cùng nhau. Ảnh: Công Khanh</em></p></div><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Tâm điểm của 3 chiếc xe siêu sang Rolls-Royce này là mẫu Coupe siêu sang Wraith đỗ chính giữa và 2 \"cánh gà\" là Ghost bản cũ. Không ít người xem cho rằng nếu không có biển số, bức ảnh này rất có thể đánh lừa nhiều người được chụp ở trời Tây.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Không quá khó để nhận ra điểm thu hút của những bức ảnh này không chỉ là phông nền quá Tây mà còn đến từ bộ tam Rolls-Royce trong trang phục đồng màu với nhau. Hiện mức&nbsp;<a href=\"https://tinxe.vn/gia-xe-rolls-royce-wraith\" style=\"color: rgb(236, 119, 35);\"><span style=\"font-weight: bolder;\">giá bán của Rolls-Royce Wraith</span></a>&nbsp;hay cả Rolls-Royce Ghost đã qua sử dụng tại Việt Nam đều khá tốt, chỉ từ 9 tỷ đồng đã có thể sở hữu.</p><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-1\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/08/95ywCUPr/avatar-b9c8.jpg\" data-desc=\"Nếu che đi biển số chẳng khác gì bức ảnh được chụp ở Monaco hay Anh quốc\" style=\"margin-bottom: 0px; padding: 0px; text-align: center;\"><img alt=\"Nếu che đi biển số chẳng khác gì bức ảnh được chụp ở Monaco hay Anh quốc\" data-height=\"1112\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/08/95ywCUPr/avatar-b9c8.jpg\" title=\"Nếu che đi biển số chẳng khác gì bức ảnh được chụp ở Monaco hay Anh quốc\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Nếu che đi biển số chẳng khác gì bức ảnh được chụp ở Monaco hay Anh quốc. Ảnh: Công Khanh</em></p></div><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Chiếc Coupe siêu sang Rolls-Royce Wraith chụp cùng cặp đôi Rolls-Royce Ghost từng thuộc sở hữu của ông Đặng Lê Nguyên Vũ, người hiện có bộ sưu tập xe Rolls-Roye nhiều nhất tại dải đất hình chữ S này với ước tính không dưới 7 chiếc.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Rolls-Royce Wraith sở hữu khối động cơ V12, dung tích 6.6 lít, sản sinh công suất tối đa 623&nbsp;mã lực và&nbsp;mô-men xoắn cực đại&nbsp;đạt 800 Nm. Động cơ này đi kèm hộp số tự động ZF 8 cấp, nhờ đó, chiếc Coupe siêu sang của hãng xe Anh quốc chỉ mất khoảng 4,6 giây để&nbsp;có thể&nbsp;tăng tốc lên 100 km/h từ vị trí xuất phát&nbsp;trước khi đạt tốc độ tối đa 250 km/h.&nbsp;​​​​​</p><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-2\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/08/95ywCUPr/195637824-1931473353679652-8404122585915697865-n-3a1e.jpg\" data-desc=\"Chiếc Rolls-Royce Wraith đỗ chính giữa và 2 bên là Ghost bản cũ\" style=\"margin-bottom: 0px; padding: 0px; text-align: center;\"><img alt=\"Chiếc Rolls-Royce Wraith đỗ chính giữa và 2 bên là Ghost bản cũ\" data-height=\"1221\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/08/95ywCUPr/195637824-1931473353679652-8404122585915697865-n-3a1e.jpg\" title=\"Chiếc Rolls-Royce Wraith đỗ chính giữa và 2 bên là Ghost bản cũ\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Chiếc Rolls-Royce Wraith đỗ chính giữa và 2 bên là Ghost bản cũ. Ảnh: Công Khanh</em></p></div><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-3\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/08/95ywCUPr/194157245-1931473510346303-2270651742027686174-n-3e4f.jpg\" data-desc=\"Đèn hậu LED của Ghost vẫn rất cá tính dù ra mắt hơn 1 thập kỷ\" style=\"margin-bottom: 0px; padding: 0px; text-align: center;\"><img alt=\"Đèn hậu LED của Ghost vẫn rất cá tính dù ra mắt hơn 1 thập kỷ\" data-height=\"1273\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/08/95ywCUPr/194157245-1931473510346303-2270651742027686174-n-3e4f.jpg\" title=\"Đèn hậu LED của Ghost vẫn rất cá tính dù ra mắt hơn 1 thập kỷ\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Đèn hậu LED của Ghost vẫn rất cá tính dù ra mắt hơn 1 thập kỷ. Ảnh: Công Khanh</em></p></div><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-4\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/07/95ywCUPr/194246664-1931473450346309-8008472193228977695-n-89e8.jpg\" data-desc=\"Phía xa là Rolls-Royce Ghost và gần nhất là Rolls-Royce Wraith đều thuộc thế hệ đầu tiên\" style=\"margin-bottom: 0px; padding: 0px; text-align: center;\"><img alt=\"Phía xa là Rolls-Royce Ghost và gần nhất là Rolls-Royce Wraith đều thuộc thế hệ đầu tiên\" data-height=\"1246\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/07/95ywCUPr/194246664-1931473450346309-8008472193228977695-n-89e8.jpg\" title=\"Phía xa là Rolls-Royce Ghost và gần nhất là Rolls-Royce Wraith đều thuộc thế hệ đầu tiên\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Phía xa là Rolls-Royce Ghost và gần nhất là Rolls-Royce Wraith đều thuộc thế hệ đầu tiên. Ảnh: Công Khanh</em></p></div><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Hai chiếc xe siêu sang Rolls-Royce Ghost trong bức ảnh này có 1 chiếc sở hữu đèn pha của thế hệ cũ thuộc bản đầu tiên, và chiếc xe Rolls-Royce Ghost còn lại mang đèn pha của thế hệ thứ 2 hiện cũng đã dừng sản xuất để nhường dây chuyền cho Rolls-Royce Ghost 2021.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><a href=\"https://tinxe.vn/gia-xe-rolls-royce-ghost\" style=\"color: rgb(236, 119, 35);\"><span style=\"font-weight: bolder;\">Giá xe Rolls-Royce Ghost</span></a>&nbsp;bản cũ lúc mới về nước dưới 20 tỷ đồng, còn phiên bản mới có thể mức giá bán đã tăng lên trên 30 tỷ đồng. Rolls-Royce Ghost Series I và Rolls-Royce Ghost Series II khác nhau nhiều nhất ở thiết kế đèn pha. Bản đầu tiên có đôi mắt vuông vức hơn, trong khi thế hệ thứ 2 thiết kế kiểu cách.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Mẫu xe siêu sang Rolls-Royce Ghost bản cũ vẫn sử dụng động cơ V12, tăng áp kép, dung tích 6,6 lít, sản sinh công suất tối đa 562 mã lực và mô-men xoắn cực đại 780 Nm. Kết hợp cùng hộp số tự động ZF 8 cấp, Rolls-Royce Ghost mất khoảng thời gian 5 giây để tăng tốc từ vị trí xuất phát lên 100 km/h&nbsp;trước khi đạt vận tốc tối đa 250 km/h.</p>', '/storage/news/image/2/xNw5uw6OVsISFPxcPMfB.jpg', NULL, 1, 1, 1, '2021-06-19 04:05:52', 0, NULL, NULL);

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
(2, 2, 'admin2@dev.com', '2021-05-28 14:57:46', '$2y$10$vFxTKDYsc5xa6LW1UxdTZeeF5Sbk2dzL8kkh/1TUERQnp1nawEULu', NULL, NULL, 'p3l1TTg6UYMVrUGSHl9AFsaccFvjknfCsTkzdS6gFSjhIHxXpY62Rz0OmvHq', 1, 0, NULL, '2021-05-27 15:19:35'),
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
(1, 2, 2, 2, 'Nhạc hay quá đii', '<p>Bài nhạc hot nhất tuần qua</p>', '/storage/news/image/2/xpd1TOETJnNOYBq1TXDl.jpg', '/storage/news/video/2/EH1U2nYq7sSLIrAmhp2R.mp4', 'Trên mạng213231231231', '2021-06-12 13:10:39', 1, 1, 1, '2021-06-19 04:20:01', 0, '2021-06-12 13:05:07', '2021-06-19 04:20:01'),
(2, 4, 2, 2, 'Thờ ơ lệnh giãn cách', '<p><span style=\"color: rgb(51, 51, 51); font-family: Arial; background-color: rgb(247, 247, 247);\">Người người ra công viên thể dục, hàng quán vẫn mở cửa cho khách ngồi ăn... trong những ngày TP HCM giãn cách xã hội, lượng ca nhiễm tăng cao kỷ lục.</span><br></p>', '/storage/news/image/2/rCUrZHWMqxYqvRK3MiEl.jpg', '/storage/news/video/2/ifWkJ0y9wl6WSIFbaqvj.mp4', 'vnexpress báo', '2021-06-12 13:33:03', 1, 1, 1, '2021-06-19 04:18:47', 0, '2021-06-12 13:33:03', '2021-06-19 04:18:47'),
(3, 2, 2, 2, 'Italy 3-0 Thụy Sĩ: Locatelli lập cú đúp', '<p class=\"description\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 18px; line-height: 28.8px;\"><br><span style=\"color: rgb(34, 34, 34); font-family: arial; background-color: rgb(252, 250, 246);\">Bàn ở phút 52 giúp Manuel Locatelli trở thành cầu thủ thứ ba trong lịch sử tuyển Italy, sau Balotelli và Cashiraghi, lập cú đúp trong một trận ở VCK Euro</span><br></p>', '/storage/news/image/2/t4zetrv2DCD2fKeNmdCk.jpg', '/storage/news/video/2/uuezgW8pn2iKjqqlEpoA.mp4', 'vnexpress báo', '2021-06-19 04:14:50', 1, 1, 1, '2021-06-19 04:15:29', 0, '2021-06-19 04:14:50', '2021-06-19 04:15:29');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `congty`
--
ALTER TABLE `congty`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lichsutintuc`
--
ALTER TABLE `lichsutintuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `linhvuc`
--
ALTER TABLE `linhvuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `logtintuc`
--
ALTER TABLE `logtintuc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `taikhoan_vaitro`
--
ALTER TABLE `taikhoan_vaitro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `thongtin`
--
ALTER TABLE `thongtin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `thongtingiaidoan`
--
ALTER TABLE `thongtingiaidoan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videotintuc`
--
ALTER TABLE `videotintuc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
