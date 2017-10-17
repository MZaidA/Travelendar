-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2017 at 03:04 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lander v1.5`
--

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `DISTRICT_ID` int(11) NOT NULL,
  `PROVINCE_ID` int(11) NOT NULL,
  `DISTRICT_NAME` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`DISTRICT_ID`, `PROVINCE_ID`, `DISTRICT_NAME`) VALUES
(1, 1, 'Banda Aceh'),
(2, 1, 'Langsa'),
(3, 1, 'Lhokseumawe'),
(4, 1, 'Meulaboh'),
(5, 1, 'Sabang'),
(6, 1, 'Subulussalam'),
(7, 17, 'Denpasar'),
(8, 1, 'Pangkalpinang'),
(9, 14, 'Cilegon'),
(10, 14, 'Serang'),
(11, 14, 'Tangerang Selatan'),
(12, 14, 'Tangerang'),
(13, 7, 'Bengkulu'),
(14, 29, 'Gorontalo'),
(15, 11, 'Kota Administrasi Jakarta Barat'),
(16, 11, 'Kota Administrasi Jakarta Pusat'),
(17, 11, 'Kota Administrasi Jakarta Selatan'),
(18, 11, 'Kota Administrasi Jakarta Timur'),
(19, 11, 'Kota Administrasi Jakarta Utara'),
(20, 5, 'Sungai Penuh'),
(21, 5, 'Jambi'),
(22, 12, 'Bandung'),
(23, 12, 'Bekasi'),
(24, 12, 'Bogor'),
(25, 12, 'Cimahi'),
(26, 12, 'Cirebon'),
(27, 12, 'Depok'),
(28, 12, 'Sukabumi'),
(29, 12, 'Tasikmalaya'),
(30, 12, 'Banjar'),
(31, 13, 'Magelang'),
(32, 13, 'Pekalongan'),
(33, 13, 'Purwokerto'),
(34, 13, 'Salatiga'),
(35, 13, 'Semarang'),
(36, 13, 'Surakarta'),
(37, 13, 'Tegal'),
(38, 15, 'Batu'),
(39, 15, 'Blitar'),
(40, 15, 'Kediri'),
(41, 15, 'Madiun'),
(42, 15, 'Malang'),
(43, 15, 'Mojokerto'),
(44, 15, 'Pasuruan'),
(45, 15, 'Probolinggo'),
(46, 15, 'Surabaya'),
(47, 20, 'Pontianak'),
(48, 20, 'Singkawang'),
(49, 22, 'Banjarbaru'),
(50, 22, 'Banjarmasin'),
(51, 21, 'Palangkaraya'),
(52, 23, 'Balikpapan'),
(53, 23, 'Bontang'),
(54, 23, 'Samarinda'),
(55, 24, 'Tarakan'),
(56, 10, 'Batam'),
(57, 10, 'Tanjungpinang'),
(58, 8, 'Bandar Lampung'),
(59, 8, 'Metro'),
(60, 32, 'Ternate'),
(61, 32, 'Tidore Kepulauan'),
(62, 31, 'Ambon'),
(63, 31, 'Tual'),
(64, 18, 'Bima'),
(65, 18, 'Mataram'),
(66, 19, 'Kupang'),
(67, 34, 'Sorong'),
(68, 33, 'Jayapura'),
(69, 4, 'Dumai'),
(70, 4, 'Pekanbaru'),
(71, 27, 'Makassar'),
(72, 27, 'Palopo'),
(73, 27, 'Parepare'),
(74, 26, 'Palu'),
(75, 28, 'Bau-Bau'),
(76, 28, 'Kendari'),
(77, 25, 'Bitung'),
(78, 25, 'Kotamobagu'),
(79, 25, 'Manado'),
(80, 25, 'Tomohon'),
(81, 3, 'Bukittinggi'),
(82, 3, 'Padang'),
(83, 3, 'Padangpanjang'),
(84, 3, 'Pariaman'),
(85, 3, 'Payakumbuh'),
(86, 3, 'Sawahlunto'),
(87, 3, 'Solok'),
(88, 6, 'Lubuklinggau'),
(89, 6, 'Pagaralam'),
(90, 6, 'Palembang'),
(91, 6, 'Prabumulih'),
(92, 2, 'Binjai'),
(93, 2, 'Medan'),
(94, 2, 'Padang Sidempuan'),
(95, 2, 'Pematangsiantar'),
(96, 2, 'Sibolga'),
(97, 2, 'Tanjungbalai'),
(98, 2, 'Tebingtinggi'),
(99, 16, 'Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `EVENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PUBLIC_ID` int(11) DEFAULT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  `LOC_LOCATION_ID` int(11) NOT NULL,
  `PRIVATE_ID` int(11) DEFAULT NULL,
  `EVENT_NAME` varchar(40) NOT NULL,
  `ARRIVAL_AT_LOCATION` datetime DEFAULT NULL,
  `EVENT_FINISHED` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `DEPARTURE_TO_LOCATION` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `island`
--

CREATE TABLE `island` (
  `ISLAND_ID` int(11) NOT NULL,
  `ISLAND_NAME` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `island`
--

INSERT INTO `island` (`ISLAND_ID`, `ISLAND_NAME`) VALUES
(1, 'Sumatra'),
(2, 'Bangka'),
(3, 'Belitung'),
(4, 'Jawa'),
(5, 'Kalimantan'),
(6, 'Sulawesi'),
(7, 'Bali'),
(8, 'Nusa Tenggara Barat'),
(9, 'Nusa Tenggara Timur'),
(10, 'Papua'),
(11, 'Riau');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISTRICT_ID` int(11) NOT NULL,
  `LOCATION_NAME` varchar(40) NOT NULL,
  `ADDRESS` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `private_transportation`
