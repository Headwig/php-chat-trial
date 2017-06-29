-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2017 at 01:56 AM
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
  `message` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `chatid` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat2`
--

INSERT INTO `chat2` (`id`, `name`, `message`, `receiver`, `chatid`, `date`) VALUES
(30, 'India', 'Hello', 'US', 'IndiaUS', '2017-06-29 23:50:52'),
(31, 'India', 'Hello', 'US', 'IndiaUS', '2017-06-29 23:51:07'),
(32, 'US', 'Hello There Modi !', 'India', 'USIndia', '2017-06-29 23:51:27'),
(33, 'India', 'Hi !', 'UK', 'IndiaUK', '2017-06-29 23:51:45'),
(34, 'UK', 'Hello India ! ', 'India', 'UKIndia', '2017-06-29 23:52:05'),
(35, 'India ', 'Holla', 'Sri Lanka ', 'India Sri Lanka ', '2017-06-29 23:53:31'),
(36, 'sri Lanka', 'Kutta Kamina Janwar.', 'India', 'sri LankaIndia', '2017-06-29 23:53:51'),
(37, 'Sri Lanka ', 'Sssup', 'India ', 'Sri Lanka India ', '2017-06-29 23:54:08'),
(38, 'US', 'Holla !!!!', 'UK', 'USUK', '2017-06-29 23:55:31'),
(39, 'UK', 'hey nigga !', 'US', 'UKUS', '2017-06-29 23:55:51');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
