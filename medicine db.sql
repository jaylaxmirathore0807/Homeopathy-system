-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2018 at 07:05 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicine`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `symptom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `type`, `symptom`) VALUES
(1, 'Mental', 'Irritable'),
(2, 'Mental', 'Suspicious'),
(3, 'Mental', 'Despair of Recovery'),
(4, 'Physical', 'Cold'),
(5, 'Physical', 'Weakness'),
(6, 'Physical', 'Heat'),
(7, 'Physical', 'Sleep'),
(8, 'Particular', 'Headache'),
(9, 'Particular', 'Swelling'),
(10, 'Particular', 'Rickety'),
(11, 'Particular', 'Styes'),
(12, 'Particular', 'Loss of Smell'),
(13, 'Gynecological', 'Metrorrhagia'),
(14, 'Gynecological', 'Sterility'),
(15, 'Pediatrics', 'Caries'),
(16, 'Pediatrics', 'Teething Troubles'),
(17, 'Pediatrics', 'Late Walking'),
(18, 'Pediatrics', 'Defect in Talking'),
(19, 'Mental', 'Indolent'),
(20, 'Mental', 'Care Striken'),
(21, 'Mental', 'Depressed'),
(22, 'Physical', 'Exertion'),
(23, 'Physical', 'Anticipation'),
(24, 'Particular', 'Distension'),
(25, 'Gynecological', 'Late Menstruation'),
(26, 'Gynecological', 'Tumour in Ovary'),
(27, 'Gynecological', 'Pregnancy'),
(28, 'Mental', 'Intolerant or Violent'),
(29, 'Physical', 'Mental Exertion'),
(30, 'Physical', 'Weakness'),
(31, 'Pediatrics', 'Kawasaki disease');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `uname` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`uname`, `pwd`) VALUES
('jaya', '123'),
('pooja', '123'),
('sarvesh', '123');

-- --------------------------------------------------------

--
-- Table structure for table `med_info`
--

CREATE TABLE `med_info` (
  `id` int(11) NOT NULL,
  `medicine_info` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `sno` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `Parents` varchar(50) NOT NULL,
  `siblings` int(11) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `Problem` varchar(20) NOT NULL,
  `symptom` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`sno`, `name`, `age`, `date`, `Parents`, `siblings`, `reason`, `Problem`, `symptom`, `description`, `address`) VALUES
(1, 'sarvesh', 22, '2018-03-01', 'Both Alive', 2, 'Blennelytria', 'Mental', 'Irritable', 'none', 'saf'),
(2, 'pooja', 22, '2018-03-08', 'Both Alive', 2, 'Injury', 'Particular', 'Headache', 'headache in right side', 'b/12 st 7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
