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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoiceId` int(11) NOT NULL,
  `invoiceDate` varchar(40) NOT NULL,
  `invoiceNum` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `customerId` varchar(30) NOT NULL,
  `dueDate` varchar(40) NOT NULL,
  `discount` varchar(30) NOT NULL,
  `subTotal` varchar(50) NOT NULL,
  `adjustment` varchar(30) NOT NULL,
  `total` varchar(50) NOT NULL,
  `discountAmt` varchar(30) NOT NULL,
  `ageInDays` varchar(40) NOT NULL,
  `ageTier` varchar(40) NOT NULL,
  `balance` varchar(50) NOT NULL,
  `poNum` varchar(100) NOT NULL,
  `exchangeRate` varchar(30) NOT NULL,
  `dicountAmt_bcy` varchar(30) NOT NULL,
  `discountAmt_fcy` varchar(30) NOT NULL,
  `writeOffAmt` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invoiceId`, `invoiceDate`, `invoiceNum`, `status`, `customerId`, `dueDate`, `discount`, `subTotal`, `adjustment`, `total`, `discountAmt`, `ageInDays`, `ageTier`, `balance`, `poNum`, `exchangeRate`, `dicountAmt_bcy`, `discountAmt_fcy`, `writeOffAmt`) VALUES
(1000, '16-09-2020', 'GST/2020-21/01', 'Closed', 'C70000', '23-09-2020', '0', 'INR 20,738.00', 'INR 0.00', 'INR 20,738.00', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Daniry/202021/003', '75.8276', '0', '0', '0'),
(1001, '02-12-2020', 'GST/2020-21/02', 'Closed', 'C70000', '09-12-2020', '0', 'INR 1,81,631.00', 'INR 0.00', 'INR 1,81,631.00', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Daniry/202021/003', '75.8276', '0', '0', '0'),
(1002, '06-02-2021', 'GST/2020-21/03', 'Closed', 'C70000', '13-02-2021', '0', 'INR 3,06,251.50', 'INR 0.00', 'INR 3,06,251.50', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Daniry/202021/004', '76.4577', '0', '0', '0'),
(1003, '06-03-2021', 'GST/2020-21/04', 'Closed', 'C70000', '13-03-2021', '0', 'INR 3,12,117.50', 'INR 0.00', 'INR 3,12,117.50', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Daniry/202021/004', '76.4577', '0', '0', '0'),
(1004, '25-06-2020', 'GST/2020-21/05', 'Closed', 'C100000', '02-07-2020', '0', 'INR 28,738.00', 'INR 0.00', 'INR 28,738.00', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Lomofy/202021/004', '75.6961', '0', '0', '0'),
(1005, '11-08-2020', 'GST/2020-21/06', 'Closed', 'C100000', '18-08-2020', '0', 'INR 1,83,631.00', 'INR 0.00', 'INR 1,83,631.00', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Lomofy/202021/004', '75.115', '0', '0', '0'),
(1006, '02-12-2020', 'GST/2020-21/07', 'Open', 'C100000', '09-12-2020', '0', 'INR 1,23,673.80', 'INR 0.00', 'INR 1,23,673.80', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 1,54,592.25', 'CTPL/Lomofy/202021/005', '75.115', '0', '0', '0'),
(1007, '02-01-2021', 'GST/2020-21/08', 'Open', 'C100000', '09-01-2021', '0', 'INR 1,85,510.70', 'INR 0.00', 'INR 1,85,510.70', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 1,54,592.25', 'CTPL/Lomofy/202021/005', '75.115', '0', '0', '0'),
(1008, '21-07-2020', 'GST/2020-21/09', 'Open', 'C90000', '28-07-2020', '0', 'INR 2,68,947.60', 'INR 0.00', 'INR 2,68,947.60', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 67,236.90', 'CTPL/Hatello/202021/002', '1', '0', '0', '0'),
(1009, '21-10-2020', 'GST/2020-21/10', 'Open', 'C90000', '28-10-2020', '0', 'INR 2,68,947.60', 'INR 0.00', 'INR 2,68,947.60', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 67,236.90', 'CTPL/Hatello/202021/002', '1', '0', '0', '0'),
(1010, '11-11-2020', 'GST/2020-21/11', 'Open', 'C90000', '18-11-2020', '0', 'INR 3,08,251.50', 'INR 0.00', 'INR 3,08,251.50', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 1,56,092.25', 'CTPL/Hatello/202021/003', '75.4411', '0', '0', '0'),
(1011, '11-12-2020', 'GST/2020-21/12', 'Open', 'C90000', '18-12-2020', '0', 'INR 3,16,117.50', 'INR 0.00', 'INR 3,16,117.50', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 1,56,092.25', 'CTPL/Hatello/202021/003', '75.4411', '0', '0', '0'),
(1012, '04-02-2021', 'GST/2020-21/13', 'Closed', 'C130000', '11-02-2021', '0', 'INR 1,87,310.70', 'INR 0.00', 'INR 1,87,310.70', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Anetly/202021/001', '75.4796', '0', '0', '0'),
(1013, '21-03-2021', 'GST/2020-21/14', 'Closed', 'C130000', '28-03-2021', '0', 'INR 1,24,873.80', 'INR 0.00', 'INR 1,24,873.80', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Anetly/202021/001', '75.48', '0', '0', '0'),
(1014, '16-07-2020', 'GST/2020-21/15', 'Closed', 'C130000', '23-07-2020', '0', 'INR 3,16,251.50', 'INR 0.00', 'INR 3,16,251.50', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Anetly/202021/002', '75.48', '0', '0', '0'),
(1015, '16-08-2020', 'GST/2020-21/16', 'Closed', 'C130000', '23-08-2020', '0', 'INR 3,22,117.50', 'INR 0.00', 'INR 3,22,117.50', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Anetly/202021/002', '75.4797', '0', '0', '0'),
(1016, '31-01-2021', 'GST/2020-21/02', 'Closed', 'C70000', '09-12-2020', '0', 'INR 1,81,631.00', 'INR 0.00', 'INR 1,81,631.00', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Daniry/202021/003', '75.8276', '0', '0', '0'),
(1017, '31-08-2020', 'GST/2020-21/06', 'Closed', 'C100000', '18-08-2020', '0', 'INR 1,83,631.00', 'INR 0.00', 'INR 1,83,631.00', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Lomofy/202021/004', '75.115', '0', '0', '0'),
(1018, '30-09-2020', 'GST/2020-21/06', 'Closed', 'C100000', '18-08-2020', '0', 'INR 1,83,631.00', 'INR 0.00', 'INR 1,83,631.00', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Lomofy/202021/004', '75.115', '0', '0', '0'),
(1019, '30-10-2020', 'GST/2020-21/06', 'Closed', 'C100000', '18-08-2020', '0', 'INR 1,83,631.00', 'INR 0.00', 'INR 1,83,631.00', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Lomofy/202021/004', '75.115', '0', '0', '0'),
(1020, '30-12-2020', 'GST/2020-21/10', 'Open', 'C90000', '28-10-2020', '0', 'INR 2,68,947.60', 'INR 0.00', 'INR 2,68,947.60', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 67,236.90', 'CTPL/Hatello/202021/002', '1', '0', '0', '0'),
(1021, '30-01-2021', 'GST/2020-21/10', 'Open', 'C90000', '28-10-2020', '0', 'INR 2,68,947.60', 'INR 0.00', 'INR 2,68,947.60', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 67,236.90', 'CTPL/Hatello/202021/002', '1', '0', '0', '0'),
(1022, '31-01-2021', 'GST/2020-21/14', 'Closed', 'C130000', '28-03-2021', '0', 'INR 1,24,873.80', 'INR 0.00', 'INR 1,24,873.80', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Anetly/202021/001', '75.48', '0', '0', '0'),
(1023, '28-02-2021', 'GST/2020-21/14', 'Closed', 'C130000', '28-03-2021', '0', 'INR 1,24,873.80', 'INR 0.00', 'INR 1,24,873.80', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Anetly/202021/001', '75.48', '0', '0', '0'),
(1024, '28-03-2021', 'GST/2020-21/14', 'Closed', 'C130000', '28-03-2021', '0', 'INR 1,24,873.80', 'INR 0.00', 'INR 1,24,873.80', 'INR 0.00', 'INR 30.00', '1. 0 - 30 days', 'INR 0.00', 'CTPL/Anetly/202021/001', '75.48', '0', '0', '0');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
