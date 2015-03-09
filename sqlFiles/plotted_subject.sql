-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2015 at 04:55 AM
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
-- Table structure for table `plotted_subject`
--

CREATE TABLE IF NOT EXISTS `plotted_subject` (
  `plotterid` int(11) NOT NULL,
  `edpcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plotted_subject`
--

INSERT INTO `plotted_subject` (`plotterid`, `edpcode`) VALUES
(0, 23155),
(0, 77887),
(0, 12343),
(0, 14566),
(0, 12567),
(1, 14566),
(1, 43215),
(1, 55675),
(1, 12347),
(1, 12346),
(2, 54321),
(2, 13245),
(2, 12345),
(2, 12346),
(3, 55675),
(3, 12222),
(3, 32221),
(3, 20803),
(4, 12311),
(4, 12343),
(4, 55675),
(5, 55675),
(6, 12345),
(6, 12346),
(6, 13245),
(6, 54321),
(6, 30765),
(7, 12311),
(7, 12343),
(8, 12311),
(9, 80011),
(9, 10703),
(9, 12343);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
