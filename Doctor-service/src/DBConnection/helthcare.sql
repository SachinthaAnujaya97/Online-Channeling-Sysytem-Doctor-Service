-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 08:01 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helthcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `appoinment`
--

CREATE TABLE `appoinment` (
  `appoinmentId` int(11) NOT NULL,
  `appoinmentDateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `patientId` int(11) NOT NULL,
  `paymentId` int(11) NOT NULL,
  `docId` int(11) NOT NULL,
  `hospitalId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `docId` int(11) NOT NULL,
  `fName` varchar(100) NOT NULL,
  `lNmae` varchar(100) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `age` int(11) NOT NULL,
  `docNIC` varchar(13) NOT NULL,
  `docEmail` varchar(200) DEFAULT NULL,
  `passwod` varchar(200) NOT NULL,
  `phoneNumber` int(15) NOT NULL,
  `ststus` varchar(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`docId`, `fName`, `lNmae`, `gender`, `age`, `docNIC`, `docEmail`, `passwod`, `phoneNumber`, `ststus`) VALUES
(2, 'lasan', 'dew', 'male', 40, '98653214V', 'lasan@gmail.com', '25fd', 715695698, 'Deleted'),
(3, 'cujkf', 'cfyk', 'Male', 32, '3265987885V', 'rasithabatuu@gmail.com', 'easdw123', 85214, 'Deleted'),
(5, 'Madushani', 'Nimali', 'Male', 35, '971652336V', 'lasan%40gmail.com', '284148de', 774569856, 'Deleted'),
(6, 'tufvuf', 'fycvf', 'Female', 42, '85953214V', 'thaaru@gmail.com', '9865lk', 713258565, 'Deleted'),
(8, 'Lalani', 'Gunasekara', 'Female', 20, '869532665V', 'lalanigunasekara@gmail.com', 'lalasi458', 715465322, 'Deleted'),
(9, 'Upul', 'Bandara', 'Male', 56, '785623114V', 'upulbandara@gmail.com', 'upul458', 774589653, 'Deleted'),
(10, 'Jayani', 'Kushalya', 'Female', 36, '971652336V', 'jayanikushalya\r\n	@gmail.com', 'hdf5246', 714586963, 'Deleted'),
(11, 'Samanjeewa', 'Wijethunge', 'Male', 50, '789563221V', 'samanjeewa%40gmail.com', 'sam5485', 777878455, 'active'),
(12, 'Yehan', 'Jayasekara', 'Male', 30, '789842278V', 'yehan@gmail.com', 'yej256', 777878455, 'Deleted'),
(13, 'menuka', 'kueuppu', 'Male', 36, '568942278V', 'menuka@gmail.com', '78dd', 713265987, 'active'),
(14, 'vishaka', 'Senarathna', 'Female', 36, '803265114V', 'vishakasenarathna@gmail.com', '78dd', 713265987, 'active'),
(15, 'ed', 'ewc', 'Female', 45, '803265114V', 'vishakasenarathna@gmail.com', '78dd', 713265987, 'active'),
(16, 'Sanude', 'Tharin', 'Male', 46, '703265984V', 'sanudethari@gmail.com', '284148de', 774569856, 'Deleted'),
(17, 'sfsw', 'wsf', 'fqw', 45, 'wfqwfwq', 'wqfqwf@gmail.com', 'wqf', 151948612, 'active'),
(18, 'Kethaki', 'Padmaperuma', 'Female', 26, '826598663V', 'kethakipadmaperuma@gmail.com', 'dsfefews', 713265984, 'active'),
(19, 'Kethaki', 'Padmaperuma', 'Female', 26, '826598663V', 'kethakipadmaperuma@gmail.com', 'dsfefews', 713265984, 'active'),
(20, 'efdfe', 'ad', 'ad', 35, '589597521V', 'dwdwferg@gmail.com', 'wf5849', 713265488, 'active'),
(31, 'sdf', 'wef', 'Male', 30, 'vfdvbrb', 'verg', 'rvwr', 11435643, 'Deleted'),
(49, 'sc', 'asc', 'Male', 34, '34fdc', 'csv s v', 'sdvsd', 713253422, 'Deleted'),
(50, 'sc', 'asc', 'Male', 78, '34fdc', 'csv s v', 'sdvsd', 713253422, 'Deleted'),
(51, 'sc', 'asc', 'Male', 45, '34fdc', 'csv s v', 'sdvsd', 713253422, 'Deleted'),
(52, 'sc', 'asc', 'Male', 46, '34fdc', 'csv s v', 'sdvsd', 713253422, 'Deleted'),
(53, 'sc', 'asc', 'Male', 50, '34fdc', 'csv s v', 'sdvsd', 713253422, 'Deleted'),
(54, 'sc', 'asc', 'Male', 50, '34fdc', 'csv%2Bs%2Bv', 'asdfghjk', 713253422, 'Deleted'),
(55, 'Manushi', 'Pabasara', 'Female', 30, '986532115V', 'manushu@gmail.com', 'manu123', 716598322, 'Deleted'),
(56, 'Manushi', 'Pabasara', 'Female', 30, '986532115V', 'manushupabasara.gmail.com', 'rahalatt', 716598322, 'active'),
(57, 'Jayani', 'kaushalya', 'Female', 45, '988776654V', 'jayanikaushalya%40gmail.com', 'jay345', 778657654, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospitalId` int(11) NOT NULL,
  `hospitalNmae` varchar(100) NOT NULL,
  `hospitalAddress` varchar(200) NOT NULL,
  `hospitalEmail` varchar(50) DEFAULT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hospitalId`, `hospitalNmae`, `hospitalAddress`, `hospitalEmail`, `password`) VALUES
(1, 'asdas', 'fsd', 'dfsd@eer', '123'),
(2, 'Asiri', 'Colombo 03', 'Asirihospital@gmail.com', 'asi852'),
(3, 'Hemas', 'Maharagama', 'hemashospital@gmail.com', 'hea254'),
(4, 'Jayawardhanpura', 'Nawarohala', 'jayawardhanapura@gmail.com', 'jay546'),
(5, 'Nawaloka', 'Colombo 02', 'nawaloka@gmail.com', 'naw254'),
(6, 'Karapitiya', 'Mathar', 'karapitiya@gmail.com', 'kaew254');

-- --------------------------------------------------------

--
-- Table structure for table `hospitaldoctor`
--

CREATE TABLE `hospitaldoctor` (
  `docId` int(11) NOT NULL,
  `hospitalId` int(11) NOT NULL,
  `avaliableDate` varchar(100) NOT NULL,
  `avaliableTime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitaldoctor`
--

INSERT INTO `hospitaldoctor` (`docId`, `hospitalId`, `avaliableDate`, `avaliableTime`) VALUES
(2, 1, 'Mon', '2.00 p.m-4.00 p.m'),
(3, 1, 'Wen', '2.00 p.m-4.00 p.m'),
(5, 1, 'Mon', '3.00 p.m-4.00 p.m'),
(8, 4, 'enW', '2.00 pm - 7.00 pm'),
(9, 5, 'Mon', '2.00 pm - 7.00 pm'),
(10, 3, 'Sat', '5.00 p.m-4.00 p.m'),
(10, 4, 'Wen', '2.00 pm - 7.00 pm'),
(10, 6, 'Mon', '2.00 pm - 7.00 pm'),
(11, 5, 'Wen', '2.00 pm - 7.00 pm'),
(12, 4, 'Wen', '2.00 pm - 7.00 pm'),
(12, 6, 'Mon', '2.00 pm - 7.00 pm'),
(17, 4, 'Thu', '5.00 p.m-4.00 p.m'),
(20, 4, 'Sat', '7.00 p.m-4.00 p.m');

-- --------------------------------------------------------

--
-- Table structure for table `host_phoneno`
--

CREATE TABLE `host_phoneno` (
  `hPId` int(11) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `hospitalId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laboratoryreport`
--

CREATE TABLE `laboratoryreport` (
  `labId` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `LabDate` date NOT NULL,
  `Desacription` varchar(600) NOT NULL,
  `patientId` int(11) NOT NULL,
  `hospitalId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientId` int(11) NOT NULL,
  `fNmae` varchar(50) NOT NULL,
  `lName` varchar(50) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `age` int(11) NOT NULL,
  `patientNIC` varchar(13) NOT NULL,
  `address` varchar(500) NOT NULL,
  `patientEmail` varchar(200) NOT NULL,
  `passwod` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_phoneno`
--

CREATE TABLE `patient_phoneno` (
  `pPId` int(11) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `patientId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentId` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paymentDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appoinment`
--
ALTER TABLE `appoinment`
  ADD PRIMARY KEY (`appoinmentId`),
  ADD KEY `patientId` (`patientId`),
  ADD KEY `paymentId` (`paymentId`),
  ADD KEY `docId` (`docId`),
  ADD KEY `hospitalId` (`hospitalId`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`docId`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospitalId`);

--
-- Indexes for table `hospitaldoctor`
--
ALTER TABLE `hospitaldoctor`
  ADD PRIMARY KEY (`docId`,`hospitalId`),
  ADD KEY `docId` (`docId`),
  ADD KEY `hospitalId` (`hospitalId`);

--
-- Indexes for table `host_phoneno`
--
ALTER TABLE `host_phoneno`
  ADD PRIMARY KEY (`hPId`),
  ADD KEY `hospitalId` (`hospitalId`);

--
-- Indexes for table `laboratoryreport`
--
ALTER TABLE `laboratoryreport`
  ADD PRIMARY KEY (`labId`),
  ADD KEY `patientId` (`patientId`),
  ADD KEY `hospitalId` (`hospitalId`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientId`);

--
-- Indexes for table `patient_phoneno`
--
ALTER TABLE `patient_phoneno`
  ADD PRIMARY KEY (`pPId`),
  ADD KEY `patientId` (`patientId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appoinment`
--
ALTER TABLE `appoinment`
  MODIFY `appoinmentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `docId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospitalId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `host_phoneno`
--
ALTER TABLE `host_phoneno`
  MODIFY `hPId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laboratoryreport`
--
ALTER TABLE `laboratoryreport`
  MODIFY `labId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patientId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient_phoneno`
--
ALTER TABLE `patient_phoneno`
  MODIFY `pPId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appoinment`
--
ALTER TABLE `appoinment`
  ADD CONSTRAINT `FK_appoinment_1` FOREIGN KEY (`patientId`) REFERENCES `patient` (`patientId`),
  ADD CONSTRAINT `FK_appoinment_2` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`paymentId`),
  ADD CONSTRAINT `FK_appoinment_3` FOREIGN KEY (`docId`) REFERENCES `doctor` (`docId`),
  ADD CONSTRAINT `FK_appoinment_4` FOREIGN KEY (`hospitalId`) REFERENCES `hospital` (`hospitalId`);

--
-- Constraints for table `hospitaldoctor`
--
ALTER TABLE `hospitaldoctor`
  ADD CONSTRAINT `FK_hospitaldoctor_1` FOREIGN KEY (`docId`) REFERENCES `doctor` (`docId`),
  ADD CONSTRAINT `FK_hospitaldoctor_2` FOREIGN KEY (`hospitalId`) REFERENCES `hospital` (`hospitalId`);

--
-- Constraints for table `host_phoneno`
--
ALTER TABLE `host_phoneno`
  ADD CONSTRAINT `FK_host_phoneno_1` FOREIGN KEY (`hospitalId`) REFERENCES `hospital` (`hospitalId`);

--
-- Constraints for table `laboratoryreport`
--
ALTER TABLE `laboratoryreport`
  ADD CONSTRAINT `FK_laboratoryreport_1` FOREIGN KEY (`hospitalId`) REFERENCES `hospital` (`hospitalId`),
  ADD CONSTRAINT `FK_laboratoryreport_2` FOREIGN KEY (`patientId`) REFERENCES `patient` (`patientId`);

--
-- Constraints for table `patient_phoneno`
--
ALTER TABLE `patient_phoneno`
  ADD CONSTRAINT `FK_patient_phoneno_1` FOREIGN KEY (`patientId`) REFERENCES `patient` (`patientId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
