-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 13, 2020 lúc 05:13 AM
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
  `display_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layoutView` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layoutRegist` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NgayMoThuongSet` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GioMoThuongSet` time(6) DEFAULT NULL,
  `Roll_Info_HTML` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `del_flg` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by_user` int(11) DEFAULT NULL,
  `updated_by_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_province`
--

INSERT INTO `tbl_province` (`id`, `parent_id`, `type`, `region`, `provinceCode`, `provinceName`, `display_name`, `meta_title`, `layoutView`, `layoutRegist`, `api_url`, `NgayMoThuongSet`, `GioMoThuongSet`, `Roll_Info_HTML`, `del_flg`, `created_by_user`, `updated_by_user`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 1, 'MB', 'Xổ số miền bắc', 'Miền Bắc', 'ket-qua-xo-so-mien-bac', NULL, NULL, 'http://api.xoso.me/app/json-kq-mienbac?name=XSMB&v=2&ngay_quay=', NULL, '18:15:00.000000', '&lt;div&gt;             &lt;div&gt;                 &lt;div&gt;                     &lt;p dir=\"ltr\"&gt;&lt;strong&gt;&lt;a href=\"https://xoso.me/xsmb-sxmb-xstd-xshn-kqxsmb-ket-qua-xo-so-mien-bac.html\" title=\"Xổ số miền bắc\"&gt;&lt;span style=\"color:#FF0000\"&gt;Xổ số miền bắc&lt;/span&gt;&lt;/a&gt;&lt;/strong&gt;&amp;nbsp;(hay                         xổ số đài Bắc theo cách gọi ở miền Nam) mở thưởng vào khoảng 18h15\' hàng ngày từ thứ                         2 đến chủ nhật tại Trường quay 53E Hàng Bài, quận Hoàn Kiếm, Thủ Đô Hà Nội.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;Trang&amp;nbsp;cung cấp&amp;nbsp;thông tin&amp;nbsp;trong 3 ngày liên tiếp từ tuần rồi,                         tuần trước đến hôm nay cho tất cả các giải mở thưởng truyền thống và lô tô đầu đuôi                         2 số cuối.&lt;/p&gt;                     &lt;h2 dir=\"ltr\"&gt;&lt;strong&gt;1. Lịch quay kết quả vé số kiến thiết miền bắc&amp;nbsp;được tiến hành                             mở thưởng&amp;nbsp;trong tuần&amp;nbsp;như sau:&lt;/strong&gt;&lt;/h2&gt;                     &lt;p dir=\"ltr\"&gt;- &lt;strong&gt;&lt;a href=\"https://xoso.me/xo-so-ha-noi.html\" title=\"Xổ số Hà Nội\" type=\"Xổ số Hà Nội\"&gt;&lt;span style=\"color:#FF0000\"&gt;Xổ số&amp;nbsp;Hà Nội&lt;/span&gt;&lt;/a&gt;&lt;/strong&gt;                         được mở thưởng vào hai ngày trong tuần là thứ 2 và thứ 5.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;- Quảng Ninh mở thưởng vào thứ 3&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;- Bắc Ninh mở thưởng vào thứ 4&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;- Hải Phòng mở thưởng vào thứ 6&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;- Nam Định mở thưởng vào thứ 7.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;- Thái Bình mở thưởng. vào chủ nhật&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;Hiện nay, mỗi vé dự thưởng có giá trị là 10.000 vnđ, được so sánh với 8                         giải trong kết quả&amp;nbsp;từ giải ĐB đến giải Bảy bao gồm 27 dãy số, tương đương với                         27 lần mở thưởng.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;⇒&amp;nbsp;Ngoài ra bạn có thể xem các chuyên gia dự đoán&amp;nbsp;miễn phí                         tại:&amp;nbsp;&lt;strong&gt;&lt;a href=\"https://xoso.me/du-doan-ket-qua-xo-so-mien-bac-xsmb-c228.html\" title=\"Soi cầu XSMB hôm nay\"&gt;&lt;span style=\"color:#FF0000\"&gt;Soi cầu XSMB hôm nay&lt;/span&gt;&lt;/a&gt;&lt;/strong&gt;                     &lt;/p&gt;                     &lt;h2 dir=\"ltr\"&gt;&lt;strong&gt;2. Cơ cấu giải thưởng kết quả vé&amp;nbsp;số&amp;nbsp;đài miền bắc ngày                             hôm nay với tổng 81.150 giải thưởng được chia như sau:&lt;/strong&gt;&lt;/h2&gt;                     &lt;p dir=\"ltr\"&gt;- Giải đặc biệt với 1 lần quay 5 chữ số: Giá trị giải thưởng (VNĐ):                         1.000.000.000 - Số lượng giải: 3 - Tổng giá trị giải thưởng (VNĐ):                         3.000.000.000.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;- Giải nhất bao gồm 5 chữ số với 1 lần quay: Giá trị giải thưởng (VNĐ):                         10.000.000 - Số lượng giải: 15 - Tổng giá trị giải thưởng (VNĐ): 150.000.000.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;- Giải nhì với 2 lần quay giải 5 chữ số: Giá trị giải thưởng (VNĐ):                         5.000.000 - Số lượng giải: 30 - Tổng giá trị giải thưởng (VNĐ): 150.000.000.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;- Giải ba bao gồm 5 chữ số với 6 lần quay: Giá trị giải thưởng (VNĐ):                         1.000.000 - Số lượng giải: 90 - Tổng giá trị giải thưởng (VNĐ): 90.000.000.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;- &amp;nbsp;Giải tư bao gồm 4 lần quay giải 4 chữ số: Giá trị giải thưởng                         (VNĐ): 400.000 - Số lượng giải: 600 - Tổng giá trị giải thưởng (VNĐ):                         240.000.000.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;- &amp;nbsp;Giải 5 bao gồm 4 chữ số với 6 lần quay: Giá trị giải thưởng (VNĐ):                         200.000 - Số lượng giải: 900 - Tổng giá trị giải thưởng (VNĐ): 180.000.000.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;- &amp;nbsp;Giải 6 với 3 lần quay giải 3 chữ số: Giá trị giải thưởng (VNĐ):                         100.000 - Số lượng giải: 4.500 - Tổng giá trị giải thưởng (VNĐ): 450.000.000.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;- &amp;nbsp;Giải bảy với 4 lần quay giải 2 chữ số: Giá trị giải thưởng (VNĐ):                         40.000 - Số lượng giải: 60.000 - Tổng giá trị giải thưởng (VNĐ): 2.400.000.000.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;- &amp;nbsp;Ngoài ra, ta còn có thêm giải phụ là những vé trùng với giải đặc                         biệt, nhưng không trùng kí hiệu của GĐB thì sẽ trúng giải thưởng trị giá 20.000.000                         vnđ - Số lượng giải: 12 - Tổng giá trị giải thưởng (VNĐ): 240.000.000.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;- Giải khuyến khích dành cho những vé số dự thưởng có 2 số cuối của hàng                         đơn vị và hàng chục trùng với 2 số cuối giải đặc biệt thì sẽ trúng giải trị giá                         40.000 vnđ - Số lượng giải: 15.000 - Tổng giá trị giải thưởng (VNĐ):                         600.000.000.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;Cuối cùng trường hợp vé của bạn có dãy số&amp;nbsp;trùng với nhiều kết quả                         trong bảng&amp;nbsp;thì người chơi sẽ được nhận cùng lúc tất cả các giải thưởng đó.&amp;nbsp;Khi                         trúng thưởng vé số miền Bắc, liên hệ nhận thưởng tại&lt;/p&gt;                     &lt;h2 dir=\"ltr\"&gt;Công ty xổ số kiến thiết miền Bắc&lt;/h2&gt;                     &lt;p&gt;Địa chỉ: 53E - Hàng Bài - Hoàn Kiếm - Hà Nội.&lt;/p&gt;                     &lt;p&gt;Điện thoại: 084.43.9433636 - Fax: 84.43.9438874 Hotline: 84.43.9439928,                         84.43.9433123&lt;/p&gt;                     &lt;h2 dir=\"ltr\"&gt;&lt;strong&gt;3. Hướng dẫn bốn cách dò/tra cứu kết quả xổ số miền Bắc&amp;nbsp;hàng                             ngày:&lt;/strong&gt;&lt;/h2&gt;                     &lt;p dir=\"ltr\"&gt;- Xem&amp;nbsp;trên kênh truyền hình VTC9 - Let\'s Việt và một số kênh truyền                         hình địa phương của các tỉnh mở thưởng vào lúc 18h15p.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;- Xem kết quả trên xoso.me, phát&amp;nbsp;vào 18h15p và có thể xem lại của bất                         cứ ngày nào trước đó. Khi so sánh bạn so 2 số cuối của vé số với bảng 2 chữ số ở bên                         dưới kết quả. Nếu trùng với 1 trong các số trong bảng đó thì vé của bạn có thể trúng                         từ giải 8 trở lên, khi đó bạn so tiếp các số còn lại trên vé với kết quả bên trên,&amp;nbsp;nếu                         không trùng thì vé của bạn không trúng thưởng&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;- Cuối cùng, bạn có thể tìm kiếm thông tin bằng cách đến đại lý hoặc tại                         các điểm bán vé xổ số đài Bắc.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;Hãy truy cập website&amp;nbsp;&lt;strong&gt;&lt;a href=\"https://xoso.me/\" title=\"Xổ số\"&gt;&lt;span style=\"color:#FF0000\"&gt;Xổ số&lt;/span&gt;&lt;/a&gt;&lt;/strong&gt; hàng ngày&amp;nbsp;để cập                         nhật kết quả cũng như kiểm tra lại vé số dự thưởng của bạn cho chuẩn nhất.&lt;/p&gt;                     &lt;p dir=\"ltr\"&gt;Chúc bạn may mắn!&lt;/p&gt;                 &lt;/div&gt;             &lt;/div&gt;         &lt;/div&gt;', '0', NULL, NULL, NULL, NULL),
(2, 1, 0, 1, 'HN', 'Xổ số Hà Nội', 'Hà Nội', 'ket-qua-xo-so-ha-noi', NULL, NULL, 'http://api.xoso.me/app/json-kq-mienbac?name=XSMB&v=2&ngay_quay=', '1,4', '18:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(3, 1, 0, 1, 'TB', 'Xổ số Thái Bình', 'Thái Bình', 'ket-qua-xo-so-thai-binh', NULL, NULL, 'http://api.xoso.me/app/json-kq-mienbac?name=XSMB&v=2&ngay_quay=', '0', '18:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(4, 1, 0, 1, 'ND', 'Xổ số Nam Định', 'Nam Định', 'ket-qua-xo-so-nam-dinh', NULL, NULL, 'http://api.xoso.me/app/json-kq-mienbac?name=XSMB&v=2&ngay_quay=', '6', '18:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(5, 1, 0, 1, 'BN', 'Xổ số Bắc Ninh', 'Bắc Ninh', 'ket-qua-xo-so-bac-ninh', NULL, NULL, 'http://api.xoso.me/app/json-kq-mienbac?name=XSMB&v=2&ngay_quay=', '3', '18:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(6, 1, 0, 1, 'HP', 'Xổ số Hải Phòng', 'Hải Phòng', 'ket-qua-xo-so-hai-phong', NULL, NULL, 'http://api.xoso.me/app/json-kq-mienbac?name=XSMB&v=2&ngay_quay=', '5', '18:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(7, 1, 0, 1, 'QN', 'Xổ số Quảng Ninh', 'Quảng Ninh', 'ket-qua-xo-so-quang-ninh', NULL, NULL, 'http://api.xoso.me/app/json-kq-mienbac?name=XSMB&v=2&ngay_quay=', '2', '18:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(9, 0, 0, 1, 'MN', 'Xổ số Miền Nam', 'Miền Nam', 'ket-qua-xo-so-mien-nam', NULL, NULL, NULL, NULL, '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(10, 9, 0, 1, 'HCM', 'Xổ số TP Hồ Chí Minh', 'TP Hồ Chí Minh', 'ket-qua-xo-so-tp-hcm', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_14', '1,6', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(11, 9, 0, 1, 'DT', 'Xổ số Đồng Tháp', 'Đồng Tháp', 'ket-qua-xo-so-dong-thap', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_12', '1', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(12, 9, 0, 1, 'CM', 'Xổ số Cà Mau', 'Cà Mau', 'ket-qua-xo-so-ca-mau', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_8', '1', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(13, 9, 0, 1, 'BT', 'Xổ số Bến Tre', 'Bến Tre', 'ket-qua-xo-so-ben-tre', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_4', '2', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(14, 9, 0, 1, 'VT', 'Xổ số Vũng Tàu', 'Vũng Tàu', 'ket-qua-xo-so-vung-tau', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_22', '2', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(15, 9, 0, 1, 'BL', 'Xổ số Bạc Liêu', 'Bạc Liêu', 'ket-qua-xo-so-bac-lieu', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_3', '2', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(16, 9, 0, 1, 'DN', 'Xổ số Đồng Nai', 'Đồng Nai', 'ket-qua-xo-so-dong-nai', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_11', '3', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(17, 9, 0, 1, 'CT', 'Xổ số Cần Thơ', 'Cần Thơ', 'ket-qua-xo-so-can-tho', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_9', '3', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(18, 9, 0, 1, 'ST', 'Xổ số Sóc Trăng', 'Sóc Trăng', 'ket-qua-xo-so-soc-trang', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_17', '3', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(19, 9, 0, 1, 'TN', 'Xổ số Tây Ninh', 'Tây Ninh', 'ket-qua-xo-so-tay-ninh', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_18', '4', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(20, 9, 0, 1, 'AG', 'Xổ số An Giang', 'An Giang', 'ket-qua-xo-so-an-giang', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_2', '4', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(21, 9, 0, 1, 'BTH', 'Xổ số Bình Thuận', 'Bình Thuận', 'ket-qua-xo-so-binh-thuan', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_7', '4', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(22, 9, 0, 1, 'VL', 'Xổ số Vĩnh Long', 'Vĩnh Long', 'ket-qua-xo-so-vinh-long', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_21', '5', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(23, 9, 0, 1, 'BD', 'Xổ số Bình Dương', 'Bình Dương', 'ket-qua-xo-so-binh-duong', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_5', '5', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(24, 9, 0, 1, 'TV', 'Xổ số Trà Vinh', 'Trà Vinh', 'ket-qua-xo-so-tra-vinh', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_20', '5', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(25, 9, 0, 1, 'LA', 'Xổ số Long An', 'Long An', 'ket-qua-xo-so-long-an', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_16', '6', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(26, 9, 0, 1, 'HG', 'Xổ số Hậu Giang', 'Hậu Giang', 'ket-qua-xo-so-hau-giang', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_13', '6', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(27, 9, 0, 1, 'BP', 'Xổ số Bình Phước', 'Bình Phước', 'ket-qua-xo-so-binh-phuoc', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_6', '6', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(28, 9, 0, 1, 'TG', 'Xổ số Tiền Giang', 'Tiền Giang', 'ket-qua-xo-so-tien-giang', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_19', '0', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(29, 9, 0, 1, 'KG', 'Xổ số Kiên Giang', 'Kiên Giang', 'ket-qua-xo-so-kien-giang', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_15', '0', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(30, 9, 0, 1, 'DL', 'Xổ số Đà Lạt', 'Đà Lạt', 'ket-qua-xo-so-da-lat', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_10', '0', '16:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(31, 0, 0, 1, 'MT', 'Xổ số Miền Trung', 'Miền Trung', 'ket-qua-xo-so-mien-trung', NULL, NULL, NULL, '', '17:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(32, 31, 0, 1, 'TTH', 'Xổ số Thừa Thiên Huế', 'Thừa Thiên Huế', 'ket-qua-xo-so-thua-thien-hue', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_36', '1', '17:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(33, 31, 0, 1, 'PY', 'Xổ số Phú Yên', 'Phú Yên', 'ket-qua-xo-so-phu-yen', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_31', '1', '17:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(34, 31, 0, 1, 'QN', 'Xổ số Quảng Nam', 'Quảng Nam', 'ket-qua-xo-so-quang-nam', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_34', '2', '17:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(35, 31, 0, 1, 'DLK', 'Xổ số Đắc Lắc', 'Đắc Lắc', 'ket-qua-xo-so-dac-lac', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_25', '2', '17:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(36, 31, 0, 1, 'DNG', 'Xổ số Đà Nẵng', 'Đà Nẵng', 'ket-qua-xo-so-da-nang', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_24', '3,6', '17:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(37, 31, 0, 1, 'KH', 'Xổ số Khánh Hòa', 'Khánh Hòa', 'ket-qua-xo-so-khanh-hoa', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_28', '0,3', '17:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(38, 31, 0, 1, 'BDI', 'Xổ số Bình Định', 'Bình Định', 'ket-qua-xo-so-binh-dinh', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_23', '4', '17:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(39, 31, 0, 1, 'QB', 'Xổ số Quảng Bình', 'Quảng Bình', 'ket-qua-xo-so-quang-binh', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_32', '4', '17:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(40, 31, 0, 1, 'QT', 'Xổ số Quảng Trị', 'Quảng Trị', 'ket-qua-xo-so-quang-tri', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_35', '4', '17:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(41, 31, 0, 1, 'GL', 'Xổ số Gia Lai', 'Gia Lai', 'ket-qua-xo-so-qia-lai', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_27', '5', '17:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(42, 31, 0, 1, 'NT', 'Xổ số Ninh Thuận', 'Ninh Thuận', 'ket-qua-xo-so-ninh-thuan', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_30', '5', '17:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(43, 31, 0, 1, 'QNG', 'Xổ số Quảng Ngãi', 'Quảng Ngãi', 'ket-qua-xo-so-quang-ngai', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_33', '6', '17:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(44, 31, 0, 1, 'DNO', 'Xổ số Đắc Nông', 'Đắc Nông', 'ket-qua-xo-so-dac-nong', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_26', '6', '17:15:00.000000', '', '0', NULL, NULL, NULL, NULL),
(45, 31, 0, 1, 'KT', 'Xổ số Kon Tum', 'Kon Tum', 'ket-qua-xo-so-kon-tum', NULL, NULL, 'http://s1.ketquaveso.com/ttkq/json_29', '0', '17:15:00.000000', '', '0', NULL, NULL, NULL, NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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
