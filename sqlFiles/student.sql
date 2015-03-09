-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2015 at 04:44 AM
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
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
`studentno` int(11) NOT NULL,
  `studentid` varchar(15) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(10) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `course` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `contact` varchar(15) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentno`, `studentid`, `fname`, `mname`, `lname`, `course`, `year`, `contact`) VALUES
(2, '12085262', 'Joesenh', 'Lisondra', 'Codera', 'BSIT', '3', '6969696969'),
(3, '12345678', 'Ebuen', 'Caballero', 'Clemente', 'BSIT', '3', '8000001'),
(4, '87654321', 'Lary John', 'Gwapo', 'Lastimado', 'BSIT', '3', '123111'),
(5, '88888888', 'Otso', 'Seven', 'Sauna', 'BSIT', '3', '88888888888'),
(6, '55555555', 'Juan', 'De la', 'Cruz', 'BSIT', '1', '90909090'),
(7, '11111111', 'Laugh', 'Lauf', 'Laguf', 'BSIT', '2', '54545454545'),
(8, '10101010', 'Arth Clarence', 'John', 'Limchiu', 'Dean', '1', '69');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`studentno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `studentno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
