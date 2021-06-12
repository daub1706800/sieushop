-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2021 at 02:15 PM
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
(1, 2, 'Xe và Đời sống', '2021-04-23 07:09:02', '2021-04-23 07:09:13'),
(2, 1, 'Sức khỏe gia đình', '2021-04-23 07:09:39', '2021-04-23 07:09:39'),
(3, 1, 'Giáo Dục và Đào Tạo', '2021-06-08 11:55:45', '2021-06-08 11:55:45'),
(4, 1, 'Tài Nguyên', '2021-06-08 12:12:18', '2021-06-08 12:12:18'),
(5, 4, 'Mẹp vặt', '2021-06-09 07:24:56', '2021-06-09 07:24:56'),
(6, 4, 'Cây Thuốc- Vị Thuốc', '2021-06-09 07:38:31', '2021-06-09 07:38:31'),
(7, 5, 'Kinh Doanh', '2021-06-09 07:38:52', '2021-06-09 07:38:52'),
(8, 5, 'Pháp Luật', '2021-06-09 07:39:27', '2021-06-09 07:39:27'),
(9, 5, 'Đời Sống', '2021-06-09 07:39:43', '2021-06-09 07:39:43'),
(10, 5, 'Giáo dục', '2021-06-09 07:41:54', '2021-06-09 07:41:54'),
(11, 6, 'Vệ Tinh', '2021-06-09 07:42:18', '2021-06-09 07:42:18'),
(12, 6, 'Vệ Tinh', '2021-06-09 07:42:18', '2021-06-09 07:42:18'),
(13, 6, 'Thiên Hà', '2021-06-09 07:42:36', '2021-06-09 07:42:36'),
(14, 7, 'Tự Nhiên', '2021-06-09 07:50:51', '2021-06-09 07:50:51'),
(15, 8, 'Cơ Khí', '2021-06-09 07:51:42', '2021-06-09 07:51:42'),
(16, 9, 'Công Nghệ 4.0', '2021-06-09 07:52:52', '2021-06-09 07:52:52'),
(17, 10, 'Nông Nghiệp', '2021-06-09 07:53:40', '2021-06-09 07:53:40'),
(18, 11, 'Hoạt Động', '2021-06-09 07:54:55', '2021-06-09 07:54:55'),
(19, 12, 'Giải Pháp', '2021-06-09 07:55:50', '2021-06-09 07:55:50'),
(20, 13, 'Trong Nước', '2021-06-09 07:56:48', '2021-06-09 07:56:48'),
(21, 14, 'Dinh Dưỡng', '2021-06-09 07:57:41', '2021-06-09 07:57:41'),
(22, 15, 'Sinh Vật', '2021-06-09 07:58:53', '2021-06-09 07:58:53');

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
(2, 2, 2, 'Công ty Hải Sản Miền Trung', 'Miền Trung', 'ctyhaisan@gmail.com', '7106299979', '7103863990', 'https://www.ctyhaisan.vn', '123123123', '2021-09-24', 'Phú Yên', '12123565', '2021-05-18', NULL, NULL, '2021-06-08 12:00:29'),
(3, 1, 1, 'Cty TNHH nhựa Hoàng Thắng', '239 QL 91 P.Tân Hưng, Q.Thốt Nốt, TPCT.', 'toanthang@gmail.com', '7106299979', '7103863990', 'https://can-tho.congtydoanhnghiep.com/cong-ty-tnhh-nhua-hoang-thang', '3345345', '2021-06-10', 'Cần Thơ', '1801475303', '2021-06-08', NULL, NULL, '2021-06-09 04:14:23'),
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
  `thoigiantao` timestamp NOT NULL,
  `motagiaidoan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giaidoan`
--

