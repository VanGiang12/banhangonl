-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 25, 2024 at 07:07 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlbanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(1000) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `madonhang`, `masanpham`, `tensanpham`, `giasanpham`, `soluongsanpham`) VALUES
(1, 2, 2, 'TOKIBOKI', 12000, 2),
(2, 3, 3, 'Trà sữa trân châu đường đen', 12000, 2),
(3, 6, 4, 'Điện thoại iPhone 7 Plus 256GB 4', 24590000, 1),
(4, 6, 13, 'Điện thoại iPhone 7 Plus 256GB 13', 167940000, 6);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `tenkh` varchar(50) NOT NULL,
  `sdt` int(15) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `tenkh`, `sdt`, `email`) VALUES
(1, 'aa', 2147483647, 'a@gmail.com'),
(2, 'j', 86953250, 'ghs@gmail.com'),
(3, 'jh', 86953250, 'ghs@gmail.com'),
(4, 'jh', 86953250, 'ghs@gmail.com'),
(5, 'jh', 86953250, 'ghs@gmail.com'),
(6, 'k', 86598644, 'gkd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(255) NOT NULL,
  `hinhanhloaisanpham` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`, `hinhanhloaisanpham`) VALUES
(1, 'Điện thoại', 'https://cdn-icons-png.flaticon.com/512/186/186239.png'),
(2, 'Laptop', 'https://icons.iconarchive.com/icons/custom-icon-design/flatastic-7/512/Laptop-icon.png');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(255) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `hinhanhsanpham` varchar(255) NOT NULL,
  `motasanpham` varchar(10000) NOT NULL,
  `idloaisanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhanhsanpham`, `motasanpham`, `idloaisanpham`) VALUES
(1, 'Điện thoại iPhone 7 Plus 256GB 1', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(2, 'Điện thoại iPhone 7 256GB 2', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(3, 'Điện thoại iPhone 7 256GB 3', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(4, 'Điện thoại iPhone 7 Plus 256GB 4', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(5, 'Điện thoại iPhone 7 256GB 5', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 1),
(6, 'Điện thoại iPhone 7 Plus 256GB 6', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(7, 'Điện thoại iPhone 7 256GB 7', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(8, 'Điện thoại iPhone 7 Plus 256GB 8', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(9, 'Điện thoại iPhone 7 256GB 9', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(10, 'Điện thoại iPhone 7 Plus 256GB 10', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(11, 'Điện thoại iPhone 7 256GB 11', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(12, 'Điện thoại iPhone 7 Plus 256GB 12', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(13, 'Điện thoại iPhone 7 Plus 256GB 13', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(14, 'Điện thoại iPhone 7 256GB 14', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(15, 'Điện thoại iPhone 7 256GB 15', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(16, 'Điện thoại iPhone 7 Plus 256GB 16', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(17, 'Điện thoại iPhone 7 256GB 17', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 1),
(18, 'Điện thoại iPhone 7 Plus 256GB 18', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(19, 'Điện thoại iPhone 7 256GB 19', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(20, 'Điện thoại iPhone 7 Plus 256GB 20', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(21, 'Điện thoại iPhone 7 256GB 21', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(22, 'Điện thoại iPhone 7 Plus 256GB 22', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(23, 'Điện thoại iPhone 7 256GB 23', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(24, 'Điện thoại iPhone 7 Plus 256GB 24', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(25, 'Điện thoại iPhone 7 Plus 256GB 25', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(26, 'Điện thoại iPhone 7 256GB 26', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(27, 'Điện thoại iPhone 7 256GB 27', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(28, 'Điện thoại iPhone 7 Plus 256GB 28', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(29, 'Điện thoại iPhone 7 256GB 29', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 1),
(30, 'Điện thoại iPhone 7 Plus 256GB 30', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(31, 'Điện thoại iPhone 7 256GB 31', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(32, 'Điện thoại iPhone 7 Plus 256GB 32', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(33, 'Điện thoại iPhone 7 256GB 33', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(34, 'Điện thoại iPhone 7 Plus 256GB 34', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(35, 'Điện thoại iPhone 7 256GB 35', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(36, 'Điện thoại iPhone 7 Plus 256GB 36', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(37, 'Điện thoại iPhone 7 Plus 256GB 37', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(38, 'Điện thoại iPhone 7 256GB 38', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(39, 'Điện thoại iPhone 7 256GB 39', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(40, 'Điện thoại iPhone 7 Plus 256GB 40', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(41, 'Điện thoại iPhone 7 256GB 41', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 1),
(42, 'Điện thoại iPhone 7 Plus 256GB 42', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(43, 'Điện thoại iPhone 7 256GB 43', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(44, 'Điện thoại iPhone 7 Plus 256GB 44', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(45, 'Điện thoại iPhone 7 256GB 45', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(46, 'Điện thoại iPhone 7 Plus 256GB 46', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1),
(47, 'Điện thoại iPhone 7 256GB 47', 27990000, 'https://cdn.tgdd.vn/Products/Images/42/87840/iphone-7-plus-256gb-2-400x460.png', 'Với thiết kế không quá nhiều thay đổi,\nvẫn bảo tồn vẻ đẹp truyền thống từ thời iPhone 6 Plus, iPhone 7 Plus được trang bị nhiều nâng cấp đáng giá như camera kép, đạt chuẩn chống nước chống bụi cùng cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 5.5\", Retina HD Hệ điều hành: 105 10 Camera sau: Hai camera 12 MP Camera trước: 7 MP CPU: Apple A10\nFusion 4 nhân 64-bit RAM: 3 GB Bộ nhớ trong: 256 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 2900 mAh', 2),
(48, 'Điện thoại iPhone 7 Plus 256GB 48', 24590000, 'https://cdn.tgdd.vn/Products/Images/42/87837/iphone-7-128gb-4-400x460.png', 'iPhone 7 256 GB mang trên mình thiết kế quen thuộc từ thời iPhone 6, máy được trang bị bộ nhớ lưu trữ lớn, khả năng chống nước cao cấp, dàn loa stereo cho âm thanh hay và cấu hình cực mạnh. Màn hình: LED-backlit IPS LCD, 4.7\", Retina HD Hệ điều hành: 10S 10 Camera sau: 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nhân 64-bit RAM: 2 GB Bộ nhớ\ntrong: 128 GB Hỗ trợ thẻ nhớ: Không Thẻ SIM: 1 SIM, Nano SIM Dung lượng pin: 1960 mAh', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
