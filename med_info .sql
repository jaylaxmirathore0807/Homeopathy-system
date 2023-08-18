-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2018 at 07:04 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `form`
--

-- --------------------------------------------------------

--
-- Table structure for table `med_info`
--

CREATE TABLE `med_info` (
  `id` int(11) NOT NULL,
  `symp` varchar(50) NOT NULL,
  `medicine_info` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `med_info`
--

INSERT INTO `med_info` (`id`, `symp`, `medicine_info`, `weight`) VALUES
(31, 'Fear of Dark', 'Calcarea', 2),
(31, 'Fear of Dark', 'Campher', 2),
(31, 'Fear of Dark', 'Causticum', 1),
(31, 'Fear of Dark', 'Carbo animalis', 2),
(31, 'Fear of Dark', 'Rhus Tox', 1),
(31, 'Fear of Dark', 'Stramonium', 3),
(31, 'Fear of Dark', 'Strontia', 3),
(3, 'Fear of Crowd', 'Arsenic', 1),
(3, 'Fear of Crowd', 'Causticum', 1),
(3, 'Fear of Crowd', 'Alumina', 1),
(3, 'Fear of Crowd', 'Baryta Carbonica', 1),
(3, 'Fear of Crowd', 'Calcarea Carbonica', 1),
(3, 'Fear of Crowd', 'Conium', 1),
(3, 'Fear of Crowd', 'Nux Vomica', 2),
(3, 'Fear of Crowd', 'Ferrum', 1),
(3, 'Fear of Crowd', 'Graphites', 1),
(3, 'Fear of Crowd', 'Rhus Tox', 1),
(32, 'Fear of Choking', 'Phosphorus', 2),
(32, 'Fear of Choking', 'Stramonium', 2),
(32, 'Fear of Choking', 'Carbo animalis', 1),
(33, 'Fear of Theft', 'Arsenic', 3),
(33, 'Fear of Theft', 'Conium', 2),
(33, 'Fear of Theft', 'Phosphorus', 2),
(33, 'Fear of Theft', 'Alumina', 1),
(33, 'Fear of Theft', 'Belladona', 1),
(33, 'Fear of Theft', 'Natrum Carbonicum', 1),
(33, 'Fear of Theft', 'Magnesia Carbonica', 1),
(33, 'Fear of Theft', 'Zincum', 1),
(28, 'Intolerant or Violent', 'Arsenic', 2),
(28, 'Intolerant or Violent', 'Campher', 1),
(28, 'Intolerant or Violent', 'Aurum', 3),
(28, 'Intolerant or Violent', 'Causticum', 2),
(28, 'Intolerant or Violent', 'Phosphorus', 1),
(28, 'Intolerant or Violent', 'Nux Vomica', 3),
(28, 'Intolerant or Violent', 'Zincum', 2),
(28, 'Intolerant or Violent', 'Stramonium', 2),
(28, 'Intolerant or Violent', 'Sepia', 2),
(28, 'Intolerant or Violent', 'Agaricus', 1),
(2, 'Suspicious', 'Arsenic', 3),
(2, 'Suspicious', 'Phosphorus', 2),
(2, 'Suspicious', 'Aurum', 2),
(2, 'Suspicious', 'Baryta Carbonica', 3),
(2, 'Suspicious', 'Belladona', 2),
(2, 'Suspicious', 'Rhus Tox', 3),
(2, 'Suspicious', 'Conium', 1),
(2, 'Suspicious', 'Borax', 2),
(20, 'Care Striken', 'Arsenic', 2),
(20, 'Care Striken', 'Phosphorus', 2),
(20, 'Care Striken', 'Baryta Carbonica', 2),
(37, 'Spring Season', 'Aurum', 1),
(37, 'Spring Season', 'Rhus Tox', 2),
(37, 'Spring Season', 'Belladona', 2),
(37, 'Spring Season', 'Calcarea Carbonica', 2),
(37, 'Spring Season', 'Nux Vomica', 2),
(37, 'Spring Season', 'Hepar', 1),
(37, 'Spring Season', 'Baryta muriatica', 1),
(36, 'Strom', 'Aurum', 1),
(36, 'Strom', 'Causticum', 1),
(36, 'Strom', 'Phosphorus', 2),
(36, 'Strom', 'Sepia', 2),
(36, 'Strom', 'Nitric acid', 1),
(36, 'Strom', 'Agaricus', 2),
(36, 'Strom', 'Hypericum', 1),
(38, 'Sugar Craving', 'Arsenic', 1),
(38, 'Sugar Craving', 'Ammonium Carbonicum', 2),
(38, 'Sugar Craving', 'Baryta Carbonica', 1),
(38, 'Sugar Craving', 'China', 3),
(38, 'Sugar Craving', 'Sepia', 2),
(39, 'Salt Craving', 'Causticum', 2),
(39, 'Salt Craving', 'Nitric acid', 2),
(39, 'Salt Craving', 'Phosphorus', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
