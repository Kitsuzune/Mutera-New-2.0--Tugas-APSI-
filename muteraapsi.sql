-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2022 at 01:09 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muteraapsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `bencana`
--

CREATE TABLE `bencana` (
  `idBencana` int(11) NOT NULL,
  `kategoriBencana` varchar(70) NOT NULL,
  `kecamatanBencana` varchar(1000) NOT NULL,
  `keteranganBencana` text NOT NULL,
  `latitudeBencana` varchar(100) NOT NULL,
  `longitudeBencana` varchar(100) NOT NULL,
  `lokasiBencana` varchar(100) NOT NULL,
  `radius` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bencana`
--

INSERT INTO `bencana` (`idBencana`, `kategoriBencana`, `kecamatanBencana`, `keteranganBencana`, `latitudeBencana`, `longitudeBencana`, `lokasiBencana`, `radius`) VALUES
(1, 'Red', 'Kapuk - Pasar Darurat', 'Red', '-6.136051', '106.750595', 'Jl. Kapuk Darurat No.6, RW.12, Kapuk, Kecamatan Cengkareng, Kota Jakarta Barat, Daerah Khusus Ibukot', 370),
(2, 'Yellow', 'Petojo Utara Dekat Harmoni', 'Yellow', '-6.167861', '106.816327', 'RT.4/RW.7, Petojo Utara, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta', 370),
(3, 'Green', 'Jalan Cempaka Warna - Cempaka Putih', 'Green', '-6.179857', '106.867802', 'Jl. Cemp. Warna No.3, RT.8/RW.4, Cemp. Putih Tim., Kec. Cemp. Putih, Kota Jakarta Pusat, Daerah Khus', 370),
(4, 'Green', 'Petojo Utara - Gambir', 'Green', '-6.170736', '106.816908', 'Jl. Petojo Utara VII No.18 B, RT.12/RW.3, Petojo Utara, Kecamatan Gambir, Kota Jakarta Pusat, Daerah', 370),
(5, 'Green', 'Jalan Kemayoran Gempol - Utan Panjang', 'Green', '-6.162323', '106.853977', 'Jl. Kemayoran Gempol No.12, RT.1/RW.1, Utan Panjang, Kec. Kemayoran, Kota Jakarta Pusat, Daerah Khus', 370),
(6, 'Green', 'Jalan Teuku Umar (Gondangnia) - Menteng', 'Green', '-6.193186', '106.832976', 'Jl. Teuku Umar, RT.1/RW.1, Gondangdia, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakar', 370),
(7, 'Yellow', 'Panarukan - Menteng ', 'Yellow', '-6.198155', '106.8282', 'Jl. Panarukan 7, RT.2/RW.5, Menteng, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta', 370),
(8, 'Yellow', 'Kwitang Belakang Universitas BSI - Senen', 'Yellow', '-6.183035', '106.841559', 'Jl. Kramat Kwitang IE No.19, RW.8, Kwitang, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibukota Ja', 370),
(9, 'Yellow', 'Paseban - Senen', 'Yellow', '-6.192479', '106.849666', 'Jl. Paseban Bar. Gg. I, RT.4/RW.3, Paseban, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibukota Ja', 370),
(10, 'Green', 'Pegangsaan - Menteng', 'Green', '-6.197137', '106.843141', 'Jl. Gg. Ampiun No.26, RT.10/RW.1, Pegangsaan, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukot', 370),
(11, 'Red', 'Bungur - Senen', 'Red', '-6.171681', '106.846989', 'Jl. Kali Baru Timur III No.11f, RT.1/RW.7, Bungur, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibu', 370),
(12, 'Yellow', 'Tanah Tinggi - Johar Baru', 'Yellow', '-6.177546', '106.850629', 'Jl. Irawan 3-11, RW.5, Tanah Tinggi, Kec. Johar Baru, Kota Jakarta Pusat, Daerah Khusus Ibukota Jaka', 370),
(13, 'Yellow', 'Gang SS - Johar Baru', 'Yellow', '-6.185386', '106.857528', 'Jl. Percetakan Negara IIA No.15, RT.8/RW.4, Johar Baru, Kec. Johar Baru, Kota Jakarta Pusat, Daerah ', 370),
(14, 'Green', 'Taman Lapangan Banteng Pasar Baru - Sawah Besar', 'Green', '-6.1694', '106.836551', 'Jl. Lap. Banteng Selatan No.2-4, Ps. Baru, Kecamatan Sawah Besar, Kota Jakarta Pusat, Daerah Khusus ', 370),
(15, 'Yellow', 'Pasar Baru Dekat SMAN 20 Jakarta - Sawah Besar', 'Yellow', '-6.159715', '106.832811', 'Jl. Krekot Bunder II No.32-14, RT.4/RW.5, Ps. Baru, Kecamatan Sawah Besar, Kota Jakarta Pusat, Daera', 370),
(16, 'Green', 'Sahari Utara - Sawah Besar', 'Green', '-6.146033', '106.839525', 'Jl. Rajawali Selatan V, RW.2, Gn. Sahari Utara, Kecamatan Sawah Besar, Kota Jakarta Pusat, Daerah Kh', 370),
(17, 'Green', 'Kartini - Sawah Besar', 'Green', '-6.150168', '106.829672', 'Jl. Dwiwarna Raya 17-23, RT.1/RW.9, Kartini, Kecamatan Sawah Besar, Kota Jakarta Pusat, Daerah Khusu', 370),
(18, 'Yellow', 'Mangga 2 - Sawah Besar', 'Yellow', '-6.140423', '106.827615', 'Jl. Semangat No.11, RT.11/RW.8, Mangga Dua Sel., Kecamatan Sawah Besar, Kota Jakarta Pusat, Daerah K', 370),
(19, 'Green', 'Kp.Bali Kecamatan Tanah Abang', 'Green', '-6.184015', '106.816422', 'Jakarta Pusat, RT.1/RW.7, Kp. Bali, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota', 370),
(20, 'Yellow', 'Kb.Kacang Kecamatan Tanah Abang', 'Yellow', '-6.188107', '106.817857', 'Jl. Kb. Kacang 1 No.39, RT.4/RW.5, Kb. Kacang, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khu', 370),
(21, 'Red', 'Area Sekitar Rusun Tanah Abang Blok 32 - Tanah Abang', 'Red', '-6.191707', '106.816245', 'Jakarta Pusat, RW.10, Kb. Kacang, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota J', 370),
(22, 'Yellow', 'Kawasan Dekat Thamrin Residence - Tanah Abang', 'Yellow', '-6.197179', '106.816499', 'Thamrin Residence No. 35 Bk, JL Kebon Mlati, Kebon Kacang, Tanah Abang, RT.3/RW.8, Kb. Melati, Jakar', 370),
(23, 'Green', 'Petamburan - Tanah Abang', 'Green', '-6.19349', '106.807304', 'RT.16/RW.3, Petamburan, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta', 370),
(24, 'Green', 'Bendungan Hilir - Tanah Abang', 'Green', '-6.203521', '106.806873', 'Jl. Komp. Pam Lama No.9, RT.9/RW.6, Bend. Hilir, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah K', 370),
(25, 'Yellow', 'Kawasan Mintoharjo - Tanah Abang', 'Yellow', '-6.211247', '106.811409', 'Jl. Bendungan Hilir 14 No.8, RT.4/RW.3, Bend. Hilir, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daer', 370),
(26, 'Green', 'Senayan(GBK) - Tanah Abang', 'Green', '-6.223831', '106.800717', 'senayan, Gelora Bung Karno, Jl. Tinju No.1, RT.1/RW.3, Gelora, Kecamatan Tanah Abang, Kota Jakarta P', 370),
(27, 'Red', 'Cilandak Barat Dekat SMKN 20 Jakarta - Cilandak', 'Red', '-6.284059', '106.793447', 'Jl. Caringin Timur E No.7, RT.13/RW.10, Cilandak Bar., Kec. Cilandak, Kota Jakarta Selatan, Daerah K', 370),
(28, 'Red', 'Gaharu Cilandak Barat - Cilandak', 'Red', '-6.282357', '106.80022', 'Jl. Gaharu IV 16-54, RT.8/RW.13, Cilandak Bar., Kec. Cilandak, Kota Jakarta Selatan, Daerah Khusus I', 370),
(29, 'Green', 'Gang Asco Cilandak Barat - Cilandak', 'Green', '-6.288455', '106.790054', 'Gg. Asco, RT.8/RW.6, Cilandak Bar., Kec. Cilandak, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakar', 370),
(30, 'Yellow', 'Cilandak I-III Cilandak Barat - Cilandak', 'Yellow', '-6.289072', '106.799466', 'Jl. Cilandak I 36-32, RT.9/RW.1, Cilandak Bar., Kec. Cilandak, Kota Jakarta Selatan, Daerah Khusus I', 370),
(31, 'Green', 'Zamrud I Cilandak Barat - Cilandak', 'Green', '-6.296739', '106.802629', 'Jl. Zamrud I Blok C No.6, RT.2/RW.2, Cilandak Bar., Kec. Cilandak, Kota Jakarta Selatan, Daerah Khus', 370),
(32, 'Green', 'Lb.Bulus I Cilandak Barat - Cilandak', 'Green', '-6.297064', '106.792003', 'Jl. Lb. Bulus I 7, RT.4/RW.4, Cilandak Bar., Kec. Cilandak, Kota Jakarta Selatan, Daerah Khusus Ibuk', 370),
(33, 'Yellow', 'Tanjung Barat - Jagakarsa', 'Yellow', '-6.307211', '106.846582', 'Jl. Teratai VI Blok O No.1, RT.3/RW.2, Tj. Bar., Kec. Jagakarsa, Kota Jakarta Selatan, Daerah Khusus', 370),
(34, 'Green', 'Lenteng Agung - Jagakarsa', 'Green', '-6.318398', '106.838247', 'Jl. Guru Muhyin, RT.6/RW.2, Lenteng Agung, Kec. Jagakarsa, Kota Jakarta Selatan, Daerah Khusus Ibuko', 370),
(35, 'Green', 'Area Sekitar Toko Mebel Rini Furniture - Jagakarsa', 'Green', '-6.315589', '106.812567', 'Jl. Paso No.9, RT.9/RW.6, Jagakarsa, Kec. Jagakarsa, Kota Jakarta Selatan, Daerah Khusus Ibukota Jak', 370),
(36, 'Red', 'Ciganjur - Jagakarsa', 'Red', '-6.331524', '106.812245', 'Jl. Sadar II 2-94, RT.2/RW.2, Ciganjur, Kec. Jagakarsa, Kota Jakarta Selatan, Daerah Khusus Ibukota ', 370),
(37, 'Yellow', 'Srengseng Sawah - Jagakarsa', 'Yellow', '-6.34037', '106.827435', 'RT.7/RW.5, Srengseng Sawah, Kec. Jagakarsa, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta', 370),
(38, 'Green', 'Cipedak - Jagakarsa', 'Green', '-6.353697', '106.805049', 'Jl. Timbul IV G 58-44, RT.8/RW.6, Cipedak, Kec. Jagakarsa, Kota Jakarta Selatan, Daerah Khusus Ibuko', 370),
(39, 'Green', 'Grogol Utara - Kebayoran Lama', 'Green', '-6.219849', '106.786969', 'Jl. Mirah Kencana 41-8, RT.8/RW.13, Grogol Utara, Kec. Kby. Lama, Kota Jakarta Selatan, Daerah Khusu', 370),
(40, 'Green', 'Grogol Selatan - Kebayoran Lama', 'Green', '-6.226693', '106.788057', 'Jl. Lingkaran Putri Hijau 10-29, RT.10/RW.5, Grogol Sel., Kec. Kby. Lama, Kota Jakarta Selatan, Daer', 370),
(41, 'Red', 'Kebayoran Lama 3', 'Red', '-6.2297', '106.773202', 'Kebayoran Lama', 370),
(42, 'Yellow', 'Kebayoran Lama 4', 'Yellow', '-6.237551', '106.778464', 'Kebayoran Lama', 370),
(43, 'Yellow', 'Kebayoran Lama 5', 'Yellow', '-6.247419', '106.777101', 'Kebayoran Lama', 370),
(44, 'Green', 'Kebayoran Lama 6', 'Green', '-6.255331', '106.778937', 'Kebayoran Lama', 370),
(45, 'Green', 'Kebayoran Lama 7', 'Green', '-6.264896', '106.777056', 'Kebayoran Lama', 370),
(46, 'Green', 'Kebayoran Lama 7', 'Green', '-6.2709', '106.778493', 'Kebayoran Lama', 370),
(47, 'Red', 'Kebayoran Lama 8', 'Red', '-6.278455', '106.784882', 'Kebayoran Lama', 370),
(48, 'Green', 'Kebayoran Lama 9', 'Green', '-6.278154', '106.773409', 'Kebayoran Lama', 370),
(49, 'Green', 'Kebayoran Lama 10', 'Green', '-6.284504', '106.770195', 'Kebayoran Lama', 370),
(50, 'Yellow', 'Kebayoran Lama 11', 'Yellow', '-6.287959', '106.772186', 'Kebayoran Lama', 370),
(51, 'Green', 'Kebayoran Baru', 'Green', '-6.229522', '106.809803', 'Kebayoran Baru', 370),
(52, 'Green', 'Kebayoran Baru 2', 'Green', '-6.243394', '106.801561', 'Kebayoran Baru', 370),
(53, 'Yellow', 'Kebayoran Baru 3', 'Yellow', '-6.257751', '106.794173', 'Kebayoran Baru', 370),
(54, 'Yellow', 'Kebayoran Baru 4', 'Yellow', '-6.262277', '106.804866', 'Kebayoran Baru', 370),
(55, 'Yellow', 'Mampang Prapatan', 'Yellow', '-6.242852', '106.830762', 'Mampang Prapatan', 370),
(56, 'Green', 'Mampang Prapatan 2', 'Green', '-6.231846', '106.819325', 'Mampang Prapatan', 370),
(57, 'Red', 'Mampang Prapatan 3', 'Red', '-6.241427', '106.824682', 'Mampang Prapatan', 370),
(58, 'Green', 'Mampang Prapatan 4', 'Green', '-6.253862', '106.817085', 'Mampang Prapatan', 370),
(59, 'Yellow', 'Mampang Prapatan 5', 'Yellow', '-6.266803', '106.819453', 'Mampang Prapatan', 370),
(60, 'Yellow', 'Mampang Prapatan 6', 'Yellow', '-6.270965', '106.813341', 'Mampang Prapatan', 370),
(61, 'Green', 'Pancoran', 'Green', '-6.245932', '106.841793', 'Pancoran', 370),
(62, 'Green', 'Pancoran 2', 'Green', '-6.247977', '106.854102', 'Pancoran', 370),
(63, 'Yellow', 'Pancoran 3', 'Yellow', '-6.254187', '106.84535', 'Pancoran', 370),
(64, 'Green', 'Pancoran 4', 'Green', '-6.258365', '106.854948', 'Pancoran', 370),
(65, 'Green', 'Pancoran 5', 'Green', '-6.253877', '106.829225', 'Pancoran', 370),
(66, 'Red', 'Pancoran 6', 'Red', '-6.262787', '106.832926', 'Pancoran', 370),
(67, 'Yellow', 'Pasar Minggu', 'Yellow', '-6.262787', '106.832926', 'Pasar Minggu', 370),
(68, 'Yellow', 'Pasar Minggu 2', 'Yellow', '-6.283805', '106.841052', 'Pasar Minggu', 370),
(69, 'Green', 'Pasar Minggu 3', 'Green', '-6.289829', '106.838737', 'Pasar Minggu', 370),
(70, 'Green', 'Pasar Minggu 4', 'Green', '-6.297898', '106.838602', 'Pasar Minggu', 370),
(71, 'Yellow', 'Pesanggrahan', 'Yellow', '-6.225179', '106.762018', 'Pesanggrahan', 370),
(72, 'Red', 'Pesanggrahan 2', 'Red', '-6.225482', '106.742862', 'Pesanggrahan', 370),
(73, 'Green', 'Pesanggrahan 3', 'Green', '-6.227981', '106.753238', 'Pesanggrahan', 370),
(74, 'Green', 'Pesanggrahan 4', 'Green', '-6.235286', '106.758061', 'Pesanggrahan', 370),
(75, 'Green', 'Pesanggrahan 5', 'Green', '-6.248777', '106.758799', 'Pesanggrahan', 370),
(76, 'Red', 'Pesanggrahan 6', 'Red', '-6.269085', '106.761568', 'Pesanggrahan', 370),
(77, 'Yellow', 'Setiabudi', 'Yellow', '-6.212211', '106.825885', 'Setiabudi', 370),
(78, 'Green', 'Setiabudi 2', 'Green', '-6.227716', '106.829925', 'Setiabudi', 370),
(79, 'Yellow', 'Tebet', 'Yellow', '-6.220585', '106.848476', 'Tebet', 370),
(80, 'Red', 'Tebet 2', 'Red', '-6.232771', '106.85377', 'Tebet', 370),
(81, 'Green', 'Cengkareng Barat', 'Green', '-6.123004', '106.724225', 'Cengkareng Barat', 370),
(82, 'Green', 'Cengkareng Barat 2', 'Green', '-6.126208', '106.727454', 'Cengkareng Barat', 370),
(83, 'Yellow', 'Cengkareng Barat 3', 'Yellow', '-6.13387', '106.72364', 'Cengkareng Barat', 370),
(84, 'Red', 'Cengkareng Barat 4', 'Red', '-6.142168', '106.724223', 'Cengkareng Barat', 370),
(85, 'Green', 'Cengkareng Barat 5', 'Green', '-6.149339', '106.723668', 'Cengkareng Barat', 370),
(86, 'Green', 'Cengkareng Timur', 'Green', '-6.127368', '106.733366', 'Cengkareng Timur', 370),
(87, 'Green', 'Cengkareng Timur 2', 'Green', '-6.130316', '106.732298', 'Cengkareng Timur', 370),
(88, 'Green', 'Cengkareng Timur 3', 'Green', '-6.134451', '106.734954', 'Cengkareng Timur', 370),
(89, 'Red', 'Cengkareng Timur 4', 'Red', '-6.140931', '106.739707', 'Cengkareng Timur', 370),
(90, 'Yellow', 'Cengkareng Timur 5', 'Yellow', '-6.147287', '106.731933', 'Cengkareng Timur', 370),
(91, 'Yellow', 'Grogol', 'Yellow', '-6.146026', '106.787089', 'Grogol Petamburan', 370),
(92, 'Yellow', 'Grogol 2', 'Yellow', '-6.146689', '106.777743', 'Grogol Petamburan', 370),
(93, 'Green', 'Grogol 3', 'Green', '-6.151535', '106.786507', 'Grogol Petamburan', 370),
(94, 'Green', 'Grogol 4', 'Green', '-6.155466', '106.784492', 'Grogol Petamburan', 370),
(95, 'Red', 'Grogol 5', 'Red', '-6.160379', '106.775107', 'Grogol Petamburan', 370),
(96, 'Green', 'Grogol 6', 'Green', '-6.171265', '106.784236', 'Grogol Petamburan', 370),
(97, 'Green', 'Grogol 6', 'Green', '-6.171265', '106.784236', 'Grogol Petamburan', 370),
(98, 'Green', 'Kalideres', 'Green', '-6.117338', '106.703757', 'Kalideres', 370),
(99, 'Green', 'Kalideres 2', 'Green', '-6.136264', '106.707117', 'Kalideres', 370),
(100, 'Yellow', 'Kalideres 3', 'Yellow', '-6.160172', '106.703913', 'Kalideres', 370),
(101, 'Black', 'Kantor Baznas RI', 'Black', '-6.210045', '106.85961', 'Jl. Matraman Raya 142-134, RW.4, Kb. Manggis, Kec. Matraman, Kota Jakarta Timur, Daerah Khusus Ibuko', 0),
(102, 'Black', 'Kantor Baznas Aceh', 'Black', '5.572826', '95.341756', 'Jl. Teuku Nyak Arief No.148-A, Jeulingke, Kec. Syiah Kuala, Kota Banda Aceh, Aceh 23115', 0),
(103, 'Black', 'BAZNAS Provinsi Sumatera Utara', 'Black', '3.613944', '98.713732', 'Jl. Rumah Sakit H. No.47, Medan Estate, Kec. Percut Sei Tuan, Kabupaten Deli Serdang, Sumatera Utara', 0),
(104, 'Black', 'BAZNAS Provinsi Sumatera Barat', 'Black', '-0.924222', '100.362144', 'Komp. Masjid Raya Sumatera Barat, Jl. Khatib Sulaiman No.Kel, Alai Parak Kopi, Kec. Padang Utara, Ko', 0),
(105, 'Black', 'BAZNAS Provinsi Sumatera Selatan', 'Black', '-2.969935', '104.750814', 'Jl. Jend. Sudirman No.7094, Sekip Jaya, Kec. Kemuning, Kota Palembang, Sumatera Selatan 30114', 0),
(106, 'Black', 'BAZNAS Provinsi Riau', 'Black', '0.527229', '101.451339', 'Jl. Neraca No.3a, Sumahilang, Kec. Pekanbaru Kota, Kota Pekanbaru, Riau 28156', 0),
(107, 'Black', 'BAZNAS Provinsi Jambi', 'Black', '-1.620981', '103.577815', 'Jl. Pekan Baru No.55, Rw. Sari, Kec. Kota Baru, Kota Jambi, Jambi 36361', 0),
(108, 'Black', 'BAZNAS Provinsi Bangka Belitung', 'Black', '-2.119448', '106.114403', 'Jl. R. Abdulah No.206, Opas Indah, Kec. Taman Sari, Kota Pangkal Pinang, Kepulauan Bangka Belitung 3', 0),
(109, 'Black', 'BAZNAS Provinsi Bengkulu', 'Black', '-3.820567', '102.288063', 'Jl. Asahan No.2, Padang Harapan, Kec. Gading Cemp., Kota Bengkulu, Bengkulu 38225', 0),
(110, 'Black', 'BAZNAS Provinsi Lampung', 'Black', '-5.43873', '105.253555', 'Jl. Basuki Rahmat No.26, Sumur Putri, Kec. Telukbetung Selatan, Kota Bandar Lampung, Lampung 35215', 0),
(111, 'Black', 'BAZNAS Provinsi DKI Jakarta', 'Black', '-6.199418', '106.8129', 'Graha Mental Spiritual Lantai 5, Jl. Awaludin II, Tanah Abang, RT.2/RW.17, Kb. Melati, Kecamatan Tan', 0),
(112, 'Black', 'BAZNAS Provinsi Jawa Barat', 'Black', '-6.949851', '107.625626', 'Jl. Soekarno-Hatta No.458, Batununggal, Kec. Bandung Kidul, Kota Bandung, Jawa Barat 40266', 0),
(113, 'Black', 'BAZNAS Provinsi Banten', 'Black', '-6.116461', '106.156456', 'Masjid, Jl. Ki Fatoni No.54, Pegantungan, Kec. Serang, Kota Serang, Banten 42112', 0),
(114, 'Black', 'BAZNAS Provinsi Jawa Tengah', 'Black', '-6.993584', '110.419236', 'Jl. Taman Menteri Supeno, Mugassari, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50249', 0),
(115, 'Black', 'BAZNAS Provinsi D.I Yogyakarta', 'Black', '-7.799283', '110.390545', 'Komplek Masjid Pangeran Diponegoro Komplek Balaikota Yogyakarta, Jl. Kenari No.56, Muja Muju, Kec. U', 0),
(116, 'Black', 'BAZNAS Provinsi Jawa Timur', 'Black', '-7.286582', '112.713649', 'Jl. Raya Dukuh Kupang No.122-124, Dukuh Pakis, Kec. Dukuhpakis, Kota SBY, Jawa Timur 60225', 0),
(117, 'Black', 'BAZNAS Provinsi Kalimantan Barat', 'Black', '-0.041285', '109.336428', 'Jl. Jenderal Ahmad Yani No.6c, Akcaya, Kec. Pontianak Sel., Kota Pontianak, Kalimantan Barat 78113', 0),
(118, 'Black', 'BAZNAS Provinsi Kalimantan Tengah', 'Black', '-2.209601', '113.938564', 'Jl. Ahmad Yani No.97, Pahandut, Kec. Pahandut, Kota Palangka Raya, Kalimantan Tengah 74874', 0),
(119, 'Black', 'BAZNAS Provinsi Kalimantan Selatan', 'Black', '-3.319131', '114.590646', 'Komp. Masjid Raya Sabilal Muhtadin Banjarmasin. Antasan Besar, Kec. Banjarmasin Tengah, Kota Banjarm', 0),
(120, 'Black', 'BAZNAS Provinsi Kalimantan Timur', 'Black', '-0.490391', '117.148586', 'Jl. Harmonika No.01, Dadi Mulya, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75242', 0),
(121, 'Black', 'BAZNAS Provinsi Sulawesi Tengah', 'Black', '-0.891469', '119.849384', 'Jl. Bantilan No.23, Lere, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94221', 0),
(122, 'Black', 'BAZNAS Provinsi Sulawesi Utara', 'Black', '1.488206', '124.843089', 'Kompleks Masid Raya Ahmad Yani, Jl. W.R. Supratman, Lawangirung, Kec. Wenang, Kota Manado, Sulawesi ', 0),
(123, 'Black', 'BAZNAS Provinsi Sulawesi Selatan', 'Black', '-5.131021', '119.424245', 'Jl. Masjid Raya No.55, Baraya, Kec. Bontoala, Kota Makassar, Sulawesi Selatan 90211', 0),
(124, 'Black', 'BAZNAS Provinsi Sulawesi Tenggara', 'Black', '-4.02114', '122.539471', 'Jl. Perkantoran Bumi Praja, Anduonohu, Poasia, Kota Kendari, Sulawesi Tenggara 93231', 0),
(125, 'Black', 'BAZNAS Provinsi Sulawesi Barat', 'Black', '-2.683098', '118.858214', 'Jl. H.A. Malik P. Endeng(Rangas), Kec. Simboro Dan Kepulauan, Kabupaten Mamuju, Sulawesi Barat 91512', 0),
(126, 'Black', 'BAZNAS Provinsi Gorontalo', 'Black', '0.564303', '123.079186', 'd.a. Kanwil Kementerian Agama Jl. Poigar Molosipat, Wongkaditi Bar., Kota Utara, Kota Gorontalo, Gor', 0),
(127, 'Black', 'BAZNAS Provinsi Bali', 'Black', '-8.658603', '115.228192', 'Jl. Jaya Giri XXII No.5, Sumerta Kelod, Kec. Denpasar Tim., Kota Denpasar, Bali 80234', 0),
(128, 'Black', 'BAZNAS Provinsi Nusa Tenggara Barat', 'Black', '-8.579942', '116.100683', 'Masjid Al Amin, Komplek Kantor Gubernur NTB, Jl. Pejanggik No.12, Gomong, Kec. Selaparang, Kota Mata', 0),
(129, 'Black', 'BAZNAS Provinsi Nusa Tenggara Timur', 'Black', '-10.164654', '123.57952', 'Jl. Raya El-Tari No. 03, Fontein, Kec. Kota Raja, Kota Kupang, Nusa Tenggara Timur.', 0),
(130, 'Black', 'BAZNAS Provinsi Maluku', 'Black', '0.788468', '127.390266', 'Jl. Sultan M. Djabir Sjah, Maluku Utara.', 0),
(131, 'Black', 'BAZNAS Provinsi Maluku Utara', 'Black', '0.773972', '127.374874', 'Jl. Jati Lurus No.Kel, Mangga Dua, Ternate Tengah, Kota Ternate, Maluku Utara 97712.', 0),
(132, 'Black', 'BAZNAS Provinsi Papua', 'Black', '-2.594157', '140.629905', 'Jl. Raya Waena Sentani No.KM 17, Waena, Heram, Kota Jayapura, Papua 99351.', 0),
(133, 'Black', 'BAZNAS Provinsi Papua Barat', 'Black', '-2.594144', '140.629867', 'Jl. Trikora Wosi, Ruko Haji Bauw, Wosi, Manokwari Bar., Kabupaten Manokwari, Papua Bar. 98312.', 0),
(134, 'Black', 'BAZNAS Provinsi Kepulauan Riau', 'Black', '0.884464', '104.453813', 'Komplek Masjid Raya Nur Ilahi, Dompak, Bukit Bestari, Kota Tanjung Pinang, Kepulauan Riau.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `idLokasi` int(11) NOT NULL,
  `namaLokasi` varchar(256) NOT NULL,
  `maximum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`idLokasi`, `namaLokasi`, `maximum`) VALUES
