-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 17, 2020 lúc 06:59 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vietpro_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attr`
--

CREATE TABLE `attr` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attr`
--

INSERT INTO `attr` (`id`, `name`, `value`, `order_id`) VALUES
(1, 'color', 'Đỏ', 1),
(2, 'Size', 'L', 1),
(3, 'color', 'Đỏ', 2),
(4, 'Size', 'L', 2),
(5, 'color', 'Đỏ', 3),
(6, 'Size', 'L', 3),
(7, 'color', 'Đỏ', 4),
(8, 'Size', 'L', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute`
--

CREATE TABLE `attribute` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute`
--

INSERT INTO `attribute` (`id`, `name`) VALUES
(1, 'Size'),
(2, 'color');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `parent`) VALUES
(1, 'Nam', 0),
(2, 'Áo Nam', 1),
(3, 'Quần Nam', 1),
(5, 'Nữ', 0),
(6, 'Áo Nữ', 5),
(7, 'Quần Nữ', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(18,0) DEFAULT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `full_name`, `address`, `email`, `phone`, `total`, `state`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Phan Hiệu', 'Hà Nội', 'lamthieu0@gmail.com', '0845128641', '700000', 0, '2020-08-16 21:12:54', '2020-08-16 21:12:54'),
(2, 'Nguyễn Phan Hiệu', 'Hà Nội', 'lamthieu0@gmail.com', '0845128641', '800000', 0, '2020-08-16 21:15:17', '2020-08-16 21:15:17'),
(3, 'Nguyễn Phan Hiệu', 'Hà Nội', 'lamthieu0@gmail.com', '0845128641', '800000', 0, '2020-08-16 21:22:13', '2020-08-16 21:22:13'),
(4, 'Nguyễn Phan Hiệu', 'Hà Nội', 'lamthieu0@gmail.com', '0845128641', '200000', 0, '2020-08-16 21:32:04', '2020-08-16 21:32:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info`
--

CREATE TABLE `info` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_number` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `users_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logins`
--

CREATE TABLE `logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2020_08_01_024305_create_category_table', 1),
(2, '2020_08_01_024444_create_product_table', 1),
(3, '2020_08_01_024609_create_users_table', 1),
(4, '2020_08_04_082400_create_logins_table', 1),
(5, '2020_08_12_082705_create_info_table', 1),
(6, '2019_02_17_033947_create_attribute_table', 2),
(7, '2019_02_17_034019_create_values_table', 2),
(8, '2019_02_17_034103_create_values_product_table', 2),
(9, '2019_02_17_034142_create_variant_table', 2),
(10, '2019_02_17_034204_create_variant_values_table', 2),
(11, '2019_02_17_034232_create_customer_table', 2),
(12, '2019_02_17_034246_create_order_table', 2),
(13, '2019_02_17_034303_create_attr_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,0) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `name`, `price`, `quantity`, `img`, `customer_id`) VALUES
(1, 'Áo Vest MX105', '100000', 7, 'LFSrP1qyL.jpg', 1),
(2, 'Áo Vest MX105', '100000', 8, 'LFSrP1qyL.jpg', 2),
(3, 'Áo Vest MX105', '100000', 8, 'LFSrP1qyL.jpg', 3),
(4, 'Áo Vest MX105', '100000', 2, 'LFSrP1qyL.jpg', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,0) NOT NULL DEFAULT 0,
  `featured` tinyint(3) UNSIGNED NOT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `describe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `product_code`, `name`, `price`, `featured`, `state`, `info`, `describe`, `img`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'SP01', 'Áo Vest MX105', '500000', 1, 1, NULL, NULL, 'LFSrP1qyL.jpg', 1, NULL, '2020-08-14 03:15:12'),
(2, 'SP02', 'Áo Thun Có Cổ', '500000', 1, 0, NULL, NULL, 'dygWLJUAO.jpg', 2, NULL, '2020-08-14 03:16:11'),
(3, 'SP03', 'Áo khoác nam AKN-12', '500000', 0, 1, NULL, NULL, 'LTHsmbSTN.jpg', 2, NULL, '2020-08-14 03:17:38'),
(4, 'SP04', 'Áo nữ cổ V viền tay xinh xắn', '500000', 1, 1, NULL, NULL, '0w0qUqktI.jpg', 6, NULL, '2020-08-14 03:18:11'),
(5, 'SP05', 'Quần Nữ Suông Ống Rộng', '500000', 1, 1, NULL, NULL, 'yhUXigL2N.jpg', 6, NULL, '2020-08-14 03:18:52'),
(7, 'AN03', 'Áo Nữ', '1700000', 1, 1, 'Thông tin', 'Miêu tả', 'wV4kXyKbR.jpg', 6, '2020-08-14 00:35:25', '2020-08-14 03:19:30'),
(8, 'AN02', 'Áo Phông Nữ APN-13', '10000000', 1, 1, NULL, NULL, 'uCdniGaCt.jpg', 6, '2020-08-14 00:39:23', '2020-08-14 03:20:07'),
(10, 'AN07', 'Áo Nam Không Cổ  ANKC-01', '500000', 1, 1, NULL, NULL, 'TTDOp1OHm.jpg', 2, '2020-08-14 00:43:47', '2020-08-14 03:21:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `full`, `address`, `phone`, `level`, `remember_token`) VALUES
(1, 'admin@gmail.com', '$2y$10$JA7.pO.zrb3aDx180HcZPO0Cmx9oGnjLxG0ku8NzQxWRUUVDxy1sa', 'vietpro', 'Thường tín', '0356653301', 1, NULL),
(2, 'zimpro@gmail.com', '$2y$10$3URDlQ4vXgnRKrZMqy5QPezusmm7ajDT7JJaBQM0uZLZjcTy6eoqm', 'Nguyễn thế vũ', 'Bắc giang', '0356654487', 2, NULL),
(3, 'phucnguyenthe0809@gmail.com', '$2y$10$wWT2bgIT7PwHkxngGLwN1Odc1hIlNC.9SJKtvZaST75Bcj4I9BtyK', 'Nguyễn thế phúc', 'Huế', '0352264487', 1, NULL),
(4, 'zimpro9x@gmail.com', '$2y$10$Zm3snbQ7R8T6m1xRVbKBD.iO64c6kjqMTOPl9qzcNyRaypvdt6tL6', 'Nguyễn Văn Công', 'Nghệ An', '0357846659', 2, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `values`
--

CREATE TABLE `values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `values`
--

INSERT INTO `values` (`id`, `value`, `attr_id`) VALUES
(2, 'M', 1),
(3, 'L', 1),
(4, 'Đỏ', 2),
(5, 'Xanh', 2),
(6, 'Đen', 2),
(9, 'S', 1),
(10, 'XS', 1),
(11, 'Trắng', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `values_product`
--

CREATE TABLE `values_product` (
  `values_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `values_product`
--

INSERT INTO `values_product` (`values_id`, `product_id`) VALUES
(4, 1),
(2, 2),
(3, 2),
(5, 2),
(3, 3),
(5, 3),
(6, 3),
(2, 4),
(4, 4),
(6, 4),
(2, 5),
(4, 5),
(5, 5),
(2, 7),
(5, 7),
(2, 8),
(6, 8),
(2, 10),
(4, 10),
(3, 1),
(6, 1),
(10, 2),
(11, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `variant`
--

CREATE TABLE `variant` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,0) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `variant`
--

INSERT INTO `variant` (`id`, `price`, `product_id`) VALUES
(1, '100000', 1),
(2, '200000', 1),
(4, '400000', 2),
(5, '500000', 3),
(6, '600000', 3),
(7, '700000', 4),
(8, '800000', 4),
(12, '9000000', 8),
(15, '0', 1),
(16, '0', 2),
(17, '0', 7),
(18, '0', 2),
(19, '0', 2),
(20, '0', 2),
(21, '0', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `variant_values`
--

CREATE TABLE `variant_values` (
  `variant_id` int(10) UNSIGNED NOT NULL,
  `values_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `variant_values`
--

INSERT INTO `variant_values` (`variant_id`, `values_id`) VALUES
(1, 4),
(2, 2),
(2, 4),
(4, 3),
(4, 5),
(5, 3),
(5, 5),
(6, 3),
(6, 6),
(7, 2),
(7, 4),
(8, 2),
(8, 6),
(12, 2),
(12, 6),
(15, 3),
(15, 6),
(16, 2),
(16, 5),
(17, 2),
(17, 5),
(18, 2),
(18, 11),
(19, 3),
(19, 11),
(20, 10),
(20, 5),
(21, 10),
(21, 11);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attr`
--
ALTER TABLE `attr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attr_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_product_code_unique` (`product_code`),
  ADD KEY `product_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `values`
--
ALTER TABLE `values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `values_attr_id_foreign` (`attr_id`);

--
-- Chỉ mục cho bảng `values_product`
--
ALTER TABLE `values_product`
  ADD KEY `values_product_values_id_foreign` (`values_id`),
  ADD KEY `values_product_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `variant`
--
ALTER TABLE `variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variant_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `variant_values`
--
ALTER TABLE `variant_values`
  ADD KEY `variant_values_variant_id_foreign` (`variant_id`),
  ADD KEY `variant_values_values_id_foreign` (`values_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attr`
--
ALTER TABLE `attr`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `info`
--
ALTER TABLE `info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `logins`
--
ALTER TABLE `logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `values`
--
ALTER TABLE `values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `variant`
--
ALTER TABLE `variant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attr`
--
ALTER TABLE `attr`
  ADD CONSTRAINT `attr_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `values`
--
ALTER TABLE `values`
  ADD CONSTRAINT `values_attr_id_foreign` FOREIGN KEY (`attr_id`) REFERENCES `attribute` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `values_product`
--
ALTER TABLE `values_product`
  ADD CONSTRAINT `values_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `values_product_values_id_foreign` FOREIGN KEY (`values_id`) REFERENCES `values` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `variant`
--
ALTER TABLE `variant`
  ADD CONSTRAINT `variant_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `variant_values`
--
ALTER TABLE `variant_values`
  ADD CONSTRAINT `variant_values_values_id_foreign` FOREIGN KEY (`values_id`) REFERENCES `values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `variant_values_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
