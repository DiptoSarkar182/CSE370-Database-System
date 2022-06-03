-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2021 at 02:16 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Registration Number` varchar(20) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Speciality` varchar(20) NOT NULL,
  `Qualifications` varchar(100) NOT NULL,
  `Schedule` varchar(20) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Registration Number`, `Name`, `Speciality`, `Qualifications`, `Schedule`, `Status`) VALUES
('123321', 'Jamal', 'Pediatric', 'MBBS', '8PM-9PM', 'Not Booked'),
('321123', 'Kamal', 'Nephrologist', 'MBBS', '5PM-6PM', 'Not Booked'),
('456654', 'Jamila', 'Gynocologist', 'MBBS', '9PM-10PM', 'Not Booked');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Name` varchar(100) NOT NULL,
  `NID` varchar(100) NOT NULL,
  `Mobile Number` varchar(100) NOT NULL,
  `Age` int(11) NOT NULL,
  `Sex` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Name`, `NID`, `Mobile Number`, `Age`, `Sex`) VALUES
('Fahim', '1234567891', '12127290', 29, 'Male'),
('David', '1234567892', '49152079', 45, 'Male'),
('Linda', '1234567893', '01530153', 50, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room Number` int(3) NOT NULL,
  `Availability` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room Number`, `Availability`) VALUES
(101, 'not booked'),
(102, 'not booked'),
(103, 'not booked'),
(104, 'not booked');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Registration Number`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`NID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
