-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2017 at 02:22 AM
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
-- Database: `travlendar`
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
(99, 16, 'Yogyakarta'),
(100, 9, 'Kabupaten Bangka Tengah');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `EVENT_ID` int(11) NOT NULL,
  `SCHEDULED_TRANSPORTATION_ID` int(11) DEFAULT NULL,
  `START_LOCATION_ID` int(11) DEFAULT NULL,
  `EVENT_LOCATION_ID` int(11) NOT NULL,
  `UNSCHEDULED_TRANSPORTATION_ID` int(11) DEFAULT NULL,
  `EVENT_NAME` varchar(40) NOT NULL,
  `ARRIVAL_AT_LOCATION` datetime NOT NULL,
  `EVENT_FINISHED` datetime NOT NULL,
  `DEPARTURE_TO_LOCATION` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`EVENT_ID`, `SCHEDULED_TRANSPORTATION_ID`, `START_LOCATION_ID`, `EVENT_LOCATION_ID`, `UNSCHEDULED_TRANSPORTATION_ID`, `EVENT_NAME`, `ARRIVAL_AT_LOCATION`, `EVENT_FINISHED`, `DEPARTURE_TO_LOCATION`) VALUES
(1, NULL, 5, 1, 2, 'Apel Pagi', '2016-10-25 06:45:00', '2016-10-25 08:30:00', '2016-10-25 05:15:00'),
(2, NULL, 1, 6, 2, 'Perjalanan Dinas', '2016-10-25 10:50:00', '2016-10-25 11:50:00', '2016-10-25 09:10:00'),
(3, 1, 6, 7, NULL, 'Perjalanan Dinas', '2016-10-25 13:05:00', '2016-10-25 13:35:00', '2016-10-25 11:50:00'),
(4, NULL, 7, 2, 4, 'Perjalanan Dinas', '2016-10-25 14:30:00', '2016-10-25 15:30:00', '2016-10-25 13:45:00'),
(5, NULL, 2, 3, 6, 'Istrahat', '2016-10-25 16:00:00', '2016-10-25 16:45:00', '2016-10-25 15:58:00'),
(6, NULL, 3, 8, 5, 'Menjenguk Anak', '2016-10-25 17:15:00', '2016-10-25 17:35:00', '2016-10-25 16:00:00'),
(7, 5, 8, 8, NULL, 'Menjenguk Anak', '2016-10-25 18:05:00', '2016-10-25 18:20:00', '2016-10-25 17:36:00'),
(8, NULL, 9, 4, 5, 'Menjenguk Anak', '2016-10-25 19:00:00', '2016-10-26 04:50:00', '2016-10-25 18:24:00'),
(9, NULL, 4, 9, 5, 'Istirahat', '2016-10-26 05:12:00', '2016-10-26 05:32:00', '2016-10-26 04:51:00'),
(10, 5, 9, 8, NULL, 'Istirahat', '2016-10-26 06:03:00', '2016-10-26 06:03:00', '2016-10-26 05:32:00'),
(11, NULL, 8, 3, 5, 'Istirahat', '2016-10-26 06:25:00', '2016-10-26 07:45:00', '2016-10-26 06:05:00'),
(12, NULL, 3, 2, 6, 'Tugas Dinas', '2016-10-26 07:50:00', '2016-10-26 10:00:00', '2016-10-26 07:48:00'),
(13, NULL, 2, 7, 4, 'Laporan Tugas Dinas', '2016-10-26 10:50:00', '2016-10-26 11:50:00', '2016-10-26 10:18:00'),
(14, 1, 7, 6, NULL, 'Laporan Tugas Dinas', '2016-10-26 13:00:00', '2016-10-26 13:30:00', '2016-10-26 11:50:00'),
(15, NULL, 6, 1, 2, 'Laporan Tugas Dinas', '2016-10-26 14:30:00', '2016-10-26 15:30:00', '2016-10-26 13:39:00'),
(16, NULL, 1, 5, 1, 'Pulang ke Rumah', '2016-10-26 17:00:00', '2016-10-27 05:00:00', '2016-10-26 15:33:00');

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
(1, 'Sumatera'),
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
  `LOCATION_ID` int(11) NOT NULL,
  `DISTRICT_ID` int(11) NOT NULL,
  `LOCATION_NAME` varchar(40) NOT NULL,
  `ADDRESS` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_ID`, `DISTRICT_ID`, `LOCATION_NAME`, `ADDRESS`) VALUES
(1, 8, 'Kantor DPRD Provinsi Bangka', 'Jl. Komp. Perkantoran Gubenur No.31, Air Itam, Bukit Intan'),
(2, 16, 'Kantor DPRD Provinsi Jakarta', 'Jalan Kebon Sirih No.18, RT.11/RW.2, Gambir, RT.11/RW.2, Gambir'),
(3, 16, 'Istana Ratu Hotel', 'Jl. Jaksa No. 7 - 9, Menteng'),
(4, 12, 'UMN', 'Jl. Scientia Boulevard, Gading Serpong'),
(5, 8, 'Rumah', 'Sungai Selan'),
(6, 100, 'Bandara Depati Amir', 'Jalan Soekarno Hatta, Dul, Pangkalan Baru, Beluluk, Pangkalan Baru, Beluluk, Pangkalan Baru'),
(7, 12, 'Bandara Soekarno hatta', 'Tangerang City, Banten 19120'),
(8, 15, 'Stasiun Duri', ' Jl. Duri Utara Raya, Duri Utara, Tambora'),
(9, 12, 'Stasiun Tangerang', 'Sukarasa, Kecamatan Tangerang'),
(10, 19, 'Pelabuhan Tanjung Priuk', 'Jl. Raya Pelabuhan  No. 9'),
(11, 100, 'Pelabuhan Belinyu', 'Air Jukung, Belinyu');

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
(2, 1, 'Sumatera Utara'),
(3, 1, 'Sumatera Barat'),
(4, 1, 'Riau'),
(5, 1, 'Jambi'),
(6, 1, 'Sumatera Selatan'),
(7, 1, 'Bengkulu'),
(8, 1, 'Lampung'),
(9, 2, 'Kep. Bangka Belitung'),
(10, 11, 'Kep. Riau'),
(11, 4, 'DKI Jakarta'),
(12, 4, 'Jawa Barat'),
(13, 4, 'Jawa Tengah'),
(14, 4, 'Banten'),
(15, 4, 'Jawa Timur'),
(16, 4, 'Yogyakarta'),
(17, 7, 'Bali'),
(18, 8, 'Nusa Tenggara Barat'),
(19, 9, 'Nusa Tenggara Timur'),
(20, 5, 'Kalimantan Barat'),
(21, 5, 'Kalimantan Tengah'),
(22, 5, 'Kalimantan Selatan'),
(23, 5, 'Kalimantan Timur'),
(24, 5, 'Kalimantan Utara'),
(25, 6, 'Sulawesi Utara'),
(26, 6, 'Sulawesi Tengah'),
(27, 6, 'Sulawesi Selatan'),
(28, 6, 'Sulawesi Tenggara'),
(29, 6, 'Gorontalo'),
(30, 6, 'Sulawesi Barat'),
(31, 10, 'Maluku'),
(32, 10, 'Maluku Utara'),
(33, 10, 'Papua'),
(34, 10, 'Papua Barat');

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_transportation`
--

