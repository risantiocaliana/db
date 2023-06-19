-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 06:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjaman`
--

CREATE TABLE `tb_peminjaman` (
  `id_peminjaman` int(50) NOT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `id_buku` int(50) NOT NULL,
  `id_anggota` int(50) NOT NULL,
  `id_petugas` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_peminjaman`
--

INSERT INTO `tb_peminjaman` (`id_peminjaman`, `tgl_pinjam`, `tgl_kembali`, `id_buku`, `id_anggota`, `id_petugas`) VALUES
(101, '2023-05-16', '2023-05-30', 508615, 2247, 23),
(231, '2023-02-23', '2023-02-19', 508615, 272014, 60),
(678, '2023-04-23', '2023-05-23', 25189, 2247, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
