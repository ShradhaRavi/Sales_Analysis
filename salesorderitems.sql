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
-- Table structure for table `salesorderitems`
--

CREATE TABLE `salesorderitems` (
  `salesOrderId` varchar(30) NOT NULL,
  `productId` varchar(30) NOT NULL,
  `itemName` varchar(500) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `subTotal` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salesorderitems`
--

INSERT INTO `salesorderitems` (`salesOrderId`, `productId`, `itemName`, `quantity`, `subTotal`, `total`) VALUES
('S170', 'P224', 'SP2020 Sprint 2 estimates for specs - 100% advance', '1.00', 'INR 12,369.00', 'INR 12,369.00'),
('S170', 'P225', 'Information Technology(IT) Design and Development Services-Junior .NET programmer', '0.30', 'INR 8,369.00', 'INR 8,369.00'),
('S170', 'P226', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 96,745.50', 'INR 96,745.50'),
('S170', 'P227', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 84,885.50', 'INR 84,885.50'),
('S325', 'P228', 'SP2020 Sprint 2 estimates for specs - 100% advance', '10.30', 'INR 52,722.50', 'INR 52,722.50'),
('S325', 'P229', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '22.00', 'INR 2,53,529.00', 'INR 2,53,529.00'),
('S325', 'P230', 'Information Technology(IT) Design and Development Services - net programmer', '22.00', 'INR 2,53,529.00', 'INR 2,53,529.00'),
('S325', 'P231', 'Information Technology(IT) Design and Development Services-Junior .NET programmer', '13.00', 'INR 58,588.50', 'INR 58,588.50'),
('S135', 'P232', 'SP2020 Sprint 2 estimates for specs - 100% advance', '1.00', 'INR 17,369.00', 'INR 17,369.00'),
('S135', 'P233', 'Information Technology(IT) Design and Development Services-Junior .NET programmer', '0.30', 'INR 11,369.00', 'INR 11,369.00'),
('S135', 'P234', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 96,745.50', 'INR 96,745.50'),
('S135', 'P235', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 86,885.50', 'INR 86,885.50'),
('S380', 'P236', 'SP2020 Sprint 2 estimates for specs - 100% advance', '10.30', 'INR 33,912.40', 'INR 33,912.40'),
('S380', 'P237', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '22.00', 'INR 89,761.40', 'INR 89,761.40'),
('S380', 'P238', 'Information Technology(IT) Design and Development Services - net programmer', '22.00', 'INR 1,30,210.30', 'INR 1,30,210.30'),
('S380', 'P239', 'Information Technology(IT) Design and Development Services-Junior .NET programmer', '13.00', 'INR 55,300.40', 'INR 55,300.40'),
('S140', 'P240', 'SP2020 Sprint 2 estimates for specs - 100% advance', '1.00', 'INR 2,01,710.70', 'INR 2,01,710.70'),
('S140', 'P241', 'Information Technology(IT) Design and Development Services-Junior .NET programmer', '0.30', 'INR 67,236.90', 'INR 67,236.90'),
('S140', 'P242', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 1,34,473.80', 'INR 1,34,473.80'),
('S140', 'P243', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 1,34,473.80', 'INR 1,34,473.80'),
('S250', 'P244', 'SP2020 Sprint 2 estimates for specs - 100% advance', '10.30', 'INR 53,722.50', 'INR 53,722.50'),
('S250', 'P245', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '22.00', 'INR 2,54,529.00', 'INR 2,54,529.00'),
('S250', 'P246', 'Information Technology(IT) Design and Development Services - net programmer', '22.00', 'INR 2,55,529.00', 'INR 2,55,529.00'),
('S250', 'P247', 'Information Technology(IT) Design and Development Services-Junior .NET programmer', '13.00', 'INR 60,588.50', 'INR 60,588.50'),
('S440', 'P248', 'SP2020 Sprint 2 estimates for specs - 100% advance', '1.00', 'INR 1,00,025.00', 'INR 1,00,025.00'),
('S440', 'P249', 'Information Technology(IT) Design and Development Services-Junior .NET programmer', '0.30', 'INR 87,285.70', 'INR 87,285.70'),
('S440', 'P250', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 68,739.20', 'INR 68,739.20'),
('S440', 'P251', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 56,134.60', 'INR 56,134.60'),
('S430', 'P252', 'SP2020 Sprint 2 estimates for specs - 100% advance', '10.30', 'INR 57,722.50', 'INR 57,722.50'),
('S430', 'P253', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '22.00', 'INR 2,58,529.00', 'INR 2,58,529.00'),
('S430', 'P254', 'Information Technology(IT) Design and Development Services - net programmer', '22.00', 'INR 2,59,529.00', 'INR 2,59,529.00'),
('S430', 'P255', 'Information Technology(IT) Design and Development Services-Junior .NET programmer', '13.00', 'INR 62,588.50', 'INR 62,588.50');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
