-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2023 at 07:16 PM
-- Server version: 5.7.39-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u413712j_i_kas`
--

-- --------------------------------------------------------

--
-- Table structure for table `is_kas`
--

CREATE TABLE `is_kas` (
  `no_kwitansi` int(8) UNSIGNED ZEROFILL NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `penerimaan` int(11) NOT NULL DEFAULT '0',
  `pengeluaran` int(11) NOT NULL DEFAULT '0',
  `created_user` smallint(6) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `is_kas`
--

INSERT INTO `is_kas` (`no_kwitansi`, `tanggal`, `keterangan`, `penerimaan`, `pengeluaran`, `created_user`, `created_date`) VALUES
(00000001, '2023-01-01', 'Kas Awal 2023', 1873000, 0, 5, '2023-01-21 12:22:24'),
(00000002, '2023-02-01', 'Pak rahagia line N', 485000, 0, 5, '2023-02-01 14:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `is_sampah`
--

CREATE TABLE `is_sampah` (
  `no_kwitansi` int(8) UNSIGNED ZEROFILL NOT NULL,
  `tanggal` date NOT NULL,
  `bulan` varchar(2) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `bulantahun` varchar(7) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `penerimaan_sampah` int(11) NOT NULL DEFAULT '0',
  `penerimaan_kas` int(11) NOT NULL DEFAULT '0',
  `total_penerimaan` int(11) NOT NULL DEFAULT '0',
  `created_user` smallint(6) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `is_sampah`
--

INSERT INTO `is_sampah` (`no_kwitansi`, `tanggal`, `bulan`, `tahun`, `bulantahun`, `nama_lengkap`, `keterangan`, `penerimaan_sampah`, `penerimaan_kas`, `total_penerimaan`, `created_user`, `created_date`) VALUES
(00000001, '2023-02-05', '01', '2023', '202301', 'Ganesa', 'jan-23', 38000, 10000, 0, 6, '2023-02-06 01:38:14'),
(00000002, '2023-02-05', '02', '2023', '202302', 'Ganesa', 'feb-23', 38000, 10000, 0, 6, '2023-02-06 01:38:35'),
(00000003, '2023-02-05', '03', '2023', '202303', 'Ganesa', 'mar-23', 38000, 10000, 0, 6, '2023-02-06 01:39:01'),
(00000004, '2023-02-05', '04', '2023', '202304', 'Ganesa', 'apr-23', 38000, 10000, 0, 6, '2023-02-06 01:39:25'),
(00000005, '2023-02-05', '05', '2023', '202305', 'Ganesa', 'mei-23', 38000, 10000, 0, 6, '2023-02-06 01:39:42'),
(00000006, '2023-02-05', '06', '2023', '202306', 'Ganesa', 'jun-23', 38000, 10000, 0, 6, '2023-02-06 01:39:59'),
(00000007, '2023-02-05', '07', '2023', '202307', 'Ganesa', 'jul-23', 38000, 10000, 0, 6, '2023-02-06 01:40:18'),
(00000008, '2023-02-05', '08', '2023', '202308', 'Ganesa', 'agustus-23', 38000, 10000, 0, 6, '2023-02-06 01:40:37'),
(00000009, '2023-02-05', '09', '2023', '202309', 'Ganesa', 'sept-23', 38000, 10000, 0, 6, '2023-02-06 01:40:56'),
(00000010, '2023-02-05', '10', '2023', '202310', 'Ganesa', 'okt-23', 38000, 10000, 0, 6, '2023-02-06 01:41:14'),
(00000011, '2023-02-05', '11', '2023', '202311', 'Ganesa', 'nov-23', 38000, 10000, 0, 6, '2023-02-06 01:54:15'),
(00000012, '2023-02-05', '12', '2023', '202312', 'Ganesa', 'des-23', 38000, 10000, 0, 6, '2023-02-06 01:59:30'),
(00000013, '2023-02-05', '01', '2023', '202301', 'Eris', 'jan-23', 38000, 10000, 0, 6, '2023-02-07 08:10:23'),
(00000014, '2023-02-05', '02', '2023', '202302', 'Eris', 'feb-23', 38000, 10000, 0, 6, '2023-02-07 08:16:48'),
(00000015, '2023-02-05', '03', '2023', '202303', 'Eris', 'mar-23', 38000, 10000, 0, 6, '2023-02-07 08:48:29'),
(00000016, '2023-02-05', '04', '2023', '202304', 'Eris', 'apr-23', 38000, 10000, 0, 6, '2023-02-07 08:49:56'),
(00000017, '2023-02-05', '05', '2023', '202305', 'Eris', 'mei-23', 38000, 10000, 0, 6, '2023-02-07 08:53:11'),
(00000018, '2023-02-05', '06', '2023', '202306', 'Eris', 'jun-23', 38000, 10000, 0, 6, '2023-02-07 09:01:54'),
(00000019, '2023-02-05', '07', '2023', '202307', 'Eris', 'jul-23', 38000, 10000, 0, 6, '2023-02-07 09:03:23'),
(00000020, '2023-02-05', '08', '2023', '202308', 'Eris', 'agustus-23', 38000, 10000, 0, 6, '2023-02-07 09:12:30'),
(00000021, '2023-02-05', '09', '2023', '202309', 'Eris', 'sept-23', 38000, 10000, 0, 6, '2023-02-07 09:14:45'),
(00000022, '2023-02-05', '10', '2023', '202310', 'Eris', 'okt-23', 38000, 10000, 0, 6, '2023-02-07 09:20:22'),
(00000023, '2023-02-05', '11', '2023', '202311', 'Eris', 'nov-23', 38000, 10000, 0, 6, '2023-02-07 09:21:42'),
(00000024, '2023-02-05', '12', '2023', '202312', 'Eris', 'des-23', 38000, 10000, 0, 6, '2023-02-07 09:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `is_users`
--

CREATE TABLE `is_users` (
  `id_user` smallint(6) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telepon` varchar(12) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `level` enum('admin','user','warga') NOT NULL DEFAULT 'warga',
  `status` enum('aktif','blokir') NOT NULL DEFAULT 'aktif',
  `blok` varchar(2) DEFAULT NULL,
  `no_rumah` varchar(2) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `no_kk` varchar(16) DEFAULT NULL,
  `jumlah_keluarga` int(2) DEFAULT NULL,
  `keterangan` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `is_users`
