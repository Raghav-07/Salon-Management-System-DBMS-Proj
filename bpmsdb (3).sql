-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2019 at 11:53 AM
-- Server version: 10.3.16-MariaDB
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
-- Database: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'admin', 'admin', 7898799790, 'tester1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-07-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male') DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `Gender`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, '261064124', 'Komal', 'komal@gmail.com', 7798797897, 'Male', '7/27/2019', '4:00pm', '1', '2019-07-26 04:48:25', 'Accepted', '1', '2019-07-26 06:41:16'),
(2, '985645887', 'Kashish', 'Kash@gmail.com', 4654654654, 'Male', '7/29/2019', '4:30pm', 'Deluxe Pedicure', '2019-07-26 05:04:38', 'Rejected', '2', '2019-07-26 06:47:04'),
(3, '965887988', 'Sanjeeta Jain', 'sna@gmail.com', 5646464646, 'Male', '8/20/2019', '2:30pm', 'Loreal Hair Color(Full)', '2019-08-19 12:35:30', 'we will wait', '1', '2019-08-19 13:37:39'),
(4, '578797544', 'Anuj Kumar', 'phpgurukulofficial@gmail.com', 123456789, 'Male', '8/30/2019', '1:30am', 'Test', '2019-08-21 16:13:13', 'hi anuja how are you .what are doing please come to my saloon management ', '1', '2019-09-27 10:34:01'),
(7, '567258682', 'shreevatsa', 'shreeggh44@gmail.com', 1234578926, 'Male', '9/3/2019', '12:30am', 'Deluxe Pedicure', '2019-09-25 11:09:45', 'vjvkmfki', '1', '2019-11-17 06:10:44'),
(8, '552341529', 'shreevatsa', 'shreegh44@gmail.com', 1234578926, 'Male', '9/17/2019', '11:30pm', 'U-Shape Hair Cut', '2019-09-27 09:38:20', 'we are busy', '2', '2019-09-27 17:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male','Transgender') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `PhoneNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(2, 'Rahul ', 'rh@gmail.com', 5565565656, 'Male', 'Taken haircut by him', '2019-07-26 11:10:02', NULL),
(3, 'vidya', 'vd@gmail.com', 4646445464, 'Female', 'khjhhkjkjkuhj', '2019-07-26 11:10:28', NULL),
(4, 'Sanju', 'san@gmail.com', 5646464646, 'Female', 'Taking Body Spa', '2019-08-19 13:38:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblemploye`
--

CREATE TABLE `tblemploye` (
  `ID` int(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `phno` bigint(10) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `salary` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemploye`
--

INSERT INTO `tblemploye` (`ID`, `name`, `Gender`, `phno`, `address`, `salary`, `Email`) VALUES
(1, 'Suma', 'female', 9669866845, 'Bangalore', 10000, NULL),
(2, 'Sarla', 'female', 9656468676, 'Bangalore', 10000, NULL),
(3, 'Ganesh', 'Male', 8830133303, 'Udupi', 15000, NULL),
(4, 'Suresh', 'Male', 9611807013, 'Mysore', 10000, NULL),
(5, 'Mahesh', 'Male', 7979788788, 'Bangalore', 10000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(25, 3, 2, 856776470, '2019-11-17 05:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '                Our main focus is on quality and hygiene. Our Saloon is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials & fashion hair colourings.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '        BDA Complex,Banashankari 2nd Stage,Banglore-560070', 'saloon@gmail.com', 7899154570, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `ID` int(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `SID` int(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`ID`, `name`, `price`, `quantity`, `sname`, `SID`) VALUES
(1, 'Hair color', 20000, 200, 'Garniar', NULL),
(2, 'moisturizer', 600, 150, 'beautypro', NULL),
(3, 'facewash', 600, 100, 'saloncentric', NULL),
(4, 'facescrub', 500, 100, 'a1', NULL),
(5, 'body lotion', 500, 100, 'kirosbeauty', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(40) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
(1, 'O3 Facial', 1200, '2019-07-25 11:22:38'),
(2, 'Fruit Facial', 500, '2019-07-25 11:22:53'),
(3, 'Charcol Facial', 1000, '2019-07-25 11:23:10'),
(4, 'Deluxe Menicure', 500, '2019-07-25 11:23:34'),
(5, 'Deluxe Pedicure', 600, '2019-07-25 11:23:47'),
(6, 'Normal Menicure', 300, '2019-07-25 11:24:01'),
(7, 'Normal Pedicure', 400, '2019-07-25 11:24:19'),
(8, 'U-Shape Hair Cut', 250, '2019-07-25 11:24:38'),
(9, 'Layer Haircut', 550, '2019-07-25 11:24:53'),
(10, 'Rebonding', 3999, '2019-07-25 11:25:08'),
(11, 'Loreal Hair Color(Full)', 1200, '2019-07-25 11:25:35'),
(12, 'Body Spa', 1500, '2019-08-19 13:36:27'),
(17, 'Cut And Style', 200, '2019-09-27 18:15:32'),
(18, 'Hair care', 500, '2019-07-25 05:52:38'),
(19, ' Facial', 500, '2019-07-25 05:52:53'),
(20, 'Charcol Facial', 1000, '2019-07-25 05:53:10'),
(21, 'Deluxe Menicure', 500, '2019-07-25 05:53:34'),
(22, 'Deluxe Pedicure', 600, '2019-07-25 05:53:47'),
(23, 'Normal Menicure', 300, '2019-07-25 05:54:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplier`
--

CREATE TABLE `tblsupplier` (
  `ID` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phno` bigint(10) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsupplier`
--

INSERT INTO `tblsupplier` (`ID`, `name`, `phno`, `address`) VALUES
(20, 'Vinuth', 8565754525, 'Bangalore'),
(21, 'Girish', 8668754525, 'Bangalore'),
(22, 'Raghu', 8565755511, 'Bangalore'),
(23, 'Madhav', 8966332144, 'Mandya'),
(24, 'Rajesh', 9612365678, 'Bangalore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `tblemploye`
--
ALTER TABLE `tblemploye`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Userid` (`Userid`,`ServiceId`),
  ADD KEY `id` (`id`),
  ADD KEY `ServiceId` (`ServiceId`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SID` (`SID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsupplier`
--
ALTER TABLE `tblsupplier`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblemploye`
--
ALTER TABLE `tblemploye`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblsupplier`
--
ALTER TABLE `tblsupplier`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD CONSTRAINT `tblinvoice_ibfk_1` FOREIGN KEY (`Userid`) REFERENCES `tblcustomers` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblinvoice_ibfk_2` FOREIGN KEY (`ServiceId`) REFERENCES `tblservices` (`ID`) ON DELETE SET NULL;

--
-- Constraints for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD CONSTRAINT `tblproducts_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `tblsupplier` (`ID`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
