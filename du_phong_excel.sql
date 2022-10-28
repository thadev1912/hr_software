-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2022 lúc 12:25 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhansu_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baohiem`
--

CREATE TABLE `baohiem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ma_bhxh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_nv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loai_bhxh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaycap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayhethan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noicap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baohiem`
--

INSERT INTO `baohiem` (`id`, `ma_bhxh`, `ma_nv`, `loai_bhxh`, `ngaycap`, `ngayhethan`, `noicap`, `created_at`, `updated_at`) VALUES
(1, 'BHMFVN01', 'MFNV01', 'BHXH Tự Nguyện', '20/12/2021', '20/12/2022', 'Cần Thơ', NULL, NULL),
(2, 'BHMFVN02', 'MFNV02', 'BHXH Tự Nguyện', '15/02/2021', '15/02/2022', 'Cầu Kè-Trà Vinh', NULL, NULL),
(4, 'BHMFNV03', 'MFNV03', 'BHXH Tự Nguyện', '18/08/2020', '18/09/2021', 'Cai Lậy-Bến Tre', NULL, NULL),
(5, 'BHMFNV04', 'MFNV04', 'BHXH Tự Nguyện\r\n', '08/08/2020', '18/10/2021', 'Cai Lậy-Bến Tre', NULL, NULL),
(6, 'BHMFNV05', 'MFNV05', 'BHXH Tự Nguyện', '05/08/2020', '10/02/2021', 'Cai Lậy-Bến Tre', NULL, NULL),
(7, 'BHMFNV06', 'MFNV06', 'BHXH Tự Nguyện', '05/08/2020', '10/02/2021', 'Cai Lậy-Bến Tre', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ma_cv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_cv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chucvu`
--