--

INSERT INTO `is_users` (`id_user`, `username`, `nama_lengkap`, `password`, `email`, `telepon`, `foto`, `level`, `status`, `blok`, `no_rumah`, `alamat`, `no_ktp`, `no_kk`, `jumlah_keluarga`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Eris', 'Eriska Febrianto', '877adeebfbfc1f2bb3059c677d40d482', 'eriska.f@gmail.com', '081310008555', 'IMG_20220504_192230a.jpg', 'admin', 'aktif', 'Q1', '34', 'perum gpp q1 no 34 RT01 RW15 ds. Sukajaya Kec. Cibitung Kab. Bekasi', '3216131002900014', '3216131101160010', 4, 'menetap', '2016-05-01 01:42:53', '2023-02-07 11:28:26'),
(2, 'user', 'Dummy untuk test', 'ee11cbb19052e40b07aac0ca060c23ee', 'user@gmail.com', '081234567890', 'kadina.png', 'user', 'blokir', 'Q1', '44', 'gramapuri persada cikarang', '3216123131231231', '3211321231321231', 0, 'buat test aja ini mah', '2016-08-01 01:42:53', '2023-02-03 06:53:04'),
(4, 'bambang', 'Bambang Supraptono', '75e7ff84aedc63f9407a5cd147d91eec', 'bbg.s.1111@gmail.com', '081222888716', 'IMG20230115141722.jpg', 'user', 'aktif', 'N1', '37', 'Gramapuri Persada RT 07 RW 13, Sukajaya', '0', '0', 5, 'QN Brothers, yes yes yes', '2023-01-21 09:27:01', '2023-01-27 10:30:47'),
(5, 'eron', 'Achmad Barry Dzulkarnain Alkhoeron', 'dacd3c60e466e25291f8c742cfced97e', 'abdkhoeron27@gmail.com', '081281858865', 'IMG-20221007-WA0021.jpg', 'user', 'aktif', 'Q1', '32', 'Perumahan Gramapuri persada blok Q1 no 32', '0', '0', 3, '', '2023-01-21 09:27:20', '2023-01-24 02:13:34'),
(6, 'rezha', 'Rezha Satya Pratama', 'e0c890fb78e8b2e1a8626cf52323b810', 'rezhasatya05@gmail.com', '082125303395', NULL, 'user', 'aktif', 'Q1', '37', 'Gramapuri Persada', '0', '0', 3, '', '2023-01-21 09:27:47', '2023-02-02 04:03:50'),
(7, 'rahagia', 'Rahagia', '030e8da4b553edea3d0b5754de8499da', '', '', NULL, 'user', 'aktif', NULL, '', '', '0', '0', 4, '', '2023-01-21 09:28:04', '2023-02-02 04:11:08'),
(8, 'hendrik', 'Hendrik', '030e8da4b553edea3d0b5754de8499da', 'hendrik.1991@yahoo.co.id', '085782921004', NULL, 'warga', 'aktif', 'N1', '', '', '0', '0', 5, '', '2023-01-21 12:52:28', '2023-01-23 15:43:00'),
(9, 'Ismier', 'Muhammad Ismir', '030e8da4b553edea3d0b5754de8499da', 'izmirmohammad@gmail.com', '081294498424', NULL, 'warga', 'aktif', 'N1', '35', '', '0', '0', 1, '', '2023-01-21 12:53:19', '2023-01-29 12:53:40'),
(10, 'rickyn130', 'Ricky Susanto', '030e8da4b553edea3d0b5754de8499da', 'rickysusanto267@gmail.com', '085719201202', NULL, 'warga', 'aktif', NULL, '', '', '0', '0', 1, '', '2023-01-21 13:15:12', '2023-01-23 15:43:36'),
(11, 'Ganesa', 'Ganesa popi haryanto', '030e8da4b553edea3d0b5754de8499da', 'hanungganesa291@gmail.com', '', NULL, 'warga', 'aktif', NULL, '', '', '0', '0', 1, '', '2023-01-22 07:25:36', '2023-01-23 15:43:32'),
(12, 'agung', 'Agung', '030e8da4b553edea3d0b5754de8499da', NULL, NULL, NULL, 'warga', 'aktif', NULL, '', '', '0', '0', 3, '', '2023-01-22 08:51:40', '2023-01-23 15:43:50'),
(13, 'faisal', 'Faisal', '030e8da4b553edea3d0b5754de8499da', NULL, NULL, NULL, 'warga', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 15:53:36', '2023-01-23 15:53:36'),
(14, 'sanfiar', 'Sanfiar', '030e8da4b553edea3d0b5754de8499da', NULL, NULL, NULL, 'warga', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 15:54:49', '2023-01-23 15:54:49'),
(15, 'dodi', 'Dodi', '030e8da4b553edea3d0b5754de8499da', '', '', NULL, 'warga', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 15:54:57', '2023-01-23 15:55:25'),
(16, 'sandra', 'Sandra Andika', '030e8da4b553edea3d0b5754de8499da', '', '', NULL, 'warga', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 15:54:59', '2023-01-23 15:55:51'),
(17, 'abdul', 'Abdul', '030e8da4b553edea3d0b5754de8499da', '', '', NULL, 'warga', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 15:54:59', '2023-01-23 15:58:12'),
(18, 'bowo', 'Bowo', '030e8da4b553edea3d0b5754de8499da', NULL, NULL, NULL, 'warga', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 15:58:28', '2023-01-23 15:58:28'),
(19, 'zuki', 'Marzuki', '030e8da4b553edea3d0b5754de8499da', NULL, NULL, NULL, 'warga', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 15:58:53', '2023-01-23 15:58:53'),
(20, 'rusli', 'Ruslianto', '030e8da4b553edea3d0b5754de8499da', NULL, NULL, NULL, 'warga', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 15:59:13', '2023-01-23 15:59:13'),
(21, 'ali', 'Ali', '030e8da4b553edea3d0b5754de8499da', NULL, NULL, NULL, 'warga', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 15:59:23', '2023-01-23 15:59:23'),
(22, 'hendi', 'Hendi', '030e8da4b553edea3d0b5754de8499da', NULL, NULL, NULL, 'warga', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 16:00:03', '2023-01-23 16:00:03'),
(23, 'mercy', 'Mercy Sianturi', '030e8da4b553edea3d0b5754de8499da', NULL, NULL, NULL, 'warga', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 16:00:38', '2023-01-23 16:00:38'),
(24, 'ivan', 'Ivan', '030e8da4b553edea3d0b5754de8499da', NULL, NULL, NULL, 'warga', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 16:00:56', '2023-01-23 16:00:56'),
(25, 'rudi', 'Rudi', '030e8da4b553edea3d0b5754de8499da', NULL, NULL, NULL, 'warga', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 16:01:12', '2023-01-23 16:01:12'),
(26, 'taufik', 'Taufik', '030e8da4b553edea3d0b5754de8499da', NULL, NULL, NULL, 'warga', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 16:01:31', '2023-01-23 16:01:31'),
(27, 'haris', 'Haris', '030e8da4b553edea3d0b5754de8499da', NULL, NULL, NULL, 'warga', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 16:02:00', '2023-01-23 16:02:00'),
(28, 'yusuf', 'Yusuf', '030e8da4b553edea3d0b5754de8499da', '', '', NULL, 'warga', 'aktif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-23 16:02:41', '2023-02-02 04:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `id_user1` smallint(6) NOT NULL,
  `nama_lengkap1` varchar(50) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `agent` varchar(200) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `is_kas`
--
ALTER TABLE `is_kas`
  ADD PRIMARY KEY (`no_kwitansi`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `is_sampah`
--
ALTER TABLE `is_sampah`
  ADD PRIMARY KEY (`no_kwitansi`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `is_users`
--
ALTER TABLE `is_users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id_user1`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `is_kas`
--
ALTER TABLE `is_kas`
  ADD CONSTRAINT `is_kas_ibfk_1` FOREIGN KEY (`created_user`) REFERENCES `is_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `is_sampah`
--
ALTER TABLE `is_sampah`
  ADD CONSTRAINT `is_sampah_ibfk_1` FOREIGN KEY (`created_user`) REFERENCES `is_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
