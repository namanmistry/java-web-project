-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2020 at 08:45 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `technicalblogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'naman', 'fighter7415963@gmail.com', 'Fwd: Inspection of Solar PV Module', 'hello world'),
(2, 'naman', 'fighter7415963@gmail.com', 'Fwd: Fwd: SAMPLE FORMATS OF DOCUMENTS OF  ISO 9001:2015 CERTIFICATION FOR UGVCL', 'hello my name is naman'),
(3, 'jay mistry', 'jay123@gmail.com', 'hello bro', 'this is the testing  email'),
(4, 'jay mistry', 'jay123@gmail.com', 'Fwd: Fwd: DOCUMENTS FILE FOR MASTER LIST OF DOCUMENTS', 'hello oqiwjeoqpwiepqo'),
(5, 'adcoijoi', 'mail@gmail.com', 'Fwd: Inspection of Solar PV Module', 'hello world kajsdhlkjasdl'),
(6, 'jay mistry', 'jay123@gmail.com', 'llalalalalla', 'l;eamdf;lfw,;vlr,;vw\'lvmqlv'),
(7, 'naman', 'fighter7415963@gmail.com', 'Fwd: Inspection of Solar PV Module', 'alksjdlakjdskadjfladjslfkJLSKDF'),
(8, 'jay mistry', 'jay123@gmail.com', 'Fwd: Fwd: SAMPLE FORMATS OF DOCUMENTS OF  ISO 9001:2015 CERTIFICATION FOR UGVCL', 'kjhk,jbkj'),
(9, 'naman', 'fighter7415963@gmail.com', 'hello', ',smdvn.,mSDRB'),
(10, 'naman', 'fighter7415963@gmail.com', 'hello', 'fdzxn'),
(11, 'naman', 'fighter7415963@gmail.com', 'hello', 'fdzxn'),
(12, 'naman', 'fighter7415963@gmail.com', 'hello', 'ZCSB'),
(13, 'naman', 'fighter7415963@gmail.com', 'hello', 'ZCSB'),
(14, 'naman', 'fighter7415963@gmail.com', 'hello', 'fdzxn'),
(15, 'naman', 'fighter7415963@gmail.com', 'hello', 'aDV'),
(16, 'naman', 'fighter7415963@gmail.com', 'hello', 'ADV'),
(17, 'naman', 'fighter7415963@gmail.com', 'hello', 'zdavzb as'),
(18, 'naman', 'fighter7415963@gmail.com', 'hello', 'zdvzdvx'),
(19, 'naman', 'fighter7415963@gmail.com', 'hello', 'dgztmhm');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'naman', 'fighter7415963@gmail.com', 'this is testing', 'hello bro'),
(2, 'jaya', 'fighter7415963@gmail.com', 'this is testingadm', 'w,.emd.wed');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content1` varchar(1000) DEFAULT NULL,
  `content2` varchar(1000) DEFAULT NULL,
  `content3` varchar(1000) DEFAULT NULL,
  `content4` varchar(1000) DEFAULT NULL,
  `content5` varchar(1000) DEFAULT NULL,
  `content6` varchar(1000) DEFAULT NULL,
  `content7` varchar(1000) DEFAULT NULL,
  `content8` varchar(1000) DEFAULT NULL,
  `content9` varchar(1000) DEFAULT NULL,
  `content10` varchar(1000) DEFAULT NULL,
  `slug` varchar(50) NOT NULL,
  `srno` int(255) DEFAULT NULL,
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content1`, `content2`, `content3`, `content4`, `content5`, `content6`, `content7`, `content8`, `content9`, `content10`, `slug`, `srno`, `likes`) VALUES
(1, 'naman', 'ndmwLE/NF;OGR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 4),
(6, 'namo', '<h1>how are you?</h1>', '', '', '', '', '', '', '', '', '', 'narendra', NULL, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
