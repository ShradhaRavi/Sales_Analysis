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
-- Table structure for table `invoiceitems`
--

CREATE TABLE `invoiceitems` (
  `invoiceId` int(11) NOT NULL,
  `productId` varchar(30) NOT NULL,
  `itemName` varchar(500) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `subTotal` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL,
  `billItemId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoiceitems`
--

INSERT INTO `invoiceitems` (`invoiceId`, `productId`, `itemName`, `quantity`, `subTotal`, `total`, `billItemId`) VALUES
(1000, 'P224', 'SP2020 Sprint 2 estimates for specs - 100% advance', '1.00', 'INR 12,369.00', 'INR 12,369.00', 'B0005'),
(1000, 'P225', 'Information Technology(IT) Design and Development Services-Junior .NET programmer', '0.30', 'INR 8,369.00', 'INR 8,369.00', 'B0006'),
(1001, 'P226', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 96,745.50', 'INR 96,745.50', 'B0007'),
(1001, 'P227', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 84,885.50', 'INR 84,885.50', 'B0008'),
(1002, 'P228', 'SP2020 Sprint 2 estimates for specs - 100% advance', '10.30', 'INR 52,722.50', 'INR 52,722.50', 'B0009'),
(1002, 'P229', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '22.00', 'INR 2,53,529.00', 'INR 2,53,529.00', 'B0010'),
(1003, 'P230', 'Information Technology(IT) Design and Development Services - net programmer', '22.00', 'INR 2,53,529.00', 'INR 2,53,529.00', 'B0011'),
(1003, 'P231', 'Information Technology(IT) Design and Development Services-Junior .NET programmer', '13.00', 'INR 58,588.50', 'INR 58,588.50', 'B0012'),
(1004, 'P232', 'SP2020 Sprint 2 estimates for specs - 100% advance', '1.00', 'INR 17,369.00', 'INR 17,369.00', 'B0023'),
(1004, 'P233', 'Information Technology(IT) Design and Development Services-Junior .NET programmer', '0.30', 'INR 11,369.00', 'INR 11,369.00', 'B0024'),
(1005, 'P234', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 96,745.50', 'INR 96,745.50', 'B0025'),
(1005, 'P235', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 86,885.50', 'INR 86,885.50', 'B0026'),
(1006, 'P236', 'SP2020 Sprint 2 estimates for specs - 100% advance', '10.30', 'INR 33,912.40', 'INR 33,912.40', 'B0027'),
(1006, 'P237', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '22.00', 'INR 89,761.40', 'INR 89,761.40', 'B0028'),
(1007, 'P238', 'Information Technology(IT) Design and Development Services - net programmer', '22.00', 'INR 1,30,210.30', 'INR 1,30,210.30', 'B0029'),
(1007, 'P239', 'Information Technology(IT) Design and Development Services-Junior .NET programmer', '13.00', 'INR 55,300.40', 'INR 55,300.40', 'B0030'),
(1008, 'P240', 'SP2020 Sprint 2 estimates for specs - 100% advance', '1.00', 'INR 2,01,710.70', 'INR 2,01,710.70', 'B0031'),
(1008, 'P241', 'Information Technology(IT) Design and Development Services-Junior .NET programmer', '0.30', 'INR 67,236.90', 'INR 67,236.90', 'B0032'),
(1009, 'P242', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 1,34,473.80', 'INR 1,34,473.80', 'B0033'),
(1009, 'P243', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 1,34,473.80', 'INR 1,34,473.80', 'B0034'),
(1010, 'P244', 'SP2020 Sprint 2 estimates for specs - 100% advance', '10.30', 'INR 53,722.50', 'INR 53,722.50', 'B0035'),
(1010, 'P245', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '22.00', 'INR 2,54,529.00', 'INR 2,54,529.00', 'B0036'),
(1011, 'P246', 'Information Technology(IT) Design and Development Services - net programmer', '22.00', 'INR 2,55,529.00', 'INR 2,55,529.00', 'B0037'),
(1011, 'P247', 'Information Technology(IT) Design and Development Services-Junior .NET programmer', '13.00', 'INR 60,588.50', 'INR 60,588.50', 'B0038'),
(1012, 'P248', 'SP2020 Sprint 2 estimates for specs - 100% advance', '1.00', 'INR 1,00,025.00', 'INR 1,00,025.00', 'B0045'),
(1012, 'P249', 'Information Technology(IT) Design and Development Services-Junior .NET programmer', '0.30', 'INR 87,285.70', 'INR 87,285.70', 'B0046'),
(1013, 'P250', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 68,739.20', 'INR 68,739.20', 'B0047'),
(1013, 'P251', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 56,134.60', 'INR 56,134.60', 'B0048'),
(1014, 'P252', 'SP2020 Sprint 2 estimates for specs - 100% advance', '10.30', 'INR 57,722.50', 'INR 57,722.50', 'B0049'),
(1014, 'P253', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '22.00', 'INR 2,58,529.00', 'INR 2,58,529.00', 'B0050'),
(1015, 'P254', 'Information Technology(IT) Design and Development Services - net programmer', '22.00', 'INR 2,59,529.00', 'INR 2,59,529.00', 'B0051'),
(1015, 'P255', 'Information Technology(IT) Design and Development Services-Junior .NET programmer', '13.00', 'INR 62,588.50', 'INR 62,588.50', 'B0052'),
(1016, 'P226', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 96,745.50', 'INR 96,745.50', 'B0007'),
(1016, 'P227', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 84,885.50', 'INR 84,885.50', 'B0008'),
(1017, 'P234', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 96,745.50', 'INR 96,745.50', 'B0025'),
(1017, 'P235', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 86,885.50', 'INR 86,885.50', 'B0026'),
(1018, 'P234', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 96,745.50', 'INR 96,745.50', 'B0025'),
(1018, 'P235', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 86,885.50', 'INR 86,885.50', 'B0026'),
(1019, 'P234', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 96,745.50', 'INR 96,745.50', 'B0025'),
(1019, 'P235', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 86,885.50', 'INR 86,885.50', 'B0026'),
(1020, 'P242', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 1,34,473.80', 'INR 1,34,473.80', 'B0033'),
(1020, 'P243', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 1,34,473.80', 'INR 1,34,473.80', 'B0034'),
(1021, 'P242', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 1,34,473.80', 'INR 1,34,473.80', 'B0033'),
(1021, 'P243', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 1,34,473.80', 'INR 1,34,473.80', 'B0034'),
(1022, 'P250', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 68,739.20', 'INR 68,739.20', 'B0047'),
(1022, 'P251', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 56,134.60', 'INR 56,134.60', 'B0048'),
(1023, 'P250', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 68,739.20', 'INR 68,739.20', 'B0047'),
(1023, 'P251', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 56,134.60', 'INR 56,134.60', 'B0048'),
(1024, 'P250', 'Information Technology(IT) Design and Development Services - net programmer', '3.00', 'INR 68,739.20', 'INR 68,739.20', 'B0047'),
(1024, 'P251', 'Information Technology(IT) Design and Development Services -SP2020 Sprint 2 -30% advance', '3.00', 'INR 56,134.60', 'INR 56,134.60', 'B0048');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
