-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2017 at 01:09 AM
-- Server version: 10.1.28-MariaDB
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
-- Table structure for table `event`
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
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `start_name` varchar(60) NOT NULL,
  `lat_start` float(10,6) NOT NULL,
  `lng_start` float(10,6) NOT NULL,
  `end_name` varchar(60) NOT NULL,
  `lat_end` float(10,6) NOT NULL,
  `lng_end` float(10,6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `start_name`, `lat_start`, `lng_start`, `end_name`, `lat_end`, `lng_end`) VALUES
(1, 'bandung', -6.917464, 107.619125, 'jakarta', -6.175110, 106.865036),
(4, 'Sanggar Kencana X ', -6.934877, 107.665085, 'Politeknik Negeri Bandung', -6.872034, 107.574791),
(3, 'Politeknik Negeri Bandung', -6.872034, 107.574791, 'Intitut Teknologi Bandung', -6.891480, 107.610657),
(5, 'Kantor Walikota Bandung', -6.910759, 107.609825, 'Kantor DPRD kota Bandung', -6.916817, 107.634880),
(6, 'Bandung', -6.917464, 107.619125, 'Surabaya', -7.257472, 112.752090);

-- --------------------------------------------------------

--
-- Table structure for table `markers`
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
-- Dumping data for table `markers`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
