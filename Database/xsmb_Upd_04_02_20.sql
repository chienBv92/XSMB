-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 04, 2020 lúc 03:38 AM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.3.12

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
  `api_url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NgayMoThuongSet` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GioMoThuongSet` time(6) DEFAULT NULL,
  `del_flg` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by_user` int(11) DEFAULT NULL,
  `updated_by_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_province`
--

INSERT INTO `tbl_province` (`id`, `parent_id`, `type`, `region`, `provinceCode`, `provinceName`, `meta_title`, `layoutView`, `layoutRegist`, `api_url`, `NgayMoThuongSet`, `GioMoThuongSet`, `del_flg`, `created_by_user`, `updated_by_user`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 1, 'MB', 'Xổ số miền bắc', 'ket-qua-xo-so-mien-bac', NULL, NULL, 'http://api.xoso.me/app/json-kq-mienbac?name=XSMB&v=2&ngay_quay=', NULL, '18:15:00.000000', '0', NULL, NULL, NULL, NULL),
(2, 1, 0, 1, 'HN', 'Xổ số Hà Nội', 'ket-qua-xo-so-ha-noi', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL),
(3, 1, 0, 1, 'TB', 'Xổ số Thái Bình', 'ket-qua-xo-so-thai-binh', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL),
(4, 1, 0, 1, 'ND', 'Xổ số Nam Định', 'ket-qua-xo-so-nam-dinh', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL),
(5, 1, 0, 1, 'BN', 'Xổ số Bắc Ninh', 'ket-qua-xo-so-bac-ninh', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL),
(6, 1, 0, 1, 'HP', 'Xổ số Hải Phòng', 'ket-qua-xo-so-hai-phong', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL),
(7, 1, 0, 1, 'QN', 'Xổ số Quảng Ninh', 'ket-qua-xo-so-quang-ninh', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL),
(9, 0, 0, 1, 'MN', 'Xổ số Miền Nam', 'ket-qua-xo-so-mien-nam', NULL, NULL, NULL, NULL, '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(10, 9, 0, 1, 'HCM', 'Xổ số TP Hồ Chí Minh', 'ket-qua-xo-so-tp-hcm', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_14', '2,7', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(11, 9, 0, 1, 'DT', 'Xổ số Đồng Tháp', 'ket-qua-xo-so-dong-thap', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_12', '2', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(12, 9, 0, 1, 'CM', 'Xổ số Cà Mau', 'ket-qua-xo-so-ca-mau', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_8', '2', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(13, 9, 0, 1, 'BT', 'Xổ số Bến Tre', 'ket-qua-xo-so-ben-tre', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_4', '3', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(14, 9, 0, 1, 'VT', 'Xổ số Vũng Tàu', 'ket-qua-xo-so-vung-tau', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_22', '3', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(15, 9, 0, 1, 'BL', 'Xổ số Bạc Liêu', 'ket-qua-xo-so-bac-lieu', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_3', '3', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(16, 9, 0, 1, 'DN', 'Xổ số Đồng Nai', 'ket-qua-xo-so-dong-nai', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_11', '4', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(17, 9, 0, 1, 'CT', 'Xổ số Cần Thơ', 'ket-qua-xo-so-can-tho', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_9', '4', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(18, 9, 0, 1, 'ST', 'Xổ số Sóc Trăng', 'ket-qua-xo-so-soc-trang', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_17', '4', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(19, 9, 0, 1, 'TN', 'Xổ số Tây Ninh', 'ket-qua-xo-so-tay-ninh', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_18', '5', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(20, 9, 0, 1, 'AG', 'Xổ số An Giang', 'ket-qua-xo-so-an-giang', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_2', '5', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(21, 9, 0, 1, 'BT', 'Xổ số Bình Thuận', 'ket-qua-xo-so-binh-thuan', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_7', '5', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(22, 9, 0, 1, 'VL', 'Xổ số Vĩnh Long', 'ket-qua-xo-so-vinh-long', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_21', '6', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(23, 9, 0, 1, 'BD', 'Xổ số Bình Dương', 'ket-qua-xo-so-binh-duong', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_5', '6', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(24, 9, 0, 1, 'TV', 'Xổ số Trà Vinh', 'ket-qua-xo-so-tra-vinh', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_20', '6', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(25, 9, 0, 1, 'LA', 'Xổ số Long An', 'ket-qua-xo-so-long-an', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_16', '7', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(26, 9, 0, 1, 'HG', 'Xổ số Hậu Giang', 'ket-qua-xo-so-hau-giang', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_13', '7', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(27, 9, 0, 1, 'BP', 'Xổ số Bình Phước', 'ket-qua-xo-so-binh-phuoc', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_6', '7', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(28, 9, 0, 1, 'TG', 'Xổ số Tiền Giang', 'ket-qua-xo-so-tien-giang', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_19', '8', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(29, 9, 0, 1, 'KG', 'Xổ số Kiên Giang', 'ket-qua-xo-so-kien-giang', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_15', '8', '16:15:00.000000', '0', NULL, NULL, NULL, NULL),
(30, 9, 0, 1, 'DL', 'Xổ số Đà Lạt', 'ket-qua-xo-so-da-lat', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_10', '8', '16:15:00.000000', '0', NULL, NULL, NULL, NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
