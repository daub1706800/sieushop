-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 20, 2021 at 03:47 PM
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
(37, 27, '/storage/advertise/image/1/QYr2QZwvv8qhv64piU9j.jpg', 1, '2021-06-20 13:43:34', '2021-06-20 13:43:34'),
(38, 27, '/storage/advertise/image/1/qzPS5g6I6eZTqeyEtn7m.jpg', 1, '2021-06-20 13:43:34', '2021-06-20 13:43:34'),
(39, 27, '/storage/advertise/image/1/wP1wv0CRnYcH724M5uaZ.jpg', 1, '2021-06-20 13:43:34', '2021-06-20 13:43:34'),
(40, 27, '/storage/advertise/image/1/33ikJHCFDgRY65IFFYgQ.jpg', 1, '2021-06-20 13:43:34', '2021-06-20 13:43:34'),
(41, 27, '/storage/advertise/image/1/QqnHTOSZJw0ZYR5vpcDk.jpg', 1, '2021-06-20 13:43:34', '2021-06-20 13:43:34'),
(42, 28, '/storage/advertise/image/1/kStlsONIs267hPV1QeZe.jpg', 0, '2021-06-20 13:44:07', '2021-06-20 13:44:07'),
(43, 28, '/storage/advertise/image/1/k7Rjr6Sa9E2i1saRLpwO.jpg', 0, '2021-06-20 13:44:07', '2021-06-20 13:44:07'),
(44, 28, '/storage/advertise/image/1/vyvqFwRasJ3gwoeFZ01U.jpg', 0, '2021-06-20 13:44:07', '2021-06-20 13:44:07'),
(45, 28, '/storage/advertise/image/1/BeMDGeqellbz1J39IYJO.jpg', 0, '2021-06-20 13:44:07', '2021-06-20 13:44:07'),
(46, 28, '/storage/advertise/image/1/cVFP01XO9WhKgi6HiRNO.jpg', 0, '2021-06-20 13:44:07', '2021-06-20 13:44:07'),
(47, 29, '/storage/advertise/image/1/MIK7RqFEFLFbBCjBmHAw.jpg', 2, '2021-06-20 13:44:30', '2021-06-20 13:44:30'),
(48, 29, '/storage/advertise/image/1/YZ91hpeiIsa77HGfl3Kz.jpg', 2, '2021-06-20 13:44:30', '2021-06-20 13:44:30'),
(49, 29, '/storage/advertise/image/1/2DzZkKkxA0G7eKC7rwfr.jpg', 2, '2021-06-20 13:44:30', '2021-06-20 13:44:30'),
(50, 29, '/storage/advertise/image/1/mI0syhDSyR2n96yKA5xQ.jpg', 2, '2021-06-20 13:44:30', '2021-06-20 13:44:30'),
(51, 29, '/storage/advertise/image/1/ZSIuw3ptNNgyZeRiILGp.jpg', 2, '2021-06-20 13:44:30', '2021-06-20 13:44:30');

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
(2, 11, NULL, 0, '23232', '2021-05-29 00:00:42', NULL, NULL),
(6, 13, NULL, 0, 'Sai sot thông tin', '2021-06-01 20:49:24', NULL, NULL),
(7, 13, NULL, 0, 'sa', '2021-06-01 20:49:36', NULL, NULL),
(8, 13, NULL, 0, 'Sai sot thông tin', '2021-06-01 20:53:51', NULL, NULL),
(9, 4, NULL, 0, 'gdfg', '2021-06-01 20:56:50', NULL, NULL),
(10, 13, NULL, 0, 'Sai sot thông tin', '2021-06-02 20:54:27', NULL, NULL),
(11, 13, NULL, 28, 'Sai sot thông tin', '2021-06-02 21:03:44', NULL, NULL),
(20, 13, NULL, 2, 'das', '2021-06-04 22:03:00', NULL, NULL),
(22, 13, NULL, 2, 'Sai sot thông tin', '2021-06-07 23:12:12', NULL, NULL),
(23, 13, NULL, 2, 'dá', '2021-06-07 23:13:10', NULL, NULL),
(24, 13, NULL, 2, 'sai hinh', '2021-06-09 15:00:44', NULL, NULL),
(25, 13, NULL, 2, 'dsa', '2021-06-09 15:01:14', NULL, NULL),
(27, 11, NULL, 2, 's', '2021-06-09 15:04:30', NULL, NULL),
(28, 13, NULL, 2, 'sd', '2021-06-09 15:09:54', NULL, NULL),
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
(62, 24, NULL, 2, 'dá', '2021-06-19 11:21:09', NULL, NULL),
(67, 4, NULL, 28, 'dsa', '2021-06-20 22:36:34', NULL, NULL),
(68, 26, NULL, 28, 'sa', '2021-06-20 22:41:32', NULL, NULL),
(69, 26, NULL, 28, 'dsa', '2021-06-20 22:42:34', NULL, NULL);

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
(135, 24, NULL, 2, 'Xuất bản: tin tốt', '2021-06-19 04:21:22', NULL, NULL),
(136, 31, NULL, 28, 'Duyệt tin: sadasdadsa', '2021-06-20 15:24:29', NULL, NULL),
(137, 31, NULL, 28, 'Xuất bản: fds', '2021-06-20 15:24:32', NULL, NULL),
(138, 32, NULL, 28, 'Duyệt tin: sadasdadsa', '2021-06-20 15:32:20', NULL, NULL),
(139, 32, NULL, 28, 'Xuất bản: tin tốt', '2021-06-20 15:32:24', NULL, NULL),
(140, 4, NULL, 28, 'Duyệt tin: tin tốt', '2021-06-20 15:38:26', NULL, NULL),
(141, 4, NULL, 28, 'Xuất bản: fds', '2021-06-20 15:38:30', NULL, NULL),
(142, 26, NULL, 28, 'Duyệt tin: dsa', '2021-06-20 15:41:47', NULL, NULL),
(143, 26, NULL, 28, 'Xuất bản: fds', '2021-06-20 15:41:51', NULL, NULL),
(144, 26, NULL, 28, 'Duyệt tin: dsa', '2021-06-20 15:44:05', NULL, NULL),
(145, 26, NULL, 28, 'Xuất bản: sadasdadsa', '2021-06-20 15:44:08', NULL, NULL),
(146, 33, NULL, 28, 'Duyệt tin: tin viet rat hay', '2021-06-20 15:46:22', NULL, NULL),
(147, 33, NULL, 28, 'Xuất bản: tin viet rat hay', '2021-06-20 15:46:26', NULL, NULL);

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
(27, 'Quảng cáo Siêu xe', 0, '2021-06-20 13:43:34', '2021-06-20 13:43:34', '2021-06-20 13:43:34'),
(28, 'Quảng cáo Siêu xe 2', 0, '2021-06-20 13:44:07', '2021-06-20 13:44:07', '2021-06-20 13:44:07'),
(29, 'Quảng cáo Siêu xe 3', 0, '2021-06-20 13:44:30', '2021-06-20 13:44:30', '2021-06-20 13:44:30');

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
  `thoigianbatdau` date DEFAULT NULL,
  `thoigianketthuc` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taikhoan_vaitro`
--

INSERT INTO `taikhoan_vaitro` (`id`, `idtaikhoan`, `idvaitro`, `thoigianbatdau`, `thoigianketthuc`, `created_at`, `updated_at`) VALUES
(1, 10, 1, '2021-06-20', '2021-06-20', NULL, NULL),
(2, 10, 2, '2021-06-20', '2021-06-20', NULL, NULL),
(3, 11, 1, '2021-06-20', '2021-06-20', NULL, NULL),
(4, 11, 2, '2021-06-20', '2021-06-20', NULL, NULL),
(5, 12, 1, '2021-06-20', '2021-06-20', NULL, NULL),
(6, 16, 1, '2021-06-20', '2021-06-20', NULL, NULL),
(9, 16, 2, '2021-06-20', '2021-06-20', NULL, NULL),
(12, 4, 6, '2021-06-20', '2021-06-20', NULL, NULL),
(15, 20, 3, '2021-06-20', '2021-06-20', NULL, NULL),
(16, 21, 3, '2021-06-20', '2021-06-20', NULL, NULL),
(17, 22, 3, '2021-06-20', '2021-06-20', NULL, NULL),
(19, 23, 6, '2021-06-20', '2021-06-20', NULL, NULL),
(20, 23, 5, '2021-06-20', '2021-06-20', NULL, NULL),
(21, 24, 3, '2021-06-20', '2021-06-20', NULL, NULL),
(25, 28, 12, '2021-06-20', '2021-06-20', NULL, NULL),
(26, 1, 1, '2021-06-20', '2021-06-20', NULL, NULL),
(27, 2, 2, '2021-06-20', '2021-06-20', NULL, NULL),
(28, 35, 2, '2021-06-20', '2021-06-20', NULL, NULL),
(31, 38, 2, '2021-06-20', '2021-06-20', NULL, NULL),
(32, 28, 13, '2021-06-20', '2021-06-20', NULL, NULL);

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
(4, 1, 2, 2, '2021-06-17 04:44:22', 'Indonesia không hưởng quả phạt góc nào trước Việt Nam', 'Bên cạnh tỷ số 4-0, thế trận áp đảo của Việt Nam trước Indonesia còn thể hiện qua số phạt góc cũng như dứt điểm, trong trận đấu thuộc vòng loại World Cup 2022 tối 7/6.\r\n\r\nTrong hiệp một, Việt Nam dồn ép và hưởng tới 10', 'Trong hiệp một, Việt Nam dồn ép và hưởng tới 10 quả phạt góc. Nhiều lần Quang Hải đá phạt góc thẳng ra tuyến hai cho Tuấn Anh hoặc cầu thủ vào thay người Xuân Trường sút xa. Nguy hiểm nhất là cú vô-lê của Tuấn Anh ngay phút thứ 6, bóng đi căng nhưng trúng vị trí thủ môn Nadeo Argawinata.\r\n\r\nSang hiệp hai, Việt Nam tạo ra thêm năm quả phạt góc. Trong đó, quả cuối cùng dẫn tới bàn của Công Phượng phút 67. Xuân Trường sút phạt về cột gần cho Tiến Linh chạy cắt mặt đánh đầu ngược vào trong. Công Phượng bị bất ngờ khi bóng bay đến nhưng vẫn kịp dùng đùi trái đẩy bóng vào lưới cận thành, nâng tỷ số lên 3-0. Kể từ đó, Việt Nam đá giữ sức và không tạo ra thêm phạt góc.\r\n\r\nIndonesia không được đá phạt góc lần nào trong cả trận. Họ cũng không sút được lần nào trong hiệp một. Sang hiệp hai, Indonesia dứt điểm được bốn lần, trong đó một pha bị thủ môn Tấn Trường bắt gọn và một lần trúng xà. Việt Nam cả trận tung ra 13 cú dứt điểm, ghi bốn bàn nhờ công Tiến Linh, Quang Hải, Công Phượng và Văn Thanh trong hiệp hai.\r\n\r\nTỷ lệ kiểm soát bóng cũng nghiêng hẳn về Việt Nam, có lúc lên tới 71% thời gian. Indonesia chỉ hơn Việt Nam về số pha phạm lỗi (16 so với 10) và số thẻ vàng (5 so với 2).\r\n\r\nNhờ chiến thắng này, thầy trò Park Hang-seo giữ đỉnh bảng G với 14 điểm, hơn UAE hai điểm. Ở loạt trận áp chót tối 11/6, Việt Nam gặp Malaysia, còn Indonesia đụng UAE.', '/storage/news/image/28/Tq6NZR2MFyusL5AhnLmM.jpg', NULL, 1, 1, 1, '2021-06-20 15:38:30', 1, NULL, '2021-06-17 04:44:22'),
(24, 4, 2, 2, '2021-06-11 15:47:04', 'Thêm \'biệt thự di động\' Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn', '<p><span style=\"color: rgb(136, 136, 136); font-family: Arial; font-size: 13px;\">Mercedes-Maybach S 650 Pullman là mẫu xe sang bậc nhất hiện nay của thương hiệu ngôi sao 3 cánh, được sản xuất dành cho những VIP.</span><br></p>', '<p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Mới đây, một chiếc Mercedes-Maybach S 650 Pullman đã xuất hiện tại showroom tư nhân ở Sài Gòn. Nhiều khả năng đây chính là chiếc S 650 Pullman thứ ba được đưa về nước.</p><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Về ngoại thất, xe sở hữu màu đen ở toàn bộ phần thân xe, tương đồng với chiếc đầu tiên được nhập khẩu bởi một đại lý tư nhân có tiếng ngoài Hà Nội. Hai chiếc này còn sở hữu bộ mâm giống nhau nên càng khó để phân biệt. Trong khi đó, chiếc thứ 2 mang 2 tông màu tương phản.</p><div class=\"VCSortableInPreviewMode noCaption active\" type=\"Photo\" style=\"padding: 0px; margin-top: 0px; margin-right: auto; margin-left: auto; outline: 0px; display: inline-block; position: relative; text-align: center; transition: all 0.3s ease-in-out 0s; width: 640px; z-index: 100; visibility: visible; overflow-wrap: break-word; cursor: default; color: rgb(0, 0, 0); font-family: \"Times New Roman\"; font-size: medium; background-color: rgb(255, 255, 255); margin-bottom: 20px !important;\"><div style=\"padding: 0px; margin: 0px; outline: 0px; position: relative; display: inline-block;\"><div id=\"adnzone_511318\" style=\"padding: 0px; margin: 0px auto; outline: 0px; clear: both; text-align: left; position: absolute; width: 640px; top: 0px;\"><iframe id=\"adnzone_511318_0_80302\" scrolling=\"no\" frameborder=\"no\" style=\"padding: 0px; margin: 0px; width: 640px; height: 132px; border-width: initial; border-style: none; z-index: 2; position: relative; transition: height 1s ease-out 0s;\"></iframe></div><a href=\"https://autopro8.mediacdn.vn/2021/6/10/1924215169500720257929192717118227332894463n-16233093746582091287651.jpg\" data-fancybox=\"img-lightbox\" title=\"\" class=\"detail-img-lightbox\" style=\"padding: 0px; margin: 0px; display: block; outline: none !important;\"><img src=\"https://autopro8.mediacdn.vn/thumb_w/640/2021/6/10/1924215169500720257929192717118227332894463n-16233093746582091287651.jpg\" id=\"img_bdffd720-c9bb-11eb-9c2d-57b61dc229c1\" w=\"960\" h=\"720\" alt=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 1.\" title=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 1.\" rel=\"lightbox\" photoid=\"bdffd720-c9bb-11eb-9c2d-57b61dc229c1\" type=\"photo\" data-original=\"https://autopro8.mediacdn.vn/2021/6/10/1924215169500720257929192717118227332894463n-16233093746582091287651.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"padding-top: unset; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin: 137px auto 0px; display: inline-block; vertical-align: top; pointer-events: none; max-width: 100%;\"></a></div></div><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Ngoại thất của xe sở hữu màu đen bóng, điểm xuyết là các chi tiết bằng kim loại sáng bóng như tay nắm cửa, lưới tản nhiệt, viền cửa sổ... tương tự Mercedes-Maybach S 650 thông thường. Điểm khác biệt lớn nhất của bản Pullman là kích thước xe lên tới 6,5 mét.</p><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Mercedes-Maybach S 650 Pullman thực chất là phiên bản facelift và được đổi tên của phiên bản Mercedes-Maybach S 600 Pullman. Trước đó, giới mê xe Việt đã có cơ hội đón hai chiếc S 600 Pullman với màu sơn trắng và đen.</p><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Sự thay đổi lớn nhất giữa phiên bản S 650 và S 600 đó là phần đầu xe được thiết kế lại với hốc gió mới làm tăng khả năng làm mát động cơ và hệ thống đèn pha LED Multibeam có khả năng chiếu sáng hơn 600 m. Ngoài ra, một thanh nẹp chrome được bổ sung cho cả phần cản trước và cản sau của xe.</p><div class=\"VCSortableInPreviewMode active noCaption\" type=\"Photo\" style=\"padding: 0px; margin-top: 0px; margin-right: auto; margin-left: auto; outline: 0px; display: inline-block; position: relative; text-align: center; transition: all 0.3s ease-in-out 0s; width: 640px; z-index: 100; visibility: visible; overflow-wrap: break-word; cursor: default; color: rgb(0, 0, 0); font-family: \"Times New Roman\"; font-size: medium; background-color: rgb(255, 255, 255); margin-bottom: 20px !important;\"><div style=\"padding: 0px; margin: 0px; outline: 0px;\"><a href=\"https://autopro8.mediacdn.vn/2021/6/10/photo-1-16233155612931639098081.jpg\" data-fancybox=\"img-lightbox\" title=\"\" class=\"detail-img-lightbox\" style=\"padding: 0px; margin: 0px; display: block; outline: none !important;\"><img src=\"https://autopro8.mediacdn.vn/thumb_w/640/2021/6/10/photo-1-16233155612931639098081.jpg\" id=\"img_25260ec0-c9ca-11eb-b822-39bd312c79ca\" w=\"1024\" h=\"768\" alt=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 2.\" title=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 2.\" rel=\"lightbox\" photoid=\"25260ec0-c9ca-11eb-b822-39bd312c79ca\" type=\"photo\" data-original=\"https://autopro8.mediacdn.vn/2021/6/10/photo-1-16233155612931639098081.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"padding: 0px; margin: 0px auto; display: inline-block; vertical-align: top; pointer-events: none; max-width: 100%;\"></a></div></div><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Được biết, showroom nhập về chiếc Mercedes-Maybach S 650 Pullman này toạ lạc trên đường An Dương Vương, Q.5, TP.HCM. Đây cũng chính là đơn vị nhập về hai chiếc Ford GT, chiếc Ferrari 488 Pista Spider thứ hai và chiếc Mercedes-Maybach S 650 Pullman hai tông màu kể trên.<br style=\"padding: 0px; margin: 0px;\"></p><div class=\"VCSortableInPreviewMode active noCaption\" type=\"Photo\" style=\"padding: 0px; margin-top: 0px; margin-right: auto; margin-left: auto; outline: 0px; display: inline-block; position: relative; text-align: center; transition: all 0.3s ease-in-out 0s; width: 640px; z-index: 100; visibility: visible; overflow-wrap: break-word; cursor: default; color: rgb(0, 0, 0); font-family: \"Times New Roman\"; font-size: medium; background-color: rgb(255, 255, 255); margin-bottom: 20px !important;\"><div style=\"padding: 0px; margin: 0px; outline: 0px;\"><a href=\"https://autopro8.mediacdn.vn/2021/6/10/1943446289472095927458295045540580620425387n-1623309374681828586472.jpg\" data-fancybox=\"img-lightbox\" title=\"\" class=\"detail-img-lightbox\" style=\"padding: 0px; margin: 0px; display: block; outline: none !important;\"><img src=\"https://autopro8.mediacdn.vn/thumb_w/640/2021/6/10/1943446289472095927458295045540580620425387n-1623309374681828586472.jpg\" id=\"img_be1708a0-c9bb-11eb-80f3-9937f5f0f3df\" w=\"960\" h=\"720\" alt=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 3.\" title=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 3.\" rel=\"lightbox\" photoid=\"be1708a0-c9bb-11eb-80f3-9937f5f0f3df\" type=\"photo\" data-original=\"https://autopro8.mediacdn.vn/2021/6/10/1943446289472095927458295045540580620425387n-1623309374681828586472.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"padding: 0px; margin: 0px auto; display: inline-block; vertical-align: top; pointer-events: none; max-width: 100%;\"></a></div></div><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Bên trong nội thất, vô-lăng được thay đổi lên loại 3 chấu, các nút bấm trên vô-lăng được thiết kế lại. Cụm màn hình kích thước 12,3 inch ở phía sau vô lăng cũng như màn hình giải trí trung tâm có giao diện mới mẻ hơn, độ phân giải được cải thiết cho chất lượng sắc nét hơn. Nhìn chung, khoang lái của bản Pullman với bản thường không có sự khác biệt.</p><div id=\"admzone480456\" class=\"mgt10\" style=\"padding: 0px; margin: 0px; outline: 0px; color: rgb(0, 0, 0); font-family: \"Times New Roman\"; font-size: medium; background-color: rgb(255, 255, 255);\"><div id=\"zone-480456\" style=\"padding: 0px; margin: 0px; outline: 0px;\"><div id=\"share-jkkj65ph\" style=\"padding: 0px; margin: 0px; outline: 0px;\"><div id=\"placement-k6ssarfg\" revenue=\"cpm\" style=\"padding: 0px; margin: 0px; outline: 0px;\"><div id=\"banner-480456-554230\" style=\"padding: 0px; margin: 0px; outline: 0px; min-height: 10px; min-width: 10px;\"><div id=\"slot-2-480456-554230\" style=\"padding: 0px; margin: 0px; outline: 0px;\"><div id=\"sspbid_3345\" style=\"padding: 0px; margin: 0px; outline: 0px;\"></div></div></div></div></div></div></div><div class=\"VCSortableInPreviewMode noCaption\" type=\"Photo\" style=\"padding: 0px; margin-top: 0px; margin-right: auto; margin-left: auto; outline: 0px; display: inline-block; position: relative; text-align: center; transition: all 0.3s ease-in-out 0s; width: 640px; z-index: 100; visibility: visible; overflow-wrap: break-word; cursor: default; color: rgb(0, 0, 0); font-family: \"Times New Roman\"; font-size: medium; background-color: rgb(255, 255, 255); margin-bottom: 20px !important;\"><div style=\"padding: 0px; margin: 0px; outline: 0px;\"><a href=\"https://autopro8.mediacdn.vn/2020/11/18/robb-pullman-7-16057073259921924881895.jpg\" data-fancybox=\"img-lightbox\" title=\"\" class=\"detail-img-lightbox\" style=\"padding: 0px; margin: 0px; display: block; outline: none !important;\"><img src=\"https://autopro8.mediacdn.vn/thumb_w/640/2020/11/18/robb-pullman-7-16057073259921924881895.jpg\" id=\"img_c9e2ee40-29a4-11eb-b4c3-1b5625fe3d04\" w=\"1280\" h=\"720\" alt=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 4.\" title=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 4.\" rel=\"lightbox\" photoid=\"c9e2ee40-29a4-11eb-b4c3-1b5625fe3d04\" type=\"photo\" data-original=\"https://autopro8.mediacdn.vn/2020/11/18/robb-pullman-7-16057073259921924881895.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"padding: 0px; margin: 0px auto; display: inline-block; vertical-align: top; pointer-events: none; max-width: 100%;\"></a></div></div><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\">Điểm nhấn của bản Pullman là hàng ghế sau. So với phiên bản S-Class Maybach thường, S 650 Pullman được bổ sung 2 ghế phụ cho khoang sau và có thể gập gọn khi không cần thiết. Phần ghế ngồi phụ này đồng thời được tích hợp 2 màn hình giải trí. Hệ thống âm thanh là loại hàng hiệu Burmester 3D cao cấp. Để tăng tính riêng tư, xe cũng được trang bị một vách ngăn giữa khoang hành khách và tài xế. Một tấm kính nhỏ có thể trượt lên/xuống và làm mờ khi chủ nhân cần không gian riêng tư.</p><div class=\"VCSortableInPreviewMode active noCaption\" type=\"Photo\" style=\"padding: 0px; margin-top: 0px; margin-right: auto; margin-left: auto; outline: 0px; display: inline-block; position: relative; text-align: center; transition: all 0.3s ease-in-out 0s; width: 640px; z-index: 100; visibility: visible; overflow-wrap: break-word; cursor: default; color: rgb(0, 0, 0); font-family: \"Times New Roman\"; font-size: medium; background-color: rgb(255, 255, 255); margin-bottom: 20px !important;\"><div style=\"padding: 0px; margin: 0px; outline: 0px;\"><a href=\"https://autopro8.mediacdn.vn/2020/11/18/robb-pullman-6-1605707325968247657870.jpg\" data-fancybox=\"img-lightbox\" title=\"\" class=\"detail-img-lightbox\" style=\"padding: 0px; margin: 0px; display: block; outline: none !important;\"><img src=\"https://autopro8.mediacdn.vn/thumb_w/640/2020/11/18/robb-pullman-6-1605707325968247657870.jpg\" id=\"img_c9ac4de0-29a4-11eb-80f3-9937f5f0f3df\" w=\"1280\" h=\"720\" alt=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 5.\" title=\"Thêm biệt thự di động Mercedes-Maybach S 650 Pullman về Việt Nam với ngoại hình dễ gây nhầm lẫn - Ảnh 5.\" rel=\"lightbox\" photoid=\"c9ac4de0-29a4-11eb-80f3-9937f5f0f3df\" type=\"photo\" data-original=\"https://autopro8.mediacdn.vn/2020/11/18/robb-pullman-6-1605707325968247657870.jpg\" width=\"\" height=\"\" class=\"lightbox-content\" style=\"padding: 0px; margin: 0px auto; display: inline-block; vertical-align: top; pointer-events: none; max-width: 100%;\"></a></div></div><p style=\"padding: 15px 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 25px; font-family: TimeNewRoman; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px;\">Động cơ của Mercedes-Maybach S 650 Pullman là loại V12, tăng áp kép, dung tích 6 lít, tạo ra công suất tối đa 630 mã lực, mô-men xoắn cực đại 1.000 Nm cùng với hộp số tự động 7 cấp 7G Tronic.</span></p>', '/storage/news/image/2/ZsCNhSN9nMmRbNB2SuA3.jpg', NULL, 0, 1, 1, '2021-06-19 04:21:22', 1, NULL, '2021-06-10 09:30:14'),
(25, 1, 1, 1, '2021-06-11 18:45:19', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged</span><br></p>', '<p><span style=\"font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchange</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\"><br></span><br></p>', '/storage/news/image/1/4sZqVKRhMYH02vprXK0g.jpg', NULL, 0, 0, 0, NULL, 0, '2021-06-11 17:40:02', '2021-06-11 18:45:19'),
(26, 1, 2, 1, '2021-06-17 06:05:22', 'Hoà Scotland 0-0 ngay tại Wembley tối 18/6, Anh vẫn đứng thứ hai bảng D và lỡ cơ hội giành vé sớm vào vòng 1/8 Euro 2021.', 'Ở trận đấu sớm, Croatia và CH Czech đã chầm chân nhau 1-1. Anh, vì thế sẽ chiếm đầu bảng và giành vé đi tiếp nếu đánh bại Scotland', '<p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Tuy nhiên, đội chủ nhà đã không thể nào tìm được đường vào khung thành đối phương. Họ vì thế đứt luôn chuỗi bảy trận thắng trên mọi đấu trường. Đây cũng lần thứ hai Anh hòa không bàn thắng tại Wembley, kể từ khi sân này được xây dựng lại và mở cửa năm 2007. Trận hòa 0-0 còn lại diễn ra tháng 10/2010, khi Anh dưới thời HLV Fabio Capello để Montenegro cầm chân tại vòng loại Euro. Số trận hòa không bàn thắng của Anh tại Euro và World Cup cũng được nâng lên con số 17 - nhiều nhất của một đội tuyển trong lịch sử hai giải đấu.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Billy Gilmour, trong trận đấu đầu tiên xuất phát cho Scotland, được bầu là cầu thủ hay nhất trận. Tiền vệ 20 tuổi thuộc biên chế Chelsea thi đấu ấn tượng, khi chuyền bóng chính xác 91%, tám lần thu hồi bóng và hai cú tắc bóng sau 75 phút trên sân.</p><figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\" style=\"margin-right: auto; margin-bottom: 15px; margin-left: auto; padding: 0px; text-rendering: optimizelegibility; max-width: 100%; clear: both; position: relative; text-align: center; width: 670px; float: left; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\"><div class=\"fig-picture\" style=\"margin: 0px; padding: 0px 0px 446.219px; text-rendering: optimizelegibility; width: 670px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;\"><picture data-inimage=\"done\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><source data-srcset=\"https://i1-thethao.vnecdn.net/2021/06/19/000-9CK2JK-jpeg-1385-1624056816.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=AAoVOpDT9HXEUwPrLbuxIw 1x, https://i1-thethao.vnecdn.net/2021/06/19/000-9CK2JK-jpeg-1385-1624056816.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=XNzKIyR3mogjYSAP-aGmXQ 1.5x, https://i1-thethao.vnecdn.net/2021/06/19/000-9CK2JK-jpeg-1385-1624056816.jpg?w=680&h=0&q=100&dpr=2&fit=crop&s=33vr-qyz0f-ELbAvAhSH0w 2x\" srcset=\"https://i1-thethao.vnecdn.net/2021/06/19/000-9CK2JK-jpeg-1385-1624056816.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=AAoVOpDT9HXEUwPrLbuxIw 1x, https://i1-thethao.vnecdn.net/2021/06/19/000-9CK2JK-jpeg-1385-1624056816.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=XNzKIyR3mogjYSAP-aGmXQ 1.5x, https://i1-thethao.vnecdn.net/2021/06/19/000-9CK2JK-jpeg-1385-1624056816.jpg?w=680&h=0&q=100&dpr=2&fit=crop&s=33vr-qyz0f-ELbAvAhSH0w 2x\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><img itemprop=\"contentUrl\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Kane không thể làm nên đột biến và phải rời sân nhường chỗ cho Marcus Rashford. Ảnh: AFP.\" class=\"lazy lazied\" src=\"https://i1-thethao.vnecdn.net/2021/06/19/000-9CK2JK-jpeg-1385-1624056816.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=AAoVOpDT9HXEUwPrLbuxIw\" data-src=\"https://i1-thethao.vnecdn.net/2021/06/19/000-9CK2JK-jpeg-1385-1624056816.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=AAoVOpDT9HXEUwPrLbuxIw\" data-ll-status=\"loaded\" style=\"border: 0px; margin: 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 0px; line-height: 0; max-width: 100%; position: absolute; top: 0px; left: 0px; max-height: 700px; width: 670px;\"><div class=\"embed-container\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-left: 0px; text-rendering: optimizelegibility; position: absolute; height: 100px; overflow: hidden; clear: both; width: 670px; bottom: -1px; margin-bottom: 0px !important; padding-bottom: 0px !important;\"></div></picture></div><figcaption itemprop=\"description\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 670px; float: left; text-align: left;\"><p class=\"Image\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; text-rendering: optimizespeed; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22.4px;\">Kane không thể làm nên đột biến và phải rời sân nhường chỗ cho Marcus Rashford. Ảnh: <em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">AFP.</em></p></figcaption></figure><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">HLV Gareth Southgate giữ nguyên hàng công so với ở trận mở màn thắng Croatia 1-0, với bộ ba Phil Foden, Raheem Sterling và Harry Kane. Tuy nhiên, họ đã trải qua ngày thi đấu thất vọng. Kane chỉ có hai cú sút trước khi bị thay ra bởi Marcus Rashford phút 74.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Những cơ hội ngon ăn nhất của Anh đều thuộc về... các hậu vệ và chia đều trong mỗi hiệp. Phút 12, từ quả đá phạt góc của Mason Mount, trung vệ John Stones bật cao đánh đầu đưa bóng dội cột dọc. Đầu hiệp hai, Reece James tung cú sút chân phải quyết đoán sát mép vòng cấm, nhưng bóng đi vọt xà ngang khung thành thủ môn David Marshall.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Tình huống đáng chú ý nhất của Scotland đến không lâu sau cú sút của James. Phút 62, xuất phát từ tình huống lộn xộn trong vòng cấm, tiền đạo Lyndon Dykes sút chéo góc rất nhanh, nhưng chính James đã kịp lui về phá bóng ngay trên vạch vôi cứu thua cho chủ nhà.</p><figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\" style=\"margin-right: auto; margin-bottom: 15px; margin-left: auto; padding: 0px; text-rendering: optimizelegibility; max-width: 100%; clear: both; position: relative; text-align: center; width: 670px; float: left; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\"><div class=\"fig-picture\" style=\"margin: 0px; padding: 0px 0px 446.219px; text-rendering: optimizelegibility; width: 670px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;\"><picture style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><source data-srcset=\"https://i1-thethao.vnecdn.net/2021/06/19/000-9CJ9J4-jpeg-2041-1624056950.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=__o3twNz629hj0gK57Jp_w 1x, https://i1-thethao.vnecdn.net/2021/06/19/000-9CJ9J4-jpeg-2041-1624056950.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=PFLcQXsCaqX0oNn_xLtrzg 1.5x, https://i1-thethao.vnecdn.net/2021/06/19/000-9CJ9J4-jpeg-2041-1624056950.jpg?w=680&h=0&q=100&dpr=2&fit=crop&s=3ZRZDBWOsiVP1ExlIJzGTw 2x\" srcset=\"https://i1-thethao.vnecdn.net/2021/06/19/000-9CJ9J4-jpeg-2041-1624056950.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=__o3twNz629hj0gK57Jp_w 1x, https://i1-thethao.vnecdn.net/2021/06/19/000-9CJ9J4-jpeg-2041-1624056950.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=PFLcQXsCaqX0oNn_xLtrzg 1.5x, https://i1-thethao.vnecdn.net/2021/06/19/000-9CJ9J4-jpeg-2041-1624056950.jpg?w=680&h=0&q=100&dpr=2&fit=crop&s=3ZRZDBWOsiVP1ExlIJzGTw 2x\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><img itemprop=\"contentUrl\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Phil Foden bị cầu thủ Scotland ngăn chặn. Ảnh: AFP.\" class=\"lazy lazied\" src=\"https://i1-thethao.vnecdn.net/2021/06/19/000-9CJ9J4-jpeg-2041-1624056950.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=__o3twNz629hj0gK57Jp_w\" data-src=\"https://i1-thethao.vnecdn.net/2021/06/19/000-9CJ9J4-jpeg-2041-1624056950.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=__o3twNz629hj0gK57Jp_w\" data-ll-status=\"loaded\" style=\"border: 0px; margin: 0px; padding: 0px; text-rendering: optimizelegibility; font-size: 0px; line-height: 0; max-width: 100%; position: absolute; top: 0px; left: 0px; max-height: 700px; width: 670px;\"></picture></div><figcaption itemprop=\"description\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 670px; float: left; text-align: left;\"><p class=\"Image\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; text-rendering: optimizespeed; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22.4px;\">Phil Foden bị cầu thủ Scotland ngăn chặn. Ảnh: <em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">AFP.</em></p></figcaption></figure><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Hòa Scotland, Anh vẫn đứng nhì bảng D, cùng bốn điểm như CH Czech nhưng thua hiệu số. Trong khi đó, Scotland tiếp tục xếp bét bảng với một điểm, nhưng vẫn còn cơ hội đi tiếp. Ở lượt cuối ngày 22/6, Anh đụng CH Czech còn Scotland gặp Croatia.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\"><span style=\"font-weight: bolder; margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Danh sách thi đấu</span></p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\"><em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Anh</em>: Pickford, Shaw, Mings, Stones, James, Rice, Phillips, Mount, Foden (Grealish 63), Sterling, Kane (Rashford 74).</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\"><em style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Scotland</em>: Marshall, O\'Donnell, Robertson, McTominay, Hanley, Tierney, McGinn, McGregor, Gilmour (Armstrong 76\'), Dykes, Adams (Nisbet 86).</p>', '/storage/news/image/2/3bsg7cESLrWYy2CiYGYy.jpg', NULL, 1, 1, 1, '2021-06-20 15:44:08', 1, '2021-06-12 06:37:40', '2021-06-17 06:05:22'),
(27, 4, 2, 2, '2021-06-17 06:08:14', 'Lamborghini Aventador Roadster màu xanh lá rất lạ xuất hiện tại Sài thành', '<p><span style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 700;\">Hình ảnh chiếc siêu xe mui trần Lamborghini Aventador LP700-4 Roadster mang tông màu xanh lá nổi bần bật được một người chuyên mua bán xe sang ở Sài thành chia sẻ đã khiến giới mê xe tò mò muốn biết lai lịch mẫu xe này.</span><br></p>', '<p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Số lượng dòng siêu xe mui trần&nbsp;<a href=\"https://tinxe.vn/gia-xe-lamborghini-aventador\" style=\"color: rgb(236, 119, 35);\"><strong>Lamborghini Aventador LP700-4</strong></a>&nbsp;tại Việt Nam chỉ có khoảng 4 chiếc và tất cả đều mang tông màu trắng. Tuy nhiên, mới đây, hình ảnh một chiếc xe Lamborghini Aventador LP700-4 Roadster mang tông màu xanh lá đã được chia sẻ lên mạng khiến không ít người tò mò.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Hình ảnh do một người chuyên mua bán xe sang ở Sài thành chia sẻ cho thấy, chiếc siêu xe Lamborghini Aventador LP700-4 mui trần mang tông màu xanh lá nổi bần bật được tiết lộ mới thay áo bằng phương pháp dán đề-can.</p><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-0\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/95ywCUPr/193709501-1940207466139574-5551447284724329117-n-17e9.jpg\" data-desc=\"Lamborghini Aventador Roadster màu xanh lá rất lạ xuất hiện tại Sài thành\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Lamborghini Aventador Roadster màu xanh lá rất lạ xuất hiện tại Sài thành\" data-height=\"1769\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/95ywCUPr/193709501-1940207466139574-5551447284724329117-n-17e9.jpg\" title=\"Lamborghini Aventador Roadster màu xanh lá rất lạ xuất hiện tại Sài thành\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Lamborghini Aventador Roadster màu xanh lá rất lạ xuất hiện tại Sài thành</em></p></div><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-1\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/95ywCUPr/194354245-1940209929472661-3436294791819122856-n-6f4f.jpg\" data-desc=\"Ngoại thất xe được dán đề-can màu xanh lá nổi bật\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Ngoại thất xe được dán đề-can màu xanh lá nổi bật\" data-height=\"1044\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/95ywCUPr/194354245-1940209929472661-3436294791819122856-n-6f4f.jpg\" title=\"Ngoại thất xe được dán đề-can màu xanh lá nổi bật\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Ngoại thất xe được dán đề-can màu xanh lá nổi bật</em></p></div><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-2\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/95ywCUPr/198539301-1940207746139546-4536290876708553667-n-5c13.jpg\" data-desc=\"Cả 4 chiếc Lamborghini Aventador LP700-4 mui trần tại Việt Nam đều có màu sơn nguyên bản là trắng\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Cả 4 chiếc Lamborghini Aventador LP700-4 mui trần tại Việt Nam đều có màu sơn nguyên bản là trắng\" data-height=\"1217\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/95ywCUPr/198539301-1940207746139546-4536290876708553667-n-5c13.jpg\" title=\"Cả 4 chiếc Lamborghini Aventador LP700-4 mui trần tại Việt Nam đều có màu sơn nguyên bản là trắng\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Cả 4 chiếc Lamborghini Aventador LP700-4 mui trần tại Việt Nam đều có màu sơn nguyên bản là trắng</em></p></div><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-3\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/95ywCUPr/197226402-1940207506139570-2108999548764779390-n-bd65.jpg\" data-desc=\"Rất có thể 1 trong 4 chiếc Lamborghini Aventador Roadster này mới dán đổi màu\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Rất có thể 1 trong 4 chiếc Lamborghini Aventador Roadster này mới dán đổi màu\" data-height=\"1600\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/95ywCUPr/197226402-1940207506139570-2108999548764779390-n-bd65.jpg\" title=\"Rất có thể 1 trong 4 chiếc Lamborghini Aventador Roadster này mới dán đổi màu\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Rất có thể 1 trong 4 chiếc Lamborghini Aventador Roadster này mới dán đổi màu</em></p></div><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-4\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/95ywCUPr/195538169-1940207589472895-3461139109826816022-n-bc2b.jpg\" data-desc=\"Ống xả độ này rất giống Lamborghini Aventador Roadster của Bình Phước\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Ống xả độ này rất giống Lamborghini Aventador Roadster của Bình Phước\" data-height=\"1885\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/95ywCUPr/195538169-1940207589472895-3461139109826816022-n-bc2b.jpg\" title=\"Ống xả độ này rất giống Lamborghini Aventador Roadster của Bình Phước\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Ống xả độ này rất giống Lamborghini Aventador Roadster của Bình Phước</em></p></div><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Nhiều khả năng đây là 1 trong chiếc 4 chiếc siêu xe Lamborghini Aventador LP700-4 Roadster có mặt tại Việt Nam hiện nay và dựa vào trang bị ống xả cùng như body kit ngoại thất khiến giới mê xe nghĩ đến chiếc siêu xe mui trần Lamborghini Aventador LP700-4 của một người chơi lan đột biến ở tỉnh Bình Phước.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Đa phần những chiếc&nbsp;<a href=\"https://tinxe.vn/gia-xe-lamborghini\" style=\"color: rgb(236, 119, 35);\"><strong>siêu xe Lamborghini tại Việt Nam</strong></a>&nbsp;có bộ áo màu xanh cốm là Murcielago hay Huracan, đây là lần hiếm hoi 1 chiếc xe Aventador sở hữu bộ áo xanh lá dù được dán bằng đề-can. Điểm ấn tượng trên dòng xe Lamborghini Aventador LP700-4 Roadster chính là phần mui xe có thể dễ dàng tháo lắp bằng tay để biến chiếc xe từ bản Coupe sang mui trần và ngược lại.</p><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-5\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/95ywCUPr/196321956-1940207559472898-8127244265287771625-n-85d0.jpg\" data-desc=\"Ghế ngồi xe bọc da màu đen cùng chỉ trắng\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Ghế ngồi xe bọc da màu đen cùng chỉ trắng\" data-height=\"1777\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/95ywCUPr/196321956-1940207559472898-8127244265287771625-n-85d0.jpg\" title=\"Ghế ngồi xe bọc da màu đen cùng chỉ trắng\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Ghế ngồi xe bọc da màu đen cùng chỉ trắng</em></p></div><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-6\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/95ywCUPr/201003793-1940207719472882-7987776009872304917-n-e29d.jpg\" data-desc=\"Khoang lái xe có vài chi tiết ốp carbon\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Khoang lái xe có vài chi tiết ốp carbon\" data-height=\"1339\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/95ywCUPr/201003793-1940207719472882-7987776009872304917-n-e29d.jpg\" title=\"Khoang lái xe có vài chi tiết ốp carbon\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Khoang lái xe có vài chi tiết ốp carbon</em></p></div><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Phần mui của siêu xe Lamborghini Aventador LP700-4 Roadster&nbsp;được chia thành hai phần riêng biệt, mỗi mui chỉ nặng 6 kg do làm từ carbon. Chủ nhân của siêu xe mui trần này có thể tháo mui bằng tay và để vào khoang hành lý phía trước của xe, thời gian hoàn thành việc tháo hay lắp mui sẽ tuỳ vào độ nhanh nhẹn nhưng nhanh nhất cũng phải trên 20 giây.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Siêu xe Lamborghini Aventador LP700-4 mui trần sử dụng động cơ V12, dung tích 6.5 lít, sản sinh công suất tối đa 700 mã lực tại vòng tua máy&nbsp;8.250 vòng/phút và mô-men xoắn cực đại 690 Nm tại vòng tua máy&nbsp;5.500 vòng/phút.&nbsp;Sức mạnh được truyền tới cả bốn bánh thông qua hộp số tự động 7 cấp ISR, nhờ đó, Lamborghini Aventador LP700-4 Roadster có thể tăng tốc từ vị trí xuất phát lên 100 km/h trong thời gian 2,9 giây trước khi đạt vận tốc tối đa 349 km/h.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px; text-align: right;\">Ảnh:&nbsp;<em style=\"line-height: 18px; margin: 0px;\">Công Khanh</em></p>', '/storage/news/image/2/xd68PQX0yN6TZgTms1XN.jpg', '/storage/news/video/2/Dx7h4gMVFADyJeThbpgl.mp4', 1, 1, 1, '2021-06-19 04:08:03', 1, NULL, '2021-06-12 12:08:09'),
(28, 2, 2, 2, '2021-06-18 15:09:13', 'Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhân', '<p>Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhân<br></p>', '<p>Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhân<br></p>', '/storage/news/image/2/1DqrGmAOHVJBnfa5miYj.jpg', NULL, 1, 1, 1, '2021-06-18 15:35:31', 1, NULL, NULL);
INSERT INTO `tintuc` (`id`, `idchuyenmuc`, `idcongty`, `idtaikhoan`, `ngaydangtintuc`, `tieudetintuc`, `tomtattintuc`, `noidungtintuc`, `hinhanhtintuc`, `videotintuc`, `loaitintuc`, `duyettintuc`, `xuatbantintuc`, `ngayxuatban`, `lydogo`, `created_at`, `updated_at`) VALUES
(29, 2, 2, 2, '2021-06-19 04:03:32', 'Nissan Navara Pro-4X Warrior 2021 được hé lộ, chuẩn bị đối đầu Ford Ranger Raptor', '<p><span style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: 700;\">Được phát triển dựa trên bản Pro-4X cao cấp nhất của dòng Nissan Navara 2021 hiện đang bán tại Úc, Pro-4X Warrior sẽ thay thế đàn anh N-Trek Warrior cũ.</span><br></p>', '<div class=\"box-detail\" data-title=\"Nissan Navara Pro-4X Warrior 2021 được hé lộ, chuẩn bị đối đầu Ford Ranger Raptor\" data-url=\"\" style=\"width: 730.047px; display: inline-block;\"><div class=\"blog-detail\"><div class=\"content-detail group-image-lightbox\" style=\"width: 730.047px; display: inline-block; font-size: 18px; line-height: 28px; color: rgb(51, 51, 51); margin-top: 10px;\"><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Chẳng bao lâu sau khi tung ra Navara 2021 tại thị trường Úc, hãng Nissan lại chuẩn bị vén màn 1 phiên bản mới của dòng xe bán tải này, mang tên Pro-4X Warrior. Được phát triển dựa trên bản Pro-4X cao cấp nhất của dòng&nbsp;<a href=\"https://tinxe.vn/gia-xe-nissan-navara\" target=\"_blank\" title=\"Giá xe Nissan Navara\" style=\"color: rgb(236, 119, 35);\"><strong>Nissan Navara 2021</strong></a>&nbsp;hiện đang bán tại Úc, Pro-4X Warrior sẽ thay thế đàn anh&nbsp;N-Trek Warrior cũ.</p><div class=\"dvg_photo_box\" style=\"font-family: Sarabun, Arial, Helvetica, sans-serif;\"><figure id=\"imageGalleryId-0\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-1-bd30.jpg\" data-desc=\"Nissan Navara Pro-4X Warrior 2021 được hé lộ hình ảnh dù xe chưa ra mắt\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Nissan Navara Pro-4X Warrior 2021 được hé lộ hình ảnh dù xe chưa ra mắt\" data-height=\"445\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-1-bd30.jpg\" title=\"Nissan Navara Pro-4X Warrior 2021 được hé lộ hình ảnh dù xe chưa ra mắt\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p class=\"dvg_photo_caption\" style=\"margin-bottom: 10px; font-size: 14px; line-height: 18px; color: rgb(153, 153, 153); text-align: center; font-style: italic;\"><a href=\"https://tinxe.vn/tin-xe/nissan-navara-pro4x-warrior-2021-duoc-he-lo-chuan-bi-doi-dau-ford-ranger-raptor-id20210618225823628\" style=\"color: rgb(236, 119, 35);\">Nissan Navara Pro-4X Warrior 2021 được hé lộ hình ảnh</a>&nbsp;dù xe chưa ra mắt</p></div><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Tương tự đàn anh N-Trek Warrior, Nissan Navara Pro-4X Warrior 2021 cũng do công ty kỹ thuật nổi tiếng của Úc là&nbsp;Premcar lắp ráp. Ngoài ra, mẫu xe này còn có những nâng cấp tương tự Nissan Navara N-Trek Warrior cũ như thanh bảo vệ cản trước hầm hố, tích hợp dải đèn bổ sung bên dưới lưới tản nhiệt.</p><div class=\"dvg_photo_box\" style=\"font-family: Sarabun, Arial, Helvetica, sans-serif;\"><figure id=\"imageGalleryId-1\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-7-afaf.jpg\" data-desc=\"Nissan Navara Pro-4X Warrior 2021 có thêm thanh bảo vệ cản trước hầm hố\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Nissan Navara Pro-4X Warrior 2021 có thêm thanh bảo vệ cản trước hầm hố\" data-height=\"445\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-7-afaf.jpg\" title=\"Nissan Navara Pro-4X Warrior 2021 có thêm thanh bảo vệ cản trước hầm hố\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p class=\"dvg_photo_caption\" style=\"margin-bottom: 10px; font-size: 14px; line-height: 18px; color: rgb(153, 153, 153); text-align: center; font-style: italic;\">Nissan Navara Pro-4X Warrior 2021 có thêm thanh bảo vệ cản trước hầm hố</p><div class=\"dvg_photo_box\"><figure id=\"imageGalleryId-2\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-5-3735.jpg\" data-desc=\"Tấm ốp bảo vệ gầm bên dưới cản trước của Nissan Navara Pro-4X Warrior 2021\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Tấm ốp bảo vệ gầm bên dưới cản trước của Nissan Navara Pro-4X Warrior 2021\" data-height=\"567\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-5-3735.jpg\" title=\"Tấm ốp bảo vệ gầm bên dưới cản trước của Nissan Navara Pro-4X Warrior 2021\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p class=\"dvg_photo_caption\" style=\"margin-bottom: 10px; font-size: 14px; line-height: 18px; color: rgb(153, 153, 153); text-align: center; font-style: italic;\">Tấm ốp bảo vệ gầm bên dưới cản trước của xe</p><div class=\"dvg_photo_box\"><figure id=\"imageGalleryId-3\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-8-c924.jpg\" data-desc=\"Dải đèn LED bổ sung trên đầu xe Nissan Navara Pro-4X Warrior 2021\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Dải đèn LED bổ sung trên đầu xe Nissan Navara Pro-4X Warrior 2021\" data-height=\"445\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-8-c924.jpg\" title=\"Dải đèn LED bổ sung trên đầu xe Nissan Navara Pro-4X Warrior 2021\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p class=\"dvg_photo_caption\" style=\"margin-bottom: 10px; font-size: 14px; line-height: 18px; color: rgb(153, 153, 153); text-align: center; font-style: italic;\">Trên thanh bảo vệ cản trước còn có dải đèn LED bổ sung</p></div></div></div><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Tất nhiên, thanh bảo vệ cản trước này đã được thay đổi thiết kế để phù hợp với Nissan Navara mới. Chi tiết này được chế tạo dựa trên thanh bảo vệ cản trước mà hãng Nissan phát triển dành cho Navara mới. Tuy nhiên, khác với phụ kiện chính hãng của Nissan, thanh cản trước trên Navara Pro-4X Warrior 2021 lại được sơn màu giống với thân xe.</p><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Ngoài ra, Nissan Navara Pro-4X Warrior 2021 còn có thêm hệ thống treo cải tiến đặc biệt và có kích thước lớn hơn so với bản thường. Hệ thống treo này kết hợp cùng lốp chạy mọi địa hình Cooper Discoverer 32 inch để mang đến khả năng off-road tốt hơn cho Nissan Navara Pro-4X Warrior mới.</p><div class=\"dvg_photo_box\" style=\"font-family: Sarabun, Arial, Helvetica, sans-serif;\"><figure id=\"imageGalleryId-4\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-2-b7ae.jpg\" data-desc=\"Nissan Navara Pro-4X Warrior 2021 sẽ được cải tiến hệ thống treo\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Nissan Navara Pro-4X Warrior 2021 sẽ được cải tiến hệ thống treo\" data-height=\"567\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-2-b7ae.jpg\" title=\"Nissan Navara Pro-4X Warrior 2021 sẽ được cải tiến hệ thống treo\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p class=\"dvg_photo_caption\" style=\"margin-bottom: 10px; font-size: 14px; line-height: 18px; color: rgb(153, 153, 153); text-align: center; font-style: italic;\">Nissan Navara Pro-4X Warrior 2021 sẽ được cải tiến hệ thống treo...</p><div class=\"dvg_photo_box\"><figure id=\"imageGalleryId-5\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-4-4305.jpg\" data-desc=\"Nissan Navara Pro-4X Warrior 2021 dùng lốp 32 inch\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Nissan Navara Pro-4X Warrior 2021 dùng lốp 32 inch\" data-height=\"567\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-4-4305.jpg\" title=\"Nissan Navara Pro-4X Warrior 2021 dùng lốp 32 inch\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p class=\"dvg_photo_caption\" style=\"margin-bottom: 10px; font-size: 14px; line-height: 18px; color: rgb(153, 153, 153); text-align: center; font-style: italic;\">... và dùng lốp 32 inch</p></div></div><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Theo tin đồn, hệ thống treo trước của Nissan Navara Pro-4X Warrior 2021 sẽ giống với N-Trek Warrior cũ. Tuy nhiên, giảm xóc và nhíp sẽ được sơn màu giống với tấm ốp gầm bên dưới cản trước.</p><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Những chi tiết còn lại của Nissan Navara Pro-4X Warrior 2021 sẽ được bê nguyên từ N-Trek Warrior sang như bộ vành hợp kim rộng hơn nhằm phù hợp với bộ lốp off-road cỡ lớn hơn, đệm cao su (bump stop) ở lò xo nâng cấp, ốp bảo vệ gầm và chiều cao gầm có thể tăng thêm&nbsp;42 mm.</p><div class=\"dvg_photo_box\" style=\"font-family: Sarabun, Arial, Helvetica, sans-serif;\"><figure id=\"imageGalleryId-6\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-9-88a0.jpg\" data-desc=\"Nissan Navara Pro-4X Warrior 2021 được nâng cao gầm để chạy off-road tốt hơn\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Nissan Navara Pro-4X Warrior 2021 được nâng cao gầm để chạy off-road tốt hơn\" data-height=\"567\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-9-88a0.jpg\" title=\"Nissan Navara Pro-4X Warrior 2021 được nâng cao gầm để chạy off-road tốt hơn\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p class=\"dvg_photo_caption\" style=\"margin-bottom: 10px; font-size: 14px; line-height: 18px; color: rgb(153, 153, 153); text-align: center; font-style: italic;\">Nissan Navara Pro-4X Warrior 2021 được nâng cao gầm để chạy off-road tốt hơn</p></div><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Hiện chưa có nhiều thông tin chính thức liên quan đến Nissan Navara Pro-4X Warrior 2021. Dự đoán, xe sẽ dùng động cơ giống Nissan Navara Pro-4X 2021, cụ thể là máy dầu 4 xi-lanh, tăng áp kép, dung tích 2.3L, sản sinh công suất tối đa 190 mã lực và mô-men xoắn cực đại 450 Nm tại dải tua máy từ 1.500 - 2.500 vòng/phút. Động cơ kết hợp với hộp số tự động 7 cấp và hệ dẫn động 4 bánh có chế độ cầu chậm.</p><div class=\"dvg_photo_box\" style=\"font-family: Sarabun, Arial, Helvetica, sans-serif;\"><figure id=\"imageGalleryId-7\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-6-b223.jpg\" data-desc=\"Nissan Navara Pro-4X Warrior 2021 nhiều khả năng dùng động cơ giống bản thường\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Nissan Navara Pro-4X Warrior 2021 nhiều khả năng dùng động cơ giống bản thường\" data-height=\"567\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-6-b223.jpg\" title=\"Nissan Navara Pro-4X Warrior 2021 nhiều khả năng dùng động cơ giống bản thường\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p class=\"dvg_photo_caption\" style=\"margin-bottom: 10px; font-size: 14px; line-height: 18px; color: rgb(153, 153, 153); text-align: center; font-style: italic;\">Nissan Navara Pro-4X Warrior 2021 nhiều khả năng dùng động cơ giống bản thường</p></div><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Theo ông Bernie Quinn, giám đốc kỹ thuật của công ty Premcar, mẫu xe bán tải này \"đ<em style=\"line-height: 18px; margin: 0px;\">ược thiết kế để phù hợp hoàn toàn với điều kiện vận hành tại Úc, cả trên đường phố lẫn off-road, mà không phải hi sinh sự tiện nghi hay tính thực dụng</em>\".</p><p style=\"margin-bottom: 10px; font-family: Sarabun, Arial, Helvetica, sans-serif;\">Hãng Nissan hiện chưa công bố thời điểm ra mắt thị trường Úc của Navara Pro-4X Warrior 2021. Dự đoán, xe sẽ được tung ra thị trường này vào tháng 8 hoặc tháng 9 năm nay như đối thủ mới dành cho&nbsp;<a href=\"https://tinxe.vn/gia-xe-ford-ranger-raptor\" target=\"_blank\" title=\"Giá xe Ford Ranger Raptor\" style=\"color: rgb(236, 119, 35);\"><strong>Ford Ranger Raptor</strong></a>.</p><div class=\"dvg_photo_box\" style=\"font-family: Sarabun, Arial, Helvetica, sans-serif;\"><figure id=\"imageGalleryId-8\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-3-6d9f.jpg\" data-desc=\"Giá bán của Nissan Navara Pro-4X Warrior 2021 chưa được công bố\" style=\"padding: 0px; margin-bottom: 0px; text-align: center;\"><img alt=\"Giá bán của Nissan Navara Pro-4X Warrior 2021 chưa được công bố\" data-height=\"567\" data-width=\"850\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/18/0MQViQLm/nissan-navara-pro-4x-warrior-2021-3-6d9f.jpg\" title=\"Giá bán của Nissan Navara Pro-4X Warrior 2021 chưa được công bố\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure></div></div></div></div>', '/storage/news/image/2/i10hCKpTYEGSvcbzdKeW.jpg', NULL, 1, 1, 1, '2021-06-19 04:03:51', 0, NULL, NULL),
(30, 2, 2, 2, '2021-06-19 04:05:40', 'Bộ tam Rolls-Royce màu trắng đọ dáng cùng nhau khiến nhiều người nghĩ ảnh được chụp ở trời Tây', '<p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><span style=\"font-weight: 700;\">Tâm điểm của 3 chiếc xe siêu sang Rolls-Royce này là Wraith đỗ chính giữa và 2 \"cánh gà\" là Ghost bản cũ. Không ít người xem đã cho rằng nếu không có biển số, bức ảnh này có thể chụp ở Dubai hay Monaco danh tiếng.</span><br></p>', '<p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Gần đây, giới mê xe trong nước lại xôn xao trước hình ảnh chụp lại&nbsp;<span style=\"font-weight: bolder;\"><a href=\"https://tinxe.vn/tin-xe/bo-tam-rollsroyce-mau-trang-do-dang-cung-nhau-khien-nhieu-nguoi-nghi-anh-duoc-chup-o-troi-tay-id20210608171737565\" style=\"color: rgb(236, 119, 35);\">3 chiếc xe siêu sang Rolls-Royce</a></span>&nbsp;màu trắng đọ dáng cùng nhau trong một khung cảnh khiến không ít người xem phải thốt lên rằng chẳng khác gì ở Anh, Monaco hay Thuỵ Sĩ.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Được biết, khung cảnh mà 3 chiếc xe siêu sang Rolls-Royce \"tông xuyệt tông\" màu trắng được mang ra tạo dáng cùng nhau là một khu \"sống ảo\" nằm ở quận 8 nhưng lại rất quen thuộc với giới trẻ tại Sài thành trong 1 năm trở lại đây.</p><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-0\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/08/95ywCUPr/196824694-1931473470346307-318225143556833869-n-a1b9.jpg\" data-desc=\"Bộ tam Rolls-Royce màu trắng đọ dáng cùng nhau khiến nhiều người nghĩ ảnh được chụp ở trời Tây\" style=\"margin-bottom: 0px; padding: 0px; text-align: center;\"><img alt=\"Bộ tam Rolls-Royce màu trắng đọ dáng cùng nhau khiến nhiều người nghĩ ảnh được chụp ở trời Tây\" data-height=\"1270\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/08/95ywCUPr/196824694-1931473470346307-318225143556833869-n-a1b9.jpg\" title=\"Bộ tam Rolls-Royce màu trắng đọ dáng cùng nhau khiến nhiều người nghĩ ảnh được chụp ở trời Tây\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Bộ tam Rolls-Royce màu trắng đọ dáng cùng nhau. Ảnh: Công Khanh</em></p></div><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Tâm điểm của 3 chiếc xe siêu sang Rolls-Royce này là mẫu Coupe siêu sang Wraith đỗ chính giữa và 2 \"cánh gà\" là Ghost bản cũ. Không ít người xem cho rằng nếu không có biển số, bức ảnh này rất có thể đánh lừa nhiều người được chụp ở trời Tây.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Không quá khó để nhận ra điểm thu hút của những bức ảnh này không chỉ là phông nền quá Tây mà còn đến từ bộ tam Rolls-Royce trong trang phục đồng màu với nhau. Hiện mức&nbsp;<a href=\"https://tinxe.vn/gia-xe-rolls-royce-wraith\" style=\"color: rgb(236, 119, 35);\"><span style=\"font-weight: bolder;\">giá bán của Rolls-Royce Wraith</span></a>&nbsp;hay cả Rolls-Royce Ghost đã qua sử dụng tại Việt Nam đều khá tốt, chỉ từ 9 tỷ đồng đã có thể sở hữu.</p><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-1\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/08/95ywCUPr/avatar-b9c8.jpg\" data-desc=\"Nếu che đi biển số chẳng khác gì bức ảnh được chụp ở Monaco hay Anh quốc\" style=\"margin-bottom: 0px; padding: 0px; text-align: center;\"><img alt=\"Nếu che đi biển số chẳng khác gì bức ảnh được chụp ở Monaco hay Anh quốc\" data-height=\"1112\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/08/95ywCUPr/avatar-b9c8.jpg\" title=\"Nếu che đi biển số chẳng khác gì bức ảnh được chụp ở Monaco hay Anh quốc\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Nếu che đi biển số chẳng khác gì bức ảnh được chụp ở Monaco hay Anh quốc. Ảnh: Công Khanh</em></p></div><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Chiếc Coupe siêu sang Rolls-Royce Wraith chụp cùng cặp đôi Rolls-Royce Ghost từng thuộc sở hữu của ông Đặng Lê Nguyên Vũ, người hiện có bộ sưu tập xe Rolls-Roye nhiều nhất tại dải đất hình chữ S này với ước tính không dưới 7 chiếc.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Rolls-Royce Wraith sở hữu khối động cơ V12, dung tích 6.6 lít, sản sinh công suất tối đa 623&nbsp;mã lực và&nbsp;mô-men xoắn cực đại&nbsp;đạt 800 Nm. Động cơ này đi kèm hộp số tự động ZF 8 cấp, nhờ đó, chiếc Coupe siêu sang của hãng xe Anh quốc chỉ mất khoảng 4,6 giây để&nbsp;có thể&nbsp;tăng tốc lên 100 km/h từ vị trí xuất phát&nbsp;trước khi đạt tốc độ tối đa 250 km/h.&nbsp;​​​​​</p><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-2\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/08/95ywCUPr/195637824-1931473353679652-8404122585915697865-n-3a1e.jpg\" data-desc=\"Chiếc Rolls-Royce Wraith đỗ chính giữa và 2 bên là Ghost bản cũ\" style=\"margin-bottom: 0px; padding: 0px; text-align: center;\"><img alt=\"Chiếc Rolls-Royce Wraith đỗ chính giữa và 2 bên là Ghost bản cũ\" data-height=\"1221\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/08/95ywCUPr/195637824-1931473353679652-8404122585915697865-n-3a1e.jpg\" title=\"Chiếc Rolls-Royce Wraith đỗ chính giữa và 2 bên là Ghost bản cũ\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Chiếc Rolls-Royce Wraith đỗ chính giữa và 2 bên là Ghost bản cũ. Ảnh: Công Khanh</em></p></div><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-3\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/08/95ywCUPr/194157245-1931473510346303-2270651742027686174-n-3e4f.jpg\" data-desc=\"Đèn hậu LED của Ghost vẫn rất cá tính dù ra mắt hơn 1 thập kỷ\" style=\"margin-bottom: 0px; padding: 0px; text-align: center;\"><img alt=\"Đèn hậu LED của Ghost vẫn rất cá tính dù ra mắt hơn 1 thập kỷ\" data-height=\"1273\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/08/95ywCUPr/194157245-1931473510346303-2270651742027686174-n-3e4f.jpg\" title=\"Đèn hậu LED của Ghost vẫn rất cá tính dù ra mắt hơn 1 thập kỷ\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Đèn hậu LED của Ghost vẫn rất cá tính dù ra mắt hơn 1 thập kỷ. Ảnh: Công Khanh</em></p></div><div class=\"dvg_photo_box\" style=\"color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><figure id=\"imageGalleryId-4\" class=\"imageGalleryId\" data-src=\"https://img.tinxe.vn/2021/06/07/95ywCUPr/194246664-1931473450346309-8008472193228977695-n-89e8.jpg\" data-desc=\"Phía xa là Rolls-Royce Ghost và gần nhất là Rolls-Royce Wraith đều thuộc thế hệ đầu tiên\" style=\"margin-bottom: 0px; padding: 0px; text-align: center;\"><img alt=\"Phía xa là Rolls-Royce Ghost và gần nhất là Rolls-Royce Wraith đều thuộc thế hệ đầu tiên\" data-height=\"1246\" data-width=\"1600\" src=\"https://img.tinxe.vn/resize/1000x-/2021/06/07/95ywCUPr/194246664-1931473450346309-8008472193228977695-n-89e8.jpg\" title=\"Phía xa là Rolls-Royce Ghost và gần nhất là Rolls-Royce Wraith đều thuộc thế hệ đầu tiên\" style=\"border: 0px; max-width: 100%; margin: 10px 0px;\"></figure><p style=\"margin-bottom: 10px; text-align: center;\"><em style=\"line-height: 18px; margin: 0px;\">Phía xa là Rolls-Royce Ghost và gần nhất là Rolls-Royce Wraith đều thuộc thế hệ đầu tiên. Ảnh: Công Khanh</em></p></div><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Hai chiếc xe siêu sang Rolls-Royce Ghost trong bức ảnh này có 1 chiếc sở hữu đèn pha của thế hệ cũ thuộc bản đầu tiên, và chiếc xe Rolls-Royce Ghost còn lại mang đèn pha của thế hệ thứ 2 hiện cũng đã dừng sản xuất để nhường dây chuyền cho Rolls-Royce Ghost 2021.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\"><a href=\"https://tinxe.vn/gia-xe-rolls-royce-ghost\" style=\"color: rgb(236, 119, 35);\"><span style=\"font-weight: bolder;\">Giá xe Rolls-Royce Ghost</span></a>&nbsp;bản cũ lúc mới về nước dưới 20 tỷ đồng, còn phiên bản mới có thể mức giá bán đã tăng lên trên 30 tỷ đồng. Rolls-Royce Ghost Series I và Rolls-Royce Ghost Series II khác nhau nhiều nhất ở thiết kế đèn pha. Bản đầu tiên có đôi mắt vuông vức hơn, trong khi thế hệ thứ 2 thiết kế kiểu cách.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Sarabun, Arial, Helvetica, sans-serif; font-size: 18px;\">Mẫu xe siêu sang Rolls-Royce Ghost bản cũ vẫn sử dụng động cơ V12, tăng áp kép, dung tích 6,6 lít, sản sinh công suất tối đa 562 mã lực và mô-men xoắn cực đại 780 Nm. Kết hợp cùng hộp số tự động ZF 8 cấp, Rolls-Royce Ghost mất khoảng thời gian 5 giây để tăng tốc từ vị trí xuất phát lên 100 km/h&nbsp;trước khi đạt vận tốc tối đa 250 km/h.</p>', '/storage/news/image/2/xNw5uw6OVsISFPxcPMfB.jpg', NULL, 1, 1, 1, '2021-06-19 04:05:52', 0, NULL, NULL),
(31, 17, 2, 28, '2021-06-20 15:23:59', 'Chương trình OCOP : 15 sản phẩm hạt điều Bình Phước được xếp hạng 4 sao', '<p><span style=\"color: rgb(68, 68, 68); font-family: arial; font-size: 13px; text-align: justify; background-color: rgb(255, 255, 255);\">Trong số 22 sản phẩm OCOP (Chương trình “Mỗi xã một sản phẩm”) vừa được UBND tỉnh Bình Phước công bố, có 15 sản phẩm từ hạt điều. Các sản phẩm hạt điều này đều được xếp hạng 4 sao (bảng xếp hạng cao nhất của tỉnh Bình Phước).</span><br></p>', '<div class=\"separator\" style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); clear: both; text-align: center;\"><a href=\"https://1.bp.blogspot.com/-N4BhcG_xk5c/YL35cgedYmI/AAAAAAAC70s/yEjrKChnsacS4lKBodmJ1cLt_G4WpLr6wCLcBGAsYHQ/s665/hat-dieu.jpg\" imageanchor=\"1\" style=\"padding: 0px; margin: 0px 1em; outline: 0px; list-style: none; border: 0px none; color: rgb(17, 17, 17); transition: all 0.2s ease-in-out 0s;\"><img border=\"0\" data-original-height=\"441\" data-original-width=\"665\" src=\"https://1.bp.blogspot.com/-N4BhcG_xk5c/YL35cgedYmI/AAAAAAAC70s/yEjrKChnsacS4lKBodmJ1cLt_G4WpLr6wCLcBGAsYHQ/s16000/hat-dieu.jpg\" style=\"padding: 4px; margin: 0px; outline: 0px; list-style: none; border: 0px; transition: all 0.4s ease-in-out 0s; max-width: 600px; height: auto;\"></a></div><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255);\"></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\"><i style=\"padding: 0px; margin: 0px 5px 0px 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(78, 77, 77);\">Phân loại hạt điều tại nhà máy của Xí nghiệp chế biến điều và nông sản thực phẩm Bình Phước (Tổng công ty Rau quả, Nông sản). Ảnh: Đình Huệ/TTXVN</i></span></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\">Cụ thể, 15 sản phẩm hạt điều gồm điều nhân, điều mật ong, điều rang tỏi, điều rang muối, điều wasabi, điều phô mai, điều tỏi ớt, bánh cashwhe…</span></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\">Ngoài hạt điều, Bình Phước còn có các sản phẩm gồm hạt tiêu, cà phê, mật ong, yến sào và mít được chứng nhận sản phẩm OCOP.</span></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\">Bình Phước được xem là “thủ phủ điều” của cả nước, với diện tích 175.000 ha, chiếm gần 50% diện tích và hơn 54% sản lượng điều của cả nước.</span></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\">Theo đánh giá của Cục chế biến và Phát triển thị trường nông sản thuộc Bộ Nông nghiệp và Phát triển nông thôn, chất lượng và hương vị là hai thế mạnh của điều Việt Nam so với hạt điều có xuất xứ từ các quốc gia khác, nhất là từ châu Phi. Riêng hạt điều Bình Phước được đánh giá là có chất lượng vượt bậc so với điều của các quốc gia khác với giá trị dinh dưỡng cao.</span></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\">Thương hiệu “hạt điều Bình Phước” đã được bảo hộ chỉ dẫn địa lý. Hiện nay, kim ngạch xuất khẩu hạt điều của Bình Phước đạt khoảng 600 - 800 triệu USD/năm.</span></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\">Mới đây một tập đoàn của Hà Lan đã quyết định đầu tư dự án trị giá 250 triệu USD tại Bình Phước nhằm phát triển vùng nguyên liệu, chế biến sâu và sản xuất dầu vỏ hạt điều tinh lọc xuất khẩu.</span></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\">22 sản phẩm của Bình Phước được chứng nhận sản phẩm OCOP lần này thuộc 6 doanh nghiệp, 1 cơ sở và 2 hộ sản xuất, kinh doanh trên địa bàn. Những sản phẩm OCOP của Bình Phước được xếp hạng từ 3 - 4 sao.</span></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: center;\"><b style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(56, 118, 29); font-family: arial;\">Sỹ Tuyên (TTXVN)</span></b></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial; font-size: x-small;\">Link bài viết gốc: https://baotintuc.vn/kinh-te/chuong-trinh-ocop-15-san-pham-hat-dieu-binh-phuoc-duoc-xep-hang-4-sao-20210607171102359.htm</span></p>', '/storage/news/image/28/B82R8Zh6ztA4MV4XuqRf.jpg', NULL, 1, 1, 1, '2021-06-20 15:24:32', 0, NULL, NULL),
(32, 17, 2, 28, '2021-06-20 15:31:19', 'Lâm Đồng: Lốc xoáy tuốt rụng hơn 60 tấn sầu riêng, thiệt hại hơn 2,5 tỉ đồng', '<p><span style=\"color: rgb(68, 68, 68); font-family: arial; font-size: 13px; text-align: justify; background-color: rgb(255, 255, 255);\">Trận mưa lớn kèm lốc xoáy quét qua địa bàn H.Đạ Huoai, Lâm Đồng tuốt rụng hơn 60 tấn sầu riêng của người dân địa phương, gây thiệt hại nặng nề.</span><br></p>', '<p><br></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255);\"></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: center;\"><i style=\"padding: 0px; margin: 0px 5px 0px 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(78, 77, 77);\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\">Lốc xoáy tuốt rụng hơn 60 tấn sầu riêng non của người dân xã Hà Lâm</span><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\">. Ảnh: Trùng Dương</span></i></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\">Vào khoảng 17 giờ ngày 6.6, trận mưa lớn kèm theo lốc xoáy quét qua địa bàn xã Hà Lâm (H.Đạ Huoai, Lâm Đồng) nhưng đã tuốt rụng hàng chục tấn sầu riêng của người dân địa phương.</span></p><div class=\"google-auto-placed ap_container\" style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); width: 660px; height: auto; clear: both; text-align: center;\"><ins data-ad-format=\"auto\" class=\"adsbygoogle adsbygoogle-noablate\" data-ad-client=\"ca-pub-4271840947797499\" data-adsbygoogle-status=\"done\" data-ad-status=\"filled\" style=\"padding: 0px; margin: auto; outline: 0px; list-style: none; border: 0px none; display: block; background-color: transparent; height: 280px;\"><ins id=\"aswift_8_expand\" tabindex=\"0\" title=\"Advertisement\" aria-label=\"Advertisement\" style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: none; display: inline-table; height: 280px; position: relative; visibility: visible; width: 660px; background-color: transparent;\"><ins id=\"aswift_8_anchor\" style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: none; display: block; height: 280px; position: relative; visibility: visible; width: 660px; background-color: transparent; overflow: visible;\"><iframe id=\"aswift_8\" name=\"aswift_8\" sandbox=\"allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" width=\"660\" height=\"280\" frameborder=\"0\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-4271840947797499&amp;output=html&amp;h=280&amp;adk=468770610&amp;adf=2914952380&amp;pi=t.aa~a.2587785785~i.7~rp.4&amp;w=660&amp;fwrn=4&amp;fwrnh=100&amp;lmt=1624176264&amp;num_ads=1&amp;rafmt=1&amp;armr=3&amp;sem=mc&amp;pwprc=7741829637&amp;psa=1&amp;ad_type=text_image&amp;format=660x280&amp;url=https%3A%2F%2Fwww.tintucnongnghiep.com%2F2021%2F06%2Flam-ong-loc-xoay-tuot-rung-hon-60-tan.html&amp;flash=0&amp;fwr=0&amp;pra=3&amp;rh=165&amp;rw=660&amp;rpe=1&amp;resp_fmts=3&amp;wgl=1&amp;fa=27&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkxLjAuODY0LjU0IixbXV0.&amp;dt=1624203018394&amp;bpp=6&amp;bdt=4029&amp;idt=6&amp;shv=r20210616&amp;cbv=%2Fr20190131&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Db10ee454fa86bf9b-225f2f67a4c9006e%3AT%3D1624202267%3ART%3D1624202267%3AS%3DALNI_MZQSMYRPxto1AzZbKdPTaidfW6HBw&amp;prev_fmts=300x250%2C300x250%2C300x250%2C0x0&amp;prev_slotnames=7447195561%2C8904887166&amp;nras=2&amp;correlator=1560172974502&amp;frm=20&amp;pv=1&amp;ga_vid=464333351.1624202265&amp;ga_sid=1624203014&amp;ga_hid=341330860&amp;ga_fc=0&amp;u_tz=420&amp;u_his=8&amp;u_java=0&amp;u_h=1080&amp;u_w=2560&amp;u_ah=1040&amp;u_aw=2560&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=135&amp;ady=1060&amp;biw=1270&amp;bih=927&amp;scr_x=0&amp;scr_y=0&amp;oid=3&amp;psts=AGkb-H-48T78q0FgrnQ0321lJaLXeKO7iwyJSx7KRWxPTzk9NzxwkYNNMcqvS6k9ByBXLRMHqQhvVy8gcyctEA%2CAGkb-H88Mp_9QylJxkUcFSmA_bvB2M19zT3iM4gM914WVr9zlRk6ZUGETAI2FqMaCbo246kJA32Ns1E44Ka9Fg%2CAGkb-H8DFzxgd15jP7DYk6iDxg6NBBqRpWCbDtWkPGC3WoBRYWT2dlyExfQ355fRr0HP0h6H_s1u6_m3gZpHpA%2CAGkb-H-5QV0t0uPA4MI_ILYQfVtL61dwymlhESA9tNwehoFAVv3JlSEy9eaXQZJxhYEEt5yU0P0wzdD5DSHmIg%2CAGkb-H_McLs8gTciVkJCQRADcNzo3V_24w3g-G0Q6FCGO36ZMJe-yoYsTXPCyO5-HDbcq5VRkz8ZVcv-vLadoQ&amp;pvsid=4461017164195520&amp;pem=583&amp;wsm=1&amp;ref=https%3A%2F%2Fwww.tintucnongnghiep.com%2F2021%2F06%2Flam-ong-loc-xoay-tuot-rung-hon-60-tan.html&amp;eae=0&amp;fc=384&amp;brdim=-2567%2C0%2C-2567%2C0%2C2560%2C0%2C1294%2C1047%2C1278%2C927&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=128&amp;bc=31&amp;ifi=9&amp;uci=a!9&amp;btvi=5&amp;fsb=1&amp;xpc=IJBkE23GNQ&amp;p=https%3A//www.tintucnongnghiep.com&amp;dtd=80\" marginwidth=\"0\" marginheight=\"0\" vspace=\"0\" hspace=\"0\" allowtransparency=\"true\" scrolling=\"no\" allowfullscreen=\"true\" allow=\"conversion-measurement\" data-google-container-id=\"a!9\" data-google-query-id=\"CP6rseDDpvECFQbQfAodyqIABQ\" data-load-complete=\"true\" style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border-width: 0px; border-style: initial; max-width: 100%; left: 0px; position: absolute; top: 0px; width: 660px; height: 280px;\"></iframe></ins></ins></ins></div><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\">Chiều 7.6, ông Nguyễn Trọng Bằng, Phó chủ tịch UBND xã Hà Lâm (H.Đạ Huoai), cho biết thống kê sơ bộ, trận mưa lớn kèm lốc xoáy xảy ra vào chiều 6.6 &nbsp;tuốt rụng hơn 60 tấn sầu riêng non của 120 hộ dân trên địa bàn 4/4 thôn của xã.</span></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: center;\"></p><div class=\"separator\" style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); clear: both; text-align: center;\"><a href=\"https://1.bp.blogspot.com/-QOLfHVf0mng/YL3xP2OCJoI/AAAAAAAC7yk/Q95bdvIziYUM6YFsNEKocZOh-pcorxu4wCLcBGAsYHQ/s1068/sau-rieng-2.jpg\" imageanchor=\"1\" style=\"padding: 0px; margin: 0px 1em; outline: 0px; list-style: none; border: 0px none; color: rgb(17, 17, 17); transition: all 0.2s ease-in-out 0s;\"><img border=\"0\" data-original-height=\"1068\" data-original-width=\"1024\" src=\"https://1.bp.blogspot.com/-QOLfHVf0mng/YL3xP2OCJoI/AAAAAAAC7yk/Q95bdvIziYUM6YFsNEKocZOh-pcorxu4wCLcBGAsYHQ/s16000/sau-rieng-2.jpg\" style=\"padding: 4px; margin: 0px; outline: 0px; list-style: none; border: 0px; transition: all 0.4s ease-in-out 0s; max-width: 600px; height: auto;\"></a></div><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255);\"></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: center;\"><i style=\"padding: 0px; margin: 0px 5px 0px 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(78, 77, 77);\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\">Sầu riêng bị tuốt rụng</span><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\">. Ảnh: Trùng Dương</span></i></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\">Trong đó, thôn 2 bị thiệt hại nặng nề nhất với khoảng 30 tấn sầu riêng của 31 hộ dân bị lốc xoáy tuốt rụng; Thôn 3 với 14 tấn sầu riêng của 17 hộ dân bị lốc xoáy tuốt rụng. Ngoài ra, hai thôn 1 và 4 có khoảng 20 tấn sầu riêng của 62 hộ dân bị lốc xoáy tuốt rụng. Ước tính thiệt hại hơn 2,5 tỉ đồng.</span></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\">Ngoài ra, lốc xoáy còn quật gãy 11 cây sầu riêng từ 8 - 15 năm tuổi của người dân địa phương.</span></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: center;\"></p><div class=\"separator\" style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); clear: both; text-align: center;\"><a href=\"https://1.bp.blogspot.com/-VBVYn37arVM/YL3xHdRqBeI/AAAAAAAC7yg/Zz8vpnc5IF8od_nE9hWU2R6kY_9qbG0eACLcBGAsYHQ/s1227/sau-rieng-3.jpg\" imageanchor=\"1\" style=\"padding: 0px; margin: 0px 1em; outline: 0px; list-style: none; border: 0px none; color: rgb(17, 17, 17); transition: all 0.2s ease-in-out 0s;\"><img border=\"0\" data-original-height=\"1227\" data-original-width=\"1024\" src=\"https://1.bp.blogspot.com/-VBVYn37arVM/YL3xHdRqBeI/AAAAAAAC7yg/Zz8vpnc5IF8od_nE9hWU2R6kY_9qbG0eACLcBGAsYHQ/s16000/sau-rieng-3.jpg\" style=\"padding: 4px; margin: 0px; outline: 0px; list-style: none; border: 0px; transition: all 0.4s ease-in-out 0s; max-width: 600px; height: auto;\"></a></div><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255);\"></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\"><i style=\"padding: 0px; margin: 0px 5px 0px 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(78, 77, 77);\">Cây sầu riêng bị lốc xoáy quật gãy. Ảnh: Trùng Dương</i></span></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; font-family: arial;\">Theo ông Vũ Trọng Bằng, Phó chủ tịch UBND xã Hà Lâm, hiện địa phương đang làm văn bản để báo cáo thiệt hại do lốc xoáy gây ra gửi UBND H.Đạ Huoai để có hướng xem xét, hỗ trợ người dân khắc phục hậu quả.</span></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: center;\"><b style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none;\"><span style=\"padding: 0px; margin: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(56, 118, 29); font-family: arial;\">Trùng Dương (Báo Thanh Niên)</span></b></p><p style=\"padding: 0px 0px 1em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; list-style: none; border: 0px none; color: rgb(68, 68, 68); font-family: Arial; font-size: 13px; background-color: rgb(255, 255, 255); text-align: justify;\"><br></p>', '/storage/news/image/28/EktT1HB3qmEhGiPgDy0p.jpg', NULL, 0, 1, 1, '2021-06-20 15:32:24', 0, NULL, NULL);
INSERT INTO `tintuc` (`id`, `idchuyenmuc`, `idcongty`, `idtaikhoan`, `ngaydangtintuc`, `tieudetintuc`, `tomtattintuc`, `noidungtintuc`, `hinhanhtintuc`, `videotintuc`, `loaitintuc`, `duyettintuc`, `xuatbantintuc`, `ngayxuatban`, `lydogo`, `created_at`, `updated_at`) VALUES
(33, 16, 2, 28, '2021-06-20 15:46:13', 'Ứng dụng của cách mạng 4.0 vào sản xuất công nghiệp', '<p><a data-medium=\"Item-1\" data-thumb=\"1\" title=\"Ứng dụng của cách mạng 4.0 vào sản xuất công nghiệp\" href=\"https://vnexpress.net/ung-dung-cua-cach-mang-4-0-vao-san-xuat-cong-nghiep-3957918.html\" data-itm-source=\"#vn_source=Tag&amp;vn_campaign=Stream&amp;vn_medium=Item-1&amp;vn_term=Desktop&amp;vn_thumb=1\" data-itm-added=\"1\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; color: inherit; font-family: arial; font-size: 14px;\">Những thành tựu của công nghiệp 4.0 có thể áp dụng trên nhiều cấp độ của hoạt động sản xuất công nghiệp.</a><span style=\"color: rgb(34, 34, 34); font-family: arial; font-size: 14px;\">&nbsp;</span><br></p>', '<p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Cách mạng 4.0 là xu thế của các công nghệ và quy trình sản xuất gắn với tự động hóa và trao đổi dư liệu của tất cả các thành tố tham gia vào hoạt động sản xuất. Những công nghệ vẫn hay được nhắc đến bao gồm robot, in 3D, thực tế ảo tương tác, kết nối vạn vật trong công nghiệp, dữ liệu lớn và trí tuệ nhân tạo.</p><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Tuy nhiên, việc bắt kịp cũng như hiện thực hóa được những lợi ích mà công nghiệp 4.0 mang lại phụ thuộc rất nhiều vào một yếu tố trong mọi hoạt động sản xuất kinh doanh. Đó là làm sao có thể nhanh chóng đáp ứng những thay đổi từ thị trường, tối ưu chi phí sản xuất, tối đa hóa doanh thu và lợi nhuận.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Thống kê công bố bởi Accenture - hãng tư vấn chiến lược và công nghệ, về những yếu tố quan trọng nhất nhằm duy trì lợi thế cạnh tranh thì tăng cường tính linh hoạt chiếm 57%, nâng cao chất lượng 35%, giảm chi phí nhân công 33% và giảm hàng tồn kho 31% là những nhân tố quan trọng hàng đầu.</p><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Bên cạnh thống kê của Accenture, rất nhiều những nghiên cứu chỉ ra rằng, 4 yếu tố cốt lõi để doanh nghiệp duy trì lợi thế cạnh tranh của mình bao gồm: tính linh hoạt, sự hiệu quả, tốc độ thực thi và chất lượng sản phẩm, dịch vụ. Công nghiệp 4.0 cũng không hướng tới mục tiêu nào khác ngoài các yếu tố trên và việc hiện thực hóa các công nghệ mà công nghiệp 4.0 mang lại nhằm đảm bảo những yếu tố cốt lõi trên mới là thách thức lớn với hầu hết các doanh nghiệp tại Việt Nam.</p><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\"><strong style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Công nghệ 4.0 với doanh nghiệp sản xuất tại Việt Nam</strong></p><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Công nghiệp 4.0 diễn ra trong bối cảnh các công nghệ tự động hóa và công nghệ thông tin phát triển như vũ bão. Vì vậy, diễn tiến của nó sẽ làm thay đổi cục diện kinh tế xã hội chỉ trong vòng vài năm thay vì hàng chục năm như các cuộc cách mạng công nghiệp trước đây. Tiêu biểu trong đó là trào lưu chuyển đổi số (Digital Transformation) dẫn đến sự phá vỡ và tái cấu trúc của hầu hết các mô hình kinh doanh trong tất cả các ngành.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Những mô hình sản xuất kinh doanh mới được tạo ra có sức phát triển và cũng là thách thức với những mô hình kinh doanh truyền thống. Chủ tịch Diễn đàn Kinh tế Thế giới - ông Klaus Schwab, đã nói: \"Thế giới ngày nay không còn là nơi cá lớn nuốt cá bé mà là nơi cá nhanh nuốt cá chậm\".</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Như vậy, ta có thể thấy Công nghiệp 4.0 không chỉ là một xu thế mà là lựa chọn để đảm bảo sự tồn vong và phát triển của doanh nghiệp. Hơn nữa, tốc độ diễn tiến nhanh chóng của nó đòi hỏi chúng ta cần khẩn trương nắm bắt và hiện thực hóa nếu không muốn mãi mãi bị bỏ lại ở phía sau.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Với các doanh nghiệp sản xuất, cơ hội đang mở ra rất lớn trong bối cảnh Việt Nam đang là điểm đến quan trọng trên bản đồ sản xuất của thế giới. Khảo sát của Deloitte cho thấy đến năm 2020, Việt Nam sẽ vượt qua Thái Lan, Malaysia, Indonesia để trở thành quốc giá có năng lực cạnh tranh trong sản xuất cao nhất ở Đông Nam Á và xếp thứ 12 thế giới.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Với những kỳ vọng đó, các doanh nghiệp sản xuất của Việt Nam phải sẵn sàng để đón bắt những cơ hội bằng những cải tổ sâu rộng trong hoạt động của mình. Tự động hóa trong kỷ nguyên 4.0 ứng dụng có thể cụ thể từng cấp độ của hoạt động sản xuất, từ công đoạn sản xuất cho đến dây chuyền và toàn bộ nhà máy.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\"><strong style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\">Các giải pháp tự động hóa 4.0 trong sản xuất</strong></p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Ở cấp độ công đoạn sản xuất, những ứng dụng quan trọng có thể kể đến gồm có kiểm tra chất lượng, truy xuất nguồn gốc, bảo trì tiên đoán, sắp xếp và bốc dỡ hàng hóa, IIoT, Big Data và AI.</p><figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\" style=\"margin-right: auto; margin-bottom: 15px; margin-left: auto; padding: 0px; text-rendering: optimizelegibility; max-width: 100%; clear: both; position: relative; text-align: center; width: 670px; float: left; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\"><div class=\"fig-picture\" style=\"margin: 0px; padding: 0px 0px 323px; text-rendering: optimizelegibility; width: 670px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;\"><picture style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><source data-srcset=\"https://i1-kinhdoanh.vnecdn.net/2019/07/29/1004186317-w500-9869-1564367366.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=JBkkRyKGKf64V4oFpRBOgw 1x, https://i1-kinhdoanh.vnecdn.net/2019/07/29/1004186317-w500-9869-1564367366.png?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Lk1OifgHrllwmym565hIrQ 1.5x, https://i1-kinhdoanh.vnecdn.net/2019/07/29/1004186317-w500-9869-1564367366.png?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=Xijd6np7SgdUc4k81MMxTg 2x\" srcset=\"https://i1-kinhdoanh.vnecdn.net/2019/07/29/1004186317-w500-9869-1564367366.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=JBkkRyKGKf64V4oFpRBOgw 1x, https://i1-kinhdoanh.vnecdn.net/2019/07/29/1004186317-w500-9869-1564367366.png?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Lk1OifgHrllwmym565hIrQ 1.5x, https://i1-kinhdoanh.vnecdn.net/2019/07/29/1004186317-w500-9869-1564367366.png?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=Xijd6np7SgdUc4k81MMxTg 2x\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><img itemprop=\"contentUrl\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Industry 4.0 - Trao Lưu hay Sức Ép Cải Tổ - 1\" class=\"lazy lazied\" src=\"https://i1-kinhdoanh.vnecdn.net/2019/07/29/1004186317-w500-9869-1564367366.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=JBkkRyKGKf64V4oFpRBOgw\" data-src=\"https://i1-kinhdoanh.vnecdn.net/2019/07/29/1004186317-w500-9869-1564367366.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=JBkkRyKGKf64V4oFpRBOgw\" data-ll-status=\"loaded\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; position: absolute; top: 0px; left: 85px; max-height: 700px; width: 500px;\"></picture></div><figcaption itemprop=\"description\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 670px; float: left; text-align: left;\"><p class=\"Image\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; text-rendering: optimizespeed; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22.4px;\">Các giải pháp tự động hóa trong mô hình IIoT.</p></figcaption></figure><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Việc kiểm tra chất lượng vốn được thực hiện bởi con người và là một trong những công đoạn tốn nhân công trong dây chuyền sản xuất. Với những thiết bị cảm biến hiện đại, đặc biết là cảm biến hình ảnh hoặc camera công nghiệp thế hệ mới kết hợp cùng các bộ PLC tiên tiến, việc kiểm tra chất lượng có thể được tự động hóa hoàn toàn với năng suất, công suất và độ tin cậy. Những PLC hàng đầu thế giới còn có khả năng tích hợp với tất cả các thiết bị hệ thống tự động hóa tạo nên một hệ thống kết nối vạn vật trong sản xuất (IIoT), thu thập và tổng hợp dữ liệu của quá trình sản xuất qua đó cho phép hiện thực hóa việc truy xuất nguồn gốc nguyên liệu và sản phẩm.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Bên cạnh những dữ liệu về sản phẩm và nguyên vật liệu, IIoT còn cho phép thu thập dữ liệu của toàn bộ máy móc, cấu kiện từ các thiết bị cảm biến dưới dạng Big Data. Từ đây, kết hợp với trí tuệ nhân tạo và Machine Learning để phân tích dữ liệu thu thập này để có thể giúp đánh giá tình trạng máy móc, qua đó có những khuyến nghị bảo trì thay thế máy móc và linh kiện theo định kỳ hoặc vào thời điểm phù hợp nhằm giảm thiểu việc gián đoạn sản xuất. Đây chính là việc hiện thực hóa bảo trì tiên đoán.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Một số dòng PLC thông minh thế hệ mới đã tích hợp sẵn tính năng AI (AI PLC) để tự động thu thập, phân tích và điều chỉnh các thông số điều khiển tối ưu cho công đoạn sản xuất mà không cần có sự can thiệp của con người, góp phần liên tục cải tiến và nâng cao chất lượng sản phẩm, giúp cho việc chuyển đổi sản xuất giữa các sản phẩm diễn ra nhanh chóng và chính xác, qua đó nâng cao hiệu quả và tăng cường tính linh động trong sản xuất.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Bên cạnh đó còn là những đóng góp của công nghệ robot trong thời gian gần đây. Ứng dụng của robot vì thế mà cũng trở nên đa dạng và dần có thể thay thế trong hầu hết các khâu của quá trình sản xuất. Mỗi delta robot với thế mạnh về tốc độ có thể thay thế tới 12 công nhân sắp xếp sản phẩm trong sản xuất hàng thực phẩm tiêu dùng với thời giant hu hôi vốn 18 tháng. Các robot 6 trục với khả năng linh hoạt có thể thay thế công nhân trong các thao tác đòi hỏi độ tỉ mỉ va chính xác cao như hàn vi mạch điện tử. Khi kết hợp với camera công nghiệp có thể thực hiện luôn khâu kiểm tra chất lượng sản phẩm qua đó giúp giảm lượng lớn công nhân thao tác thủ công trong môi trường độc hại và luôn đảm bảo tính đồng nhất của chất lượng sản phẩm.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Đặc biệt robot cộng tác (collaborative robot - cobot) là robot thế hệ mới có thể thao tác với con người và luôn đảm bảo tính an toàn. Đây là tiền đề quan trọng cho việc tự động hóa từng phần của hoạt động sản xuất hoặc đáp ứng yêu cầu tự động hóa ở những nơi vẫn cần có sự hiện diện của con người.</p><figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\" style=\"margin-right: auto; margin-bottom: 15px; margin-left: auto; padding: 0px; text-rendering: optimizelegibility; max-width: 100%; clear: both; position: relative; text-align: center; width: 670px; float: left; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\"><div class=\"fig-picture\" style=\"margin: 0px; padding: 0px 0px 451px; text-rendering: optimizelegibility; width: 670px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;\"><picture style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><source data-srcset=\"https://i1-kinhdoanh.vnecdn.net/2019/07/29/121-4894-1564367368.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=oYq_jo8FIsS47hvOUEfwEQ 1x, https://i1-kinhdoanh.vnecdn.net/2019/07/29/121-4894-1564367368.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Eab8PEzSROL9cSUJ2s5-1A 1.5x, https://i1-kinhdoanh.vnecdn.net/2019/07/29/121-4894-1564367368.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=E2IKFRhArC4THBNmLylT8A 2x\" srcset=\"https://i1-kinhdoanh.vnecdn.net/2019/07/29/121-4894-1564367368.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=oYq_jo8FIsS47hvOUEfwEQ 1x, https://i1-kinhdoanh.vnecdn.net/2019/07/29/121-4894-1564367368.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Eab8PEzSROL9cSUJ2s5-1A 1.5x, https://i1-kinhdoanh.vnecdn.net/2019/07/29/121-4894-1564367368.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=E2IKFRhArC4THBNmLylT8A 2x\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><img itemprop=\"contentUrl\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Delta robot, Cobot và AIV\" class=\"lazy lazied\" src=\"https://i1-kinhdoanh.vnecdn.net/2019/07/29/121-4894-1564367368.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=oYq_jo8FIsS47hvOUEfwEQ\" data-src=\"https://i1-kinhdoanh.vnecdn.net/2019/07/29/121-4894-1564367368.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=oYq_jo8FIsS47hvOUEfwEQ\" data-ll-status=\"loaded\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; position: absolute; top: 0px; left: 85px; max-height: 700px; width: 500px;\"></picture></div><figcaption itemprop=\"description\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 670px; float: left; text-align: left;\"><p class=\"Image\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; text-rendering: optimizespeed; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22.4px;\">Delta robot, Cobot và AIV</p></figcaption></figure><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Ở cấp độ dây chuyền sản xuất, yếu tố quan trọng cần lưu tâm là tính linh hoạt trong một không gian hữu hạn. Chìa khóa để giải quyết vấn đề này là module hóa từng công đoạn sản xuất. Việc module hóa các công đoạn sản xuất thay vì thiết lập những dây chuyền sản xuất sẽ cho phép nhanh chóng đáp ứng được nhiều quy trình sản xuất khác nhau, tối ưu hóa không gian nhà xưởng. Tuy vậy thách thức đặt ra là việc luân chuyển linh kiện sản xuất (WIP) hoặc nguyên vật liệu giữa các công đoạn này.</p><figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\" style=\"margin-right: auto; margin-bottom: 15px; margin-left: auto; padding: 0px; text-rendering: optimizelegibility; max-width: 100%; clear: both; position: relative; text-align: center; width: 670px; float: left; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\"><div class=\"fig-picture\" style=\"margin: 0px; padding: 0px 0px 320.984px; text-rendering: optimizelegibility; width: 670px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;\"><picture style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><source data-srcset=\"https://i1-kinhdoanh.vnecdn.net/2019/07/29/12-8522-1564367368.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=10FS4OnWzfSr0UWvHH4EIw 1x, https://i1-kinhdoanh.vnecdn.net/2019/07/29/12-8522-1564367368.png?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=LUokmtqS8BKEKWFVuTOOUg 1.5x, https://i1-kinhdoanh.vnecdn.net/2019/07/29/12-8522-1564367368.png?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=ueLJ7iaoMSnXP6UzIqIWvQ 2x\" srcset=\"https://i1-kinhdoanh.vnecdn.net/2019/07/29/12-8522-1564367368.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=10FS4OnWzfSr0UWvHH4EIw 1x, https://i1-kinhdoanh.vnecdn.net/2019/07/29/12-8522-1564367368.png?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=LUokmtqS8BKEKWFVuTOOUg 1.5x, https://i1-kinhdoanh.vnecdn.net/2019/07/29/12-8522-1564367368.png?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=ueLJ7iaoMSnXP6UzIqIWvQ 2x\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility;\"><img itemprop=\"contentUrl\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Ứng dụng Robot và các giải pháp tự động hóa trong dây chuyền sản xuất.\" class=\"lazy lazied\" src=\"https://i1-kinhdoanh.vnecdn.net/2019/07/29/12-8522-1564367368.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=10FS4OnWzfSr0UWvHH4EIw\" data-src=\"https://i1-kinhdoanh.vnecdn.net/2019/07/29/12-8522-1564367368.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=10FS4OnWzfSr0UWvHH4EIw\" data-ll-status=\"loaded\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; border: 0px; font-size: 0px; line-height: 0; max-width: 100%; position: absolute; top: 0px; left: 85px; max-height: 700px; width: 500px;\"></picture></div><figcaption itemprop=\"description\" style=\"margin: 0px; padding: 0px; text-rendering: optimizelegibility; width: 670px; float: left; text-align: left;\"><p class=\"Image\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; text-rendering: optimizespeed; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 22.4px;\">Ứng dụng robot và các giải pháp tự động hóa trong dây chuyền sản xuất.</p></figcaption></figure><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Robot tự hành thông minh (Autonomous Intelligent Vehicle - AIV) là giải pháp cho vấn đề nói trên. AIV hoạt động không cần người điều khiển, không cần hệ thống vạch từ, bang dán màu chỉ đường. Với hệ thống bản đồ nhà máy được quét tự động, AIV có thể di chuyển khắp nhà máy với điểm đi và đến bất kỳ, qua đó có thể đảm bảo bất kể yêu cầu vận chuyển nào giữa các khâu sản xuất, ngay cả khi có những thay đổi về vị trí bố trí từng công đoạn sản xuất.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">AIV cũng rất an toàn với con người với khả năng tự động dừng hoặc tránh khi gặp chướng ngại vật, khả năng giao tiếp cơ bản bằng giọng nói. Bên cạnh đó, những robot tự hành thông minh này còn có kết nối mạng không dây đến hệ thống quản lý trung tâm (Fleet Management) qua đó giúp tối ưu hóa việc điều hành hoạt động luân chuyển hàng hóa, đảm bảo tính liên tục của hoạt động truy xuất nguồn gốc giữa các công đoạn sản xuất.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">AIV cùng hệ thống quản lý trung tâm còn là tiền đề cho những giải pháp đối với việc luân chuyển hàng hóa trên phạm vi toàn nhà máy, hệ thống kho thông minh và quản lý hàng tồn kho. Những lợi ích cơ bản có thể kế đến bao gồm việc tăng hiệu suất của toàn nhà máy và giảm thiểu hàng hóa trung gian; tối ưu hóa lượng hàng tồn kho và giảm số lần kiểm kê kho; tăng cường khả năng đáp ứng đơn hàng, tốc độ giao hàng và cuối cùng là sự hài long của khách hàng.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Nền tảng IIoT cho phép kết nối hệ thống vận hành (OT), điều hành sản xuất (MES), quản lý vòng đời sản phẩm (PLM) với hệ thống công nghệ thông tin doanh nghiệp (ERP, SCM, CRM, WMS) qua đó giúp doanh nghiệp có được cái nhìn tổng quát về mọi khía cạnh của hoạt động sản xuất và kinh doanh; kết nối hoàn chỉnh hệ thống truy xuất nguồn gốc hàng hóa trên phạm vi toàn chuỗi cung ứng.</p><p class=\"Normal\" style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Trong tất cả các ứng dụng nêu trên của từ khóa được nhắc đến nhiều nhất là sự kết nối và tính liên thông giữa các khâu trong hoạt động của toàn nhà máy. Nhưng chính từ khóa \"kết nối\" này cũng dựa trên tiền đề quan trọng là tính sẵn sàng của một hệ thống thông tin thông suốt trong toàn doanh nghiệp, từ khối quản trị, văn phòng đến nhà máy sản xuất và toàn bộ chuỗi cung ứng. Nền tảng cho hệ thống thông tin trong kỷ nguyên 4.0 này được gọi là sợi dây liên kết số (Digital Thread). Bất kể một doanh nghiệp nào muốn thành công trong chuyển đổi số và ứng dụng hiệu quả các công nghệ của Công nghiệp 4.0 bắt đầu và thành công trong việc xây dựng sợi dây liên kết số. Có một sợi dây liên kết số cũng giống như việc cơ thể con người cần có hệ thống thần kinh.</p>', '/storage/news/image/28/tgbvy6SmdWD8ZVOXV8tV.png', NULL, 1, 1, 1, '2021-06-20 15:46:26', 0, NULL, NULL);

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
(2, 2, 'admin2@dev.com', '2021-05-28 14:57:46', '$2y$10$vFxTKDYsc5xa6LW1UxdTZeeF5Sbk2dzL8kkh/1TUERQnp1nawEULu', NULL, NULL, 'fcSMkf19zQhWuG3yTcEhheU2J2BdY5Ew2fzQAVsrOc0LwUSJhXZAwdSrJdle', 1, 0, NULL, '2021-05-27 15:19:35'),
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `kho`
--
ALTER TABLE `kho`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lichsutintuc`
--
ALTER TABLE `lichsutintuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
