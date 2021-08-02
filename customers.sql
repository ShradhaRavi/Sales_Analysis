-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2021 at 05:50 PM
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
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerId` varchar(50) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `displayName` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `companyName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerId`, `customerName`, `displayName`, `status`, `companyName`, `firstName`, `lastName`) VALUES
('C70000', 'Ajeeth Kumar', 'Ajeeth K', 'Inactive', 'Daniry ', 'Ajeeth ', 'Kumar'),
('C100000', 'Nila Kulkarni', 'Nila K', 'Inactive', 'Lomofy ', 'Nila', 'Kulkarni'),
('C90000', 'Nirmala Gupta', 'Nirmala G', 'Inactive', 'Hatello ', 'Nirmala', 'Gupta'),
('C130000', 'Devaraj Choudhary', 'Devaraj C', 'Active', 'Anetly', 'Devaraj', 'Choudhary');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