INSERT INTO `giaidoan` (`id`, `idsanpham`, `idtaikhoan`, `tengiaidoan`, `thoigiantao`, `motagiaidoan`, `created_at`, `updated_at`) VALUES
(1, 24, 2, 'Giai đoạn 1', '2021-05-17 13:16:16', 'Giai đoạn tiền xử lý', '2021-05-17 13:16:16', '2021-05-17 13:16:16'),
(3, 24, 2, 'Giai đoạn 2', '2021-05-18 08:12:52', 'Giai đoạn quan trọng', '2021-05-18 08:12:52', '2021-05-18 08:12:52');

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
(4, 2, NULL, '/storage/product/detail-images/1/zen75SEfVYwhe58iohRd.jpg', '2021-04-25 06:31:13', '2021-04-25 06:31:13'),
(5, 2, NULL, '/storage/product/detail-images/1/zbrjBTcHIr4muWM7fL26.jpg', '2021-04-25 06:31:13', '2021-04-25 06:31:13'),
(6, 21, NULL, '/storage/product/detail-images/1/nZ8rzoFAnEzeyfl77ffk.jpg', '2021-04-27 09:36:04', '2021-04-27 09:36:04'),
(8, 23, NULL, '/storage/product/detail-images/1/FHAtjcwSxc9e9VUj7MOv.jpg', '2021-04-27 10:05:54', '2021-04-27 10:05:54'),
(13, 25, NULL, '/storage/product/detail-images/2/67gxJIFfDk7Rv5exdt2o.jpg', '2021-05-18 16:02:42', '2021-05-18 16:02:42'),
(14, 25, NULL, '/storage/product/detail-images/2/3AE3KSfhwXxN3cBCaLlJ.jpg', '2021-05-18 16:02:42', '2021-05-18 16:02:42'),
(15, 27, NULL, '/storage/product/detail-images/2/NenKLp6dOjIeDDS0PoMB.jpg', '2021-05-18 16:11:20', '2021-05-18 16:11:20'),
(16, 27, NULL, '/storage/product/detail-images/2/SAb9GYqn0sJX0AinfGcr.jpg', '2021-05-18 16:11:20', '2021-05-18 16:11:20'),
(17, 28, NULL, '/storage/product/detail-images/2/neYLBtXAkitnq7MubFvj.jpg', '2021-05-18 16:12:40', '2021-05-18 16:12:40'),
(18, 28, NULL, '/storage/product/detail-images/2/Sq8cdJlTlCAGN2zQdkdB.jpg', '2021-05-18 16:12:40', '2021-05-18 16:12:40'),
(19, 29, NULL, '/storage/product/detail-images/2/MJtMIXABLqYAbkcN3YFd.jpg', '2021-05-18 16:42:17', '2021-05-18 16:42:17'),
(20, 29, NULL, '/storage/product/detail-images/2/UlzvLH52ZNxJ47tH1rNA.jpg', '2021-05-18 16:42:17', '2021-05-18 16:42:17'),
(23, 28, NULL, '/storage/product/detail-images/1/p13gw4m7tT8S2onyG7eI.jfif', '2021-06-10 11:36:39', '2021-06-10 11:36:39'),
(24, 29, NULL, '/storage/product/detail-images/1/iEkxauHfYu3FdAfalutY.jpeg', '2021-06-10 11:41:45', '2021-06-10 11:41:45'),
(25, 30, NULL, '/storage/product/detail-images/1/lCSUn9OYxJzs8OcEKcyY.jfif', '2021-06-11 03:54:53', '2021-06-11 03:54:53'),
(26, 22, NULL, '/storage/product/detail-images/1/hUfR43AlTyGLUnSMSrzC.jfif', '2021-06-11 03:55:40', '2021-06-11 03:55:40'),
(27, 24, NULL, '/storage/product/detail-images/1/fe6gXCpHRhlti1iYv2kX.jfif', '2021-06-11 03:57:18', '2021-06-11 03:57:18');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanhquangcao`
--

CREATE TABLE `hinhanhquangcao` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 1, 28, 'Kho hàng hóa', 'Tân Quới, Bình Tân, Vĩnh Long', 10000, 10000, 200, 'Lưu trữ hàng hóa có giá trị', '2021-04-25 04:18:18', '2021-06-11 03:50:34'),
(2, 2, 2, 'Kho hàng lạnh', 'Cần Thơ', 130000, 12300, 220, 'Kho hàng lạnh', '2021-04-28 04:51:43', '2021-06-11 03:50:09'),
(3, 2, 2, 'Kho hàng ép khô', 'Tam Bình,Vĩnh Long', 5400, 4200, 550, 'Kho hàng tồn', '2021-04-28 08:31:18', '2021-06-11 03:51:18'),
(4, 1, 1, 'Kho hàng hóa nhập khẩu', 'Ninh Kiều,Cần Thơ', 1000000, 300000, 5000, 'Kho nhập hàng', '2021-06-08 12:05:01', '2021-06-08 12:05:01'),
(5, 3, 1, 'Kho Nhựa', 'Ninh Kiều,Cần Thơ', 1000000, 300000, 5000, '.', '2021-06-09 04:18:05', '2021-06-09 04:18:05'),
(6, 4, 48, 'Kho dự trữ', 'Ninh Kiều,Cần Thơ', 1000000, 300000, 5000, '.', '2021-06-09 04:47:29', '2021-06-11 03:51:32'),
(7, 5, 1, 'Kho cơ khí chính', 'Cai Lậy,Tiền Giang', 200000, 60000, 600, 'Kho cơ khí ,hóa chất', '2021-06-09 14:13:20', '2021-06-11 03:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `lichsutintuc`
--

CREATE TABLE `lichsutintuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idtintuc` bigint(20) NOT NULL,
  `idtaikhoan` bigint(20) NOT NULL,
  `lydogo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoigian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lichsutintuc`
--

INSERT INTO `lichsutintuc` (`id`, `idtintuc`, `idtaikhoan`, `lydogo`, `thoigian`, `created_at`, `updated_at`) VALUES
(1, 12, 0, 'gfgdgfg', '2021-05-28 23:59:42', NULL, NULL),
(2, 11, 0, '23232', '2021-05-29 00:00:42', NULL, NULL),
(3, 12, 0, 'wewewew', '2021-05-29 09:10:32', NULL, NULL),
(4, 12, 0, '123', '2021-05-30 09:15:52', NULL, NULL),
(5, 12, 0, 'Sai sot thông tin', '2021-06-01 20:23:46', NULL, NULL),
(9, 4, 0, 'gdfg', '2021-06-01 20:56:50', NULL, NULL),
(12, 3, 28, 'Sai sot thông tin', '2021-06-02 21:07:13', NULL, NULL),
(13, 14, 28, 'dá', '2021-06-02 21:53:59', NULL, NULL),
(14, 14, 2, 'Sai sot thông tin', '2021-06-02 21:55:28', NULL, NULL),
(15, 14, 2, 'dsafacd', '2021-06-02 21:55:47', NULL, NULL),
(16, 20, 28, 'abc', '2021-06-12 05:44:38', NULL, NULL),
(17, 19, 28, 'abc', '2021-06-12 05:55:30', NULL, NULL),
(18, 20, 28, 'dá', '2021-06-12 06:06:16', NULL, NULL),
(19, 19, 2, 'sa', '2021-06-12 07:02:45', NULL, NULL),
(20, 12, 2, 'dấdas', '2021-06-12 07:03:06', NULL, NULL);

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
(2, 'Công nghệ', 'Công nghệ Cần Thơ', '2021-04-23 07:08:16', '2021-05-30 03:24:52'),
(4, 'Đời Sống', 'Đời SỐng', '2021-06-08 11:32:02', '2021-06-09 11:32:02'),
(5, 'Xã Hội', 'Xả Hội Hiện', '2021-06-09 07:25:44', '2021-06-09 07:25:44'),
(6, 'Vũ Trụ', 'Vũ Trụ Thế Giới', '2021-06-09 07:41:25', '2021-06-09 07:41:25'),
(7, 'Nghiên Cứu', 'Nghiên cứu', '2021-06-09 07:50:17', '2021-06-09 07:50:17'),
(8, 'Công Nghệ', 'Công nghệ hd', '2021-06-09 07:51:20', '2021-06-09 07:51:20'),
(9, 'Thông Tin', 'Thông Tin ngày nay', '2021-06-09 07:52:33', '2021-06-09 07:52:33'),
(10, 'Ứng Dụng', 'Ứng Dụng kỹ thuật', '2021-06-09 07:53:18', '2021-06-09 07:53:18'),
(11, 'Sở Hữu Trí Tuệ', 'Sở Hữu Trí Tuệ', '2021-06-09 07:54:32', '2021-06-09 07:54:32'),
(12, 'Năng Lượng', 'Năng Lượng', '2021-06-09 07:55:29', '2021-06-09 07:55:29'),
(13, 'Hợp Tác', 'Hợp tác thương mại', '2021-06-09 07:56:34', '2021-06-09 07:56:34'),
(14, 'Sức khỏe', 'Sức khỏe dd', '2021-06-09 07:57:27', '2021-06-09 07:57:27'),
(15, 'Thiên Nhiên', 'Thiên nhiên5', '2021-06-09 07:58:38', '2021-06-09 07:58:38');

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
(1, 1, 'Phụ kiện xe', 'Phụ kiện xe', '2021-04-25 04:44:41', '2021-06-10 11:37:15'),
(2, 2, 'Điện thoại thông minh', 'Điện thoại', '2021-04-28 04:51:09', '2021-04-28 04:51:09'),
(3, 2, 'Tôm khô', 'TÔm khô xk', '2021-04-28 08:27:31', '2021-06-09 14:34:11'),
(4, 3, 'Đồ Nhựa', 'Đổ Nhựa', '2021-06-09 04:18:50', '2021-06-09 04:18:50'),
(5, 4, 'Tôm xk', 'Tôm xk', '2021-06-09 04:48:01', '2021-06-09 04:48:01'),
(7, 5, 'Ắc Quy Xe', 'phụ kiện xe', '2021-06-09 14:13:54', '2021-06-09 14:13:54'),
(8, 1, 'Smart Phone', 'Smart Phone', '2021-06-11 03:52:48', '2021-06-11 03:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `logtintuc`
--

CREATE TABLE `logtintuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idtintuc` bigint(20) NOT NULL,
  `idtaikhoan` bigint(20) NOT NULL,
  `noidungdanhgia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoigian` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logtintuc`
--

