-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2016 at 09:01 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `trackingshipment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier`
--

CREATE TABLE IF NOT EXISTS `tbl_courier` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `cons_no` varchar(20) NOT NULL,
  `ship_name` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `ShipperEmail` varchar(50) NOT NULL,
  `s_add` varchar(200) NOT NULL,
  `rev_name` varchar(100) NOT NULL,
  `r_phone` varchar(12) NOT NULL,
  `ReceiverEmail` varchar(50) NOT NULL,
  `r_add` varchar(200) NOT NULL,
  `Shiptype` varchar(40) NOT NULL,
  `weight` double NOT NULL,
  `invice_no` varchar(20) NOT NULL,
  `qty` int(10) NOT NULL,
  `book_mode` varchar(20) NOT NULL,
  `freight` double NOT NULL,
  `Depturetime` time NOT NULL,
  `DestinationOffice` varchar(50) NOT NULL,
  `Carrier` varchar(50) NOT NULL,
  `CarrierReference` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `pick_date` varchar(20) NOT NULL,
  `pick_time` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `ExpectedDeliverydate` date NOT NULL,
  `comments` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_courier`
--

INSERT INTO `tbl_courier` (`cid`, `cons_no`, `ship_name`, `phone`, `ShipperEmail`, `s_add`, `rev_name`, `r_phone`, `ReceiverEmail`, `r_add`, `Shiptype`, `weight`, `invice_no`, `qty`, `book_mode`, `freight`, `Depturetime`, `DestinationOffice`, `Carrier`, `CarrierReference`, `Destination`, `pick_date`, `pick_time`, `status`, `ExpectedDeliverydate`, `comments`, `date`, `time`) VALUES
(1, 'M22P7KHM', 'Tousif Khan', '020 253623', '121@g.v', 's sd sdsd', 'Rizwan Ahmed', '020 88552', '', 'sd sd s', 'Parcel', 20, '252525', 12, 'TBB', 240, '00:00:00', '', '', '', '', '29/01/2011', '12', 'Landed', '0000-00-00', 'ds ds d', '2011-01-29', '00:00:00'),
(2, 'QIWWGIQP', 'Asif khan', '020 253623', '122@g.v', 'shani peth', 'munna bhai', '020 88552', 'saa@ff.fdsgd', 'asdas das d', 'Documents', 20, '252525', 12, 'TBB', 240, '00:00:00', 'hhh', 'dfhdhdh', 'dhdhh', 'dghdghd', '29/01/2011', '4', 'Delivered', '0000-00-00', 'Plz deliver it', '2011-01-29', '00:00:00'),
(3, 'Q906F73L', 'Amol sarode', '9532653652', '551@g.v', 'metha nagar, bhusawal', 'sunil pal', '8585425412', '', 'balliram peth', 'Documents', 12, '239098', 12, 'ToPay', 200, '00:00:00', 'hhh', 'dhghdgh', 'hdghdgh', 'dhghdgh', '26/01/2013', '4', 'Delayed', '0000-00-00', 'Thanks', '2011-01-29', '00:00:00'),
(4, '2THBV8UM', 'Farzana Sk', '9532652365', '111@g.v', 'xzyz', 'Asif Khan', '9852451254', 'asdsad@dsad.v', 'ABC', 'Parcel', 2, '23788', 4, 'Paid', 90, '00:00:00', 'dhghdghdg', 'dfhhd', 'dghdghd', 'hdhdh', '20/01/2011', '12', 'Delivered', '0000-00-00', 'Plz transit', '2011-01-30', '00:00:00'),
(5, '16-07-0005', 'Hello', 'hello@h.cc', '', 'dHAKA', 'Hello', 'kjk@jh,jk', '', 'Urrar', 'Documents', 15, '1111', 1, 'AFGHANISTAN', 1111, '00:00:00', '', '', '', '', '06/30/2016', '', 'delivers', '0000-00-00', 'nnn', '2016-07-13', '00:00:00'),
(10, '16-07-0010', 'lion express', '01735-598907', 'info@lionexpressbd.com', 'House no:16 (Ground flor), Road:07, Sector:01, Uttara Model Town , Dhaka-1230', 'cls-computer', '0621/7163591', 'info@cls-computer.de', 'Auf dam, Mannheim ,Germany', 'Cargo', 15, '16000-12', 2, 'air', 0, '11:45:00', 'Auf dam, Mannheim ,Germany', 'DHL', '', 'GERMANY', '07/19/2016', '12:00pm', 'Shipment picked up', '0000-00-00', 'Nothing', '2016-07-19', '01:19:23'),
(8, '16-07-0008', 'Documents', '99999999', '111@g.v', 'hhh', 'Hello999', '99999', 'aaa@sad.vv', '9999', 'Cargo', 15, '999', 999, 'Bus', 999, '00:00:00', '999', 'DHL', '99', 'AFGHANISTAN', '07/07/2016', '11', 'Arrived at Delivery ', '0000-00-00', '999', '2016-07-14', '02:44:25'),
(9, '16-07-0009', 'Documents', '222', '222', '22', '222', '22', '2222', '222', 'Cargo', 15, '999', 999, 'air', 0, '00:00:00', '', 'DHL', '1212', 'AFGHANISTAN', '07/14/2016', '11', 'Customs status updat', '0000-00-00', '222', '2016-07-14', '02:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_statustimeline`
--

CREATE TABLE IF NOT EXISTS `tbl_statustimeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cons_no` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tbl_statustimeline`
--

INSERT INTO `tbl_statustimeline` (`id`, `cons_no`, `status`, `Location`, `address`, `date`, `time`) VALUES
(2, '2THBV8UM', 'Pending', 'INDIA', '', '2016-07-14', '12:33:21'),
(3, '2THBV8UM', 'delivers', 'AFGHANISTAN', '', '2016-07-14', '12:44:56'),
(4, '2THBV8UM', 'Pending', 'ANGUILLA', '', '2016-07-14', '12:45:43'),
(5, '16-07-0009', 'Pending', 'ALAND ISLANDS', '', '2016-07-14', '12:55:11'),
(6, '16-07-0009', 'delivers', 'CZECH REPUBLIC', '', '2016-07-14', '01:04:47'),
(7, '16-07-0008', 'Arrived at Sort Facility ', 'ALAND ISLANDS', '', '2016-07-14', '02:54:56'),
(8, '16-07-0010', 'Pending', 'BANGLADESH', '', '2016-07-19', '01:20:21'),
(9, '16-07-0010', 'Processed at', 'BANGLADESH', '', '2016-07-19', '01:20:53'),
(10, '16-07-0010', 'Customs status updated', 'BANGLADESH', '', '2016-07-19', '01:21:42'),
(11, '16-07-0010', 'Departed Facility In ', 'BANGLADESH', '', '2016-07-19', '01:22:24'),
(12, '16-07-0010', 'Clearance processing complete at', 'DUBAI', '', '2016-07-19', '01:23:06'),
(13, '16-07-0010', 'Arrived at Sort Facility ', 'GERMANY', '', '2016-07-19', '01:23:32'),
(14, '16-07-0010', 'Arrived at Delivery Facility in', 'GERMANY', '', '2016-07-19', '01:24:01'),
(15, '16-07-0010', 'Delivered', 'GERMANY', '', '2016-07-19', '01:25:35');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
