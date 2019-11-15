-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 15, 2019 at 06:35 PM
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
-- Table structure for table `complains`
--

CREATE TABLE IF NOT EXISTS `complains` (
  `id` int(11) NOT NULL,
  `dscp` text NOT NULL,
  `pid` int(11) NOT NULL,
  `c_name` text NOT NULL,
  `t_stamp` date NOT NULL,
  `dpt` text NOT NULL,
  `prob_date` date NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complains`
--

INSERT INTO `complains` (`id`, `dscp`, `pid`, `c_name`, `t_stamp`, `dpt`, `prob_date`, `rating`) VALUES
(1, 'Electricity cuttoff since 5 days in pathurdih.', 2, 'Abhinav Mani', '2019-11-13', 'Electricity Board Jharkhand, Pathurdih.', '2019-11-10', 5),
(2, 'Water Scarity Problem in Pathurdih', 3, 'Ritik Raj', '2019-11-13', 'Water Conservation and supplies Board Jharkhand, Pathurdih.', '2019-10-09', 5),
(3, 'Road condition is very poor in areas near pathurdih and sindri', 4, 'Amit Raj', '2019-09-18', 'Transportation Board Jharkhand, Pathurdih.', '2019-10-09', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