--

CREATE TABLE `private_transportation` (
  `PRIVATE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRIVATE_TYPE` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `private_transportation_traveling`
--

CREATE TABLE `private_transportation_traveling` (
  `PRIVATE_TRAVELING_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOCATION_ID` int(11) NOT NULL,
  `LOC_LOCATION_ID` int(11) NOT NULL,
  `PRIVATE_ID` int(11) NOT NULL,
  `TRAVELING_TIME` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `PROVINCE_ID` int(11) NOT NULL,
  `ISLAND_ID` int(11) NOT NULL,
  `PROVINCE_NAME` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`PROVINCE_ID`, `ISLAND_ID`, `PROVINCE_NAME`) VALUES
(1, 1, 'Aceh'),
(2, 1, 'SUMATERA UTARA'),
(3, 1, 'SUMATERA BARAT'),
(4, 1, 'RIAU'),
(5, 1, 'JAMBI'),
(6, 1, 'SUMATERA SELATAN'),
(7, 1, 'BENGKULU'),
(8, 1, 'LAMPUNG'),
(9, 2, 'KEP. BANGKA BELITUNG'),
(10, 11, 'KEP. RIAU'),
(11, 4, 'DKI JAKARTA'),
(12, 4, 'JAWA BARAT'),
(13, 4, 'JAWA TENGAH'),
(14, 4, 'BANTEN'),
(15, 4, 'JAWA TIMUR'),
(16, 4, 'YOGYAKARTA'),
(17, 7, 'BALI'),
(18, 8, 'NUSA TENGGARA BARAT'),
(19, 9, 'NUSA TENGGARA TIMUR'),
(20, 5, 'KALIMANTAN BARAT'),
(21, 5, 'KALIMANTAN TENGAH'),
(22, 5, 'KALIMANTAN SELATAN'),
(23, 5, 'KALIMANTAN TIMUR'),
(24, 5, 'KALIMANTAN UTARA'),
(25, 6, 'SULAWESI UTARA'),
(26, 6, 'SULAWESI TENGAH'),
(27, 6, 'SULAWESI SELATAN'),
(28, 6, 'SULAWESI TENGGARA'),
(29, 6, 'GORONTALO'),
(30, 6, 'SULAWESI BARAT'),
(31, 10, 'MALUKU'),
(32, 10, 'MALUKU UTARA'),
(33, 10, 'PAPUA'),
(34, 10, 'PAPUA BARAT');

-- --------------------------------------------------------

--
-- Table structure for table `public_transportation`
--

CREATE TABLE `public_transportation` (
  `PUBLIC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PUBLIC_TYPE` varchar(40) NOT NULL,
  `PUBLIC_NAME` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `public_transportation_traveling`
--

CREATE TABLE `public_transportation_traveling` (
  `PUBLIC_TRAVELING_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOCATION_ID` int(11) NOT NULL,
  `LOC_LOCATION_ID` int(11) NOT NULL,
  `PUBLIC_ID` int(11) NOT NULL,
  `ARRIVAL_SCHEDULE` datetime NOT NULL,
  `DEPARTURE_SCHEDULE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transportation_base`
--

CREATE TABLE `transportation_base` (
  `PUBLIC_ID` int(11) NOT NULL,
  `LOCATION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`DISTRICT_ID`),
  ADD KEY `FK_MENGAMBIL_PROVINSI` (`PROVINCE_ID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`EVENT_ID`),
  ADD KEY `FK_MEMILIH_KENDARAAN_PRIBADI_SESUAI_SARAN` (`PRIVATE_ID`),
  ADD KEY `FK_MEMILIH_KENDARAAN_UMUM_SESUAI_SARAN` (`PUBLIC_ID`),
  ADD KEY `FK_MEMILIH_LOKASI_AWAL_UNTUK_EVENT_PERTAMA` (`LOCATION_ID`),
  ADD KEY `FK_MEMILIH_LOKASI_EVENT` (`LOC_LOCATION_ID`);

--
-- Indexes for table `island`
--
ALTER TABLE `island`
  ADD PRIMARY KEY (`ISLAND_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LOCATION_ID`),
  ADD KEY `FK_MENGAMBIL_KABUPATEN_KOTA` (`DISTRICT_ID`);

--
-- Indexes for table `private_transportation`
--
ALTER TABLE `private_transportation`
  ADD PRIMARY KEY (`PRIVATE_ID`);

--
-- Indexes for table `private_transportation_traveling`
--
ALTER TABLE `private_transportation_traveling`
  ADD PRIMARY KEY (`PRIVATE_TRAVELING_ID`),
  ADD KEY `FK_MENGAMBIL_KENDARAAN_PRIBADI` (`PRIVATE_ID`),
  ADD KEY `FK_MENGAMBIL_LOKASI_AKHIR_UNTUK_KENDARAAN_PRIBADI` (`LOCATION_ID`),
  ADD KEY `FK_MENGAMBIL_LOKASI_AWAL_UNTUK_KENDARAAN_PRIBADI` (`LOC_LOCATION_ID`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`PROVINCE_ID`),
  ADD KEY `FK_MENGAMBIL_PULAU` (`ISLAND_ID`);

--
-- Indexes for table `public_transportation`
--
ALTER TABLE `public_transportation`
  ADD PRIMARY KEY (`PUBLIC_ID`);

--
-- Indexes for table `public_transportation_traveling`
--
ALTER TABLE `public_transportation_traveling`
  ADD PRIMARY KEY (`PUBLIC_TRAVELING_ID`),
  ADD KEY `FK_MENGAMBIL_KENDARAAN_UMUM` (`PUBLIC_ID`),
  ADD KEY `FK_MENGAMBIL_LOKASI_AKHIR_UNTUK_KENDARAAN_UMUM` (`LOC_LOCATION_ID`),
  ADD KEY `FK_MENGAMBIL_LOKASI_AWAL_UNTUK_KENDARAAN_UMUM` (`LOCATION_ID`);

--
-- Indexes for table `transportation_base`
--
ALTER TABLE `transportation_base`
  ADD PRIMARY KEY (`PUBLIC_ID`,`LOCATION_ID`),
  ADD KEY `FK_TRANSPORTATION_BASE2` (`LOCATION_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `FK_MENGAMBIL_PROVINSI` FOREIGN KEY (`PROVINCE_ID`) REFERENCES `province` (`PROVINCE_ID`);

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK_MEMILIH_KENDARAAN_PRIBADI_SESUAI_SARAN` FOREIGN KEY (`PRIVATE_ID`) REFERENCES `private_transportation` (`PRIVATE_ID`),
  ADD CONSTRAINT `FK_MEMILIH_KENDARAAN_UMUM_SESUAI_SARAN` FOREIGN KEY (`PUBLIC_ID`) REFERENCES `public_transportation` (`PUBLIC_ID`),
  ADD CONSTRAINT `FK_MEMILIH_LOKASI_AWAL_UNTUK_EVENT_PERTAMA` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`),
  ADD CONSTRAINT `FK_MEMILIH_LOKASI_EVENT` FOREIGN KEY (`LOC_LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `FK_MENGAMBIL_KABUPATEN_KOTA` FOREIGN KEY (`DISTRICT_ID`) REFERENCES `district` (`DISTRICT_ID`);

--
-- Constraints for table `private_transportation_traveling`
--
ALTER TABLE `private_transportation_traveling`
  ADD CONSTRAINT `FK_MENGAMBIL_KENDARAAN_PRIBADI` FOREIGN KEY (`PRIVATE_ID`) REFERENCES `private_transportation` (`PRIVATE_ID`),
  ADD CONSTRAINT `FK_MENGAMBIL_LOKASI_AKHIR_UNTUK_KENDARAAN_PRIBADI` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`),
  ADD CONSTRAINT `FK_MENGAMBIL_LOKASI_AWAL_UNTUK_KENDARAAN_PRIBADI` FOREIGN KEY (`LOC_LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `province`
--
ALTER TABLE `province`
  ADD CONSTRAINT `FK_MENGAMBIL_PULAU` FOREIGN KEY (`ISLAND_ID`) REFERENCES `island` (`ISLAND_ID`);

--
-- Constraints for table `public_transportation_traveling`
--
ALTER TABLE `public_transportation_traveling`
  ADD CONSTRAINT `FK_MENGAMBIL_KENDARAAN_UMUM` FOREIGN KEY (`PUBLIC_ID`) REFERENCES `public_transportation` (`PUBLIC_ID`),
  ADD CONSTRAINT `FK_MENGAMBIL_LOKASI_AKHIR_UNTUK_KENDARAAN_UMUM` FOREIGN KEY (`LOC_LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`),
  ADD CONSTRAINT `FK_MENGAMBIL_LOKASI_AWAL_UNTUK_KENDARAAN_UMUM` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `transportation_base`
--
ALTER TABLE `transportation_base`
  ADD CONSTRAINT `FK_TRANSPORTATION_BASE` FOREIGN KEY (`PUBLIC_ID`) REFERENCES `public_transportation` (`PUBLIC_ID`),
  ADD CONSTRAINT `FK_TRANSPORTATION_BASE2` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
