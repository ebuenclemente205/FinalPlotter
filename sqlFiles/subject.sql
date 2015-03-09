-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2015 at 04:12 AM
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
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
`subjNo` int(11) NOT NULL,
  `edpcode` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `stime` time NOT NULL,
  `etime` time NOT NULL,
  `days` varchar(10) NOT NULL,
  `room` varchar(20) NOT NULL,
  `units` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subjNo`, `edpcode`, `subject`, `stime`, `etime`, `days`, `room`, `units`) VALUES
(1, '12345', 'MGT1A', '13:30:00', '15:00:00', 'TTH', '511', 3),
(2, '12346', 'SOFTENG32', '14:30:00', '15:30:00', 'MWF', '516', 3),
(3, '12347', 'DB32', '15:30:00', '16:30:00', 'MWF', '512', 3),
(4, '12348', 'AIS32', '16:30:00', '17:30:00', 'MWF', '524', 3),
(5, '12349', 'AIS32', '18:30:00', '19:30:00', 'M-F', '524', 3),
(6, '13245', 'ITELECPHP', '19:30:00', '20:30:00', 'MWF', '516', 3),
(7, '54321', 'RES', '15:00:00', '16:30:00', 'MWF', '214', 3),
(8, '32145', 'FREEELECIP', '12:00:00', '13:30:00', 'TTH', '542', 3),
(9, '23145', 'DB31', '15:00:00', '16:30:00', 'MWF', '516', 3),
(10, '43215', 'DB32', '10:30:00', '12:00:00', 'M-F', '524', 3),
(11, '54343', 'AIS32', '07:30:00', '08:30:00', 'MWF', '511', 3),
(12, '32154', 'HUM21', '09:30:00', '22:30:00', 'MWF', '522', 3),
(13, '69696', 'PSYCH11', '15:30:00', '17:00:00', 'TTH', '511', 3),
(14, '01011', 'ENGL21C', '15:00:00', '16:00:00', 'MW', '533', 3),
(15, '80011', 'FIL12', '10:30:00', '11:30:00', 'MW', '523', 3),
(16, '55555', 'RES', '07:30:00', '08:30:00', 'MW', '525', 3),
(18, '66323', 'DBSYS32', '07:30:00', '08:30:00', 'MWF', '513', 3),
(19, '43444', 'DBSYS31', '07:30:00', '08:30:00', 'MWF', '514', 3),
(20, '21778', 'DBSYS32', '08:30:00', '09:30:00', 'MWF', '514', 3),
(21, '65432', 'DBSYS32', '10:30:00', '11:30:00', 'MWF', '523', 3),
(22, '67890', 'DBSYS31', '10:30:00', '11:00:00', 'TTH', '515', 3),
(23, '30765', 'FIL2J', '07:30:00', '09:00:00', 'TTH', '524', 3),
(24, '35680', 'FIL2J', '08:30:00', '09:30:00', 'MWF', '511', 3),
(25, '10703', 'FIL2J', '00:00:00', '01:00:00', 'MWF', '524', 3),
(26, '20802', 'ENGL21C', '03:30:00', '04:30:00', 'MWF', '524', 3),
(27, '00009', 'PE4', '08:30:00', '10:30:00', 'TTH', 'FLD', 2),
(28, '00909', 'PE3', '09:30:00', '11:30:00', 'TTH', 'FLD', 2),
(29, '08000', 'PE2', '07:30:00', '09:30:00', 'TTH', 'FLD', 2),
(30, '32311', 'PE1', '08:30:00', '10:30:00', 'TTH', 'FLD', 2),
(31, '23331', 'PSYCH11', '17:30:00', '18:30:00', 'MWF', '526', 3),
(32, '40090', 'PSYCH11', '18:30:00', '19:30:00', 'MWF', '524', 3),
(33, '20803', 'PSYCH11', '13:30:00', '14:30:00', 'MWF', '524', 3),
(34, '32221', 'PSYCH11', '07:30:00', '09:00:00', 'TTH', '523', 3),
(35, '12222', 'MGT1A', '17:30:00', '18:30:00', 'MWF', '526', 3),
(36, '55675', 'RES', '07:30:00', '08:30:00', 'MWF', '511', 3),
(37, '12567', 'COMPROG11', '07:30:00', '09:00:00', 'TTH', '528', 3),
(38, '14566', 'COMPROG11', '07:00:00', '08:00:00', 'MWF', '528', 3),
(39, '12343', 'WEBDEV', '07:30:00', '09:30:00', 'TTH', '531', 3),
(40, '77887', 'PHYS21', '09:30:00', '10:30:00', 'MWF', '423', 3),
(41, '12311', 'PHYS21', '10:30:00', '11:30:00', 'MWF', '423', 3),
(42, '23155', 'WEBDEV', '13:00:00', '14:00:00', 'MWF', '511', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
 ADD PRIMARY KEY (`subjNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
MODIFY `subjNo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
