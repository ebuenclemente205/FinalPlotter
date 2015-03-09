-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2015 at 02:47 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

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
-- Table structure for table `plotted_subject`
--

CREATE TABLE IF NOT EXISTS `plotted_subject` (
  `plotterid` int(11) NOT NULL,
  `edpcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plotter`
--

CREATE TABLE IF NOT EXISTS `plotter` (
  `plotterid` int(11) NOT NULL AUTO_INCREMENT,
  `plotterdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `plottersy` int(11) NOT NULL,
  `plottersem` varchar(15) NOT NULL,
  `studentid` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  PRIMARY KEY (`plotterid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `studentno` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` varchar(15) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(10) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `course` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `contact` varchar(15) NOT NULL,
  PRIMARY KEY (`studentno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subjNo` int(11) NOT NULL AUTO_INCREMENT,
  `edpcode` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `stime` time NOT NULL,
  `etime` time NOT NULL,
  `days` varchar(10) NOT NULL,
  `room` varchar(20) NOT NULL,
  `units` int(11) NOT NULL,
  PRIMARY KEY (`subjNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
