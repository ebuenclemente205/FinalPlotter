-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2015 at 04:51 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `plotter`
--

-- --------------------------------------------------------

--
-- Table structure for table `plotter`
--

CREATE TABLE IF NOT EXISTS `plotter` (
`plotterid` int(11) NOT NULL,
  `plotterdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `plottersy` int(11) NOT NULL,
  `plottersem` varchar(15) NOT NULL,
  `studentid` int(11) NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `plotter`
--

INSERT INTO `plotter` (`plotterid`, `plotterdate`, `plottersy`, `plottersem`, `studentid`, `status`) VALUES
(1, '2015-03-09 03:47:19', 2014, '1st', 1, 0),
(2, '2015-03-09 03:47:43', 2014, '1st', 1, 0),
(3, '2015-03-09 03:48:25', 2014, '1st', 12085262, 0),
(4, '2015-03-09 03:48:36', 2014, '1st', 12085262, 0),
(5, '2015-03-09 03:48:49', 2014, '1st', 12085262, 0),
(6, '2015-03-09 03:49:02', 2014, '1st', 10101010, 0),
(7, '2015-03-09 03:49:32', 2014, '1st', 12345678, 0),
(8, '2015-03-09 03:49:43', 2014, '1st', 12345678, 0),
(9, '2015-03-09 03:49:59', 2014, '1st', 88888888, 0),
(10, '2015-03-09 03:50:49', 2014, '1st', 88888888, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `plotter`
--
ALTER TABLE `plotter`
 ADD PRIMARY KEY (`plotterid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plotter`
--
ALTER TABLE `plotter`
MODIFY `plotterid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
