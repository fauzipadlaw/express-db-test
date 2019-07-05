-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jul 04, 2019 at 10:31 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `item` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `item`, `quantity`, `total_price`) VALUES
(1, 'Muhammad', 'Fauzi', 'fauzi@mail.com', 'Barang1', 3, '150000'),
(2, 'Muhammad', 'Fauzi', 'fauzi@mail.com', 'Barang2', 1, '100000'),
(3, 'Joko', 'Widodo', 'joko@mail.com', 'Barang2', 8, '300000'),
(4, 'Jusuf', 'Kalla', 'jusuf@mail.com', 'Barang4', 10, '5000000'),
(5, 'Muhammad', 'Fauzi', 'fauzi@mail.com', 'Barang5', 5, '600000'),
(6, 'Muhammad', 'Fauzi', 'fauzi@mail.com', 'Barang6', 6, '600000'),
(7, 'Michael', 'Johnson', 'michael@mail.com', 'Barang7', 7, '770000'),
(8, 'Gracia', 'Andre', 'gracia@mail.com', 'Barang8', 8, '800000'),
(9, 'Chelsea', 'Oliver', 'chelsea@mail.com', 'Barang9', 9, '900000'),
(10, 'Michael', 'Johnson', 'michael@mail.com', 'Barang10', 10, '10101000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
