-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2023 at 02:15 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gatunduhmisdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `id` int(100) NOT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `ion_user_id`) VALUES
(81, NULL, 'accountant', 'accountant@gatundu.com', 'nairobi', '+254796773177', NULL, '1595');

-- --------------------------------------------------------

--
-- Table structure for table `alloted_bed`
--

CREATE TABLE `alloted_bed` (
  `id` int(100) NOT NULL,
  `number` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `a_time` varchar(100) DEFAULT NULL,
  `d_time` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `bed_id` varchar(100) DEFAULT NULL,
  `patientname` varchar(1000) DEFAULT NULL,
  `category_status` varchar(1000) DEFAULT NULL,
  `reaksione` varchar(1000) DEFAULT NULL,
  `covid_19` varchar(1000) DEFAULT NULL,
  `transferred_from` varchar(1000) DEFAULT NULL,
  `anamneza` varchar(1000) DEFAULT NULL,
  `accepting_doctor` varchar(1000) DEFAULT NULL,
  `doctor` varchar(1000) DEFAULT NULL,
  `diagnosis` varchar(1000) DEFAULT NULL,
  `diagnoza_a_shtrimit` varchar(1000) DEFAULT NULL,
  `blood_group` varchar(1000) DEFAULT NULL,
  `other_illnesses` varchar(1000) DEFAULT NULL,
  `a_timestamp` varchar(1000) DEFAULT NULL,
  `d_timestamp` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alloted_bed`
--

INSERT INTO `alloted_bed` (`id`, `number`, `category`, `patient`, `a_time`, `d_time`, `status`, `x`, `bed_id`, `patientname`, `category_status`, `reaksione`, `covid_19`, `transferred_from`, `anamneza`, `accepting_doctor`, `doctor`, `diagnosis`, `diagnoza_a_shtrimit`, `blood_group`, `other_illnesses`, `a_timestamp`, `d_timestamp`) VALUES
(64, NULL, 'asdasd', '1', '01 March 2022 - 11:45 AM', NULL, NULL, NULL, '25', 'Mr Patient', 'urgent', ' gvvgfg', NULL, ' GFFGFFG', 'jjgjgjgjgjjg ', '5', '1', ' GJHGJGJG', 'HFHFHFHGFHG ', '1', 'gjgjgjgj ', '1646113500', NULL),
(63, NULL, 'asdasd', '1', '01 March 2022 - 04:25 PM', '01 March 2022 - 02:00 PM', NULL, NULL, '25', 'Mr Patient', 'urgent', ' sadads', NULL, ' asdsadas', 'asdasd ', '1', '1', ' asdasdsa', ' asdasdsad', '3', ' asdasd', '1646130300', '1646121600'),
(65, NULL, 'asdasd', '1', '01 March 2022 - 11:15 AM', NULL, NULL, NULL, '26', 'Mr Patient', 'urgent', ' zxczxczxc', NULL, ' zxczxc', ' zxczczx', '1', '1', ' zxczxc', ' zxcxzc', '1', ' zxczc', '1646111700', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `alloted_bed_previous`
--

CREATE TABLE `alloted_bed_previous` (
  `id` int(100) NOT NULL,
  `number` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `a_time` varchar(100) DEFAULT NULL,
  `d_time` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `bed_id` varchar(100) DEFAULT NULL,
  `patientname` varchar(1000) DEFAULT NULL,
  `a_timestamp` varchar(1000) DEFAULT NULL,
  `d_timestamp` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(100) NOT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time_slot` varchar(100) DEFAULT NULL,
  `s_time` varchar(100) DEFAULT NULL,
  `e_time` varchar(100) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL,
  `registration_time` varchar(100) DEFAULT NULL,
  `s_time_key` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `request` varchar(100) DEFAULT NULL,
  `patientname` varchar(1000) DEFAULT NULL,
  `doctorname` varchar(1000) DEFAULT NULL,
  `room_id` varchar(500) DEFAULT NULL,
  `live_meeting_link` varchar(500) DEFAULT NULL,
  `app_time` varchar(500) DEFAULT NULL,
  `app_time_full_format` varchar(500) DEFAULT NULL,
  `payment_status` varchar(1000) DEFAULT NULL,
  `visit_description` varchar(1000) DEFAULT NULL,
  `visit_charges` varchar(1000) DEFAULT NULL,
  `payment_id` varchar(1000) DEFAULT NULL,
  `discount` varchar(1000) DEFAULT NULL,
  `grand_total` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `patient`, `doctor`, `date`, `time_slot`, `s_time`, `e_time`, `remarks`, `add_date`, `registration_time`, `s_time_key`, `status`, `user`, `request`, `patientname`, `doctorname`, `room_id`, `live_meeting_link`, `app_time`, `app_time_full_format`, `payment_status`, `visit_description`, `visit_charges`, `payment_id`, `discount`, `grand_total`) VALUES
