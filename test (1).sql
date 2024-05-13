-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 13, 2024 lúc 01:35 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `test`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`) VALUES
(1, 'admin', '04062003');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai_dang`
--

CREATE TABLE `bai_dang` (
  `id` int(11) NOT NULL,
  `id_tintuc` int(11) DEFAULT NULL,
  `tieu_de` varchar(255) DEFAULT NULL,
  `ngay_dang` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bai_dang`
--

INSERT INTO `bai_dang` (`id`, `id_tintuc`, `tieu_de`, `ngay_dang`) VALUES
(1, 2, 'Việt Á', '2024-04-02'),
(2, 1, 'Vạn Thịnh Phát ', '2024-05-02'),
(3, 25, 'ha lan ', '2024-05-13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuc_vu`
--

CREATE TABLE `chuc_vu` (
  `Ma_cong_chuc` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chucvu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chuc_vu`
--

INSERT INTO `chuc_vu` (`Ma_cong_chuc`, `name`, `chucvu`) VALUES
(1, 'Nguyên Văn A', 'Viện trưởng'),
(2, 'HA LAM', 'Phó VIện trưởng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doanthe`
--

CREATE TABLE `doanthe` (
  `id_doan_the` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `doanthe`
--

INSERT INTO `doanthe` (`id_doan_the`, `type`, `name`) VALUES
(1, 'Đoàn thanh niên ', 'thanh niên '),
(2, 'Công Đoàn ', 'đoàn xã');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luat`
--

CREATE TABLE `luat` (
  `id_luat` int(11) NOT NULL,
  `ten_luat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_hanh` date DEFAULT NULL,
  `hieu_luc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `luat`
--

INSERT INTO `luat` (`id_luat`, `ten_luat`, `ban_hanh`, `hieu_luc`) VALUES
(1, 'Luật Khám chữa bệnh 2023 ', '2023-01-09', '2024-01-01'),
(2, 'Luật phòng chống rửa tiền 2022', '2022-11-15', '2023-03-01'),
(3, 'Luật phòng chống bạo lực gia đình 2022', '2022-11-14', '2023-07-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id_tintuc` int(11) NOT NULL,
  `tieu_de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noi_dung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_dang` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id_tintuc`, `tieu_de`, `noi_dung`, `image`, `ngay_dang`) VALUES
(1, 'Vạn thịnh Phát ', 'Vụ án liên quan đến bà Trương Mỹ Lan', 'vanthinhphat.png', '2024-04-09'),
(2, 'Việt Á ', 'Vụ án Việt Á', 'vieta.jpg', '2024-04-08'),
(18, 'jakaajaj', 'mdksksd', 'vieta.jpg', '2024-05-01'),
(25, 'cá ', 'hg bt j ', 'menu-7.jpeg', '2024-05-13'),
(26, 'ha lan ', 'là sao ', 'menu-8.jpeg', '2024-05-13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `title`, `image`, `status`) VALUES
(1, 'slides 1', 'volunteer-helping-with-donation-box.jpg', 1),
(2, 'slides 2 ', 'medium-shot-people-collecting-donations.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vanban`
--

CREATE TABLE `vanban` (
  `id_van_ban` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day_post` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vanban`
--

INSERT INTO `vanban` (`id_van_ban`, `type`, `name`, `day_post`) VALUES
(1, 'Kiểm sát nhân dân ', 'Quy phạm pháp luật ', '2021-05-05'),
(2, 'Văn bản quy phạm pháp luật ', 'vi phạm ', '2021-05-04');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `bai_dang`
--
ALTER TABLE `bai_dang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tintuc` (`id_tintuc`);

--
-- Chỉ mục cho bảng `chuc_vu`
--
ALTER TABLE `chuc_vu`
  ADD PRIMARY KEY (`Ma_cong_chuc`);

--
-- Chỉ mục cho bảng `doanthe`
--
ALTER TABLE `doanthe`
  ADD PRIMARY KEY (`id_doan_the`);

--
-- Chỉ mục cho bảng `luat`
--
ALTER TABLE `luat`
  ADD PRIMARY KEY (`id_luat`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_tintuc`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vanban`
--
ALTER TABLE `vanban`
  ADD PRIMARY KEY (`id_van_ban`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `bai_dang`
--
ALTER TABLE `bai_dang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `chuc_vu`
--
ALTER TABLE `chuc_vu`
  MODIFY `Ma_cong_chuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `doanthe`
--
ALTER TABLE `doanthe`
  MODIFY `id_doan_the` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `luat`
--
ALTER TABLE `luat`
  MODIFY `id_luat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id_tintuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vanban`
--
ALTER TABLE `vanban`
  MODIFY `id_van_ban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bai_dang`
--
ALTER TABLE `bai_dang`
  ADD CONSTRAINT `bai_dang_ibfk_1` FOREIGN KEY (`id_tintuc`) REFERENCES `news` (`id_tintuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
