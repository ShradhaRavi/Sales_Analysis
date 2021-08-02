-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2021 at 05:51 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `salesorders_invoices`
--

CREATE TABLE `salesorders_invoices` (
  `invoiceId` int(11) NOT NULL,
  `salesOrderId` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salesorders_invoices`
--

INSERT INTO `salesorders_invoices` (`invoiceId`, `salesOrderId`) VALUES
(1000, 'S170'),
(1001, 'S170'),
(1002, 'S325'),
(1003, 'S325'),
(1004, 'S135'),
(1005, 'S135'),
(1006, 'S380'),
(1007, 'S380'),
(1008, 'S140'),
(1009, 'S140'),
(1010, 'S250'),
(1011, 'S250'),
(1012, 'S440'),
(1013, 'S440'),
(1014, 'S430'),
(1015, 'S430');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
