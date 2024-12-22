-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 22, 2024 lúc 03:06 PM
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
-- Cơ sở dữ liệu: `qls`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_chi_tiet_hoadon` bigint(10) NOT NULL,
  `sodh` bigint(20) NOT NULL,
  `masp` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` decimal(10,3) NOT NULL,
  `thanhtien` decimal(10,3) NOT NULL,
  `madv` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `madv` bigint(20) NOT NULL,
  `tendv` varchar(200) NOT NULL,
  `gia` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`madv`, `tendv`, `gia`) VALUES
(15, 'Bọc sách', 10.000),
(17, 'Gói quà tặng', 20.000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `sodh` bigint(20) NOT NULL,
  `emailkh` varchar(50) NOT NULL,
  `ngaygiao` date NOT NULL,
  `tenkh` varchar(100) NOT NULL,
  `diachi` varchar(250) NOT NULL,
  `dienthoai` varchar(50) NOT NULL,
  `hinhthucthanhtoan` varchar(100) NOT NULL,
  `thanhtien` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginadmin`
--

CREATE TABLE `loginadmin` (
  `tendangnhap` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginadmin`
--

INSERT INTO `loginadmin` (`tendangnhap`, `matkhau`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginuser`
--

CREATE TABLE `loginuser` (
  `email` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `HoTen` varchar(100) NOT NULL,
  `DienThoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginuser`
--

INSERT INTO `loginuser` (`email`, `matkhau`, `HoTen`, `DienThoai`) VALUES
('lequan@gmail.com', 'lequan', 'Lê Anh Quân', '0971618936'),
('vumanh@gmail.com', 'vumanh', 'Vũ Đức Mạnh', '0795281711');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`ID`, `Ten`) VALUES
(15, 'NXB Trẻ'),
(18, 'NXB Hội Nhà Văn'),
(19, 'NXB Kim Đồng'),
(21, 'NXB Lao động'),
(22, 'NXB Phụ nữ Việt Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(200) NOT NULL,
  `Gia` decimal(10,3) NOT NULL,
  `HinhAnh` varchar(200) NOT NULL,
  `Manhasx` bigint(10) NOT NULL,
  `Mota` text NOT NULL,
  `date` date NOT NULL,
  `KhuyenMai` tinyint(1) NOT NULL,
  `giakhuyenmai` double(10,3) NOT NULL,
  `tacgia` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `Ten`, `Gia`, `HinhAnh`, `Manhasx`, `Mota`, `date`, `KhuyenMai`, `giakhuyenmai`, `tacgia`) VALUES
(212, 'Một Đời Thương Thuyết', 135.000, 'nxbtre_mdtt.jpg', 15, '<p>Hơn 40 năm kinh nghiệm trong nghề v&agrave; cả nghiệp thương thuyết, Gi&aacute;o sư Phan Văn Trường, Cố vấn thương mại quốc tế của ch&iacute;nh phủ Ph&aacute;p, c&oacute; lẽ đ&atilde; cố gắng thể hiện gần trọn vẹn trong cuốn s&aacute;ch n&agrave;y. Được viết từ trải nghiệm của một người thường xuy&ecirc;n &ldquo;x&ocirc;ng pha trận mạc&rdquo; đ&agrave;m ph&aacute;n, thật kh&oacute; c&oacute; thể t&igrave;m được cuốn s&aacute;ch n&agrave;o kh&aacute;c về đề t&agrave;i n&agrave;y mang t&iacute;nh thực tế cao hơn&nbsp;<em>Một đời thương thuyết</em>. Trong đ&oacute; kh&ocirc;ng c&oacute; những b&agrave;i l&yacute; thuyết theo lớp lang chuẩn mực, nhưng độc giả sẽ được &ldquo;sống&rdquo; thực sự trong từng bối cảnh đ&agrave;m ph&aacute;n như đang diễn ra trước mắt. V&agrave; độc giả sẽ đọc cuốn s&aacute;ch n&agrave;y chẳng kh&aacute;c g&igrave; đang đọc một tập truyện ngắn đầy những t&igrave;nh tiết th&uacute; vị.</p>\r\n', '2024-12-06', 1, 108.000, 'Phan Văn Trường'),
(213, 'Lính Hà', 85.000, 'nxbtre_lh.jpg', 15, '<p>Truyện l&agrave; cuộc h&agrave;nh tr&igrave;nh từ h&egrave; phố H&agrave; Nội tới miền rừng hoang thốt nốt xứ T&acirc;y Nam, trong bối cảnh cuộc chiến bi&ecirc;n giới &acirc;m thầm m&agrave; khốc liệt ngay sau ng&agrave;y Giải ph&oacute;ng. Phố phường H&agrave; Nội đưa người v&agrave;o cuộc chiến. L&iacute;nh H&agrave; tản m&aacute;t th&agrave;nh những số phận kh&aacute;c nhau tr&ecirc;n con đường binh nghiệp. &ldquo;L&iacute;nh H&agrave;&rdquo; ở đ&acirc;y l&agrave; l&iacute;nh H&agrave; Nội, đ&aacute;m l&iacute;nh lắm khi b&ocirc;ng ph&egrave;ng, v&ocirc; kỷ luật, nhưng cũng thừa mơ mộng, si t&igrave;nh với những ph&uacute;t gi&acirc;y &ldquo;gục l&ecirc;n s&uacute;ng mũ bỏ qu&ecirc;n đời&rdquo;. C&oacute; người chấp nhận v&ugrave;i tuổi trẻ của m&igrave;nh v&agrave;o chiến trận, c&oacute; người &ldquo;tuột x&iacute;ch&rdquo;, đ&agrave;o ngũ trở về. Đ&oacute; l&agrave; vấn đề của chiến tranh: người ta chỉ sống một lần.<br />\r\nL&iacute;nh H&agrave; vừa mang d&aacute;ng v&oacute;c của một tiểu thuyết, lại vừa như một tự truyện với nh&acirc;n vật &ldquo;t&ocirc;i&rdquo; ch&iacute;nh l&agrave; t&aacute;c giả. Đọc L&iacute;nh H&agrave; thấy Nguyễn Ngọc Tiến viết dễ d&agrave;ng như lấy chữ trong t&uacute;i ra. Bằng ng&ograve;i b&uacute;t của một nh&agrave; b&aacute;o, dường như anh chỉ việc hồi tưởng, lần t&igrave;m trong k&yacute; ức trận mạc của m&igrave;nh v&agrave; rỉ rả kể lại một c&acirc;u chuyện với đầy đủ những cảm x&uacute;c, những suy tư c&oacute; thực. Sự thực, tự n&oacute; đ&atilde; hấp dẫn. Trong chất văn tự nhi&ecirc;n, mộc mạc, tỉnh queo ấy xao x&aacute;c hiện l&ecirc;n một khu&ocirc;n mặt chiến tranh vừa lạ, vừa quen. C&oacute; ra đi, c&oacute; trở về, c&oacute; những c&aacute;i chết kh&ocirc;ng hẹn trước v&agrave; cả những cắc cớ, dang dở mu&ocirc;n thuở của đời l&iacute;nh, t&igrave;nh l&iacute;nh. Chuyện l&iacute;nh trẻ bao giờ cũng x&oacute;t xa&hellip;</p>\r\n', '2024-12-06', 0, 0.000, 'Nguyễn Ngọc Tiến'),
(219, 'Gia đình có bốn chị em', 250.000, 'nxbhnv_gdcbceg.webp', 18, '<p>Bất b&igrave;nh đẳng cơ hội giữa c&aacute;c c&aacute; nh&acirc;n ch&iacute;nh l&agrave; hệ quả trực tiếp của việc chủ nghĩa th&acirc;n tộc v&agrave; t&acirc;m l&yacute; vun v&eacute;n cho gia đ&igrave;nh, d&ograve;ng họ bị đẩy l&ecirc;n mức vượt ngưỡng, bất chấp những quy tắc c&ocirc;ng bằng tối thiểu trong một x&atilde; hội thực sự d&acirc;n chủ. N&oacute; được phản &aacute;nh qua c&acirc;u tục ngữ mới: &ldquo;Thứ nhất hậu duệ, thứ nh&igrave; tiền tệ, thứ ba quan hệ, thứ tư tr&iacute; tuệ&rdquo;. V&agrave; đ&oacute; thực sự l&agrave; quả bom g&agrave;i sẵn, chỉ chực chờ để l&agrave;m nổ tung, x&eacute; n&aacute;t mọi thứ. Trong tiểu thuyết&nbsp;<strong><em>Gia đ&igrave;nh c&oacute; bốn chị em g&aacute;i</em></strong>&nbsp;của&nbsp;<strong>Phạm Thị B&iacute;ch Thủy</strong>, theo c&aacute;ch bi thảm, n&oacute; l&agrave; nguy&ecirc;n nh&acirc;n dẫn đến một cuộc mưu s&aacute;t m&aacute;u lạnh, một c&aacute;i chết đau đớn, một gia đ&igrave;nh tan n&aacute;t, một người bị truy tố v&agrave; rơi v&agrave;o sự hoảng loạn t&acirc;m thần cực độ.&nbsp;<strong><em>Gia đ&igrave;nh c&oacute; bốn chị em g&aacute;i</em></strong>&nbsp;l&agrave; một tiểu thuyết, một sản phẩm của năng lực hư cấu v&agrave; kh&aacute;i qu&aacute;t h&oacute;a nghệ thuật từ ngồn ngộn chất liệu của c&aacute;i v&ograve;ng đời đang v&acirc;y bủa ch&uacute;ng ta. Với chị, viết như một can dự t&iacute;ch cực v&agrave;o cuộc sống, viết kh&ocirc;ng phải l&agrave; đi t&igrave;m c&acirc;u trả lời, m&agrave; l&agrave; li&ecirc;n tục tra vấn c&aacute;i thế giới đầy những đổ vỡ v&agrave; khủng hoảng n&agrave;y...</p>\r\n', '2024-12-06', 1, 200.000, 'Phạm Thị Bích Thủy'),
(220, 'Doraemon - Tập 26', 20.000, 'nxbkd_doraemon.webp', 19, '<p>Những c&acirc;u chuyện về ch&uacute; m&egrave;o m&aacute;y th&ocirc;ng minh Doraemon v&agrave; nh&oacute;m bạn Nobita, Shizuka, Suneo, Jaian, Dekisugi sẽ đưa ch&uacute;ng ta bước v&agrave;o thế giới hồn nhi&ecirc;n, trong s&aacute;ng đầy ắp tiếng cười với một kho bảo bối k&igrave; diệu - những bảo bối biến ước mơ của ch&uacute;ng ta th&agrave;nh sự thật. Nhưng tr&ecirc;n tất cả Doraemon l&agrave; hiện th&acirc;n của t&igrave;nh bạn cao đẹp, của niềm kh&aacute;t khao vươn tới những tầm cao.</p>\r\n', '2024-12-06', 0, 0.000, 'Fujiko F Fujio'),
(224, 'Mùa Xa Nhà', 115.000, 'nxbtre_mxn.jpg', 15, '<p>M&ugrave;a xa nh&agrave; l&agrave; cuốn tiểu&nbsp;thuyết kể lại giai đoạn l&agrave;m l&iacute;nh t&igrave;nh nguyện của Huy, ch&agrave;ng trai th&agrave;nh phố đi nghĩa vụ qu&acirc;n sự, c&oacute; mặt v&agrave; sống chiến đấu ở một đơn vị hỏa lực bộ binh trong những năm giữa thập ni&ecirc;n 80 thế kỷ 20 ở v&ugrave;ng rừng ph&iacute;a T&acirc;y Bắc Campuchia xa x&ocirc;i. Từ một ch&agrave;ng trai thư sinh, Huy đ&atilde; dần quen với cuộc sống. Ở đ&oacute; Huy kh&ocirc;ng chỉ l&agrave;m quen với nhiều ch&agrave;ng trai th&agrave;nh phố kh&aacute;c nhập ngũ trước m&igrave;nh, m&agrave; c&ograve;n b&egrave; bạn v&agrave; chịu sự chỉ huy của những ch&agrave;ng trai từ khắp miền Tổ quốc l&agrave;m nhiệm vụ l&iacute;nh t&igrave;nh nguyện ở Campuchia. Những vui buồn, hờn giận, những mất m&aacute;t đau thương, cả những trận chiến đấu nẩy lửa&hellip; cứ từng bước t&ocirc;i cho ch&agrave;ng l&iacute;nh trẻ lần đầu ti&ecirc;n xa nh&agrave; trải qua 3 năm chiến trận trở th&agrave;nh một c&aacute;n bộ trung đội rắn r&otilde;i v&agrave; đầy bản lĩnh. Anh y&ecirc;n l&agrave;nh trở về th&agrave;nh phố, kết th&uacute;c m&ugrave;a xa nh&agrave; của đời l&iacute;nh trong sự thay đổi đến ngỡ ng&agrave;ng.</p>\r\n', '2024-12-06', 0, 0.000, 'Nguyễn Thành Nhân'),
(229, 'Conan - Tập 104', 23.000, 'nxbkd_conan.webp', 19, '<p>Truyện xoay quanh một cậu th&aacute;m tử&nbsp;trung học c&oacute; t&ecirc;n l&agrave; Kudo Shinichi&nbsp;trong l&uacute;c đang điều tra một Tổ chức &Aacute;o đen&nbsp;b&iacute; ẩn đ&atilde; bị &eacute;p phải uống một loại thuốc độc c&oacute; thể g&acirc;y chết người. May mắn l&agrave; đ&atilde; sống s&oacute;t nhưng cơ thể th&igrave; lại bị teo nhỏ như một đứa b&eacute; 6-7 tuổi. Kể từ đ&oacute; để tr&aacute;nh bị lộ th&acirc;n phận thực sự của m&igrave;nh, Shinichi đ&atilde; lấy t&ecirc;n l&agrave; Edogawa Conan&nbsp;v&agrave; chuyển đến sống ở nh&agrave; của c&ocirc; bạn thời thơ ấu Mori Ran&nbsp;c&ugrave;ng với cha của c&ocirc; ấy l&agrave; một th&aacute;m tử tư t&ecirc;n Mori Kogoro&nbsp;với hy vọng một ng&agrave;y n&agrave;o đ&oacute; cậu c&oacute; thể hạ gục Tổ chức &Aacute;o Đen v&agrave; lấy lại h&igrave;nh d&aacute;ng ban đầu.</p>\r\n', '2024-12-06', 0, 0.000, 'Gosho Aoyama'),
(232, 'Tiếng thở mùa', 80.000, 'nxbhvn_ttm.jpg', 18, '<p>Tập thơ viết về t&igrave;nh y&ecirc;u đ&ocirc;i lứa, t&igrave;nh y&ecirc;u gia đ&igrave;nh, t&igrave;nh y&ecirc;u qu&ecirc; hương; những kỷ niệm tuổi thơ vất vả m&agrave; trong s&aacute;ng; những suy tư trước thực tại cuộc sống.</p>\r\n', '2024-12-06', 0, 0.000, 'Nguyễn Hữu Phú'),
(233, 'Hà Nội những mùa cổ điển', 180.000, 'nxbhnv_hnnmcd.webp', 18, '<p>Với U&ocirc;ng Triều, viết l&agrave; để tiểu thuyết h&ograve;a hợp với chuyện đời v&agrave; h&ograve;a hợp với ch&iacute;nh m&igrave;nh. Trong&nbsp;<strong><em>H&agrave; Nội những m&ugrave;a cổ điển</em></strong>, c&acirc;u chuyện c&aacute; nh&acirc;n v&agrave; lịch sử được đan xen t&iacute;ch hợp, đem đến cho người đọc g&oacute;c nh&igrave;n đa chiều về lịch sử của lịch sử v&agrave; lịch sử của con người. Ch&uacute;ng ta c&oacute; n&ecirc;n t&igrave;m kiếm sự mặc khải thi&ecirc;ng li&ecirc;ng từ thế giới &ocirc; trọc, nh&igrave;n thấy v&ocirc; tận trong những điều nhỏ nhặt, thấu tỏ vĩnh hằng trong th&aacute;ng ng&agrave;y vội v&atilde; v&agrave; mơ ước tho&aacute;t ly thực tại tầm thường? Với g&oacute;c nh&igrave;n cởi mở, kh&ocirc;ng b&aacute;m v&agrave;o lối kể chuyện tuyến t&iacute;nh v&agrave; tri nhận định kiến, thời gian c&ugrave;ng kh&ocirc;ng gian trần thuật trong&nbsp;<em><strong>H&agrave; Nội những m&ugrave;a cổ điển</strong></em>&nbsp;được t&aacute;c giả b&oacute;p m&eacute;o v&agrave; h&ograve;a trộn với nhau. Đồng thời, về mặt kh&ocirc;ng gian kể chuyện, v&ugrave;ng tưởng tượng mở ra giao thoa với v&ugrave;ng thực tế, th&agrave;nh phố thực tại h&ograve;a lẫn v&agrave;o thế giới giả tưởng, cơm &aacute;o gạo tiền pha trộn với kh&ocirc;ng kh&iacute; mộng mơ, tạo n&ecirc;n sự c&acirc;n bằng tinh tế của &ldquo;tiểu thuyết trong tiểu thuyết&rdquo;.</p>\r\n', '2024-12-06', 0, 0.000, 'Uông Triều'),
(234, 'Mùa thơm trên tay', 120.000, 'nxbhnv_mttt.jpg', 18, '<p>Đ&acirc;y l&agrave; tập tản văn nặng t&igrave;nh qu&ecirc; hương, xứ sở v&agrave; những nỗi ưu tư của người viết trước sự đổi thay của thời cuộc. Nh&agrave; văn Nguyễn Thị Mai Phương đ&atilde; viết về miền qu&ecirc; Bắc Giang của m&igrave;nh bằng một t&igrave;nh cảm thật đặc biệt, đ&oacute; l&agrave; t&igrave;nh y&ecirc;u của người con hướng về mẹ, của người thiếu phụ nhớ về thời thiếu nữ, của người c&ocirc;ng d&acirc;n hướng về những điều tốt đẹp cho đất nước m&igrave;nh.</p>\r\n', '2024-12-06', 0, 0.000, 'Nguyễn Thị Mai Phương'),
(238, 'Đêm', 120.000, 'nxbhnv_dem.webp', 18, '<p>Tiểu thuyết&nbsp;<em><strong>Đ&ecirc;m</strong></em>&nbsp;của nh&agrave; văn&nbsp;<strong><em>Elie Wiesel</em></strong>&nbsp; được b&igrave;nh chọn l&agrave; t&aacute;c phẩm hay nhất của văn chương&nbsp;<strong><em>holocaust</em></strong>. Ng&agrave;y h&ocirc;m nay, d&ugrave; Ph&aacute;t-x&iacute;t đ&atilde; thất trận, nhưng Lịch sử giải th&iacute;ch thế n&agrave;o về những trẻ sơ sinh đ&atilde; bị n&eacute;m v&agrave;o lửa, về những đứa con sẵn s&agrave;ng đ&aacute;nh chết cha m&igrave;nh v&igrave; một miếng ăn, về những con người trần truồng giẫy chết trong c&aacute;c buồng hơi ngạt? V&agrave; Lịch sử sẽ n&oacute;i g&igrave; với những con người sống s&oacute;t bước ra từ c&aacute;c khu trại chết ch&oacute;c ấy? Kh&ocirc;ng c&oacute; lời giải đ&aacute;p th&iacute;ch đ&aacute;ng n&agrave;o cho những th&acirc;n phận v&ocirc; tội đ&atilde; bị &eacute;p chết, cũng kh&ocirc;ng c&oacute; c&acirc;u trả lời hợp lẽ về c&aacute;c trại tập trung gh&ecirc; rợn đ&atilde; đ&agrave;y đọa người Do Th&aacute;i, c&agrave;ng kh&ocirc;ng c&oacute; lời lẽ n&agrave;o c&ocirc;ng bằng cho những con người bước ra từ nhục h&igrave;nh ấy; bởi lẽ ch&iacute;nh những c&aacute;i chết phi l&yacute; đ&atilde; l&agrave; sự kiện, những trại tập trung đ&atilde; l&agrave; nơi chốn, những t&ugrave; nh&acirc;n sống s&oacute;t đ&atilde; l&agrave; nh&acirc;n chứng của một trang đen tối v&agrave; bi thảm nhất trong lịch sử lo&agrave;i người.</p>\r\n', '2024-12-06', 0, 0.000, 'Elie Wiesel'),
(242, 'Naruto - Tập 71', 23.000, 'nxbkd_naruto.jpg', 19, '<p>Truyện lấy bối cảnh bắt nguồn từ sự việc xảy ra v&agrave;o mười hai năm trước, con Hồ Ly Ch&iacute;n Đu&ocirc;i&nbsp;<strong>(Kyuubi-Kurama</strong><strong>)</strong>&nbsp;đ&atilde; tấn c&ocirc;ng L&agrave;ng L&aacute;&nbsp;(木ノ葉隠れ&nbsp;(Mộc Diệp Ẩn L&yacute;)&nbsp;<em>Konohagakure / Konohagakure no Sato</em>). Với lượng sức mạnh khổng lồ, n&oacute; c&oacute; thể dễ d&agrave;ng khiến s&oacute;ng thần&nbsp;nổi dậy v&agrave; san bằng n&uacute;i non chỉ với một trong số ch&iacute;n c&aacute;i đu&ocirc;i, n&oacute; đ&atilde; g&acirc;y ra sự hỗn loạn tột c&ugrave;ng v&agrave; giết chết nhiều người, cho tới khi người l&atilde;nh đạo của l&agrave;ng L&aacute; &ndash; ng&agrave;i Hokage Đệ Tứ&nbsp;(Namikaze Minato) đ&atilde; hi sinh để phong ấn con qu&aacute;i th&uacute; v&agrave;o cơ thể con trai m&igrave;nh - Naruto khi cậu chỉ vừa mới được sinh ra, bằng cấm thuật: Kin Jutsu Ogi &quot;Shiki Fuin&quot; (Thi Quỷ Phong Tận - một thuật cấm phải đ&aacute;nh đổi bằng t&iacute;nh mạng). Hokage Đệ Tứ, người được vinh danh v&igrave; đ&atilde; phong ấn con y&ecirc;u hồ, khi nhắm mắt xu&ocirc;i tay&nbsp;đ&atilde; mong muốn Naruto được người d&acirc;n t&ocirc;n trọng khi c&oacute; th&acirc;n x&aacute;c l&agrave; nơi chứa đựng con qu&aacute;i vật.</p>\r\n', '2024-12-06', 0, 0.000, 'Masashi Kishimoto'),
(243, 'Mùa Rễ Ngọt', 36.000, 'nxbkd_mrn.webp', 19, '<p>Mẹ của Chuồn Chuồn Ớt qua đời. Chới với v&igrave; đau khổ v&agrave; bị tr&ecirc;u chọc, Chuồn Chuồn Ớt b&eacute; nhỏ tự nhắc m&igrave;nh phải v&ocirc; cảm với đời, bỏ đi lang thang.<br />\r\nT&igrave;nh cờ, Chuồn Chuồn rớt xuống Đ&igrave;a Miễu. Ở đ&oacute; c&oacute; Cố Lộc gi&agrave; nua th&ocirc;ng th&aacute;i, biết thương y&ecirc;u tất thảy. C&oacute; cua C&agrave;ng Kềnh th&ocirc; lỗ, &aacute;c mồm &aacute;c miệng nhưng t&acirc;m thiện l&agrave;nh. C&oacute; ếch Trớt l&agrave; ng&ocirc;i sao thể h&igrave;nh, lu&ocirc;n gi&uacute;p đỡ bất k&igrave; ai cần đến&hellip;<br />\r\nTất cả đ&atilde; c&ugrave;ng cưu mang Chuồn Chuồn Ớt, gi&uacute;p c&ocirc; b&eacute; vượt qua thời gian kh&oacute; khăn, t&igrave;m &yacute; nghĩa cuộc sống mới.<br />\r\nM&ugrave;a rễ ngọt l&agrave; c&acirc;u chuyện đậm chất miền T&acirc;y nghĩa t&igrave;nh. Với lời văn gần gũi, gi&agrave;u t&igrave;nh cảm v&agrave; sống động của nh&agrave; văn V&otilde; Diệu Thanh, thế giới s&ocirc;ng nước của x&oacute;m Đ&igrave;a Miễu sẽ kh&oacute; phai mờ trong t&acirc;m tr&iacute; bạn đọc.</p>\r\n', '2024-12-06', 0, 0.000, 'Võ Diệu Thanh'),
(244, 'Tiếp Thị Phá Cách', 75.000, 'nxbtre_ttpc.jpg', 15, '<p>Tiếp thị ph&aacute; c&aacute;ch đ&atilde; giải th&iacute;ch v&agrave; minh họa sức mạnh của sự s&aacute;ng tạo trong tiếp thị v&agrave; đ&atilde; ph&aacute;c thảo những c&aacute;ch n&acirc;ng cao s&aacute;ng tạo. Đ&acirc;y l&agrave; cuốn s&aacute;ch phải đọc đối với những ai muốn tăng lợi nhuận.<br />\r\n<em>- Yoram (Jerry) Wind, Gi&aacute;m đốc học thuật, Chương tr&igrave;nh&nbsp; Wharton Fellows</em></p>\r\n', '2024-12-06', 0, 0.000, 'Philip Kotler, Fernando Trias De Bes'),
(247, 'Bếp Ấm Của Mẹ', 120.000, 'nxbtre_bacm.jpg', 15, '<p>&ldquo;Bếp Ấm Của Mẹ&rdquo; kh&ocirc;ng chỉ lưu giữ những m&oacute;n ăn, những c&acirc;u chuyện về một thời kh&oacute; qu&ecirc;n của lịch sử. N&oacute; c&ograve;n l&agrave; t&acirc;m nguyện của b&agrave; Đỗ Phương Thảo, người con g&aacute;i Phố Hiến v&agrave; Kẻ Chợ, với tr&aacute;ch nhiệm giữ g&igrave;n v&agrave; chuy&ecirc;n chở k&yacute; ức truyền lại cho thế hệ sau. Nh&uacute;ng trong kh&ocirc;ng gian đậm đặc của Phố Hiến v&agrave; Kẻ Chợ - hai tiểu v&ugrave;ng văn h&oacute;a nổi bật, m&agrave;u mỡ, rực rỡ nhất của v&ugrave;ng văn h&oacute;a ch&acirc;u thổ Bắc Bộ, b&agrave; Thảo vừa như một t&iacute;n đồ n&acirc;ng niu g&igrave;n giữ vừa như một hiện th&acirc;n của qu&aacute; khứ, của những tầng lớp văn h&oacute;a tiếp biến qua nhiều thế hệ. Cuốn s&aacute;ch như một đốm lửa nồng v&agrave; lấp l&aacute;nh d&agrave;nh tặng Qu&aacute; khứ, Hiện tại v&agrave; Tương lai.</p>\r\n', '2024-12-06', 0, 0.000, 'Đỗ Phương Thảo'),
(248, 'Hành Tinh Kì Lạ', 50.000, 'nxbkd_htkl.webp', 19, '<p>Một người cha đi t&igrave;m con v&agrave; lạc đến xứ sở người m&aacute;y ở một h&agrave;nh tinh xa lạ. &Ocirc;ng đ&atilde; chứng kiến cuộc sống sinh hoạt của thế giới người m&aacute;y kh&aacute;c xa với tưởng tượng của con người. Ở đấy, &ocirc;ng gặp bao điều k&igrave; lạ v&agrave; cả những nguy hiểm, rủi ro. Liệu &ocirc;ng c&oacute; bảo to&agrave;n được t&iacute;nh mạng, trở về Tr&aacute;i Đất v&agrave; t&igrave;m được người con th&acirc;n y&ecirc;u của m&igrave;nh?<br />\r\nBằng tr&iacute; tưởng tượng phong ph&uacute;, nh&agrave; văn Viết Linh đ&atilde; dẫn bạn đọc v&agrave;o một thế giới khoa học viễn tưởng đầy k&igrave; th&uacute;. Bước v&agrave;o&nbsp;<strong>H&agrave;nh tinh k&igrave; lạ</strong>, ch&uacute;ng ta sẽ thỏa sức kh&aacute;m ph&aacute; v&agrave; suy tưởng.</p>\r\n', '2024-12-06', 1, 40.000, 'Viết Linh'),
(249, 'Mới đi làm: Từ A - Z', 100.000, 'nxblb_mdl.jpg', 21, '<p>Cuốn s&aacute;ch cung cấp những th&ocirc;ng tin cơ bản về quyền v&agrave; nghĩa vụ của người lao động, gi&uacute;p người lao động nắm vững những kiến thức về quyền v&agrave; lợi &iacute;ch ch&iacute;nh đ&aacute;ng của m&igrave;nh khi tham gia v&agrave;o quan hệ lao động, từ đ&oacute; tr&aacute;nh được rủi ro, tranh chấp v&agrave; tự bảo vệ m&igrave;nh trong m&ocirc;i trường l&agrave;m việc.</p>\r\n\r\n<p>Cuốn s&aacute;ch thuộc Dự &aacute;n Truyền th&ocirc;ng v&agrave; giảm ngh&egrave;o về th&ocirc;ng tin trong Chương tr&igrave;nh mục ti&ecirc;u quốc gia giảm ngh&egrave;o bền vững giai đoạn 2021-2025.</p>\r\n', '2024-12-06', 0, 0.000, 'Trần Huyền Trân'),
(250, 'Hành xử theo pháp luật', 150.000, 'nxbld_hxtpl.jpg', 21, '<p>Cuốn s&aacute;ch tập hợp một số quy định ph&aacute;p luật lao động m&agrave; người lao động cần biết theo quy định tại Bộ luật Lao động năm 2019, được tr&igrave;nh b&agrave;y dưới dạng hỏi đ&aacute;p, nhằm cung cấp cho người lao động những kiến thức ph&aacute;p l&yacute; cần thiết khi tham gia v&agrave;o một quan hệ lao động, qua đ&oacute; bảo vệ được quyền v&agrave; lợi &iacute;ch hợp ph&aacute;p của ch&iacute;nh m&igrave;nh. B&ecirc;n cạnh đ&oacute;, t&aacute;c giả đ&atilde; chọn lọc, x&acirc;y dựng v&agrave; ph&acirc;n t&iacute;ch một số t&igrave;nh huống ph&aacute;p luật thường gặp c&oacute; li&ecirc;n quan tới người lao động, nhằm đem tới cho người lao động những v&iacute; dụ trực quan để c&oacute; thể ứng dụng v&agrave; bảo vệ ch&iacute;nh m&igrave;nh trong thực tế.</p>\r\n\r\n<p>Cuốn s&aacute;ch thuộc Dự &aacute;n Truyền th&ocirc;ng v&agrave; giảm ngh&egrave;o về th&ocirc;ng tin trong Chương tr&igrave;nh mục ti&ecirc;u quốc gia giảm ngh&egrave;o bền vững giai đoạn 2021-2025.</p>\r\n', '2024-12-06', 0, 0.000, 'Nguyễn Thị Thu Hoài'),
(251, 'Kỹ năng làm việc nhóm', 120.000, 'nxbld_knlvn.jpg', 21, '', '2024-12-06', 0, 0.000, 'Lê Thái Phong'),
(252, 'Kỹ năng học tập hiệu quả', 120.000, 'nxbld_knhthq.jpg', 21, '', '2024-12-06', 0, 0.000, 'Lê Thái Phong'),
(253, 'Nội dung pháp luật mới', 200.000, 'nxbld_ndplm.jpg', 21, '', '2024-12-06', 1, 160.000, 'Đặng Thị Mai Anh');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_chi_tiet_hoadon`),
  ADD KEY `chitiethoadon` (`sodh`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`madv`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`sodh`);

--
-- Chỉ mục cho bảng `loginadmin`
--
ALTER TABLE `loginadmin`
  ADD PRIMARY KEY (`tendangnhap`);

--
-- Chỉ mục cho bảng `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`Ten`),
  ADD KEY `sanpham` (`Manhasx`),
  ADD KEY `giakhuyenmai` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_2` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_3` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_4` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_5` (`giakhuyenmai`);
ALTER TABLE `sanpham` ADD FULLTEXT KEY `Ten_2` (`Ten`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_chi_tiet_hoadon` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `madv` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `sodh` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon` FOREIGN KEY (`sodh`) REFERENCES `hoadon` (`sodh`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham` FOREIGN KEY (`Manhasx`) REFERENCES `nhaxuatban` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
