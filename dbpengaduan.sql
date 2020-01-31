-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2020 at 04:07 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbpengaduan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengaduan`
--

CREATE TABLE IF NOT EXISTS `tbl_pengaduan` (
`id` int(5) NOT NULL,
  `masalah` varchar(25) NOT NULL,
  `nama_pelapor` varchar(100) NOT NULL,
  `no_pelapor` varchar(50) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `pemberi` varchar(50) NOT NULL,
  `status` varchar(25) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengaduan`
--

INSERT INTO `tbl_pengaduan` (`id`, `masalah`, `nama_pelapor`, `no_pelapor`, `tgl_masuk`, `penerima`, `pemberi`, `status`, `keterangan`) VALUES
(6, 'lapor narkoba', 'Lokot Marpaung', '01/lokotM/2019', '2020-01-01', 'Marno', 'Putri', 'selesai', 'SERING TERJADI TRANSAKSI NARKOBA'),
(7, 'lapor judi', 'Hasan Simatupang', '02/HS/2019/Perjudian', '2020-01-01', 'Marno', 'Putri', 'Ditindak', 'Pidana Perjudian'),
(8, 'lapor pekat', 'Budi', '03/PID.B/2018/PN.KIS', '2020-02-01', 'Marno', 'Putri', 'Ada', 'Pidana Perjudian'),
(9, 'lapor preman', 'Miswar, Susi, Lastri', '01/PDT.G/2018/PN.KIS', '2020-03-01', 'Ipul', 'Setiawan', 'Ada', 'Perdata Gugatan'),
(10, 'Arsip Perdata', 'Mastur', '02/PDT.G/2018/PN.KIS', '2020-01-12', 'Ipul', 'Setiawan', 'Ada', 'Perdata Gugatan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penindakan`
--

CREATE TABLE IF NOT EXISTS `tbl_penindakan` (
  `no_pelapor` varchar(50) NOT NULL,
  `penindakan` varchar(50) NOT NULL,
  `tgl_penindakan` varchar(25) NOT NULL,
  `tgl_selesai` varchar(25) NOT NULL,
  `lama_penindakan` int(5) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
`id` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penindakan`
--

INSERT INTO `tbl_penindakan` (`no_pelapor`, `penindakan`, `tgl_penindakan`, `tgl_selesai`, `lama_penindakan`, `keterangan`, `id`) VALUES
('01/PID.B/2018/PN.KIS', 'A. Husain', '2017-12-31', '2017-12-31', 0, '-', 4),
('01/PDT.G/2018/PN.KIS', 'J. Siahaan', '2018-12-10', 'Belum Kembali', 0, '-', 5),
('02/PID.B/2018/PN.KIS', 'Bejo', '2018-12-11', 'Belum Kembali', 0, 'Input ke CTS', 6),
('01/lokotM/2019', 'Zulkarnain', '2020-01-01', '2020-01-07', 6, 'ss', 7),
('02/HS/2019/Perjudian', 'Julianto', '2020-01-15', 'Belum Kembali', 0, '-', 8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(25) NOT NULL,
  `paswd` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `paswd`, `email`, `nama`, `level`, `ket`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'devk@gmail.com', 'Developer Kampoeng', 1, 'Staff Kepaniteraan Hukum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_pengaduan`
--
ALTER TABLE `tbl_pengaduan`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `no_perkara` (`no_pelapor`);

--
-- Indexes for table `tbl_penindakan`
--
ALTER TABLE `tbl_penindakan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pengaduan`
--
ALTER TABLE `tbl_pengaduan`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_penindakan`
--
ALTER TABLE `tbl_penindakan`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
