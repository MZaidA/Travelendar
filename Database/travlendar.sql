-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2018 at 11:30 AM
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
  `EVENT_LOCATION` varchar(150) NOT NULL,
  `TRAVEL_MODE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `event`
--
DELIMITER $$
CREATE TRIGGER `add_event` BEFORE INSERT ON `event` FOR EACH ROW BEGIN
DECLARE done INT DEFAULT FALSE;
DECLARE de TIMESTAMP;
DECLARE en TIMESTAMP;
DECLARE cur CURSOR FOR SELECT departure_time, end_time FROM event WHERE username = new.username;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
OPEN cur;read_loop: LOOP
FETCH cur INTO de, en;
IF done
THEN LEAVE read_loop;
END IF;
IF (new.start_time > de and new.start_time < en or new.end_time > de and new.end_time < en and new.departure_time > de or new.departure_time < en)
THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'BENTROK';
END IF;
END LOOP;
CLOSE cur;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `edit_event` BEFORE UPDATE ON `event` FOR EACH ROW BEGIN
DECLARE done INT DEFAULT FALSE;
DECLARE de TIMESTAMP;
DECLARE en TIMESTAMP;
DECLARE cur CURSOR FOR SELECT departure_time, end_time FROM event WHERE username = new.username;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
OPEN cur;read_loop: LOOP
FETCH cur INTO de, en;
IF done
THEN LEAVE read_loop;
END IF;
IF (new.start_time > de and new.start_time < en or new.end_time > de and new.end_time < en and new.departure_time > de or new.departure_time < en)
THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'BENTROK';
END IF;
END LOOP;
CLOSE cur;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USERNAME` varchar(30) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `EVENT_ID` int(11) NOT NULL AUTO_INCREMENT;
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
