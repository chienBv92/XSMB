-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 10, 2020 lúc 08:43 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xsmb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_07_040319_create_province', 1),
(5, '2020_01_07_040807_create_xoso', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_province`
--

CREATE TABLE `tbl_province` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL,
  `region` int(11) NOT NULL DEFAULT 1,
  `provinceCode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinceName` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layoutView` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layoutRegist` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NgayMoThuongSet` decimal(8,2) DEFAULT NULL,
  `GioMoThuongSet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del_flg` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by_user` int(11) DEFAULT NULL,
  `updated_by_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_province`
--

INSERT INTO `tbl_province` (`id`, `parent_id`, `type`, `region`, `provinceCode`, `provinceName`, `meta_title`, `layoutView`, `layoutRegist`, `NgayMoThuongSet`, `GioMoThuongSet`, `del_flg`, `created_by_user`, `updated_by_user`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 1, 'MB', 'Xổ số miền bắc', 'xsmb-sxmb-xstd-xshn-kqxsmb-ket-qua-xo-so-mien-bac', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL),
(2, 1, 0, 1, 'HN', 'Xổ số Hà Nội', 'xo-so-ha-noi', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL),
(3, 1, 0, 1, 'TB', 'Xổ số Thái Bình', 'xstb-sxtb-ket-qua-xo-so-thai-binh', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL),
(4, 1, 0, 1, 'ND', 'Xổ số Nam Định', 'xsnd-sxnd-ket-qua-xo-so-nam-dinh', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL),
(5, 1, 0, 1, 'BN', 'Xổ số Bắc Ninh', 'xsbn-sxbn-ket-qua-xo-so-bac-ninh', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL),
(6, 1, 0, 1, 'HP', 'Xổ số Hải Phòng', 'xshp-sxhp-ket-qua-xo-so-hai-phong', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL),
(7, 1, 0, 1, 'QN', 'Xổ số Quảng Ninh', 'xsqn-sxqn-ket-qua-xo-so-quang-ninh', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_xoso`
--

CREATE TABLE `tbl_xoso` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province_id` bigint(20) NOT NULL DEFAULT 0,
  `NgayMoThuongValue` int(11) NOT NULL DEFAULT 0,
  `NgayMoThuong` datetime DEFAULT NULL,
  `ki_hieu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Giai` int(11) DEFAULT NULL,
  `Number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_xoso`
--

INSERT INTO `tbl_xoso` (`id`, `province_id`, `NgayMoThuongValue`, `NgayMoThuong`, `ki_hieu`, `Giai`, `Number`, `loto`, `created_at`, `updated_at`) VALUES
(1, 1, 1578355200, '2020-01-07 00:00:00', '2AG - 1AG - 7AG', 0, '14954', '\"00\", \"10\", \"11\", \"13\"\r\n ', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Chỉ mục cho bảng `tbl_province`
--
ALTER TABLE `tbl_province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_xoso`
--
ALTER TABLE `tbl_xoso`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_province`
--
ALTER TABLE `tbl_province`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_xoso`
--
ALTER TABLE `tbl_xoso`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
