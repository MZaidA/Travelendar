-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2017 at 07:45 AM
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
-- Database: `travelendar`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `EVENT_CODE` char(4) NOT NULL,
  `LOCATION_CODE` char(4) NOT NULL,
  `LOC_LOCATION_CODE` char(4) DEFAULT NULL,
  `PUBLIC_TRANSPORTATION_CODE` char(5) DEFAULT NULL,
  `PRIVATE_TRANSPORTATION_CODE` char(5) DEFAULT NULL,
  `EVENT_NAME` varchar(40) NOT NULL,
  `ARRIVAL_AT_LOCATION` datetime NOT NULL,
  `EVENT_FINISHED` datetime NOT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `DEPARTURE_TO_EVENT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LOCATION_CODE` char(4) NOT NULL,
  `LOCATION_NAME` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_CODE`, `LOCATION_NAME`) VALUES
('L001', 'Rumah'),
('L002', 'Kantor DPRD Bangka'),
('L003', 'Bandara Depati Amir'),
('L004', 'Bandara Soekarno Hatta'),
('L005', 'Kantor DPRD Jakarta'),
('L006', 'Istana Ratu Hotel'),
('L007', 'Kostan dekat UMN');

-- --------------------------------------------------------

--
-- Table structure for table `private_transportation`
--

CREATE TABLE `private_transportation` (
  `PRIVATE_TRANSPORTATION_CODE` char(5) NOT NULL,
  `PRIVATE_TRANSPORTATION_NAME` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `private_transportation`
--

INSERT INTO `private_transportation` (`PRIVATE_TRANSPORTATION_CODE`, `PRIVATE_TRANSPORTATION_NAME`) VALUES
('P0001', 'Jalan_Kaki'),
('P0002', 'Sepeda'),
('P0003', 'Motor'),
('P0004', 'Mobil');

-- --------------------------------------------------------

--
-- Table structure for table `private_transportation_traveling`
--

CREATE TABLE `private_transportation_traveling` (
  `PRIVATE_TRANSPORTATION_TRAVELING_CODE` char(5) NOT NULL,
  `LOCATION_CODE` char(4) NOT NULL,
  `LOC_LOCATION_CODE` char(4) NOT NULL,
  `PRIVATE_TRANSPORTATION_CODE` char(5) NOT NULL,
  `TIME_ESTIMATION` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `public_transportation`
--

CREATE TABLE `public_transportation` (
  `PUBLIC_TRANSPORTATION_CODE` char(5) NOT NULL,
  `PUBLIC_TRANSPORTATION_TYPE` varchar(40) NOT NULL,
  `PUBLIC_TRANSPORTATION_NAME` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `public_transportation_traveling`
--

CREATE TABLE `public_transportation_traveling` (
  `PUBLIC_TRANSPORTATION_TRAVELING_CODE` char(5) NOT NULL,
  `LOCATION_CODE` char(4) NOT NULL,
  `LOC_LOCATION_CODE` char(4) NOT NULL,
  `PUBLIC_TRANSPORTATION_CODE` char(5) NOT NULL,
  `ARRIVAL_SCHEDULE` datetime NOT NULL,
  `DEPARTURE_SCHEDULE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`EVENT_CODE`),
  ADD KEY `FK_RELATIONSHIP_1` (`LOCATION_CODE`),
  ADD KEY `FK_RELATIONSHIP_10` (`PUBLIC_TRANSPORTATION_CODE`),
  ADD KEY `FK_RELATIONSHIP_14` (`LOC_LOCATION_CODE`),
  ADD KEY `FK_RELATIONSHIP_9` (`PRIVATE_TRANSPORTATION_CODE`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LOCATION_CODE`);

--
-- Indexes for table `private_transportation`
--
ALTER TABLE `private_transportation`
  ADD PRIMARY KEY (`PRIVATE_TRANSPORTATION_CODE`);

--
-- Indexes for table `private_transportation_traveling`
--
ALTER TABLE `private_transportation_traveling`
  ADD PRIMARY KEY (`PRIVATE_TRANSPORTATION_TRAVELING_CODE`),
  ADD KEY `FK_RELATIONSHIP_15` (`LOC_LOCATION_CODE`),
  ADD KEY `FK_RELATIONSHIP_16` (`LOCATION_CODE`),
  ADD KEY `FK_RELATIONSHIP_8` (`PRIVATE_TRANSPORTATION_CODE`);

--
-- Indexes for table `public_transportation`
--
ALTER TABLE `public_transportation`
  ADD PRIMARY KEY (`PUBLIC_TRANSPORTATION_CODE`);

--
-- Indexes for table `public_transportation_traveling`
--
ALTER TABLE `public_transportation_traveling`
  ADD PRIMARY KEY (`PUBLIC_TRANSPORTATION_TRAVELING_CODE`),
  ADD KEY `FK_RELATIONSHIP_11` (`LOCATION_CODE`),
  ADD KEY `FK_RELATIONSHIP_12` (`PUBLIC_TRANSPORTATION_CODE`),
  ADD KEY `FK_RELATIONSHIP_13` (`LOC_LOCATION_CODE`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`LOCATION_CODE`) REFERENCES `location` (`LOCATION_CODE`),
  ADD CONSTRAINT `FK_RELATIONSHIP_10` FOREIGN KEY (`PUBLIC_TRANSPORTATION_CODE`) REFERENCES `public_transportation` (`PUBLIC_TRANSPORTATION_CODE`),
  ADD CONSTRAINT `FK_RELATIONSHIP_14` FOREIGN KEY (`LOC_LOCATION_CODE`) REFERENCES `location` (`LOCATION_CODE`),
  ADD CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`PRIVATE_TRANSPORTATION_CODE`) REFERENCES `private_transportation` (`PRIVATE_TRANSPORTATION_CODE`);

--
-- Constraints for table `private_transportation_traveling`
--
ALTER TABLE `private_transportation_traveling`
  ADD CONSTRAINT `FK_RELATIONSHIP_15` FOREIGN KEY (`LOC_LOCATION_CODE`) REFERENCES `location` (`LOCATION_CODE`),
  ADD CONSTRAINT `FK_RELATIONSHIP_16` FOREIGN KEY (`LOCATION_CODE`) REFERENCES `location` (`LOCATION_CODE`),
  ADD CONSTRAINT `FK_RELATIONSHIP_8` FOREIGN KEY (`PRIVATE_TRANSPORTATION_CODE`) REFERENCES `private_transportation` (`PRIVATE_TRANSPORTATION_CODE`);

--
-- Constraints for table `public_transportation_traveling`
--
ALTER TABLE `public_transportation_traveling`
  ADD CONSTRAINT `FK_RELATIONSHIP_11` FOREIGN KEY (`LOCATION_CODE`) REFERENCES `location` (`LOCATION_CODE`),
  ADD CONSTRAINT `FK_RELATIONSHIP_12` FOREIGN KEY (`PUBLIC_TRANSPORTATION_CODE`) REFERENCES `public_transportation` (`PUBLIC_TRANSPORTATION_CODE`),
  ADD CONSTRAINT `FK_RELATIONSHIP_13` FOREIGN KEY (`LOC_LOCATION_CODE`) REFERENCES `location` (`LOCATION_CODE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
