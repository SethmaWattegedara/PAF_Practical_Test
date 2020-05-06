-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 02:12 PM
-- Server version: 8.0.16
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient_reg`
--

CREATE TABLE `patient_reg` (
  `patientID` int(11) NOT NULL,
  `name` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dob` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gender` varchar(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `homeadd` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `homephone` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mobile` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patient_reg`
--

INSERT INTO `patient_reg` (`patientID`, `name`, `dob`, `gender`, `homeadd`, `homephone`, `mobile`, `email`, `password`) VALUES
(38, 'Nisha', '1995-01-05', 'Female', 'Colombo', '0112345675', '0771234654', 'nisha@gmail.com', '1234567'),
(39, 'Lakshan', '1997-05-06', 'Male', 'Malabe', '0112345678', '0773421567', 'lakshan@mail.com', '123456'),
(40, 'Dilky', '1997-06-04', 'Female', 'Galle', '0301234567', '0713245374', 'dilky@gmail.com', '123456'),
(41, 'Udara', '1975-12-12', 'Male', 'Gampaha', '0112345678', '0772237643', 'udara@gmail.com', '123456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient_reg`
--
ALTER TABLE `patient_reg`
  ADD PRIMARY KEY (`patientID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient_reg`
--
ALTER TABLE `patient_reg`
  MODIFY `patientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
