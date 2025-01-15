-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2025 at 08:45 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2210010419_hukum`
--

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `kode_kegiatan` varchar(11) NOT NULL,
  `nama_kegiatan` varchar(35) NOT NULL,
  `kode_program` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`kode_kegiatan`, `nama_kegiatan`, `kode_program`) VALUES
('K01', 'Kebersihan Lingkungan', 'A01');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `kode_program` varchar(11) NOT NULL,
  `nama_program` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`kode_program`, `nama_program`) VALUES
('A01', 'Bersih-bersih');

-- --------------------------------------------------------

--
-- Table structure for table `rekam_transaksi`
--

CREATE TABLE `rekam_transaksi` (
  `id` varchar(11) NOT NULL,
  `kode_program` varchar(11) NOT NULL,
  `kode_kegiatan` varchar(11) NOT NULL,
  `kode_sub_kegiatan` varchar(11) NOT NULL,
  `pagu` varchar(35) NOT NULL,
  `blokir` varchar(35) NOT NULL,
  `realisasi` varchar(35) NOT NULL,
  `sisa_dana` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekam_transaksi`
--

INSERT INTO `rekam_transaksi` (`id`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `pagu`, `blokir`, `realisasi`, `sisa_dana`) VALUES
('001', 'A01', 'K01', 'L01', '1 Jt Rupiah', 'No', '500 Rb', '500 Rb');

-- --------------------------------------------------------

--
-- Table structure for table `sub_kegiatan`
--

CREATE TABLE `sub_kegiatan` (
  `kode_sub_kegiatan` varchar(11) NOT NULL,
  `nama_sub_kegiatan` varchar(35) NOT NULL,
  `kode_kegiatan` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_kegiatan`
--

INSERT INTO `sub_kegiatan` (`kode_sub_kegiatan`, `nama_sub_kegiatan`, `kode_kegiatan`) VALUES
('L01', 'Pembersihan lingkungan ', 'K01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`kode_kegiatan`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`kode_program`);

--
-- Indexes for table `rekam_transaksi`
--
ALTER TABLE `rekam_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_kegiatan`
--
ALTER TABLE `sub_kegiatan`
  ADD PRIMARY KEY (`kode_sub_kegiatan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
