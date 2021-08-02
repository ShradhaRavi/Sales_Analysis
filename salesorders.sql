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
-- Table structure for table `salesorders`
--

CREATE TABLE `salesorders` (
  `salesOrderId` varchar(40) NOT NULL,
  `orderDate` varchar(40) NOT NULL,
  `expectedShipmentDate` varchar(40) NOT NULL,
  `salesOrderNum` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `subTotal` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL,
  `discountAmt` varchar(50) NOT NULL,
  `adjustment` varchar(50) NOT NULL,
  `customerId` varchar(50) NOT NULL,
  `currencyCode` varchar(30) NOT NULL,
  `exchangeRate` varchar(30) NOT NULL,
  `discount` varchar(30) NOT NULL,
  `poStartDate` varchar(40) NOT NULL,
  `poEndDate` varchar(40) NOT NULL,
  `poNum` varchar(100) NOT NULL,
  `salesOrderType` varchar(30) NOT NULL,
  `rolloverEndDate` varchar(40) NOT NULL,
  `billType` varchar(30) NOT NULL,
  `possibleRollover` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salesorders`
--

INSERT INTO `salesorders` (`salesOrderId`, `orderDate`, `expectedShipmentDate`, `salesOrderNum`, `status`, `subTotal`, `total`, `discountAmt`, `adjustment`, `customerId`, `currencyCode`, `exchangeRate`, `discount`, `poStartDate`, `poEndDate`, `poNum`, `salesOrderType`, `rolloverEndDate`, `billType`, `possibleRollover`) VALUES
('S170', '01-10-2020', '26-12-2020', 'CTPL/Daniry/202021/003', 'partially_invoiced', 'INR 2,02,369.00', 'INR 2,02,369.00', 'INR 0.00', 'INR 0.00', 'C70000', 'USD', '75.46', '0.0%', '01-10-2020', '31-12-2020', 'CTPL/Daniry/202021/003', 'EC/RO', '28-02-2021', 'Monthly', 'Y'),
('S325', '01-11-2020', '23-02-2021', 'CTPL/Daniry/202021/004', 'partially_invoiced', 'INR 6,18,369.00', 'INR 6,18,369.00', 'INR 0.00', 'INR 0.00', 'C70000', 'USD', '68.91', '0.0%', '01-11-2020', '28-02-2021', 'CTPL/Daniry/202021/004', 'EC/EB', '28-02-2021', 'Milestone', 'N'),
('S135', '01-04-2020', '26-07-2020', 'CTPL/Lomofy/202021/004', 'partially_invoiced', 'INR 2,12,369.00', 'INR 2,12,369.00', 'INR 0.00', 'INR 0.00', 'C100000', 'USD', '72.96', '0.0%', '01-04-2020', '31-07-2020', 'CTPL/Lomofy/202021/004', 'EC/RO', '31-10-2020', 'Monthly', 'Y'),
('S380', '01-08-2020', '26-12-2020', 'CTPL/Lomofy/202021/005', 'partially_invoiced', 'INR 6,18,369.00', 'INR 6,18,369.00', 'INR 0.00', 'INR 0.00', 'C100000', 'USD', '74.93', '0.0%', '01-08-2020', '31-12-2020', 'CTPL/Lomofy/202021/005', 'EC/EB', '31-12-2020', 'Milestone', 'N'),
('S140', '01-08-2020', '25-11-2020', 'CTPL/Hatello/202021/002', 'invoiced', 'INR 6,72,369.00', 'INR 6,72,369.00', 'INR 0.00', 'INR 0.00', 'C90000', 'USD', '73.34', '0.0%', '01-08-2020', '30-11-2020', 'CTPL/Hatello/202021/002', 'EC/RO', '31-01-2021', 'Monthly', 'Y'),
('S250', '01-07-2020', '26-12-2020', 'CTPL/Hatello/202021/003', 'invoiced', 'INR 6,24,369.00', 'INR 6,24,369.00', 'INR 0.00', 'INR 0.00', 'C90000', 'USD', '75.44', '0.0%', '01-07-2020', '31-12-2020', 'CTPL/Hatello/202021/003', 'EC/EB', '31-12-2020', 'Milestone', 'N'),
('S440', '01-07-2020', '26-12-2020', 'CTPL/Anetly/202021/001', 'pending_approval', 'INR 2,02,369.00', 'INR 2,02,369.00', 'INR 0.00', 'INR 0.00', 'C130000', 'USD', '73.62', '0.0%', '01-07-2020', '31-12-2020', 'CTPL/Anetly/202021/001', 'EC/RO', '31-03-2021', 'Monthly', 'Y'),
('S430', '01-04-2020', '25-11-2020', 'CTPL/Anetly/202021/002', 'invoiced', 'INR 6,38,369.00', 'INR 6,38,369.00', 'INR 0.00', 'INR 0.00', 'C130000', 'USD', '74.99', '0.0%', '01-04-2020', '30-11-2020', 'CTPL/Anetly/202021/002', 'EC/EB', '30-11-2020', 'Milestone', 'N');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
