-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 05:07 PM
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
-- Database: `php`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(11) NOT NULL,
  `cname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `cname`) VALUES
(78, 'shoes'),
(79, 'clothes'),
(102, 'computer'),
(142, 'Skeleton');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rid` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `IP` varchar(100) NOT NULL,
  `sid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rid`, `rating`, `IP`, `sid`) VALUES
(116, 3, 'wr33er2we', 31),
(117, 2, 'tr4ereew', 29),
(118, 4, 'wert4t3w22', 31),
(122, 5, 'rw3ru33wr', 31),
(194, 5, 'qe3rt32q', 27),
(195, 1, 'ewr4t43r3', 27),
(202, 4, 'w3rt3r34', 27),
(204, 5, 'w3w45y6u7u', 34),
(205, 4, 'w4y68i87', 38),
(206, 1, '10.2.128.124', 27),
(246, 1, '192.168.1.7', 35),
(248, 5, '192.168.1.5', 35),
(250, 5, '192.168.7.110', 27);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `sid` int(11) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`sid`, `sname`, `image`, `phone`, `Address`, `cid`) VALUES
(27, 'ali', 'images.png', 2213, 'as', 78),
(29, 'kamil', 'uploaded-64689e442a9cc1.69977181.', 2222, 'sas321', 142),
(31, 'jak', 'images.png', 2213, 'as', 79),
(33, 'ahmed', 'images.png', 2222, 'as', 79),
(34, 'Jojo Store', 'images.png', 41232, 'stone ocen', 102),
(35, 'noone', 'cat.jpg', 123, 'sadness', 142),
(38, 'OMG', 'uploaded-6468987742b629.81952535.png', 12425, 'rip', 142),
(40, 'sad', 'lenovo.png', 123, 'sad', 142);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `rating_ibfk_1` (`sid`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `store_ibfk_1` (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `store` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `categories` (`cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