INSERT INTO `logtintuc` (`id`, `idtintuc`, `idtaikhoan`, `noidungdanhgia`, `thoigian`, `created_at`, `updated_at`) VALUES
(2, 13, 28, 'Duyệt tin: tin viet rat hay', '2021-06-02 13:55:01', NULL, NULL),
(3, 13, 28, 'Xuất bản: tin viet rat hay', '2021-06-02 13:58:53', NULL, NULL),
(4, 14, 28, 'Duyệt tin: tin viet rat hay', '2021-06-02 14:20:57', NULL, NULL),
(5, 14, 28, 'Xuất bản: tin viet rat hay', '2021-06-02 14:21:02', NULL, NULL),
(6, 4, 28, 'Xuất bản: tin viet rat hay', '2021-06-02 14:24:41', NULL, NULL),
(7, 14, 2, 'Duyệt tin: viet sai chinh ta', '2021-06-02 14:54:52', NULL, NULL),
(8, 14, 2, 'Xuất bản: tin tốt', '2021-06-02 14:55:08', NULL, NULL),
(9, 14, 2, 'Duyệt tin: sadasdadsa', '2021-06-02 14:55:38', NULL, NULL),
(10, 14, 2, 'Duyệt tin: fvdg', '2021-06-02 14:55:55', NULL, NULL),
(11, 15, 2, 'Duyệt tin: Tin Tốt', '2021-06-08 12:21:03', NULL, NULL),
(12, 15, 2, 'Xuất bản: Tin Tốt', '2021-06-08 12:21:23', NULL, NULL),
(13, 16, 2, 'Duyệt tin: Tin Tốt', '2021-06-08 12:25:35', NULL, NULL),
(14, 16, 2, 'Xuất bản: Tin Tốt', '2021-06-08 12:25:46', NULL, NULL),
(15, 17, 48, 'Duyệt tin: Tin Hay', '2021-06-09 07:35:10', NULL, NULL),
(16, 17, 48, 'Xuất bản: Tin Hay', '2021-06-09 07:35:16', NULL, NULL),
(17, 1, 2, 'Duyệt tin: Tin Hay', '2021-06-09 14:26:06', NULL, NULL),
(18, 1, 2, 'Xuất bản: Tin Hay', '2021-06-09 14:26:20', NULL, NULL),
(19, 18, 50, 'Duyệt tin: Tin Nóng', '2021-06-09 14:31:15', NULL, NULL),
(20, 18, 50, 'Xuất bản: Tin Nóng', '2021-06-09 14:31:21', NULL, NULL),
(21, 20, 28, 'Duyệt tin: sadasdadsa', '2021-06-12 05:43:34', NULL, NULL),
(22, 20, 28, 'Xuất bản: viet sai chinh ta', '2021-06-12 05:44:14', NULL, NULL),
(23, 19, 28, 'Duyệt tin: sadasdadsa', '2021-06-12 05:55:23', NULL, NULL),
(24, 19, 28, 'Duyệt tin: viet sai chinh ta', '2021-06-12 05:55:33', NULL, NULL),
(25, 19, 28, 'Duyệt tin: viet sai chinh ta', '2021-06-12 05:55:43', NULL, NULL),
(26, 20, 28, 'Duyệt tin: tin viet rat hay', '2021-06-12 06:05:42', NULL, NULL),
(27, 20, 28, 'Xuất bản: viet sai chinh ta', '2021-06-12 06:05:46', NULL, NULL),
(28, 20, 28, 'Duyệt tin: đâsdasd', '2021-06-12 06:06:27', NULL, NULL),
(29, 20, 28, 'Xuất bản: dấdas', '2021-06-12 06:06:30', NULL, NULL),
(30, 12, 1, 'Duyệt tin: tin viet rat hay', '2021-06-12 06:32:54', '2021-06-12 06:32:54', '2021-06-12 06:32:54'),
(31, 19, 2, 'Xuất bản: tin viet rat hay', '2021-06-12 07:02:35', NULL, NULL),
(32, 12, 2, 'Duyệt tin: dsadasd', '2021-06-12 07:02:58', NULL, NULL),
(33, 12, 2, 'Xuất bản: đấ', '2021-06-12 07:03:02', NULL, NULL),
(34, 22, 2, 'Duyệt tin: tin tốt', '2021-06-12 13:42:38', NULL, NULL),
(35, 22, 2, 'Xuất bản: sadasdadsa', '2021-06-12 13:42:44', NULL, NULL),
(36, 19, 2, 'Duyệt tin: tin viet rat hay', '2021-06-12 13:43:12', NULL, NULL),
(37, 19, 2, 'Xuất bản: dsa', '2021-06-12 13:43:17', NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_04_14_151913_create_so_table', 1),
(6, '2021_04_14_152133_create_linhvuc_table', 1),
(7, '2021_04_14_152217_create_chuyenmuc_table', 1),
(8, '2021_04_14_152301_create_tintuc_table', 1),
(9, '2021_04_14_152623_create_congty_table', 1),
(10, '2021_04_14_152842_create_kho_table', 1),
(11, '2021_04_14_153746_create_loaisanpham_table', 1),
(12, '2021_04_14_153837_create_sanpham_table', 1),
(13, '2021_04_14_164914_create_thongtin_table', 1),
(14, '2021_04_23_103346_create_hinhanh_table', 1),
(15, '2021_04_23_103400_create_video_table', 1),
(16, '2021_04_23_104049_create_danhgia_table', 1),
(17, '2021_04_23_105605_create_giaidoan_table', 1),
(18, '2021_04_23_105801_create_thongtingiaidoan_table', 1),
(19, '2021_04_23_110056_create_quyen_table', 1),
(20, '2021_04_23_110257_create_vaitro_table', 1),
(21, '2021_04_23_110332_create_vaitro_quyen_table', 1),
(22, '2021_04_23_110424_create_taikhoan_vaitro_table', 1),
(23, '2021_05_15_014853_create_lichsutintuc_table', 1),
(24, '2021_06_04_101728_create_logtintuc_table', 1),
(25, '2021_06_11_213933_create_quangcao_table', 1),
(26, '2021_06_11_214100_create_hinhanhquangcao_table', 1),
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quyen`
--

CREATE TABLE `quyen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `tenquyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motaquyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` smallint(6) NOT NULL DEFAULT '0' COMMENT '0-off, 1-on',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quyen`
--

INSERT INTO `quyen` (`id`, `parent_id`, `tenquyen`, `motaquyen`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 0, 'category', 'Chuyên mục', 0, '2021-04-29 21:01:43', '2021-05-28 17:19:38'),
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
(31, 0, 'field', 'Lĩnh vực', 0, '2021-04-29 21:01:43', '2021-05-20 15:09:01'),
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
  `thongtinsanpham` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanhsanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xuatxu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chungloaisanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dongiasanpham` int(11) NOT NULL,
  `khoiluongsanpham` int(11) NOT NULL,
  `donvitinhsanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mavachsanpham` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `idloaisanpham`, `idcongty`, `idtaikhoan`, `idkho`, `tensanpham`, `thongtinsanpham`, `hinhanhsanpham`, `xuatxu`, `chungloaisanpham`, `dongiasanpham`, `khoiluongsanpham`, `donvitinhsanpham`, `mavachsanpham`, `qrcode`, `created_at`, `updated_at`) VALUES