INSERT INTO `chucvu` (`id`, `ma_cv`, `ten_cv`, `created_at`, `updated_at`) VALUES
(1, 'GĐ', 'Giám Đốc\r\n', NULL, NULL),
(2, 'NV', 'Nhân Viên', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `excel`
--

CREATE TABLE `excel` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `age` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `excel`
--

INSERT INTO `excel` (`name`, `email`, `age`, `created_at`, `updated_at`) VALUES
('kimluyen', 'kimluyen@gmail.com', '21', '2022-10-20 02:38:21', '2022-10-20 02:38:21'),
('vuhai', 'vuhai@gmail.com', '23', '2022-10-20 02:38:21', '2022-10-20 02:38:21'),
('myhanh', 'myhanh@gmail.com', '30', '2022-10-20 02:38:21', '2022-10-20 02:38:21'),
('HỌ VÀ TÊN', 'MAIL', 'TUỔI', '2022-10-20 02:43:28', '2022-10-20 02:43:28'),
('kimluyen', 'kimluyen@gmail.com', '21', '2022-10-20 02:43:28', '2022-10-20 02:43:28'),
('vuhai', 'vuhai@gmail.com', '23', '2022-10-20 02:43:28', '2022-10-20 02:43:28'),
('myhanh', 'myhanh@gmail.com', '30', '2022-10-20 02:43:28', '2022-10-20 02:43:28'),
('manhtoan', 'manhtoan@gmail.com', '23', '2022-10-20 02:43:28', '2022-10-20 02:43:28'),
('HỌ VÀ TÊN', 'MAIL', 'TUỔI', '2022-10-20 02:46:22', '2022-10-20 02:46:22'),
('kimluyen', 'kimluyen@gmail.com', '21', '2022-10-20 02:46:22', '2022-10-20 02:46:22'),
('vuhai', 'vuhai@gmail.com', '23', '2022-10-20 02:46:22', '2022-10-20 02:46:22'),
('myhanh', 'myhanh@gmail.com', '30', '2022-10-20 02:46:22', '2022-10-20 02:46:22'),
('manhtoan', 'manhtoan@gmail.com', '23', '2022-10-20 02:46:22', '2022-10-20 02:46:22'),
('ngoctrinh', 'ngoctrinh@gmail.com', '40', '2022-10-20 02:46:22', '2022-10-20 02:46:22'),
('HỌ VÀ TÊN', 'MAIL', 'TUỔI', '2022-10-20 02:47:11', '2022-10-20 02:47:11'),
('kimluyen', 'kimluyen@gmail.com', '21', '2022-10-20 02:47:11', '2022-10-20 02:47:11'),
('vuhai', 'vuhai@gmail.com', '23', '2022-10-20 02:47:11', '2022-10-20 02:47:11'),
('myhanh', 'myhanh@gmail.com', '30', '2022-10-20 02:47:11', '2022-10-20 02:47:11'),
('manhtoan', 'manhtoan@gmail.com', '23', '2022-10-20 02:47:11', '2022-10-20 02:47:11'),
('ngoctrinh', 'ngoctrinh@gmail.com', '40', '2022-10-20 02:47:11', '2022-10-20 02:47:11'),
('HỌ VÀ TÊN', 'MAIL', 'TUỔI', '2022-10-20 02:53:02', '2022-10-20 02:53:02'),
('kimluyen', 'kimluyen@gmail.com', '21', '2022-10-20 02:53:02', '2022-10-20 02:53:02'),
('vuhai', 'vuhai@gmail.com', '23', '2022-10-20 02:53:02', '2022-10-20 02:53:02'),
('myhanh', 'myhanh@gmail.com', '30', '2022-10-20 02:53:02', '2022-10-20 02:53:02'),
('manhtoan', 'manhtoan@gmail.com', '23', '2022-10-20 02:53:02', '2022-10-20 02:53:02'),
('ngoctrinh', 'ngoctrinh@gmail.com', '40', '2022-10-20 02:53:02', '2022-10-20 02:53:02'),
('kimluyen', 'kimluyen@gmail.com', '21', '2022-10-20 02:56:59', '2022-10-20 02:56:59'),
('vuhai', 'vuhai@gmail.com', '23', '2022-10-20 02:56:59', '2022-10-20 02:56:59'),
('myhanh', 'myhanh@gmail.com', '30', '2022-10-20 02:56:59', '2022-10-20 02:56:59'),
('manhtoan', 'manhtoan@gmail.com', '23', '2022-10-20 02:56:59', '2022-10-20 02:56:59'),
('ngoctrinh', 'ngoctrinh@gmail.com', '40', '2022-10-20 02:56:59', '2022-10-20 02:56:59'),
('HỌ VÀ TÊN', 'MAIL', 'TUỔI', '2022-10-20 03:09:41', '2022-10-20 03:09:41'),
('kimluyen', 'kimluyen@gmail.com', '21', '2022-10-20 03:09:41', '2022-10-20 03:09:41'),
('vuhai', 'vuhai@gmail.com', '23', '2022-10-20 03:09:41', '2022-10-20 03:09:41'),
('myhanh', 'myhanh@gmail.com', '30', '2022-10-20 03:09:41', '2022-10-20 03:09:41'),
('manhtoan', 'manhtoan@gmail.com', '23', '2022-10-20 03:09:41', '2022-10-20 03:09:41'),
('ngoctrinh', 'ngoctrinh@gmail.com', '40', '2022-10-20 03:09:41', '2022-10-20 03:09:41'),
('HỌ VÀ TÊN', 'MAIL', 'TUỔI', '2022-10-20 03:18:17', '2022-10-20 03:18:17'),
('kimluyen', 'kimluyen@gmail.com', '21', '2022-10-20 03:18:17', '2022-10-20 03:18:17'),
('vuhai', 'vuhai@gmail.com', '23', '2022-10-20 03:18:17', '2022-10-20 03:18:17'),
('myhanh', 'myhanh@gmail.com', '30', '2022-10-20 03:18:17', '2022-10-20 03:18:17'),
('manhtoan', 'manhtoan@gmail.com', '23', '2022-10-20 03:18:17', '2022-10-20 03:18:17'),
('ngoctrinh', 'ngoctrinh@gmail.com', '40', '2022-10-20 03:18:17', '2022-10-20 03:18:17');

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
-- Cấu trúc bảng cho bảng `hopdong`
--

CREATE TABLE `hopdong` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ma_hd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_nv` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heso_luong` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayvao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loai_hd` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_macdinh` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_nghiviec` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hopdong`
--

INSERT INTO `hopdong` (`id`, `ma_hd`, `ma_nv`, `heso_luong`, `ngayvao`, `tinhtrang`, `loai_hd`, `ngay_macdinh`, `ngay_nghiviec`, `created_at`, `updated_at`) VALUES
(1, 'HD0610MFVN01', 'MFNV01', '6.0', '12/05/2022', 'Nhân Viên Chính Thức', 'Hợp Đồng 12 Tháng', '', '', NULL, NULL),
(2, 'HD0610MFVN02', 'MFNV02', '5.0', '25/02/2021', 'Nhân Viên Chính Thức', 'Hợp Đồng 12 Tháng', '', '', NULL, NULL),
(8, 'HD0710MFVN03', 'MFNV03', '5.0', '18/01/2020', 'Nhân Viên Thử Việc', 'Đang thử việc!!!', '', '', NULL, NULL),
(9, 'HD0810MFVN04', 'MFNV04', '5.0', '14/08/2019', 'Nhân Viên Thử Việc', 'Đang thử việc!!!', '', '', NULL, NULL),
(11, 'HD0710MFVN05', 'MFNV05', '5.0', '18/01/2020', 'Nhân Viên Thử Việc', 'Đang thử việc!!!', '', '', NULL, NULL),
(12, 'HD0710MFVN06', 'MFNV06', '5.0', '28/01/2020', 'Nhân Viên Thử Việc', 'Đang thử việc!!!', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khenthuong`
--

CREATE TABLE `khenthuong` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ma_nv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sotien` int(11) NOT NULL,
  `ngay_khenthuong` date NOT NULL,
  `lydo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khenthuong`
--

INSERT INTO `khenthuong` (`id`, `ma_nv`, `sotien`, `ngay_khenthuong`, `lydo`, `created_at`, `updated_at`) VALUES
(1, 'MFNV01', 500000, '2022-10-10', 'Đạt thành tích xuất sắc', NULL, NULL),
(2, 'MFNV03', 300000, '2022-10-05', 'Đạt thành tích xuất sắc', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kyluat`
--

CREATE TABLE `kyluat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ma_nv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sotien` int(11) NOT NULL,
  `ngay_kyluat` date NOT NULL,
  `lydo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kyluat`
--

INSERT INTO `kyluat` (`id`, `ma_nv`, `sotien`, `ngay_kyluat`, `lydo`, `created_at`, `updated_at`) VALUES
(1, 'MFNV02', 200000, '2022-10-12', 'Đi trễ', NULL, NULL),
(2, 'MFNV04', 100000, '2022-10-10', 'Đi trễ', NULL, NULL);

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_04_044334_create_nhanvien_table', 1),
(6, '2022_10_05_071621_create_phongban_table', 2),
(7, '2022_10_06_010943_create_hopdong_table', 3),
(8, '2022_10_06_032107_create_baohiem_table', 4),
(9, '2022_10_07_025039_create_chucvu_table', 5),
(10, '2022_10_12_044326_create_khenthuong_table', 6),
(11, '2022_10_12_074914_create_kyluat_table', 6),
(12, '2022_10_17_012823_create_phepnam_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ma_nv` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hoten_nv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi_nv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh_nv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt_nv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anhdaidien` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_pb` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_cv` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `ma_nv`, `hoten_nv`, `diachi_nv`, `gioitinh_nv`, `sdt_nv`, `anhdaidien`, `ma_pb`, `ma_cv`, `updated_at`, `created_at`) VALUES
(1, 'MFNV01', 'Nguyễn Hoàng Đức', 'Trà Vinh', 'Nam', '0908 346 989', '1.jpg', 'HCNS', 'GĐ', '2022-10-17 03:56:17', NULL),
(2, 'MFNV02', 'Lý Mộng Tuyền', 'Bến Tre', 'Nữ', '0908 468 787', '2.jpg', 'KT', 'GĐ', '2022-10-17 03:56:29', NULL),
(3, 'MFNV03', 'Trần Văn Liêm', 'Kiên Giang', 'Nam', '0908 346 989', '4.jpg', 'KT', 'NV', '2022-10-17 02:30:29', NULL),
(4, 'MFNV04', 'Đỗ Kim Ái ', 'Cà Mau', 'Nữ', '0908 468 755', '1.jpg', 'CNTT', 'GĐ', '2022-10-17 02:29:50', NULL),
(6, 'MFNV05', 'Lê Thị Mỹ Tiên', 'Long An', 'Nữ', '0764854577', '6.jpg', 'HCNS', 'NV', '2022-10-17 04:07:19', '2022-10-04 21:28:36'),
(7, 'MFNV06', 'Lê Khánh An', 'Hậu Giang', 'Nam', '124879779', '5.jpg', 'CNTT', 'NV', '2022-10-17 02:31:02', '2022-10-04 21:29:24');

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
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phepnam`
--

CREATE TABLE `phepnam` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ma_nv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_batdau` date NOT NULL,
  `phepnam_dadung` int(10) NOT NULL,
  `ngay_ketthuc` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phepnam`
--

INSERT INTO `phepnam` (`id`, `ma_nv`, `ngay_batdau`, `phepnam_dadung`, `ngay_ketthuc`, `created_at`, `updated_at`) VALUES
(2, 'MFNV02', '2022-08-11', 1, NULL, NULL, NULL),
(3, 'MFNV03', '2022-09-14', 1, '2022-10-14', NULL, NULL),
(4, 'MFNV04', '2022-05-17', 3, '2022-10-14', NULL, NULL),
(5, 'MFNV06', '2022-10-05', 0, '2022-10-19', NULL, NULL),
(6, 'MFNV01', '2022-04-03', 2, '2022-08-18', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongban`
--

CREATE TABLE `phongban` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ma_pb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_pb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phongban`
--

INSERT INTO `phongban` (`id`, `ma_pb`, `ten_pb`, `created_at`, `updated_at`) VALUES
(1, 'HCNS', 'Nhân Sự', NULL, NULL),
(2, 'KT', 'Kế Toán', NULL, NULL),
(3, 'CNTT', 'Công Nghệ Thông Tin', NULL, NULL),
(6, 'MKT', 'Marketting', NULL, NULL);

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
-- Chỉ mục cho bảng `baohiem`
--
ALTER TABLE `baohiem`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khenthuong`
--
ALTER TABLE `khenthuong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kyluat`
--
ALTER TABLE `kyluat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `phepnam`
--
ALTER TABLE `phepnam`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phongban`
--
ALTER TABLE `phongban`
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
-- AUTO_INCREMENT cho bảng `baohiem`
--
ALTER TABLE `baohiem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `khenthuong`
--
ALTER TABLE `khenthuong`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `kyluat`
--
ALTER TABLE `kyluat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phepnam`
--
ALTER TABLE `phepnam`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `phongban`
--
ALTER TABLE `phongban`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