(146, '13', '1', '1668286800', '08:30 AM To 08:45 AM', '08:30 AM', '08:45 AM', '', '11/13/22', '1668331154', '102', 'Pending Confirmation', '1', '', 'DERRICK', 'Mr Doctor', 'hms-meeting-25478522-51330', 'https://meet.jit.si/hms-meeting-25478522-51330', '1668317400', '13-11-2022 08:30 AM-08:45 AM', 'paid', '8', '300', '124', '0', '300'),
(147, '14', '1', '1668200400', 'Not Selected', 'Not Selected', '', '', '11/14/22', '1668375296', '0', 'Confirmed', '709', '', 'roy', 'PESSY', 'hms-meeting-+254796773177-803712', 'https://meet.jit.si/hms-meeting-+254796773177-803712', '0', '12-11-2022 Not Selected-', 'paid', '8', '300', '125', '0', '300'),
(148, '13', '12', '1668805200', '01:00 PM To 01:15 PM', '01:00 PM', '01:15 PM', 'treatment', '11/19/22', '1668877432', '156', 'Confirmed', '1', '', 'DERRICK', 'LOCH', 'hms-meeting-25478522-412702', 'https://meet.jit.si/hms-meeting-25478522-412702', '1668852000', '19-11-2022 01:00 PM-01:15 PM', 'unpaid', 'Select', '', '127', '0', '0'),
(149, '15', '11', '1668978000', 'Not Selected', 'Not Selected', '', '', '11/19/22', '1668877567', '0', 'Confirmed', '1', '', 'dan', 'HAWEE', 'hms-meeting-0712345678-102957', 'https://meet.jit.si/hms-meeting-0712345678-102957', '0', '21-11-2022 Not Selected-', 'unpaid', 'Select', '', '128', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `autoemailshortcode`
--

CREATE TABLE `autoemailshortcode` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autoemailshortcode`
--

INSERT INTO `autoemailshortcode` (`id`, `name`, `type`) VALUES
(1, '{firstname}', 'payment'),
(2, '{lastname}', 'payment'),
(3, '{name}', 'payment'),
(4, '{amount}', 'payment'),
(52, '{doctorname}', 'appoinment_confirmation'),
(42, '{firstname}', 'appoinment_creation'),
(51, '{name}', 'appoinment_confirmation'),
(50, '{lastname}', 'appoinment_confirmation'),
(49, '{firstname}', 'appoinment_confirmation'),
(48, '{hospital_name}', 'appoinment_creation'),
(47, '{time_slot}', 'appoinment_creation'),
(46, '{appoinmentdate}', 'appoinment_creation'),
(45, '{doctorname}', 'appoinment_creation'),
(44, '{name}', 'appoinment_creation'),
(43, '{lastname}', 'appoinment_creation'),
(26, '{name}', 'doctor'),
(27, '{firstname}', 'doctor'),
(28, '{lastname}', 'doctor'),
(29, '{company}', 'doctor'),
(41, '{doctor}', 'patient'),
(40, '{company}', 'patient'),
(39, '{lastname}', 'patient'),
(38, '{firstname}', 'patient'),
(37, '{name}', 'patient'),
(36, '{department}', 'doctor'),
(53, '{appoinmentdate}', 'appoinment_confirmation'),
(54, '{time_slot}', 'appoinment_confirmation'),
(55, '{hospital_name}', 'appoinment_confirmation'),
(56, '{start_time}', 'meeting_creation'),
(57, '{patient_name}', 'meeting_creation'),
(58, '{doctor_name}', 'meeting_creation'),
(59, '{hospital_name}', 'meeting_creation'),
(60, '{meeting_link}', 'meeting_creation'),
(61, '{name}', 'appoinment_creation_to_doctor'),
(62, '{firstname}', 'appoinment_creation_to_doctor'),
(63, '{hospital_name}', 'appoinment_creation_to_doctor'),
(64, '{patientname}', 'appoinment_creation_to_doctor'),
(65, '{time_slot}', 'appoinment_creation_to_doctor'),
(66, '{appoinmentdate}', 'appoinment_creation_to_doctor'),
(67, '{lastname}', 'appoinment_creation_to_doctor');

-- --------------------------------------------------------

--
-- Table structure for table `autoemailtemplate`
--

CREATE TABLE `autoemailtemplate` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autoemailtemplate`
--

INSERT INTO `autoemailtemplate` (`id`, `name`, `message`, `type`, `status`) VALUES
(1, 'Payment successful email to patient', '<p>Dear {name}, Your paying amount - Tk {amount} was successful.</p>\r\n\r\n<p>Thank You</p>\r\n', 'payment', 'Active'),
(9, 'Appointment creation email to patient', 'Dear {name},<br />\r\nYou have an &nbsp;appointment with {doctorname} on {appoinmentdate} at {time_slot} .Please confirm your appointment.<br />\r\nFor more information contact with {hospital_name}<br />\r\nRegards', 'appoinment_creation', 'Active'),
(10, 'Appointment Confirmation email  to patient', 'Dear {name},<br />\r\nYour appointment with {doctorname} on {appoinmentdate} at {time_slot} is confirmed.<br />\r\nFor more information contact with {hospital_name}<br />\r\nRegards', 'appoinment_confirmation', 'Active'),
(11, 'Meeting Schedule Notification To Patient', '<p>Dear {patient_name},</p>\r\n\r\n<p>You have a Live Video Meeting with {doctor_name} on {start_time}.<br />\r\nPlease click on this link to join the meeting&nbsp; {meeting_link} .<br />\r\nFor more information please contact with {hospital_name} .</p>\r\n\r\n<p>Regards</p>\r\n', 'meeting_creation', 'Active'),
(6, 'send joining confirmation to Doctor', '<p>Dear {name},<br />\r\nYou are appointed as a doctor&nbsp; in {department}.<br />\r\nThank You</p>\r\n\r\n<p>{company}</p>\r\n', 'doctor', 'Active'),
(8, 'Patient Registration Confirmation ', '<p>Dear {name},</p>\r\n\r\n<p>You are registered to {company} as a patient to {doctor}.</p>\r\n\r\n<p>Regards</p>\r\n', 'patient', 'Active'),
(12, 'Send Patient Appointment confirmation to Doctor', 'Dear {name}, <br> {patientname} creates a appointment  with you on {appoinmentdate} at {time_slot} . Please See details on your login panel. <br> Regards', 'appoinment_creation_to_doctor', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `autosmsshortcode`
--

CREATE TABLE `autosmsshortcode` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autosmsshortcode`
--

INSERT INTO `autosmsshortcode` (`id`, `name`, `type`) VALUES
(1, '{name}', 'payment'),
(2, '{firstname}', 'payment'),
(3, '{lastname}', 'payment'),
(4, '{amount}', 'payment'),
(55, '{appoinmentdate}', 'appoinment_confirmation'),
(54, '{doctorname}', 'appoinment_confirmation'),
(53, '{name}', 'appoinment_confirmation'),
(52, '{lastname}', 'appoinment_confirmation'),
(51, '{firstname}', 'appoinment_confirmation'),
(50, '{time_slot}', 'appoinment_creation'),
(49, '{appoinmentdate}', 'appoinment_creation'),
(48, '{hospital_name}', 'appoinment_creation'),
(47, '{doctorname}', 'appoinment_creation'),
(46, '{name}', 'appoinment_creation'),
(45, '{lastname}', 'appoinment_creation'),
(44, '{firstname}', 'appoinment_creation'),
(28, '{firstname}', 'doctor'),
(29, '{lastname}', 'doctor'),
(30, '{name}', 'doctor'),
(31, '{company}', 'doctor'),
(43, '{doctor}', 'patient'),
(42, '{company}', 'patient'),
(41, '{lastname}', 'patient'),
(40, '{firstname}', 'patient'),
(39, '{name}', 'patient'),
(38, '{department}', 'doctor'),
(56, '{time_slot}', 'appoinment_confirmation'),
(57, '{hospital_name}', 'appoinment_confirmation'),
(58, '{start_time}', 'meeting_creation'),
(59, '{patient_name}', 'meeting_creation'),
(60, '{doctor_name}', 'meeting_creation'),
(61, '{hospital_name}', 'meeting_creation'),
(62, '{meeting_link}', 'meeting_creation');

-- --------------------------------------------------------

--
-- Table structure for table `autosmstemplate`
--

CREATE TABLE `autosmstemplate` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autosmstemplate`
--

INSERT INTO `autosmstemplate` (`id`, `name`, `message`, `type`, `status`) VALUES
(1, 'Payment successful sms to patient', 'Dear {name},\r\n Your paying amount - Tk {amount} was successful.\r\nThank You\r\nPlease contact our support for further queries.', 'payment', 'Active'),
(12, 'Appointment Confirmation sms to patient', 'Dear {name},\r\nYour appointment with {doctorname} on {appoinmentdate} at {time_slot} is confirmed.\r\nFor more information contact with {hospital_name}\r\nRegards', 'appoinment_confirmation', 'Active'),
(13, 'Appointment creation sms to patient', 'Dear {name},\r\nYou have an  appointment with {doctorname} on {appoinmentdate} at {time_slot} .Please confirm your appointment.\r\nFor more information contact with {hospital_name}\r\nRegards', 'appoinment_creation', 'Active'),
(14, 'Meeting Schedule Notification To Patient', 'Dear {patient_name}, You have a Live Video Meeting with {doctor_name} on {start_time}. Click on this link to join the meeting {meeting_link} . For more information contact with {hospital_name} .\r\nRegards ', 'meeting_creation', 'Active'),
(9, 'send appoint confirmation to Doctor', 'Dear {name},\nYou are appointed as a doctor in {department} .\nThank You\n{company}', 'doctor', 'Active'),
(11, 'Patient Registration Confirmation ', 'Dear {name},\n You are registred to {company} as a patient to {doctor}. \nRegards', 'patient', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `bankb`
--

CREATE TABLE `bankb` (
  `id` int(100) NOT NULL,
  `group` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bankb`
--

INSERT INTO `bankb` (`id`, `group`, `status`) VALUES
(1, 'A+', '0 Bags'),
(2, 'A-', '0 Bags'),
(3, 'B+', '0 Bags'),
(4, 'B-', '0 Bags'),
(5, 'AB+', '0 Bags'),
(6, 'AB-', '0 Bags'),
(7, 'O+', '0 Bags'),
(8, 'O-', '0 Bags');

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `number` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `last_a_time` varchar(100) DEFAULT NULL,
  `last_d_time` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `bed_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`id`, `category`, `number`, `description`, `last_a_time`, `last_d_time`, `status`, `bed_id`) VALUES
(25, 'asdasd', 'ICU-001', 'ICU BED', NULL, NULL, NULL, 'asdasd-ICU-001'),
(26, 'asdasd', 'ICU-002', 'ICU BED', NULL, NULL, NULL, 'asdasd-ICU-002');

-- --------------------------------------------------------

--
-- Table structure for table `bed_category`
--

CREATE TABLE `bed_category` (
  `id` int(100) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bed_category`
--

INSERT INTO `bed_category` (`id`, `category`, `description`) VALUES
(16, 'asdasd', 'asdsadsa');

-- --------------------------------------------------------

--
-- Table structure for table `bed_checkout`
--

CREATE TABLE `bed_checkout` (
  `id` int(100) NOT NULL,
  `date` varchar(1000) DEFAULT NULL,
  `final_diagnosis` varchar(1000) DEFAULT NULL,
  `anatomopatologic_diagnosis` varchar(1000) DEFAULT NULL,
  `dikordance` varchar(1000) DEFAULT NULL,
  `alloted_bed_id` varchar(1000) DEFAULT NULL,
  `doctor` varchar(1000) DEFAULT NULL,
  `epicrisis` varchar(1000) DEFAULT NULL,
  `checkout_state` varchar(1000) DEFAULT NULL,
  `checkout_diagnosis` varchar(1000) DEFAULT NULL,
  `instruction` varchar(1000) DEFAULT NULL,
  `medicine_to_take` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bed_checkout`
--

INSERT INTO `bed_checkout` (`id`, `date`, `final_diagnosis`, `anatomopatologic_diagnosis`, `dikordance`, `alloted_bed_id`, `doctor`, `epicrisis`, `checkout_state`, `checkout_diagnosis`, `instruction`, `medicine_to_take`) VALUES
(16, '01 March 2022 - 02:00 PM', 'The purpose of formatted text is to enhance the presentation of information. For example, in the previous paragraph, the italicized words are each followed by examples. At a glance, the reader can ascertain that there are four special words in the paragraph. The goal is to help the reader to obtain, understand, and retain the information.', 'The purpose of formatted text is to enhance the presentation of information. For example, in the previous paragraph, the italicized words are each followed by examples. At a glance, the reader can ascertain that there are four special words in the paragraph. The goal is to help the reader to obtain, understand, and retain the information.', NULL, '63', '1', 'The purpose of formatted text is to enhance the presentation of information. For example, in the previous paragraph, the italicized words are each followed by examples. At a glance, the reader can ascertain that there are four special words in the paragraph. The goal is to help the reader to obtain, understand, and retain the information.', 'The purpose of formatted text is to enhance the presentation of information. For example, in the previous paragraph, the italicized words are each followed by examples. At a glance, the reader can ascertain that there are four special words in the paragraph. The goal is to help the reader to obtain, understand, and retain the information.', 'The purpose of formatted text is to enhance the presentation of information. For example, in the previous paragraph, the italicized words are each followed by examples. At a glance, the reader can ascertain that there are four special words in the paragraph. The goal is to help the reader to obtain, understand, and retain the information.', '<ol><li><strong>Take Proper Food</strong></li><li><strong>Sleep 8 Hours</strong></li><li><strong>Always Hydrate Yourself</strong></li><li><strong>Quit Alcohol</strong></li></ol>', '<ol><li>NAPA EXTRA- 1+0+1- IF PAIN</li><li>MaxPro 20mg-1+0+1- Before Food</li><li>Ebatin 10mg-1+0+1- 7 days</li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `bed_medicine`
--

CREATE TABLE `bed_medicine` (
  `id` int(100) NOT NULL,
  `generic_name` varchar(1000) DEFAULT NULL,
  `medicine_name` varchar(1000) DEFAULT NULL,
  `medicine_id` varchar(1000) DEFAULT NULL,
  `s_price` varchar(1000) DEFAULT NULL,
  `hospital_id` varchar(1000) DEFAULT NULL,
  `quantity` varchar(1000) DEFAULT NULL,
  `total` varchar(1000) DEFAULT NULL,
  `alloted_bed_id` varchar(1000) DEFAULT NULL,
  `date` varchar(1000) DEFAULT NULL,
  `payment_id` varchar(1000) DEFAULT NULL,
  `medicine_pharmacy_id` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bed_medicine`
--

INSERT INTO `bed_medicine` (`id`, `generic_name`, `medicine_name`, `medicine_id`, `s_price`, `hospital_id`, `quantity`, `total`, `alloted_bed_id`, `date`, `payment_id`, `medicine_pharmacy_id`) VALUES
(69, 'hjh', 'jkjkjkj', '2881', '87', NULL, '1', '87', '63', '01-03-2022', '41', '2881'),
(68, 'hjh', 'jkjkjkj', '2881', '87', NULL, '10', '870', '63', '01-03-2022', '41', '2881'),
(70, 'hjh', 'jkjkjkj', '2881', '87', NULL, '1', '87', '64', '02-03-2022', NULL, '2881');

-- --------------------------------------------------------

--
-- Table structure for table `bed_service`
--

CREATE TABLE `bed_service` (
  `id` int(100) NOT NULL,
  `date` varchar(1000) DEFAULT NULL,
  `nurse` varchar(1000) DEFAULT NULL,
  `service` varchar(1000) DEFAULT NULL,
  `price` varchar(1000) DEFAULT NULL,
  `alloted_bed_id` varchar(1000) DEFAULT NULL,
  `payment_id` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blood_group`
--

CREATE TABLE `blood_group` (
  `id` int(100) NOT NULL,
  `bloodgroup` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blood_group`
--

INSERT INTO `blood_group` (`id`, `bloodgroup`) VALUES
(1, 'A+'),
(2, 'O+'),
(3, 'B+'),
(4, 'AB+'),
(5, 'A-'),
(6, 'O-'),
(7, 'B-'),
(8, 'AB-');

-- --------------------------------------------------------

--
-- Table structure for table `container`
--

CREATE TABLE `container` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `daily_progress`
--

CREATE TABLE `daily_progress` (
  `id` int(100) NOT NULL,
  `date` varchar(1000) DEFAULT NULL,
  `datestamp` varchar(1000) DEFAULT NULL,
  `daily_description` varchar(1000) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `alloted_bed_id` varchar(1000) DEFAULT NULL,
  `hospital_id` varchar(1000) DEFAULT NULL,
  `time` varchar(1000) DEFAULT NULL,
  `nurse` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `daily_progress`
--

INSERT INTO `daily_progress` (`id`, `date`, `datestamp`, `daily_description`, `description`, `alloted_bed_id`, `hospital_id`, `time`, `nurse`) VALUES
(1, '01-03-2022', '1646071200', ' Reconvering', ' ajhsjkahdas', '63', NULL, '11:15 AM', '8');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `x` varchar(10) DEFAULT NULL,
  `y` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `description`, `x`, `y`) VALUES
(57, 'Nursing', '<p>Nursing</p>', NULL, NULL),
(58, 'Neurology', '<p>neurosurgeon</p>', NULL, NULL),
(59, 'emergency department', '<p><strong>emergency department</strong></p>', NULL, NULL),
(60, 'burn unit', '<p><strong>burn unit</strong></p>', NULL, NULL),
(61, 'surgery', '<p><strong>surgery</strong></p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `diagnostic_report`
--

CREATE TABLE `diagnostic_report` (
  `id` int(100) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `invoice` varchar(100) DEFAULT NULL,
  `report` varchar(10000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(10) NOT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(10) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL,
  `department_name` varchar(1000) DEFAULT NULL,
  `appointment_confirmation` varchar(1000) DEFAULT NULL,
  `doctor_visit` varchar(1000) DEFAULT NULL,
  `visit_price` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `department`, `profile`, `x`, `y`, `ion_user_id`, `department_name`, `appointment_confirmation`, `doctor_visit`, `visit_price`) VALUES
(1, '', 'PESSY', 'doctor@gatundu.com', 'KIAMBU', '+254796773177', '61', 'Cardiac Specialized', '', '', '709', 'surgery', 'Active', '8', '300'),
(11, NULL, 'HAWEE', 'hawee@gatundu.com', 'nairobi', '+254796773177', '60', 'burn unit', NULL, NULL, '1592', 'burn unit', 'Active', '13', '300'),
(12, NULL, 'LOCH', 'loch@gatundu.com', 'kiambu', '+254796773177', '58', 'Neurologist', NULL, NULL, '1593', 'Neurology', 'Active', '14', '300'),
(13, NULL, 'Eunice', 'eunice@gatundu.com', 'kiambu', '+254796773177', '59', 'burn unit', NULL, NULL, '1596', 'emergency department', 'Active', '15', '300');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_visit`
--

CREATE TABLE `doctor_visit` (
  `id` int(100) NOT NULL,
  `doctor_id` varchar(1000) DEFAULT NULL,
  `doctor_name` varchar(1000) DEFAULT NULL,
  `visit_description` varchar(1000) DEFAULT NULL,
  `visit_charges` varchar(1000) DEFAULT NULL,
  `status` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor_visit`
--

INSERT INTO `doctor_visit` (`id`, `doctor_id`, `doctor_name`, `visit_description`, `visit_charges`, `status`) VALUES
(8, '1', 'PESSY', 'Visit Price', '300', 'active'),
(10, '1', 'Mr Doctor', '3rd Visit', '500', 'active'),
(11, '10', 'Test Doctor', 'Visit Price', '500', 'active'),
(12, '10', 'Test Doctor', 'Test Visit', '500', 'active'),
(13, '11', 'HAWEE', 'Visit Price', '300', 'active'),
(14, '12', 'LOCH', 'Visit Price', '300', 'active'),
(15, '13', 'Eunice', 'Visit Price', '300', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `group` varchar(10) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `ldd` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `name`, `group`, `age`, `sex`, `ldd`, `phone`, `email`, `add_date`) VALUES
(19, 'PESSY donor', 'B+', '34', 'Female', '13-11-2022', '+254796773177', 'kachizipituitary@gmail.com', '11/14/22');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `message` varchar(10000) DEFAULT NULL,
  `reciepient` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(100) NOT NULL,
  `admin_email` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `smtp_host` varchar(1000) DEFAULT NULL,
  `smtp_port` varchar(1000) DEFAULT NULL,
  `send_multipart` varchar(1000) DEFAULT NULL,
  `mail_provider` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `admin_email`, `type`, `user`, `password`, `smtp_host`, `smtp_port`, `send_multipart`, `mail_provider`) VALUES
(1, 'info@codearistos.net', 'Domain Email', '', '', '', '', '', NULL),
(6, NULL, 'Smtp', 'example@yahoo.com', 'cGFzc3dvcmRoZXJl', 'smtp.mail.yahoo.com', '587', '1', 'yahoo');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `datestring` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `category`, `date`, `note`, `amount`, `user`, `datestring`) VALUES
(91, 'Office Bill', '1668877873', 'consultancy', '300', '1', '19/11/22');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`id`, `category`, `description`, `x`, `y`) VALUES
(59, 'Office Bill', 'Office Bill', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `id` int(100) NOT NULL,
  `img_url` varchar(1000) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE `folder` (
  `id` int(50) NOT NULL,
  `folder_name` varchar(500) DEFAULT NULL,
  `patient` varchar(50) DEFAULT NULL,
  `add_date` varchar(50) DEFAULT NULL,
  `folder_path` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'Accountant', 'For Financial Activities'),
(4, 'Doctor', ''),
(5, 'Patient', ''),
(6, 'Nurse', ''),
(7, 'Pharmacist', ''),
(8, 'Laboratorist', ''),
(10, 'Receptionist', 'Receptionist');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(100) NOT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `id` int(100) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `category_name` varchar(1000) DEFAULT NULL,
  `report` varchar(10000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_phone` varchar(100) DEFAULT NULL,
  `patient_address` varchar(100) DEFAULT NULL,
  `doctor_name` varchar(100) DEFAULT NULL,
  `date_string` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id`, `title`, `category`, `patient`, `doctor`, `date`, `category_name`, `report`, `status`, `user`, `patient_name`, `patient_phone`, `patient_address`, `doctor_name`, `date_string`) VALUES
(8, 'lab test', NULL, '13', '1', '1668286800', NULL, '<figure class=\"table\"><table><tbody><tr><td>Parameter</td><td>Reference Valie</td><td>Value</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>WBC</td><td>ssdfsd</td><td>55</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>RBC</td><td>7575</td><td>555</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>Platelet</td><td>665675</td><td>44</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></figure>', 'complete', '1', 'DERRICK', '25478522', 'NAIROBI', 'PESSY', '13-11-22'),
(9, 'test 2', NULL, '15', '11', '1668805200', NULL, '<figure class=\"table\"><table><tbody><tr><td>Parameter</td><td>Reference Valie</td><td>Value</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>mararia</td><td>neg</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>typhoid</td><td>neg</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>hiv</td><td>pov</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>covid</td><td>pov</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></figure>', 'sample_taken', '1', 'dan', '0712345678', NULL, 'HAWEE', '19-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `laboratorist`
--

CREATE TABLE `laboratorist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `laboratorist`
--

INSERT INTO `laboratorist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `ion_user_id`) VALUES
(4, NULL, 'LAB TECH', 'labtech@gatundu.com', 'kiambu', '+254796773177', NULL, NULL, '1589');

-- --------------------------------------------------------

--
-- Table structure for table `lab_category`
--

CREATE TABLE `lab_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `reference_value` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `role` varchar(1000) DEFAULT NULL,
  `ip_address` varchar(1000) DEFAULT NULL,
  `date_time` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `name`, `email`, `role`, `ip_address`, `date_time`) VALUES
(194, 'admin', 'admin@hms.com', 'Admin', '202.134.8.142', '27-04-2022 10:17:35'),
(193, 'Mr Doctor', 'doctor@hms.com', 'Doctor', '110.76.129.137', '13-04-2022 16:46:21'),
(192, 'Mr. Patient', 'patient@hms.com', 'Patient', '110.76.129.137', '13-04-2022 16:44:56'),
(191, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '13-04-2022 16:44:17'),
(190, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '13-04-2022 12:52:07'),
(189, 'admin', 'admin@hms.com', 'Admin', '103.220.204.97', '11-04-2022 17:25:33'),
(188, 'admin', 'admin@hms.com', 'Admin', '103.220.204.97', '11-04-2022 15:17:49'),
(187, 'admin', 'admin@hms.com', 'Admin', '103.220.204.97', '07-04-2022 13:05:51'),
(186, 'admin', 'admin@hms.com', 'Admin', '103.220.204.97', '06-04-2022 16:35:08'),
(185, 'admin', 'admin@hms.com', 'Admin', '103.220.204.97', '05-04-2022 12:13:30'),
(184, 'admin', 'admin@hms.com', 'Admin', '103.220.204.97', '30-03-2022 19:01:11'),
(183, 'admin', 'admin@hms.com', 'Admin', '37.111.193.120', '30-03-2022 10:48:14'),
(182, 'admin', 'admin@hms.com', 'Admin', '103.220.204.97', '29-03-2022 17:42:10'),
(181, 'admin', 'admin@hms.com', 'Admin', '103.220.204.97', '29-03-2022 12:41:42'),
(180, 'admin', 'admin@hms.com', 'Admin', '103.220.204.97', '27-03-2022 20:46:13'),
(195, 'admin', 'admin@hms.com', 'Admin', '103.135.233.55', '08-05-2022 08:42:51'),
(196, 'admin', 'admin@hms.com', 'Admin', '103.135.233.55', '08-05-2022 13:06:31'),
(197, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '10-05-2022 14:45:09'),
(198, 'admin', 'admin@hms.com', 'Admin', '37.111.196.53', '18-05-2022 16:26:30'),
(199, 'admin', 'admin@hms.com', 'Admin', '37.111.196.53', '18-05-2022 17:37:37'),
(200, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '19-05-2022 16:08:19'),
(201, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '19-05-2022 16:30:38'),
(202, 'Mr. Patient', 'patient@hms.com', 'Patient', '110.76.129.137', '19-05-2022 17:46:55'),
(203, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '19-05-2022 20:01:54'),
(204, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '19-05-2022 21:22:23'),
(205, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '19-05-2022 21:24:49'),
(206, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '19-05-2022 21:31:50'),
(207, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '19-05-2022 21:33:15'),
(208, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '22-05-2022 16:00:30'),
(209, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '22-05-2022 16:02:37'),
(210, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '22-05-2022 16:14:53'),
(211, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '22-05-2022 17:29:20'),
(212, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '23-05-2022 11:49:29'),
(213, 'Mr. Accountant', 'accountant@hms.com', 'Accountant', '110.76.129.137', '23-05-2022 12:11:38'),
(214, 'Mr Receptionist', 'receptionist@hms.com', 'Receptionist', '110.76.129.137', '23-05-2022 12:12:13'),
(215, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '23-05-2022 12:13:18'),
(216, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '23-05-2022 13:17:44'),
(217, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '23-05-2022 19:10:51'),
(218, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '24-05-2022 12:18:40'),
(219, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '25-05-2022 12:25:13'),
(220, 'Mr Doctor', 'doctor@hms.com', 'Doctor', '110.76.129.137', '25-05-2022 12:25:56'),
(221, 'Mr. Patient', 'patient@hms.com', 'Patient', '110.76.129.137', '25-05-2022 12:26:21'),
(222, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '25-05-2022 12:26:52'),
(223, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '25-05-2022 12:27:12'),
(224, 'Mr. Patient', 'patient@hms.com', 'Patient', '110.76.129.137', '25-05-2022 12:27:23'),
(225, 'Mr Doctor', 'doctor@hms.com', 'Doctor', '110.76.129.137', '25-05-2022 12:39:44'),
(226, 'Mr. Patient', 'patient@hms.com', 'Patient', '110.76.129.137', '25-05-2022 12:40:17'),
(227, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '01-06-2022 16:48:01'),
(228, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '01-06-2022 17:38:09'),
(229, 'admin', 'admin@hms.com', 'Admin', '103.231.162.57', '12-06-2022 11:35:23'),
(230, 'admin', 'admin@hms.com', 'Admin', '103.135.233.55', '12-06-2022 14:51:07'),
(231, 'admin', 'admin@hms.com', 'Admin', '103.135.233.55', '12-06-2022 14:54:02'),
(232, 'Mr. Patient', 'patient@hms.com', 'Patient', '103.231.162.57', '13-06-2022 11:24:41'),
(233, 'admin', 'admin@hms.com', 'Admin', '103.231.162.57', '13-06-2022 11:44:31'),
(234, 'admin', 'admin@hms.com', 'Admin', '103.231.162.57', '13-06-2022 13:04:38'),
(235, 'admin', 'admin@hms.com', 'Admin', '103.231.162.57', '13-06-2022 13:32:24'),
(236, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '22-06-2022 12:48:02'),
(237, 'admin', 'admin@hms.com', 'Admin', '37.111.218.119', '22-06-2022 18:05:48'),
(238, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '23-06-2022 17:15:18'),
(239, 'admin', 'admin@hms.com', 'Admin', '103.220.205.33', '24-06-2022 01:00:00'),
(240, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '02-08-2022 09:16:31'),
(241, 'Mr Doctor', 'doctor@hms.com', 'Doctor', '110.76.129.137', '02-08-2022 11:03:19'),
(242, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '02-08-2022 13:48:00'),
(243, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '02-08-2022 15:15:33'),
(244, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '02-08-2022 15:31:10'),
(245, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '02-08-2022 17:17:33'),
(246, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '03-08-2022 09:10:22'),
(247, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '03-08-2022 12:58:18'),
(248, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '03-08-2022 13:02:49'),
(249, 'admin', 'admin@hms.com', 'Admin', '110.76.129.137', '03-08-2022 15:41:37'),
(250, 'admin', 'admin@hms.com', 'Admin', '110.76.128.67', '07-08-2022 06:01:14'),
(251, 'Mr. Patient', 'patient@hms.com', 'Patient', '110.76.128.67', '07-08-2022 06:06:07'),
(252, 'Mr Doctor', 'doctor@hms.com', 'Doctor', '110.76.128.67', '07-08-2022 06:06:20'),
(253, 'Mr Receptionist', 'receptionist@hms.com', 'Receptionist', '110.76.128.67', '07-08-2022 06:06:41'),
(254, 'Mrs Nurse', 'nurse@hms.com', 'Nurse', '110.76.128.67', '07-08-2022 06:06:55'),
(255, 'Mr. Pharmacist', 'pharmacist@hms.com', 'Pharmacist', '110.76.128.67', '07-08-2022 06:07:10'),
(256, 'Mr. Accountant', 'accountant@hms.com', 'Accountant', '110.76.128.67', '07-08-2022 06:07:54'),
(257, 'Mr Laboratorist', 'laboratorist@hms.com', 'Laboratorist', '110.76.128.67', '07-08-2022 06:08:13'),
(258, 'Mr Laboratorist', 'laboratorist@hms.com', 'Laboratorist', '110.76.128.67', '07-08-2022 06:10:30'),
(259, 'Mr Laboratorist', 'laboratorist@hms.com', 'Laboratorist', '110.76.128.67', '07-08-2022 06:11:02'),
(260, 'admin', 'admin@hms.com', 'Admin', '105.27.237.116', '13-11-2022 14:39:33'),
(261, 'admin', 'admin@hms.com', 'Admin', '105.27.237.116', '13-11-2022 14:50:12'),
(262, 'admin', 'admin@hms.com', 'Admin', '105.27.237.116', '13-11-2022 15:05:47'),
(263, 'admin', 'admin@hms.com', 'Admin', '::1', '14-11-2022 00:16:39'),
(264, 'NURSE', 'nurse@gatundu.com', 'Nurse', '::1', '14-11-2022 01:03:03'),
(265, 'PESSY', 'doctor@gatundu.com', 'Doctor', '::1', '14-11-2022 01:05:23'),
(266, 'PHARMACIST', 'pharmacist@gatundu.com', 'Pharmacist', '::1', '14-11-2022 01:07:31'),
(267, 'RECEPTIONIST', 'receptionist@gatundu.com', 'Receptionist', '::1', '14-11-2022 01:08:37'),
(268, 'admin', 'admin@hms.com', 'Admin', '::1', '14-11-2022 01:26:50'),
(269, 'admin', 'admin@hms.com', 'Admin', '::1', '14-11-2022 01:57:12'),
(270, 'admin', 'admin@hms.com', 'Admin', '::1', '14-11-2022 02:36:58'),
(271, 'admin', 'admin@hms.com', 'Admin', '::1', '14-11-2022 02:54:19'),
(272, 'GATUNDU ADMIN', 'admin@gatundu.com', 'Admin', '::1', '14-11-2022 02:55:46'),
(273, 'GATUNDU ADMIN', 'admin@gatundu.com', 'Admin', '::1', '14-11-2022 03:11:03'),
(274, 'NURSE', 'nurse@gatundu.com', 'Nurse', '::1', '14-11-2022 03:16:15'),
(275, 'GATUNDU ADMIN', 'admin@gatundu.com', 'Admin', '::1', '14-11-2022 08:48:23'),
(276, 'GATUNDU ADMIN', 'admin@gatundu.com', 'Admin', '::1', '19-11-2022 08:13:58'),
(277, 'GATUNDU ADMIN', 'admin@gatundu.com', 'Admin', '::1', '19-11-2022 19:32:09'),
(278, 'HAWEE', 'hawee@gatundu.com', 'Doctor', '::1', '19-11-2022 19:57:37'),
(279, 'GATUNDU ADMIN', 'admin@gatundu.com', 'Admin', '::1', '19-11-2022 19:58:16'),
(280, 'GATUNDU ADMIN', 'admin@gatundu.com', 'Admin', '::1', '19-11-2022 21:17:32'),
(281, 'PESSY', 'doctor@gatundu.com', 'Doctor', '::1', '19-11-2022 21:18:55'),
(282, 'PHARMACIST', 'pharmacist@gatundu.com', 'Pharmacist', '::1', '19-11-2022 21:20:19'),
(283, 'RECEPTIONIST', 'receptionist@gatundu.com', 'Receptionist', '::1', '19-11-2022 21:21:21'),
(284, 'NURSE', 'nurse@gatundu.com', 'Nurse', '::1', '19-11-2022 21:23:01'),
(285, 'accountant', 'accountant@gatundu.com', 'Accountant', '::1', '19-11-2022 21:24:21'),
(286, 'GATUNDU ADMIN', 'admin@gatundu.com', 'Admin', '::1', '19-11-2022 21:44:07'),
(287, 'PESSY', 'doctor@gatundu.com', 'Doctor', '::1', '19-11-2022 21:45:08'),
(288, 'NURSE', 'nurse@gatundu.com', 'Nurse', '::1', '19-11-2022 21:47:35'),
(289, 'RECEPTIONIST', 'receptionist@gatundu.com', 'Receptionist', '::1', '19-11-2022 21:49:14'),
(290, 'accountant', 'accountant@gatundu.com', 'Accountant', '::1', '19-11-2022 21:50:36'),
(291, 'PHARMACIST', 'pharmacist@gatundu.com', 'Pharmacist', '::1', '19-11-2022 21:51:34'),
(292, 'GATUNDU ADMIN', 'admin@gatundu.com', 'Admin', '::1', '19-11-2022 21:53:21'),
(293, 'RECEPTIONIST', 'receptionist@gatundu.com', 'Receptionist', '::1', '19-11-2022 22:41:47'),
(294, 'NURSE', 'nurse@gatundu.com', 'Nurse', '::1', '19-11-2022 22:47:27'),
(295, 'GATUNDU ADMIN', 'admin@gatundu.com', 'Admin', '::1', '20-11-2022 01:36:24'),
(296, 'GATUNDU ADMIN', 'admin@gatundu.com', 'Admin', '::1', '20-11-2022 01:36:24'),
(297, 'GATUNDU ADMIN', 'admin@gatundu.com', 'Admin', '::1', '20-11-2022 03:34:42'),
(298, 'PESSY', 'doctor@gatundu.com', 'Doctor', '::1', '20-11-2022 03:36:53'),
(299, 'GATUNDU ADMIN', 'admin@gatundu.com', 'Admin', '::1', '26-11-2022 09:21:45'),
(300, 'PESSY', 'doctor@gatundu.com', 'Doctor', '::1', '26-11-2022 18:45:58'),
(301, 'PESSY', 'doctor@gatundu.com', 'Doctor', '::1', '26-11-2022 21:17:45'),
(302, 'GATUNDU ADMIN', 'admin@gatundu.com', 'Admin', '::1', '01-12-2022 01:52:40'),
(303, 'GATUNDU ADMIN', 'admin@gatundu.com', 'Admin', '::1', '01-12-2022 05:14:08'),
(304, 'GATUNDU ADMIN', 'admin@gatundu.com', 'Admin', '::1', '01-12-2022 05:47:01'),
(305, 'PESSY', 'doctor@gatundu.com', 'Doctor', '::1', '01-12-2022 05:48:55'),
(306, 'PESSY', 'doctor@gatundu.com', 'Doctor', '::1', '19-01-2023 13:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `manualemailshortcode`
--

CREATE TABLE `manualemailshortcode` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manualemailshortcode`
--

INSERT INTO `manualemailshortcode` (`id`, `name`, `type`) VALUES
(1, '{firstname}', 'email'),
(2, '{lastname}', 'email'),
(3, '{name}', 'email'),
(6, '{address}', 'email'),
(7, '{company}', 'email'),
(8, '{email}', 'email'),
(9, '{phone}', 'email');

-- --------------------------------------------------------

--
-- Table structure for table `manualsmsshortcode`
--

CREATE TABLE `manualsmsshortcode` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manualsmsshortcode`
--

INSERT INTO `manualsmsshortcode` (`id`, `name`, `type`) VALUES
(1, '{firstname}', 'sms'),
(2, '{lastname}', 'sms'),
(3, '{name}', 'sms'),
(4, '{email}', 'sms'),
(5, '{phone}', 'sms'),
(6, '{address}', 'sms'),
(10, '{company}', 'sms');

-- --------------------------------------------------------

--
-- Table structure for table `manual_email_template`
--

CREATE TABLE `manual_email_template` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manual_email_template`
--

INSERT INTO `manual_email_template` (`id`, `name`, `message`, `type`) VALUES
(7, 'vddfvdf', '<p>dvdfvdfvdfvd</p>\r\n', 'email'),
(8, 'Admin Template', '<p>{phone}</p>\r\n\r\n<p>{email}</p>\r\n\r\n<p>{company}</p>\r\n\r\n<p>{address}</p>\r\n\r\n<p>{name}</p>\r\n\r\n<p>{lastname}</p>\r\n\r\n<p>{firstname}</p>\r\n', 'email'),
(9, 'sadasdasd', '<p>{company}</p><p>{address}</p>', 'email');

-- --------------------------------------------------------

--
-- Table structure for table `manual_sms_template`
--

CREATE TABLE `manual_sms_template` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manual_sms_template`
--

INSERT INTO `manual_sms_template` (`id`, `name`, `message`, `type`) VALUES
(1, 'test', '{firstname} come to my offce {lastname}', 'sms'),
(8, 'dsdsdss3wew454', '{firstname}{address}{phone}{address}{email}{name}{lastname}{firstname}', 'sms'),
(3, 'sdgfgfdgfdgdf', '<p>{email}{instructor}{address} gfdgdfg</p>\r\n', 'email'),
(7, 'test223', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 500px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>dsfsf</td>\r\n			<td>sdfsdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>sdfdsf</td>\r\n			<td>dfdsf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>dfdf</td>\r\n			<td>dfdfd</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n{email}{instructor}', 'email'),
(9, 'zxcxzczx', ' {address}{phone}', 'sms');

-- --------------------------------------------------------

--
-- Table structure for table `medical_history`
--

CREATE TABLE `medical_history` (
  `id` int(100) NOT NULL,
  `patient_id` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_address` varchar(500) DEFAULT NULL,
  `patient_phone` varchar(100) DEFAULT NULL,
  `img_url` varchar(500) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `registration_time` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medical_history`
--

INSERT INTO `medical_history` (`id`, `patient_id`, `title`, `description`, `patient_name`, `patient_address`, `patient_phone`, `img_url`, `date`, `registration_time`) VALUES
(77, '15', 'stomatch pain', '<p>vitals</p><p>blood pressure</p><p>weight</p>', 'dan', 'nairobi', '0796773177', NULL, '1668978000', NULL),
(76, '13', 'ERT', '<p>DDD</p>', 'DERRICK', 'NAIROBI', '25478522', NULL, '1668286800', NULL),
(78, '14', 'headache', '<p>headache</p><p>&nbsp;</p>', 'roy', 'nairobi', '+254796773177', NULL, '1668805200', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `box` varchar(100) DEFAULT NULL,
  `s_price` varchar(100) DEFAULT NULL,
  `quantity` int(100) DEFAULT NULL,
  `generic` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `effects` varchar(100) DEFAULT NULL,
  `e_date` varchar(70) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `name`, `category`, `price`, `box`, `s_price`, `quantity`, `generic`, `company`, `effects`, `e_date`, `add_date`) VALUES
(2882, 'panadol extra', 'Antibiotic', '22', 'asd', '34', 100, 'paracetamol', 'dawa company', 'none', '31-08-2022', '08/02/22'),
(2883, 'mara moja', 'tablets', '5', 'mara moja', '10', 198, 'mara moja', 'dawa company', 'none', '31-12-2025', '11/14/22');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category`
--

CREATE TABLE `medicine_category` (
  `id` int(100) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medicine_category`
--

INSERT INTO `medicine_category` (`id`, `category`, `description`) VALUES
(27, 'Antibiotic', 'description'),
(28, 'injection', 'injection'),
(29, 'tablets', 'tablets'),
(30, 'sylup', 'sylup');

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `id` int(100) NOT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `topic` varchar(1000) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `start_time` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `meeting_id` varchar(100) DEFAULT NULL,
  `meeting_password` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time_slot` varchar(100) DEFAULT NULL,
  `s_time` varchar(100) DEFAULT NULL,
  `e_time` varchar(100) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL,
  `registration_time` varchar(100) DEFAULT NULL,
  `s_time_key` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `request` varchar(100) DEFAULT NULL,
  `patientname` varchar(1000) DEFAULT NULL,
  `doctorname` varchar(1000) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL,
  `doctor_ion_id` varchar(100) DEFAULT NULL,
  `patient_ion_id` varchar(100) DEFAULT NULL,
  `appointment_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_settings`
--

CREATE TABLE `meeting_settings` (
  `id` int(100) NOT NULL,
  `api_key` varchar(100) DEFAULT NULL,
  `secret_key` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meeting_settings`
--

INSERT INTO `meeting_settings` (`id`, `api_key`, `secret_key`, `ion_user_id`, `y`) VALUES
(8, 'PEbvh2uESS6ryue3Kb3D0w', 'BZpvXJsvgqG6mN4Up1FuuWJQAY47w5QCWIAo', '709', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(100) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL,
  `z` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `z`, `ion_user_id`) VALUES
(13, NULL, 'NURSE', 'nurse@gatundu.com', 'kiambu', '+254796773177', NULL, NULL, NULL, '1587');

-- --------------------------------------------------------

--
-- Table structure for table `odontogram`
--

CREATE TABLE `odontogram` (
  `id` int(100) NOT NULL,
  `patient_id` int(100) NOT NULL,
  `Tooth32` varchar(30) NOT NULL,
  `Tooth31` varchar(30) NOT NULL,
  `Tooth30` varchar(30) NOT NULL,
  `Tooth29` varchar(30) NOT NULL,
  `Tooth28` varchar(30) NOT NULL,
  `Tooth27` varchar(30) NOT NULL,
  `Tooth26` varchar(30) NOT NULL,
  `Tooth25` varchar(30) NOT NULL,
  `Tooth24` varchar(30) NOT NULL,
  `Tooth23` varchar(30) NOT NULL,
  `Tooth22` varchar(30) NOT NULL,
  `Tooth21` varchar(30) NOT NULL,
  `Tooth20` varchar(30) NOT NULL,
  `Tooth19` varchar(30) NOT NULL,
  `Tooth18` varchar(30) NOT NULL,
  `Tooth17` varchar(30) NOT NULL,
  `Tooth16` varchar(30) NOT NULL,
  `Tooth15` varchar(30) NOT NULL,
  `Tooth14` varchar(30) NOT NULL,
  `Tooth13` varchar(30) NOT NULL,
  `Tooth12` varchar(30) NOT NULL,
  `Tooth11` varchar(30) NOT NULL,
  `Tooth10` varchar(30) NOT NULL,
  `Tooth9` varchar(30) NOT NULL,
  `Tooth8` varchar(30) NOT NULL,
  `Tooth7` varchar(30) NOT NULL,
  `Tooth6` varchar(30) NOT NULL,
  `Tooth5` varchar(30) NOT NULL,
  `Tooth4` varchar(30) NOT NULL,
  `Tooth3` varchar(30) NOT NULL,
  `Tooth2` varchar(30) NOT NULL,
  `Tooth1` varchar(30) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odontogram`
--

INSERT INTO `odontogram` (`id`, `patient_id`, `Tooth32`, `Tooth31`, `Tooth30`, `Tooth29`, `Tooth28`, `Tooth27`, `Tooth26`, `Tooth25`, `Tooth24`, `Tooth23`, `Tooth22`, `Tooth21`, `Tooth20`, `Tooth19`, `Tooth18`, `Tooth17`, `Tooth16`, `Tooth15`, `Tooth14`, `Tooth13`, `Tooth12`, `Tooth11`, `Tooth10`, `Tooth9`, `Tooth8`, `Tooth7`, `Tooth6`, `Tooth5`, `Tooth4`, `Tooth3`, `Tooth2`, `Tooth1`, `description`) VALUES
(5, 6, '#9c00ff', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', '#00ba72', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', '#ff0000', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'Need follow up 3 days later'),
(4, 1, 'white', 'white', '#ff9000', '#ff9000', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', '#8e0101', '#9c00ff', 'white', 'white', 'white', 'white', '#8e0101', 'white', '#8e0101', '#8e0101', 'white', 'white', 'white', 'white', '#ff9000', '#ff9000', '#ff9000', 'white', 'Enter description here...'),
(6, 7, '#9c00ff', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', '#00c0ff', '#ff0000', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', '#ff9000', 'white', 'white', 'white', 'white', '#ff9000', ''),
(7, 8, 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', ''),
(8, 9, 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', ''),
(9, 12, 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', ''),
(10, 13, 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', ''),
(11, 14, 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'white', 'tooth 12');

-- --------------------------------------------------------

--
-- Table structure for table `ot_payment`
--

CREATE TABLE `ot_payment` (
  `id` int(100) NOT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor_c_s` varchar(100) DEFAULT NULL,
  `doctor_a_s_1` varchar(100) DEFAULT NULL,
  `doctor_a_s_2` varchar(100) DEFAULT NULL,
  `doctor_anaes` varchar(100) DEFAULT NULL,
  `n_o_o` varchar(100) DEFAULT NULL,
  `c_s_f` varchar(100) DEFAULT NULL,
  `a_s_f_1` varchar(100) DEFAULT NULL,
  `a_s_f_2` varchar(11) DEFAULT NULL,
  `anaes_f` varchar(100) DEFAULT NULL,
  `ot_charge` varchar(100) DEFAULT NULL,
  `cab_rent` varchar(100) DEFAULT NULL,
  `seat_rent` varchar(100) DEFAULT NULL,
  `others` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `doctor_fees` varchar(100) DEFAULT NULL,
  `hospital_fees` varchar(100) DEFAULT NULL,
  `gross_total` varchar(100) DEFAULT NULL,
  `flat_discount` varchar(100) DEFAULT NULL,
  `amount_received` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `birthdate` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `bloodgroup` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL,
  `patient_id` varchar(100) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL,
  `registration_time` varchar(100) DEFAULT NULL,
  `how_added` varchar(100) DEFAULT NULL,
  `appointment_confirmation` varchar(1000) DEFAULT NULL,
  `payment_confirmation` varchar(1000) DEFAULT NULL,
  `appointment_creation` varchar(1000) DEFAULT NULL,
  `meeting_schedule` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `img_url`, `name`, `email`, `doctor`, `address`, `phone`, `sex`, `birthdate`, `age`, `bloodgroup`, `ion_user_id`, `patient_id`, `add_date`, `registration_time`, `how_added`, `appointment_confirmation`, `payment_confirmation`, `appointment_creation`, `meeting_schedule`) VALUES
(13, NULL, 'DERRICK', 'DERRICK@GMAIL.COM', ',1,12', 'NAIROBI', '25478522', 'Male', '02-02-2010', NULL, 'A+', '1586', '607478', '11/13/22', '1668330972', NULL, NULL, NULL, NULL, NULL),
(14, NULL, 'roy', 'roy@gmail.com', '1', 'nairobi', '+254796773177', 'Male', '13-11-2022', NULL, 'B-', '1591', '722646', '11/14/22', '1668375208', NULL, NULL, NULL, NULL, NULL),
(15, NULL, 'dan', 'patient@gatundu.com', '11', 'nairobi', '0796773177', 'Female', '17-03-1999', '16', 'A-', '1594', '452836', '11/19/22', '1668877567', 'from_appointment', 'Active', 'Active', 'Active', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `patient_deposit`
--

CREATE TABLE `patient_deposit` (
  `id` int(10) NOT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `payment_id` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `deposited_amount` varchar(100) DEFAULT NULL,
  `amount_received_id` varchar(100) DEFAULT NULL,
  `deposit_type` varchar(100) DEFAULT NULL,
  `gateway` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `payment_from` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient_deposit`
--

INSERT INTO `patient_deposit` (`id`, `patient`, `payment_id`, `date`, `deposited_amount`, `amount_received_id`, `deposit_type`, `gateway`, `user`, `payment_from`) VALUES
(1808, '13', '123', '1668331012', '2000', '123.gp', 'Cash', NULL, '1', NULL),
(1809, '13', '124', '1668331154', '300', '124.gp', 'Cash', NULL, '1', 'appointment'),
(1810, '14', '125', '1668375297', '300', '125.gp', 'Cash', NULL, '1', 'appointment'),
(1811, '14', '126', '1668377370', '3000', '126.gp', 'Cash', NULL, '1590', NULL),
(1812, '15', '129', '1668887149', '', '129.gp', 'Cash', NULL, '1590', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_material`
--

CREATE TABLE `patient_material` (
  `id` int(100) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_address` varchar(100) DEFAULT NULL,
  `patient_phone` varchar(100) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `date_string` varchar(100) DEFAULT NULL,
  `folder` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `vat` varchar(100) NOT NULL DEFAULT '0',
  `x_ray` varchar(100) DEFAULT NULL,
  `flat_vat` varchar(100) DEFAULT NULL,
  `discount` varchar(100) NOT NULL DEFAULT '0',
  `flat_discount` varchar(100) DEFAULT NULL,
  `gross_total` varchar(100) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `hospital_amount` varchar(100) DEFAULT NULL,
  `doctor_amount` varchar(100) DEFAULT NULL,
  `category_amount` varchar(1000) DEFAULT NULL,
  `category_name` varchar(1000) DEFAULT NULL,
  `amount_received` varchar(100) DEFAULT NULL,
  `deposit_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_phone` varchar(100) DEFAULT NULL,
  `patient_address` varchar(100) DEFAULT NULL,
  `doctor_name` varchar(100) DEFAULT NULL,
  `date_string` varchar(100) DEFAULT NULL,
  `payment_from` varchar(1000) DEFAULT NULL,
  `appointment_id` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `category`, `patient`, `doctor`, `date`, `amount`, `vat`, `x_ray`, `flat_vat`, `discount`, `flat_discount`, `gross_total`, `remarks`, `hospital_amount`, `doctor_amount`, `category_amount`, `category_name`, `amount_received`, `deposit_type`, `status`, `user`, `patient_name`, `patient_phone`, `patient_address`, `doctor_name`, `date_string`, `payment_from`, `appointment_id`) VALUES
(123, NULL, '13', NULL, '1668331012', '1800', '0', NULL, NULL, '0', '0', '1800', '', '1800', '0', NULL, '130*1000*ECG*1,132*400*SGPT*1,134*400*Blood test*1', '2000', 'Cash', 'unpaid', '1', 'DERRICK', '25478522', 'NAIROBI', '0', '13-11-22', 'payment', NULL),
(124, NULL, '13', '1', '1668331154', '300', '0', NULL, NULL, '0', '0', '300', '', '0', '300', NULL, 'Consultant Fee', '300', 'Cash', 'paid', '1', 'DERRICK', '25478522', 'NAIROBI', 'Mr Doctor', '13-11-2022', 'appointment', '146'),
(125, NULL, '14', '1', '1668375296', '300', '0', NULL, NULL, '0', '0', '300', '', '0', '300', NULL, 'Consultant Fee', '300', 'Cash', 'paid', '1', 'roy', '+254796773177', 'nairobi', 'PESSY', '14-11-2022', 'appointment', '147'),
(126, NULL, '14', '1', '1668377370', '2800', '0', NULL, NULL, '0', '0', '2800', '', '2600', '200', NULL, '130*1000*ECG*1,132*400*SGPT*1,131*1000*Test*1,134*400*Blood test*1', '3000', 'Cash', 'unpaid', '1590', 'roy', '+254796773177', 'nairobi', 'PESSY', '14-11-22', 'payment', NULL),
(127, NULL, '13', '12', '1668877432', '', '0', NULL, NULL, '0', '0', '0', 'treatment', '0', '0', NULL, 'Consultant Fee', NULL, NULL, 'unpaid', '1', 'DERRICK', '25478522', 'NAIROBI', 'LOCH', '19-11-2022', 'appointment', '148'),
(128, NULL, '15', '11', '1668877568', '', '0', NULL, NULL, '0', '0', '0', '', '0', '0', NULL, 'Consultant Fee', NULL, NULL, 'unpaid', '1', 'dan', '0712345678', NULL, 'HAWEE', '19-11-2022', 'appointment', '149'),
(129, NULL, '15', '11', '1668887149', '800', '0', NULL, NULL, '0', '0', '800', '', '760', '40', NULL, '132*400*SGPT*2', '', 'Cash', 'unpaid', '1590', 'dan', '0796773177', 'nairobi', 'HAWEE', '19-11-22', 'payment', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paymentgateway`
--

CREATE TABLE `paymentgateway` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `merchant_key` varchar(100) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL,
  `APIUsername` varchar(100) DEFAULT NULL,
  `APIPassword` varchar(100) DEFAULT NULL,
  `APISignature` varchar(100) DEFAULT NULL,
  `status` varchar(1000) DEFAULT NULL,
  `publish` varchar(1000) DEFAULT NULL,
  `secret` varchar(1000) DEFAULT NULL,
  `public_key` varchar(1000) DEFAULT NULL,
  `store_id` varchar(1000) DEFAULT NULL,
  `store_password` varchar(1000) DEFAULT NULL,
  `merchant_mid` varchar(1000) DEFAULT NULL,
  `merchant_website` varchar(1000) DEFAULT NULL,
  `apiloginid` varchar(1000) DEFAULT NULL,
  `transactionkey` varchar(1000) DEFAULT NULL,
  `apikey` varchar(1000) DEFAULT NULL,
  `merchantcode` varchar(1000) DEFAULT NULL,
  `privatekey` varchar(1000) DEFAULT NULL,
  `publishablekey` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paymentgateway`
--

INSERT INTO `paymentgateway` (`id`, `name`, `merchant_key`, `salt`, `x`, `y`, `APIUsername`, `APIPassword`, `APISignature`, `status`, `publish`, `secret`, `public_key`, `store_id`, `store_password`, `merchant_mid`, `merchant_website`, `apiloginid`, `transactionkey`, `apikey`, `merchantcode`, `privatekey`, `publishablekey`) VALUES
(1, 'M-PESA', '', '', '', '', 'kjhjkj', 'sdfsdfsdfsd', 'sdfsdfds', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'AIRTELL MONEY', 'Merchant Key ', 'Merchant Key ', '', '', '', '', 'Aaw-Fd69z.JLuiq13ejMN-CsSMuuAPEXWUFPF5QW9sD22fp1hosGIFKo', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'EQITELL ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', 'pk_test_51LCOGdKx67N5dEGbYuv5rEwOejWvG81yTs1dungDWF4vSmLDnUVhRGxNMr6xrPvrOUZ9kcgGUjM1eo8GoZZw8jGc006JJZ58qC', 'sk_test_51LCOGdKx67N5dEGb6KrT1Nl455MRcJXf1LYQhfVd0hDRuxTHESzTSh7vd2qEVsCGW0zgoJJX3UkU3yRwqnaJhRUI00tO8QIPek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Paystack', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, 'Secret Key', 'Public Key', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'SSLCOMMERZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, NULL, NULL, 'vella5fe8cfbe4ed3a6786', 'vella5fe8cfbe4ed3a@ssl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Paytm', 'Jf1xPyzQNTUuRkkwtrtrt', NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, 'RyFhFm70546883391722', 'WEBSTAGING', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Authorize.Net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2LJcUm5498497L2', '46u3b3AMd44sJX5w', NULL, NULL, NULL, NULL),
(8, '2Checkout', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Merchant Code', 'Private key', 'Publishable Key');

-- --------------------------------------------------------

--
-- Table structure for table `payment_category`
--

CREATE TABLE `payment_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `c_price` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `d_commission` int(100) DEFAULT NULL,
  `h_commission` int(100) DEFAULT NULL,
  `code` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_category`
--

INSERT INTO `payment_category` (`id`, `category`, `description`, `c_price`, `type`, `d_commission`, `h_commission`, `code`) VALUES
(130, 'ECG', 'ecg', '1000', 'diagnostic', 5, NULL, 'B004'),
(131, 'Test', 'test', '1000', 'diagnostic', 5, NULL, 'B005'),
(132, 'SGPT', 'A liver function test', '400', 'diagnostic', 5, NULL, 'B007'),
(134, 'Blood test', 'sdfdfs', '400', 'others', 20, NULL, 'coupon150');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `ion_user_id`) VALUES
(9, NULL, 'PHARMACIST', 'pharmacist@gatundu.com', 'kiambu', '+254796773177', NULL, NULL, '1588');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_expense`
--

CREATE TABLE `pharmacy_expense` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pharmacy_expense`
--

INSERT INTO `pharmacy_expense` (`id`, `category`, `date`, `amount`, `user`) VALUES
(142, 'kjkjlkj', '1630781165', '989', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_expense_category`
--

CREATE TABLE `pharmacy_expense_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pharmacy_expense_category`
--

INSERT INTO `pharmacy_expense_category` (`id`, `category`, `description`, `x`, `y`) VALUES
(63, 'kjkjlkj', 'lkjlkjk', NULL, NULL),
(64, 'Test', 'Test category', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_payment`
--

CREATE TABLE `pharmacy_payment` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `vat` varchar(100) NOT NULL DEFAULT '0',
  `x_ray` varchar(100) DEFAULT NULL,
  `flat_vat` varchar(100) DEFAULT NULL,
  `discount` varchar(100) NOT NULL DEFAULT '0',
  `flat_discount` varchar(100) DEFAULT NULL,
  `gross_total` varchar(100) DEFAULT NULL,
  `hospital_amount` varchar(100) DEFAULT NULL,
  `doctor_amount` varchar(100) DEFAULT NULL,
  `category_amount` varchar(1000) DEFAULT NULL,
  `category_name` varchar(1000) DEFAULT NULL,
  `amount_received` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pharmacy_payment`
--

INSERT INTO `pharmacy_payment` (`id`, `category`, `patient`, `doctor`, `date`, `amount`, `vat`, `x_ray`, `flat_vat`, `discount`, `flat_discount`, `gross_total`, `hospital_amount`, `doctor_amount`, `category_amount`, `category_name`, `amount_received`, `status`) VALUES
(4, NULL, NULL, NULL, '1668328905', '34', '0', NULL, NULL, '1', '1', '33', NULL, NULL, NULL, '2882*34*1*22', NULL, 'unpaid'),
(5, NULL, NULL, NULL, '1668376287', '20', '0', NULL, NULL, '', '', '20', NULL, NULL, NULL, '2883*10*2*5', NULL, 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_payment_category`
--

CREATE TABLE `pharmacy_payment_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `c_price` varchar(100) DEFAULT NULL,
  `d_commission` int(100) DEFAULT NULL,
  `h_commission` int(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(100) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `symptom` varchar(100) DEFAULT NULL,
  `advice` varchar(1000) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `dd` varchar(100) DEFAULT NULL,
  `medicine` varchar(1000) DEFAULT NULL,
  `validity` varchar(100) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `patientname` varchar(1000) DEFAULT NULL,
  `doctorname` varchar(1000) DEFAULT NULL,
  `lab_test` varchar(10000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `date`, `patient`, `doctor`, `symptom`, `advice`, `state`, `dd`, `medicine`, `validity`, `note`, `patientname`, `doctorname`, `lab_test`) VALUES
(116, '1668286800', '13', '1', '<p>jjjfjfj</p>', '', NULL, NULL, '2882***200***2*3***6***before food', NULL, '<p>jjjf</p>', 'DERRICK', 'PESSY', '130*B004*ECG'),
(117, '1668286800', '14', '1', '<p>hh</p>', '', NULL, NULL, '2883***200***2*3***6***before food', NULL, '<p>j</p>', 'roy', 'PESSY', '130*B004*ECG'),
(118, '1669842000', '14', '1', '', '', NULL, NULL, '2882***200***2*3***6***before food', NULL, '', 'roy', 'PESSY', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `pservice`
--

CREATE TABLE `pservice` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `code` varchar(1000) DEFAULT NULL,
  `alpha_code` varchar(1000) DEFAULT NULL,
  `price` varchar(1000) DEFAULT NULL,
  `active` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pservice`
--

INSERT INTO `pservice` (`id`, `name`, `code`, `alpha_code`, `price`, `active`) VALUES
(13, 'testing', 'p002', 'uiu100', '200', '1'),
(14, 'asdasdsa', '003', '007', '10000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `ion_user_id`) VALUES
(8, NULL, 'RECEPTIONIST', 'receptionist@gatundu.com', 'kiambu', '+254796773177', NULL, '1590');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(100) NOT NULL,
  `report_type` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `report_type`, `patient`, `description`, `doctor`, `date`, `add_date`) VALUES
(37, 'birth', 'roy*1591', 'injection', 'PESSY', '13-11-2022', '11/14/22'),
(38, 'birth', 'roy*1591', 'injection', 'PESSY', '13-11-2022', '11/14/22');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(100) NOT NULL,
  `img_url` varchar(1000) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `system_vendor` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `facebook_id` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `live_appointment_type` varchar(100) DEFAULT NULL,
  `vat` varchar(100) DEFAULT NULL,
  `login_title` varchar(100) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `invoice_logo` varchar(500) DEFAULT NULL,
  `payment_gateway` varchar(100) DEFAULT NULL,
  `sms_gateway` varchar(100) DEFAULT NULL,
  `codec_username` varchar(100) DEFAULT NULL,
  `codec_purchase_code` varchar(100) DEFAULT NULL,
  `timezone` varchar(1000) DEFAULT NULL,
  `emailtype` varchar(1000) DEFAULT NULL,
  `appointment_subtitle` varchar(1000) NOT NULL,
  `appointment_title` varchar(1000) NOT NULL,
  `appointment_description` varchar(1000) NOT NULL,
  `appointment_img_url` varchar(500) NOT NULL,
  `footer_message` varchar(1000) DEFAULT NULL,
  `show_odontogram_in_history` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `system_vendor`, `title`, `address`, `phone`, `email`, `facebook_id`, `currency`, `language`, `discount`, `live_appointment_type`, `vat`, `login_title`, `logo`, `invoice_logo`, `payment_gateway`, `sms_gateway`, `codec_username`, `codec_purchase_code`, `timezone`, `emailtype`, `appointment_subtitle`, `appointment_title`, `appointment_description`, `appointment_img_url`, `footer_message`, `show_odontogram_in_history`) VALUES
(1, 'GATUNDU LEVEL 5 HOSPTAL MIS', 'GATUNDU LEVEL 5 HOSPTAL MIS', 'GATUNDU KIAMBU-KENYA', '+254796773177', 'admin@demo.com', '#', 'Ksh', 'english', 'flat', 'jitsi', 'percentage', 'Login Title', 'uploads/download1.png', '', 'M-PESA', 'MSG91', '', '', 'Africa/Nairobi', 'Domain Email', '', '', '', '', 'SOFTWARE MANAGED AND DEVELOPED BY PESSY', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `site_gallery`
--

CREATE TABLE `site_gallery` (
  `id` int(10) NOT NULL,
  `img` varchar(500) NOT NULL,
  `position` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site_grid`
--

CREATE TABLE `site_grid` (
  `id` int(10) NOT NULL,
  `category` varchar(100) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `position` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site_map`
--

CREATE TABLE `site_map` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_map`
--

INSERT INTO `site_map` (`id`, `name`, `url`) VALUES
(1, 'Patient', 'patient'),
(2, 'Appointment', 'appointment'),
(3, 'Doctor', 'doctor'),
(4, 'Doctor Visit', 'doctor/doctorvisit'),
(5, 'Add New Doctor', 'doctor/addNewView'),
(6, 'Department', 'department'),
(7, 'Nurse', 'nurse'),
(8, 'Add New Nurse', 'nurse/addNewView'),
(9, 'Add New Pharmacist', 'pharmacist/addNewView'),
(10, 'Pharmacist', 'pharmacist'),
(11, 'Add New Laboratorist', 'laboratorist/addNewView'),
(12, 'Laboratorist', 'laboratorist'),
(13, 'Add New Accountant', 'accountant/addNewView'),
(14, 'Accountant', 'accountant'),
(15, 'Add New Receptionist', 'receptionist/addNewView'),
(16, 'Receptionist', 'receptionist'),
(17, 'Payment List', 'finance/payment'),
(18, 'Add New Payment', 'finance/addPaymentView'),
(19, 'Payment Procedures List', 'finance/paymentCategory'),
(20, 'Add Payment Procedure', 'finance/addPaymentCategoryView'),
(21, 'Expense List', 'finance/expense'),
(22, 'Add New Expense', 'finance/addExpenseView'),
(23, 'Expense categories List', 'finance/expenseCategory'),
(24, 'Add New Expense categories List', 'finance/addExpenseCategoryView'),
(25, 'Prescription List', 'prescription/all'),
(26, 'Add New Prescription', 'prescription/addPrescriptionView'),
(27, 'Lab Report List', 'lab'),
(28, 'Add New Lab Report', 'lab/addLabView'),
(29, 'Add New Lab Template', 'lab/template'),
(30, 'Doctor Treatment History', 'appointment/treatmentReport'),
(31, 'Doctor Schedule List', 'schedule'),
(32, 'Doctor Holiday List', 'schedule/allHolidays'),
(33, 'Add New Appointment', 'appointment/addNewView'),
(34, 'Todays Appointment', 'appointment/todays'),
(35, 'Upcoming Appointment', 'appointment/upcoming'),
(36, 'Calendar', 'appointment/calendar'),
(37, 'Medicine List', 'medicine'),
(38, 'Add New Medicine', 'medicine/addMedicineView'),
(39, 'Medicine Category List', 'medicine/medicineCategory'),
(40, 'Add New Medicine Category', 'medicine/addCategoryView'),
(41, 'Medicine Stock Alert List', 'medicine/medicineStockAlert'),
(42, 'Pharmacy Dashboard', 'finance/pharmacy/home'),
(43, 'Dashboard', 'home'),
(44, 'Pharmacy Sales List', 'finance/pharmacy/payment'),
(45, 'Add New Pharmacy Sale', 'finance/pharmacy/addPaymentView'),
(46, 'Pharmacy Expenses List', 'finance/pharmacy/expense'),
(47, 'Add New Pharmacy Expense', 'finance/pharmacy/addExpenseView'),
(48, 'Pharmacy Expense Categories List', 'finance/pharmacy/expenseCategory'),
(49, 'Add New Pharmacy Expense Category', 'finance/pharmacy/addExpenseCategoryView'),
(50, 'Pharmacy Financial report', 'finance/pharmacy/financialReport'),
(51, 'Pharmacy Monthly Sales', 'finance/pharmacy/monthly'),
(52, 'Pharmacy Daily Sales', 'finance/pharmacy/daily'),
(53, 'Pharmacy Monthly Expense', 'finance/pharmacy/monthlyExpense'),
(54, 'Pharmacy Daily Expense', 'finance/pharmacy/dailyExpense'),
(55, 'Donor List', 'donor'),
(56, 'Add New Donor', 'donor/addDonorView'),
(57, 'Blood Bank List ', 'donor/bloodBank'),
(58, 'Bed List', 'bed'),
(59, 'Add New Bed', 'bed/addBedView'),
(60, 'Bed Category List', 'bed/bedCategory'),
(61, 'Alloted Bed List', 'bed/bedAllotment'),
(62, 'Add New Bed Allotment', 'bed/addAllotmentView'),
(63, 'Financial Report', 'finance/financialReport'),
(64, 'User Activity Report', 'finance/allUserActivityReport'),
(65, 'Doctor Commission', 'finance/doctorsCommission'),
(66, 'Monthly Financial report', 'finance/monthly'),
(67, 'Daily Financial report', 'finance/daily'),
(68, 'Monthly Financial Expense', 'finance/monthlyExpense'),
(69, 'Daily Financial Expense', 'finance/dailyExpense'),
(70, 'Expense Vs Income Report', 'finance/expenseVsIncome'),
(71, 'Birth Report', 'report/birth'),
(72, 'Operation Report', 'report/operation'),
(73, 'Expire Report', 'report/expire'),
(74, 'Notice List', 'notice'),
(75, 'Add New Notice', 'notice/addNewView'),
(76, 'Auto Email Template List', 'email/autoEmailTemplate'),
(77, 'Send Email', 'email/sendView'),
(78, 'Email Settings', 'email/emailSettings'),
(79, 'Auto SMS Template List', 'sms/autoSMSTemplate'),
(80, 'Send SMS', 'sms/sendView'),
(81, 'SMS Settings', 'sms'),
(82, 'Settings', 'settings'),
(83, 'Payment Gateway Settings', 'pgateway'),
(84, 'Language Settings', 'settings/language'),
(85, 'Bulk Import', 'import'),
(86, 'Database Backup', 'settings/backups'),
(87, 'Transaction Logs List', 'transactionLogs'),
(88, 'User Login List', 'logs'),
(89, 'Profile', 'profile'),
(90, 'Case Manager', 'patient/caseList'),
(91, 'Patient Payment List', 'patient/patientPayments'),
(92, 'Document List', 'patient/documents'),
(93, 'Visit Website', 'frontend'),
(94, 'Website Settings', 'frontend/settings'),
(95, 'Review List', 'review'),
(96, 'Gridsection List', 'gridsection'),
(97, 'Gallery List', 'gallery'),
(98, 'Slide List', 'slide'),
(99, 'Service List', 'service'),
(100, 'Featured Doctor', 'featured'),
(101, 'Add Payment', 'finance/addPaymentView'),
(102, 'Add Expense', 'finance/addExpenseView'),
(103, 'Add Medicine', 'medicine/addMedicineView'),
(104, 'Add Medicine Category', 'medicine/addCategoryView'),
(105, 'Add Notice', 'notice/addNewView'),
(106, 'Add Bed Allotment', 'bed/addAllotmentView'),
(107, 'Add Bed', 'bed/addBedView'),
(108, 'Add Donor', 'donor/addDonorView'),
(109, 'Add Pharmacy Expense Category', 'finance/pharmacy/addExpenseCategoryView'),
(110, 'Add Pharmacy Expense', 'finance/pharmacy/addExpenseView'),
(111, 'Add Pharmacy Sale', 'finance/pharmacy/addPaymentView'),
(112, 'Add Appointment', 'appointment/addNewView'),
(113, 'Add Lab Template', 'lab/template'),
(114, 'Add Lab Report', 'lab/addLabView'),
(115, 'Add Prescription', 'prescription/addPrescriptionView'),
(116, 'Add Receptionist', 'receptionist/addNewView'),
(117, 'Add Accountant', 'accountant/addNewView'),
(118, 'Add Laboratorist', 'laboratorist/addNewView'),
(119, 'Add Pharmacist', 'pharmacist/addNewView'),
(120, 'Add Nurse', 'nurse/addNewView'),
(121, 'Add Doctor', 'doctor/addNewView'),
(122, 'Patient Service List', 'pservice'),
(123, 'Add Patient Service', 'pservice/addNew'),
(124, 'Add New Patient Service', 'pservice/addNew');

-- --------------------------------------------------------

--
-- Table structure for table `site_review`
--

CREATE TABLE `site_review` (
  `id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `designation` varchar(500) CHARACTER SET utf8 NOT NULL,
  `review` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `img` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `img_url` varchar(1000) DEFAULT NULL,
  `text1` varchar(500) DEFAULT NULL,
  `text2` varchar(500) DEFAULT NULL,
  `text3` varchar(500) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `title`, `img_url`, `text1`, `text2`, `text3`, `position`, `status`) VALUES
(7, 'WELCOME TO GATUNDU LEVEL 5 HOSPITAL', 'uploads/download.jpg', 'WELCOME TO GATUNDU LEVEL 5 HOSPITAL', 'WELCOME TO GATUNDU LEVEL 5 HOSPITAL', 'WELCOME TO GATUNDU LEVEL 5 HOSPITAL', '1', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(100) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `message` varchar(1600) DEFAULT NULL,
  `recipient` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`id`, `date`, `message`, `recipient`, `user`) VALUES
(101, '1627128369', 'thisi is demo', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801749335508', '1'),
(102, '1645941118', '{email}{name}{lastname}', 'Patient Id: 1<br> Patient Name: Mr Patient<br> Patient Phone: +8801999949761', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `api_id` varchar(100) DEFAULT NULL,
  `sender` varchar(100) DEFAULT NULL,
  `authkey` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `sid` varchar(1000) DEFAULT NULL,
  `token` varchar(1000) DEFAULT NULL,
  `sendernumber` varchar(1000) DEFAULT NULL,
  `link` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `name`, `username`, `password`, `api_id`, `sender`, `authkey`, `user`, `sid`, `token`, `sendernumber`, `link`) VALUES
(1, 'Clickatell', '', 'dmJiY3ZiY3Y=', '', NULL, NULL, '1', NULL, NULL, NULL, 'https://www.clickatell.com/'),
(2, 'MSG91', '', '', NULL, '+8801819636104', '373608AOJwu831621942b2P1', '1', NULL, NULL, NULL, 'https://msg91.com/'),
(5, 'Twilio', '', '', NULL, NULL, NULL, '1', 'Twilio SID', 'Twilio Token Password', 'Sender Number', 'https://www.twilio.com/'),
(6, 'Bulk Sms', 'VXNlcm5hbWU=', 'UGFzc3dvcmQ=', NULL, NULL, NULL, '1', NULL, NULL, NULL, 'https://www.bulksms.com/'),
(8, 'Bd Bulk Sms', '', '', NULL, NULL, NULL, '1', NULL, 'Bd Bulk Sms Token Password', NULL, 'https://bdbulksms.net/');

-- --------------------------------------------------------

--
-- Table structure for table `space`
--

CREATE TABLE `space` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `template` varchar(10000) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `name`, `template`, `user`, `x`) VALUES
(12, 'main lab template', '<figure class=\"table\"><table><tbody><tr><td>Parameter</td><td>Reference Valie</td><td>Value</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>mararia</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>typhoid</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>hiv</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>covid</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></figure>', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `time_schedule`
--

CREATE TABLE `time_schedule` (
  `id` int(100) NOT NULL,
  `doctor` varchar(500) DEFAULT NULL,
  `weekday` varchar(100) DEFAULT NULL,
  `s_time` varchar(100) DEFAULT NULL,
  `e_time` varchar(100) DEFAULT NULL,
  `s_time_key` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `time_schedule`
--

INSERT INTO `time_schedule` (`id`, `doctor`, `weekday`, `s_time`, `e_time`, `s_time_key`, `duration`) VALUES
(120, '1', 'Friday', '08:00 PM', '08:45 PM', '240', '3'),
(122, '1', 'Friday', '09:30 PM', '10:30 PM', '258', '3'),
(123, '1', 'Friday', '10:45 PM', '11:45 PM', '273', '6'),
(124, '1', 'Sunday', '06:15 AM', '06:00 PM', '75', '3'),
(125, '12', 'Saturday', '01:00 PM', '01:15 PM', '156', '3'),
(126, '12', 'Saturday', '03:45 PM', '04:00 PM', '189', '3'),
(127, '1', 'Monday', '05:45 PM', '06:00 PM', '213', '3');

-- --------------------------------------------------------

--
-- Table structure for table `time_slot`
--

CREATE TABLE `time_slot` (
  `id` int(100) NOT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `s_time` varchar(100) DEFAULT NULL,
  `e_time` varchar(100) DEFAULT NULL,
  `weekday` varchar(100) DEFAULT NULL,
  `s_time_key` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `time_slot`
--

INSERT INTO `time_slot` (`id`, `doctor`, `s_time`, `e_time`, `weekday`, `s_time_key`) VALUES
(2196, NULL, '01:30 PM', '01:45 PM', 'Tuesday', '162'),
(2197, NULL, '01:45 PM', '02:00 PM', 'Tuesday', '165'),
(2198, NULL, '02:00 PM', '02:15 PM', 'Tuesday', '168'),
(2199, NULL, '02:15 PM', '02:30 PM', 'Tuesday', '171'),
(2200, NULL, '02:30 PM', '02:45 PM', 'Tuesday', '174'),
(2201, NULL, '02:45 PM', '03:00 PM', 'Tuesday', '177'),
(2202, NULL, '03:00 PM', '03:15 PM', 'Tuesday', '180'),
(2203, NULL, '03:15 PM', '03:30 PM', 'Tuesday', '183'),
(2204, NULL, '03:30 PM', '03:45 PM', 'Tuesday', '186'),
(2205, NULL, '03:45 PM', '04:00 PM', 'Tuesday', '189'),
(2206, NULL, '04:00 PM', '04:15 PM', 'Tuesday', '192'),
(2207, NULL, '04:15 PM', '04:30 PM', 'Tuesday', '195'),
(2208, NULL, '04:30 PM', '04:45 PM', 'Tuesday', '198'),
(2209, NULL, '04:45 PM', '05:00 PM', 'Tuesday', '201'),
(2210, NULL, '05:00 PM', '05:15 PM', 'Tuesday', '204'),
(2211, NULL, '05:15 PM', '05:30 PM', 'Tuesday', '207'),
(2212, NULL, '05:30 PM', '05:45 PM', 'Tuesday', '210'),
(2213, NULL, '05:45 PM', '06:00 PM', 'Tuesday', '213'),
(2214, NULL, '06:00 PM', '06:15 PM', 'Tuesday', '216'),
(2215, NULL, '06:15 PM', '06:30 PM', 'Tuesday', '219'),
(2216, NULL, '06:30 PM', '06:45 PM', 'Tuesday', '222'),
(2217, NULL, '06:45 PM', '07:00 PM', 'Tuesday', '225'),
(2218, NULL, '07:00 PM', '07:15 PM', 'Tuesday', '228'),
(2219, NULL, '07:15 PM', '07:30 PM', 'Tuesday', '231'),
(2220, NULL, '07:30 PM', '07:45 PM', 'Tuesday', '234'),
(2221, NULL, '07:45 PM', '08:00 PM', 'Tuesday', '237'),
(2222, NULL, '08:00 PM', '08:15 PM', 'Tuesday', '240'),
(2223, NULL, '08:15 PM', '08:30 PM', 'Tuesday', '243'),
(2224, NULL, '08:30 PM', '08:45 PM', 'Tuesday', '246'),
(2225, NULL, '08:45 PM', '09:00 PM', 'Tuesday', '249'),
(2226, NULL, '09:00 PM', '09:15 PM', 'Tuesday', '252'),
(2227, NULL, '09:15 PM', '09:30 PM', 'Tuesday', '255'),
(2228, NULL, '09:30 PM', '09:45 PM', 'Tuesday', '258'),
(2229, NULL, '09:45 PM', '10:00 PM', 'Tuesday', '261'),
(2230, NULL, '10:00 PM', '10:15 PM', 'Tuesday', '264'),
(2231, NULL, '10:15 PM', '10:30 PM', 'Tuesday', '267'),
(2232, NULL, '10:30 PM', '10:45 PM', 'Tuesday', '270'),
(2233, NULL, '10:45 PM', '11:00 PM', 'Tuesday', '273'),
(2234, NULL, '11:00 PM', '11:15 PM', 'Tuesday', '276'),
(2235, NULL, '11:15 PM', '11:30 PM', 'Tuesday', '279'),
(2570, '1', '08:00 PM', '08:15 PM', 'Friday', '240'),
(2571, '1', '08:15 PM', '08:30 PM', 'Friday', '243'),
(2572, '1', '08:30 PM', '08:45 PM', 'Friday', '246'),
(2573, NULL, '12:00 AM', '12:15 AM', 'Friday', '0'),
(2574, NULL, '12:15 AM', '12:30 AM', 'Friday', '3'),
(2575, NULL, '12:30 AM', '12:45 AM', 'Friday', '6'),
(2576, NULL, '12:45 AM', '01:00 AM', 'Friday', '9'),
(2577, NULL, '01:00 AM', '01:15 AM', 'Friday', '12'),
(2578, NULL, '01:15 AM', '01:30 AM', 'Friday', '15'),
(2579, NULL, '01:30 AM', '01:45 AM', 'Friday', '18'),
(2580, NULL, '01:45 AM', '02:00 AM', 'Friday', '21'),
(2581, NULL, '02:00 AM', '02:15 AM', 'Friday', '24'),
(2582, NULL, '02:15 AM', '02:30 AM', 'Friday', '27'),
(2583, NULL, '02:30 AM', '02:45 AM', 'Friday', '30'),
(2584, NULL, '02:45 AM', '03:00 AM', 'Friday', '33'),
(2585, NULL, '03:00 AM', '03:15 AM', 'Friday', '36'),
(2586, NULL, '03:15 AM', '03:30 AM', 'Friday', '39'),
(2587, NULL, '03:30 AM', '03:45 AM', 'Friday', '42'),
(2588, NULL, '03:45 AM', '04:00 AM', 'Friday', '45'),
(2589, NULL, '04:00 AM', '04:15 AM', 'Friday', '48'),
(2590, NULL, '04:15 AM', '04:30 AM', 'Friday', '51'),
(2591, NULL, '04:30 AM', '04:45 AM', 'Friday', '54'),
(2592, NULL, '04:45 AM', '05:00 AM', 'Friday', '57'),
(2593, NULL, '05:00 AM', '05:15 AM', 'Friday', '60'),
(2594, NULL, '05:15 AM', '05:30 AM', 'Friday', '63'),
(2595, NULL, '05:30 AM', '05:45 AM', 'Friday', '66'),
(2596, NULL, '05:45 AM', '06:00 AM', 'Friday', '69'),
(2597, NULL, '06:00 AM', '06:15 AM', 'Friday', '72'),
(2598, NULL, '06:15 AM', '06:30 AM', 'Friday', '75'),
(2599, NULL, '06:30 AM', '06:45 AM', 'Friday', '78'),
(2600, NULL, '06:45 AM', '07:00 AM', 'Friday', '81'),
(2601, NULL, '07:00 AM', '07:15 AM', 'Friday', '84'),
(2602, NULL, '07:15 AM', '07:30 AM', 'Friday', '87'),
(2603, NULL, '07:30 AM', '07:45 AM', 'Friday', '90'),
(2604, NULL, '07:45 AM', '08:00 AM', 'Friday', '93'),
(2605, NULL, '08:00 AM', '08:15 AM', 'Friday', '96'),
(2606, NULL, '08:15 AM', '08:30 AM', 'Friday', '99'),
(2607, NULL, '08:30 AM', '08:45 AM', 'Friday', '102'),
(2608, NULL, '08:45 AM', '09:00 AM', 'Friday', '105'),
(2609, NULL, '09:00 AM', '09:15 AM', 'Friday', '108'),
(2610, NULL, '09:15 AM', '09:30 AM', 'Friday', '111'),
(2611, NULL, '09:30 AM', '09:45 AM', 'Friday', '114'),
(2612, NULL, '09:45 AM', '10:00 AM', 'Friday', '117'),
(2613, NULL, '10:00 AM', '10:15 AM', 'Friday', '120'),
(2614, NULL, '10:15 AM', '10:30 AM', 'Friday', '123'),
(2615, NULL, '10:30 AM', '10:45 AM', 'Friday', '126'),
(2616, NULL, '10:45 AM', '11:00 AM', 'Friday', '129'),
(2617, '1', '09:30 PM', '09:45 PM', 'Friday', '258'),
(2618, '1', '09:45 PM', '10:00 PM', 'Friday', '261'),
(2619, '1', '10:00 PM', '10:15 PM', 'Friday', '264'),
(2620, '1', '10:15 PM', '10:30 PM', 'Friday', '267'),
(2621, '1', '10:45 PM', '11:15 PM', 'Friday', '273'),
(2622, '1', '11:15 PM', '11:45 PM', 'Friday', '279'),
(2623, '1', '06:15 AM', '06:30 AM', 'Sunday', '75'),
(2624, '1', '06:30 AM', '06:45 AM', 'Sunday', '78'),
(2625, '1', '06:45 AM', '07:00 AM', 'Sunday', '81'),
(2626, '1', '07:00 AM', '07:15 AM', 'Sunday', '84'),
(2627, '1', '07:15 AM', '07:30 AM', 'Sunday', '87'),
(2628, '1', '07:30 AM', '07:45 AM', 'Sunday', '90'),
(2629, '1', '07:45 AM', '08:00 AM', 'Sunday', '93'),
(2630, '1', '08:00 AM', '08:15 AM', 'Sunday', '96'),
(2631, '1', '08:15 AM', '08:30 AM', 'Sunday', '99'),
(2632, '1', '08:30 AM', '08:45 AM', 'Sunday', '102'),
(2633, '1', '08:45 AM', '09:00 AM', 'Sunday', '105'),
(2634, '1', '09:00 AM', '09:15 AM', 'Sunday', '108'),
(2635, '1', '09:15 AM', '09:30 AM', 'Sunday', '111'),
(2636, '1', '09:30 AM', '09:45 AM', 'Sunday', '114'),
(2637, '1', '09:45 AM', '10:00 AM', 'Sunday', '117'),
(2638, '1', '10:00 AM', '10:15 AM', 'Sunday', '120'),
(2639, '1', '10:15 AM', '10:30 AM', 'Sunday', '123'),
(2640, '1', '10:30 AM', '10:45 AM', 'Sunday', '126'),
(2641, '1', '10:45 AM', '11:00 AM', 'Sunday', '129'),
(2642, '1', '11:00 AM', '11:15 AM', 'Sunday', '132'),
(2643, '1', '11:15 AM', '11:30 AM', 'Sunday', '135'),
(2644, '1', '11:30 AM', '11:45 AM', 'Sunday', '138'),
(2645, '1', '11:45 AM', '12:00 PM', 'Sunday', '141'),
(2646, '1', '12:00 PM', '12:15 PM', 'Sunday', '144'),
(2647, '1', '12:15 PM', '12:30 PM', 'Sunday', '147'),
(2648, '1', '12:30 PM', '12:45 PM', 'Sunday', '150'),
(2649, '1', '12:45 PM', '01:00 PM', 'Sunday', '153'),
(2650, '1', '01:00 PM', '01:15 PM', 'Sunday', '156'),
(2651, '1', '01:15 PM', '01:30 PM', 'Sunday', '159'),
(2652, '1', '01:30 PM', '01:45 PM', 'Sunday', '162'),
(2653, '1', '01:45 PM', '02:00 PM', 'Sunday', '165'),
(2654, '1', '02:00 PM', '02:15 PM', 'Sunday', '168'),
(2655, '1', '02:15 PM', '02:30 PM', 'Sunday', '171'),
(2656, '1', '02:30 PM', '02:45 PM', 'Sunday', '174'),
(2657, '1', '02:45 PM', '03:00 PM', 'Sunday', '177'),
(2658, '1', '03:00 PM', '03:15 PM', 'Sunday', '180'),
(2659, '1', '03:15 PM', '03:30 PM', 'Sunday', '183'),
(2660, '1', '03:30 PM', '03:45 PM', 'Sunday', '186'),
(2661, '1', '03:45 PM', '04:00 PM', 'Sunday', '189'),
(2662, '1', '04:00 PM', '04:15 PM', 'Sunday', '192'),
(2663, '1', '04:15 PM', '04:30 PM', 'Sunday', '195'),
(2664, '1', '04:30 PM', '04:45 PM', 'Sunday', '198'),
(2665, '1', '04:45 PM', '05:00 PM', 'Sunday', '201'),
(2666, '1', '05:00 PM', '05:15 PM', 'Sunday', '204'),
(2667, '1', '05:15 PM', '05:30 PM', 'Sunday', '207'),
(2668, '1', '05:30 PM', '05:45 PM', 'Sunday', '210'),
(2669, '1', '05:45 PM', '06:00 PM', 'Sunday', '213'),
(2670, '12', '01:00 PM', '01:15 PM', 'Saturday', '156'),
(2671, '12', '03:45 PM', '04:00 PM', 'Saturday', '189'),
(2672, '1', '05:45 PM', '06:00 PM', 'Monday', '213');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_logs`
--

CREATE TABLE `transaction_logs` (
  `id` int(100) NOT NULL,
  `date_time` varchar(1000) DEFAULT NULL,
  `invoice_id` varchar(1000) DEFAULT NULL,
  `patientname` varchar(1000) DEFAULT NULL,
  `deposit_type` varchar(1000) DEFAULT NULL,
  `payment_gateway` varchar(1000) DEFAULT NULL,
  `action` varchar(1000) DEFAULT NULL,
  `amount` varchar(1000) DEFAULT NULL,
  `user` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction_logs`
--

INSERT INTO `transaction_logs` (`id`, `date_time`, `invoice_id`, `patientname`, `deposit_type`, `payment_gateway`, `action`, `amount`, `user`) VALUES
(13, '27-04-2022 10:18', '50', 'Mr. Patient', 'Card', NULL, 'Added', '799', '1'),
(14, '22-05-2022 16:01', '52', 'Mr. Patient', 'Card', NULL, 'Added', '300', '1'),
(15, '22-05-2022 16:03', '53', 'Mr. Patient', 'Card', NULL, 'Added', '1000', '1'),
(16, '22-05-2022 16:05', '54', 'Mr. Patient', 'Card', NULL, 'Added', '300', '1'),
(17, '22-05-2022 16:06', '55', 'Mr. Patient', 'Card', NULL, 'Added', '300', '1'),
(18, '22-05-2022 16:08', '56', 'Mr. Patient', 'Card', NULL, 'Added', '1000', '1'),
(19, '22-05-2022 16:14', '57', 'Mr. Patient', 'Card', NULL, 'Added', '1000', '1'),
(20, '23-05-2022 13:17', '80', 'Mr. Patient', 'Cash', NULL, 'Added', '', '1'),
(21, '12-06-2022 15:56', '99', 'Mr. Patient', 'Card', NULL, 'Added', '400', '1'),
(22, '13-06-2022 19:56', '115', 'Mr. Patient', 'Card', NULL, 'Added', '600', '1'),
(23, '02-08-2022 14:04', '120', 'Mr. Patient', 'Cash', NULL, 'Added', '300', '1'),
(24, '13-11-2022 12:16', '123', 'DERRICK', 'Cash', NULL, 'Added', '2000', '1'),
(25, '14-11-2022 01:09', '126', 'roy', 'Cash', NULL, 'Added', '3000', '1590'),
(26, '19-11-2022 22:45', '129', 'dan', 'Cash', NULL, 'Added', '', '1590');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'GATUNDU ADMIN', '$2y$08$CffFtG/uAUUsfgf7EPD9SuxegPxZm5Wo3DGGo1Z4BbCVftCgFTh3m', '', 'admin@gatundu.com', '', 'g0wt205VJVb4a9819f14ce3d10dffe14f93680e2', 1607595309, 'zCeJpcj78CKqJ4sVxVbxcO', 1268889823, 1669862821, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(709, '103.231.160.47', 'PESSY', '$2y$08$RcD5dE7VTdDUpQbVpXhxROct.FanrVz661H.hRNoXgqTgzA9Non6G', NULL, 'doctor@gatundu.com', NULL, NULL, NULL, NULL, 1558379920, 1674122450, 1, NULL, NULL, NULL, NULL),
(1574, '110.76.129.137', 'Dr. Shaibal Saha', '$2y$08$UHKn6FEN5aJJ5SpsNffCDOmCmJiwsYv31rqQvDKJ1uTqgtCFLlAaK', NULL, 'shaibal1211@gmail.com', NULL, NULL, NULL, NULL, 1644830414, NULL, 1, NULL, NULL, NULL, NULL),
(1586, '105.27.237.116', 'DERRICK', '$2y$08$p1orGokC.fWVFA3QdHXhluubwz7NcqiIlHeCPhjxhbSmjX2FqL0/y', NULL, 'DERRICK@GMAIL.COM', NULL, NULL, NULL, NULL, 1668330972, NULL, 1, NULL, NULL, NULL, NULL),
(1587, '::1', 'NURSE', '$2y$08$J48WUDjF5r1pHGVRiYcuNOTWp0P62tIsJW2lGdHHQ57.lr2Cmm5xO', NULL, 'nurse@gatundu.com', NULL, NULL, NULL, NULL, 1668374597, 1668887247, 1, NULL, NULL, NULL, NULL),
(1588, '::1', 'PHARMACIST', '$2y$08$444SJrwgnenQSVIhneFr4uZVaoMRsnj8MR2tCXskbNvV5XDedvdeO', NULL, 'pharmacist@gatundu.com', NULL, NULL, NULL, NULL, 1668374645, 1668883894, 1, NULL, NULL, NULL, NULL),
(1589, '::1', 'LAB TECH', '$2y$08$3nSnWzMBQi0bR.GupVLAWuVD3abErIvYfajExm5FT1yTsbUVNBX4S', NULL, 'labtech@gatundu.com', NULL, NULL, NULL, NULL, 1668374683, NULL, 1, NULL, NULL, NULL, NULL),
(1590, '::1', 'RECEPTIONIST', '$2y$08$qWXZVk0kPvyQqKsYJVKk..ICJ7Iygn1CiRoDeKRPemJeXQLzRh9vK', NULL, 'receptionist@gatundu.com', NULL, NULL, NULL, NULL, 1668374723, 1668886907, 1, NULL, NULL, NULL, NULL),
(1591, '::1', 'roy', '$2y$08$vr74QbY1iGa1tRX.B5Li8O4DDhL1RrFIVaf.Tbnk7Lsxd8lkglVCG', NULL, 'roy@gmail.com', NULL, NULL, NULL, NULL, 1668375208, NULL, 1, NULL, NULL, NULL, NULL),
(1592, '::1', 'HAWEE', '$2y$08$GV.T6Zs.KKLd/bQdCLUWW.zkN33ccVCzkFMNf1yMdNYo3rUxj5F52', NULL, 'hawee@gatundu.com', NULL, NULL, NULL, NULL, 1668876960, 1668877057, 1, NULL, NULL, NULL, NULL),
(1593, '::1', 'LOCH', '$2y$08$xbB7CXUg39hzUDowitRJpu0mp6jpfTYOMKvnmzJl471gwkQC0y6Mi', NULL, 'loch@gatundu.com', NULL, NULL, NULL, NULL, 1668877201, NULL, 1, NULL, NULL, NULL, NULL),
(1594, '::1', 'dan', '$2y$08$QP80LN77O2PCqmtloZwUiOvwLaWgeqvMYukdNP2GvfaEwLc4VGQF2', NULL, 'patient@gatundu.com', NULL, NULL, NULL, NULL, 1668877567, NULL, 1, NULL, NULL, NULL, NULL),
(1595, '::1', 'accountant', '$2y$08$xZuWsy8bjF5VvCQzSChtteXk.BnjY2jaVsYz4C1spXiBR4NAqdfJW', NULL, 'accountant@gatundu.com', NULL, NULL, NULL, NULL, 1668877781, 1668883836, 1, NULL, NULL, NULL, NULL),
(1596, '::1', 'Eunice', '$2y$08$aPLkuhqJHXVjKfLkg0sSAOAI3VcZIU4k8DAiiQ25ohA3NzeGMC/De', NULL, 'eunice@gatundu.com', NULL, NULL, NULL, NULL, 1669862900, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(711, 709, 4),
(5571, 1574, 4),
(5583, 1586, 5),
(5584, 1587, 6),
(5585, 1588, 7),
(5586, 1589, 8),
(5587, 1590, 10),
(5588, 1591, 5),
(5589, 1592, 4),
(5590, 1593, 4),
(5591, 1594, 5),
(5592, 1595, 3),
(5593, 1596, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vital_signs`
--

CREATE TABLE `vital_signs` (
  `id` int(100) NOT NULL,
  `patient_id` varchar(1000) DEFAULT NULL,
  `bmi_height` varchar(1000) DEFAULT NULL,
  `bmi_weight` varchar(1000) DEFAULT NULL,
  `respiratory_rate` varchar(1000) DEFAULT NULL,
  `oxygen_saturation` varchar(1000) DEFAULT NULL,
  `temperature` varchar(1000) DEFAULT NULL,
  `diastolic_blood_pressure` varchar(1000) DEFAULT NULL,
  `systolic_blood_pressure` varchar(1000) DEFAULT NULL,
  `add_date_time` varchar(1000) DEFAULT NULL,
  `heart_rate` varchar(1000) DEFAULT NULL,
  `hospital_id` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vital_signs`
--

INSERT INTO `vital_signs` (`id`, `patient_id`, `bmi_height`, `bmi_weight`, `respiratory_rate`, `oxygen_saturation`, `temperature`, `diastolic_blood_pressure`, `systolic_blood_pressure`, `add_date_time`, `heart_rate`, `hospital_id`) VALUES
(4, '13', '77', '47', '747', '464', '25', '46464', '65', '13-11-2022 12:18:32', '34', NULL),
(5, '14', '235', '656', '234', '4664', '47', '5657', '455', '14-11-2022 00:35:40', '656', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` int(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(1000) NOT NULL,
  `logo` varchar(1000) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `emergency` varchar(100) DEFAULT NULL,
  `support` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `block_1_text_under_title` varchar(500) DEFAULT NULL,
  `service_block__text_under_title` varchar(500) DEFAULT NULL,
  `doctor_block__text_under_title` varchar(500) DEFAULT NULL,
  `facebook_id` varchar(100) DEFAULT NULL,
  `twitter_id` varchar(100) DEFAULT NULL,
  `google_id` varchar(100) DEFAULT NULL,
  `youtube_id` varchar(100) DEFAULT NULL,
  `skype_id` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `twitter_username` varchar(1000) DEFAULT NULL,
  `appointment_title` varchar(1000) NOT NULL,
  `appointment_subtitle` varchar(1000) NOT NULL,
  `appointment_description` varchar(1000) NOT NULL,
  `appointment_img_url` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `title`, `description`, `logo`, `address`, `phone`, `emergency`, `support`, `email`, `currency`, `block_1_text_under_title`, `service_block__text_under_title`, `doctor_block__text_under_title`, `facebook_id`, `twitter_id`, `google_id`, `youtube_id`, `skype_id`, `x`, `twitter_username`, `appointment_title`, `appointment_subtitle`, `appointment_description`, `appointment_img_url`) VALUES
(1, 'GATUNDU LEVEL 5 HOSPITAL', 'GATUNDU LEVEL 5 HOSPITAL', 'uploads/download2.png', 'GATUNDU KIAMBU KENYA', '254796773177', '+254796773177', '+254796773177', 'info@gatunduhospital.com', 'Ksh', 'MEDICATION', 'GATUNDU LEVEL 5 HOSPITAL', 'TREATMENT', 'gatundulevel5', '', '', 'gatundulevel5', '', NULL, 'gatundulevel5', 'PATIENT APPOINTMENT', 'WELCOME TO GATUNDU LEVEL 5 HOSPITAL', 'CLICK HERE TO MAKE APPOINTMENT', 'uploads/download3.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alloted_bed`
--
ALTER TABLE `alloted_bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alloted_bed_previous`
--
ALTER TABLE `alloted_bed_previous`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autoemailshortcode`
--
ALTER TABLE `autoemailshortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autoemailtemplate`
--
ALTER TABLE `autoemailtemplate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autosmsshortcode`
--
ALTER TABLE `autosmsshortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autosmstemplate`
--
ALTER TABLE `autosmstemplate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bankb`
--
ALTER TABLE `bankb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_category`
--
ALTER TABLE `bed_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_checkout`
--
ALTER TABLE `bed_checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_medicine`
--
ALTER TABLE `bed_medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_service`
--
ALTER TABLE `bed_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_group`
--
ALTER TABLE `blood_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `container`
--
ALTER TABLE `container`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_progress`
--
ALTER TABLE `daily_progress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnostic_report`
--
ALTER TABLE `diagnostic_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_visit`
--
ALTER TABLE `doctor_visit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laboratorist`
--
ALTER TABLE `laboratorist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_category`
--
ALTER TABLE `lab_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manualemailshortcode`
--
ALTER TABLE `manualemailshortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manualsmsshortcode`
--
ALTER TABLE `manualsmsshortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_email_template`
--
ALTER TABLE `manual_email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_sms_template`
--
ALTER TABLE `manual_sms_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_history`
--
ALTER TABLE `medical_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_category`
--
ALTER TABLE `medicine_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_settings`
--
ALTER TABLE `meeting_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `odontogram`
--
ALTER TABLE `odontogram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ot_payment`
--
ALTER TABLE `ot_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_deposit`
--
ALTER TABLE `patient_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_material`
--
ALTER TABLE `patient_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentgateway`
--
ALTER TABLE `paymentgateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_category`
--
ALTER TABLE `payment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_expense`
--
ALTER TABLE `pharmacy_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_expense_category`
--
ALTER TABLE `pharmacy_expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_payment`
--
ALTER TABLE `pharmacy_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_payment_category`
--
ALTER TABLE `pharmacy_payment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pservice`
--
ALTER TABLE `pservice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_gallery`
--
ALTER TABLE `site_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_grid`
--
ALTER TABLE `site_grid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_map`
--
ALTER TABLE `site_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_review`
--
ALTER TABLE `site_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `space`
--
ALTER TABLE `space`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_schedule`
--
ALTER TABLE `time_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slot`
--
ALTER TABLE `time_slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_logs`
--
ALTER TABLE `transaction_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `vital_signs`
--
ALTER TABLE `vital_signs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `alloted_bed`
--
ALTER TABLE `alloted_bed`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `alloted_bed_previous`
--
ALTER TABLE `alloted_bed_previous`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `autoemailshortcode`
--
ALTER TABLE `autoemailshortcode`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `autoemailtemplate`
--
ALTER TABLE `autoemailtemplate`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `autosmsshortcode`
--
ALTER TABLE `autosmsshortcode`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `autosmstemplate`
--
ALTER TABLE `autosmstemplate`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bankb`
--
ALTER TABLE `bankb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `bed_category`
--
ALTER TABLE `bed_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bed_checkout`
--
ALTER TABLE `bed_checkout`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `bed_medicine`
--
ALTER TABLE `bed_medicine`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `bed_service`
--
ALTER TABLE `bed_service`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `blood_group`
--
ALTER TABLE `blood_group`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `container`
--
ALTER TABLE `container`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_progress`
--
ALTER TABLE `daily_progress`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `diagnostic_report`
--
ALTER TABLE `diagnostic_report`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `doctor_visit`
--
ALTER TABLE `doctor_visit`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `folder`
--
ALTER TABLE `folder`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `laboratorist`
--
ALTER TABLE `laboratorist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lab_category`
--
ALTER TABLE `lab_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `manualemailshortcode`
--
ALTER TABLE `manualemailshortcode`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `manualsmsshortcode`
--
ALTER TABLE `manualsmsshortcode`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `manual_email_template`
--
ALTER TABLE `manual_email_template`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `manual_sms_template`
--
ALTER TABLE `manual_sms_template`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `medical_history`
--
ALTER TABLE `medical_history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2884;

--
-- AUTO_INCREMENT for table `medicine_category`
--
ALTER TABLE `medicine_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=616;

--
-- AUTO_INCREMENT for table `meeting_settings`
--
ALTER TABLE `meeting_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `odontogram`
--
ALTER TABLE `odontogram`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ot_payment`
--
ALTER TABLE `ot_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `patient_deposit`
--
ALTER TABLE `patient_deposit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1813;

--
-- AUTO_INCREMENT for table `patient_material`
--
ALTER TABLE `patient_material`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `paymentgateway`
--
ALTER TABLE `paymentgateway`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_category`
--
ALTER TABLE `payment_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pharmacy_expense`
--
ALTER TABLE `pharmacy_expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `pharmacy_expense_category`
--
ALTER TABLE `pharmacy_expense_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `pharmacy_payment`
--
ALTER TABLE `pharmacy_payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pharmacy_payment_category`
--
ALTER TABLE `pharmacy_payment_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `pservice`
--
ALTER TABLE `pservice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_gallery`
--
ALTER TABLE `site_gallery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `site_grid`
--
ALTER TABLE `site_grid`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `site_map`
--
ALTER TABLE `site_map`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `site_review`
--
ALTER TABLE `site_review`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `space`
--
ALTER TABLE `space`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `time_schedule`
--
ALTER TABLE `time_schedule`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `time_slot`
--
ALTER TABLE `time_slot`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2673;

--
-- AUTO_INCREMENT for table `transaction_logs`
--
ALTER TABLE `transaction_logs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1597;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5594;

--
-- AUTO_INCREMENT for table `vital_signs`
--
ALTER TABLE `vital_signs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
