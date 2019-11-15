-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 15, 2019 at 06:29 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aadhunik`
--

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE IF NOT EXISTS `people` (
  `pid` int(11) NOT NULL,
  `name` varchar(126) NOT NULL,
  `mobno` varchar(10) NOT NULL,
  `aadharno` varchar(16) NOT NULL,
  `emailid` varchar(126) NOT NULL,
  `password` varchar(126) NOT NULL,
  `password_hash` varchar(126) DEFAULT NULL,
  `password_salt` varchar(126) DEFAULT NULL,
  `token` varchar(126) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`pid`, `name`, `mobno`, `aadharno`, `emailid`, `password`, `password_hash`, `password_salt`, `token`) VALUES
(1, 'R.R.Suman', '9877632412', '124432234545', 'suman@mainya.com', 'r12tr9g23rt4fgb43', NULL, NULL, NULL),
(2, 'Abhinav Mani', '3463548712', '345785345232', 'mani@gmail.com', '3648fhf98y4', NULL, NULL, NULL),
(3, 'Ritik Raj', '9874349642', '542434261346', 'sr382re8fh@gmail.com', 'rwgd3gih@gier1heog90e3', NULL, NULL, NULL),
(4, 'Amit Raj', '3257435601', '585383858351', 'amit24@gmmail.com', '63754dhgl53287@ifdg!$$', NULL, NULL, NULL),
(5, 'test person', '1234567890', '345785345232', '73etg@fue.com', '2345fdvd673f', NULL, NULL, NULL),
(6, 'Sunny Singh', '1234567887', '9234563452', '32t49diwhfid@jugb.com', '214g3e7dg3r', NULL, NULL, NULL),
(8, 'Raman Yadav', '1234567887', '9234563452', '32t49diwhfid@jugb.com', '214g3e7dg3r', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `pid` (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