(22, 1, 1, 2, 4, 'Bánh xe tải', '<p>213213121</p>', '/storage/product/images/1/kii9qjuSjS74QRPGs08h.jfif', 'Tiền Giang,ViệtNam', 'Phụ kiện xe', 500000, 123, '21321', '<div style=\"font-size:0;position:relative;width:246px;height:50px;\">\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:26px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:34px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:100px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:118px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:122px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:154px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:158px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:184px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:190px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:198px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:206px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:214px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:230px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:238px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:242px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:246px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:246px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:246px;  font-size: 0.6vw;\">1242323454354</div></div>\n', NULL, '2021-04-27 09:50:20', '2021-06-11 03:55:40'),
(24, 2, 2, 28, 2, 'Samsung 20 utral', 'Điện thoia5&nbsp;<p></p>', '/storage/product/images/1/uiaa034hN4uOD9jOHsgO.jpg', 'Tiền Giang,ViệtNam', 'Điện thoại thông minh', 12000000, 1, 'VND', '<div style=\"font-size:0;position:relative;width:224px;height:50px;\">\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:26px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:36px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:78px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:98px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:102px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:122px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:126px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:142px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:154px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:162px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:166px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:182px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:192px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:198px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:224px;  font-size: 0.6vw;\">43547897876876</div></div>\n', NULL, '2021-04-28 04:52:24', '2021-06-11 03:57:18'),
(28, 1, 1, 1, 4, 'Bình Ắc Quy', 'http://www.tcvg.hochiminhcity.gov.vn/default.aspx', '/storage/product/images/1/aAfJhVYEZHMT9Z5sTGM8.jfif', 'Tiền Giang,ViệtNam', 'Phụ kiện xe', 500000, 1, 'VND', '<div style=\"font-size:0;position:relative;width:246px;height:50px;\">\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:26px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:34px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:100px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:118px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:122px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:154px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:158px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:184px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:190px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:198px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:206px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:214px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:230px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:238px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:242px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:246px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:246px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:246px;  font-size: 0.6vw;\">1242323454354</div></div>\n', NULL, '2021-06-10 11:36:39', '2021-06-10 11:36:39'),
(29, 5, 4, 1, 6, 'Tôm Xuất  Khẩu', 'Tôm cuất khẩu .', '/storage/product/images/1/yZOrymypco8NWzSxUf4v.jpeg', 'Tiền Giang,ViệtNam', 'Tôm Xuất khẩu', 1100000, 1, 'VND', '<div style=\"font-size:0;position:relative;width:224px;height:50px;\">\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:26px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:34px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:100px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:118px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:122px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:136px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:146px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:154px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:162px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:166px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:186px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:190px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:198px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:224px;  font-size: 0.6vw;\">12423234543</div></div>\n', NULL, '2021-06-10 11:41:45', '2021-06-10 11:41:45'),
(30, 8, 1, 1, 1, 'Iphone 12 pro max', 'Điện thoại apple', '/storage/product/images/1/j5COilqJNQ1vSwowMaVc.jfif', 'Tiền Giang,ViệtNam', 'Điện thoại thông minh', 7500000, 1, 'VND', '<div style=\"font-size:0;position:relative;width:224px;height:50px;\">\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:6px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:22px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:26px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:34px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:44px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:54px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:66px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:82px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:100px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:110px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:118px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:122px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:136px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:146px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:154px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:162px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:166px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:8px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:186px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:190px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:198px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:4px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:0px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:224px;  font-size: 0.6vw;\">12423234543</div></div>\n', NULL, '2021-06-11 03:54:53', '2021-06-11 03:54:53');

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
(1, 'Khoa học và Công nghệ Cần Thơ', '2 Lý Thường Kiệt, Tân An, Ninh Kiều, Cần Thơ', 'skhvcnct@etc.vn', '02923820674', '02923821471', 'http://sokhcn.cantho.gov.vn/default.aspx?pid=2&cid=2&p=17', '2021-04-23 07:06:38', '2021-06-11 03:36:56'),
(2, 'Công Thương Cần Thơ', '19-21 Đ. Lý Tự Trọng, An Phú, Ninh Kiều, Cần Thơ', 'ctct@etc.vn', '02439366400', '02439366402', 'https://congthuong.vn/tag/so-cong-thuong-thanh-pho-can-tho-3825.tag', '2021-04-23 07:07:17', '2021-06-11 03:37:28'),
(5, 'Sở địa chính', 'Cần Thơ', 'diachinh@gmail.com', '0987654321', '0987654321', 'https://diachinh.com', '2021-05-04 14:40:02', '2021-05-30 03:21:41'),
(6, 'CỔNG THÔNG TIN ĐIỆN TỬ THÀNH PHỐ CẦN THƠ', 'Số 02 Hòa Bình, P. Tân An, Q. Ninh Kiều, TP. Cần Thơ', 'banbientap@cantho.gov.vn', '08071162', '08071162', 'https://www.cantho.gov.vn/', '2021-06-08 11:31:42', '2021-06-11 03:39:52'),
(7, 'Sở Nội vụ TP Cần Thơ', 'Số 51 Lý Tự Trọng, phường An Phú, quận Ninh Kiều, Thành phố Cần Thơ.', 'sonv@cantho.gov.vn', '02923820715', '02923825228', 'https://www.moha.gov.vn/gioi-thieu/so-noi-vu/so-noi-vu-tp-can-tho-12446.html', '2021-06-08 11:50:08', '2021-06-11 03:40:31'),
(8, 'Sở GD&DT Cần Thơ', '39 đường 3 tháng 2 - Phường Xuân Khánh - Quận Ninh Kiều - Thành phố Cần Thơ', 'sogddt@cantho.gov.vn', '02923830753', '02923830451', 'http://cantho.edu.vn/', '2021-06-08 11:51:54', '2021-06-11 03:41:08'),
(9, 'CÔNG AN THÀNH PHỐ CẦN THƠ', '9B, đường Trần Phú, phường Cái Khế, Q.Ninh Kiều, TP. Cần Thơ.', 'ca@cantho.gov.vn', '0693672118', '0693672129', 'https://cantho.xuatnhapcanh.gov.vn/faces/index.jsf', '2021-06-08 11:54:33', '2021-06-08 11:54:33'),
(10, 'SỞ LAO ĐỘNG - THƯƠNG BINH VÀ XÃ HỘI THÀNH PHỐ CẦN THƠ', '12 Ngô Quyền, Hoàn Kiếm, Hà Nội', 'banbientap@molisa.gov.vn', '02462703645', '02462703609', 'http://www.molisa.gov.vn/Pages/gioithieu/cocautochucchitiet.aspx?ToChucID=1527', '2021-06-08 12:03:36', '2021-06-11 03:41:39'),
(11, 'Sở Tư pháp thành phố Cần Thơ', 'Số 296 đường 30/4 - P.Xuân Khánh - Q.Ninh Kiều - TP.Cần Thơ', 'httt@moj.gov.vn', '02922220807', '02922220807', 'https://lltptructuyen.moj.gov.vn/thanhphocantho', '2021-06-08 12:09:04', '2021-06-11 03:42:03'),
(12, 'SỞ VĂN HÓA, THỂ THAO VÀ DU LỊCH TỈNH HẬU GIANG', 'số 5, Đường Thống Nhất, KV4, Phường 5, Thành phố Vị Thanh, tỉnh Hậu Giang', 'sovhttdl@haugiang.gov.vn', '029338786540', '02933878654', 'https://sovhttdl.haugiang.gov.vn/', '2021-06-08 12:11:18', '2021-06-11 03:42:21'),
(13, 'Trung tâm Thông tin Khoa học và Công nghệ - Sở Khoa học & Công nghệ TP. Cần Thơ', '118/3 Trần Phú - Phường Cái Khế - Quận Ninh Kiều - thành phố Cần Thơ', 'cantho@toaan.gov.vn', '0919039364', '0919039364', 'http://casti.vn/', '2021-06-09 08:06:47', '2021-06-11 03:43:08'),
(14, 'Sở Tài chính', '142 Nguyễn Thị Minh Khai, Quận 3, TP. Hồ Chí Minh', 'stc@tphcm.gov.vn', '0839333223', '039304663', 'http://www.tcvg.hochiminhcity.gov.vn/default.aspx', '2021-06-10 11:35:16', '2021-06-11 03:43:52');

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
(29, 36, 2, NULL, NULL),
(30, 37, 2, NULL, NULL),
(31, 38, 2, NULL, NULL),
(32, 28, 13, NULL, NULL),
(33, 49, 2, NULL, NULL),
(34, 48, 2, NULL, NULL),
(35, 50, 2, NULL, NULL);

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
(1, 1, 'Nguyễn', 'Huy', 1, '/storage/profile/1/m5nElWaHjYC5YGmDzr5u.jpg', '1999-12-07', 'Vĩnh Long', '0938858944', '2021-04-23 00:00:25', '2021-04-27 04:56:12'),
(2, 2, 'Nguyễn', 'Huy', 1, '/storage/profile/2/RpiixNGJM4pwTrfd1jRg.jpg', '1999-12-07', 'kkj', '4545621315', '2021-04-24 14:00:06', '2021-05-30 06:27:05'),
(3, 3, 'Trần', 'Tú', 1, '/storage/profile/3/UL9bFa5gVjogBcLbvUMJ.jpg', '2021-03-30', 'Hậu Giang', '0122558866', '2021-04-25 13:38:25', '2021-04-25 13:57:35'),
(4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 13:58:25', '2021-04-25 13:58:25'),
(6, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 14:58:56', '2021-04-25 14:58:56'),
(7, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 15:08:21', '2021-04-25 15:08:21'),
(8, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 16:42:39', '2021-04-25 16:42:39'),
(9, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 16:48:05', '2021-04-25 16:48:05'),
(10, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 16:55:24', '2021-04-25 16:55:24'),
(11, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 16:56:00', '2021-04-25 16:56:00'),
(12, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 16:59:35', '2021-04-25 16:59:35'),
(13, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 17:03:07', '2021-04-25 17:03:07'),
(14, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-25 17:04:07', '2021-04-25 17:04:07'),
(16, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-27 21:32:09', '2021-04-27 21:32:09'),
(17, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-27 21:32:40', '2021-04-27 21:32:40'),
(18, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-27 21:33:31', '2021-04-27 21:33:31'),
(19, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-27 21:36:44', '2021-04-27 21:36:44'),
(20, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-27 21:44:50', '2021-04-27 21:44:50'),
(21, 28, 'ABC', 'ACAC', 1, NULL, '2021-04-06', 'acac', '413123', '2021-04-28 00:20:59', '2021-04-28 00:22:20'),
(26, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 10:16:02', '2021-05-15 10:16:02'),
(27, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-18 04:01:27', '2021-05-18 04:01:27'),
(28, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-18 04:06:36', '2021-05-18 04:06:36'),
(30, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-28 07:53:14', '2021-05-28 07:53:14'),
(31, 48, 'La', 'Thao', 1, NULL, '2000-06-08', 'Cần Thơ', '0869184539', '2021-06-08 21:04:19', '2021-06-08 21:45:32'),
(32, 49, 'Võ', 'Đẩu', 1, NULL, '1999-10-07', 'Tiền Giang', '0869184538', '2021-06-08 21:06:41', '2021-06-08 21:10:32'),
(33, 50, 'Trần', 'Tâm', 1, NULL, '2001-05-31', 'Vĩnh Long', '0867535679', '2021-06-09 01:09:53', '2021-06-09 01:11:03');

-- --------------------------------------------------------

--
-- Table structure for table `thongtingiaidoan`
--

CREATE TABLE `thongtingiaidoan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idgiaidoan` bigint(20) NOT NULL,
  `tencongviec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motacongviec` text COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `thongtingiaidoan` (`id`, `idgiaidoan`, `tencongviec`, `motacongviec`, `thoigianbatdau`, `thoigiandukien`, `thoigianhoanthanh`, `trehan`, `created_at`, `updated_at`) VALUES
(4, 1, 'ihlhklgk', '<p>;ijopijp</p>', '2021-05-18', 45, '2021-05-28', 4, '2021-05-19 15:11:56', '2021-05-19 15:11:56'),
(5, 1, 'ipipip', '<p>8908989</p>', '2021-05-18', 9, '2021-05-20', 9, '2021-05-19 16:09:29', '2021-05-19 16:09:29'),
(6, 1, 'po\'op\'o', '<p>0890</p>', '2021-05-18', 9, '2021-05-21', 90, '2021-05-19 16:09:29', '2021-05-19 16:09:29');

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
  `lydogo` smallint(6) NOT NULL DEFAULT '0' COMMENT '1-có, 0-không',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`id`, `idchuyenmuc`, `idcongty`, `idtaikhoan`, `ngaydangtintuc`, `tieudetintuc`, `tomtattintuc`, `noidungtintuc`, `hinhanhtintuc`, `videotintuc`, `loaitintuc`, `duyettintuc`, `xuatbantintuc`, `lydogo`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, '2021-06-09 14:26:20', 'tieude', 'tomat', 'dá', '', NULL, 1, 1, 1, 0, NULL, '2021-06-09 14:26:20'),
(2, 1, 2, 2, '2021-06-11 04:06:27', 'tieude k duoc duoi 10 ky tu', 'tomattieude k duoc duoi 10 ky tu', 'tieude k duoc duoi 10 ky tu', '/storage/news/image/1/wlIhRddTig7D4Lin5BA4.jpg', '/storage/news/video/1/IkRJYgBwQZeJ7mf6jcCC.mp4', 1, 0, 0, 0, NULL, '2021-06-12 06:42:47'),
(3, 1, 2, 2, '2021-06-11 04:06:23', 'tieude', 'tomat', 'dá', '', NULL, 0, 0, 0, 1, NULL, '2021-06-11 04:06:23'),
(4, 1, 2, 2, '2021-06-02 14:24:41', 'tieude', 'tomat', '<p>idgsaudiufvfnfsue</p>', '', NULL, 0, 1, 1, 1, NULL, '2021-06-02 14:24:41'),
(11, 1, 1, 2, '2021-06-11 04:06:21', 'qeqưewq', 'qưeqưewqe', '<p>132132131313</p>', '/storage/news/image/1/FkgfZT4akohOy0uj0E2q.jpg', NULL, 0, 1, 1, 1, NULL, '2021-06-11 04:06:21'),
(12, 1, 2, 2, '2021-06-11 04:06:19', 'eqưeqưeđâsdasdasdasdas', 'qưeqưeqeđâsdasdasd', '<p>qeqưeqưqưqeq</p>', '/storage/news/image/2/ig0dykKVJei0uL8qrolK.jpg', NULL, 0, 0, 0, 1, NULL, NULL),
(15, 4, 2, 1, '2021-06-11 04:06:16', 'Phát hiện loài cóc bí ngô cực độc phát sáng trong bóng tối', '<p><span style=\"color: rgb(128, 128, 128); font-family: arial; font-size: 18px; text-align: justify; background-color: rgb(255, 255, 255);\">Các nhà nghiên cứu đã phát hiện ra một loài cóc bí ngô mới có màu cam, có huỳnh quang phát sáng trong bóng tối và có kích thước nhỏ chỉ 1 cm ở rừng Atlantic của Brazil.</span><br></p>', '<table class=\"main_content\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"width: 709px; background-color: rgb(255, 255, 255); text-align: justify; padding-right: 2px; color: rgb(128, 128, 128); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><tbody><tr><td class=\"css_Tomtat_\" style=\"font-size: 0.9rem; padding-top: 10px;\"><span class=\"\" style=\"font-size: 18px; font-family: arial; line-height: 20pt;\">Các nhà nghiên cứu đã phát hiện ra một loài cóc bí ngô mới có màu cam, có huỳnh quang phát sáng trong bóng tối và có kích thước nhỏ chỉ 1 cm ở rừng Atlantic của Brazil.</span><br><br><div class=\"\" style=\"text-align: center;\"><img src=\"http://trithuckhoahoc.vn/DesktopModules/CMS/HinhDaiDien2/0/2021_05_04-09_24_38nthang.jpg\" style=\"border-width: initial; border-color: initial; border-image: initial; margin: 2px; max-width: 480px;\"></div></td></tr><tr><td class=\"css_txt_Noidung_\" style=\"font-family: arial; line-height: 17pt;\"><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: center;\"><em><span style=\"color: rgb(0, 112, 192);\">Một loài cóc bí ngô mới được phát hiện ở Brazil.</span></em><span style=\"font-weight: bolder;\"></span></p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Loài lưỡng cư này mang tên Brachycephalus rotenbergae, thuộc họ hàng với ít nhất 36 loài cóc bí ngô, được đặt tên theo loại bí phổ biến trong lễ Halloween. Giống loài ếch tiết ra nọc độc, màu sắc rực rỡ của cóc bí ngô là tín hiệu báo cho những kẻ săn mồi rằng da của chúng mang một loại độc tố có thể gây chết người.</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Loài cóc bí ngô mới này được mô tả gần đây trên tạp chí&nbsp;<em>Plos One</em>. Chúng được tìm thấy trong nỗ lực nghiên cứu sâu rộng trên khắp Brazil để tìm những con cóc bí ngô mới.</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Các chuyên gia cho biết, việc xác định các sinh vật là rất quan trọng để bảo tồn đa dạng sinh học của nước này, đặc biệt là ở các khu vực có nhiều loài phong phú như rừng Atlantic, nơi đã mất</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Brazil có số lượng loài lưỡng cư cao nhất trên thế giới, ít nhất là một nghìn loài. Nhưng động vật lưỡng cư trên toàn thế giới là một trong những nhóm động vật có xương sống dễ bị tổn thương nhất, đặc biệt khi biến đổi khí hậu.</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Trưởng nhóm nghiên cứu, Giáo sư&nbsp;Ivan Sergio Nunes Silva, nhà khoa học thuộc Đại học bang São Paulo, cho biết: “Là một nhà khoa học, khoảnh khắc vui nhất là khi bạn nhìn thấy cái gì đó mới và bạn là người duy nhất biết. Nhưng thật không may, ngày nay, chúng ta đang mất đi các loài chưa được xác định nhanh hơn tốc độ những loài mới được mô tả\".</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bolder;\">Câu chuyện thú vị về loài cóc mới</span></p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: center;\"><em><span style=\"color: rgb(0, 112, 192);\"><img alt=\"\" src=\"http://trithuckhoahoc.vn/Portals/0/HinhBanTin/hang/2020/07/coc%201.jpg\" style=\"border-width: initial; border-color: initial; border-image: initial; width: 480px; height: 498px;\"><br>Hình ảnh về loài cóc bí ngô mới được phát hiện. Ảnh: Plos One.</span></em></p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Giáo sư Nunes và nhóm của ông đã tìm thấy loài cóc bí ngô B. rotenbergae qua&nbsp;76 cuộc khảo sát thực địa từ năm 2018 đến năm 2019 ở dãy núi Mantiqueira cao 2.132 m so với mực nước biển. Họ dành hàng giờ lang thang trên các mỏm đá và những con suối chảy qua rừng.</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Hầu hết các loài cóc bí ngô đều khá giống nhau. Chúng là những con ếch đặc biệt nhỏ bé, nằm trong số những loài nhỏ nhất trên thế giới với chiều dài chỉ hơn một cm và thường có làn da màu quýt, tươi sáng tiết ra một chất độc thần kinh cực mạnh.</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Trở lại phòng thí nghiệm, nhóm nghiên cứu đã lấy mẫu DNA của 71 con&nbsp;cóc&nbsp;và so sánh chúng với các mẫu loài cóc bí ngô đã biết. Họ cũng phân tích các đặc điểm vật lý, cấu trúc xương, hành vi của chúng&nbsp;và ghi âm các cuộc gọi giao phối của chúng&nbsp;để xác định rằng đây là một loài mới.</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Chẳng hạn, loài cóc bí ngô mới nhỏ hơn những loài cóc đã biết khác, với chiếc mõm nhỏ hơn. Các đặc điểm bất thường khác bao gồm các hoa văn màu đen, mờ trên da&nbsp;và sở thích sống ở độ cao hơn trong rừng Atlantic.</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Ông Nunes cho biết, các loài sinh vật này không thể nghe thấy âm thanh tiếng gọi của chúng vì tai của chúng chưa phát triển.</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">“Giao tiếp của chúng về cơ bản là bằng hình ảnh, vì những con cóc này có thể giao tiếp bằng cách há miệng”, ông nói thêm.</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Đặc biệt, có một điều bí ẩn là loài B. rotenbergae có các mảng xương trên hộp sọ và lưng phát tia huỳnh quang và có thể phát sáng qua da dưới ánh sáng tia cực tím, một bước sóng mà chúng có thể nhìn thấy, nhưng con người thì không. Ông Nunes cho biết thêm, chỉ có hai loài cóc bí ngô khác được biết là có khả năng phát sáng huỳnh quang. Ông&nbsp;không biết xương huỳnh quang dùng để làm gì, nhưng chúng có thể đóng vai trò trong giao tiếp.</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: center;\"><em><span style=\"color: rgb(0, 112, 192);\"><img alt=\"\" src=\"http://trithuckhoahoc.vn/Portals/0/HinhBanTin/hang/2020/07/coc%202.jpg\" style=\"border-width: initial; border-color: initial; border-image: initial; width: 480px; height: 321px;\"><br>Loài này có các mảng xương trên hộp sọ và lưng phát sáng màu xanh lục qua da dưới tia UV.&nbsp; Ảnh: Plos One.</span></em></p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bolder;\">Còn rất nhiều việc phải làm</span></p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Giáo sư Michel Varajao Garey, thuộc Viện Khoa học tự nhiên và đời sống Mỹ Latinh (ILACVN) cho biết, phương pháp tiếp cận của Giáo sư Nunes và các đồng nghiệp là toàn diện.</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Một phương pháp kỹ lưỡng như vậy có thể “tiết lộ sự đa dạng vẫn chưa được biết đến” và có thể phân loại lại một số loài đã bị gắn nhãn sai.</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Các tác giả cho biết, trên thực tế, cho đến khi có nghiên cứu này, loài B. rotenbergae đã bị phân loại nhầm thành B. ephippium vì trông rất giống.</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Hiện chưa rõ số lượng của loài mới, nhưng ông Nunes và các đồng nghiệp hy vọng sẽ tiến hành thêm nhiều cuộc khảo sát để tìm ra nơi nó sinh sống, cũng như tìm kiếm nhiều loài cóc bí ngô hơn.</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Hầu hết các phần còn lại của rừng Atlantic được bảo vệ trong các khu bảo tồn thiên nhiên, nhưng các khu vực này vẫn bị đe dọa bởi nạn phá rừng, biến đổi khí hậu và sự thay đổi mục đích trong sử dụng đất. Mặc dù tỷ lệ phá rừng đang giảm ở Brazil, nhưng có hơn 28.000 mẫu đất rừng đã bị &nbsp;phá trong năm 2018.</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Giáo sư Nunes hy vọng khám phá này sẽ truyền cảm hứng cho chính phủ và các tổ chức chăm sóc tốt hơn các nguồn tài nguyên của mình, trong đó có việc&nbsp;theo dõi chặt chẽ các loài bị đe dọa.</p><p style=\"margin: 6pt 0cm; line-height: 24px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Giáo sư Nunes nói: “Thiên nhiên chỉ ổn định nếu nó đủ phức hệ. Điều này cho thấy sự đa dạng sinh học là điều tối quan trọng đối với một quốc gia rộng lớn như Brazil\".</p></td></tr></tbody></table>', '/storage/news/image/1/m7GwJTNk2fVuXCzV5v0c.jpg', NULL, 1, 1, 1, 0, '2021-06-08 12:19:26', '2021-06-11 04:06:16'),
(16, 2, 2, 1, '2021-06-11 04:06:13', 'Một số loại trà thảo mộc an toàn cho phụ nữ mang thai nhưng không có nghĩa là dùng càng nhiều càng tốt', '<p><span style=\"color: rgb(128, 128, 128); font-family: arial; font-size: 18px; text-align: justify; background-color: rgb(255, 255, 255);\">Đối với nhiều người, việc sử dụng các loại thảo dược trong thai kỳ đã trở nên phổ biến. Tuy nhiên, không phải tất cả các loại thảo mộc đều có lợi và không gây tác dụng phụ nguy hiểm cho cả mẹ và em bé.</span><br></p>', '<p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Chỉ có một số chế phẩm thảo dược như trà hoặc nước sắc uống không có hoặc có ít tác dụng phụ không mong muốn khi sử dụng với mức độ phù hợp. Để đảm bảo cho cả mẹ và bé, dưới đây là một số loại trà thảo mộc an toàn cho phụ nữ mang thai bạn nên biết.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\"><span style=\"font-weight: bolder;\">1. Trà bạc hà</span></p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Trà bạc hà rất có lợi cho phụ nữ mang thai, đặc biệt là trong tam cá nguyệt đầu tiên khi sử dụng với một liều lượng thích hợp. Nó là một loại thảo mộc tuyệt vời có tác dụng giảm đầy hơi, nôn mửa và một số triệu chứng ốm nghén như buồn nôn và đau đầu. Điều này là bởi tác dụng chống co thắt của nó.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Tuy nhiên, việc sử dụng quá nhiều loại trà này đôi khi dẫn đến kích thích kinh nguyệt trong thời kỳ đầu mang thai.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; background-color: rgb(255, 255, 255); line-height: 24px; text-align: center;\"><img alt=\"\" src=\"http://trithuckhoahoc.vn/Portals/0/HinhBanTin/nhnhanh/N%C4%83m%202021/tra.jpg\" style=\"border-width: initial; border-color: initial; border-image: initial;\"></p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; background-color: rgb(255, 255, 255); line-height: 24px; text-align: center;\"><em><span style=\"color: rgb(0, 112, 192);\">Trà bạc hà rất có lợi cho phụ nữ mang thai, đặc biệt là trong tam cá nguyệt đầu tiên khi sử dụng với một liều lượng thích hợp.</span></em></p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\"><span style=\"font-weight: bolder;\">2. Trà gừng</span></p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Nhiều phụ nữ tin rằng, việc sử dụng trà gừng trong thời kỳ đầu mang thai sẽ giúp chống lại tình trạng ốm nghén, buồn nôn, nôn, đau đầu, khó tiêu và thay đổi tâm trạng.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Các nghiên cứu cũng đã cho thấy, thành phần gingerol có trong củ gừng rất an toàn chống lại chứng buồn nôn và nôn mửa. Tuy nhiên, việc tiêu thụ quá nhiều gừng có thể làm tăng nguy cơ chảy máu và sản xuất axit trong dạ dày.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\"><span style=\"font-weight: bolder;\">3. Trà xanh</span></p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Trong thời kỳ mang thai, việc sử dụng trà xanh với số lượng hạn chế được coi là một thức uống tăng cường sức khỏe rất tốt. Trà xanh có chứa nhiều chất chống oxy hóa mạnh giúp ngăn ngừa tổn thương do stress oxy hóa cho cả mẹ và thai nhi.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Bên cạnh đó, uống trà xanh cũng giúp cải thiện lưu thông máu và giảm huyết áp cao trong cơ thể. Tuy nhiên, nếu tiêu thụ quá nhiều trà xanh sẽ không tốt cho sức khỏe vì nó ngăn cơ thể hấp thụ sắt và axit folic.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\"><span style=\"font-weight: bolder;\">4. Trà hoa cúc</span></p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Nghiên cứu cho thấy, trà hoa cúc có tác dụng giúp giảm bớt kích ứng đường tiêu hóa, đau khớp và mất ngủ trong thời kỳ mang thai. Điều này là bởi hoạt động chống viêm của hoa cúc cùng với các hợp chất phenolic của nó như flavonoid và coumarin giúp hỗ trợ hiệu quả cho mẹ và thai nhi.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Tuy vậy, một số nghiên cứu cũng đã cho thấy, uống trà hoa cúc thường xuyên trong tam cá nguyệt thứ ba có thể gây sinh non và sinh con nhẹ cân.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\"><span style=\"font-weight: bolder;\">5. Trà hạt thì là</span></p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Hạt hoặc quả chín phơi khô của cây thì là được biết là có ảnh hưởng tích cực với những rối loạn nội tiết tố thường gặp trong thời kỳ mang thai.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Trà hạt thì là giúp tăng tiết sữa và cải thiện khả năng sinh sản. Nó cũng có tác dụng chống co thắt giúp giảm quá trình chuyển dạ kéo dài, đồng thời dẫn đến sự giãn nở nhanh hơn và hiệu quả của cổ tử cung.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\"><span style=\"font-weight: bolder;\">6. Trà cỏ xạ hương</span></p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Trà cỏ xạ hương có khả năng giảm đầy hơi và đau bụng trong suốt thời kỳ mang thai. Nó cũng được coi là tác dụng giúp ngăn ngừa tình trạng nhiễm trùng đường tiết niệu và cảm lạnh thông thường.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Tuy vậy, nếu tiêu thụ quá nhiều trà cỏ xạ hương có thể dẫn đến sảy thai.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; background-color: rgb(255, 255, 255); line-height: 24px; text-align: center;\"><img alt=\"\" src=\"http://trithuckhoahoc.vn/Portals/0/HinhBanTin/nhnhanh/N%C4%83m%202021/tra%201.jpg\" style=\"border-width: initial; border-color: initial; border-image: initial;\"></p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; background-color: rgb(255, 255, 255); line-height: 24px; text-align: center;\"><em><span style=\"color: rgb(0, 112, 192);\">Trà cỏ xạ hương có khả năng giảm đầy hơi và đau bụng trong suốt thời kỳ mang thai.</span></em></p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\"><span style=\"font-weight: bolder;\">7. Trà hoa hồi</span></p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Việc sử dụng trà hoa hồi với một lượng vừa phải rất có lợi cho việc phục hồi sau sinh và cho con bú tốt hơn. Nó cũng rất an toàn và hiệu quả để sử dụng trong thai kỳ.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Mặc dù vậy, trà hoa hồi không được khuyến khích cho phụ nữ đang sử dụng thuốc chống đông máu warfarin, vì nó có thể làm tăng tác dụng của thuốc.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Trà thảo mộc cũng có những loại tốt cho phụ nữ mang thai nhưng không có nghĩa là cứ uống càng nhiều càng tốt. Phụ nữ mang thai hay kể cả người bình thường, khi sử dụng trà thảo mộc đều nên dùng liều lượng vừa phải, dùng quá nhiều dễ gây ra các tác dụng phụ.</p>', '/storage/news/image/1/2NXnY9QdXgEHUNhkEGy5.jpg', NULL, 1, 1, 1, 0, '2021-06-08 12:24:53', '2021-06-11 04:06:13'),
(17, 5, 4, 1, '2021-06-09 07:35:16', '4 bí quyết hữu ích giúp tăng hàm lượng canxi hấp thụ cho cơ thể', '<p>4 bí quyết hữu ích giúp tăng hàm lượng canxi hấp thụ cho cơ thể<br></p>', '<p><span class=\"\" style=\"color: rgb(128, 128, 128); text-align: justify; background-color: rgb(255, 255, 255); font-size: 18px; font-family: arial; line-height: 20pt;\">Canxi được biết đến như một trong những khoáng chất thiết yếu cho sức khỏe con người. Canxi giúp răng và xương chắc khỏe, hỗ trợ kiểm soát chức năng thần kinh và cân bằng hàm lượng axit (pH) có trong máu.</span><span style=\"color: rgb(128, 128, 128); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 14.4px; text-align: justify; background-color: rgb(255, 255, 255);\"></span><br style=\"color: rgb(128, 128, 128); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 14.4px; text-align: justify; background-color: rgb(255, 255, 255);\"><br style=\"color: rgb(128, 128, 128); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 14.4px; text-align: justify; background-color: rgb(255, 255, 255);\"></p><div class=\"\" style=\"color: rgb(128, 128, 128); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 14.4px; background-color: rgb(255, 255, 255); text-align: center;\"><img src=\"http://trithuckhoahoc.vn/DesktopModules/CMS/HinhDaiDien2/0/2021_01_27-17_09_29ttmphuong.jpg\" style=\"border-width: initial; border-color: initial; border-image: initial; margin: 2px; max-width: 480px;\"></div>', '/storage/news/image/1/6P5fWS7LSpMhUVXYCqTe.jpg', NULL, 1, 1, 1, 0, '2021-06-09 07:33:13', '2021-06-09 07:35:16'),
(18, 9, 5, 1, '2021-06-09 14:31:21', 'Bệnh nhân nhiễm virus corona vừa xuất viện: “10 ngày tôi mới thấy mặt trời và đông người như thế”', '<p><span style=\"color: rgb(128, 128, 128); font-family: arial; font-size: 18px; text-align: justify; background-color: rgb(255, 255, 255);\">Ôm bó hoa tươi thắm trên tay, Phương vui vẻ gửi lời cảm ơn tới bác sĩ và cho biết đã 10 ngày qua, hôm nay anh mới gặp được nhiều người đến như vậy.</span><br></p>', '<p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Tính đến thời điểm hiện tại, nước ta đã ghi nhận 14 ca dương tính với virus corona, trong đó riêng tỉnh Vĩnh Phúc có 9 ca nhiễm loại virus này. Trước tình hình phức tạp của dịch bệnh, các cấp bộ ngành vẫn đang triển khai nhiều biện pháp đồng bộ để chống dịch.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px; max-width: 100%;\">Ngày 10/2, ngành y tế tiếp tục công bố tin vui, đó là có thêm 3 bệnh nhân nữa được điều trị khỏi và xuất viện. Như vậy, Việt Nam đã điều trị thành công cho 6 bệnh nhân.</p><div style=\"color: rgb(128, 128, 128); font-family: arial; background-color: rgb(255, 255, 255); text-align: center;\"><img src=\"http://anh.khampha.vn/upload/1-2020/images/2020-02-10/corona5-1581331417-531-width600height450.jpg\" alt=\"Bệnh nhân nhiễm virus corona vừa xuất viện: “10 ngày tôi mới thấy mặt trời và đông người như thế” - 2\" style=\"border-width: initial; border-color: initial; border-image: initial; width: 480px; height: 360px;\"><br><em><span style=\"color: rgb(54, 96, 146);\">Các bệnh nhân ra viện và bác sĩ điều trị nhận hoa chúc mừng của lãnh đạo Bộ Y tế.</span></em><br></div><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Trước sảnh khoa Cấp cứu (Bệnh viện Nhiệt đới Trung ương), dù đã khỏi bệnh nhưng 3 bệnh nhân gồm 2 nữ, 1 nam vẫn đeo khẩu trang để phòng lây nhiễm bệnh (nếu có) cho những người xung quanh. Ánh mắt của 3 bệnh nhân vừa điều trị khỏi bệnh thể hiện rõ niềm vui, vì suốt 10 ngày qua họ phải cách ly, điều trị trong phòng áp lực âm. Ngoài các bác sĩ, nhân viên y tế, họ không được tiếp xúc với bất kỳ ai.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px; max-width: 100%;\">Có lẽ vì thế mà khi được ra ngoài, cả 3&nbsp;bệnh nhân có vẻ “ngợp” trước sự xuất hiện của rất đông người, mọi ánh mắt đều đổ dồn vào họ.</p><div style=\"color: rgb(128, 128, 128); font-family: arial; background-color: rgb(255, 255, 255); text-align: center;\"><img src=\"http://anh.khampha.vn/upload/1-2020/images/2020-02-10/corona2-1581331532-947-width600height400.jpg\" alt=\"Bệnh nhân nhiễm virus corona vừa xuất viện: “10 ngày tôi mới thấy mặt trời và đông người như thế” - 3\" style=\"border-width: initial; border-color: initial; border-image: initial; width: 480px; height: 320px;\"><br><em><span style=\"color: rgb(54, 96, 146);\">Bệnh nhân Từ Công Phương thay mặt các bệnh nhân gửi lời cảm ơn các bác sĩ.</span></em><br></div><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Thay mặt cho các bệnh nhân được xuất viện, anh Từ Công Phương (Vĩnh Phúc) rất xúc động và&nbsp;gửi lời cảm ơn đến các nhân viên y tế bệnh viện đã nhiệt tình chăm sóc, điều trị để hôm nay cả 3 bệnh nhân đều được khỏe mạnh ra viện. “Sau hơn 10 ngày điều trị, đây là lần đầu tiên tôi được ra khỏi buồng bệnh cách ly, được nhìn thấy ánh mặt trời và nhiều người như vậy”, anh Phương chia sẻ.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px; max-width: 100%;\">Sau khi gửi lời cảm ơn đến đội ngũ y bác sĩ Bệnh viện Nhiệt đới Trung ương, cả 3 bệnh nhân nhanh chóng bước ra xe do Sở Y tế tỉnh Vĩnh Phúc đã chuẩn bị sẵn để đưa về gia đình. Tất cả đều e ngại trước ống kính các máy ghi hình và kiệm lời chia sẻ.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px; max-width: 100%;\">Bệnh nhân Nguyễn Thị Dung (Bình Xuyên, Vĩnh Phúc) chạy vội vã ra chiếc xe đợi sẵn, cô chỉ nói ngắn gọn: “Em nóng lòng lắm”. Chắc hẳn Dung đang rất lo lắng cho những người thân của mình vừa xác định dương tính với virus corona chủng mới. Dung là bệnh nhân lây nhiễm virus corona cho 3 người thân, 1 người hàng xóm.</p><div style=\"color: rgb(128, 128, 128); font-family: arial; background-color: rgb(255, 255, 255); text-align: center;\"><img src=\"http://anh.khampha.vn/upload/1-2020/images/2020-02-10/corona4-1581331487-543-width600height450.jpg\" alt=\"Bệnh nhân nhiễm virus corona vừa xuất viện: “10 ngày tôi mới thấy mặt trời và đông người như thế” - 4\" style=\"border-width: initial; border-color: initial; border-image: initial; width: 480px; height: 360px;\"><br><em><span style=\"color: rgb(54, 96, 146);\">Hiện Bệnh viện Bệnh Nhiệt đới Trung ương vẫn đang điều trị và cách ly cho 2 bệnh nhân.</span></em><br></div><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px;\">Bác sĩ Nguyễn Trung Cấp - Trưởng khoa Cấp cứu (Bệnh viện Bệnh Nhiệt đới Trung ương) cho biết, trong quá trình điều trị ở bệnh viện, các bệnh nhân được cách ly tuyệt đối. Mọi sinh hoạt, ăn uống đều diễn ra khép kín, được phục vụ bởi các y, bác sỹ, nhân viên y tế trong bệnh viện. Sau khi ra viện, các bệnh nhân này sẽ trở về cuộc sống bình thường.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px; max-width: 100%;\">Theo bác sĩ Trung Cấp, trong số 3 bệnh nhân ra viện, 2 bệnh nhân nữ chỉ theo dõi, dường như không phải điều trị gì. Còn với bệnh nhân Từ Công Phương có xuất hiện tình trạng viêm phổi nên phải điều trị bằng kháng sinh, chưa phải thở máy.</p><p style=\"margin: 6pt 0cm; color: rgb(128, 128, 128); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255); line-height: 24px; max-width: 100%;\">Tại buổi tiễn 3 bệnh nhân ra viện, Thứ trưởng Bộ Y tế Đỗ Xuân Tuyên gửi lời chúc tới 3 bệnh nhân, cũng như đội ngũ y bác sĩ Bệnh viện&nbsp;Bệnh nhiệt đới Trung ương đã nỗ lực điều trị cho bệnh nhân. Thứ trưởng Tuyên cũng cho rằng, các bác sĩ là người trực tiếp tiếp xúc gần với mầm bệnh nên nguy cơ lây nhiễm cao, đặc biệt là việc tiếp xúc với người bệnh dương tính, vì thế trong quá trình điều trị cần phải trang bị quần áo phòng hộ, kiểm soát chặt chẽ theo quy định của Bộ Y tế.</p>', '/storage/news/image/1/FYUTX6Rze15vLiKKrrbH.jpg', NULL, 1, 1, 1, 0, '2021-06-09 14:24:24', '2021-06-09 14:31:21'),
(19, 15, 2, 2, '2021-06-12 05:55:39', 'Cơ khí bươm bướmm', '<p>Cơ khí bươm bướm<br></p>', '<p>Cơ khí bươm bướm<br></p>', '/storage/news/image/28/fpZoGbShUnjHkY1bHhkq.jpg', '/storage/news/video/28/S09vVwSJxz7hrVvrEPn6.mp4', 1, 1, 1, 1, NULL, '2021-06-12 13:43:17'),
(20, 6, 2, 2, '2021-06-12 06:06:23', 'Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhânDân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt', '<p>Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sựDân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhânDân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặtDân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhânDân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặtgóp mặt của Chevrolet Corvette C8 vừa về tay chủ nhân<br></p>', '<p>Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhân<br></p>', '/storage/news/image/2/Sck0P55QJ4GmhFR8HKMa.jpg', '/storage/news/video/2/Y5DEzr3mwMWRdfoEcXSH.mp4', 1, 1, 1, 1, NULL, '2021-06-12 06:06:30'),
(21, 2, 2, 1, '2021-06-12 07:01:16', 'Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhânn', '<p>Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhân<br></p>', '<p>Dân chơi Cần Thơ mang dàn siêu xe, xe thể thao khủng đi offline, có sự góp mặt của Chevrolet Corvette C8 vừa về tay chủ nhân<br></p>', '/storage/news/image/1/BscnrjZKlhPSZS4QUeXS.jpg', '/storage/news/video/1/YPzGLcYmGHXnu0VKesiU.mp4', 0, 0, 0, 0, '2021-06-12 06:50:03', '2021-06-12 06:54:02'),
(22, 22, 2, 2, '2021-06-12 13:18:00', 'tieude k duoc duoi 10 ky tuu', '<p>tieude k duoc duoi 10 ky tu<br></p>', '<p>tieude k duoc duoi 10 ky tu<br></p>', '/storage/news/image/2/e6EeeA8FH3NXefc2NsEf.jpg', '/storage/news/video/2/mn89JqWN3oGC3H0nxNm7.mp4', 1, 1, 1, 0, NULL, '2021-06-12 13:42:44');

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
  `loaitaikhoan` smallint(6) NOT NULL DEFAULT '0' COMMENT '0-normal, 1-company, 2-administrator',
  `trangthai` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `idcongty`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `loaitaikhoan`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin@dev.com', '2021-05-28 07:57:46', '$2y$10$vFxTKDYsc5xa6LW1UxdTZeeF5Sbk2dzL8kkh/1TUERQnp1nawEULu', NULL, NULL, NULL, 2, 0, NULL, '2021-05-26 09:21:16'),
(2, 2, 'admin2@dev.com', '2021-05-28 07:57:46', '$2y$10$vFxTKDYsc5xa6LW1UxdTZeeF5Sbk2dzL8kkh/1TUERQnp1nawEULu', NULL, NULL, 'i7Cspt1iypijnFtTbDxl0ruiXkpjOqvJ1f6QNKEdYIBfrzxPQbLdQzmzaksG', 1, 0, NULL, '2021-05-27 08:19:35'),
(28, 2, 'admin3@dev.com', '2021-05-28 07:57:46', '$2y$10$vFxTKDYsc5xa6LW1UxdTZeeF5Sbk2dzL8kkh/1TUERQnp1nawEULu', NULL, NULL, NULL, 1, 0, '2021-04-28 00:20:59', '2021-05-04 07:27:22'),
(36, NULL, 'chau@gmail.com', '2021-05-28 07:57:46', '$2y$10$dwkz7Fr6NzxHwA7n9XUnwOqdDGjIMgNm.mjlrwko9yJO0PfH.cGF2', NULL, NULL, NULL, 1, 0, '2021-05-18 04:01:26', '2021-05-18 04:02:31'),
(37, NULL, 'trung@dev.com', '2021-05-28 07:57:46', '$2y$10$JoBQ0bj7qN6YvW/4xNoM.eMZO.hOinupFaXyJwlZ.O2Q6S5SN1VU.', NULL, NULL, NULL, 1, 0, '2021-05-18 04:06:36', '2021-05-18 04:08:46'),
(47, NULL, 'klthuynguyen1998@gmail.com', '2021-05-28 07:57:46', '$2y$10$yBhLxLXqcvLvGKvpn4eDfOeHBQg45rTZSdf8wWgbzGTKSfPWvTZ3m', NULL, NULL, 'gBmDZqvfdKXRcsXDPTcgfiIkICj3RBuBqeQZ9MbuNcDAM5a8eMOK2LjWP5hz', 0, 0, '2021-05-28 07:53:09', '2021-05-28 08:22:11'),
(48, 4, 'cty1@gmail.com', '2021-06-08 21:27:48', '$2y$10$z3ymRv1nlJcSvlSZqHsuu.SmExKKQ39ll7wg/Zy0bxIOTsPS/Lufa', NULL, NULL, NULL, 1, 0, '2021-06-08 21:04:10', '2021-06-08 21:47:10'),
(49, 3, 'dauvo12a3@gmail.com', '2021-06-08 21:07:10', '$2y$10$pOWT8XdPPeFe4w7Iax.r..UyRQ/OwbYuakzy2VWFMziV011trF9sS', NULL, NULL, NULL, 1, 0, '2021-06-08 21:06:38', '2021-06-08 21:12:51'),
(50, 5, 'cty2@gmail.com', '2021-06-09 01:10:20', '$2y$10$RrRikWPVSk.ETl27Fns/veo0Nbz7RVIcXGlxLWEUoMt8TOaDQh27u', NULL, NULL, NULL, 1, 0, '2021-06-09 01:09:44', '2021-06-09 01:13:37'),
(51, 6, 'cty3@gmail.com', '2021-06-10 20:49:06', '$2y$10$00KcGuF2LOPRnm8/KueqKe97tnHr0CMUfpGioSaEZsdsNKgur5a3u', NULL, NULL, NULL, 0, 0, '2021-06-10 20:47:17', '2021-06-10 20:47:17'),
(52, 7, 'cty4@gmail.com', '2021-06-09 20:49:12', '$2y$10$lEbDiUpOVOv6EMm1j8B3Fuy6QmZeWY39zoqLAcxSS/u4MdwVGfE3O', NULL, NULL, NULL, 0, 0, '2021-06-10 20:47:58', '2021-06-10 20:47:58');

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
  `idsanpham` bigint(20) DEFAULT NULL,
  `iddanhgia` bigint(20) DEFAULT NULL,
  `dulieuvideo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `quyen_tenquyen_unique` (`tenquyen`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `hinhanhquangcao`
--
ALTER TABLE `hinhanhquangcao`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kho`
--
ALTER TABLE `kho`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lichsutintuc`
--
ALTER TABLE `lichsutintuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `linhvuc`
--
ALTER TABLE `linhvuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `logtintuc`
--
ALTER TABLE `logtintuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quyen`
--
ALTER TABLE `quyen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `so`
--
ALTER TABLE `so`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `taikhoan_vaitro`
--
ALTER TABLE `taikhoan_vaitro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `thongtin`
--
ALTER TABLE `thongtin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `thongtingiaidoan`
--
ALTER TABLE `thongtingiaidoan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
