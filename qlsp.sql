-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 30, 2021 lúc 07:16 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlsp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyenmuc`
--

CREATE TABLE `chuyenmuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idlinhvuc` bigint(20) NOT NULL,
  `tenchuyenmuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuyenmuc`
--

INSERT INTO `chuyenmuc` (`id`, `idlinhvuc`, `tenchuyenmuc`, `created_at`, `updated_at`) VALUES
(1, 2, 'Xe và Đời sống', '2021-04-23 07:09:02', '2021-04-23 07:09:13'),
(2, 1, 'Sức khỏe gia đình', '2021-04-23 07:09:39', '2021-04-23 07:09:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congty`
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
-- Đang đổ dữ liệu cho bảng `congty`
--

INSERT INTO `congty` (`id`, `idso`, `idlinhvuc`, `tencongty`, `diachicongty`, `emailcongty`, `dienthoaicongty`, `faxcongty`, `webcongty`, `sdkkdcongty`, `ngaycapdkkdcongty`, `noicapdkkdcongty`, `masothuecongty`, `ngaythanhlapcongty`, `subdomain`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Tập đoàn VinGroup', 'Bình Tân, Vĩnh Long', 'vingroup@etc.vn', '1234567890', '1234567890', 'http://www.vingroup.etc.vn', '258147963', '2021-04-06', 'Vĩnh Long', '100225566', '2021-04-28', 'vingroup', NULL, '2021-05-28 17:16:20'),
(2, 2, 2, 'Công ty Hải Sản Miền Trung', 'Miền Trung', 'ctyhaisan@gmail.com', NULL, NULL, 'https://www.ctyhaisan.vn', '123123123', '2021-04-12', 'Phú Yên', '12123565', '2021-05-18', NULL, NULL, '2021-05-30 13:17:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idtaikhoan` bigint(20) NOT NULL,
  `idsanpham` bigint(20) NOT NULL,
  `thoigiandanhgia` timestamp NOT NULL DEFAULT current_timestamp(),
  `saodanhgia` int(11) NOT NULL,
  `noidungdanhgia` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthaidanhgia` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaidoan`
--

CREATE TABLE `giaidoan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idsanpham` bigint(20) NOT NULL,
  `idtaikhoan` bigint(20) NOT NULL,
  `tengiaidoan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoigiantao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `motagiaidoan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giaidoan`
--

INSERT INTO `giaidoan` (`id`, `idsanpham`, `idtaikhoan`, `tengiaidoan`, `thoigiantao`, `motagiaidoan`, `created_at`, `updated_at`) VALUES
(1, 24, 2, 'Giai đoạn 1', '2021-05-17 13:16:16', 'Giai đoạn tiền xử lý', '2021-05-17 13:16:16', '2021-05-17 13:16:16'),
(3, 24, 2, 'Giai đoạn 2', '2021-05-18 08:12:52', 'Giai đoạn quan trọng', '2021-05-18 08:12:52', '2021-05-18 08:12:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanh`
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
-- Đang đổ dữ liệu cho bảng `hinhanh`
--

INSERT INTO `hinhanh` (`id`, `idsanpham`, `iddanhgia`, `dulieuhinh`, `created_at`, `updated_at`) VALUES
(4, 2, NULL, '/storage/product/detail-images/1/zen75SEfVYwhe58iohRd.jpg', '2021-04-25 06:31:13', '2021-04-25 06:31:13'),
(5, 2, NULL, '/storage/product/detail-images/1/zbrjBTcHIr4muWM7fL26.jpg', '2021-04-25 06:31:13', '2021-04-25 06:31:13'),
(6, 21, NULL, '/storage/product/detail-images/1/nZ8rzoFAnEzeyfl77ffk.jpg', '2021-04-27 09:36:04', '2021-04-27 09:36:04'),
(7, 22, NULL, '/storage/product/detail-images/1/RhnZvJ98y0UTsJSEAVAk.jpg', '2021-04-27 09:50:20', '2021-04-27 09:50:20'),
(8, 23, NULL, '/storage/product/detail-images/1/FHAtjcwSxc9e9VUj7MOv.jpg', '2021-04-27 10:05:54', '2021-04-27 10:05:54'),
(9, 24, NULL, '/storage/product/detail-images/2/xwvE1IgZge3baXGZRI5G.jpg', '2021-04-28 04:52:24', '2021-04-28 04:52:24'),
(10, 24, NULL, '/storage/product/detail-images/2/kjpGM1YMKbBtbPvs7lyq.jpg', '2021-04-28 04:52:24', '2021-04-28 04:52:24'),
(13, 25, NULL, '/storage/product/detail-images/2/67gxJIFfDk7Rv5exdt2o.jpg', '2021-05-18 16:02:42', '2021-05-18 16:02:42'),
(14, 25, NULL, '/storage/product/detail-images/2/3AE3KSfhwXxN3cBCaLlJ.jpg', '2021-05-18 16:02:42', '2021-05-18 16:02:42'),
(15, 27, NULL, '/storage/product/detail-images/2/NenKLp6dOjIeDDS0PoMB.jpg', '2021-05-18 16:11:20', '2021-05-18 16:11:20'),
(16, 27, NULL, '/storage/product/detail-images/2/SAb9GYqn0sJX0AinfGcr.jpg', '2021-05-18 16:11:20', '2021-05-18 16:11:20'),
(17, 28, NULL, '/storage/product/detail-images/2/neYLBtXAkitnq7MubFvj.jpg', '2021-05-18 16:12:40', '2021-05-18 16:12:40'),
(18, 28, NULL, '/storage/product/detail-images/2/Sq8cdJlTlCAGN2zQdkdB.jpg', '2021-05-18 16:12:40', '2021-05-18 16:12:40'),
(19, 29, NULL, '/storage/product/detail-images/2/MJtMIXABLqYAbkcN3YFd.jpg', '2021-05-18 16:42:17', '2021-05-18 16:42:17'),
(20, 29, NULL, '/storage/product/detail-images/2/UlzvLH52ZNxJ47tH1rNA.jpg', '2021-05-18 16:42:17', '2021-05-18 16:42:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kho`
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
-- Đang đổ dữ liệu cho bảng `kho`
--

INSERT INTO `kho` (`id`, `idcongty`, `idtaikhoan`, `tenkho`, `diachikho`, `taitrongkho`, `dientichkho`, `sonhanvienkho`, `ghichukho`, `created_at`, `updated_at`) VALUES
(1, 1, 28, 'Kho hàng 2', 'Tân Quới, Bình Tân, Vĩnh Long', 1000, 1000, 20, 'Lưu trữ hàng hóa có giá trị', '2021-04-25 04:18:18', '2021-04-25 04:26:32'),
(2, 2, 2, 'Kho hàng test', 'Cần Thơ2', 13333, 1232, 22, 'Kho hàng test', '2021-04-28 04:51:43', '2021-05-28 16:00:58'),
(3, 2, 2, 'sdasd', 'xC', 54, 42, 55, 'ac', '2021-04-28 08:31:18', '2021-04-28 08:31:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichsutintuc`
--

CREATE TABLE `lichsutintuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idtintuc` bigint(20) NOT NULL,
  `lydogo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoigian` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lichsutintuc`
--

INSERT INTO `lichsutintuc` (`id`, `idtintuc`, `lydogo`, `thoigian`, `created_at`, `updated_at`) VALUES
(1, 12, 'gfgdgfg', '2021-05-28 23:59:42', NULL, NULL),
(2, 11, '23232', '2021-05-29 00:00:42', NULL, NULL),
(3, 12, 'wewewew', '2021-05-29 09:10:32', NULL, NULL),
(4, 12, '123', '2021-05-30 09:15:52', NULL, NULL),
(5, 23, 'ok4', '2021-05-30 11:12:17', NULL, NULL),
(6, 23, '1212', '2021-05-30 11:13:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linhvuc`
--

CREATE TABLE `linhvuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenlinhvuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motalinhvuc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `linhvuc`
--

INSERT INTO `linhvuc` (`id`, `tenlinhvuc`, `motalinhvuc`, `created_at`, `updated_at`) VALUES
(1, 'Khoa học', 'Khoa học Cần Thơ', '2021-04-23 07:08:03', '2021-05-30 03:24:41'),
(2, 'Công nghệ', 'Công nghệ Cần Thơ', '2021-04-23 07:08:16', '2021-05-30 03:24:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
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
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `idcongty`, `tenloaisanpham`, `motaloaisanpham`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sửa cho bé', 'Sửa cho bé', '2021-04-25 04:44:41', '2021-05-30 14:17:55'),
(2, 2, 'Điện thoại thông minh', 'Điện thoại', '2021-04-28 04:51:09', '2021-04-28 04:51:09'),
(3, 2, 'afa', 'fsfa', '2021-04-28 08:27:31', '2021-04-28 08:27:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
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
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('huynguyen0938858944@gmail.com', '$2y$10$Fiho82SzVNUsyHOUjC1zcOgy59zS5iueuVZVWInmEI6SrtVampGLC', '2021-05-28 06:07:24'),
('trung@dev.com', '$2y$10$pSVsIW7X5lV9G3fWJ30/RuFGJwmdoNwGLo.EKcYk6RI8vhdYZvXlm', '2021-05-28 08:54:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `tenquyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motaquyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` smallint(6) NOT NULL DEFAULT 0 COMMENT '1-on, 0-off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quyen`
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
-- Cấu trúc bảng cho bảng `sanpham`
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
  `xuatxu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chungloaisanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dongiasanpham` int(11) NOT NULL,
  `khoiluongsanpham` int(11) NOT NULL,
  `donvitinhsanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mavachsanpham` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qrcode` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `idloaisanpham`, `idcongty`, `idtaikhoan`, `idkho`, `tensanpham`, `thongtinsanpham`, `hinhanhsanpham`, `xuatxu`, `chungloaisanpham`, `dongiasanpham`, `khoiluongsanpham`, `donvitinhsanpham`, `mavachsanpham`, `qrcode`, `created_at`, `updated_at`) VALUES
(22, 1, 1, 2, 1, '123123213123', '<p>213213121</p>', '/storage/product/images/1/RhgJ44Kjd8edpvMSikeE.jpg', '3313', '1232uuhuhuhuhu', 221321, 123, '21321', '<div style=\"font-size:0;position:relative;width:384px;height:50px;\">\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:40px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:68px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:116px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:132px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:152px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:160px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:176px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:184px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:188px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:192px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:196px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:220px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:228px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:236px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:240px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:248px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:256px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:264px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:272px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:276px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:284px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:288px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:292px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:304px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:308px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:316px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:320px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:324px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:336px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:340px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:344px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:352px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:360px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:364px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:372px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:380px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:384px;  font-size: 0.6vw;\">123456789</div></div>\n', NULL, '2021-04-27 09:50:20', '2021-05-30 14:36:49'),
(23, 1, 1, 2, 1, '3213', '<p>1233213131</p>', '/storage/product/images/1/etqDuVSJAI13auNzxl81.jpg', '312', '131', 123, 123, '12', '<div style=\"font-size:0;position:relative;width:160px;height:50px;\">\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:36px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:72px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:92px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:112px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:136px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:156px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:160px;  font-size: 0.6vw;\">23</div></div>\n', NULL, '2021-04-27 10:05:54', '2021-04-27 10:05:54'),
(24, 2, 2, 28, 2, 'sada32313132132213', '<p>đsd&aacute;d&aacute;dad&aacute;d&aacute;d&aacute;d&aacute;da<img src=\"/storage/photos/2/176574504_854070525321983_4520952125878837461_n.jpg\" alt=\"\" width=\"1365\" height=\"2048\" /></p>', '/storage/product/images/2/VV8r340sRjTUgSkdlIis.jpg', 'dsadá', 'ádsadadsa321312321321', 123, 12312, '1321', '<div style=\"font-size:0;position:relative;width:160px;height:50px;\">\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:36px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:68px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:76px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:100px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:112px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:136px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:140px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:156px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:160px;  font-size: 0.6vw;\">24</div></div>\n', NULL, '2021-04-28 04:52:24', '2021-05-18 03:19:26'),
(27, 3, 2, 2, 3, '1232131231213', '2321wqeqêwqeqe', '/storage/product/images/2/tIms845W7pQni8Erl3T8.jpg', '213123', '123123313123123', 123131, 12313, 'ewqewqewqe', '<div style=\"font-size:0;position:relative;width:448px;height:50px;\">\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:0px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:8px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:12px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:20px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:28px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:32px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:40px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:48px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:52px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:56px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:64px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:68px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:80px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:84px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:88px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:96px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:104px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:116px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:120px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:124px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:128px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:136px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:144px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:148px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:152px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:160px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:168px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:180px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:184px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:188px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:192px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:200px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:208px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:212px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:216px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:224px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:228px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:240px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:244px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:248px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:256px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:264px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:276px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:280px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:284px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:288px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:292px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:304px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:308px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:312px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:320px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:328px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:336px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:340px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:344px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:352px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:360px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:372px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:376px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:380px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:384px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:392px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:400px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:404px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:412px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:416px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:424px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:428px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:6px;height:38px;position:absolute;left:436px;top:0px;\">&nbsp;</div>\n<div style=\"background-color:black;width:2px;height:38px;position:absolute;left:444px;top:0px;\">&nbsp;</div>\n<div style=\"position:absolute;bottom:0; text-align:center; width:448px;  font-size: 0.6vw;\">12313123213</div></div>\n', NULL, '2021-05-18 16:11:20', '2021-05-18 16:11:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `so`
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
-- Đang đổ dữ liệu cho bảng `so`
--

INSERT INTO `so` (`id`, `tenso`, `diachiso`, `emailso`, `dienthoaiso`, `faxso`, `webso`, `created_at`, `updated_at`) VALUES
(1, 'Khoa học và Công nghệ', 'Cần Thơ', 'skhvcnct@etc.vn', NULL, NULL, 'http://www.aaa.etc.vn', '2021-04-23 07:06:38', '2021-05-30 13:20:33'),
(2, 'Công Thương', 'Cần Thơ', 'ctct@etc.vn', '987654321', '987654321', 'http://www.ctct.etc.vn', '2021-04-23 07:07:17', '2021-05-30 03:21:28'),
(5, 'Sở địa chính', 'Cần Thơ', 'diachinh@gmail.com', '0987654321', '0987654321', 'https://diachinh.com', '2021-05-04 14:40:02', '2021-05-30 03:21:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan_vaitro`
--

CREATE TABLE `taikhoan_vaitro` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idtaikhoan` bigint(20) NOT NULL,
  `idvaitro` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan_vaitro`
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
(31, 38, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtin`
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
-- Đang đổ dữ liệu cho bảng `thongtin`
--

INSERT INTO `thongtin` (`id`, `idtaikhoan`, `hothanhvien`, `tenthanhvien`, `gioitinhthanhvien`, `hinhanhthanhvien`, `namsinh`, `diachi`, `dienthoai`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nguyễn', 'Huy', 1, '/storage/profile/1/m5nElWaHjYC5YGmDzr5u.jpg', '1999-12-07', 'Vĩnh Long', '0938858944', '2021-04-23 07:00:25', '2021-04-27 11:56:12'),
(2, 2, 'Nguyễn', 'Huy', 1, '/storage/profile/2/RpiixNGJM4pwTrfd1jRg.jpg', '1999-12-07', 'kkj', '4545621315', '2021-04-24 21:00:06', '2021-05-30 13:27:05'),
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
-- Cấu trúc bảng cho bảng `thongtingiaidoan`
--

CREATE TABLE `thongtingiaidoan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idgiaidoan` bigint(20) NOT NULL,
  `motacongviec` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tencongviec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoigianbatdau` date NOT NULL,
  `thoigiandukien` int(11) NOT NULL,
  `thoigianhoanthanh` date NOT NULL,
  `trehan` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtingiaidoan`
--

INSERT INTO `thongtingiaidoan` (`id`, `idgiaidoan`, `motacongviec`, `tencongviec`, `thoigianbatdau`, `thoigiandukien`, `thoigianhoanthanh`, `trehan`, `created_at`, `updated_at`) VALUES
(4, 1, '<p>;ijopijp</p>', 'ihlhklgk', '2021-05-18', 45, '2021-05-28', 4, '2021-05-19 15:11:56', '2021-05-19 15:11:56'),
(5, 1, '<p>8908989</p>', 'ipipip', '2021-05-18', 9, '2021-05-20', 9, '2021-05-19 16:09:29', '2021-05-19 16:09:29'),
(6, 1, '<p>0890</p>', 'po\'op\'o', '2021-05-18', 9, '2021-05-21', 90, '2021-05-19 16:09:29', '2021-05-19 16:09:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idchuyenmuc` bigint(20) NOT NULL,
  `idcongty` bigint(20) NOT NULL,
  `idtaikhoan` bigint(20) NOT NULL,
  `ngaydangtintuc` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tieudetintuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtattintuc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidungtintuc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanhtintuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaitintuc` smallint(6) NOT NULL DEFAULT 0 COMMENT '1-nổi bật, 0-không nổi bật',
  `duyettintuc` smallint(6) NOT NULL DEFAULT 0 COMMENT '1-đã duyệt, 0-chưa duyệt',
  `xuatbantintuc` smallint(6) NOT NULL DEFAULT 0 COMMENT '1-duyệt xuất bản, 0-chưa được xuất bản',
  `lydogo` smallint(6) NOT NULL DEFAULT 0 COMMENT '1-có, 0-không',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id`, `idchuyenmuc`, `idcongty`, `idtaikhoan`, `ngaydangtintuc`, `tieudetintuc`, `tomtattintuc`, `noidungtintuc`, `hinhanhtintuc`, `loaitintuc`, `duyettintuc`, `xuatbantintuc`, `lydogo`, `created_at`, `updated_at`) VALUES
(11, 1, 1, 2, '2021-05-30 04:32:50', 'qeqưewq', 'qưeqưewqe', '<p>132132131313</p>', '/storage/news/image/1/FkgfZT4akohOy0uj0E2q.jpg', 1, 1, 1, 1, NULL, '2021-05-30 02:19:15'),
(12, 1, 2, 2, '2021-05-30 02:17:27', 'eqưeqưe', 'qưeqưeqe', '<p>qeqưeqưqưqeq</p>', '/storage/news/image/1/8xZ2LbOdgUcxtpzn4XnH.jpg', 1, 1, 1, 1, NULL, '2021-05-30 02:17:27'),
(23, 1, 2, 2, '2021-05-30 04:13:39', '151515', '<p>21231545648</p>', '<p>32123132154654</p><p><br></p>', '/storage/news/image/2/w360YlZqWOXaxx5ShH6Z.jpg', 0, 0, 0, 1, NULL, '2021-05-30 04:13:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idcongty` bigint(20) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loaitaikhoan` smallint(6) NOT NULL DEFAULT 0 COMMENT '1-admin, 0-normal, 2-administrator',
  `trangthai` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `idcongty`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `loaitaikhoan`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin@dev.com', '2021-05-28 14:57:46', '$2y$10$vFxTKDYsc5xa6LW1UxdTZeeF5Sbk2dzL8kkh/1TUERQnp1nawEULu', NULL, NULL, NULL, 2, 0, NULL, '2021-05-26 16:21:16'),
(2, 2, 'admin2@dev.com', '2021-05-28 14:57:46', '$2y$10$vFxTKDYsc5xa6LW1UxdTZeeF5Sbk2dzL8kkh/1TUERQnp1nawEULu', NULL, NULL, 'lnYEoFVUtj3A0mR7b2zZbElHf52Xf0A9sf9yB4tuTywXN9i2lp6naefEIT0J', 1, 0, NULL, '2021-05-27 15:19:35'),
(28, 2, 'admin3@dev.com', '2021-05-28 14:57:46', '$2y$10$vFxTKDYsc5xa6LW1UxdTZeeF5Sbk2dzL8kkh/1TUERQnp1nawEULu', NULL, NULL, NULL, 1, 0, '2021-04-28 07:20:59', '2021-05-04 14:27:22'),
(36, NULL, 'chau@gmail.com', '2021-05-28 14:57:46', '$2y$10$dwkz7Fr6NzxHwA7n9XUnwOqdDGjIMgNm.mjlrwko9yJO0PfH.cGF2', NULL, NULL, NULL, 1, 0, '2021-05-18 11:01:26', '2021-05-18 11:02:31'),
(37, NULL, 'trung@dev.com', '2021-05-28 14:57:46', '$2y$10$JoBQ0bj7qN6YvW/4xNoM.eMZO.hOinupFaXyJwlZ.O2Q6S5SN1VU.', NULL, NULL, NULL, 1, 0, '2021-05-18 11:06:36', '2021-05-18 11:08:46'),
(47, NULL, 'klthuynguyen1998@gmail.com', '2021-05-28 14:57:46', '$2y$10$yBhLxLXqcvLvGKvpn4eDfOeHBQg45rTZSdf8wWgbzGTKSfPWvTZ3m', NULL, NULL, 'gBmDZqvfdKXRcsXDPTcgfiIkICj3RBuBqeQZ9MbuNcDAM5a8eMOK2LjWP5hz', 0, 0, '2021-05-28 14:53:09', '2021-05-28 15:22:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vaitro`
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
-- Đang đổ dữ liệu cho bảng `vaitro`
--

INSERT INTO `vaitro` (`id`, `idcongty`, `tenvaitro`, `motavaitro`, `loaivaitro`, `created_at`, `updated_at`) VALUES
(1, NULL, 'System Administrator', 'Quản trị hệ thống', 1, NULL, '2021-04-30 02:01:21'),
(2, NULL, 'Company Administrator', 'Quản trị công ty', 2, NULL, '2021-04-30 02:01:49'),
(12, 2, 'Test', 'Thử nghiệm', NULL, '2021-04-29 20:39:15', '2021-04-29 20:39:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vaitro_quyen`
--

CREATE TABLE `vaitro_quyen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idvaitro` bigint(20) NOT NULL,
  `idquyen` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vaitro_quyen`
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
(129, 1, 82, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idsanpham` bigint(20) DEFAULT NULL,
  `idtintuc` bigint(20) DEFAULT NULL,
  `iddanhgia` bigint(20) DEFAULT NULL,
  `dulieuvideo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `idsanpham`, `idtintuc`, `iddanhgia`, `dulieuvideo`, `created_at`, `updated_at`) VALUES
(11, NULL, 11, NULL, '/storage/news/video/1/53mSLglw91JHrxaiQm3x.mp4', '2021-04-27 07:40:54', '2021-04-27 07:40:54'),
(13, NULL, 12, NULL, '/storage/news/video/1/r3WeC19RFTOqYSMZfykW.mp4', '2021-04-27 07:46:17', '2021-04-27 07:46:17'),
(14, NULL, 13, NULL, '/storage/news/video/28/Ssuv9CdihFokmvVRic0R.mp4', '2021-04-29 22:02:31', '2021-04-29 22:02:31'),
(15, NULL, 13, NULL, '/storage/news/video/28/nS8kpDYlK90YkG0RoDlC.mp4', '2021-04-29 22:02:31', '2021-04-29 22:02:31'),
(16, NULL, 13, NULL, '/video/BMW LOGO [Animate this static!].mp4', NULL, NULL),
(17, NULL, 14, NULL, '/storage/news/video/2/vkLiC43x4o2PB2YFr2hh.mp4', '2021-04-30 02:11:22', '2021-04-30 02:11:22'),
(18, NULL, 14, NULL, '/storage/news/video/2/hhcvsY4IUJoFGBMxFpsV.mp4', '2021-04-30 02:11:22', '2021-04-30 02:11:22'),
(19, NULL, 15, NULL, '/storage/news/video/2/X3e4av4hDLcefmuyMbp9.mp4', '2021-04-30 09:15:41', '2021-04-30 09:15:41'),
(20, NULL, 15, NULL, '/storage/news/video/2/bVLdn2uJJMNpmjVC6E8i.mp4', '2021-04-30 09:15:41', '2021-04-30 09:15:41'),
(21, NULL, 18, NULL, '/video/BMW LOGO [Animate this static!].mp4', NULL, NULL),
(22, NULL, 18, NULL, '/video/BMW Logo Intro.mp4', NULL, NULL),
(23, NULL, 12, NULL, '/video/BMW LOGO [Animate this static!].mp4', NULL, NULL),
(24, NULL, 22, NULL, '/storage/news/video/2/VC6l6UDaR1Wa0fJjFwtS.mp4', '2021-05-30 04:07:24', '2021-05-30 04:07:24'),
(25, NULL, 22, NULL, '/storage/news/video/2/ysyOdxHq51MiPbuauqMp.mp4', '2021-05-30 04:07:24', '2021-05-30 04:07:24'),
(26, NULL, 23, NULL, '/storage/news/video/2/Q2fC5Cpmqk2AsUKrbY7I.mp4', '2021-05-30 04:10:09', '2021-05-30 04:10:09'),
(27, NULL, 23, NULL, '/storage/news/video/2/OH6jGanmD00cQUGxyk40.mp4', '2021-05-30 04:10:09', '2021-05-30 04:10:09');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chuyenmuc`
--
ALTER TABLE `chuyenmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `congty`
--
ALTER TABLE `congty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subdomain` (`subdomain`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `giaidoan`
--
ALTER TABLE `giaidoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kho`
--
ALTER TABLE `kho`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lichsutintuc`
--
ALTER TABLE `lichsutintuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `linhvuc`
--
ALTER TABLE `linhvuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenquyen` (`tenquyen`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `so`
--
ALTER TABLE `so`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan_vaitro`
--
ALTER TABLE `taikhoan_vaitro`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thongtin`
--
ALTER TABLE `thongtin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thongtingiaidoan`
--
ALTER TABLE `thongtingiaidoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vaitro`
--
ALTER TABLE `vaitro`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vaitro_quyen`
--
ALTER TABLE `vaitro_quyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chuyenmuc`
--
ALTER TABLE `chuyenmuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `congty`
--
ALTER TABLE `congty`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giaidoan`
--
ALTER TABLE `giaidoan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `kho`
--
ALTER TABLE `kho`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `lichsutintuc`
--
ALTER TABLE `lichsutintuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `linhvuc`
--
ALTER TABLE `linhvuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT cho bảng `quyen`
--
ALTER TABLE `quyen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `so`
--
ALTER TABLE `so`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `taikhoan_vaitro`
--
ALTER TABLE `taikhoan_vaitro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `thongtin`
--
ALTER TABLE `thongtin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `thongtingiaidoan`
--
ALTER TABLE `thongtingiaidoan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `vaitro`
--
ALTER TABLE `vaitro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `vaitro_quyen`
--
ALTER TABLE `vaitro_quyen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
