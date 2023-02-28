-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 07:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan_masyarakat_niko`
--

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` char(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('33121225677889', 'Niko Saputra', 'NIKO', '1', '1'),
('33121225677889', 'minyak goreng', 'admin', 'a', '081252992361'),
('33121225677889', 'minyak goreng', 'admin', 'a', '081252992361'),
('331', 'Niko Saputra', 'a', 'c4ca4238a0b923820dcc509a6f75849b', '081252992361'),
('33121225670102', 'minyak goreng', 'b', 'a', '081252992361'),
('33121225677876', 'Dio Alif Utama', 'admin', 'ADMIN', '081252992356'),
('33121225677876', 'Dio Alif Utama', 'admin', '', '081252992356'),
('33121225677876', 'Dio Alif Utama', 'admin', 'admin', '081252992356'),
('33121225677876', 'Dio Alif Utama', 'admin', '', '081252992356'),
('33121225677876', 'Dio Alif Utama', 'admin', 'admin', '081252992356'),
('33121225677876', 'Dio Alif Utama', 'admin', 'admin', '081252992356'),
('33121225677876', 'Dio Alif Utama', 'admin', 'admin', '081252992356'),
('33121225677889', 'Niko Saputra', 'a', 'b', '081252992356'),
('33121225670102', 'Niko Saputra', 'b', '2', '081252992361'),
('33121225677889', 'Dio Alif Utama', 'd', '1', '081252992356'),
('33121225677889', 'Niko Saputra', 'NIKO', '12', '081252992361');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` char(20) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  `status` enum('0','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(1, '2023-02-06', '33121225677889', 'AC Mati!!!', 'halo.gif', 'proses'),
(2, '2023-02-06', '33121225677889', 'Penjaga Galak !!!', 'coc.jpg', 'selesai'),
(3, '2023-02-06', '33121225677889', 'Wifi Ngelag!!!', 'Cara-Mempercepat-Koneksi-Wifi-di-HP-Android.jpg', 'selesai'),
(4, '2023-02-06', '33121225677889', 'Sekolah Terlalu Panas!!!!', 'wp4068642.jpg', 'selesai');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `no_telp`, `level`) VALUES
(1, 'NIKO', 'a', 'c4ca4238a0b923820dcc509a6f75849b', '081252992361', 'admin'),
(2, 'NIKO', 'b', '1', '081252992361', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(0, 1, '2023-02-06', 'ok', 2),
(0, 2, '2023-02-06', 'maaf', 2),
(0, 1, '2023-02-06', 'hhhhh', 2),
(0, 3, '2023-02-06', 'siap', 2),
(0, 4, '2023-02-06', 'ok', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
