-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 07:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swapdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `sno` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `sts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`sno`, `name`, `email`, `description`, `date`, `sts`) VALUES
(1, 'swap', 'swap@gmail.com', 'this is swap contact details', '2021-10-27 23:08:01', 0),
(2, 'dev', 'sachin@gmail.com', 'adfasFawf sadfawf adsfawf', '2021-10-27 23:13:10', 0),
(3, 'test', 'test@gmail.com', 'adsfa iedqwf wwafd', '2021-10-27 23:21:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `sno` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `descrip` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `sts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`sno`, `title`, `descrip`, `date`, `sts`) VALUES
(1, 'Go to buy food', 'Hello swap, go to buy food in panvel market. but before buy check the quality of food.\r\n', '2021-10-28 15:18:30', 0),
(2, ' Study for Math', 'please study exam on tomorrow.', '2021-10-28 15:42:18', 0),
(4, 'cricket', '31 oct 2021, India vs NZ match in T20 world cup ', '2021-10-28 15:54:24', 0),
(5, 'PHP', 'Php is server side programing language', '2021-10-28 16:06:04', 0),
(6, 'Favorite Cricketer', 'Sachin Tendulkar is my Favorite Cricketer. He was played on Indian Team. He is highest Run score(33000+ in test & ODI) in international Cricket.\r\nOnly one batman in world 100 Century in international Cricket. <b>God of Cricket</b>', '2021-10-28 17:10:23', 0),
(8, 'india vs new zealand', 'India and New Zealand are both yet to open their accounts. Both these teams have played one match each so far and lost - both of course to Pakistan. And this makes their clash against each other, which incidentally will be the next match for both these teams, a potential do or die affair.', '2021-10-29 14:25:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE `user1` (
  `sno` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `sts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`sno`, `username`, `password`, `date`, `sts`) VALUES
(1, 'swap', '$2y$10$Nr0vW71QIapQUkqUtfsRDuMR2OQl2IVBGaRE/P/xIbYBup3XSlb02', '2021-11-11 12:44:30', 0),
(2, 'secure', '$2y$10$olNWhhgmTX..I9yKkJrW7OIwRd9jj4FtwIgELkWEafJi84AgdHiCy', '2021-11-11 12:44:43', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user1`
--
ALTER TABLE `user1`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