CREATE TABLE `scheduled_transportation` (
  `SCHEDULED_TRANSPORTATION_ID` int(11) NOT NULL,
  `TRANSPORTATION_ID` int(11) NOT NULL,
  `SCHEDULED_TRANSPORTATION_NAME` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheduled_transportation`
--

INSERT INTO `scheduled_transportation` (`SCHEDULED_TRANSPORTATION_ID`, `TRANSPORTATION_ID`, `SCHEDULED_TRANSPORTATION_NAME`) VALUES
(1, 1, 'Lion Air'),
(2, 1, 'City Link'),
(3, 1, 'Garuda Indonesia'),
(4, 1, 'Sriwijaya'),
(5, 2, 'Tangerang-Duri');

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_transportation_modes`
--

CREATE TABLE `scheduled_transportation_modes` (
  `TRANSPORTATION_ID` int(11) NOT NULL,
  `TRANSPORTATION_TYPE` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheduled_transportation_modes`
--

INSERT INTO `scheduled_transportation_modes` (`TRANSPORTATION_ID`, `TRANSPORTATION_TYPE`) VALUES
(1, 'Pesawat'),
(2, 'Kereta'),
(3, 'Kapal Laut'),
(4, 'Bus'),
(5, 'Travel');

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_traveling_table`
--

CREATE TABLE `scheduled_traveling_table` (
  `SCHEDULED_TRAVELING_ID` int(11) NOT NULL,
  `START_LOCATION_ID` int(11) NOT NULL,
  `EVENT_LOCATION_ID` int(11) NOT NULL,
  `SCHEDULED_TRANSPORTATION_ID` int(11) NOT NULL,
  `ARRIVAL_SCHEDULE` datetime NOT NULL,
  `DEPARTURE_SCHEDULE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheduled_traveling_table`
--

INSERT INTO `scheduled_traveling_table` (`SCHEDULED_TRAVELING_ID`, `START_LOCATION_ID`, `EVENT_LOCATION_ID`, `SCHEDULED_TRANSPORTATION_ID`, `ARRIVAL_SCHEDULE`, `DEPARTURE_SCHEDULE`) VALUES
(1, 6, 7, 1, '2016-10-25 11:50:00', '2016-10-25 13:05:00'),
(2, 6, 7, 2, '2016-10-25 14:05:00', '2016-10-25 13:00:00'),
(3, 6, 7, 3, '2016-10-25 12:10:00', '2016-10-25 13:20:00'),
(4, 6, 7, 4, '2016-10-25 11:10:00', '2016-10-25 12:20:00'),
(5, 7, 6, 1, '2016-10-26 11:50:00', '2016-10-26 13:00:00'),
(6, 8, 9, 5, '2016-10-25 17:36:00', '2016-10-25 18:05:00'),
(7, 9, 8, 5, '2016-10-26 05:32:00', '2016-10-26 06:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `transportation_base`
--

CREATE TABLE `transportation_base` (
  `SCHEDULED_TRANSPORTATION_ID` int(11) NOT NULL,
  `LOCATION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transportation_base`
--

INSERT INTO `transportation_base` (`SCHEDULED_TRANSPORTATION_ID`, `LOCATION_ID`) VALUES
(1, 6),
(1, 7),
(2, 6),
(2, 7),
(3, 6),
(3, 7),
(4, 6),
(4, 7),
(5, 8),
(5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `unscheduled_transportation`
--

CREATE TABLE `unscheduled_transportation` (
  `UNSCHEDULED_TRANSPORTATION_ID` int(11) NOT NULL,
  `UNSCHEDULED_TRANSPORTATION_TYPE` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unscheduled_transportation`
--

INSERT INTO `unscheduled_transportation` (`UNSCHEDULED_TRANSPORTATION_ID`, `UNSCHEDULED_TRANSPORTATION_TYPE`) VALUES
(1, 'Motor Pribadi'),
(2, 'Mobil Pribadi'),
(3, 'Mobil Dinas'),
(4, 'Mobil Taksi'),
(5, 'Ojek'),
(6, 'Jalan Kaki'),
(7, 'Sepeda');

-- --------------------------------------------------------

--
-- Table structure for table `unscheduled_traveling_table`
--

CREATE TABLE `unscheduled_traveling_table` (
  `UNSCHEDULED_TRAVELING_ID` int(11) NOT NULL,
  `EVENT_LOCATION_ID` int(11) NOT NULL,
  `START_LOCATION_ID` int(11) NOT NULL,
  `UNSCHEDULED_TRANSPORTATION_ID` int(11) NOT NULL,
  `TRAVELING_TIME` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unscheduled_traveling_table`
--

INSERT INTO `unscheduled_traveling_table` (`UNSCHEDULED_TRAVELING_ID`, `EVENT_LOCATION_ID`, `START_LOCATION_ID`, `UNSCHEDULED_TRANSPORTATION_ID`, `TRAVELING_TIME`) VALUES
(1, 5, 1, 6, 798),
(2, 5, 1, 2, 79),
(3, 5, 1, 4, 79),
(4, 5, 1, 5, 79),
(5, 5, 1, 1, 66),
(6, 5, 1, 3, 79),
(7, 1, 6, 1, 61),
(8, 1, 6, 2, 73),
(9, 1, 6, 3, 73),
(10, 1, 6, 4, 73),
(11, 1, 6, 5, 61),
(12, 1, 11, 1, 165),
(13, 1, 11, 2, 165),
(14, 1, 11, 3, 165),
(15, 1, 11, 4, 165),
(16, 1, 11, 5, 165),
(17, 7, 2, 3, 45),
(18, 7, 2, 4, 45),
(19, 7, 2, 5, 40),
(20, 10, 2, 3, 0),
(21, 10, 2, 4, 0),
(22, 10, 2, 5, 0),
(23, 2, 3, 3, 1),
(24, 2, 3, 4, 1),
(25, 2, 3, 5, 1),
(26, 2, 3, 6, 1),
(27, 2, 3, 7, 2),
(28, 3, 8, 3, 30),
(29, 3, 8, 4, 30),
(30, 3, 8, 5, 20),
(31, 9, 4, 3, 36),
(32, 9, 4, 4, 36),
(33, 9, 4, 5, 36),
(34, 4, 9, 3, 36),
(35, 4, 9, 4, 36),
(36, 4, 9, 5, 36),
(37, 8, 3, 3, 30),
(38, 8, 3, 4, 30),
(39, 8, 3, 5, 20),
(40, 3, 2, 3, 1),
(41, 3, 2, 4, 1),
(42, 3, 2, 5, 1),
(43, 3, 2, 6, 1),
(44, 3, 2, 7, 2),
(45, 2, 10, 3, 0),
(46, 2, 10, 4, 0),
(47, 2, 10, 5, 0),
(48, 2, 7, 3, 45),
(49, 2, 7, 4, 45),
(50, 2, 7, 5, 40),
(51, 6, 1, 1, 61),
(52, 6, 1, 2, 73),
(53, 6, 1, 3, 73),
(54, 6, 1, 4, 73),
(55, 6, 1, 5, 61),
(56, 11, 1, 1, 165),
(57, 11, 1, 2, 165),
(58, 11, 1, 3, 165),
(59, 11, 1, 4, 165),
(60, 11, 1, 5, 165),
(61, 1, 5, 6, 798),
(62, 1, 5, 2, 79),
(63, 1, 5, 4, 79),
(64, 1, 5, 5, 79),
(65, 1, 5, 1, 66),
(66, 1, 5, 3, 79);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`DISTRICT_ID`),
  ADD KEY `FK_MENGAMBIL_DATA_PROVINSI` (`PROVINCE_ID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`EVENT_ID`),
  ADD KEY `FK_MEMILIH_KENDARAAN_TERJADWAL_SESUAI_SARAN` (`SCHEDULED_TRANSPORTATION_ID`),
  ADD KEY `FK_MEMILIH_KENDARAAN_TIDAK_TERJADWAL_SESUAI_SARAN` (`UNSCHEDULED_TRANSPORTATION_ID`),
  ADD KEY `FK_MEMILIH_LOKASI_AWAL_UNTUK_EVENT_PERTAMA` (`START_LOCATION_ID`),
  ADD KEY `FK_MEMILIH_LOKASI_EVENT` (`EVENT_LOCATION_ID`);

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
  ADD KEY `FK_MENGAMBIL_DATA_KABUPATEN_KOTA` (`DISTRICT_ID`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`PROVINCE_ID`),
  ADD KEY `FK_MENGAMBIL_DATA_PULAU` (`ISLAND_ID`);

--
-- Indexes for table `scheduled_transportation`
--
ALTER TABLE `scheduled_transportation`
  ADD PRIMARY KEY (`SCHEDULED_TRANSPORTATION_ID`),
  ADD KEY `FK_MENGAMBIL_TIPE_KENDARAAN_HANYA_UNTUK_KENDARAAN_TERJADWAL` (`TRANSPORTATION_ID`);

--
-- Indexes for table `scheduled_transportation_modes`
--
ALTER TABLE `scheduled_transportation_modes`
  ADD PRIMARY KEY (`TRANSPORTATION_ID`);

--
-- Indexes for table `scheduled_traveling_table`
--
ALTER TABLE `scheduled_traveling_table`
  ADD PRIMARY KEY (`SCHEDULED_TRAVELING_ID`),
  ADD KEY `FK_MENGAMBIL_DATA_KENDARAAN_TERJADWAL` (`SCHEDULED_TRANSPORTATION_ID`),
  ADD KEY `FK_MENGAMBIL_LOKASI_AKHIR_UNTUK_PERJALANAN_TERJADWAL` (`EVENT_LOCATION_ID`),
  ADD KEY `FK_MENGAMBIL_LOKASI_AWAL_UNTUK_PERJALANAN_TERJADWAL` (`START_LOCATION_ID`);

--
-- Indexes for table `transportation_base`
--
ALTER TABLE `transportation_base`
  ADD PRIMARY KEY (`SCHEDULED_TRANSPORTATION_ID`,`LOCATION_ID`),
  ADD KEY `FK_TRANSPORTATION_BASE2` (`LOCATION_ID`);

--
-- Indexes for table `unscheduled_transportation`
--
ALTER TABLE `unscheduled_transportation`
  ADD PRIMARY KEY (`UNSCHEDULED_TRANSPORTATION_ID`);

--
-- Indexes for table `unscheduled_traveling_table`
--
ALTER TABLE `unscheduled_traveling_table`
  ADD PRIMARY KEY (`UNSCHEDULED_TRAVELING_ID`),
  ADD KEY `FK_MENGAMBIL_DATA_KENDARAAN_TIDAK_TERJADWAL` (`UNSCHEDULED_TRANSPORTATION_ID`),
  ADD KEY `FK_MENGAMBIL_LOKASI_AKHIR_UNTUK_PERJALANAN_TIDAK_TERJADWAL` (`EVENT_LOCATION_ID`),
  ADD KEY `FK_MENGAMBIL_LOKASI_AWAL_UNTUK_PERJALANAN_TIDAK_TERJADWAL` (`START_LOCATION_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `DISTRICT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `EVENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `island`
--
ALTER TABLE `island`
  MODIFY `ISLAND_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `PROVINCE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `scheduled_transportation`
--
ALTER TABLE `scheduled_transportation`
  MODIFY `SCHEDULED_TRANSPORTATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `scheduled_transportation_modes`
--
ALTER TABLE `scheduled_transportation_modes`
  MODIFY `TRANSPORTATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `scheduled_traveling_table`
--
ALTER TABLE `scheduled_traveling_table`
  MODIFY `SCHEDULED_TRAVELING_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `unscheduled_transportation`
--
ALTER TABLE `unscheduled_transportation`
  MODIFY `UNSCHEDULED_TRANSPORTATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `unscheduled_traveling_table`
--
ALTER TABLE `unscheduled_traveling_table`
  MODIFY `UNSCHEDULED_TRAVELING_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `FK_MENGAMBIL_DATA_PROVINSI` FOREIGN KEY (`PROVINCE_ID`) REFERENCES `province` (`PROVINCE_ID`);

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK_MEMILIH_KENDARAAN_TERJADWAL_SESUAI_SARAN` FOREIGN KEY (`SCHEDULED_TRANSPORTATION_ID`) REFERENCES `scheduled_transportation` (`SCHEDULED_TRANSPORTATION_ID`),
  ADD CONSTRAINT `FK_MEMILIH_KENDARAAN_TIDAK_TERJADWAL_SESUAI_SARAN` FOREIGN KEY (`UNSCHEDULED_TRANSPORTATION_ID`) REFERENCES `unscheduled_transportation` (`UNSCHEDULED_TRANSPORTATION_ID`),
  ADD CONSTRAINT `FK_MEMILIH_LOKASI_AWAL_UNTUK_EVENT_PERTAMA` FOREIGN KEY (`START_LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`),
  ADD CONSTRAINT `FK_MEMILIH_LOKASI_EVENT` FOREIGN KEY (`EVENT_LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `FK_MENGAMBIL_DATA_KABUPATEN_KOTA` FOREIGN KEY (`DISTRICT_ID`) REFERENCES `district` (`DISTRICT_ID`);

--
-- Constraints for table `province`
--
ALTER TABLE `province`
  ADD CONSTRAINT `FK_MENGAMBIL_DATA_PULAU` FOREIGN KEY (`ISLAND_ID`) REFERENCES `island` (`ISLAND_ID`);

--
-- Constraints for table `scheduled_transportation`
--
ALTER TABLE `scheduled_transportation`
  ADD CONSTRAINT `FK_MENGAMBIL_TIPE_KENDARAAN_HANYA_UNTUK_KENDARAAN_TERJADWAL` FOREIGN KEY (`TRANSPORTATION_ID`) REFERENCES `scheduled_transportation_modes` (`TRANSPORTATION_ID`);

--
-- Constraints for table `scheduled_traveling_table`
--
ALTER TABLE `scheduled_traveling_table`
  ADD CONSTRAINT `FK_MENGAMBIL_DATA_KENDARAAN_TERJADWAL` FOREIGN KEY (`SCHEDULED_TRANSPORTATION_ID`) REFERENCES `scheduled_transportation` (`SCHEDULED_TRANSPORTATION_ID`),
  ADD CONSTRAINT `FK_MENGAMBIL_LOKASI_AKHIR_UNTUK_PERJALANAN_TERJADWAL` FOREIGN KEY (`EVENT_LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`),
  ADD CONSTRAINT `FK_MENGAMBIL_LOKASI_AWAL_UNTUK_PERJALANAN_TERJADWAL` FOREIGN KEY (`START_LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `transportation_base`
--
ALTER TABLE `transportation_base`
  ADD CONSTRAINT `FK_TRANSPORTATION_BASE` FOREIGN KEY (`SCHEDULED_TRANSPORTATION_ID`) REFERENCES `scheduled_transportation` (`SCHEDULED_TRANSPORTATION_ID`),
  ADD CONSTRAINT `FK_TRANSPORTATION_BASE2` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `unscheduled_traveling_table`
--
ALTER TABLE `unscheduled_traveling_table`
  ADD CONSTRAINT `FK_MENGAMBIL_DATA_KENDARAAN_TIDAK_TERJADWAL` FOREIGN KEY (`UNSCHEDULED_TRANSPORTATION_ID`) REFERENCES `unscheduled_transportation` (`UNSCHEDULED_TRANSPORTATION_ID`),
  ADD CONSTRAINT `FK_MENGAMBIL_LOKASI_AKHIR_UNTUK_PERJALANAN_TIDAK_TERJADWAL` FOREIGN KEY (`EVENT_LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`),
  ADD CONSTRAINT `FK_MENGAMBIL_LOKASI_AWAL_UNTUK_PERJALANAN_TIDAK_TERJADWAL` FOREIGN KEY (`START_LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