(1, 'Daerah Merah Jakarta Barat\r\n', 1000000),
(2, 'Daerah Kuning Jakarta Pusat\r\n', 1000000),
(3, 'Daerah Merah Jakarta Barat\r\n', 1000000),
(4, 'Zakat untuk Anak Yatim di Indonesia\r\n', 1000000),
(5, 'Zakat untuk disalurkan ke rumahzakat.com\r\n', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `idRiwayat` int(11) NOT NULL,
  `idUsers` int(11) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `status` enum('belum membayar','sudah bayar') NOT NULL,
  `idLokasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`idRiwayat`, `idUsers`, `Jumlah`, `status`, `idLokasi`) VALUES
(1, 1, 2000, 'belum membayar', 1),
(2, 6, 20000, 'belum membayar', 1),
(6, 6, 20000, 'belum membayar', 1),
(8, 6, 30000, 'belum membayar', 1),
(9, 6, 30000, 'belum membayar', 1),
(10, 6, 30000, 'belum membayar', 1),
(11, 6, 30000, 'belum membayar', 1),
(12, 6, 1000, 'belum membayar', 2),
(13, 6, 1000, 'belum membayar', 1),
(14, 7, 3332221, 'belum membayar', 3),
(15, 7, 3332221, 'belum membayar', 1),
(16, 9, 200000, 'sudah bayar', 3),
(17, 10, 100, 'belum membayar', 1),
(18, 10, 100, 'belum membayar', 3),
(19, 10, 200000, 'sudah bayar', 1),
(20, 11, 50000, 'sudah bayar', 1),
(21, 11, 70000, 'belum membayar', 1),
(22, 12, 50000, 'belum membayar', 3),
(23, 1, 100, 'belum membayar', 1),
(24, 1, 1000, 'belum membayar', 1),
(25, 1, 200, 'belum membayar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL,
  `namaLengkap` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` enum('admin','users') NOT NULL,
  `md4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUsers`, `namaLengkap`, `username`, `password`, `status`, `md4`) VALUES
