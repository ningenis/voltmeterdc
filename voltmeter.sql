-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27 Mar 2018 pada 14.09
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voltmeter`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengukurandc`
--

CREATE TABLE `pengukurandc` (
  `id_pengukuran` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nilai_tegangan` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengukurandc`
--

INSERT INTO `pengukurandc` (`id_pengukuran`, `timestamp`, `nilai_tegangan`) VALUES
(1, '2018-03-26 04:55:39', 5),
(2, '2018-03-27 04:18:56', 0),
(3, '2018-03-27 04:18:58', 0),
(4, '2018-03-27 04:19:00', 0.39),
(5, '2018-03-27 04:19:03', 0.39),
(6, '2018-03-27 04:19:06', 0.39),
(7, '2018-03-27 04:19:09', 0),
(8, '2018-03-27 04:19:12', 0),
(9, '2018-03-27 04:19:15', 0),
(10, '2018-03-27 04:19:18', 0),
(11, '2018-03-27 04:19:30', 0.39),
(12, '2018-03-27 04:19:33', 0),
(13, '2018-03-27 04:19:36', 0),
(14, '2018-03-27 04:19:39', 0),
(15, '2018-03-27 04:19:42', 0),
(16, '2018-03-27 04:19:45', 0),
(17, '2018-03-27 04:19:48', 0),
(18, '2018-03-27 04:20:00', 0),
(19, '2018-03-27 04:20:03', 0),
(20, '2018-03-27 04:20:06', 0),
(21, '2018-03-27 04:20:09', 0),
(22, '2018-03-27 04:20:12', 0),
(23, '2018-03-27 04:20:15', 0),
(24, '2018-03-27 04:20:18', 0),
(25, '2018-03-27 04:20:21', 0),
(26, '2018-03-27 04:20:24', 0),
(27, '2018-03-27 04:20:27', 0),
(28, '2018-03-27 04:20:30', 0),
(29, '2018-03-27 04:20:33', 0),
(30, '2018-03-27 04:20:36', 0),
(31, '2018-03-27 04:20:39', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengukurandc`
--
ALTER TABLE `pengukurandc`
  ADD PRIMARY KEY (`id_pengukuran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengukurandc`
--
ALTER TABLE `pengukurandc`
  MODIFY `id_pengukuran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
