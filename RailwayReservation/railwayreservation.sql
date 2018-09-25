-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2018 at 09:21 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railwayreservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `trainNumber` varchar(10) COLLATE utf8_bin NOT NULL,
  `trainName` varchar(20) COLLATE utf8_bin NOT NULL,
  `trainSrcStn` varchar(20) COLLATE utf8_bin NOT NULL,
  `srcDepTime` time(5) NOT NULL,
  `trainDestStn` varchar(20) COLLATE utf8_bin NOT NULL,
  `destArrTime` time(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`trainNumber`, `trainName`, `trainSrcStn`, `srcDepTime`, `trainDestStn`, `destArrTime`) VALUES
('SPL/9003', 'BDTS NZM RAJ', 'BANDRA TERMINUS', '16:05:00.00000', 'H NIZAMUDDIN', '06:00:00.00000'),
('SPL/9004', 'NZM BDTS RAJ', 'H NIZAMUDDIN', '16:15:00.00000', 'BANDRA TERMINUS', '06:10:00.00000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`trainNumber`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
