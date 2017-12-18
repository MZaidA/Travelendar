-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2017 at 06:24 AM
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
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `EVENT_ID` int(11) NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `EVENT_NAME` varchar(30) NOT NULL,
  `START_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `END_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DEPARTURE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DEPARTURE_LOCATION` varchar(150) NOT NULL,
  `DEPARTURE_LAT` float DEFAULT NULL,
  `DEPARTURE_LNG` float DEFAULT NULL,
  `EVENT_LOCATION` varchar(150) NOT NULL,
  `EVENT_LNG` float DEFAULT NULL,
  `EVENT_LAT` float DEFAULT NULL,
  `TRAVEL_MODE` varchar(10) NOT NULL,
  `AVOID_TOLLS` tinyint(1) DEFAULT NULL,
  `SUMMARY` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`EVENT_ID`, `USERNAME`, `EVENT_NAME`, `START_TIME`, `END_TIME`, `DEPARTURE_TIME`, `DEPARTURE_LOCATION`, `DEPARTURE_LAT`, `DEPARTURE_LNG`, `EVENT_LOCATION`, `EVENT_LNG`, `EVENT_LAT`, `TRAVEL_MODE`, `AVOID_TOLLS`, `SUMMARY`) VALUES
(1, 'zaid3', 'Seminar Big Data', '2017-12-19 01:30:00', '2017-12-19 05:00:00', '2017-12-19 00:00:00', 'Politeknik Negeri Bandung, Jl. Gegerkalong Hilir, Desa Ciwaruga, Ciwaruga, Parongpong, West Bandung Regency, West Java 40012', NULL, NULL, 'Universitas Telkom, Jl. Telekomunikasi No. 01, Terusan Buah Batu, Sukapura, Dayeuhkolot, Sukapura, Dayeuhkolot, Bandung, Jawa Barat 40257', NULL, NULL, 'DRIVING', 0, NULL),
(2, 'zaid3', 'Seminar Android', '2017-12-19 06:00:00', '2017-12-18 08:30:00', '2017-12-18 05:10:00', 'Universitas Telkom, Jl. Telekomunikasi No. 01, Terusan Buah Batu, Sukapura, Dayeuhkolot, Sukapura, Dayeuhkolot, Bandung, Jawa Barat 40257', NULL, NULL, 'Institut Teknologi Nasional, Jalan PH.H. Mustofa No.23, Neglasari, Cibeunying Kaler, Neglasari, Cibeunying Kaler, Kota Bandung, Jawa Barat 40124', NULL, NULL, 'DRIVING', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USERNAME` varchar(30) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USERNAME`, `PASSWORD`) VALUES
('zaid3', '00000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`EVENT_ID`),
  ADD KEY `FK_HAS` (`USERNAME`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USERNAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `EVENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK_HAS` FOREIGN KEY (`USERNAME`) REFERENCES `user` (`USERNAME`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
