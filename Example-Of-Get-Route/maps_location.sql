-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19 Nov 2017 pada 05.21
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maps_location`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `start-name` varchar(255) NOT NULL,
  `lat-start` float NOT NULL,
  `lng-start` varchar(10) NOT NULL,
  `end-name` varchar(255) NOT NULL,
  `lat-end` varchar(10) NOT NULL,
  `lng-end` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `start_name` varchar(255) NOT NULL,
  `lat_start` float(10,6) NOT NULL,
  `lng_start` float(10,6) NOT NULL,
  `end_name` varchar(255) NOT NULL,
  `lat_end` float(10,6) NOT NULL,
  `lng_end` float(10,6) NOT NULL,
  `distance` float(10,6) NOT NULL,
  `avoid_tolls` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `events`
--

INSERT INTO `events` (`id`, `start_name`, `lat_start`, `lng_start`, `end_name`, `lat_end`, `lng_end`, `distance`, `avoid_tolls`) VALUES
(1, 'bandung', -6.917464, 107.619125, 'jakarta', -6.175110, 106.865036, 0.000000, 0),
(4, 'Sanggar Kencana X ', -6.934877, 107.665085, 'Politeknik Negeri Bandung', -6.872034, 107.574791, 0.000000, 0),
(3, 'Politeknik Negeri Bandung', -6.872034, 107.574791, 'Intitut Teknologi Bandung', -6.891480, 107.610657, 0.000000, 0),
(5, 'Kantor Walikota Bandung', -6.910759, 107.609825, 'Kantor DPRD kota Bandung', -6.916817, 107.634880, 0.000000, 0),
(6, 'Bandung', -6.917464, 107.619125, 'Surabaya', -7.257472, 112.752090, 0.000000, 0),
(7, 'Jalan Sanggar Kencana V, Jatisari, Kota Bandung, Jawa Barat, Indonesia', -6.934578, 107.666557, 'Pondok Indah Mall 1, Jalan Metro Pondok Indah, Pondok Pinang, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta, Indonesia', -6.265703, 106.784470, 0.000000, 0),
(8, 'Badan Perpustakaan dan Kearsipan Daerah (Bapusipda) Provinsi Jawa Barat, Jalan Kawaluyaan Indah III, Jatisari, Kota Bandung, Jawa Barat, Indonesia', -6.934585, 107.663200, 'Politeknik Negeri Bandung, Ciwaruga, Kabupaten Bandung Barat, Jawa Barat, Indonesia', -6.872034, 107.574791, 0.000000, 0),
(10, 'Jalan Sanggar Kencana X, Jatisari, Kota Bandung, Jawa Barat, Indonesia', -6.934877, 107.665085, 'Cikatomas, Tasikmalaya, Jawa Barat, Indonesia', -7.614535, 108.273338, 0.000000, 0),
(11, 'Renan Store Bandung, Jalan K.H. Ahmad Dahlan, Turangga, Kota Bandung, Jawa Barat, Indonesia', -6.934414, 107.624001, 'Kawasan Punclut, Jalan Rereongan Sarupi, Ciumbuleuit, Kota Bandung, Jawa Barat, Indonesia', -6.855628, 107.611450, 0.000000, 0),
(12, 'Surabaya, Jawa Timur, Indonesia', -7.257472, 112.752090, 'Semarang, Kota Semarang, Jawa Tengah, Indonesia', -7.005145, 110.438126, 317.273987, 0),
(13, 'Jakarta Raya, Indonesia', -6.175110, 106.865036, 'Tasikmalaya, Jawa Barat, Indonesia', -7.350581, 108.217163, 257.454010, 0),
(14, 'Jakarta, Daerah Khusus Ibukota Jakarta, Indonesia', -6.208764, 106.845596, 'Bogor, Kota Bogor, Jawa Barat, Indonesia', -6.597147, 106.806038, 55.477001, 0),
(15, 'Jakarta, Daerah Khusus Ibukota Jakarta, Indonesia', -6.208764, 106.845596, 'Cirebon, Kota Cirebon, Jawa Barat, Indonesia', -6.732023, 108.552315, 239.651993, 0),
(16, 'Jakarta Raya, Indonesia', -6.175110, 106.865036, 'Bandung, Kota Bandung, Jawa Barat, Indonesia', -6.917464, 107.619125, 162.468002, 0),
(17, 'Jakarta Raya, Indonesia', -6.175110, 106.865036, 'Bekasi, Jawa Barat, Indonesia', -6.238270, 106.975571, 19.792999, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `markers`
--

CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `lat`, `lng`, `type`) VALUES
(1, 'Best Bar Ever', '123 Main St', -37.123451, 122.123451, 'bar'),
(2, 'Tahu', '', 37.441402, -122.159134, 'bar'),
(3, 'Rumah', 'Jalan Sanggar Kencana X', -6.934907, 107.665131, 'bar'),
(4, 'PVJ', '', -6.889276, 107.595764, 'bar'),
(5, 'tes', '', -6.940741, 107.599930, 'bar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
