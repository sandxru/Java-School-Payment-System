-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.0.22-community-nt - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for paymentsystem
CREATE DATABASE IF NOT EXISTS `paymentsystem` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `paymentsystem`;


-- Dumping structure for table paymentsystem.payment
CREATE TABLE IF NOT EXISTS `payment` (
  `receipt` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '0',
  `admission` int(11) NOT NULL default '0',
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY  (`receipt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table paymentsystem.payment: ~10 rows (approximately)
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` (`receipt`, `name`, `admission`, `date`, `amount`) VALUES
	(39, 'Sandaru', 1, '2018-06-13', 1000),
	(40, 'Tharaka', 4, '2018-06-13', 800),
	(41, 'Hiruna', 3, '2001-10-10', 300),
	(44, 'Kavishka', 12, '2018-06-16', 1000),
	(45, 'Prasanna', 16, '2018-10-10', 1500),
	(46, 'Chamara', 11, '2018-06-15', 1500),
	(48, 'Saman', 17, '2018-06-16', 3000);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;


-- Dumping structure for table paymentsystem.student
CREATE TABLE IF NOT EXISTS `student` (
  `admission` int(15) NOT NULL,
  `name` varchar(50) default NULL,
  `grade` varchar(50) default NULL,
  `mobile` int(11) default NULL,
  `status` varchar(50) default NULL,
  PRIMARY KEY  (`admission`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table paymentsystem.student: ~16 rows (approximately)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`admission`, `name`, `grade`, `mobile`, `status`) VALUES
	(1, 'Sandaru Fernando', '12 Tech B', 767693135, 'Paid'),
	(3, 'Hiruna Herath', '12', 7723, 'Paid'),
	(4, 'Thanuga', '10', 77233, 'Paid'),
	(5, 'Sam Fdo', '13', 708987, 'Paid'),
	(6, 'Costa', '1', 22, 'Not Paid'),
	(7, 'Silva', '2', 12, 'Not Paid'),
	(8, 'Kasun', '5', 564, 'Paid'),
	(9, 'Tharindu', '4', 8762, 'Not Paid'),
	(10, 'Saman', '6', 426, 'Paid'),
	(11, 'Chamara Fernando', '8', 453, 'Paid'),
	(12, 'Kavishka', '8', 45434, 'Paid'),
	(13, 'Rochana', '12', 4314, 'Not Paid'),
	(15, 'Jehan', '12', 5456, 'Not Paid'),
	(16, 'Prasanna', '7', 68576, 'Paid'),
	(17, 'Saman Fdo', '11', 1120, 'Paid'),
	(18, 'Kasun Silva', '12', 77, 'Not Paid');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


-- Dumping structure for table paymentsystem.user
CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY  (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table paymentsystem.user: ~5 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`name`, `user`, `password`) VALUES
	('Sandaru', 'sandaru', '112');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
