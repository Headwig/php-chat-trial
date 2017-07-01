-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2017 at 02:39 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat2`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat2`
--

CREATE TABLE `chat2` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `chatid` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat2`
--

INSERT INTO `chat2` (`id`, `name`, `password`, `message`, `receiver`, `chatid`, `date`) VALUES
(155, 'germany', '', 'Guten morgen', 'india', 'germanyindia', '2017-07-01 00:31:21'),
(156, 'india', '', 'hi', 'US', 'indiaUS', '2017-07-01 00:31:50'),
(157, 'india', '', 'lol', 'germany', 'indiagermany', '2017-07-01 00:32:04'),
(158, 'germany', '', 'Hello TRUMP', 'US', 'germanyUS', '2017-07-01 00:33:22'),
(159, 'india', '', 'poop\r\n', 'US', 'indiaUS', '2017-07-01 00:33:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat2`
--
ALTER TABLE `chat2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat2`
--
ALTER TABLE `chat2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
