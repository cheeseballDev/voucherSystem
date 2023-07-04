-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2023 at 10:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accounts`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(25) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `password` varchar(25) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin1234');

-- --------------------------------------------------------

--
-- Table structure for table `tuition`
--

CREATE TABLE `tuition` (
  `currentamount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tuition`
--

INSERT INTO `tuition` (`currentamount`) VALUES
(40000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(25) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `password` varchar(25) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `lastname` varchar(25) DEFAULT NULL,
  `firstname` varchar(25) DEFAULT NULL,
  `middlename` varchar(25) DEFAULT NULL,
  `trackstand` varchar(6) DEFAULT NULL,
  `schooltype` varchar(10) DEFAULT NULL,
  `voucherstatus` varchar(25) DEFAULT NULL,
  `previousschool` varchar(32) DEFAULT NULL,
  `yeargraduated` varchar(5) DEFAULT NULL,
  `gradelevel` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `lastname`, `firstname`, `middlename`, `trackstand`, `schooltype`, `voucherstatus`, `previousschool`, `yeargraduated`, `gradelevel`) VALUES
(7, 'testaccountone', 'pass', 'villar', 'matthew', 'nagar', 'ABM', 'PUBLIC', 'VOUCHER RECIPIENT', 'aics', '2016', 'GRADE 11'),
(8, 'testaccounttwo', 'password1', 'monghit', 'leo', 'zachary', 'HUMMS', 'PUBLIC', 'NON-ESC GUARANTEE', 'sumulong', '2019', 'GRADE 12'),
(9, 'accountone', 'passwordsample', 'lindo', 'airah', 'mei', 'STEM', 'PRIVATE', 'ESC GUARANTEE', 'sumulong', '2024', 'GRADE 12'),
(10, 'testaccount42', 'samplepass', 'rebenito', 'allrei', 'samplingname', 'ABM', 'PRIVATE', 'NON-ESC GUARANTEE', 'lastschool', '2018', 'GRADE 11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
