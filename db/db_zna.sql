-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2018 at 01:31 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_zna`
--
CREATE DATABASE IF NOT EXISTS `db_zna` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_zna`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT '0',
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(4, 'photo', '2017-01-24 01:31:13', 1, 'Administrator', 15, '463cc7af7e2f6907c0aea38df42bb31c.jpg'),
(10, 'artikel koi', '2018-04-19 07:25:52', 1, 'Administrator', 27, '463cc7af7e2f6907c0aea38df42bb31c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `galeri_gambar` varchar(60) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(49, 'Jenis1', '2018-04-19 07:27:34', 'WhatsApp_Image_2018-04-18_at_21_52_54.jpeg', 10, 1, 'Administrator'),
(50, 'jenis2', '2018-04-19 07:39:21', 'WhatsApp_Image_2018-04-18_at_21_52_55_(1).jpeg', 10, 1, 'Administrator'),
(51, 'jenis3', '2018-04-19 07:39:39', 'WhatsApp_Image_2018-04-18_at_21_52_55.jpeg', 10, 1, 'Administrator'),
(52, 'jenis4', '2018-04-19 07:41:21', 'WhatsApp_Image_2018-04-18_at_21_52_56_(1).jpeg', 10, 1, 'Administrator'),
(53, 'jenis5', '2018-04-19 07:41:46', 'WhatsApp_Image_2018-04-18_at_21_52_56.jpeg', 10, 1, 'Administrator'),
(54, 'jenis6', '2018-04-19 07:45:28', 'WhatsApp_Image_2018-04-18_at_21_52_57_(1).jpeg', 10, 1, 'Administrator'),
(55, 'jenis7', '2018-04-19 07:46:15', 'WhatsApp_Image_2018-04-18_at_21_52_57.jpeg', 10, 1, 'Administrator'),
(56, 'jenis8', '2018-04-19 07:46:36', 'WhatsApp_Image_2018-04-18_at_21_52_58.jpeg', 10, 1, 'Administrator'),
(57, 'jenis9', '2018-04-19 07:47:21', 'WhatsApp_Image_2018-04-18_at_21_52_59_(1).jpeg', 10, 1, 'Administrator'),
(58, 'jenis10', '2018-04-19 08:26:05', 'WhatsApp_Image_2018-04-18_at_21_52_59.jpeg', 10, 1, 'Administrator'),
(59, 'jenis11', '2018-04-19 08:26:21', 'WhatsApp_Image_2018-04-18_at_21_53_00.jpeg', 10, 1, 'Administrator'),
(61, 'artikel1', '2018-04-19 08:26:57', 'WhatsApp_Image_2018-04-18_at_21_56_07.jpeg', 10, 1, 'Administrator'),
(62, 'artikel2', '2018-04-19 08:27:13', 'WhatsApp_Image_2018-04-18_at_21_56_08_(1).jpeg', 10, 1, 'Administrator'),
(63, 'artikel3', '2018-04-19 08:27:34', 'WhatsApp_Image_2018-04-18_at_21_56_08.jpeg', 10, 1, 'Administrator'),
(64, 'artikel4', '2018-04-19 08:27:56', 'WhatsApp_Image_2018-04-18_at_21_56_09.jpeg', 10, 1, 'Administrator'),
(65, 'artikel5', '2018-04-19 08:28:15', 'WhatsApp_Image_2018-04-18_at_21_56_10_(1).jpeg', 10, 1, 'Administrator'),
(66, 'artikel6', '2018-04-19 08:28:31', 'WhatsApp_Image_2018-04-18_at_21_56_10.jpeg', 10, 1, 'Administrator'),
(67, 'artikel7', '2018-04-19 08:29:17', 'WhatsApp_Image_2018-04-18_at_21_56_11.jpeg', 10, 1, 'Administrator'),
(68, '1', '2018-04-19 08:35:50', 'WhatsApp_Image_2018-04-18_at_21_46_01.jpeg', 4, 1, 'Administrator'),
(70, '2', '2018-04-19 08:36:23', 'WhatsApp_Image_2018-04-18_at_21_46_50.jpeg', 4, 1, 'Administrator'),
(71, '3', '2018-04-19 08:36:44', 'WhatsApp_Image_2018-04-18_at_21_46_54.jpeg', 4, 1, 'Administrator'),
(72, '4', '2018-04-19 08:37:08', 'WhatsApp_Image_2018-04-18_at_21_46_58_(1).jpeg', 4, 1, 'Administrator'),
(73, '5', '2018-04-19 08:37:36', 'WhatsApp_Image_2018-04-18_at_21_47_35.jpeg', 4, 1, 'Administrator'),
(74, '6', '2018-04-19 08:37:52', 'WhatsApp_Image_2018-04-18_at_21_47_37.jpeg', 4, 1, 'Administrator'),
(77, 'artikel8', '2018-04-19 08:42:43', 'WhatsApp_Image_2018-04-18_at_21_45_17.jpeg', 10, 1, 'Administrator'),
(78, 'home', '2018-04-19 08:44:21', 'WhatsApp_Image_2018-04-18_at_21_36_07.jpeg', 4, 1, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:44:12', 0),
(3, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ini adalah pesan ', '2017-06-21 03:45:57', 0),
(5, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:53:19', 0),
(7, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Hi, there!', '2017-07-01 07:28:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) NOT NULL,
  `kategori_tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'SO Palembang', '2018-04-18 03:00:53'),
(2, 'SO OKI', '2018-04-18 03:00:53'),
(3, 'SO Baturaja', '2018-04-18 03:02:15'),
(4, 'SO Pagar Alam', '2018-04-18 03:02:15'),
(5, 'SO Banyuasin', '2018-04-18 03:02:15'),
(6, 'SO Empat Lawang', '2018-04-18 03:02:15'),
(7, 'SO Lubuk Linggau', '2018-04-18 07:32:59'),
(8, 'Home', '2018-04-18 07:47:04'),
(9, 'Visi & Misi', '2018-04-18 08:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT '1',
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Administrator', 'Just do it', 'L', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '', 'fikrifiver97@gmail.com', '081277159401', 'facebook.com/m_fikri_setiadi', 'twitter.com/fiver_fiver', '', '', 1, '1', '2016-09-03 06:07:55', '74eec6ad37550cc12fe8fa83d46878af.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text,
  `tulisan_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT '0',
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`) VALUES
(25, 'Struktur Oraganisasi Palembang', '<p><img alt="" src="/ck/ckeditor/kcfinder/upload/images/SOZNAPalembang.JPG" style="height:483px; width:814px" /></p>\r\n', '2018-04-18 04:31:07', 1, 'SO Palembang', 0, 'SOZNAPalembang.JPG', 1, 'Administrator', 0),
(26, 'Struktur Oraganisasi OKI', '<p><img alt="" src="/ck/ckeditor/kcfinder/upload/images/OKI.JPG" style="height:100%; width:100%" /></p>\r\n', '2018-04-18 07:27:37', 2, 'SO OKI', 0, 'OKI.JPG', 1, 'Administrator', 0),
(27, 'Struktur Oraganisasi Pagar Alam', '<p><img alt="" src="/ck/ckeditor/kcfinder/upload/images/pagaralam.JPG" style="height:100%; width:100%" /></p>\r\n', '2018-04-18 07:28:46', 4, 'SO Pagar Alam', 0, 'pagaralam.JPG', 1, 'Administrator', 0),
(28, 'Struktur Oraganisasi Banyuasin', '<p><img alt="" src="/ck/ckeditor/kcfinder/upload/images/Banyuasin.JPG" style="height:100%; width:100%" /></p>\r\n', '2018-04-18 07:30:23', 5, 'SO Banyuasin', 0, 'Banyuasin.JPG', 1, 'Administrator', 0),
(29, 'Struktur Oraganisasi Baturaja', '<p><img alt="" src="/ck/ckeditor/kcfinder/upload/images/Baturaja.JPG" style="height:100%; width:100%" /></p>\r\n', '2018-04-18 07:31:06', 3, 'SO Baturaja', 0, 'Baturaja.JPG', 1, 'Administrator', 0),
(30, 'Struktur Oraganisasi Empat Lawang', '<p><img alt="" src="/ck/ckeditor/kcfinder/upload/images/empatlawang.JPG" style="height:100%; width:100%" /></p>\r\n', '2018-04-18 07:32:14', 6, 'SO Empat Lawang', 0, 'empatlawang.JPG', 1, 'Administrator', 0),
(31, 'Struktur Oraganisasi Lubuk Linggau', '<p><img alt="" src="/ck/ckeditor/kcfinder/upload/images/STRUKTUR%20ORGANISASI%20ZNA%20LUBUKLINGGAU%20CHAPTER_.jpg" style="height:471px; width:826px" /></p>\r\n', '2018-04-18 07:34:13', 7, 'SO Lubuk Linggau', 0, 'STRUKTUR_ORGANISASI_ZNA_LUBUKLINGGAU_CHA', 1, 'Administrator', 0),
(32, 'SRIWIJAYA CUP JUNIOR KOI SHOW 2018', '<p><img alt="" src="/ck/ckeditor/kcfinder/upload/images/photo_2018-04-17_21-12-22.jpg" style="height:1029px; width:700px" /></p>\r\n\r\n<p><strong>JENIS YANG DILOMBAKAN</strong></p>\r\n\r\n<table border="1" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:51.7pt; vertical-align:top; width:233.75pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>Gosanke</strong></p>\r\n			</td>\r\n			<td style="height:51.7pt; vertical-align:top; width:233.75pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kohaku</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Taisho Sanshoku</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Showa Sanshoku</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="vertical-align:top; width:233.75pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>&nbsp; Sakura</strong></p>\r\n			</td>\r\n			<td style="vertical-align:top; width:233.75pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Shiro Utsuri</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Goshiki</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kawamarimono</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kinginrin A</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kinginrin B</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kujaku</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="vertical-align:top; width:233.75pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>&nbsp; Tsubaki</strong></p>\r\n			</td>\r\n			<td style="vertical-align:top; width:233.75pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Hikarimoyomorito</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tancho</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Koromo</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Doitsu</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kumonryu</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="vertical-align:top; width:233.75pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>Botan</strong></p>\r\n			</td>\r\n			<td style="vertical-align:top; width:233.75pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Hikarimujimono</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Asagi</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Shusui</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Bekko</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Hikari Utsurimono</p>\r\n\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Hi Ki Utsurimono</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>UKURAN YANG DILOMBAKAN</strong></p>\r\n\r\n<table border="1" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:21.3pt; vertical-align:top; width:91.9pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0-10 cm</p>\r\n			</td>\r\n			<td style="height:21.3pt; vertical-align:top; width:269.35pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Super mini champion</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:20.95pt; vertical-align:top; width:91.9pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 11-15 cm</p>\r\n			</td>\r\n			<td style="height:20.95pt; vertical-align:top; width:269.35pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mini Champion</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:42.5pt; vertical-align:top; width:91.9pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16-25 cm</p>\r\n			</td>\r\n			<td style="height:42.5pt; vertical-align:top; width:269.35pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Baby Champion</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:41.0pt; vertical-align:top; width:91.9pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 26-35 cm</p>\r\n			</td>\r\n			<td style="height:41.0pt; vertical-align:top; width:269.35pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Junior Champion</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:35.9pt; vertical-align:top; width:91.9pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 36-45 cm</p>\r\n			</td>\r\n			<td style="height:35.9pt; vertical-align:top; width:269.35pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Young Champion</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:42.4pt; vertical-align:top; width:91.9pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 46-55 cm</p>\r\n			</td>\r\n			<td style="height:42.4pt; vertical-align:top; width:269.35pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Grand Champion</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>BIAYA PENDAFTARAN</strong></p>\r\n\r\n<table border="1" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:30.6pt; vertical-align:top; width:99.0pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0-10 cm</p>\r\n			</td>\r\n			<td style="height:30.6pt; vertical-align:top; width:262.25pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Rp.75.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:27.45pt; vertical-align:top; width:99.0pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;11-15 cm</p>\r\n			</td>\r\n			<td style="height:27.45pt; vertical-align:top; width:262.25pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Rp. 100.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:27.75pt; vertical-align:top; width:99.0pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16-20 cm</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style="height:27.75pt; vertical-align:top; width:262.25pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Rp. 150.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:26.1pt; vertical-align:top; width:99.0pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;21-25 cm</p>\r\n			</td>\r\n			<td style="height:26.1pt; vertical-align:top; width:262.25pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Rp. 200.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:20.85pt; vertical-align:top; width:99.0pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;26-30 cm</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style="height:20.85pt; vertical-align:top; width:262.25pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Rp. 250.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:29.55pt; vertical-align:top; width:99.0pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;31-35 cm</p>\r\n			</td>\r\n			<td style="height:29.55pt; vertical-align:top; width:262.25pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Rp. 300.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:29.7pt; vertical-align:top; width:99.0pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;36-40 cm</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style="height:29.7pt; vertical-align:top; width:262.25pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Rp. 350.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:29.95pt; vertical-align:top; width:99.0pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;41-45 cm</p>\r\n			</td>\r\n			<td style="height:29.95pt; vertical-align:top; width:262.25pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Rp. 450.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:29.95pt; vertical-align:top; width:99.0pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;46-50 cm</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style="height:29.95pt; vertical-align:top; width:262.25pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Rp. 600.000</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:29.95pt; vertical-align:top; width:99.0pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;51-55 cm</p>\r\n			</td>\r\n			<td style="height:29.95pt; vertical-align:top; width:262.25pt">\r\n			<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Rp. 750.000</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>HADIAH</strong></p>\r\n\r\n<table border="1" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td style="vertical-align:top; width:233.75pt">\r\n			<p>Super Mini Champion A-B-C-D</p>\r\n\r\n			<p>@500.000 IDR + Piala</p>\r\n\r\n			<p>Best In Size</p>\r\n\r\n			<p>@250.000 IDR + Piala</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style="vertical-align:top; width:233.75pt">\r\n			<p>Mini Champion A-B-C-D</p>\r\n\r\n			<p>@750.000 IDR + Piala</p>\r\n\r\n			<p>Best In Size</p>\r\n\r\n			<p>@500.000 IDR + Piala</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="vertical-align:top; width:233.75pt">\r\n			<p>Baby Champion A-B-C-D</p>\r\n\r\n			<p>@1000.000 IDR + Piala</p>\r\n\r\n			<p>Best In Size</p>\r\n\r\n			<p>@750.000 IDR + Piala</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style="vertical-align:top; width:233.75pt">\r\n			<p>Junior Champion A-B-C-D</p>\r\n\r\n			<p>@1.250.000 IDR + Piala</p>\r\n\r\n			<p>Best In Size</p>\r\n\r\n			<p>@1000.000 IDR + Piala</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="vertical-align:top; width:233.75pt">\r\n			<p>Young Champion A-B-C-D</p>\r\n\r\n			<p>@1.500.000 IDR + Piala</p>\r\n\r\n			<p>Best In Size</p>\r\n\r\n			<p>@1.250.000 IDR + Piala</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style="vertical-align:top; width:233.75pt">\r\n			<p>Grand Champion A-B-C-D</p>\r\n\r\n			<p>@2000.000 IDR + Piala</p>\r\n\r\n			<p>Best In Size</p>\r\n\r\n			<p>@1.500.000 IDR + Piala</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="vertical-align:top; width:233.75pt">\r\n			<p>Most Point</p>\r\n\r\n			<p>@2.500.000 IDR + Piala</p>\r\n\r\n			<p>Most Entry</p>\r\n\r\n			<p>@2.500.000 IDR + Piala</p>\r\n\r\n			<p>Most Handling</p>\r\n\r\n			<p>@2.500.000 IDR + Piala</p>\r\n\r\n			<p>Best Lokal A-B-C-D</p>\r\n\r\n			<p>@1.000.000 IDR + Piala</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style="vertical-align:top; width:233.75pt">\r\n			<p>*Sewa Vat 750.000 IDR</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>INFORMASI</strong></p>\r\n\r\n<p><strong>Amran</strong></p>\r\n\r\n<p>Hp. 08127832960</p>\r\n\r\n<p><strong>Fadly</strong></p>\r\n\r\n<p>Hp. 081280079287</p>\r\n\r\n<p><strong>Evi Riswandi</strong></p>\r\n\r\n<p>Hp. 081322730888</p>\r\n\r\n<p><strong>Anjar (Koi Centre Kediri)</strong></p>\r\n\r\n<p>Hp. 081231933335</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>JUDGES</strong></p>\r\n\r\n<p>1 Judges Shinkokai From Japan + Judges Kois Indonesia</p>\r\n', '2018-04-18 07:49:31', 8, 'Home', 0, 'photo_2018-04-17_21-12-22.jpg', 1, 'Administrator', 0),
(33, 'Visi & Misi', '<p><strong><em>Visi</em></strong></p>\r\n\r\n<p>Sumatera Selatan sebagai basis Unggulan industri ikan Koi di Indonesia.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Misi</em></strong></p>\r\n\r\n<ol>\r\n	<li>Meningkatkan kualitas dan kuantitas ikan Koi sebagai &nbsp;industri Unggulan di Provinsi Sumatera Selatan.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Mendorong iklim regulasi dan investasi yang mudah dan menarik, serta baku mutu berstandar internasional ;</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Menjadikan industri ikan koi sebagai salah satu industri unggulan yang bersinergi dengan industri ekonomi kreatif lainnya, dan memperluas jangkauan pemasaran secara berkesinambungan ;</li>\r\n</ol>\r\n', '2018-04-18 08:18:30', 9, 'Visi & Misi', 0, '2627586_20140217015353.jpg', 1, 'Administrator', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
