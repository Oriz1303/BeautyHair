use haircare;
CREATE TABLE `province` (
  `id` int(10) primary KEY NOT NULL,
  `_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `province` (`id`, `_name`, `_code`) VALUES
(1, 'Hồ Chí Minh', 'SG'),
(2, 'Hà Nội', 'HN'),
(3, 'Đà Nẵng', 'DDN'),
(4, 'Bình Dương', 'BD'),
(5, 'Đồng Nai', 'DNA'),
(6, 'Khánh Hòa', 'KH'),
(7, 'Hải Phòng', 'HP'),
(8, 'Long An', 'LA'),
(9, 'Quảng Nam', 'QNA'),
(10, 'Bà Rịa Vũng Tàu', 'VT'),
(11, 'Đắk Lắk', 'DDL'),
(12, 'Cần Thơ', 'CT'),
(13, 'Bình Thuận  ', 'BTH'),
(14, 'Lâm Đồng', 'LDD'),
(15, 'Thừa Thiên Huế', 'TTH'),
(16, 'Kiên Giang', 'KG'),
(17, 'Bắc Ninh', 'BN'),
(18, 'Quảng Ninh', 'QNI'),
(19, 'Thanh Hóa', 'TH'),
(20, 'Nghệ An', 'NA'),
(21, 'Hải Dương', 'HD'),
(22, 'Gia Lai', 'GL'),
(23, 'Bình Phước', 'BP'),
(24, 'Hưng Yên', 'HY'),
(25, 'Bình Định', 'BDD'),
(26, 'Tiền Giang', 'TG'),
(27, 'Thái Bình', 'TB'),
(28, 'Bắc Giang', 'BG'),
(29, 'Hòa Bình', 'HB'),
(30, 'An Giang', 'AG'),
(31, 'Vĩnh Phúc', 'VP'),
(32, 'Tây Ninh', 'TNI'),
(33, 'Thái Nguyên', 'TN'),
(34, 'Lào Cai', 'LCA'),
(35, 'Nam Định', 'NDD'),
(36, 'Quảng Ngãi', 'QNG'),
(37, 'Bến Tre', 'BTR'),
(38, 'Đắk Nông', 'DNO'),
(39, 'Cà Mau', 'CM'),
(40, 'Vĩnh Long', 'VL'),
(41, 'Ninh Bình', 'NB'),
(42, 'Phú Thọ', 'PT'),
(43, 'Ninh Thuận', 'NT'),
(44, 'Phú Yên', 'PY'),
(45, 'Hà Nam', 'HNA'),
(46, 'Hà Tĩnh', 'HT'),
(47, 'Đồng Tháp', 'DDT'),
(48, 'Sóc Trăng', 'ST'),
(49, 'Kon Tum', 'KT'),
(50, 'Quảng Bình', 'QB'),
(51, 'Quảng Trị', 'QT'),
(52, 'Trà Vinh', 'TV'),
(53, 'Hậu Giang', 'HGI'),
(54, 'Sơn La', 'SL'),
(55, 'Bạc Liêu', 'BL'),
(56, 'Yên Bái', 'YB'),
(57, 'Tuyên Quang', 'TQ'),
(58, 'Điện Biên', 'DDB'),
(59, 'Lai Châu', 'LCH'),
(60, 'Lạng Sơn', 'LS'),
(61, 'Hà Giang', 'HG'),
(62, 'Bắc Kạn', 'BK'),
(63, 'Cao Bằng', 'CB');

CREATE TABLE `district` (
  `id` int(10)  NOT NULL,
  `_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_prefix` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_province_id` int(10)  DEFAULT NULL,
  foreign key (_province_id) REFERENCES province(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `district` (`id`, `_name`, `_prefix`, `_province_id`) VALUES
(1, 'Bình Chánh', 'Huyện', 1),
(2, 'Bình Tân', 'Quận', 1),
(3, 'Bình Thạnh', 'Quận', 1),
(4, 'Cần Giờ', 'Huyện', 1),
(5, 'Củ Chi', 'Huyện', 1),
(6, 'Gò Vấp', 'Quận', 1),
(7, 'Hóc Môn', 'Huyện', 1),
(8, 'Nhà Bè', 'Huyện', 1),
(9, 'Phú Nhuận', 'Quận', 1),
(10, 'Quận 1', '', 1),
(11, 'Quận 10', '', 1),
(12, 'Quận 11', '', 1),
(13, 'Quận 12', '', 1),
(14, 'Quận 2', '', 1),
(15, 'Quận 3', '', 1),
(16, 'Quận 4', '', 1),
(17, 'Quận 5', '', 1),
(18, 'Quận 6', '', 1),
(19, 'Quận 7', '', 1),
(20, 'Quận 8', '', 1),
(21, 'Quận 9', '', 1),
(22, 'Tân Bình', 'Quận', 1),
(23, 'Tân Phú', 'Quận', 1),
(24, 'Thủ Đức', 'Quận', 1),
(25, 'Ba Đình', 'Quận', 2),
(26, 'Ba Vì', 'Huyện', 2),
(27, 'Bắc Từ Liêm', 'Quận', 2),
(28, 'Cầu Giấy', 'Quận', 2),
(29, 'Chương Mỹ', 'Huyện', 2),
(30, 'Đan Phượng', 'Huyện', 2),
(31, 'Đông Anh', 'Huyện', 2),
(32, 'Đống Đa', 'Quận', 2),
(33, 'Gia Lâm', 'Huyện', 2),
(34, 'Hà Đông', 'Quận', 2),
(35, 'Hai Bà Trưng', 'Quận', 2),
(36, 'Hoài Đức', 'Huyện', 2),
(37, 'Hoàn Kiếm', 'Quận', 2),
(38, 'Hoàng Mai', 'Quận', 2),
(39, 'Long Biên', 'Quận', 2),
(40, 'Mê Linh', 'Huyện', 2),
(41, 'Mỹ Đức', 'Huyện', 2),
(42, 'Nam Từ Liêm', 'Quận', 2),
(43, 'Phú Xuyên', 'Huyện', 2),
(44, 'Phúc Thọ', 'Huyện', 2),
(45, 'Quốc Oai', 'Huyện', 2),
(46, 'Sóc Sơn', 'Huyện', 2),
(47, 'Sơn Tây', 'Thị xã', 2),
(48, 'Tây Hồ', 'Quận', 2),
(49, 'Thạch Thất', 'Huyện', 2),
(50, 'Thanh Oai', 'Huyện', 2),
(51, 'Thanh Trì', 'Huyện', 2),
(52, 'Thanh Xuân', 'Quận', 2),
(53, 'Thường Tín', 'Huyện', 2),
(54, 'Ứng Hòa', 'Huyện', 2),
(55, 'Cẩm Lệ', 'Quận', 3),
(56, 'Hải Châu', 'Quận', 3),
(57, 'Hòa Vang', 'Huyện', 3),
(58, 'Hoàng Sa', 'Huyện', 3),
(59, 'Liên Chiểu', 'Quận', 3),
(60, 'Ngũ Hành Sơn', 'Quận', 3),
(61, 'Sơn Trà', 'Quận', 3),
(62, 'Thanh Khê', 'Quận', 3),
(63, 'Bàu Bàng', 'Huyện', 4),
(64, 'Bến Cát', 'Thị xã', 4),
(65, 'Dầu Tiếng', 'Huyện', 4),
(66, 'Dĩ An', 'Thị xã', 4),
(67, 'Phú Giáo', 'Huyện', 4),
(68, 'Tân Uyên', 'Huyện', 4),
(69, 'Thủ Dầu Một', 'Thị xã', 4),
(70, 'Thuận An', 'Huyện', 4),
(71, 'Biên Hòa', 'Thành phố', 5),
(72, 'Cẩm Mỹ', 'Huyện', 5),
(73, 'Định Quán', 'Huyện', 5),
(74, 'Long Khánh', 'Thị xã', 5),
(75, 'Long Thành', 'Huyện', 5),
(76, 'Nhơn Trạch', 'Huyện', 5),
(77, 'Tân Phú', 'Quận', 5),
(78, 'Thống Nhất', 'Huyện', 5),
(79, 'Trảng Bom', 'Huyện', 5),
(80, 'Vĩnh Cửu', 'Huyện', 5),
(81, 'Xuân Lộc', 'Huyện', 5),
(82, 'Cam Lâm', 'Huyện', 6),
(83, 'Cam Ranh', 'Thành phố', 6),
(84, 'Diên Khánh', 'Huyện', 6),
(85, 'Khánh Sơn', 'Huyện', 6),
(86, 'Khánh Vĩnh', 'Huyện', 6),
(87, 'Nha Trang', 'Thành phố', 6),
(88, 'Ninh Hòa', 'Thị xã', 6),
(89, 'Trường Sa', 'Huyện', 6),
(90, 'Vạn Ninh', 'Huyện', 6),
(91, 'An Dương', 'Huyện', 7),
(92, 'An Lão', 'Huyện', 7),
(93, 'Bạch Long Vĩ', 'Huyện', 7),
(94, 'Cát Hải', 'Huyện', 7),
(95, 'Đồ Sơn', 'Quận', 7),
(96, 'Dương Kinh', 'Quận', 7),
(97, 'Hải An', 'Quận', 7),
(98, 'Hồng Bàng', 'Quận', 7),
(99, 'Kiến An', 'Quận', 7),
(100, 'Kiến Thụy', 'Huyện', 7),
(101, 'Lê Chân', 'Quận', 7),
(102, 'Ngô Quyền', 'Quận', 7),
(103, 'Thủy Nguyên', 'Huyện', 7),
(104, 'Tiên Lãng', 'Huyện', 7),
(105, 'Vĩnh Bảo', 'Huyện', 7),
(106, 'Bến Lức', 'Huyện', 8),
(107, 'Cần Đước', 'Huyện', 8),
(108, 'Cần Giuộc', 'Huyện', 8),
(109, 'Châu Thành', 'Huyện', 8),
(110, 'Đức Hòa', 'Huyện', 8),
(111, 'Đức Huệ', 'Huyện', 8),
(112, 'Kiến Tường', 'Thị xã', 8),
(113, 'Mộc Hóa', 'Huyện', 8),
(114, 'Tân An', 'Thành phố', 8),
(115, 'Tân Hưng', 'Huyện', 8),
(116, 'Tân Thạnh', 'Huyện', 8),
(117, 'Tân Trụ', 'Huyện', 8),
(118, 'Thạnh Hóa', 'Huyện', 8),
(119, 'Thủ Thừa', 'Huyện', 8),
(120, 'Vĩnh Hưng', 'Huyện', 8),
(121, 'Bắc Trà My', 'Huyện', 9),
(122, 'Đại Lộc', 'Huyện', 9),
(123, 'Điện Bàn', 'Huyện', 9),
(124, 'Đông Giang', 'Huyện', 9),
(125, 'Duy Xuyên', 'Huyện', 9),
(126, 'Hiệp Đức', 'Huyện', 9),
(127, 'Hội An', 'Thành phố', 9),
(128, 'Nam Giang', 'Huyện', 9),
(129, 'Nam Trà My', 'Huyện', 9),
(130, 'Nông Sơn', 'Huyện', 9),
(131, 'Núi Thành', 'Huyện', 9),
(132, 'Phú Ninh', 'Huyện', 9),
(133, 'Phước Sơn', 'Huyện', 9),
(134, 'Quế Sơn', 'Huyện', 9),
(135, 'Tam Kỳ', 'Thành phố', 9),
(136, 'Tây Giang', 'Huyện', 9),
(137, 'Thăng Bình', 'Huyện', 9),
(138, 'Tiên Phước', 'Huyện', 9),
(139, 'Bà Rịa', 'Thị xã', 10),
(140, 'Châu Đức', 'Huyện', 10),
(141, 'Côn Đảo', 'Huyện', 10),
(142, 'Đất Đỏ', 'Huyện', 10),
(143, 'Long Điền', 'Huyện', 10),
(144, 'Tân Thành', 'Huyện', 10),
(145, 'Vũng Tàu', 'Thành phố', 10),
(146, 'Xuyên Mộc', 'Huyện', 10),
(147, 'Buôn Đôn', 'Huyện', 11),
(148, 'Buôn Hồ', 'Thị xã', 11),
(149, 'Buôn Ma Thuột', 'Thành phố', 11),
(150, 'Cư Kuin', 'Huyện', 11),
(151, 'Cư M\'gar', 'Huyện', 11),
(152, 'Ea H\'Leo', 'Huyện', 11),
(153, 'Ea Kar', 'Huyện', 11),
(154, 'Ea Súp', 'Huyện', 11),
(155, 'Krông Ana', 'Huyện', 11),
(156, 'Krông Bông', 'Huyện', 11),
(157, 'Krông Buk', 'Huyện', 11),
(158, 'Krông Năng', 'Huyện', 11),
(159, 'Krông Pắc', 'Huyện', 11),
(160, 'Lăk', 'Huyện', 11),
(161, 'M\'Đrăk', 'Huyện', 11),
(162, ' Thới Lai', 'Huyện', 12),
(163, 'Bình Thủy', 'Quận', 12),
(164, 'Cái Răng', 'Quận', 12),
(165, 'Cờ Đỏ', 'Huyện', 12),
(166, 'Ninh Kiều', 'Quận', 12),
(167, 'Ô Môn', 'Quận', 12),
(168, 'Phong Điền', 'Huyện', 12),
(169, 'Thốt Nốt', 'Quận', 12),
(170, 'Vĩnh Thạnh', 'Huyện', 12),
(171, 'Bắc Bình', 'Huyện', 13),
(172, 'Đảo Phú Quý', 'Huyện', 13),
(173, 'Đức Linh', 'Huyện', 13),
(174, 'Hàm Tân', 'Huyện', 13),
(175, 'Hàm Thuận Bắc', 'Huyện', 13),
(176, 'Hàm Thuận Nam', 'Huyện', 13),
(177, 'La Gi', 'Thị xã', 13),
(178, 'Phan Thiết', 'Thành phố', 13),
(179, 'Tánh Linh', 'Huyện', 13),
(180, 'Tuy Phong', 'Huyện', 13),
(181, 'Bảo Lâm', 'Huyện', 14),
(182, 'Bảo Lộc', 'Thành phố', 14),
(183, 'Cát Tiên', 'Huyện', 14),
(184, 'Đạ Huoai', 'Huyện', 14),
(185, 'Đà Lạt', 'Thành phố', 14),
(186, 'Đạ Tẻh', 'Huyện', 14),
(187, 'Đam Rông', 'Huyện', 14),
(188, 'Di Linh', 'Huyện', 14),
(189, 'Đơn Dương', 'Huyện', 14),
(190, 'Đức Trọng', 'Huyện', 14),
(191, 'Lạc Dương', 'Huyện', 14),
(192, 'Lâm Hà', 'Huyện', 14),
(193, 'A Lưới', 'Huyện', 15),
(194, 'Huế', 'Thành phố', 15),
(195, 'Hương Thủy', 'Thị xã', 15),
(196, 'Hương Trà', 'Huyện', 15),
(197, 'Nam Đông', 'Huyện', 15),
(198, 'Phong Điền', 'Huyện', 15),
(199, 'Phú Lộc', 'Huyện', 15),
(200, 'Phú Vang', 'Huyện', 15),
(201, 'Quảng Điền', 'Huyện', 15),
(202, 'An Biên', 'Huyện', 16),
(203, 'An Minh', 'Huyện', 16),
(204, 'Châu Thành', 'Huyện', 16),
(205, 'Giang Thành', 'Huyện', 16),
(206, 'Giồng Riềng', 'Huyện', 16),
(207, 'Gò Quao', 'Huyện', 16),
(208, 'Hà Tiên', 'Thị xã', 16),
(209, 'Hòn Đất', 'Huyện', 16),
(210, 'Kiên Hải', 'Huyện', 16),
(211, 'Kiên Lương', 'Huyện', 16),
(212, 'Phú Quốc', 'Huyện', 16),
(213, 'Rạch Giá', 'Thành phố', 16),
(214, 'Tân Hiệp', 'Huyện', 16),
(215, 'U minh Thượng', 'Huyện', 16),
(216, 'Vĩnh Thuận', 'Huyện', 16),
(217, 'Bắc Ninh', 'Thành phố', 17),
(218, 'Gia Bình', 'Huyện', 17),
(219, 'Lương Tài', 'Huyện', 17),
(220, 'Quế Võ', 'Huyện', 17),
(221, 'Thuận Thành', 'Huyện', 17),
(222, 'Tiên Du', 'Huyện', 17),
(223, 'Từ Sơn', 'Thị xã', 17),
(224, 'Yên Phong', 'Huyện', 17),
(225, 'Ba Chẽ', 'Huyện', 18),
(226, 'Bình Liêu', 'Huyện', 18),
(227, 'Cẩm Phả', 'Thành phố', 18),
(228, 'Cô Tô', 'Huyện', 18),
(229, 'Đầm Hà', 'Huyện', 18),
(230, 'Đông Triều', 'Huyện', 18),
(231, 'Hạ Long', 'Thành phố', 18),
(232, 'Hải Hà', 'Huyện', 18),
(233, 'Hoành Bồ', 'Huyện', 18),
(234, 'Móng Cái', 'Thành phố', 18),
(235, 'Quảng Yên', 'Huyện', 18),
(236, 'Tiên Yên', 'Huyện', 18),
(237, 'Uông Bí', 'Thị xã', 18),
(238, 'Vân Đồn', 'Huyện', 18),
(239, 'Bá Thước', 'Huyện', 19),
(240, 'Bỉm Sơn', 'Thị xã', 19),
(241, 'Cẩm Thủy', 'Huyện', 19),
(242, 'Đông Sơn', 'Huyện', 19),
(243, 'Hà Trung', 'Huyện', 19),
(244, 'Hậu Lộc', 'Huyện', 19),
(245, 'Hoằng Hóa', 'Huyện', 19),
(246, 'Lang Chánh', 'Huyện', 19),
(247, 'Mường Lát', 'Huyện', 19),
(248, 'Nga Sơn', 'Huyện', 19),
(249, 'Ngọc Lặc', 'Huyện', 19),
(250, 'Như Thanh', 'Huyện', 19),
(251, 'Như Xuân', 'Huyện', 19),
(252, 'Nông Cống', 'Huyện', 19),
(253, 'Quan Hóa', 'Huyện', 19),
(254, 'Quan Sơn', 'Huyện', 19),
(255, 'Quảng Xương', 'Huyện', 19),
(256, 'Sầm Sơn', 'Thị xã', 19),
(257, 'Thạch Thành', 'Huyện', 19),
(258, 'Thanh Hóa', 'Thành phố', 19),
(259, 'Thiệu Hóa', 'Huyện', 19),
(260, 'Thọ Xuân', 'Huyện', 19),
(261, 'Thường Xuân', 'Huyện', 19),
(262, 'Tĩnh Gia', 'Huyện', 19),
(263, 'Triệu Sơn', 'Huyện', 19),
(264, 'Vĩnh Lộc', 'Huyện', 19),
(265, 'Yên Định', 'Huyện', 19),
(266, 'Anh Sơn', 'Huyện', 20),
(267, 'Con Cuông', 'Huyện', 20),
(268, 'Cửa Lò', 'Thị xã', 20),
(269, 'Diễn Châu', 'Huyện', 20),
(270, 'Đô Lương', 'Huyện', 20),
(271, 'Hoàng Mai', 'Thị xã', 20),
(272, 'Hưng Nguyên', 'Huyện', 20),
(273, 'Kỳ Sơn', 'Huyện', 20),
(274, 'Nam Đàn', 'Huyện', 20),
(275, 'Nghi Lộc', 'Huyện', 20),
(276, 'Nghĩa Đàn', 'Huyện', 20),
(277, 'Quế Phong', 'Huyện', 20),
(278, 'Quỳ Châu', 'Huyện', 20),
(279, 'Quỳ Hợp', 'Huyện', 20),
(280, 'Quỳnh Lưu', 'Huyện', 20),
(281, 'Tân Kỳ', 'Huyện', 20),
(282, 'Thái Hòa', 'Thị xã', 20),
(283, 'Thanh Chương', 'Huyện', 20),
(284, 'Tương Dương', 'Huyện', 20),
(285, 'Vinh', 'Thành phố', 20),
(286, 'Yên Thành', 'Huyện', 20),
(287, 'Bình Giang', 'Huyện', 21),
(288, 'Cẩm Giàng', 'Huyện', 21),
(289, 'Chí Linh', 'Thị xã', 21),
(290, 'Gia Lộc', 'Huyện', 21),
(291, 'Hải Dương', 'Thành phố', 21),
(292, 'Kim Thành', 'Huyện', 21),
(293, 'Kinh Môn', 'Huyện', 21),
(294, 'Nam Sách', 'Huyện', 21),
(295, 'Ninh Giang', 'Huyện', 21),
(296, 'Thanh Hà', 'Huyện', 21),
(297, 'Thanh Miện', 'Huyện', 21),
(298, 'Tứ Kỳ', 'Huyện', 21),
(299, 'An Khê', 'Thị xã', 22),
(300, 'AYun Pa', 'Thị xã', 22),
(301, 'Chư Păh', 'Huyện', 22),
(302, 'Chư Pưh', 'Huyện', 22),
(303, 'Chư Sê', 'Huyện', 22),
(304, 'ChưPRông', 'Huyện', 22),
(305, 'Đăk Đoa', 'Huyện', 22),
(306, 'Đăk Pơ', 'Huyện', 22),
(307, 'Đức Cơ', 'Huyện', 22),
(308, 'Ia Grai', 'Huyện', 22),
(309, 'Ia Pa', 'Huyện', 22),
(310, 'KBang', 'Huyện', 22),
(311, 'Kông Chro', 'Huyện', 22),
(312, 'Krông Pa', 'Huyện', 22),
(313, 'Mang Yang', 'Huyện', 22),
(314, 'Phú Thiện', 'Huyện', 22),
(315, 'Plei Ku', 'Thành phố', 22),
(316, 'Bình Long', 'Thị xã', 23),
(317, 'Bù Đăng', 'Huyện', 23),
(318, 'Bù Đốp', 'Huyện', 23),
(319, 'Bù Gia Mập', 'Huyện', 23),
(320, 'Chơn Thành', 'Huyện', 23),
(321, 'Đồng Phú', 'Huyện', 23),
(322, 'Đồng Xoài', 'Thị xã', 23),
(323, 'Hớn Quản', 'Huyện', 23),
(324, 'Lộc Ninh', 'Huyện', 23),
(325, 'Phú Riềng', 'Huyện', 23),
(326, 'Phước Long', 'Thị xã', 23),
(327, 'Ân Thi', 'Huyện', 24),
(328, 'Hưng Yên', 'Thành phố', 24),
(329, 'Khoái Châu', 'Huyện', 24),
(330, 'Kim Động', 'Huyện', 24),
(331, 'Mỹ Hào', 'Huyện', 24),
(332, 'Phù Cừ', 'Huyện', 24),
(333, 'Tiên Lữ', 'Huyện', 24),
(334, 'Văn Giang', 'Huyện', 24),
(335, 'Văn Lâm', 'Huyện', 24),
(336, 'Yên Mỹ', 'Huyện', 24),
(337, 'An Lão', 'Huyện', 25),
(338, 'An Nhơn', 'Huyện', 25),
(339, 'Hoài Ân', 'Huyện', 25),
(340, 'Hoài Nhơn', 'Huyện', 25),
(341, 'Phù Cát', 'Huyện', 25),
(342, 'Phù Mỹ', 'Huyện', 25),
(343, 'Quy Nhơn', 'Thành phố', 25),
(344, 'Tây Sơn', 'Huyện', 25),
(345, 'Tuy Phước', 'Huyện', 25),
(346, 'Vân Canh', 'Huyện', 25),
(347, 'Vĩnh Thạnh', 'Huyện', 25),
(348, 'Cái Bè', 'Huyện', 26),
(349, 'Cai Lậy', 'Thị xã', 26),
(350, 'Châu Thành', 'Huyện', 26),
(351, 'Chợ Gạo', 'Huyện', 26),
(352, 'Gò Công', 'Thị xã', 26),
(353, 'Gò Công Đông', 'Huyện', 26),
(354, 'Gò Công Tây', 'Huyện', 26),
(355, 'Huyện Cai Lậy', 'Huyện', 26),
(356, 'Mỹ Tho', 'Thành phố', 26),
(357, 'Tân Phú Đông', 'Huyện', 26),
(358, 'Tân Phước', 'Huyện', 26),
(359, 'Đông Hưng', 'Huyện', 27),
(360, 'Hưng Hà', 'Huyện', 27),
(361, 'Kiến Xương', 'Huyện', 27),
(362, 'Quỳnh Phụ', 'Huyện', 27),
(363, 'Thái Bình', 'Thành phố', 27),
(364, 'Thái Thuỵ', 'Huyện', 27),
(365, 'Tiền Hải', 'Huyện', 27),
(366, 'Vũ Thư', 'Huyện', 27),
(367, 'Bắc Giang', 'Thành phố', 28),
(368, 'Hiệp Hòa', 'Huyện', 28),
(369, 'Lạng Giang', 'Huyện', 28),
(370, 'Lục Nam', 'Huyện', 28),
(371, 'Lục Ngạn', 'Huyện', 28),
(372, 'Sơn Động', 'Huyện', 28),
(373, 'Tân Yên', 'Huyện', 28),
(374, 'Việt Yên', 'Huyện', 28),
(375, 'Yên Dũng', 'Huyện', 28),
(376, 'Yên Thế', 'Huyện', 28),
(377, 'Cao Phong', 'Huyện', 29),
(378, 'Đà Bắc', 'Huyện', 29),
(379, 'Hòa Bình', 'Thành phố', 29),
(380, 'Kim Bôi', 'Huyện', 29),
(381, 'Kỳ Sơn', 'Huyện', 29),
(382, 'Lạc Sơn', 'Huyện', 29),
(383, 'Lạc Thủy', 'Huyện', 29),
(384, 'Lương Sơn', 'Huyện', 29),
(385, 'Mai Châu', 'Huyện', 29),
(386, 'Tân Lạc', 'Huyện', 29),
(387, 'Yên Thủy', 'Huyện', 29),
(388, 'An Phú', 'Huyện', 30),
(389, 'Châu Đốc', 'Thị xã', 30),
(390, 'Châu Phú', 'Huyện', 30),
(391, 'Châu Thành', 'Huyện', 30),
(392, 'Chợ Mới', 'Huyện', 30),
(393, 'Long Xuyên', 'Thành phố', 30),
(394, 'Phú Tân', 'Huyện', 30),
(395, 'Tân Châu', 'Thị xã', 30),
(396, 'Thoại Sơn', 'Huyện', 30),
(397, 'Tịnh Biên', 'Huyện', 30),
(398, 'Tri Tôn', 'Huyện', 30),
(399, 'Bình Xuyên', 'Huyện', 31),
(400, 'Lập Thạch', 'Huyện', 31),
(401, 'Phúc Yên', 'Thị xã', 31),
(402, 'Sông Lô', 'Huyện', 31),
(403, 'Tam Đảo', 'Huyện', 31),
(404, 'Tam Dương', 'Huyện', 31),
(405, 'Vĩnh Tường', 'Huyện', 31),
(406, 'Vĩnh Yên', 'Thành phố', 31),
(407, 'Yên Lạc', 'Huyện', 31),
(408, 'Bến Cầu', 'Huyện', 32),
(409, 'Châu Thành', 'Huyện', 32),
(410, 'Dương Minh Châu', 'Huyện', 32),
(411, 'Gò Dầu', 'Huyện', 32),
(412, 'Hòa Thành', 'Huyện', 32),
(413, 'Tân Biên', 'Huyện', 32),
(414, 'Tân Châu', 'Huyện', 32),
(415, 'Tây Ninh', 'Thị xã', 32),
(416, 'Trảng Bàng', 'Huyện', 32),
(417, 'Đại Từ', 'Huyện', 33),
(418, 'Định Hóa', 'Huyện', 33),
(419, 'Đồng Hỷ', 'Huyện', 33),
(420, 'Phổ Yên', 'Huyện', 33),
(421, 'Phú Bình', 'Huyện', 33),
(422, 'Phú Lương', 'Huyện', 33),
(423, 'Sông Công', 'Thị xã', 33),
(424, 'Thái Nguyên', 'Thành phố', 33),
(425, 'Võ Nhai', 'Huyện', 33),
(426, 'Bắc Hà', 'Huyện', 34),
(427, 'Bảo Thắng', 'Huyện', 34),
(428, 'Bảo Yên', 'Huyện', 34),
(429, 'Bát Xát', 'Huyện', 34),
(430, 'Lào Cai', 'Thành phố', 34),
(431, 'Mường Khương', 'Huyện', 34),
(432, 'Sa Pa', 'Huyện', 34),
(433, 'Văn Bàn', 'Huyện', 34),
(434, 'Xi Ma Cai', 'Huyện', 34),
(435, 'Giao Thủy', 'Huyện', 35),
(436, 'Hải Hậu', 'Huyện', 35),
(437, 'Mỹ Lộc', 'Huyện', 35),
(438, 'Nam Định', 'Thành phố', 35),
(439, 'Nam Trực', 'Huyện', 35),
(440, 'Nghĩa Hưng', 'Huyện', 35),
(441, 'Trực Ninh', 'Huyện', 35),
(442, 'Vụ Bản', 'Huyện', 35),
(443, 'Xuân Trường', 'Huyện', 35),
(444, 'Ý Yên', 'Huyện', 35),
(445, 'Ba Tơ', 'Huyện', 36),
(446, 'Bình Sơn', 'Huyện', 36),
(447, 'Đức Phổ', 'Huyện', 36),
(448, 'Lý Sơn', 'Huyện', 36),
(449, 'Minh Long', 'Huyện', 36),
(450, 'Mộ Đức', 'Huyện', 36),
(451, 'Nghĩa Hành', 'Huyện', 36),
(452, 'Quảng Ngãi', 'Thành phố', 36),
(453, 'Sơn Hà', 'Huyện', 36),
(454, 'Sơn Tây', 'Huyện', 36),
(455, 'Sơn Tịnh', 'Huyện', 36),
(456, 'Tây Trà', 'Huyện', 36),
(457, 'Trà Bồng', 'Huyện', 36),
(458, 'Tư Nghĩa', 'Huyện', 36),
(459, 'Ba Tri', 'Huyện', 37),
(460, 'Bến Tre', 'Thành phố', 37),
(461, 'Bình Đại', 'Huyện', 37),
(462, 'Châu Thành', 'Huyện', 37),
(463, 'Chợ Lách', 'Huyện', 37),
(464, 'Giồng Trôm', 'Huyện', 37),
(465, 'Mỏ Cày Bắc', 'Huyện', 37),
(466, 'Mỏ Cày Nam', 'Huyện', 37),
(467, 'Thạnh Phú', 'Huyện', 37),
(468, 'Cư Jút', 'Huyện', 38),
(469, 'Dăk GLong', 'Huyện', 38),
(470, 'Dăk Mil', 'Huyện', 38),
(471, 'Dăk R\'Lấp', 'Huyện', 38),
(472, 'Dăk Song', 'Huyện', 38),
(473, 'Gia Nghĩa', 'Thị xã', 38),
(474, 'Krông Nô', 'Huyện', 38),
(475, 'Tuy Đức', 'Huyện', 38),
(476, 'Cà Mau', 'Thành phố', 39),
(477, 'Cái Nước', 'Huyện', 39),
(478, 'Đầm Dơi', 'Huyện', 39),
(479, 'Năm Căn', 'Huyện', 39),
(480, 'Ngọc Hiển', 'Huyện', 39),
(481, 'Phú Tân', 'Huyện', 39),
(482, 'Thới Bình', 'Huyện', 39),
(483, 'Trần Văn Thời', 'Huyện', 39),
(484, 'U Minh', 'Huyện', 39),
(485, 'Bình Minh', 'Huyện', 40),
(486, 'Bình Tân', 'Quận', 40),
(487, 'Long Hồ', 'Huyện', 40),
(488, 'Mang Thít', 'Huyện', 40),
(489, 'Tam Bình', 'Huyện', 40),
(490, 'Trà Ôn', 'Huyện', 40),
(491, 'Vĩnh Long', 'Thành phố', 40),
(492, 'Vũng Liêm', 'Huyện', 40),
(493, 'Gia Viễn', 'Huyện', 41),
(494, 'Hoa Lư', 'Huyện', 41),
(495, 'Kim Sơn', 'Huyện', 41),
(496, 'Nho Quan', 'Huyện', 41),
(497, 'Ninh Bình', 'Thành phố', 41),
(498, 'Tam Điệp', 'Thị xã', 41),
(499, 'Yên Khánh', 'Huyện', 41),
(500, 'Yên Mô', 'Huyện', 41),
(501, 'Cẩm Khê', 'Huyện', 42),
(502, 'Đoan Hùng', 'Huyện', 42),
(503, 'Hạ Hòa', 'Huyện', 42),
(504, 'Lâm Thao', 'Huyện', 42),
(505, 'Phù Ninh', 'Huyện', 42),
(506, 'Phú Thọ', 'Thị xã', 42),
(507, 'Tam Nông', 'Huyện', 42),
(508, 'Tân Sơn', 'Huyện', 42),
(509, 'Thanh Ba', 'Huyện', 42),
(510, 'Thanh Sơn', 'Huyện', 42),
(511, 'Thanh Thủy', 'Huyện', 42),
(512, 'Việt Trì', 'Thành phố', 42),
(513, 'Yên Lập', 'Huyện', 42),
(514, 'Bác Ái', 'Huyện', 43),
(515, 'Ninh Hải', 'Huyện', 43),
(516, 'Ninh Phước', 'Huyện', 43),
(517, 'Ninh Sơn', 'Huyện', 43),
(518, 'Phan Rang - Tháp Chàm', 'Thành phố', 43),
(519, 'Thuận Bắc', 'Huyện', 43),
(520, 'Thuận Nam', 'Huyện', 43),
(521, 'Đông Hòa', 'Huyện', 44),
(522, 'Đồng Xuân', 'Huyện', 44),
(523, 'Phú Hòa', 'Huyện', 44),
(524, 'Sơn Hòa', 'Huyện', 44),
(525, 'Sông Cầu', 'Thị xã', 44),
(526, 'Sông Hinh', 'Huyện', 44),
(527, 'Tây Hòa', 'Huyện', 44),
(528, 'Tuy An', 'Huyện', 44),
(529, 'Tuy Hòa', 'Thành phố', 44),
(530, 'Bình Lục', 'Huyện', 45),
(531, 'Duy Tiên', 'Huyện', 45),
(532, 'Kim Bảng', 'Huyện', 45),
(533, 'Lý Nhân', 'Huyện', 45),
(534, 'Phủ Lý', 'Thành phố', 45),
(535, 'Thanh Liêm', 'Huyện', 45),
(536, 'Cẩm Xuyên', 'Huyện', 46),
(537, 'Can Lộc', 'Huyện', 46),
(538, 'Đức Thọ', 'Huyện', 46),
(539, 'Hà Tĩnh', 'Thành phố', 46),
(540, 'Hồng Lĩnh', 'Thị xã', 46),
(541, 'Hương Khê', 'Huyện', 46),
(542, 'Hương Sơn', 'Huyện', 46),
(543, 'Kỳ Anh', 'Huyện', 46),
(544, 'Lộc Hà', 'Huyện', 46),
(545, 'Nghi Xuân', 'Huyện', 46),
(546, 'Thạch Hà', 'Huyện', 46),
(547, 'Vũ Quang', 'Huyện', 46),
(548, 'Cao Lãnh', 'Thành phố', 47),
(549, 'Châu Thành', 'Huyện', 47),
(550, 'Hồng Ngự', 'Thị xã', 47),
(551, 'Huyện Cao Lãnh', 'Huyện', 47),
(552, 'Huyện Hồng Ngự', 'Huyện', 47),
(553, 'Lai Vung', 'Huyện', 47),
(554, 'Lấp Vò', 'Huyện', 47),
(555, 'Sa Đéc', 'Thị xã', 47),
(556, 'Tam Nông', 'Huyện', 47),
(557, 'Tân Hồng', 'Huyện', 47),
(558, 'Thanh Bình', 'Huyện', 47),
(559, 'Tháp Mười', 'Huyện', 47),
(560, 'Châu Thành', 'Huyện', 48),
(561, 'Cù Lao Dung', 'Huyện', 48),
(562, 'Kế Sách', 'Huyện', 48),
(563, 'Long Phú', 'Huyện', 48),
(564, 'Mỹ Tú', 'Huyện', 48),
(565, 'Mỹ Xuyên', 'Huyện', 48),
(566, 'Ngã Năm', 'Huyện', 48),
(567, 'Sóc Trăng', 'Thành phố', 48),
(568, 'Thạnh Trị', 'Huyện', 48),
(569, 'Trần Đề', 'Huyện', 48),
(570, 'Vĩnh Châu', 'Huyện', 48),
(571, 'Đăk Glei', 'Huyện', 49),
(572, 'Đăk Hà', 'Huyện', 49),
(573, 'Đăk Tô', 'Huyện', 49),
(574, 'Ia H\'Drai', 'Huyện', 49),
(575, 'Kon Plông', 'Huyện', 49),
(576, 'Kon Rẫy', 'Huyện', 49),
(577, 'KonTum', 'Thành phố', 49),
(578, 'Ngọc Hồi', 'Huyện', 49),
(579, 'Sa Thầy', 'Huyện', 49),
(580, 'Tu Mơ Rông', 'Huyện', 49),
(581, 'Ba Đồn', 'Thị xã', 50),
(582, 'Bố Trạch', 'Huyện', 50),
(583, 'Đồng Hới', 'Thành phố', 50),
(584, 'Lệ Thủy', 'Huyện', 50),
(585, 'Minh Hóa', 'Huyện', 50),
(586, 'Quảng Ninh', 'Huyện', 50),
(587, 'Quảng Trạch', 'Huyện', 50),
(588, 'Tuyên Hóa', 'Huyện', 50),
(589, 'Cam Lộ', 'Huyện', 51),
(590, 'Đa Krông', 'Huyện', 51),
(591, 'Đảo Cồn cỏ', 'Huyện', 51),
(592, 'Đông Hà', 'Thành phố', 51),
(593, 'Gio Linh', 'Huyện', 51),
(594, 'Hải Lăng', 'Huyện', 51),
(595, 'Hướng Hóa', 'Huyện', 51),
(596, 'Quảng Trị', 'Thị xã', 51),
(597, 'Triệu Phong', 'Huyện', 51),
(598, 'Vĩnh Linh', 'Huyện', 51),
(599, 'Càng Long', 'Huyện', 52),
(600, 'Cầu Kè', 'Huyện', 52),
(601, 'Cầu Ngang', 'Huyện', 52),
(602, 'Châu Thành', 'Huyện', 52),
(603, 'Duyên Hải', 'Huyện', 52),
(604, 'Tiểu Cần', 'Huyện', 52),
(605, 'Trà Cú', 'Huyện', 52),
(606, 'Trà Vinh', 'Thành phố', 52),
(607, 'Châu Thành', 'Huyện', 53),
(608, 'Châu Thành A', 'Huyện', 53),
(609, 'Long Mỹ', 'Huyện', 53),
(610, 'Ngã Bảy', 'Thị xã', 53),
(611, 'Phụng Hiệp', 'Huyện', 53),
(612, 'Vị Thanh', 'Thành phố', 53),
(613, 'Vị Thủy', 'Huyện', 53),
(614, 'Bắc Yên', 'Huyện', 54),
(615, 'Mai Sơn', 'Huyện', 54),
(616, 'Mộc Châu', 'Huyện', 54),
(617, 'Mường La', 'Huyện', 54),
(618, 'Phù Yên', 'Huyện', 54),
(619, 'Quỳnh Nhai', 'Huyện', 54),
(620, 'Sơn La', 'Thành phố', 54),
(621, 'Sông Mã', 'Huyện', 54),
(622, 'Sốp Cộp', 'Huyện', 54),
(623, 'Thuận Châu', 'Huyện', 54),
(624, 'Vân Hồ', 'Huyện', 54),
(625, 'Yên Châu', 'Huyện', 54),
(626, 'Bạc Liêu', 'Thành phố', 55),
(627, 'Đông Hải', 'Huyện', 55),
(628, 'Giá Rai', 'Huyện', 55),
(629, 'Hòa Bình', 'Huyện', 55),
(630, 'Hồng Dân', 'Huyện', 55),
(631, 'Phước Long', 'Huyện', 55),
(632, 'Vĩnh Lợi', 'Huyện', 55),
(633, 'Lục Yên', 'Huyện', 56),
(634, 'Mù Cang Chải', 'Huyện', 56),
(635, 'Nghĩa Lộ', 'Thị xã', 56),
(636, 'Trạm Tấu', 'Huyện', 56),
(637, 'Trấn Yên', 'Huyện', 56),
(638, 'Văn Chấn', 'Huyện', 56),
(639, 'Văn Yên', 'Huyện', 56),
(640, 'Yên Bái', 'Thành phố', 56),
(641, 'Yên Bình', 'Huyện', 56),
(642, 'Chiêm Hóa', 'Huyện', 57),
(643, 'Hàm Yên', 'Huyện', 57),
(644, 'Lâm Bình', 'Huyện', 57),
(645, 'Na Hang', 'Huyện', 57),
(646, 'Sơn Dương', 'Huyện', 57),
(647, 'Tuyên Quang', 'Thành phố', 57),
(648, 'Yên Sơn', 'Huyện', 57),
(649, 'Điện Biên', 'Huyện', 58),
(650, 'Điện Biên Đông', 'Huyện', 58),
(651, 'Điện Biên Phủ', 'Thành phố', 58),
(652, 'Mường Ảng', 'Huyện', 58),
(653, 'Mường Chà', 'Huyện', 58),
(654, 'Mường Lay', 'Thị xã', 58),
(655, 'Mường Nhé', 'Huyện', 58),
(656, 'Nậm Pồ', 'Huyện', 58),
(657, 'Tủa Chùa', 'Huyện', 58),
(658, 'Tuần Giáo', 'Huyện', 58),
(659, 'Lai Châu', 'Thị xã', 59),
(660, 'Mường Tè', 'Huyện', 59),
(661, 'Nậm Nhùn', 'Huyện', 59),
(662, 'Phong Thổ', 'Huyện', 59),
(663, 'Sìn Hồ', 'Huyện', 59),
(664, 'Tam Đường', 'Huyện', 59),
(665, 'Tân Uyên', 'Huyện', 59),
(666, 'Than Uyên', 'Huyện', 59),
(667, 'Bắc Sơn', 'Huyện', 60),
(668, 'Bình Gia', 'Huyện', 60),
(669, 'Cao Lộc', 'Huyện', 60),
(670, 'Chi Lăng', 'Huyện', 60),
(671, 'Đình Lập', 'Huyện', 60),
(672, 'Hữu Lũng', 'Huyện', 60),
(673, 'Lạng Sơn', 'Thành phố', 60),
(674, 'Lộc Bình', 'Huyện', 60),
(675, 'Tràng Định', 'Huyện', 60),
(676, 'Văn Lãng', 'Huyện', 60),
(677, 'Văn Quan', 'Huyện', 60),
(678, 'Bắc Mê', 'Huyện', 61),
(679, 'Bắc Quang', 'Huyện', 61),
(680, 'Đồng Văn', 'Huyện', 61),
(681, 'Hà Giang', 'Thành phố', 61),
(682, 'Hoàng Su Phì', 'Huyện', 61),
(683, 'Mèo Vạc', 'Huyện', 61),
(684, 'Quản Bạ', 'Huyện', 61),
(685, 'Quang Bình', 'Huyện', 61),
(686, 'Vị Xuyên', 'Huyện', 61),
(687, 'Xín Mần', 'Huyện', 61),
(688, 'Yên Minh', 'Huyện', 61),
(689, 'Ba Bể', 'Huyện', 62),
(690, 'Bắc Kạn', 'Thị xã', 62),
(691, 'Bạch Thông', 'Huyện', 62),
(692, 'Chợ Đồn', 'Huyện', 62),
(693, 'Chợ Mới', 'Huyện', 62),
(694, 'Na Rì', 'Huyện', 62),
(695, 'Ngân Sơn', 'Huyện', 62),
(696, 'Pác Nặm', 'Huyện', 62),
(697, 'Bảo Lạc', 'Huyện', 63),
(698, 'Bảo Lâm', 'Huyện', 63),
(699, 'Cao Bằng', 'Thị xã', 63),
(700, 'Hạ Lang', 'Huyện', 63),
(701, 'Hà Quảng', 'Huyện', 63),
(702, 'Hòa An', 'Huyện', 63),
(703, 'Nguyên Bình', 'Huyện', 63),
(704, 'Phục Hòa', 'Huyện', 63),
(705, 'Quảng Uyên', 'Huyện', 63),
(706, 'Thạch An', 'Huyện', 63),
(707, 'Thông Nông', 'Huyện', 63),
(708, 'Trà Lĩnh', 'Huyện', 63),
(709, 'Trùng Khánh', 'Huyện', 63
-- bảng về thương hiệu
CREATE TABLE IF NOT EXISTS `haircare`.`brand_haircare` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) NULL,
  `slogan` varchar(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- contact của khách hàng
CREATE TABLE IF NOT EXISTS `haircare`.`contact` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `phone_number` VARCHAR(45) NULL,
  `message` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- thanh navbar
CREATE TABLE IF NOT EXISTS `haircare`.`posts_categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `categories` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `categories_name_UNIQUE` (`categories` ASC) VISIBLE)
ENGINE = InnoDB;

-- tocpic in navbar
CREATE TABLE IF NOT EXISTS `haircare`.`posts_topics` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `topics` VARCHAR(255) NULL,
  `categories_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_categories_id_posts_topics_idx` (`categories_id` ASC) VISIBLE,
  CONSTRAINT `FK_categories_id_posts_topics`
    FOREIGN KEY (`categories_id`)
    REFERENCES `haircare`.`posts_categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- title con
CREATE TABLE IF NOT EXISTS `haircare`.`posts_title` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titles` VARCHAR(200) NOT NULL,
  `posts_topics_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_posts_topics_id_posts_title_idx` (`posts_topics_id` ASC) VISIBLE,
  CONSTRAINT `FK_posts_topics_id_posts_title`
    FOREIGN KEY (`posts_topics_id`)
    REFERENCES `haircare`.`posts_topics` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- ảnh của các posts
CREATE TABLE IF NOT EXISTS `haircare`.`posts_images` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `posts_title_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_posts_title_id_posts_images_idx` (`posts_title_id` ASC) VISIBLE,
  CONSTRAINT `FK_posts_title_id_posts_images`
    FOREIGN KEY (`posts_title_id`)
    REFERENCES `haircare`.`posts_title` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- nội dung của bài post
CREATE TABLE IF NOT EXISTS `haircare`.`posts_content` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `description` TEXT NOT NULL,
  `posts_title_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_posts_title_id_posts_images_idx` (`posts_title_id` ASC) VISIBLE,
  CONSTRAINT `FK_posts_title_id_posts_description`
    FOREIGN KEY (`posts_title_id`)
    REFERENCES `haircare`.`posts_title` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- các loại thiết bị
CREATE TABLE IF NOT EXISTS `haircare`.`equipments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `equipments` varchar(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- thông tin về thiết bị
CREATE TABLE IF NOT EXISTS `haircare`.`euquipments_detail` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `price` VARCHAR(45) NULL,
  `description` text not NULL,
  `equipments_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_equipments_id_equipments_detail_idx` (`equipments_id` ASC) VISIBLE,
  CONSTRAINT `FK_equipments_id_equipments_detail`
    FOREIGN KEY (`equipments_id`)
    REFERENCES `haircare`.`equipments` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- ảnh của thiết bị
CREATE TABLE IF NOT EXISTS `haircare`.`euquipments_images` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `url` VARCHAR(255) NOT NULL,
  `equipments_detail_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_equipments_detail_id_equipments_images_idx` (`equipments_detail_id` ASC) VISIBLE,
  CONSTRAINT `FK_equipments_detail_id_equipments_images`
    FOREIGN KEY (`equipments_detail_id`)
    REFERENCES `haircare`.`euquipments_detail` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- các sản phẩm tốt cho tóc
CREATE TABLE IF NOT EXISTS `haircare`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `products` varchar(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- chi tiết về các sản phẩm
CREATE TABLE IF NOT EXISTS `haircare`.`products_detail` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `price` varchar(255) NULL,
  `description` text NULL,
  `products_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_products_id_products_detail_idx` (`products_id` ASC) VISIBLE,
  CONSTRAINT `FK_products_id-products_detail`
    FOREIGN KEY (`products_id`)
    REFERENCES `haircare`.`products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- ảnh các sản phẩm
CREATE TABLE IF NOT EXISTS `haircare`.`products_images` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `url` VARCHAR(255) NOT NULL,
  `products_detail_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_products_detail_id_products_images_idx` (`products_detail_id` ASC) VISIBLE,
  CONSTRAINT `FK_products_detail_id_products_images`
    FOREIGN KEY (`products_detail_id`)
    REFERENCES `haircare`.`products_detail` (`id`)
    ON DELETE NO ACTION	
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `haircare`.`accountAdmin` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NULL,
  `password` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

    
CREATE TABLE IF NOT EXISTS `haircare`.`account` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `status` CHAR(1) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

insert into `haircare`.`account` (username, password, email, status) 
values 
	('oriz1303', 'Nguyen123', 'oriz@gmail.com', 0),
	('quangdu', 'Quangdu123','quangdu@gmail.com', 1);
    
    
select * from `haircare`.`account`;

    
insert into `haircare`.`brand_haircare` (logo, slogan) 
values 
	('haircare_logo.png', 'Health Hair, Beauty Your');


insert into `haircare`.`products` (products)
values 
	('Cream Dove'),
    ('Cream LOreal'),
    ('Cream Ellips'),
    ('Cream Organist'),
    ('Shampoo Cocoon'),
    ('Shampoo Selsun'),
    ('Shampoo TRESemme'),
    ('Shampoo Tsubaki'),
    ('Mask BNBG'),
    ('Mask Caryophy'),
    ('Mask Klaris'),
    ('Mask Naruko'),
    ('Serum Beauty Labo'),
    ('Serum Cocoon'),
    ('Serum TRESemme'),
    ('Serum Ellips'),
    ('Hairspays Double Rich'),
    ('Hairspays Haire Busrt'),
    ('Hairspays TRESemme'),
    ('Hairspays Tsubaki'),
    ('Oils Double Rich'),
    ('Oils LOreal'),
    ('Oils Some By Mi'),
    ('Oils Tsubaki');
    
select * from `haircare`.`products`;


insert into `haircare`.`products_detail` (price, description, products_id, name, guide)
values
('12.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 1, 'Hair cream','<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('9.89','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 2, 'Hair cream', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('45.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 3, 'Hair cream', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('18.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 4, 'Hair cream', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('5.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 5, 'Professional Sampoo', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('22.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 6, 'Professional Sampoo', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('23.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 7, 'Professional Sampoo', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('21.49','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 8, 'Professional Sampoo', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('40.29','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 9, 'Masks High-class', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('12.69','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 10, 'Masks High-class', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('14.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 11, 'Masks High-class', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('11.89','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 12, 'Masks High-class', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('90.19','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 13, 'Serums from Angula', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('12.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 14, 'Serums from North Korea', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('14.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 15, 'Serums from Vietnamese', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('15.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 16, 'Serums from United of Empires', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('16.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 17, 'Hair Sprays Good', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('15.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 18, 'Hair Sprays Good', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('23.89','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 19, 'Hair Sprays Good', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('26.39','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 20, 'Hair Sprays Good', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('27.19','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 21, 'Varios hair oils', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('51.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 22, 'Varios hair oils', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('54.89','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 23, 'Varios hair oils', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('53.59','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 24, 'Varios hair oils', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>');

    
select * from  `haircare`.`products_detail`;

INSERT INTO products_images (url, products_detail_id)
Values 
('imgProducts/duongtoc-dove.jpg' , 1),
('imgProducts/duongtoc-loreal.jpg' , 2),
('imgProducts/duongtoc-ellips.jpg' , 3),
('imgProducts/duongtoc-organist.jpg' , 4),
('imgProducts/daugoi-cocoon.jpg' , 5),
('imgProducts/daugoi-selsun.jpg' , 6),
('imgProducts/daugoi-tresemme.jpg' , 7),
('imgProducts/daugoi-tsubaki-cool.jpg' , 8),
('imgProducts/matna-bnbg-combo10.jpg' , 9),
('imgProducts/matna-caryophy.jpg' , 10),
('imgProducts/matna-klaris.jpg' , 11),
('imgProducts/matna-naruko.jpg' , 12),
('imgProducts/serum-beauty-labo.jpg' , 13),
('imgProducts/serum-cocoon.jpg' , 14),
('imgProducts/serum-tresemme.jpg' , 15),
('imgProducts/serum-ellips.jpg' , 16),
('imgProducts/xittoc-double-rich.jpg' , 17),
('imgProducts/xittoc-hairburst.jpg' , 18),
('imgProducts/xittoc-tresmme.jpg' , 19),
('imgProducts/xittoc-tsubaki.jpg' , 20),
('imgProducts/dauduong-doublerich.png' , 21),
('imgProducts/dauduong-l-oreal.jpg' , 22),
('imgProducts/dauduong-some-by-mi.jpg' , 23),
('imgProducts/dauduong-tsubaki.jpg' , 24);


use haircare;
select * from account;
select * from information_products;
select * from products_detail;
ALTER TABLE account MODIFY phone_number VARCHAR(20);


CREATE VIEW information_products AS
SELECT products.id as id,  products.products as name, products_detail.price as price, products_detail.description as description, products_detail.categories_id as title, products_detail.guide as guide, products_images.url as url
FROM products
	INNER JOIN products_detail ON products.id = products_detail.products_id
	INNER JOIN products_images ON products_detail.products_id = products_images.products_detail_id;
	
drop view information_products;


CREATE TABLE IF NOT EXISTS `haircare`.`orders` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fullname` VARCHAR(255) NOT NULL,
  `phone_number` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `order_date` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `haircare`.`order_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `order_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `num` INT,
  `price` FLOAT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_order_id_idx` (`order_id` ASC) VISIBLE,
  INDEX `FK_product_id-order_details_idx` (`product_id` ASC) VISIBLE,
  CONSTRAINT `FK_order_id-order_details`
    FOREIGN KEY (`order_id`)
    REFERENCES `haircare`.`orders` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_product_id-order_details`
    FOREIGN KEY (`product_id`)
    REFERENCES `haircare`.`products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

)ENGINE = InnoDB;
use haircare;
select * from account;
select * from orders;
select * from order_details;
ALTER TABLE order_details ADD COLUMN status VARCHAR(255) DEFAULT 'Pending';
select * from products_images;
select * from products;

delete from order_details where id > 0;
ALTER TABLE order_details ADD COLUMN account_id INT NOT NULL;
select * from info_orders;
drop view info_orders;
CREATE VIEW info_orders AS
SELECT orders.id as id,  orders.fullname as fullname,orders.phone_number as phone_number,orders.address as address, orders.order_date as date, products.products as name, order_details.account_id as account_id, order_details.num as quantity, order_details.price as price, order_details.status as status,products_images.url as url
FROM order_details 
INNER JOIN orders ON order_details.order_id = orders.id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN products_images ON products_images.id = products.id; 

CREATE TABLE IF NOT EXISTS `haircare`.`products_categories` (
  `id` INT NOT NULL,
  `categories` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

INSERT INTO `haircare`.`products`(id, categories)
VALUES 
	(1, 'Cream'),
    (2, 'Shampoo'),
    (3, 'Mask'),
    (4, 'Serum'),
    (5, 'Hairsprays'),
    (6, 'Oils');
    CREATE TABLE IF NOT EXISTS `haircare`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `products` VARCHAR(255) NOT NULL,
  `products_categories_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_products_categories_id-products_idx` (`products_categories_id` ASC) VISIBLE,
  CONSTRAINT `FK_products_categories_id-products`
    FOREIGN KEY (`products_categories_id`)
    REFERENCES `haircare`.`products_categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 25
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

UPDATE products 
SET products_categories_id = 3
WHERE id > 8 AND id < 13;
ALTER TABLE `haircare`.`products` ADD COLUMN products_categories_id INT NOT NULL;

SELECT * FROM province;
ALTER TABLE `haircare`.`products` ADD constraint `FK_products_categories_id-products`  FOREIGN KEY (`products_categories_id`) REFERENCES `haircare`.`products_categories` (`id`);
select * from posts_topics;
select * from posts_title;
select * from posts_categories;
select * from products_categories;
select * from order_details;
select * from information_products;
--  