(1, 'Adminstrator1', 'admin', '$2y$10$U73DK4qGu7HDmu6iPv9kB.Ai9EC.mdsJ82XymCKXF/Cwkp4KZ5iEe', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(6, 'taufik', 'user', '$2y$10$UWQpkW5reJvjhmoM/h8f3.0gCy/EHUuQdLPf2eAqONdirj54kBuFG', 'users', 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'Turu', 'turuyaturu', '$2y$10$eh38xPDhig0njnn2NwV5P.DDLoD3W4.eeZCPM62nxOCsjFpSFj64u', 'users', '749b73c41a6f3386dd403dd4a424c3f2'),
(8, 'Tes', 'Tes', '$2y$10$Xl7jrVLVY39/RuIO31C0SevmPwrjHMDKRk/UUz9AtHIBnPIvH7FW.', 'users', 'b93939873fd4923043b9dec975811f66'),
(12, 'wiwit', 'wiwit', '$2y$10$G4ssb3H02CkZQ4SlAdHW6OPkeJU8NlHSzeSvcRahSd5AJFkPetZn2', 'users', '84ea681b95e8c1c7e11c51e068b23188'),
(13, 'wiwit', 'wiwit10', '$2y$10$ZwVPNe7EoGbIv6zp.zPnZeWj9L2erQtLWdhqFqUYaobqFrxo9Pi1i', 'users', '1fdcccde79f4fafd797ae5ea2f72d4bc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bencana`
--
ALTER TABLE `bencana`
  ADD PRIMARY KEY (`idBencana`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`idLokasi`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`idRiwayat`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bencana`
--
ALTER TABLE `bencana`
  MODIFY `idBencana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `idLokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `idRiwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
