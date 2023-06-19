-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 06:18 AM
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
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `id_anggota` int(50) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `no_tlp` int(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgl_lahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`id_anggota`, `nama_anggota`, `no_tlp`, `alamat`, `tgl_lahir`) VALUES
(2247, 'risa', 2147483647, 'panjer', '0000-00-00'),
(272014, 'vika', 2147483647, 'labuan bajo', '2003-12-01'),
(2201475, 'vika', 2147483647, 'tabanan', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` int(50) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun_terbit` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul_buku`, `penulis`, `penerbit`, `tahun_terbit`) VALUES
(25189, 'Filosofi Teras', 'Henry Manampiring\r\n', 'Jakarta : Kompas,', '0000-00-00'),
(62797, 'Laskar Pelangi', 'Andrea Hirata', 'coconut books', '0000-00-00'),
(508615, 'mariposa', 'luluk HF', 'coconut books', '0000-00-00');

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

-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `id_petugas` int(50) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `jabatan_petugas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_petugas`
--

INSERT INTO `tb_petugas` (`id_petugas`, `nama_petugas`, `jabatan_petugas`) VALUES
(12, 'ocaliana', 'penjaga rak 2'),
(23, 'risanti', 'penjaga ketua 1'),
(60, 'iva', 'penjaga rak 3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`id_petugas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
