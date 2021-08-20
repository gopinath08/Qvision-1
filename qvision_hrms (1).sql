-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 24, 2021 at 04:47 AM
-- Server version: 5.7.26
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qvision_hrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `allowance_percentage_master`
--

DROP TABLE IF EXISTS `allowance_percentage_master`;
CREATE TABLE IF NOT EXISTS `allowance_percentage_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scale` varchar(50) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `basic_pay` varchar(50) DEFAULT NULL,
  `hra` varchar(50) DEFAULT NULL,
  `da` varchar(50) DEFAULT NULL,
  `cca` varchar(50) DEFAULT NULL,
  `Other_allow` varchar(100) DEFAULT NULL,
  `Bonus` varchar(100) DEFAULT NULL,
  `splallow` varchar(100) DEFAULT NULL,
  `ds` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allowance_percentage_master`
--

INSERT INTO `allowance_percentage_master` (`id`, `scale`, `from_date`, `basic_pay`, `hra`, `da`, `cca`, `Other_allow`, `Bonus`, `splallow`, `ds`) VALUES
(1, 'S1', '2018-05-18', '2500', '25', '50', '30', '10', '10', '10', '67'),
(2, 'S2', '2018-06-07', '2520', '25', '50', '30', '10', '10', '10', '56'),
(3, 'S1', '2018-05-18', '300', '25', '50', '30', '10', '10', '10', '657'),
(4, 'S3', '2018-12-10', '10000', '5100', '200', '100', '100', '56', '200', '567'),
(5, '78', '2021-01-01', '657', '356.5', '56', '56', '56', '56', '56', '56'),
(6, '78', '2021-01-01', '657', '356.5', '56', '56', '56', '56', '56', '56');

-- --------------------------------------------------------

--
-- Table structure for table `assessment_qn_master`
--

DROP TABLE IF EXISTS `assessment_qn_master`;
CREATE TABLE IF NOT EXISTS `assessment_qn_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qn_name` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `Questions` varchar(255) NOT NULL,
  `Option_A` varchar(255) NOT NULL,
  `Option_B` varchar(255) NOT NULL,
  `Option_C` varchar(255) NOT NULL,
  `Option_D` varchar(255) NOT NULL,
  `answer_key` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessment_qn_master`
--

INSERT INTO `assessment_qn_master` (`id`, `qn_name`, `section`, `Questions`, `Option_A`, `Option_B`, `Option_C`, `Option_D`, `answer_key`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, '1', '1', 'add a+b a=5 b=10', '10', '15', '25', '35', '2', 1, NULL, NULL, NULL, NULL),
(2, '1', '2', 'subtract 2 num a=50 b=20', '10', '25', '20', '30', '4', 1, NULL, NULL, NULL, NULL),
(3, '7', '4', 'The handshake that conveys confidence is', 'Limp', 'Firm', 'Loose', 'Double', '2', 1, NULL, NULL, NULL, NULL),
(4, '7', '4', 'Identify the subject and predicate in the given sentence â€“ â€˜The Sun was shining.â€™', 'The, the sun was shining', 'The Sun. was shining', 'The Sun was, shining', 'None of the above', '2', 1, NULL, NULL, NULL, NULL),
(5, '7', '4', 'Understanding a written text means', 'Reading comprehension', 'Extracting the required information', 'Understand writerâ€™s meaning', 'Both a & b', '4', 1, NULL, NULL, NULL, NULL),
(6, '7', '4', 'Communication is a ______________', 'One way process', 'Two way process', 'Three way process', 'Four way process', '2', 1, NULL, NULL, NULL, NULL),
(7, '7', '4', 'Communication saves time in', 'Internal communication', 'Interview', 'Oral communication', 'Schedule', '3', 1, NULL, NULL, NULL, NULL),
(8, '10', '4', 'The following is (are) non-verbal communication', 'Facial expression', 'Appearance', 'Posture', 'All of the above', '4', 1, NULL, NULL, NULL, NULL),
(9, '10', '4', 'A group of words which forms part of a sentence, and contains a subject and a predicate, is called â€“', 'Clause', 'Phrase', 'Gambit', 'Idioms', '1', 1, NULL, NULL, NULL, NULL),
(10, '10', '4', 'It is a Psycho-linguistic guessing game', 'Reading', 'Writing', 'Learning', 'Listening', '1', 1, NULL, NULL, NULL, NULL),
(11, '10', '4', 'Realizing the potential of the self is part of the', 'Communication development', 'Language development', 'Skill development', 'Personality development', '4', 1, NULL, NULL, NULL, NULL),
(12, '10', '4', 'The term communis derived from ______________ word', 'Greek', 'Latin', 'Chinese', 'English', '2', 1, NULL, NULL, NULL, NULL),
(13, '9', '4', 'Communication is the task of imparting ________', 'Training', 'Information', 'Knowledge', 'Message', '2', 1, NULL, NULL, NULL, NULL),
(14, '9', '4', 'â€˜Babur was a wise king who ruled India. Identify the proper noun.', 'King', 'India', 'Babur', 'Wise King', '2', 1, NULL, NULL, NULL, NULL),
(15, '9', '4', 'Biographies, Historical stories etc. are the example of â€“', 'Imaginative essays', 'Narrative essays', 'Descriptive essays', 'Expository essays', '2', 1, NULL, NULL, NULL, NULL),
(16, '9', '4', 'A group discussion of a real life situation with in a training environment is ______________', 'Discussion', 'Listening', 'Case study method', 'All of the above', '1', 1, NULL, NULL, NULL, NULL),
(17, '9', '4', 'The information the receiver gets is called ______________', 'Message', 'Output', 'Input', 'Source', '1', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ECODE` varchar(155) DEFAULT NULL,
  `Name` varchar(155) DEFAULT NULL,
  `Shift` varchar(155) DEFAULT NULL,
  `InTime` varchar(155) DEFAULT NULL,
  `OutTime` varchar(155) DEFAULT NULL,
  `Duration` varchar(155) DEFAULT NULL,
  `Status` int(155) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `ECODE`, `Name`, `Shift`, `InTime`, `OutTime`, `Duration`, `Status`, `created_by`, `created_on`) VALUES
(1, 'E00015', 'jai', '', '9', '6', '9', 1, 1, '2021-03-24');

-- --------------------------------------------------------

--
-- Table structure for table `calls_master`
--

DROP TABLE IF EXISTS `calls_master`;
CREATE TABLE IF NOT EXISTS `calls_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_by` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calls_master`
--

INSERT INTO `calls_master` (`id`, `name`, `status`, `created_by`) VALUES
(1, 'Incoming', 1, '2021-04-01 04:48:00'),
(2, 'Outgoing', 1, '2021-04-01 04:48:00'),
(3, 'Direct', 1, '2021-04-01 04:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `candicate_results`
--

DROP TABLE IF EXISTS `candicate_results`;
CREATE TABLE IF NOT EXISTS `candicate_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qn_name_id` int(11) DEFAULT NULL,
  `ueser_id` int(11) NOT NULL,
  `question` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candicate_results`
--

INSERT INTO `candicate_results` (`id`, `qn_name_id`, `ueser_id`, `question`, `answer`, `Status`, `created`) VALUES
(1, 1, 18, 1, 2, 1, '2021-03-29 09:04:40'),
(2, 1, 18, 2, 4, 1, '2021-03-29 09:04:44'),
(3, 1, 19, 1, 1, 1, '2021-03-29 09:04:49'),
(4, 1, 19, 2, 4, 1, '2021-03-29 09:04:52'),
(5, 1, 18, 1, 2, 1, '2021-03-29 09:04:56'),
(6, 1, 18, 2, 3, 1, '2021-03-29 09:04:59');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_form_details`
--

DROP TABLE IF EXISTS `candidate_form_details`;
CREATE TABLE IF NOT EXISTS `candidate_form_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) DEFAULT NULL,
  `round_id` int(11) DEFAULT NULL,
  `qn_name_id` int(11) DEFAULT NULL,
  `company_name` varchar(150) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `department` varchar(25) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `paddress` varchar(250) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `alternative_phone` int(11) DEFAULT NULL,
  `mail` varchar(150) DEFAULT NULL,
  `adharnumber` varchar(100) DEFAULT NULL,
  `pannumber` varchar(100) DEFAULT NULL,
  `voternumber` varchar(100) DEFAULT NULL,
  `educationalDetails` varchar(150) DEFAULT NULL,
  `EmployeeStatus` varchar(100) DEFAULT NULL,
  `year_of_pass` varchar(10) DEFAULT NULL,
  `companyname` varchar(250) DEFAULT NULL,
  `no_of_year` varchar(10) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_form_details`
--

INSERT INTO `candidate_form_details` (`id`, `resource_id`, `round_id`, `qn_name_id`, `company_name`, `position`, `department`, `first_name`, `last_name`, `father_name`, `gender`, `dob`, `address`, `paddress`, `phone`, `alternative_phone`, `mail`, `adharnumber`, `pannumber`, `voternumber`, `educationalDetails`, `EmployeeStatus`, `year_of_pass`, `companyname`, `no_of_year`, `resume`, `status`, `created_by`, `created_on`) VALUES
(1, NULL, NULL, NULL, NULL, '35', '1', 'DHANAMANI MADHAVAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, '35', '1', 'GIRISH MADHAVAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, '35', '1', 'RESHMA MADHAVAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, '2', '2', 'KARTHIKEYAN R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, '1', '2', 'RAMAKRISHNAN.M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, '44', '4', 'KALAIMANI.R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, '43', '4', 'SURIYA PRAKASH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, '55', '4', 'NARAYANAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, '50', '7', 'AKSHAY S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, '49', '7', 'CHANDHIRAMOHAN A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, '48', '7', 'KALAIMANI P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, '53', '7', 'KALAIMATHI P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, '45', '7', 'KALYAN KUMAR S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL, '50', '7', 'KARTHICK S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL, '50', '7', 'MANIKANDAN I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, '54', '7', 'RAJKUMAR T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL, '46', '7', 'SATHISH KUMAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL, '51', '7', 'SHANMUGANATHAN R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL, '52', '7', 'SIVAKUMAR.R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, '47', '7', 'VENKATESAN.S.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, '42', '5', 'ARUN KK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, NULL, '39', '5', 'BABU K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, NULL, '41', '5', 'CHRISTY MATHEWS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, '37', '5', 'JOHN AVINASH RAE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, NULL, '40', '5', 'MUTHUKUMAR V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL, '38', '5', 'SELVARAJ.P.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, '36', '5', 'VAIDYANATHAN CR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, NULL, '34', '6', 'MYTHILY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, NULL, NULL, NULL, '33', '6', 'SAKTHIVEL M K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, NULL, NULL, NULL, '30', '3', 'yuga prasanth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, NULL, NULL, NULL, '30', '3', 'Dilli raja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, NULL, NULL, NULL, '30', '3', 'ABDUL WAHID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, NULL, NULL, NULL, '30', '3', 'RAHUL SURENDAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, NULL, NULL, NULL, NULL, '30', '3', 'BHARATHI BASKARAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, NULL, NULL, NULL, NULL, '26', '3', 'SUBRAMANIAN S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, NULL, '6', '3', 'MARIMUTHU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, NULL, '21', '3', 'Parthiban k', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, NULL, NULL, NULL, NULL, '21', '3', 'Santhosh PC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, NULL, NULL, NULL, '21', '3', 'Sankara Subramanian P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, NULL, '23', '3', 'Pothiraj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, NULL, NULL, NULL, '32', '3', 'Venkat K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, NULL, NULL, NULL, NULL, '32', '3', 'Vinothraj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, NULL, NULL, NULL, NULL, '28', '3', 'HARISH E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, NULL, NULL, NULL, NULL, '32', '3', 'VELMURUGAN S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, NULL, NULL, NULL, NULL, '19', '3', 'PRAPANCHAN A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, NULL, NULL, NULL, '10', '3', 'CHANDHIRAMOHAN A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, NULL, NULL, NULL, NULL, '24', '3', 'Saravanan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, NULL, NULL, NULL, NULL, '22', '3', 'SIVAKUMAR R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, NULL, NULL, NULL, NULL, '27', '3', 'Thenmozhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, NULL, NULL, NULL, NULL, '32', '3', 'VENKATESAN S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, NULL, NULL, NULL, NULL, '32', '3', 'Manikandan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, NULL, NULL, NULL, '5', '3', 'Sam david', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, NULL, NULL, NULL, NULL, '3', '3', 'Praveen VC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, NULL, NULL, NULL, NULL, '30', '3', 'GANGATHARAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, NULL, NULL, NULL, NULL, '9', '3', 'JAIDEEP  JAGDISHCHANDRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, NULL, NULL, NULL, '30', '3', 'MANIMARAN P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, NULL, NULL, NULL, '30', '3', 'NIJANTHAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, NULL, NULL, NULL, '30', '3', 'RAJAPANDIYAN M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, NULL, NULL, NULL, '30', '3', 'SARAVANAKUMAR S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, NULL, NULL, NULL, NULL, '30', '3', 'cHANDHIRAMOHAN A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, NULL, NULL, NULL, '30', '3', 'VISWANATHAN S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, NULL, NULL, NULL, NULL, '30', '3', 'Sathish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, NULL, NULL, NULL, NULL, '9', '3', 'Balaji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, NULL, NULL, NULL, NULL, '19', '3', 'MANIKANDAN K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, NULL, NULL, NULL, NULL, '29', '3', 'SHYAM SUNDER REDDY K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, NULL, NULL, NULL, NULL, '19', '3', 'POOMALAI R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, NULL, NULL, NULL, NULL, '19', '3', 'MUTHU RAJESH KANNAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, NULL, NULL, NULL, NULL, '20', '3', 'RAMKUMAR U', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, NULL, NULL, NULL, NULL, '19', '3', 'NAGESHWARA RAO CHALLA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, NULL, NULL, NULL, NULL, '3', '3', 'VALISETTAI YASWANTH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, NULL, NULL, NULL, NULL, '25', '3', 'SADDAMHUSEIN MULLA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, NULL, NULL, NULL, NULL, '19', '3', 'PAUL DAVID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, NULL, NULL, NULL, NULL, '3', '3', 'Ghouse Ahmed R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, NULL, NULL, NULL, NULL, '3', '3', 'INDHUJA A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, NULL, NULL, NULL, NULL, '3', '3', 'YOKESH DHAMODHARAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, NULL, NULL, NULL, NULL, '3', '3', 'BALA BHARATHI K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, NULL, NULL, NULL, NULL, '3', '3', 'DENITTA CHELIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, NULL, NULL, NULL, NULL, '3', '3', 'MANIBALAN S N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, NULL, NULL, NULL, NULL, '30', '3', 'LOGANATHAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, NULL, NULL, NULL, NULL, '19', '3', 'SANTHOSH KUMAR P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, NULL, NULL, NULL, NULL, '24', '3', 'Saravanan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, NULL, NULL, NULL, NULL, '5', '3', 'KARTHIKEYAN V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, NULL, NULL, NULL, NULL, '5', '3', 'DEEPAK KUMAR ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, NULL, NULL, NULL, NULL, '5', '3', 'KARTHICK KUMAR K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, NULL, NULL, NULL, NULL, '4', '3', 'RAMESH S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, NULL, NULL, NULL, NULL, '19', '3', 'Natraj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, NULL, NULL, NULL, NULL, '31', '3', 'IMRAN MOHAMED KHAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, NULL, NULL, NULL, NULL, '5', '3', 'MANIKANDAN S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, NULL, NULL, NULL, NULL, '5', '3', 'PAZHANI M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, NULL, NULL, NULL, NULL, '19', '3', 'MURALI S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, NULL, NULL, NULL, NULL, '5', '3', 'VENKADA SUBRAMANIYAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, NULL, NULL, NULL, NULL, '8', '3', 'BISWAJIT SAHOO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, NULL, NULL, NULL, NULL, '7', '3', 'MANGESH HANMANT BHOSALE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, NULL, NULL, NULL, NULL, '8', '3', 'PARAMASIVAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, NULL, NULL, NULL, NULL, '8', '3', 'RUPESH CHANDRAKANT SHENDGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, NULL, NULL, NULL, NULL, '8', '3', 'Harichanda Prasad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, NULL, NULL, NULL, NULL, '5', '3', 'SUNDARAM N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, NULL, NULL, NULL, NULL, '5', '3', 'Ajay Kumar Nayani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, NULL, NULL, NULL, NULL, '5', '3', 'Sellisathish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_master`
--

DROP TABLE IF EXISTS `client_master`;
CREATE TABLE IF NOT EXISTS `client_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `acc_manager` int(11) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `org_name` varchar(255) NOT NULL,
  `org_type` int(11) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `mobile_no1` text NOT NULL,
  `mobile_no2` text NOT NULL,
  `land_line_no` text NOT NULL,
  `email_id1` varchar(255) NOT NULL,
  `email_id2` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `town_city` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `gst_no` varchar(55) NOT NULL,
  `website` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_master`
--

INSERT INTO `client_master` (`id`, `company_id`, `department_id`, `employee_id`, `acc_manager`, `client_name`, `org_name`, `org_type`, `designation`, `mobile_no1`, `mobile_no2`, `land_line_no`, `email_id1`, `email_id2`, `address1`, `address2`, `area`, `town_city`, `pincode`, `district`, `state`, `country`, `gst_no`, `website`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 3, 6, 0, 'praba1', 'hp', 1, 'sales1123', '78945612311', '1123', '224456231234', 'uma1@gmail.com', 'uma1@gmail.com', 'no:1234', 'no:1234', 'vandalur1', 'chennai1', '6032021', 'kanchee1', 'tamil nadu123', 'india123', '1234567891', '', 1, 3, '2021-03-30 13:44:45', 3, NULL),
(5, 1, 2, 12, 0, 'uma', 'hcl', 2, 'sales', '7894561231', '', '22445623', 'uma@gmail.com', '', 'no:123', 'kovil street', 'vandalur', 'chennai', '603202', 'kanchee', 'tamil nadu', 'india', '123', '', 1, 3, '2021-03-30 15:42:07', 0, NULL),
(6, 1, 3, 6, 0, 'laxmi', 'TCS', 4, 'sales', '7894561231', '', '22445623', 'uma1@gmail.com', 'uma@gmail.com', 'no:123', 'kovil street', 'vandalur', 'chennai', '603202', 'kanchee', 'tamil nadu', 'india1', '111111111111111', '', 1, 3, '2021-04-01 13:45:59', NULL, NULL),
(7, 2, 2, 2, 0, 'arun', 'Wibro', 2, 'sales1123', '78945612311', '1123', '224456231234', 'uma1@gmail.com', 'uma1@gmail.com', 'no:123', 'no:123', 'vandalur1', 'chennai1', '603202', 'kanchee1', 'tamil nadu123', 'india123', '123456789112412', 'ffgdgsfs', 1, 3, '2021-04-02 10:14:02', 3, '2021-04-05 03:58:02'),
(8, NULL, NULL, NULL, 0, 'uma', 'SO', NULL, 'devloper', '123456789', '78964123', '44225566', 'uma@gmail.com', '', 'no street', 'nagar', 'vandalur', 'changeapattu', '602102', 'kan', 'tm', 'india', 'GST0123', 'blubase', 1, NULL, NULL, NULL, NULL),
(9, 1, 1, 1, 26, 'ABCDE', 'XYZ COMPANY', 1, 'sales', '1234567890', '', '24685202', 'abcde@gmail.com', '', 'no:123', 'no:123', 'PURASAWALKAM', 'CHENNAI', '600083', 'KACHEEPPURAM', 'TAMIL NADU', 'INDIA', '', 'abcde.in', 1, 1, '2021-04-20 14:10:15', 1, '2021-04-20 08:56:22');

-- --------------------------------------------------------

--
-- Table structure for table `company_master`
--

DROP TABLE IF EXISTS `company_master`;
CREATE TABLE IF NOT EXISTS `company_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(100) DEFAULT NULL,
  `address` text,
  `phone_no` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `gst_no` varchar(255) DEFAULT NULL,
  `status` int(5) DEFAULT '1',
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_master`
--

INSERT INTO `company_master` (`id`, `companyname`, `address`, `phone_no`, `email_id`, `gst_no`, `status`, `created_on`) VALUES
(1, 'Bluebase software Services Pvt Ltd', NULL, NULL, NULL, NULL, 1, '2021-04-13 08:55:37'),
(2, 'Quadsel Systems Private Limited', 'New No:118,Anna Salai,Manikkam Lane,Guindy,Chennai,Tamil-Nadu 600032', '4428205767', 'helpdesk@quadsel.in', '33AAACQ0129P1ZG', 1, '2021-04-13 08:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `cost_sheet_entry`
--

DROP TABLE IF EXISTS `cost_sheet_entry`;
CREATE TABLE IF NOT EXISTS `cost_sheet_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cost_sheet_no` varchar(250) DEFAULT NULL,
  `specification` varchar(50000) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `qty` int(15) NOT NULL,
  `unit_rate` int(15) NOT NULL,
  `log_per` int(11) NOT NULL,
  `log_amt` decimal(10,2) NOT NULL,
  `eng_per` int(11) NOT NULL,
  `eng_amt` decimal(10,2) NOT NULL,
  `log_eng_amt` decimal(10,2) NOT NULL,
  `com_per` int(11) NOT NULL,
  `com_amt` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `total_amt` decimal(10,2) DEFAULT NULL,
  `grand_amt` decimal(10,2) NOT NULL,
  `gst_per` int(11) DEFAULT NULL,
  `enquiry_id` int(22) DEFAULT NULL,
  `company_id` int(22) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `quote_type` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `candid_id` int(11) NOT NULL,
  `costsheet_date` date DEFAULT NULL,
  `status` int(11) NOT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `old_quote_no` varchar(250) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cost_sheet_entry`
--

INSERT INTO `cost_sheet_entry` (`id`, `cost_sheet_no`, `specification`, `unit`, `qty`, `unit_rate`, `log_per`, `log_amt`, `eng_per`, `eng_amt`, `log_eng_amt`, `com_per`, `com_amt`, `total_price`, `total_amt`, `grand_amt`, `gst_per`, `enquiry_id`, `company_id`, `client_id`, `quote_type`, `business_id`, `vendor_id`, `candid_id`, `costsheet_date`, `status`, `remark`, `old_quote_no`, `approved_by`, `flag`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(172, 'QSPLSE00003/21-22/A', 'xyz', 'nm', 5, 50000, 10, '175000.00', 15, '262500.00', '2187500.00', 20, '437500.00', '250000.00', '1750000.00', '2625000.00', 28, 21, NULL, 9, 1, 2, NULL, 21, '2021-05-18', 3, NULL, NULL, 2, 0, 25, '2021-05-18 10:31:10', 2, '2021-06-19 06:13:32'),
(173, 'QSPLSE00003/21-22/A', 'abc', 'nm', 3, 500000, 10, '175000.00', 15, '262500.00', '2187500.00', 20, '437500.00', '1500000.00', '1750000.00', '2625000.00', 28, 21, NULL, 9, 1, 2, NULL, 21, '2021-05-18', 3, NULL, NULL, 2, 0, 25, '2021-05-18 10:31:10', 2, '2021-06-19 06:13:32'),
(166, 'QSPLSE00002/21-22/A', 'test1', 'nm', 5, 50, 10, '25.60', 15, '38.40', '320.00', 20, '64.00', '250.00', '256.00', '384.00', 28, 21, NULL, 9, 1, 2, NULL, 3, '2021-05-18', 3, NULL, NULL, 27, 4, 25, '2021-05-18 07:38:54', 27, '2021-05-18 09:48:21'),
(167, 'QSPLSE00002/21-22/A', 'test2', 'nm', 1, 6, 10, '25.60', 15, '38.40', '320.00', 20, '64.00', '6.00', '256.00', '384.00', 28, 21, NULL, 9, 1, 2, NULL, 3, '2021-05-18', 3, NULL, NULL, 27, 4, 25, '2021-05-18 07:38:54', 27, '2021-05-18 09:48:21'),
(177, 'QSPLSE00004/21-22/A', 'service', 'nm', 30, 1000, 10, '13000.00', 15, '19500.00', '162500.00', 20, '32500.00', '30000.00', '130000.00', '195000.00', 18, 4, NULL, 7, 1, 2, NULL, 26, '2021-06-14', 4, NULL, NULL, 2, 0, 26, '2021-06-14 09:25:15', 26, '2021-06-14 09:29:57'),
(176, 'QSPLSE00004/21-22/A', 'computer', 'nm', 20, 5000, 10, '13000.00', 15, '19500.00', '162500.00', 20, '32500.00', '100000.00', '130000.00', '195000.00', 18, 4, NULL, 7, 1, 2, NULL, 26, '2021-06-14', 4, NULL, NULL, 2, 0, 26, '2021-06-14 09:25:15', 26, '2021-06-14 09:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `ctc_approval_table`
--

DROP TABLE IF EXISTS `ctc_approval_table`;
CREATE TABLE IF NOT EXISTS `ctc_approval_table` (
  `id` int(150) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) NOT NULL,
  `candidate_name` varchar(255) NOT NULL,
  `present_ctc` varchar(255) NOT NULL,
  `expected_ctc` varchar(255) NOT NULL,
  `ctc_offered` varchar(255) NOT NULL,
  `offered_take_home` varchar(255) NOT NULL,
  `offered_designation` varchar(255) NOT NULL,
  `dept_head_approval` varchar(255) NOT NULL,
  `dept_director_approval` varchar(255) NOT NULL,
  `CUG` varchar(255) NOT NULL,
  `mail_id` varchar(255) NOT NULL,
  `system` varchar(255) NOT NULL,
  `seating` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ctc_approval_table`
--

INSERT INTO `ctc_approval_table` (`id`, `candidate_id`, `candidate_name`, `present_ctc`, `expected_ctc`, `ctc_offered`, `offered_take_home`, `offered_designation`, `dept_head_approval`, `dept_director_approval`, `CUG`, `mail_id`, `system`, `seating`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 0, 'Bala', '1200', '1200', '1400', '1800', 'php', 'ash', 'lax', '7458965874', 'bala@bluebase.in', 'No', '100', 1, 1, '2020-11-04 07:24:28', 1, '2020-11-04 01:54:28'),
(2, 0, '3', '4000000.00', '7000000.00', '12000', '1000', 'web', 'yes', 'yes', '', 'maial.@gmail.com', '101', '10', 10, 1, '2020-11-24 02:32:23', NULL, NULL),
(3, 0, '3', '4000000.00', '7000000.00', '12000', '1000', 'web', 'yes', 'yes', '9585478596', 'maial.@gmail.com', '101', '10', 10, 1, '2020-11-24 02:33:55', NULL, NULL),
(4, 0, 'Gopinath', '4000000.00', '7000000.00', '120000', '220000', 'web', 'yes', 'yes', '8547854785', 'bala@gmail.com', 'yes', '10', 10, 1, '2020-11-24 02:35:02', NULL, NULL),
(5, 0, 'aswini', '654665', '546454', '546+54', '56+4', 'IT', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 1, 1, '2021-03-02 01:50:18', NULL, NULL),
(6, 0, 'aswini', '555555', '55555', '55555', '55555', 'IT', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 1, 1, '2021-03-02 01:51:16', NULL, NULL),
(7, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '2021-03-02 01:53:54', NULL, NULL),
(8, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '2021-03-02 01:58:18', NULL, NULL),
(9, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '2021-03-02 02:06:36', NULL, NULL),
(10, 0, 'aswini', '12121223', '132464.2', '877897121', '212321321', 'sdgfdh', 'ok', 'ok', 'ok', 'abc@gmail.com', 'gdfgf', 'dgdh', 1, 1, '2021-03-02 02:16:21', NULL, NULL),
(11, 0, 'aswini', '52198', '15656', '15646', '1221213456', 'SOFTWARE', 'ok', 'ok', 'ok', 'abc@gmail.com', 'ok', 'ok', 1, 1, '2021-03-02 02:16:27', NULL, NULL),
(12, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '2021-03-02 02:16:32', NULL, NULL),
(13, 0, 'aswini', '147852369', '369852147', '456321789', '65562565', 'software', 'ok', 'ok', 'ok', 'abc@gmail.com', 'ok', 'ok', 1, 1, '2021-03-02 02:16:37', NULL, NULL),
(14, 0, 'aswini', '654665', '546454', '546+54', '56+4', 'IT', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 1, 1, '2021-03-02 02:16:41', NULL, NULL),
(15, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '2021-03-02 02:17:04', NULL, NULL),
(16, 0, 'aswini', '123456', '123456', '123456', '123456', 'IT', 'OK', 'OK', 'OK', 'abc@gmail.com', 'OK', 'OK', 1, 1, '2021-03-02 05:31:46', NULL, NULL),
(17, 0, 'Bala', '12345', '12345', '12345', '12000', 'IT', 'OK', 'OK', '123', 'abc@gmail.com', 'OK', 'OK', 1, 1, '2021-03-02 06:04:55', NULL, NULL),
(18, 0, 'Bala', '15000', '15000', '15000', '12500', 'IT', 'OK', 'OK', '1234', 'abc@gmail.com', 'OK', 'OK', 1, 1, '2021-03-02 06:11:54', NULL, NULL),
(19, 0, 'Bala', '15000', '15000', '15000', '12500', 'IT', 'OK', 'OK', '1234', 'abc@gmail.com', 'OK', 'OK', 1, 1, '2021-03-02 06:12:00', NULL, NULL),
(20, 0, 'Bala', '15000', '15000', '15000', '12500', 'IT', 'OK', 'OK', '1234', 'abc@gmail.com', 'OK', 'OK', 1, 1, '2021-03-02 06:39:11', NULL, NULL),
(21, 20, 'laxmipriya', '20000.00', '20000.00', '20000', '20000', 'erwe', 'dsf', 'cvx', 'fdfs', 'cv', 'xcv', 'fg', 16, 1, '2021-03-17 05:24:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_mapping`
--

DROP TABLE IF EXISTS `department_mapping`;
CREATE TABLE IF NOT EXISTS `department_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(250) NOT NULL,
  `department_id` int(10) NOT NULL,
  `department_head` int(8) NOT NULL,
  `status` int(10) NOT NULL,
  `created_by` int(10) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department_mapping`
--

INSERT INTO `department_mapping` (`id`, `company_name`, `department_id`, `department_head`, `status`, `created_by`, `created_on`) VALUES
(1, '6', 8, 7, 1, 2, '2020-11-27'),
(2, '', 1, 7, 1, 2, '2020-11-27'),
(3, '1', 5, 7, 1, 2, '2021-02-16'),
(4, '6', 2, 7, 1, 2, '2021-02-22'),
(5, '2', 5, 6, 1, 2, '2021-03-15'),
(6, '1', 5, 6, 1, 2, '2021-03-17'),
(7, '1', 5, 7, 1, 2, '2021-03-23'),
(8, '1', 2, 56, 1, 2, '2021-03-26'),
(9, '1', 4, 56, 1, 2, '2021-03-26'),
(10, '1', 2, 43, 1, 2, '2021-03-26'),
(11, '1', 1, 46, 1, 2, '2021-03-26'),
(12, '1', 2, 46, 1, 2, '2021-03-26'),
(13, '1', 1, 47, 1, 2, '2021-03-26'),
(14, '1', 2, 43, 1, 2, '2021-03-26'),
(15, '1', 2, 43, 1, 2, '2021-03-26'),
(16, '1', 2, 46, 1, 2, '2021-03-26'),
(17, '1', 1, 46, 1, 2, '2021-03-26'),
(18, '1', 2, 46, 1, 2, '2021-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `designation_master`
--

DROP TABLE IF EXISTS `designation_master`;
CREATE TABLE IF NOT EXISTS `designation_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dep_id` int(11) NOT NULL,
  `designation_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation_master`
--

INSERT INTO `designation_master` (`id`, `dep_id`, `designation_name`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 2, 'SENIOR MANAGER - COMMERCIAL', 1, 2, '2021-03-31', 2, '2021-03-31'),
(2, 2, 'SRMANAGER - ACCOUNTS', 1, 2, '2021-03-31', 2, '2021-03-31'),
(3, 3, 'CUSTOMER SUPPORT ENGINEER', 1, 2, '2021-03-31', 2, '2021-03-31'),
(4, 3, 'DESKTOP ENGINEER', 1, 2, '2021-03-31', 2, '2021-03-31'),
(5, 3, 'DESKTOP SUPPORT ENGINEER', 1, 2, '2021-03-31', 2, '2021-03-31'),
(6, 3, 'JUNIOR TECHNOLOGY SPECIALIST', 1, 2, '2021-03-31', 2, '2021-03-31'),
(7, 3, 'L1 DESKTOP ENGINEER', 1, 2, '2021-03-31', 2, '2021-03-31'),
(8, 3, 'L1 DESKTOP SUPPORT ENGINEER', 1, 2, '2021-03-31', 2, '2021-03-31'),
(9, 3, 'L2 DESKTOP SUPPORT ENGINEER', 1, 2, '2021-03-31', 2, '2021-03-31'),
(10, 3, 'MANAGER -TECHNICAL', 1, 2, '2021-03-31', 2, '2021-03-31'),
(11, 3, 'Website Designer', 1, 2, '2021-03-31', 2, '2021-03-31'),
(12, 4, 'SEO Analyst', 1, 2, '2021-03-31', 2, '2021-03-31'),
(13, 3, 'Graphic Designer', 1, 2, '2021-03-31', 2, '2021-03-31'),
(14, 5, 'Marketing', 1, 2, '2021-03-31', 2, '2021-03-31'),
(15, 6, 'HR & Admin', 1, 2, '2021-03-31', 2, '2021-03-31'),
(16, 6, 'Recruiter', 1, 2, '2021-03-31', 2, '2021-03-31'),
(17, 7, 'Finance - Manager', 1, 2, '2021-03-31', 2, '2021-03-31'),
(18, 3, 'MANAGER -TECHNICAL', 1, 2, '2021-04-07', 2, '2021-04-07'),
(19, 3, 'NETWORK ENGINEER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(20, 3, 'PROGRAM MANAGER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(21, 3, 'SENIOR NETWORK ENGINEER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(22, 3, 'SENIOR SERVICE ENGINEER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(23, 3, 'SENIOR SOFTWARE ENGINEER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(24, 3, 'SENIOR TECHNOLOGY SPECIALIST', 1, 2, '2021-04-07', 2, '2021-04-07'),
(25, 3, 'SERVER ENGINEER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(26, 3, 'SERVICE ENGINEER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(27, 3, 'SOFTWARE DEVELOPER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(28, 3, 'SOFTWARE ENGINEER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(29, 3, 'SQL SERVER ENGINEER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(30, 3, 'SYSTEM ENGINEER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(31, 3, 'TEAM LEADER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(32, 3, 'TECHNOLOGY SPECIALIST', 1, 2, '2021-04-07', 2, '2021-04-07'),
(33, 6, 'HR EXECUTIVE', 1, 2, '2021-04-07', 2, '2021-04-07'),
(34, 6, 'SENIOR HR RECRUITER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(35, 1, 'DIRECTOR', 1, 2, '2021-04-07', 2, '2021-04-07'),
(36, 5, 'BUSINESS DEVELOPMENT MANAGER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(37, 5, 'CUSTOMER RELATIONSHIP MANAGER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(38, 5, 'GENERAL MANAGER - MARKETING', 1, 2, '2021-04-07', 2, '2021-04-07'),
(39, 5, 'MARKETING COORDINATOR', 1, 2, '2021-04-07', 2, '2021-04-07'),
(40, 5, 'SENIOR BUSINESS DEVELOPMENT MANAGER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(41, 5, 'SENIOR MANAGER-MARKETING', 1, 2, '2021-04-07', 2, '2021-04-07'),
(42, 5, 'VP-CLIENT ENGAGEMENT', 1, 2, '2021-04-07', 2, '2021-04-07'),
(43, 4, 'PURCHASE EXECUTIVE', 1, 2, '2021-04-07', 2, '2021-04-07'),
(44, 4, 'STORES EXECUTIVE', 1, 2, '2021-04-07', 2, '2021-04-07'),
(45, 7, 'CONSULTANT', 1, 2, '2021-04-07', 2, '2021-04-07'),
(46, 7, 'CUSTOMER SUPPORT ENGINEER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(47, 7, 'GM TECH. SUPPORT', 1, 2, '2021-04-07', 2, '2021-04-07'),
(48, 7, 'LINUX ENGINEER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(49, 7, 'MANAGER -TECHNICAL', 1, 2, '2021-04-07', 2, '2021-04-07'),
(50, 7, 'NETWORK ENGINEER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(51, 7, 'SENIOR SERVICE DELIVERY MANAGER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(52, 7, 'SENIOR SERVICE ENGINEER', 1, 2, '2021-04-07', 2, '2021-04-07'),
(53, 7, 'SERVICE COORDINATOR', 1, 2, '2021-04-07', 2, '2021-04-07'),
(54, 7, 'Trainee-Desktop support engineer', 1, 2, '2021-04-07', 2, '2021-04-07'),
(55, 4, 'DRIVER', 1, 2, '2021-04-07', 2, '2021-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `division_master`
--

DROP TABLE IF EXISTS `division_master`;
CREATE TABLE IF NOT EXISTS `division_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dep_id` int(255) NOT NULL,
  `div_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `division_master`
--

INSERT INTO `division_master` (`id`, `dep_id`, `div_name`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 'Management', 1, 2, '2021-03-30', 2, '2021-03-30'),
(2, 2, 'Software', 1, 2, '2021-03-30', 2, '2021-03-30'),
(3, 2, 'UI/UX', 1, 2, '2021-03-30', 2, '2021-03-30'),
(4, 2, 'RPA', 1, 2, '2021-03-30', 2, '2021-03-30'),
(5, 2, 'Mobile App', 1, 2, '2021-03-30', 2, '2021-03-30'),
(6, 3, 'Website', 1, 2, '2021-03-30', 2, '2021-03-30'),
(7, 4, 'Analyst', 1, 2, '2021-03-30', 2, '2021-03-30'),
(8, 3, 'Graphic Designing', 1, 2, '2021-03-30', 2, '2021-03-30'),
(9, 5, 'Marketing', 1, 2, '2021-03-30', 2, '2021-03-30'),
(10, 6, 'HR', 1, 2, '2021-03-30', 2, '2021-03-30'),
(11, 7, 'Finance', 1, 2, '2021-03-30', 2, '2021-03-30');

-- --------------------------------------------------------

--
-- Table structure for table `doller_vendor_mastor`
--

DROP TABLE IF EXISTS `doller_vendor_mastor`;
CREATE TABLE IF NOT EXISTS `doller_vendor_mastor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(255) NOT NULL,
  `vendor_type` int(11) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `town_city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `swift_code` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `mail_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doller_vendor_mastor`
--

INSERT INTO `doller_vendor_mastor` (`id`, `vendor_name`, `vendor_type`, `address1`, `address2`, `area`, `town_city`, `state`, `district`, `country`, `pincode`, `account_name`, `account_no`, `swift_code`, `ifsc_code`, `mail_id`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(3, 'Quadsel System Pvt Ltd', 1, 'PURASAWALKAM', 'PB NO 48414', 'PURASAWALKAM', 'CHENNAI', 'KACHEEPPURAM', 'TAMIL NADU', 'INDIA', 600007, 'UCO BANK', '01000500001217', '0', 'UCBA0000100', 'UCO', 1, 3, '2021-04-05 10:09:05', 3, '2021-04-09 04:45:46'),
(4, 'Quadsel System Pvt Ltd', 1, '51 OLD 12', 'ASHOK MANASAROVER,1ST AVENUE,100 FEET ROAD', 'ASHOK NAGAR', 'CHENNAI', 'TAMIL NADU', 'KACHEEPPURAM', 'INDIA', 600083, 'CITY UNION BANK', '130109000092771', '0', 'CIUB0000130', 'ciub@gmail.com', 1, 3, '2021-04-05 10:20:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_assessment_result`
--

DROP TABLE IF EXISTS `employee_assessment_result`;
CREATE TABLE IF NOT EXISTS `employee_assessment_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `qn_name_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_assessment_result`
--

INSERT INTO `employee_assessment_result` (`id`, `emp_id`, `qn_name_id`, `question`, `answer`, `status`, `created_on`) VALUES
(1, 1, 1, '1', '3', 0, '2021-03-23'),
(2, 1, 1, '2', '3', 0, '2021-03-23'),
(9, 6, 1, '2', '4', 0, '2021-03-29'),
(8, 6, 1, '1', '2', 0, '2021-03-29'),
(10, 11, 1, '1', '2', 0, '2021-05-01'),
(11, 11, 1, '2', '4', 0, '2021-05-01'),
(12, 10, 1, '1', '4', 0, '2021-05-01'),
(13, 10, 1, '2', '3', 0, '2021-05-01'),
(14, 10, 1, '1', '4', 0, '2021-05-01'),
(15, 10, 1, '2', '3', 0, '2021-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendance`
--

DROP TABLE IF EXISTS `employee_attendance`;
CREATE TABLE IF NOT EXISTS `employee_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeCode` int(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `LogTime` varchar(255) DEFAULT NULL,
  `Direction` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_attendance`
--

INSERT INTO `employee_attendance` (`id`, `EmployeeCode`, `Date`, `LogTime`, `Direction`, `status`, `created_by`, `created_on`) VALUES
(1, 1285, '2021-03-22', '22-03-2021  10:31:15', 'in', 1, 1, '2021-03-11');

-- --------------------------------------------------------

--
-- Table structure for table `emp_assessment_login_detail`
--

DROP TABLE IF EXISTS `emp_assessment_login_detail`;
CREATE TABLE IF NOT EXISTS `emp_assessment_login_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `qn_name_id` varchar(11) DEFAULT NULL,
  `company_name` varchar(150) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `department` varchar(25) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `paddress` varchar(250) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `mail` varchar(150) DEFAULT NULL,
  `adharnumber` varchar(100) DEFAULT NULL,
  `pannumber` varchar(100) DEFAULT NULL,
  `voternumber` varchar(100) DEFAULT NULL,
  `educationalDetails` varchar(150) DEFAULT NULL,
  `EmployeeStatus` varchar(100) DEFAULT NULL,
  `year_of_pass` int(10) DEFAULT NULL,
  `companyname` varchar(250) DEFAULT NULL,
  `no_of_year` varchar(10) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_assessment_login_detail`
--

INSERT INTO `emp_assessment_login_detail` (`id`, `staff_id`, `qn_name_id`, `company_name`, `position`, `department`, `first_name`, `last_name`, `father_name`, `gender`, `dob`, `address`, `paddress`, `phone`, `mail`, `adharnumber`, `pannumber`, `voternumber`, `educationalDetails`, `EmployeeStatus`, `year_of_pass`, `companyname`, `no_of_year`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, '1', '1', NULL, '3', 'jaikumar', '', '', 'male', '1970-01-01', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 3, '2021-03-28 18:30:00'),
(2, 7, '1', '1', NULL, '3', 'Laxmi', '', '', 'male', '1995-04-19', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 3, '2021-03-28 18:30:00'),
(3, 2, '1', '1', NULL, '3', 'Rizwana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(4, 3, '1', '1', NULL, '6', 'Rajeshwari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(5, 4, '1', '1', NULL, '3', 'Mohanakrishnan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(6, 5, '1', '1', NULL, '3', 'Gopinath', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(7, 6, '1', '1', NULL, '2', 'Sebastain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL),
(8, 8, '1', '1', NULL, '4', 'Arunachalam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(9, 9, '1', '1', NULL, '3', 'Vanitha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(10, 10, '1', '1', NULL, '2', 'Jefferson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL),
(11, 11, '1', '1', NULL, '2', 'Meena B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL),
(12, 12, '1', '1', NULL, '3', 'Uma Devi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(13, 13, '1', '1', NULL, '3', 'Sindhu G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_certification`
--

DROP TABLE IF EXISTS `emp_certification`;
CREATE TABLE IF NOT EXISTS `emp_certification` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `emp_id` int(255) NOT NULL,
  `certification_name` varchar(150) NOT NULL,
  `certification_number` varchar(150) NOT NULL,
  `validity_from` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `validity_to` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `attachment` varchar(150) NOT NULL,
  `status` int(255) NOT NULL,
  `created_by` int(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_certification`
--

INSERT INTO `emp_certification` (`id`, `emp_id`, `certification_name`, `certification_number`, `validity_from`, `validity_to`, `attachment`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 11, 'RED HAT CERTIFIED SYSTEM ADMINISTRATOR', '200-160-257', '2020-08-31 18:30:00', '2023-08-31 18:30:00', '', 1, 11, '2021-05-01 09:01:31', NULL, NULL),
(2, 11, 'RED HAT CERTIFIED SYSTEM ADMINISTRATOR', '200-160-257', '2020-08-31 18:30:00', '2023-08-31 18:30:00', 'Red_Hat_Certificate_RHCSA-rhel_Kalaimani_P.pdf', 1, 11, '2021-05-01 09:03:56', NULL, NULL),
(3, 14, 'HPE ATP - FlexNetwork Solutions V3', '', '2018-04-01 18:30:00', '2021-04-01 18:30:00', '', 1, 14, '2021-05-02 10:16:06', NULL, NULL),
(4, 14, 'Aruba Certified Mobility Associate ', '', '2021-03-01 18:30:00', '2024-04-01 18:30:00', '', 1, 14, '2021-05-02 10:16:06', NULL, NULL),
(5, 14, 'HPE ATP - FlexNetwork Solutions V3', '', '2018-04-01 18:30:00', '2021-04-01 18:30:00', '', 1, 14, '2021-05-02 10:16:09', NULL, NULL),
(6, 14, 'Aruba Certified Mobility Associate ', '', '2021-03-01 18:30:00', '2024-04-01 18:30:00', '', 1, 14, '2021-05-02 10:16:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_exp_detail`
--

DROP TABLE IF EXISTS `emp_exp_detail`;
CREATE TABLE IF NOT EXISTS `emp_exp_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `total_experience` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_exp_detail`
--

INSERT INTO `emp_exp_detail` (`id`, `emp_id`, `organization_name`, `designation`, `from_date`, `to_date`, `total_experience`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 5, 'Bluebase software services', 'Software developer', '2016-06-16', '2018-12-28', '', 5, '2021-03-30 08:50:35', NULL, NULL),
(11, 11, 'SREE SASTHA INSTITUTE IF ENGG & TECHNOLOGY', 'LETURER', '2008-06-09', '2012-04-25', '4 YEARSS', 11, '2021-05-01 09:14:33', NULL, NULL),
(12, 11, 'PANIMALAR ENGG COLLEGE', 'LAB INSTRUCTOR', '2012-05-28', '2017-05-31', '5 YEARS', 11, '2021-05-01 09:14:33', NULL, NULL),
(13, 11, 'FIIT', 'LINUX ADMINISTRATOR', '2017-06-03', '2021-02-10', '3.8 YEARS', 11, '2021-05-01 09:14:33', NULL, NULL),
(14, 18, 'Ensure support Services', 'Sr.Manager SDM', '2011-09-01', '2018-02-02', '7', 18, '2021-05-01 12:57:06', NULL, NULL),
(15, 18, 'Sysnet', 'ID MANAGER', '2018-02-03', '2018-12-20', '11 months ', 18, '2021-05-01 12:57:06', NULL, NULL),
(16, 18, 'Mohammed SaadAlgarani', 'Country Manager Operations ', '2018-12-25', '2020-08-31', '1.8', 18, '2021-05-01 12:57:06', NULL, NULL),
(17, 18, 'Allied Digital ', 'Branch Manger', '2001-04-01', '2011-08-01', '10', 18, '2021-05-01 12:57:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_personal_details`
--

DROP TABLE IF EXISTS `emp_personal_details`;
CREATE TABLE IF NOT EXISTS `emp_personal_details` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `position` text NOT NULL,
  `name` varchar(150) NOT NULL,
  `fathers_name` varchar(150) NOT NULL,
  `DOB` varchar(222) NOT NULL,
  `communication_address` text NOT NULL,
  `permanent_address` text NOT NULL,
  `mobile_num` varchar(150) NOT NULL,
  `email_id` varchar(150) NOT NULL,
  `adharcard_number` varchar(255) DEFAULT NULL,
  `pan_number` varchar(255) DEFAULT NULL,
  `Voter_no` varchar(255) DEFAULT NULL,
  `aadhar_num` varchar(150) DEFAULT NULL,
  `pan_num` varchar(150) DEFAULT NULL,
  `voter_id` varchar(150) DEFAULT NULL,
  `resume` varchar(150) DEFAULT NULL,
  `status` int(255) NOT NULL,
  `created_by` int(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`name`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_personal_details`
--

INSERT INTO `emp_personal_details` (`id`, `emp_id`, `position`, `name`, `fathers_name`, `DOB`, `communication_address`, `permanent_address`, `mobile_num`, `email_id`, `adharcard_number`, `pan_number`, `Voter_no`, `aadhar_num`, `pan_num`, `voter_id`, `resume`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(5, 11, 'LINUX ENGINEER', 'KALAIMANI P', 'PALANIVEL R', '1984-08-16', '20/18 A , ANNA STREET , RAMNAGAR , AMBATTUR , CHENNAI -600053', '20/18 A , ANNA STREET , RAMNAGAR , AMBATTUR , CHENNAI -600053', '9710940488', 'kalaimani.p@quadsel.in', 'KALAIMANI_EADHAR.pdf', 'P KALAIMANI_PAN.pdf', 'MNG2747558', '208538144719', 'BEOPK5382N', 'VOTER ID.pdf', 'KALAIMANI RESUME.docx', 1, 11, '2021-05-01 08:46:16', NULL, NULL),
(4, 11, 'LINUX ENGINEER', 'KALAIMANI P', 'PALANIVEL R', '1984-08-16', '20/18 A , ANNA STREET , RAMNAGAR , AMBATTUR , CHENNAI -600053', '20/18 A , ANNA STREET , RAMNAGAR , AMBATTUR , CHENNAI -600053', '9710940488', 'kalaimani.p@quadsel.in', 'KALAIMANI_EADHAR.pdf', 'P KALAIMANI_PAN.pdf', 'MNG2747558', '208538144719', 'BEOPK5382N', 'VOTER ID.pdf', 'KALAIMANI RESUME.docx', 1, 11, '2021-05-01 08:46:15', NULL, NULL),
(3, 11, 'LINUX ENGINEER', 'KALAIMANI P', 'PALANIVEL R', '1984-08-16', '20/18 A , ANNA STREET , RAMNAGAR , AMBATTUR , CHENNAI -600053', '20/18 A , ANNA STREET , RAMNAGAR , AMBATTUR , CHENNAI -600053', '9710940488', 'kalaimani.p@quadsel.in', 'KALAIMANI_EADHAR.pdf', 'P KALAIMANI_PAN.pdf', 'MNG2747558', '208538144719', 'BEOPK5382N', 'VOTER ID.pdf', 'KALAIMANI RESUME.docx', 1, 11, '2021-05-01 08:46:14', NULL, NULL),
(2, 11, 'LINUX ENGINEER', 'KALAIMANI P', 'PALANIVEL R', '1984-08-16', '20/18 A , ANNA STREET , RAMNAGAR , AMBATTUR , CHENNAI -600053', '20/18 A , ANNA STREET , RAMNAGAR , AMBATTUR , CHENNAI -600053', '9710940488', 'kalaimani.p@quadsel.in', 'KALAIMANI_EADHAR.pdf', 'P KALAIMANI_PAN.pdf', 'MNG2747558', '208538144719', 'BEOPK5382N', 'VOTER ID.pdf', 'KALAIMANI RESUME.docx', 1, 11, '2021-05-01 08:45:34', NULL, NULL),
(1, 11, 'LINUX ENGINEER', 'KALAIMANI P', 'PALANIVEL R', '1984-08-16', '20/18 A , ANNA STREET , RAMNAGAR , AMBATTUR , CHENNAI -600053', '20/18 A , ANNA STREET , RAMNAGAR , AMBATTUR , CHENNAI -600053', '9710940488', 'kalaimani.p@quadsel.in', 'KALAIMANI_EADHAR.pdf', 'P KALAIMANI_PAN.pdf', 'MNG2747558', '208538144719', 'BEOPK5382N', 'VOTER ID.pdf', 'KALAIMANI RESUME.docx', 1, 11, '2021-05-01 08:45:30', NULL, NULL),
(1, 9, 'NETWORK ENGINEER', 'Akshay Sampath', 'V Sampath', '1995-11-24', 'Plot No.15 Door No 11', 'Lakshmi Nagar 1st Street', '7299293564', 'akshayit95@gmail.com', '', '', '', '', '', '', 'Akshay AWS New2.docx', 1, 9, '2021-05-01 06:02:37', NULL, NULL),
(2, 9, 'NETWORK ENGINEER', 'Akshay Sampath', 'V Sampath', '1995-11-24', 'Plot No.15 Door No 11', 'Lakshmi Nagar 1st Street', '7299293564', 'akshayit95@gmail.com', '', '', '', '', '', '', 'Akshay AWS New2.docx', 1, 9, '2021-05-01 06:02:37', NULL, NULL),
(1, 18, 'SENIOR SERVICE DELIVERY MANAGER', 'R.Shanmuganathan', 'Ramalingam ', '1971-01-18', '22, Reddy street,flat no J maheswer enclave,virugambakkam', 'Same', '09884059898', 'shanmuk18@gmail.com', 'Screenshot_20210303-121103_Photos.jpg', '', '', '790640839495', 'AQUPS3106P ', '', 'shan resume-1.docx', 1, 18, '2021-05-01 06:08:52', NULL, NULL),
(1, 2, 'DIRECTOR', 'Girish Madhavan', 'Madhavan', '1969-08-27', '', '', '', 'girishmad@gmail.com', '', '', '', '', '', '', '', 1, 2, '2021-05-01 07:54:47', NULL, NULL),
(6, 11, 'LINUX ENGINEER', 'KALAIMANI P', 'PALANIVEL R', '1984-08-16', '20/18 A , ANNA STREET , RAMNAGAR , AMBATTUR , CHENNAI -600053', '20/18 A , ANNA STREET , RAMNAGAR , AMBATTUR , CHENNAI -600053', '9710940488', 'kalaimani.p@quadsel.in', 'KALAIMANI_EADHAR.pdf', 'P KALAIMANI_PAN.pdf', 'MNG2747558', '208538144719', 'BEOPK5382N', 'VOTER ID.pdf', 'KALAIMANI RESUME.docx', 1, 11, '2021-05-01 08:46:16', NULL, NULL),
(7, 11, 'LINUX ENGINEER', 'KALAIMANI P', 'PALANIVEL R', '1984-08-16', '20/18 A , ANNA STREET , RAMNAGAR , AMBATTUR , CHENNAI -600053', '20/18 A , ANNA STREET , RAMNAGAR , AMBATTUR , CHENNAI -600053', '9710940488', 'kalaimani.p@quadsel.in', 'KALAIMANI_EADHAR.pdf', 'P KALAIMANI_PAN.pdf', 'MNG2747558', '208538144719', 'BEOPK5382N', 'VOTER ID.pdf', 'KALAIMANI RESUME.docx', 1, 11, '2021-05-01 08:46:24', NULL, NULL),
(8, 11, 'LINUX ENGINEER', 'KALAIMANI P', 'PALANIVEL R', '1984-08-16', '20/18 A , ANNA STREET , RAMNAGAR , AMBATTUR , CHENNAI -600053', '20/18 A , ANNA STREET , RAMNAGAR , AMBATTUR , CHENNAI -600053', '9710940488', 'kalaimani.p@quadsel.in', 'KALAIMANI EADHAR.pdf', 'P KALAIMANI_PAN.pdf', 'MNG2747558', '208538144719', 'BEOPK5382N', 'VOTER ID.pdf', 'KALAIMANI RESUME.docx', 1, 11, '2021-05-01 08:48:55', NULL, NULL),
(1, 14, 'NETWORK ENGINEER', 'KARTHICK S', 'SANKAR K', '1993-07-08', 'G2, GEMINI CASCADE, SHANKAR NAGAR, CHROMPET, CHENNAI-600044', 'NO 117/B, BHARATHI NAGAR, SULANKURICHI, SANKARAPURAM (TK), KALLAKURICHI - 606206', '', '', '', '', '', '', '', '', '', 1, 14, '2021-05-02 10:04:25', NULL, NULL),
(2, 14, 'NETWORK ENGINEER', 'KARTHICK S', 'SANKAR K', '1993-07-08', 'G2, GEMINI CASCADE, SHANKAR NAGAR, CHROMPET, CHENNAI-600044', 'NO 117/B, BHARATHI NAGAR, SULANKURICHI, SANKARAPURAM (TK), KALLAKURICHI - 606206', '', '', '', '', '', '', '', '', '', 1, 14, '2021-05-02 10:04:25', NULL, NULL),
(1, 24, 'CUSTOMER RELATIONSHIP MANAGER', 'JOHN AVINASH RAE', 'Mr. David Vijay Kant Rae', '1966-07-27', 'B-7, Jawahar Flats, Karneeshwara Koil Street, Mylapore, Chennai - 600 004.', 'B-7, Jawahar Flats, Karneeshwara Koil Street, Mylapore, Chennai - 600 004.', '98410 55107', 'johnavinashrae@quadsel.in', '', '', '', '9627 0957 0635', 'AJVPL8495L', '', 'RESUME.pdf', 1, 24, '2021-05-03 09:40:11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_personal_details_new`
--

DROP TABLE IF EXISTS `emp_personal_details_new`;
CREATE TABLE IF NOT EXISTS `emp_personal_details_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `position` text NOT NULL,
  `name` varchar(150) NOT NULL,
  `fathers_name` varchar(150) NOT NULL,
  `DOB` varchar(222) NOT NULL,
  `communication_address` text NOT NULL,
  `permanent_address` text NOT NULL,
  `mobile_num` varchar(150) NOT NULL,
  `email_id` varchar(150) NOT NULL,
  `adharcard_number` varchar(255) DEFAULT NULL,
  `pan_number` varchar(255) DEFAULT NULL,
  `Voter_no` varchar(255) DEFAULT NULL,
  `aadhar_num` varchar(150) DEFAULT NULL,
  `pan_num` varchar(150) DEFAULT NULL,
  `voter_id` varchar(150) DEFAULT NULL,
  `resume` varchar(150) DEFAULT NULL,
  `status` int(255) NOT NULL,
  `created_by` int(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_personal_details_new`
--

INSERT INTO `emp_personal_details_new` (`id`, `emp_id`, `position`, `name`, `fathers_name`, `DOB`, `communication_address`, `permanent_address`, `mobile_num`, `email_id`, `adharcard_number`, `pan_number`, `Voter_no`, `aadhar_num`, `pan_num`, `voter_id`, `resume`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 9, 'NETWORK ENGINEER', 'Akshay Sampath', 'V Sampath', '1995-11-24', 'Plot No.15 Door No 11', 'Lakshmi Nagar 1st Street', '7299293564', 'akshayit95@gmail.com', '', '', '', '', '', '', 'Akshay AWS New2.docx', 1, 9, '2021-05-01 06:02:37', NULL, NULL),
(2, 9, 'NETWORK ENGINEER', 'Akshay Sampath', 'V Sampath', '1995-11-24', 'Plot No.15 Door No 11', 'Lakshmi Nagar 1st Street', '7299293564', 'akshayit95@gmail.com', '', '', '', '', '', '', 'Akshay AWS New2.docx', 1, 9, '2021-05-01 06:02:37', NULL, NULL),
(3, 18, 'SENIOR SERVICE DELIVERY MANAGER', 'R.Shanmuganathan', 'Ramalingam ', '1971-01-18', '22, Reddy street,flat no J maheswer enclave,virugambakkam', 'Same', '09884059898', 'shanmuk18@gmail.com', 'Screenshot_20210303-121103_Photos.jpg', '', '', '790640839495', 'AQUPS3106P ', '', 'shan resume-1.docx', 1, 18, '2021-05-01 06:08:52', NULL, NULL),
(4, 2, 'DIRECTOR', 'Girish Madhavan', 'Madhavan', '1969-08-27', '', '', '', 'girishmad@gmail.com', '', '', '', '', '', '', '', 1, 2, '2021-05-01 07:54:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_qualification`
--

DROP TABLE IF EXISTS `emp_qualification`;
CREATE TABLE IF NOT EXISTS `emp_qualification` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(255) NOT NULL,
  `education` text NOT NULL,
  `institution_name` text NOT NULL,
  `degree` varchar(150) NOT NULL,
  `field_of_specialization` varchar(150) NOT NULL,
  `year_of_passing` varchar(255) NOT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `attachment` varchar(150) DEFAULT NULL,
  `status` int(255) NOT NULL DEFAULT '1',
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  `modified_by` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_qualification`
--

INSERT INTO `emp_qualification` (`id`, `emp_id`, `education`, `institution_name`, `degree`, `field_of_specialization`, `year_of_passing`, `percentage`, `attachment`, `status`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, '11', 'CBSE', 'JAWAHAR SR SEC SCHOOL', '10TH', '', '1999', '61 %', '10TH certificate.jpg', 1, '2021-05-01 08:54:45', 11, NULL, NULL),
(2, '11', 'MATRIC', 'ST PAULS', '12TH', '', '2001', '72 %', '12TH certificate.jpg', 1, '2021-05-01 08:54:45', 11, NULL, NULL),
(3, '11', 'UG', 'ANNAMALAI UNIVERSITY', 'BE', 'EEE', '2005', '66 %', 'kalaimani_P_UG.jpg', 1, '2021-05-01 08:54:45', 11, NULL, NULL),
(4, '11', 'PG', 'VELAMMAL ENGG COLLEGE', 'ME', 'POWER SYSTEMS', '2008', '84 %', 'kalaimani_P_PG.jpg', 1, '2021-05-01 08:54:45', 11, NULL, NULL),
(5, '11', 'CBSE', 'JAWAHAR SR SEC SCHOOL', '10TH', '', '1999', '61 %', '10TH certificate.jpg', 1, '2021-05-01 08:54:45', 11, NULL, NULL),
(6, '11', 'MATRIC', 'ST PAULS', '12TH', '', '2001', '72 %', '12TH certificate.jpg', 1, '2021-05-01 08:54:45', 11, NULL, NULL),
(7, '11', 'UG', 'ANNAMALAI UNIVERSITY', 'BE', 'EEE', '2005', '66 %', 'kalaimani_P_UG.jpg', 1, '2021-05-01 08:54:45', 11, NULL, NULL),
(8, '11', 'PG', 'VELAMMAL ENGG COLLEGE', 'ME', 'POWER SYSTEMS', '2008', '84 %', 'kalaimani_P_PG.jpg', 1, '2021-05-01 08:54:45', 11, NULL, NULL),
(9, '18', 'Master', 'nnamalai university', 'M.sc', 'Computer', '2006', '76%', '', 1, '2021-05-01 12:42:54', 18, NULL, NULL),
(10, '18', 'Master', 'nnamalai university', 'M.sc', 'Computer', '2006', '76%', '', 1, '2021-05-01 12:43:02', 18, NULL, NULL),
(11, '18', 'Master', 'nnamalai university', 'M.sc', 'Computer', '2006', '76%', '', 1, '2021-05-01 12:50:05', 18, NULL, NULL),
(12, '14', 'UG', 'Srinivasan Engineering College (Perambalur),', 'BE', 'ECE', '2015', '6.8', '', 1, '2021-05-02 10:13:29', 14, NULL, NULL),
(13, '14', 'XII', 'Government Higher Secondary School (Chitheripattu)', 'HSC', 'MATHS, PHYSICS, CHEMISTRY, COMPUTER SCINECE', '2011', '72', '', 1, '2021-05-02 10:13:29', 14, NULL, NULL),
(14, '14', 'X', 'Government Higher Secondary School (Chitheripattu)', 'SSLC', '', '2009', '75', '', 1, '2021-05-02 10:13:29', 14, NULL, NULL),
(15, '14', 'UG', 'Srinivasan Engineering College (Perambalur),', 'BE', 'ECE', '2015', '6.8', '', 1, '2021-05-02 10:16:11', 14, NULL, NULL),
(16, '14', 'XII', 'Government Higher Secondary School (Chitheripattu)', 'HSC', 'MATHS, PHYSICS, CHEMISTRY, COMPUTER SCINECE', '2011', '72', '', 1, '2021-05-02 10:16:11', 14, NULL, NULL),
(17, '14', 'X', 'Government Higher Secondary School (Chitheripattu)', 'SSLC', '', '2009', '75', '', 1, '2021-05-02 10:16:11', 14, NULL, NULL),
(18, '14', 'UG', 'Srinivasan Engineering College (Perambalur),', 'BE', 'ECE', '2015', '6.8', '', 1, '2021-05-02 10:16:11', 14, NULL, NULL),
(19, '14', 'XII', 'Government Higher Secondary School (Chitheripattu)', 'HSC', 'MATHS, PHYSICS, CHEMISTRY, COMPUTER SCINECE', '2011', '72', '', 1, '2021-05-02 10:16:11', 14, NULL, NULL),
(20, '14', 'X', 'Government Higher Secondary School (Chitheripattu)', 'SSLC', '', '2009', '75', '', 1, '2021-05-02 10:16:11', 14, NULL, NULL),
(21, '14', 'UG', 'Srinivasan Engineering College (Perambalur),', 'BE', 'ECE', '2015', '6.8', '', 1, '2021-05-02 10:16:12', 14, NULL, NULL),
(22, '14', 'XII', 'Government Higher Secondary School (Chitheripattu)', 'HSC', 'MATHS, PHYSICS, CHEMISTRY, COMPUTER SCINECE', '2011', '72', '', 1, '2021-05-02 10:16:12', 14, NULL, NULL),
(23, '14', 'X', 'Government Higher Secondary School (Chitheripattu)', 'SSLC', '', '2009', '75', '', 1, '2021-05-02 10:16:12', 14, NULL, NULL),
(24, '14', 'UG', 'Srinivasan Engineering College (Perambalur),', 'BE', 'ECE', '2015', '6.8', '', 1, '2021-05-02 10:16:12', 14, NULL, NULL),
(25, '14', 'XII', 'Government Higher Secondary School (Chitheripattu)', 'HSC', 'MATHS, PHYSICS, CHEMISTRY, COMPUTER SCINECE', '2011', '72', '', 1, '2021-05-02 10:16:12', 14, NULL, NULL),
(26, '14', 'X', 'Government Higher Secondary School (Chitheripattu)', 'SSLC', '', '2009', '75', '', 1, '2021-05-02 10:16:12', 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
CREATE TABLE IF NOT EXISTS `enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Call_type` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `Client_type` varchar(255) DEFAULT NULL,
  `Company_name` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Address` text,
  `Client` varchar(255) DEFAULT NULL,
  `Designation` varchar(255) DEFAULT NULL,
  `Mobile` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `Product` varchar(255) DEFAULT NULL,
  `list` varchar(255) DEFAULT NULL,
  `Feedback` varchar(255) DEFAULT NULL,
  `Follup` varchar(255) DEFAULT NULL,
  `companys` varchar(255) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `employee` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `flag` int(12) DEFAULT '0',
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Modified_by` varchar(255) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `Call_type`, `date`, `Client_type`, `Company_name`, `Location`, `Address`, `Client`, `Designation`, `Mobile`, `mail`, `Product`, `list`, `Feedback`, `Follup`, `companys`, `Department`, `employee`, `status`, `flag`, `created_by`, `created_on`, `Modified_by`, `modified_on`) VALUES
(1, '1', '2021-03-18', '2', 'accenture', 'chennai', 'tambaram', 'meena', 'devloper', '879564132', 'gnath9375@gmail.com', '2', '1', 'itsk good', '2021-03-31', 'Quadsel Systems Private Limited', '2', '12', '3', 0, '1', '2021-03-29 11:12:04', NULL, NULL),
(2, '2', '2021-03-06', '1', 'Forum', 'chennai', 'vadapalani', 'radhaa', 'development', '13256489', 'radha@gmail,com', '1', '5', 'nice', '2021-03-26', 'Quadsel Systems Private Limited', '3', '6', '3', 0, '1', '2021-03-29 11:47:42', NULL, NULL),
(3, '3', '2021-03-31', '2', 'Aircraft', 'chennai', 'meenabakkam', 'jeya kumar', 'junior maintanance', '5648792', 'jeya@gmail.com', '1', '3', 'thank you nice', '2021-03-24', 'Quadsel Systems Private Limited', '6', '1', '1', 0, '1', '2021-03-30 09:35:26', NULL, NULL),
(4, '1', '2021-03-24', '1', 'airtel', 'pune', 'mumbai', 'arun', 'marketing', '87956421', 'christy@gmail.com', '2', '4', 'not yet', '2021-03-28', 'Quadsel Systems Private Limited', '3', '6', '3', 0, '1', '2021-03-30 10:28:04', NULL, NULL),
(15, '1', '2021-04-16', '2', 'hexaware', 'chennai', 'siriseri', 'rajeshwaran', 'seo', '321654987', 'gnath@gmail.com', '1', '1', 'nice', '2021-04-16', 'Quadsel Systems Private Limited', '2', '12', '1', 0, '1', '2021-04-03 06:53:41', NULL, NULL),
(7, '2', '2021-04-10', '1', 'amaintance aircraft', 'chennai', 'chennai', 'laxmi raja', 'development', '9484848', 'gnath@gmail.com', '2', '8', 'ter', '2021-04-28', 'Quadsel Systems Private Limited', '3', '7', '3', 0, '1', '2021-04-01 10:39:12', NULL, NULL),
(16, '1', '2021-04-12', '2', 'qvision', 'chennai', 'door no 57', 'sindhubath', 'accounts', '564132879', 'asd@gmail.com', '2', '10', 'edf', '2021-05-02', 'Quadsel Systems Private Limited', '3', '15', '3', 1, '1', '2021-04-03 06:57:09', NULL, NULL),
(17, '1', '2021-04-17', '1', 'hp', 'vandalur1', 'no:1234', 'praba1', 'sales1123', '78945612311', 'uma1@gmail.com', '2', '8', 'ok ', '2021-04-14', 'Quadsel Systems Private Limited', '3', '6', '3', 0, '1', '2021-04-03 07:01:38', NULL, NULL),
(21, '1', '2021-05-21', '2', 'Bluebase', 'Guindy', 'Chennai', 'Janani', 'Gm', '9789957518', 'rajeshwari@bluebase.in', '2', '8', 'call later', '2021-05-20', 'Quadsel Systems Private Limited', '1', '2', '2', 0, '1', '2021-05-05 04:41:58', NULL, NULL),
(22, '1', '2021-06-01', '1', 'hp', 'vandalur1', 'no:1234', 'praba1', 'sales1123', '78945612311', 'uma1@gmail.com', 'Server', '', '', '2021-06-09', '', '3', '6', '3', 0, '1', '2021-06-01 10:14:20', NULL, NULL),
(23, '1', '2021-06-08', '1', 'hp', 'vandalur1', 'no:1234', 'praba1', 'sales1123', '78945612311', 'uma1@gmail.com', 'Web', '', 'Call later', '2021-06-09', '', '3', '6', '2', 0, '1', '2021-06-08 11:54:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `esi_master`
--

DROP TABLE IF EXISTS `esi_master`;
CREATE TABLE IF NOT EXISTS `esi_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_date` date NOT NULL,
  `percentage` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `esi_master`
--

INSERT INTO `esi_master` (`id`, `from_date`, `percentage`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, '1970-01-01', '1', 2, 1, '2021-03-17', 1, '2021-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_enquiry_crm`
--

DROP TABLE IF EXISTS `feedback_enquiry_crm`;
CREATE TABLE IF NOT EXISTS `feedback_enquiry_crm` (
  `Feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `enquiry_id` int(11) NOT NULL,
  `Feedback` text NOT NULL,
  `feedback_date` date NOT NULL,
  `status` int(11) DEFAULT '1',
  `created_by` int(12) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(13) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`Feedback_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_enquiry_crm`
--

INSERT INTO `feedback_enquiry_crm` (`Feedback_id`, `enquiry_id`, `Feedback`, `feedback_date`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 2, 'ok', '2021-03-18', 1, 6, '2021-03-30 11:20:45', NULL, NULL),
(2, 2, 'accepted', '2021-04-01', 1, 6, '2021-03-30 11:20:45', NULL, NULL),
(3, 4, 'client call ok', '2021-03-31', 1, 6, '2021-03-30 11:22:58', NULL, NULL),
(4, 4, 'procet sucess', '2021-03-23', 1, 6, '2021-03-30 11:22:58', NULL, NULL),
(5, 2, 'xfg', '2021-04-03', 1, 6, '2021-04-01 10:48:48', NULL, NULL),
(6, 2, 'sdf', '2021-04-03', 1, 6, '2021-04-01 10:48:48', NULL, NULL),
(7, 2, 'sdf', '2021-04-10', 1, 6, '2021-04-01 10:55:37', NULL, NULL),
(8, 4, 'xcv', '2021-04-24', 1, 6, '2021-04-01 10:59:35', NULL, NULL),
(9, 4, 'xcv', '2021-04-22', 1, 6, '2021-04-01 10:59:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_master`
--

DROP TABLE IF EXISTS `feedback_master`;
CREATE TABLE IF NOT EXISTS `feedback_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_master`
--

INSERT INTO `feedback_master` (`id`, `name`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'Not Selected', 1, 3, '2021-04-01', 42, '2021-04-02'),
(2, 'Schedule Interview', 1, 3, '2021-04-01', 42, '2021-04-02'),
(3, 'Profile On Hold', 1, 3, '2021-04-01', 42, '2021-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `final_technical_person_feedback`
--

DROP TABLE IF EXISTS `final_technical_person_feedback`;
CREATE TABLE IF NOT EXISTS `final_technical_person_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_person_name` varchar(150) DEFAULT NULL,
  `technical_skill` varchar(150) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `response` varchar(150) DEFAULT NULL,
  `overall_ratings` int(255) DEFAULT NULL,
  `remarks` varchar(150) DEFAULT NULL,
  `feedback` varchar(150) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `created_by` int(255) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `modified_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `final_technical_person_feedback`
--

INSERT INTO `final_technical_person_feedback` (`id`, `technical_person_name`, `technical_skill`, `rating`, `response`, `overall_ratings`, `remarks`, `feedback`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'Raji', 'php', 5, 'ok', 10, 'ok', 'ok', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `final_technical_team_commands`
--

DROP TABLE IF EXISTS `final_technical_team_commands`;
CREATE TABLE IF NOT EXISTS `final_technical_team_commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_id` int(100) DEFAULT NULL,
  `skill` varchar(100) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `response` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `final_technical_team_commands`
--

INSERT INTO `final_technical_team_commands` (`id`, `technical_id`, `skill`, `rating`, `response`) VALUES
(1, 3, 'node.js', 3, '3'),
(2, 20, 'tyu', 3, '4');

-- --------------------------------------------------------

--
-- Table structure for table `final_technical_team_details`
--

DROP TABLE IF EXISTS `final_technical_team_details`;
CREATE TABLE IF NOT EXISTS `final_technical_team_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(100) DEFAULT NULL,
  `head_name` varchar(50) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `remarks` varchar(150) DEFAULT NULL,
  `head_status` varchar(50) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `created_by` int(5) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `modified_by` int(5) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `final_technical_team_details`
--

INSERT INTO `final_technical_team_details` (`id`, `candidate_id`, `head_name`, `rating`, `remarks`, `head_status`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 'raji', 5, 'good', '4', 13, 1, '2021-03-01 18:30:00', NULL, '2021-03-02'),
(2, 1, 'raji', 5, 'good', '4', 13, 1, '2021-03-01 18:30:00', NULL, '2021-03-02'),
(3, 3, '', 5, 'OK', '13', NULL, NULL, NULL, NULL, NULL),
(4, 20, 'Rizwana', 4, 'tyuyu', '13', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `form_data`
--

DROP TABLE IF EXISTS `form_data`;
CREATE TABLE IF NOT EXISTS `form_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `file_names` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_data`
--

INSERT INTO `form_data` (`id`, `name`, `email`, `file_names`) VALUES
(1, 'dsvfd', 'dsg@gmail.com', 'bb 11 88.png'),
(2, 'sindhu', 'dsg@gmail.com', 'adhar.png,bb 11 88.png'),
(3, 'sindhuu', 'dsg@gmail.com', 'bb 11 88.png,pan.png'),
(4, 'sindhu', 'dsg@gmail.com', 'pan.png,voter.png'),
(5, 'dsvfd', 'dsg@gmail.com', 'pan.png,voter.png');

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

DROP TABLE IF EXISTS `hod`;
CREATE TABLE IF NOT EXISTS `hod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) NOT NULL,
  `emp_name` varchar(255) NOT NULL,
  `asset` varchar(255) NOT NULL,
  `mail_id` varchar(255) NOT NULL,
  `Others` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hod`
--

INSERT INTO `hod` (`id`, `dept_name`, `emp_name`, `asset`, `mail_id`, `Others`, `created_by`, `created_on`) VALUES
(1, '', 'laxmi priya', 'lapTop', 'BB', '', 1, '2021-03-31'),
(2, '', 'sindhu', 'visiting card', 'BB', '', 1, '2021-03-31'),
(3, '', 'vanitha', 'LapTop', 'BB', '', 1, '2021-03-31'),
(4, '', '2', '4', '0', '', 2, '2021-03-31'),
(5, '', '2', '4', '0', '1', 2, '2021-03-31'),
(6, '', '4', '5', 'BB', '1', 2, '2021-03-31'),
(7, '', '6', '7', 'BB', '1', 2, '2021-03-31'),
(8, '', '13', '6', 'BB', '1', 2, '2021-04-02'),
(9, '', '11', '6', 'BB', '1', 2, '2021-04-02'),
(10, '', '13', '5', '', '1', 2, '2021-04-02'),
(11, '', '11', '3', '', '1', 2, '2021-04-02'),
(12, '', '7', '6', 'BB', '1', 2, '2021-04-02'),
(13, '', '12', '4', 'BB', '1', 2, '2021-04-02'),
(14, '', '0', 'Array', 'BB', '1', 2, '2021-04-02'),
(15, '', '0', 'Array', '', '', 2, '2021-04-02'),
(16, '', '9', 'Array', 'BB', '1', 2, '2021-04-02'),
(17, '', '7', 'Array', 'BB', '1', 2, '2021-04-05'),
(18, '', '7', 'Array', 'BB', '1', 2, '2021-04-05'),
(19, 'Development', 'Laxmi Priya', 'Laptop', 'BB', '1', 2, '2021-04-05'),
(20, '', '9', 'Array', 'BB', '1', 2, '2021-04-05'),
(21, '', '7', '6', 'BB', '1', 2, '2021-04-05'),
(22, '', '7', '6', 'BB', '1', 2, '2021-04-05'),
(23, '', '11', '6', 'BB', '1', 2, '2021-04-05'),
(24, '', '7', '6', 'BB', '1', 2, '2021-04-05'),
(25, '', '13', '4', 'BB', '1', 2, '2021-04-05'),
(26, '', '11', '9', 'BB', '1', 2, '2021-04-05'),
(27, '', '9', '2', 'BB', '1', 2, '2021-04-05'),
(28, '', '17', '7', 'BB', '1', 2, '2021-04-05'),
(29, '', '6', '9', 'BB', '1', 2, '2021-04-05'),
(30, '', '14', '1', 'BB', '1', 2, '2021-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `holiday_master`
--

DROP TABLE IF EXISTS `holiday_master`;
CREATE TABLE IF NOT EXISTS `holiday_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(50) DEFAULT NULL,
  `leave_date` date DEFAULT NULL,
  `leave_name` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holiday_master`
--

INSERT INTO `holiday_master` (`id`, `year`, `leave_date`, `leave_name`, `status`) VALUES
(1, '2021', '2021-01-25', 'Republic Days', 1),
(2, '2021', '2021-05-02', 'Labours Day', 1),
(3, '2020', '2021-03-10', 'Casual leave', 1),
(4, '2021', '2021-03-09', 'Casualleave', 1),
(5, '2021', '2021-03-13', 'Childrens Day', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hr_feedback`
--

DROP TABLE IF EXISTS `hr_feedback`;
CREATE TABLE IF NOT EXISTS `hr_feedback` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `hr_comments` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `feedback` varchar(150) NOT NULL,
  `flag_id` int(255) NOT NULL,
  `created_by` int(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_feedback`
--

INSERT INTO `hr_feedback` (`id`, `hr_comments`, `status`, `feedback`, `flag_id`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'xyz', 'MD', 'xyz', 1, 1, '2020-09-08 11:09:24', 1, '2020-09-08 11:11:18'),
(2, 'yyy', 'MD & HOD', 'xyz', 1, 1, '2020-09-08 11:12:28', 1, '2020-09-08 11:15:00'),
(3, 'abc', 'MD', 'aaaa', 1, 1, '2020-10-09 09:20:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Filename` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `Filename`) VALUES
(1, 'pan.jpg'),
(2, ''),
(3, 'rsume.jpg'),
(4, 'adhar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `interview_feedback`
--

DROP TABLE IF EXISTS `interview_feedback`;
CREATE TABLE IF NOT EXISTS `interview_feedback` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `position` varchar(150) NOT NULL,
  `department` varchar(150) NOT NULL,
  `type` varchar(150) NOT NULL,
  `candidate` varchar(150) NOT NULL,
  `candidate_name` varchar(150) NOT NULL,
  `replacement_candidate_name` varchar(150) NOT NULL,
  `location` varchar(150) NOT NULL,
  `reason_to_leave_job` varchar(150) NOT NULL,
  `reference_name` varchar(150) NOT NULL,
  `total_exp` int(255) NOT NULL,
  `current_ctc` int(255) NOT NULL,
  `expexted_ctc` int(255) NOT NULL,
  `notice_period` int(255) NOT NULL,
  `expected_doj` date NOT NULL,
  `feedback` varchar(150) NOT NULL,
  `status` int(255) NOT NULL,
  `created_by` int(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interview_feedback`
--

INSERT INTO `interview_feedback` (`id`, `position`, `department`, `type`, `candidate`, `candidate_name`, `replacement_candidate_name`, `location`, `reason_to_leave_job`, `reference_name`, `total_exp`, `current_ctc`, `expexted_ctc`, `notice_period`, `expected_doj`, `feedback`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'Software Trainee', 'developer', 'xxx', 'aaaa', 'bbbb', 'ccccc', 'chennai', 'personal', 'yyyyy', 2, 500000, 700000, 3, '2020-05-09', 'xxxxxx', 1, 1, '2020-09-08 11:00:26', 1, '2020-09-08 11:01:37'),
(2, 'hr executive', 'hr', 'payroll', 'xyz', 'xxx', 'yyy', 'andhra pradesh', 'personal', 'zzz', 5, 1000000, 1200000, 3, '2020-09-30', 'qqq', 1, 1, '2020-09-08 11:20:12', 1, '2020-09-08 11:20:19'),
(3, 'sales manager', 'sales', 'xxx', 'male', 'krishna', 'reddy', 'chennai', 'personal', 'shah', 4, 500000, 700000, 30, '2020-04-06', 'gud', 1, 1, '2020-10-09 10:20:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interview_rounds`
--

DROP TABLE IF EXISTS `interview_rounds`;
CREATE TABLE IF NOT EXISTS `interview_rounds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interview_rounds`
--

INSERT INTO `interview_rounds` (`id`, `name`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'Assessment', 1, 2, '2021-03-31', 2, '2021-03-31'),
(2, 'PHP Technical', 1, 2, '2021-03-31', 2, '2021-03-31'),
(3, 'HOD', 1, 2, '2021-03-31', 2, '2021-03-31'),
(4, 'MD', 1, 2, '2021-03-31', 2, '2021-03-31'),
(5, 'Android Technical', 1, 2, '2021-03-31', 2, '2021-03-31'),
(6, 'Java Technical', 1, 2, '2021-03-31', 2, '2021-03-31'),
(7, 'Angular Technical', 1, 2, '2021-03-31', 2, '2021-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `interview_rounds_mapping`
--

DROP TABLE IF EXISTS `interview_rounds_mapping`;
CREATE TABLE IF NOT EXISTS `interview_rounds_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round_id` int(11) NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interview_rounds_mapping`
--

INSERT INTO `interview_rounds_mapping` (`id`, `round_id`, `person_name`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 3, '3', 1, 2, '2021-03-31', 2, '2021-03-31'),
(2, 4, '14', 1, 2, '2021-03-31', 2, '2021-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `interview_schedule_detail`
--

DROP TABLE IF EXISTS `interview_schedule_detail`;
CREATE TABLE IF NOT EXISTS `interview_schedule_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) NOT NULL,
  `feedback` int(11) NOT NULL,
  `interview_date` date DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `user_role` varchar(25) DEFAULT NULL,
  `user_name` varchar(25) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interview_schedule_detail`
--

INSERT INTO `interview_schedule_detail` (`id`, `resource_id`, `feedback`, `interview_date`, `remarks`, `status`, `user_role`, `user_name`, `password`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(2, 1, 2, '2021-04-05', 'qwewreytrhfgbv', 1, 'ROLE-010', 'resource', 'cd84d683cc5612c69efe115c80d0b7dc', 3, 2147483647, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manual_att`
--

DROP TABLE IF EXISTS `manual_att`;
CREATE TABLE IF NOT EXISTS `manual_att` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(150) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `purpose` varchar(150) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manual_att`
--

INSERT INTO `manual_att` (`id`, `emp_id`, `customer_name`, `location`, `date`, `purpose`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, '1', 'ials', 'chennais', '2021-03-14', 'softwares', NULL, NULL, NULL, NULL),
(2, '7', 'clms', 'chennai', '2021-03-20', 'software', NULL, '2021-03-11 16:17:09', NULL, NULL),
(3, '2', 'IAL', 'Chennai', '2021-03-10', 'Software', NULL, '2021-03-15 10:15:34', NULL, NULL),
(4, '3', 'Ial', 'chennai', '2021-03-17', 'No', NULL, '2021-03-15 11:33:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_leave`
--

DROP TABLE IF EXISTS `master_leave`;
CREATE TABLE IF NOT EXISTS `master_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_name` varchar(100) DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_leave`
--

INSERT INTO `master_leave` (`id`, `leave_name`, `no_of_days`, `status`) VALUES
(1, 'Sick Leave', 3, 1),
(2, 'Official Leave', 1, 1),
(3, 'Unofficail Leave', 1, 1),
(4, 'Year Leaves', 10, 1),
(5, 'Temporary Leave', 1, 1),
(7, 'sick', 1, 1),
(8, 'casual', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_scale_master`
--

DROP TABLE IF EXISTS `master_scale_master`;
CREATE TABLE IF NOT EXISTS `master_scale_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scale_name` varchar(100) NOT NULL,
  `from_date` date DEFAULT NULL,
  `basic_pay` float(50,2) DEFAULT NULL,
  `spl_pay` float(50,2) DEFAULT NULL,
  `grade_pay` float(50,2) DEFAULT NULL,
  `da` float(50,2) DEFAULT NULL,
  `hra` float(50,2) DEFAULT NULL,
  `cca` float(50,2) DEFAULT NULL,
  `bonus` float(50,2) DEFAULT NULL,
  `addition_allowance` float(50,2) DEFAULT NULL,
  `others` float(50,2) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_scale_master`
--

INSERT INTO `master_scale_master` (`id`, `scale_name`, `from_date`, `basic_pay`, `spl_pay`, `grade_pay`, `da`, `hra`, `cca`, `bonus`, `addition_allowance`, `others`, `status`, `created_on`, `modified_on`) VALUES
(1, 'scale-1', '2020-05-08', 10000.00, 1000.00, 200.00, 165.00, 220.00, 458.00, 806.00, 987.00, 10.00, 1, '2020-05-08 00:00:00', '2021-03-16 00:00:00'),
(2, 'scale-2', '2020-05-29', 10000.00, 1000.00, 1200.00, 160.00, 220.00, 50.00, 500.00, 110.00, 55.00, 1, '2020-05-29 00:00:00', '2020-11-27 00:00:00'),
(3, 'scale-3', '2021-03-11', 1.00, 2.00, 3.00, 4.00, 5.00, 6.00, 7.00, 8.00, 9.00, 1, '2021-03-11 00:00:00', NULL),
(4, 'scale-0', '1970-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-03-16 00:00:00', NULL),
(5, 'scale-1', '2021-03-09', 42.00, 452.00, 4523.00, 452.00, 425.00, 452.00, 452.00, 452.00, 4523.00, 1, '2021-03-17 00:00:00', '2021-03-17 00:00:00'),
(6, 'scale-1', '2021-03-10', 544.00, 3653.00, 356.00, 365.00, 3636.00, 53536.00, 5353.00, 556.00, 556.00, 1, '2021-03-17 00:00:00', '2021-03-17 00:00:00'),
(7, 'scale-1', '2021-03-10', 544.00, 3653.00, 356.00, 365.00, 3636.00, 53536.00, 5353.00, 556.00, 556.00, 1, '2021-03-17 00:00:00', '2021-03-17 00:00:00'),
(8, 'scale-1', '2021-03-10', 544.00, 3653.00, 356.00, 365.00, 3636.00, 53536.00, 5353.00, 556.00, 556.00, 1, '2021-03-17 00:00:00', '2021-03-17 00:00:00'),
(9, 'scale-1', '2021-03-17', 245.00, 4254.00, 4525.00, 54254.00, 452.00, 254.00, 254.00, 542.00, 54.00, 1, '2021-03-17 00:00:00', '2021-03-17 00:00:00'),
(10, 'scale-1', '2021-03-17', 245.00, 4254.00, 4525.00, 54254.00, 452.00, 254.00, 254.00, 542.00, 54.00, 1, '2021-03-17 00:00:00', '2021-03-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `md_commands`
--

DROP TABLE IF EXISTS `md_commands`;
CREATE TABLE IF NOT EXISTS `md_commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(10) DEFAULT NULL,
  `md_commands` varchar(150) DEFAULT NULL,
  `md_status` int(15) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(10) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_commands`
--

INSERT INTO `md_commands` (`id`, `candidate_id`, `md_commands`, `md_status`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 'xxx', 1, 16, 1, '2020-11-09', NULL, NULL),
(2, 3, 'yyy', 1, 7, 1, '2020-09-15', NULL, NULL),
(3, 20, 'good', 7, 16, 5, '2021-03-16', NULL, NULL),
(4, 22, 'ok', 7, 16, 5, '2021-03-17', NULL, NULL),
(5, 21, '', 7, 16, 5, '2021-03-17', NULL, NULL),
(6, 23, 'ee', 7, 1, 5, '2021-03-17', NULL, NULL),
(7, 24, 'ok', 7, 1, 5, '2021-03-17', NULL, NULL),
(8, 25, 'ok', 7, 1, 5, '2021-03-17', NULL, NULL),
(9, 26, 'this person will ok ', 7, 1, 5, '2021-03-17', NULL, NULL),
(10, 27, 'dsf', 7, 1, 5, '2021-03-17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_details`
--

DROP TABLE IF EXISTS `md_details`;
CREATE TABLE IF NOT EXISTS `md_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `md_remarks` varchar(100) NOT NULL,
  `status_recruiter` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_details`
--

INSERT INTO `md_details` (`id`, `candidate_id`, `rating`, `md_remarks`, `status_recruiter`, `created`) VALUES
(5, 1, '5', '5', '7', '2020-11-27 04:11:58');

-- --------------------------------------------------------

--
-- Table structure for table `org_type_master`
--

DROP TABLE IF EXISTS `org_type_master`;
CREATE TABLE IF NOT EXISTS `org_type_master` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `organization_type` varchar(255) NOT NULL,
  `status` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_type_master`
--

INSERT INTO `org_type_master` (`id`, `organization_type`, `status`) VALUES
(1, 'PVT', 1),
(2, 'LLP', 1),
(3, 'PL', 1),
(4, 'Proprietorship', 1),
(5, 'Partnership', 1),
(6, 'Government', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_deduction_master`
--

DROP TABLE IF EXISTS `payroll_deduction_master`;
CREATE TABLE IF NOT EXISTS `payroll_deduction_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `from_date` date DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `min_amount` int(11) NOT NULL,
  `max_amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll_deduction_master`
--

INSERT INTO `payroll_deduction_master` (`id`, `name`, `from_date`, `amount`, `percentage`, `min_amount`, `max_amount`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'Deduction 1', '2021-03-18', 100, '', 10000, 15000, 1, 1, '2021-03-18', 1, '2021-03-18'),
(2, 'PF', '2021-03-18', 45, '', 5000, 6000, 1, 1, '2021-03-18', 1, '2021-03-18'),
(3, 'deduction', '2021-03-06', 30000, '89', 10000, 20000, 1, 1, '2021-03-25', 1, '2021-03-25');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_master`
--

DROP TABLE IF EXISTS `payroll_master`;
CREATE TABLE IF NOT EXISTS `payroll_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` int(50) NOT NULL,
  `year` int(50) NOT NULL,
  `date` date NOT NULL,
  `flag` int(50) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(50) NOT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll_master`
--

INSERT INTO `payroll_master` (`id`, `month`, `year`, `date`, `flag`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 2, 2021, '2021-03-05', 1, '1', '2021-03-05 06:30:00', '1', '2021-03-15 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_salary_deduction`
--

DROP TABLE IF EXISTS `payroll_salary_deduction`;
CREATE TABLE IF NOT EXISTS `payroll_salary_deduction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `payroll_month` int(11) DEFAULT NULL,
  `payroll_year` int(11) DEFAULT NULL,
  `employee_code` varchar(255) DEFAULT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `deduction` varchar(155) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_salary_earnings`
--

DROP TABLE IF EXISTS `payroll_salary_earnings`;
CREATE TABLE IF NOT EXISTS `payroll_salary_earnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `payroll_month` int(11) DEFAULT NULL,
  `payroll_year` int(11) DEFAULT NULL,
  `employee_code` varchar(155) DEFAULT NULL,
  `employee_name` varchar(155) DEFAULT NULL,
  `earnings` varchar(155) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_scale_details`
--

DROP TABLE IF EXISTS `payroll_scale_details`;
CREATE TABLE IF NOT EXISTS `payroll_scale_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payroll_master_id` int(11) DEFAULT NULL,
  `payroll_master_name` varchar(255) NOT NULL,
  `salary_structure_id` int(11) DEFAULT NULL,
  `salary_structure_name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll_scale_details`
--

INSERT INTO `payroll_scale_details` (`id`, `payroll_master_id`, `payroll_master_name`, `salary_structure_id`, `salary_structure_name`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 'SCALE 1', 1, 'Basics', 1, 1, '2021-03-18', NULL, NULL),
(2, 1, 'SCALE 1', 2, 'Dearness Allowance', 1, 1, '2021-03-18', NULL, NULL),
(3, 1, 'SCALE 1', 3, 'House Rent Allowance', 1, 1, '2021-03-18', NULL, NULL),
(4, 1, 'SCALE 1', 4, 'Conveyance Allowance', 1, 1, '2021-03-18', NULL, NULL),
(5, 1, 'SCALE 1', 5, 'Leave Travel Allowance', 1, 1, '2021-03-18', NULL, NULL),
(6, 1, 'SCALE 1', 6, 'Medical Allowance', 1, 1, '2021-03-18', NULL, NULL),
(7, 1, 'SCALE 1', 7, 'Books and Periodicals Allowance', 1, 1, '2021-03-18', NULL, NULL),
(8, 2, '', 0, '', 1, 1, '2021-03-18', NULL, NULL),
(9, 3, 'PF', 1, 'Basics', 1, 1, '2021-03-19', NULL, NULL),
(10, 3, 'PF', 1, 'Basics', 1, 1, '2021-03-19', NULL, NULL),
(11, 5, 'CLUB', 1, 'Basics', 1, 1, '2021-03-19', NULL, NULL),
(12, 3, 'PF', 1, 'Basics', 1, 1, '2021-03-23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_scale_master`
--

DROP TABLE IF EXISTS `payroll_scale_master`;
CREATE TABLE IF NOT EXISTS `payroll_scale_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll_scale_master`
--

INSERT INTO `payroll_scale_master` (`id`, `name`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'SCALE 1', 1, 1, '2021-03-18', NULL, NULL),
(2, '', 1, 1, '2021-03-18', NULL, NULL),
(3, 'PF', 1, 1, '2021-03-19', NULL, NULL),
(4, 'PF', 1, 1, '2021-03-19', NULL, NULL),
(5, 'CLUB', 1, 1, '2021-03-19', NULL, NULL),
(6, 'PF', 1, 1, '2021-03-23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_structure`
--

DROP TABLE IF EXISTS `payroll_structure`;
CREATE TABLE IF NOT EXISTS `payroll_structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll_structure`
--

INSERT INTO `payroll_structure` (`id`, `name`, `amount`, `percentage`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'Basics', 8000, '', 1, 1, '2021-03-11', NULL, NULL),
(2, 'Dearness Allowance', 1000, '', 1, 1, '2021-03-11', NULL, NULL),
(3, 'House Rent Allowance', 250, '', 1, 1, '2021-03-11', NULL, NULL),
(4, 'Conveyance Allowance', 100, '', 1, 1, '2021-03-11', NULL, NULL),
(5, 'Leave Travel Allowance', 0, '', 1, 1, '2021-03-11', NULL, NULL),
(6, 'Medical Allowance', 0, '', 1, 1, '2021-03-11', NULL, NULL),
(7, 'Books and Periodicals Allowance', 0, '', 1, 1, '2021-03-11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `po_generate`
--

DROP TABLE IF EXISTS `po_generate`;
CREATE TABLE IF NOT EXISTS `po_generate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_no` varchar(200) NOT NULL,
  `quote_date` date NOT NULL,
  `cost_sheet_id` int(11) NOT NULL,
  `cost_sheet_no` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_on` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_generate`
--

INSERT INTO `po_generate` (`id`, `quote_no`, `quote_date`, `cost_sheet_id`, `cost_sheet_no`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'QOT05/21-22/00001/A', '2021-06-02', 166, 'QSPLSE00002/21-22/A', 3, 27, '2021-06-01 18:30:00', 27, '2021-06-01 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `product/services`
--

DROP TABLE IF EXISTS `product/services`;
CREATE TABLE IF NOT EXISTS `product/services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapping_id` varchar(234) NOT NULL,
  `name` varchar(234) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product/services`
--

INSERT INTO `product/services` (`id`, `mapping_id`, `name`) VALUES
(1, '1', 'Desktop'),
(2, '1', 'Laptop'),
(3, '1', 'Printer'),
(4, '1', 'Ups'),
(5, '1', 'Software'),
(6, '1', 'Others'),
(7, '2', 'IMS'),
(8, '2', 'AMC'),
(9, '2', 'MPS'),
(10, '2', 'Migration'),
(11, '2', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `products_master`
--

DROP TABLE IF EXISTS `products_master`;
CREATE TABLE IF NOT EXISTS `products_master` (
  `Product_id` int(11) NOT NULL AUTO_INCREMENT,
  `Product_name` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `cratedby` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_master`
--

INSERT INTO `products_master` (`Product_id`, `Product_name`, `status`, `cratedby`) VALUES
(1, 'Desktop', 1, '2021-04-01 04:05:02'),
(2, 'Laptops', 1, '2021-04-01 04:05:02'),
(3, 'Printer', 1, '2021-04-01 04:05:23'),
(4, 'Ups', 1, '2021-04-01 04:05:23'),
(5, 'Software', 1, '2021-04-01 04:05:36'),
(6, 'Others', 1, '2021-04-01 04:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `ptdeduction`
--

DROP TABLE IF EXISTS `ptdeduction`;
CREATE TABLE IF NOT EXISTS `ptdeduction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `Nov` varchar(255) DEFAULT NULL,
  `Oct` varchar(255) DEFAULT NULL,
  `Sep` varchar(255) DEFAULT NULL,
  `Aug` varchar(255) DEFAULT NULL,
  `Decc` varchar(255) DEFAULT NULL,
  `Jan` varchar(255) DEFAULT NULL,
  `Total_Gross` varchar(255) DEFAULT NULL,
  `PT_Slab` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ptdeduction`
--

INSERT INTO `ptdeduction` (`id`, `code`, `name`, `Nov`, `Oct`, `Sep`, `Aug`, `Decc`, `Jan`, `Total_Gross`, `PT_Slab`) VALUES
(1, '101', 'abcd', '500', '1580', '2500', '2500', '2500', '2560', '50000', '452000');

-- --------------------------------------------------------

--
-- Table structure for table `question_master`
--

DROP TABLE IF EXISTS `question_master`;
CREATE TABLE IF NOT EXISTS `question_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qn_name` int(11) DEFAULT NULL,
  `section` int(11) DEFAULT NULL,
  `Questions` text NOT NULL,
  `Option_A` varchar(100) NOT NULL,
  `Option_B` varchar(100) NOT NULL,
  `Option_C` varchar(100) NOT NULL,
  `Option_D` varchar(100) NOT NULL,
  `answer_key` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_master`
--

INSERT INTO `question_master` (`id`, `qn_name`, `section`, `Questions`, `Option_A`, `Option_B`, `Option_C`, `Option_D`, `answer_key`, `status`, `created`) VALUES
(1, 1, 1, 'add a+b a=5 b=10', '10', '15', '25', '35', '2', 1, '2021-03-25 07:47:32'),
(2, 1, 2, '', '', '', '', '', '', 2, '2021-04-02 04:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `question_name_master`
--

DROP TABLE IF EXISTS `question_name_master`;
CREATE TABLE IF NOT EXISTS `question_name_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` date NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_name_master`
--

INSERT INTO `question_name_master` (`id`, `name`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'Question-A', 1, 2, '2021-03-23', NULL, NULL),
(2, 'Question-B', 1, 2, '2021-03-23', NULL, NULL),
(3, 'quess', 1, 2, '2021-03-26', NULL, NULL),
(4, 'Question_Development_1', 1, 2, '2021-03-29', NULL, NULL),
(5, 'Question_Development_2', 1, 2, '2021-03-29', NULL, NULL),
(6, 'Question_Development_3', 1, 2, '2021-03-29', NULL, NULL),
(7, 'Question_Development_4', 1, 2, '2021-03-29', NULL, NULL),
(8, 'Question_Development_5', 1, 2, '2021-03-29', NULL, NULL),
(9, 'Question_Development_6', 1, 2, '2021-03-29', NULL, NULL),
(10, 'Question_Development_7', 1, 2, '2021-03-29', NULL, NULL),
(11, 'Question_Designing_3', 1, 2, '2021-03-29', NULL, NULL),
(12, 'Question_Designing_2', 1, 2, '2021-03-29', NULL, NULL),
(13, 'Question_Designing_1', 1, 2, '2021-03-29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quotation_entry`
--

DROP TABLE IF EXISTS `quotation_entry`;
CREATE TABLE IF NOT EXISTS `quotation_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_no` varchar(250) NOT NULL,
  `specification` varchar(50000) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `qty` int(15) NOT NULL,
  `unit_rate` int(15) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `gst_percentage` int(11) NOT NULL,
  `enquiry_id` int(22) DEFAULT NULL,
  `company_id` int(22) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `quote_type` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `candid_id` int(11) NOT NULL,
  `cost_sheet_id` int(22) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `revise_date` date DEFAULT NULL,
  `status` int(11) NOT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation_entry`
--

INSERT INTO `quotation_entry` (`id`, `quote_no`, `specification`, `unit`, `qty`, `unit_rate`, `amount`, `gst_percentage`, `enquiry_id`, `company_id`, `client_id`, `quote_type`, `business_id`, `vendor_id`, `candid_id`, `cost_sheet_id`, `quote_date`, `revise_date`, `status`, `approved_by`, `flag`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(21, 'QOT202100001/A', 'HP 280 Pro G5 SFF PC - Intel Core i5-10400 2.9GHz 6C 65W/8GB (1x8GB) DDR4 2666 NECC (2400)/1TB 7200 SATA-6G 3.5/Win 10 Pro /HP P204v 19.5-inch LED Monitor (VGA /  HDMI )/ Win 10 Select System Restore DVD/HP KBDWD Value/  3/3/3 SFF Warranty', 'NM', 20, 37500, '750000.00', 18, 2, 2, 6, 1, 1, 4, 17, NULL, '2021-04-13', NULL, 2, 0, 2, 2, '2021-04-13 10:21:50', 1, '2021-04-20 04:14:04'),
(44, 'QOT202100001/B', 'HP 280 Pro G5 SFF PC - Intel Core i5-10400 2.9GHz 6C 65W/8GB (1x8GB) DDR4 2666 NECC (2400)/1TB 7200 SATA-6G 3.5/Win 10 Pro /HP P204v 19.5-inch LED Monitor (VGA /  HDMI )/ Win 10 Select System Restore DVD/HP KBDWD Value/  3/3/3 SFF Warranty', 'NM', 10, 37501, '375010.00', 18, 2, 1, 6, 1, 1, 4, 17, NULL, NULL, '2021-04-21', 2, NULL, 2, NULL, NULL, 1, '2021-04-20 07:14:00'),
(45, 'QOT202100001/C', 'HP 280 Pro G5 SFF PC - Intel Core i5-10400 2.9GHz 6C 65W/8GB (1x8GB) DDR4 2666 NECC (2400)/1TB 7200 SATA-6G 3.5/Win 10 Pro /HP P204v 19.5-inch LED Monitor (VGA /  HDMI )/ Win 10 Select System Restore DVD/HP KBDWD Value/  3/3/3 SFF Warranty', 'NM', 34, 37501, '1275034.00', 18, 2, 1, 6, 1, 1, 4, 17, NULL, NULL, '2021-04-22', 1, NULL, 1, NULL, NULL, 1, '2021-04-27 10:12:19'),
(46, 'QOT202100002/C', 'abcde', 'nm', 2, 2, '4.00', 18, 48, 1, 6, 1, 1, 1, 17, NULL, '2021-04-25', NULL, 1, NULL, 0, 1, '2021-04-23 22:25:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quote_generate`
--

DROP TABLE IF EXISTS `quote_generate`;
CREATE TABLE IF NOT EXISTS `quote_generate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_no` varchar(200) NOT NULL,
  `quote_date` date NOT NULL,
  `cost_sheet_id` int(11) NOT NULL,
  `cost_sheet_no` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `po` varchar(250) DEFAULT NULL,
  `po_date` date DEFAULT NULL,
  `po_upload_status` varchar(10) DEFAULT NULL,
  `finance_status` varchar(11) DEFAULT NULL,
  `finance_approved_by` varchar(11) DEFAULT NULL,
  `finance_remarks` varchar(250) DEFAULT NULL,
  `service_status` varchar(10) DEFAULT NULL,
  `service_approved_by` varchar(11) DEFAULT NULL,
  `service_remarks` varchar(250) DEFAULT NULL,
  `marketing_status` varchar(10) DEFAULT NULL,
  `marketing_approved_by` varchar(11) DEFAULT NULL,
  `marketing_remarks` varchar(250) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quote_generate`
--

INSERT INTO `quote_generate` (`id`, `quote_no`, `quote_date`, `cost_sheet_id`, `cost_sheet_no`, `status`, `po`, `po_date`, `po_upload_status`, `finance_status`, `finance_approved_by`, `finance_remarks`, `service_status`, `service_approved_by`, `service_remarks`, `marketing_status`, `marketing_approved_by`, `marketing_remarks`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(10, 'QOT06/21-22/00001/A', '2021-06-14', 177, 'QSPLSE00004/21-22/A', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2021-06-14 09:27:28', 26, '2021-06-14 09:29:57'),
(11, '', '2021-06-19', 172, 'QSPLSE00003/21-22/A', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2021-06-19 06:13:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_commands`
--

DROP TABLE IF EXISTS `recruiter_commands`;
CREATE TABLE IF NOT EXISTS `recruiter_commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(10) DEFAULT NULL,
  `skill_question` varchar(100) DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL,
  `response` varchar(150) DEFAULT NULL,
  `tech_dept_ass` varchar(255) NOT NULL,
  `tech_dept_per` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruiter_commands`
--

INSERT INTO `recruiter_commands` (`id`, `candidate_id`, `skill_question`, `rating`, `response`, `tech_dept_ass`, `tech_dept_per`, `created_by`, `created_on`) VALUES
(1, 1, 'php', '4', 'good', '', '', 0, '0000-00-00 00:00:00'),
(2, 1, 'java', '1', 'bad', '', '', 0, '0000-00-00 00:00:00'),
(3, 2, 'htmls', '1', 'oks', '', '', 0, '0000-00-00 00:00:00'),
(4, 2, 'ajaxs', '4', 'goods', '', '', 0, '0000-00-00 00:00:00'),
(5, 3, 'php', '3', 'ok', '', '', 0, '0000-00-00 00:00:00'),
(6, 3, 'java', '5', 'good', '', '', 0, '0000-00-00 00:00:00'),
(7, 4, 'php', '3', 'ok', '', '', 0, '0000-00-00 00:00:00'),
(8, 4, 'what is php', '4', 'ok', '', '', 0, '0000-00-00 00:00:00'),
(9, 4, 'what is sql', '5', 'ok', '', '', 0, '0000-00-00 00:00:00'),
(10, 6, 'php', '4', 'what', '', '', 0, '0000-00-00 00:00:00'),
(11, 6, 'what is php', '4', 'query', '', '', 0, '0000-00-00 00:00:00'),
(12, 6, '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(13, 5, 'php', '5', 'ok', '', '', 0, '0000-00-00 00:00:00'),
(14, 5, 'what is php?', '5', 'ok', '', '', 0, '0000-00-00 00:00:00'),
(15, 10, 'php', '3', 'ok', '', '', 0, '0000-00-00 00:00:00'),
(16, 11, 'php', '4', 'ok', '', '', 0, '0000-00-00 00:00:00'),
(17, 12, 'php', '3', 'ok', '', '', 0, '0000-00-00 00:00:00'),
(21, 19, 'php', '1', 'ok', '', '', 0, '0000-00-00 00:00:00'),
(20, 20, 'sss', '3', 'good', '', '', 0, '0000-00-00 00:00:00'),
(22, 19, 'java', '3', 'ok', '', '', 0, '0000-00-00 00:00:00'),
(23, 21, 'php', '4', 's', '', '', 0, '0000-00-00 00:00:00'),
(24, 21, 'java', '2', 's', '', '', 0, '0000-00-00 00:00:00'),
(25, 22, 'php', '5', '5', '', '', 0, '0000-00-00 00:00:00'),
(26, 22, 'java', '3', '2', '', '', 0, '0000-00-00 00:00:00'),
(27, 22, 'seo', '3', '8', '', '', 0, '0000-00-00 00:00:00'),
(28, 23, 'php', '3', '2', '', '', 0, '0000-00-00 00:00:00'),
(29, 24, 'php', '4', '3', '', '', 0, '0000-00-00 00:00:00'),
(30, 25, 'php', '4', '2', '', '', 0, '0000-00-00 00:00:00'),
(31, 25, 'java', '2', '2', '', '', 0, '0000-00-00 00:00:00'),
(32, 25, 'php', '2', 'ok', '', '', 0, '0000-00-00 00:00:00'),
(33, 26, 'wnat is php', '3', 'ok', '', '', 0, '0000-00-00 00:00:00'),
(34, 26, 'what is sql', '4', 'its satisfity', '', '', 0, '0000-00-00 00:00:00'),
(35, 27, 'dfg', '1', 'dfg', '', '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_details`
--

DROP TABLE IF EXISTS `recruiter_details`;
CREATE TABLE IF NOT EXISTS `recruiter_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(100) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `tech_department` varchar(50) DEFAULT NULL,
  `replacement` varchar(25) DEFAULT NULL,
  `replaced_name` varchar(50) DEFAULT NULL,
  `site` varchar(50) DEFAULT NULL,
  `reason_leave` varchar(100) DEFAULT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `tot_year_exp` int(10) DEFAULT NULL,
  `current_ctc` float(50,2) DEFAULT NULL,
  `exp_ctc` float(50,2) DEFAULT NULL,
  `notice_period` int(10) DEFAULT NULL,
  `date_of_join` date DEFAULT NULL,
  `recruiter_name` varchar(50) DEFAULT NULL,
  `ratings` int(10) DEFAULT NULL,
  `remarks` varchar(150) DEFAULT NULL,
  `status_recruiter` varchar(50) DEFAULT NULL,
  `command_technical_person` varchar(150) DEFAULT NULL,
  `interview_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(5) DEFAULT '1',
  `created_by` int(5) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruiter_details`
--

INSERT INTO `recruiter_details` (`id`, `candidate_id`, `position`, `tech_department`, `replacement`, `replaced_name`, `site`, `reason_leave`, `reference`, `tot_year_exp`, `current_ctc`, `exp_ctc`, `notice_period`, `date_of_join`, `recruiter_name`, `ratings`, `remarks`, `status_recruiter`, `command_technical_person`, `interview_date`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 'Web', 'Software', 'new', NULL, 'Chennai', 'Closed the company', 'mani', 5, 56789.00, 6576788.00, 7, '2020-11-27', 'Vasanth', 5, 'good in php', '16', '5', '2020-11-23 07:22:17', 1, NULL, '2020-11-23 07:22:17', NULL, NULL),
(2, 2, 'web', 'Software', 'replace', 'Arun kmar', 'Chennai', 'pacakge', 'aishu', 6, 560000.00, 456789.00, 3, '2020-11-30', 'Gopi', 5, 'yes', '7', '5', '2020-11-23 07:32:29', 1, NULL, '2020-11-23 07:32:29', NULL, NULL),
(3, 3, 'php developer', 'Software', 'new', NULL, 'Aswini', 'fresher', 'online', 4, 4000000.00, 7000000.00, 7, '2020-11-26', 'vasanth', 6, 'good in html', '10', '5', '2020-11-23 07:42:25', 1, NULL, '2020-11-23 07:42:25', NULL, NULL),
(4, 4, 'php', 'Software', 'new', NULL, 'Chennai', 'salary', 'vanitha', 1, 100000.00, 200000.00, 0, '2021-02-09', 'sakthi', 5, 'selected', '13', '5', '2021-02-20 11:05:43', 1, NULL, '2021-02-20 11:05:43', NULL, NULL),
(5, 6, 'php', 'Software', 'replace', 'sakthi', 'chennai', 'pressure', 'girish', 2, 1000000.00, 1000000.00, 6, '2021-02-23', 'mythilli', 4, 'ok', '13', '5', '2021-02-22 05:57:25', 1, NULL, '2021-02-22 05:57:25', NULL, NULL),
(7, 20, 'Developer', 'Software', 'new', NULL, 'chennai', 'nothing', 'qq', 3, 12233.00, 15555.00, 30, '2021-03-19', 'raji', 5, 'sds', '16', '5', '2021-03-16 07:08:35', 1, NULL, '2021-03-16 07:08:35', NULL, NULL),
(8, 19, 'hr', 'Hr', 'new', NULL, 'chennai', 'slary', 'sebastian', 0, 10000.00, 20000.00, 2, '2021-03-18', 'jai', 5, 'nice', '4', '5', '2021-03-16 07:12:50', 1, NULL, '2021-03-16 07:12:50', NULL, NULL),
(9, 21, 'php', 'Service', 'new', NULL, 'chennai', 'package', 'laxmi', 2, 20000.00, 20000.00, 2, '2021-03-17', 'jai', 5, 'no', '16', '1', '2021-03-16 09:05:34', 1, NULL, '2021-03-16 09:05:34', NULL, NULL),
(10, 22, 'Digital marketing', 'Software', 'new', NULL, 'chennai', 'package', 'raji', 8, 20000.00, 20000.00, 2, '2021-03-17', 'sakthi', 8, 'good', '16', '5', '2021-03-17 04:02:05', 1, NULL, '2021-03-17 04:02:05', NULL, NULL),
(11, 23, 'php', 'Admin', 'new', NULL, 'chennai', 'salary', 'gopi', 2, 23.00, 22.00, 2, '2021-03-18', 'vasanth', 3, 'yes', '7', '1', '2021-03-17 04:25:19', 1, NULL, '2021-03-17 04:25:19', NULL, NULL),
(12, 24, 'SEO', 'Admin', 'new', NULL, 'chennai', 'salary', 'raji', 5, 879564.00, 132564.00, 5, '2021-03-18', 'raji', 3, 'ok', '7', '1', '2021-03-17 04:36:16', 1, NULL, '2021-03-17 04:36:16', NULL, NULL),
(13, 25, 'php', 'Network', 'new', NULL, 'chennai', 'package', 'gopi', 5, 50000.00, 2000.00, 4, '2021-03-19', 'mythilli', 5, 'ok', '7', '5', '2021-03-17 05:31:29', 1, NULL, '2021-03-17 05:31:29', NULL, NULL),
(14, 26, 'java', 'Software', 'new', NULL, 'chennai', 'package', 'gopi', 2, 100000.00, 200000.00, 15, '2021-04-01', 'raji', 8, 'ok performance', '7', '5', '2021-03-17 06:37:05', 1, NULL, '2021-03-17 06:37:05', NULL, NULL),
(15, 27, 'php', 'Service', 'new', NULL, 'csf', 'dfgfdg', 'dfgdfg', 4, 444.00, 444.00, 4, '2021-03-17', 'dfg', 4, 'fdg', '7', '5', '2021-03-17 09:20:23', 1, NULL, '2021-03-17 09:20:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_feedback`
--

DROP TABLE IF EXISTS `recruiter_feedback`;
CREATE TABLE IF NOT EXISTS `recruiter_feedback` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `recruiter_name` varchar(150) NOT NULL,
  `interpersonal_skill` varchar(150) NOT NULL,
  `rating` int(255) NOT NULL,
  `response` varchar(150) NOT NULL,
  `overall_ratings` int(255) NOT NULL,
  `remarks` varchar(150) NOT NULL,
  `feedback` varchar(150) NOT NULL,
  `status` int(255) NOT NULL,
  `created_by` int(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruiter_feedback`
--

INSERT INTO `recruiter_feedback` (`id`, `recruiter_name`, `interpersonal_skill`, `rating`, `response`, `overall_ratings`, `remarks`, `feedback`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'rajesh', 'good', 5, 'good', 4, 'to be improve', 'qqqqq', 1, 1, '2020-09-08 11:04:11', 1, '2020-09-08 11:04:22'),
(2, 'abc', 'good atitude', 5, 'good', 5, 'nill', 'rrrr', 1, 1, '2020-09-08 11:27:19', 1, '2020-09-08 11:26:39'),
(3, 'andrews', 'good intracting', 4, 'gud', 5, 'nill', 'good', 1, 1, '2020-10-09 10:20:20', NULL, NULL),
(4, 'ram', 'good intracting', 4, 'gud', 4, 'nill', 'good', 1, 1, '2020-10-09 10:20:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resource_form_detail`
--

DROP TABLE IF EXISTS `resource_form_detail`;
CREATE TABLE IF NOT EXISTS `resource_form_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` int(11) NOT NULL,
  `consultant_name` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `position` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `whatsapp` varchar(25) DEFAULT NULL,
  `mail` varchar(25) DEFAULT NULL,
  `aadhar_no` varchar(25) NOT NULL,
  `degree` varchar(25) NOT NULL,
  `university` varchar(255) NOT NULL,
  `year_of_pass` int(11) NOT NULL,
  `percentage` int(11) NOT NULL,
  `employement_status` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `year_experience` varchar(11) DEFAULT NULL,
  `certification_status` varchar(25) NOT NULL,
  `certification` varchar(255) NOT NULL,
  `validity` date DEFAULT NULL,
  `certified_from` date DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` text,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resource_form_detail`
--

INSERT INTO `resource_form_detail` (`id`, `source`, `consultant_name`, `date`, `position`, `first_name`, `last_name`, `gender`, `mobile`, `whatsapp`, `mail`, `aadhar_no`, `degree`, `university`, `year_of_pass`, `percentage`, `employement_status`, `company_name`, `year_experience`, `certification_status`, `certification`, `validity`, `certified_from`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 2, 'xyz', '2021-04-02', 8, 'resource', '', 'male', '+91 9790218732', '+91 12345678', 'xxxx@gmail.com', '5485 5000 8000', 'B.E', 'test', 2020, 12, 'Fresher', '', '', 'yes', 'php', '0000-00-00', '0000-00-00', 1, 3, '2021-04-02 14:53:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `section_master`
--

DROP TABLE IF EXISTS `section_master`;
CREATE TABLE IF NOT EXISTS `section_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section_master`
--

INSERT INTO `section_master` (`id`, `name`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'Aptitude', 0, 2, '2021-03-23', NULL, NULL),
(2, 'Logical Reasoning', 1, 2, '2021-03-23', NULL, NULL),
(3, 'Reasoning', 1, 2, '2021-03-26', NULL, NULL),
(4, 'Communication', 1, 2, '2021-03-29', NULL, NULL),
(5, 'Technical', 1, 2, '2021-03-29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_master`
--

DROP TABLE IF EXISTS `service_master`;
CREATE TABLE IF NOT EXISTS `service_master` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_by` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`service_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_master`
--

INSERT INTO `service_master` (`service_id`, `service_name`, `status`, `created_by`) VALUES
(1, 'IMS', 1, '2021-04-01 04:38:16'),
(2, 'AMC', 1, '2021-04-01 04:38:16'),
(3, 'MPS', 1, '2021-04-01 04:38:33'),
(4, 'Migration', 1, '2021-04-01 04:38:33'),
(5, 'Others', 1, '2021-04-01 04:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `source_master`
--

DROP TABLE IF EXISTS `source_master`;
CREATE TABLE IF NOT EXISTS `source_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `source_master`
--

INSERT INTO `source_master` (`id`, `name`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'Nakuri', 1, 3, '2021-04-01', 3, '2021-04-01'),
(2, 'Consultant', 1, 3, '2021-04-01', 42, '2021-04-02'),
(3, 'Walk in', 1, 3, '2021-04-01', 3, '2021-04-01'),
(4, 'Facebook', 1, 3, '2021-04-01', 42, '2021-04-02'),
(5, 'Indeed', 1, 42, '2021-04-02', NULL, NULL),
(6, 'Linkedin', 1, 42, '2021-04-02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff_asset`
--

DROP TABLE IF EXISTS `staff_asset`;
CREATE TABLE IF NOT EXISTS `staff_asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(255) NOT NULL,
  `stationaries` varchar(255) NOT NULL,
  `system_or_laptop` varchar(255) NOT NULL,
  `id_card` int(11) NOT NULL,
  `cug` varchar(255) NOT NULL,
  `access_card` int(11) NOT NULL,
  `erp_access` int(11) NOT NULL,
  `mail_id` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_asset`
--

INSERT INTO `staff_asset` (`id`, `emp_name`, `stationaries`, `system_or_laptop`, `id_card`, `cug`, `access_card`, `erp_access`, `mail_id`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, '', 'office stationary', 'system', 23, 'Airtel', 23, 23, 'vanithaj9095@gmail.com', 1, '2021-03-30', 1, '2021-03-30'),
(2, '', 'Visiting Cards', 'LapTop', 24, 'Vodafone', 24, 24, 'abc@gmail.com', 2, '2021-03-30', 2, '2021-03-30'),
(3, '', 'Keys', 'System', 25, 'Aircel', 25, 25, 'xyz@gmail.com', 2, '2021-03-30', 2, '2021-03-30'),
(4, '9', 'visiting_cards', 'system_or_laptop', 23, '0023', 23, 23, 'vanitha@bluebase.in', 2, '2021-03-30', 2, '2021-03-30'),
(5, '3', 'visiting_cards', 'system_or_laptop', 23, '0023', 23, 23, 'rizwana@bluebase.in', 2, '2021-03-30', 2, '2021-03-30'),
(6, '4', '', 'system_or_laptop', 24, '0024', 24, 24, 'raji@bluebase.in', 2, '2021-03-30', 2, '2021-03-30'),
(7, '5', '', '', 26, '26', 26, 26, 'mohan@bluebase.in', 2, '2021-03-31', 2, '2021-03-31'),
(8, '10', '', '', 27, '27', 27, 27, 'jef@bluebase.in', 2, '2021-03-31', 2, '2021-03-31'),
(9, '11', '', '', 17, '17', 17, 17, 'meena@gmail.com', 2, '2021-03-31', 2, '2021-03-31'),
(10, '12', 'Array', '', 16, '16', 16, 16, 'uma@gmail.com', 2, '2021-03-31', 2, '2021-03-31'),
(11, '8', '', '', 14, '14', 14, 14, 'arun@gmail.com', 2, '2021-03-31', 2, '2021-03-31'),
(12, '9', '', '', 23, '0023', 23, 23, 'vanitha@bluebase.in', 2, '2021-03-31', 2, '2021-03-31'),
(13, '1', 'Visiting Cards[]', '', 15, '15', 15, 15, 'jai@gmail.com', 2, '2021-03-31', 2, '2021-03-31'),
(14, '1', '', '', 15, '15', 15, 15, 'jai@bluebase.in', 2, '2021-03-31', 2, '2021-03-31'),
(15, '13', '', '', 24, '0024', 24, 24, 'sindhu@gmail.com', 2, '2021-03-31', 2, '2021-03-31'),
(16, '2', 'Array', '', 15, '15', 15, 15, 'laxmi@bluebase.in', 2, '2021-03-31', 2, '2021-03-31'),
(17, '9', 'Files[]', '', 23, '0023', 23, 23, 'vanitha@bluebase.in', 2, '2021-03-31', 2, '2021-03-31'),
(18, '1', 'Keys[]', 'LapTop[]', 15, '15', 15, 15, 'jai@bluebase.in', 2, '2021-03-31', 2, '2021-03-31'),
(19, '9', 'Array', 'LapTop[]', 23, '0023', 23, 23, 'vanitha@bluebase.in', 2, '2021-03-31', 2, '2021-03-31'),
(20, '1', 'Array', 'LapTop[]', 15, '15', 15, 15, 'jai@gmail.com', 2, '2021-03-31', 2, '2021-03-31'),
(21, '8', 'Visiting Cards[]', 'LapTop[]', 24, '0024', 24, 24, 'arun@gmail.com', 2, '2021-03-31', 2, '2021-03-31'),
(22, '1', 'Visiting Cards[]', 'LapTop[]', 15, '00015', 15, 15, 'jaikumar@gmail.com', 2, '2021-03-31', 2, '2021-03-31'),
(23, '2', 'Visiting Cards[]', 'System[]', 16, '00016', 16, 16, 'rizwana@bluebase.in', 2, '2021-03-31', 2, '2021-03-31'),
(24, '18', 'Keys[]', 'System[]', 14, '00014', 14, 14, 'mythili@gmail.com', 2, '2021-03-31', 2, '2021-03-31'),
(25, '7', 'Visiting Cards[]', 'System[]', 21, '00021', 21, 21, 'laxmi@bluebase.in', 2, '2021-04-02', 2, '2021-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `staff_asset_master`
--

DROP TABLE IF EXISTS `staff_asset_master`;
CREATE TABLE IF NOT EXISTS `staff_asset_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_asset_master`
--

INSERT INTO `staff_asset_master` (`id`, `asset`, `created_by`, `created_on`) VALUES
(3, 'Keys', 1, '2021-03-30 18:30:00'),
(2, 'Visiting Cards ', 1, '2021-03-30 18:30:00'),
(1, 'Office Stationary', 1, '2021-03-30 18:30:00'),
(4, 'Files', 1, '2021-03-30 18:30:00'),
(5, 'System', 1, '2021-03-30 18:30:00'),
(6, 'LapTop', 1, '2021-03-30 18:30:00'),
(7, 'ID Card', 1, '2021-03-30 18:30:00'),
(8, 'CUG', 1, '2021-03-30 18:30:00'),
(9, 'Access Card', 1, '2021-03-30 18:30:00'),
(10, 'ERP Access', 1, '2021-03-30 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `staff_master`
--

DROP TABLE IF EXISTS `staff_master`;
CREATE TABLE IF NOT EXISTS `staff_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candid_id` int(11) DEFAULT NULL,
  `prefix_code` varchar(25) NOT NULL,
  `emp_code` varchar(155) DEFAULT NULL,
  `emp_name` varchar(155) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `div_id` int(11) DEFAULT '0',
  `design_id` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `scale_head` int(11) DEFAULT NULL,
  `deductions` varchar(155) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `reporting_person` varchar(11) DEFAULT NULL,
  `head_status` int(10) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_master`
--

INSERT INTO `staff_master` (`id`, `candid_id`, `prefix_code`, `emp_code`, `emp_name`, `dep_id`, `div_id`, `design_id`, `client`, `scale_head`, `deductions`, `status`, `reporting_person`, `head_status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 'QSPL', '0016', 'DHANAMANI MADHAVAN ', 1, 0, 35, '', NULL, NULL, 1, '', 0, 42, '2021-04-08', 1, '2021-06-05'),
(2, 2, 'QSPL', '0017', 'GIRISH MADHAVAN ', 1, 0, 35, '', NULL, NULL, 1, '2', NULL, 42, '2021-04-08', 1, '2021-05-14'),
(3, 3, 'QSPL', '0018', 'RESHMA MADHAVAN', 1, 0, 35, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(4, 4, 'QSPL', '0200', 'KARTHIKEYAN R ', 2, 9, 2, '', NULL, NULL, 1, '2', NULL, 42, '2021-04-08', 1, '2021-05-10'),
(5, 5, 'QSPL', '0201', 'RAMAKRISHNAN.M', 2, 0, 1, '', NULL, NULL, 1, NULL, 1, 42, '2021-04-08', NULL, NULL),
(6, 6, 'QSPL', '0202', 'KALAIMANI.R ', 4, 0, 44, '', NULL, NULL, 1, '2', 0, 42, '2021-04-08', 1, '2021-05-12'),
(7, 7, 'QSPL', '0203', 'SURIYA PRAKASH ', 4, 0, 43, '', NULL, NULL, 1, '2', NULL, 42, '2021-04-08', 1, '2021-05-12'),
(8, 8, 'QSPL', '0204', 'NARAYANAN', 4, 0, 55, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(9, 9, 'QSPL', '0205', 'AKSHAY S', 7, 0, 50, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(10, 10, 'QSPL', '0206', 'CHANDHIRAMOHAN A', 7, 0, 49, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(11, 11, 'QSPL', '0207', 'KALAIMANI P', 7, 0, 48, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(12, 12, 'QSPL', '0208', 'KALAIMATHI P', 7, 0, 53, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(13, 13, 'QSPLC', '0101', 'KALYAN KUMAR S', 7, 0, 45, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(14, 14, 'QSPL', '0209', 'KARTHICK S', 7, 0, 50, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(16, 16, 'QSPLT', '0021', 'RAJKUMAR T', 7, 0, 54, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(17, 17, 'QSPL', '0210', 'SATHISH KUMAR', 7, 0, 46, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(18, 18, 'QSPL', '0211', 'SHANMUGANATHAN R', 7, 0, 51, '', NULL, NULL, 1, NULL, 1, 42, '2021-04-08', NULL, NULL),
(19, 19, 'QSPL', '0212', 'SIVAKUMAR.R', 7, 0, 52, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(20, 20, 'QSPL', '0213', 'VENKATESAN.S.', 7, 0, 47, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(21, 21, 'QSPLC', '0102', 'ARUN KK ', 5, 0, 42, '', NULL, NULL, 1, '2', 1, 42, '2021-04-08', 1, '2021-06-05'),
(22, 22, 'QSPL', '0214', 'BABU K ', 5, 0, 39, '', NULL, NULL, 1, '26', NULL, 42, '2021-04-08', 1, '2021-05-14'),
(23, 23, 'QSPLC', '0103', 'CHRISTY MATHEWS ', 5, 0, 41, '', NULL, NULL, 1, '26', NULL, 42, '2021-04-08', 1, '2021-05-14'),
(24, 24, 'QSPL', '0215', 'JOHN AVINASH RAE ', 5, 0, 37, '', NULL, NULL, 1, '26', NULL, 42, '2021-04-08', 1, '2021-05-14'),
(25, 25, 'QSPLC', '0104', 'MUTHUKUMAR V ', 5, 0, 40, '', NULL, NULL, 1, '27', NULL, 42, '2021-04-08', 1, '2021-05-14'),
(26, 26, 'QSPL', '0216', 'SELVARAJ.P. ', 5, 0, 38, '', NULL, NULL, 1, '2', 1, 42, '2021-04-08', 1, '2021-06-10'),
(27, 27, 'QSPLC', '0105', 'VAIDYANATHAN CR ', 5, 0, 36, '', NULL, NULL, 1, '2', NULL, 42, '2021-04-08', 1, '2021-05-14'),
(28, 28, 'QSPL', '0217', 'MYTHILY', 6, 0, 34, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(29, 29, 'QSPL', '0218', 'SAKTHIVEL M K', 6, 0, 33, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(30, 30, 'QFMS', '1001', 'yuga prasanth', 3, 0, 30, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(31, 31, 'QFMS', '1002', 'Dilli raja', 3, 0, 30, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(32, 32, 'QFMS', '1003', 'ABDUL WAHID', 3, 0, 30, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(33, 33, 'QFMS', '1004', 'RAHUL SURENDAR', 3, 0, 30, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(34, 34, 'QFMS', '1005', 'BHARATHI BASKARAN', 3, 0, 30, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(35, 35, 'QFMS', '1006', 'SUBRAMANIAN S', 3, 0, 26, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(36, 36, 'QFMS', '1007', 'MARIMUTHU', 3, 0, 6, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(37, 37, 'QFMS', '1008', 'Parthiban k', 3, 0, 21, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(38, 38, 'QFMS', '1009', 'Santhosh PC', 3, 0, 21, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(39, 39, 'QFMS', '1010', 'Sankara Subramanian P', 3, 0, 21, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(40, 40, 'QFMS', '1011', 'Pothiraj', 3, 0, 23, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(41, 41, 'QFMS', '1012', 'Venkat K', 3, 0, 32, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(42, 42, 'QFMS', '1013', 'Vinothraj', 3, 0, 32, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(43, 43, 'QFMS', '1014', 'HARISH E', 3, 0, 28, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(44, 44, 'QFMS', '1015', 'VELMURUGAN S', 3, 0, 32, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(45, 45, 'QFMS', '1016', 'PRAPANCHAN A', 3, 0, 19, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(46, 10, 'QFMS', '1017', 'CHANDHIRAMOHAN A', 3, 0, 10, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(47, 47, 'QFMS', '1018', 'Saravanan', 3, 0, 24, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(48, 48, 'QFMS', '1019', 'SIVAKUMAR R', 3, 0, 22, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(49, 49, 'QFMS', '1020', 'Thenmozhi', 3, 0, 27, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(50, 50, 'QFMS', '1021', 'VENKATESAN S', 3, 0, 32, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(51, 51, 'QFMS', '1022', 'Manikandan', 3, 0, 32, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(52, 52, 'QFMS', '1023', 'Sam david', 3, 0, 5, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(53, 53, 'QFMS', '1024', 'Praveen VC', 3, 0, 3, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(54, 54, 'QFMS', '1025', 'GANGATHARAN', 3, 0, 30, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(55, 55, 'QFMS', '1026', 'JAIDEEP  JAGDISHCHANDRA', 3, 0, 9, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(56, 56, 'QFMS', '1027', 'MANIMARAN P', 3, 0, 30, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(57, 57, 'QFMS', '1028', 'NIJANTHAN', 3, 0, 30, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(58, 58, 'QFMS', '1029', 'RAJAPANDIYAN M', 3, 0, 30, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(59, 59, 'QFMS', '1030', 'SARAVANAKUMAR S', 3, 0, 30, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(60, 10, 'QFMS', '1031', 'cHANDHIRAMOHAN A', 3, 0, 30, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(61, 61, 'QFMS', '1032', 'VISWANATHAN S', 3, 0, 30, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(62, 62, 'QFMS', '1033', 'Sathish', 3, 0, 30, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(63, 63, 'QFMS', '1034', 'Balaji', 3, 0, 9, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(64, 64, 'QFMS', '1035', 'MANIKANDAN K', 3, 0, 19, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(65, 65, 'QFMS', '1036', 'SHYAM SUNDER REDDY K', 3, 0, 29, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(66, 66, 'QFMS', '1037', 'POOMALAI R', 3, 0, 19, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(67, 67, 'QFMS', '1038', 'MUTHU RAJESH KANNAN', 3, 0, 19, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(68, 68, 'QFMS', '1039', 'RAMKUMAR U', 3, 0, 20, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(69, 69, 'QFMS', '1040', 'NAGESHWARA RAO CHALLA', 3, 0, 19, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(70, 70, 'QFMS', '1041', 'VALISETTAI YASWANTH', 3, 0, 3, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(71, 71, 'QFMS', '1042', 'SADDAMHUSEIN MULLA', 3, 0, 25, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(72, 72, 'QFMS', '1043', 'PAUL DAVID', 3, 0, 19, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(73, 73, 'QFMS', '1044', 'Ghouse Ahmed R', 3, 0, 3, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(74, 74, 'QFMS', '1045', 'INDHUJA A', 3, 0, 3, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(75, 75, 'QFMS', '1046', 'YOKESH DHAMODHARAN', 3, 0, 3, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(76, 76, 'QFMS', '1047', 'BALA BHARATHI K', 3, 0, 3, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(77, 77, 'QFMS', '1048', 'DENITTA CHELIN', 3, 0, 3, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(78, 78, 'QFMS', '1049', 'MANIBALAN S N', 3, 0, 3, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(79, 79, 'QFMS', '1050', 'LOGANATHAN', 3, 0, 30, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(80, 80, 'QFMS', '1051', 'SANTHOSH KUMAR P', 3, 0, 19, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(81, 47, 'QFMS', '1052', 'Saravanan', 3, 0, 24, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(82, 82, 'QFMS', '1053', 'KARTHIKEYAN V', 3, 0, 5, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(83, 83, 'QFMS', '1054', 'DEEPAK KUMAR ', 3, 0, 5, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(84, 84, 'QFMS', '1055', 'KARTHICK KUMAR K', 3, 0, 5, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(85, 85, 'QFMS', '1056', 'RAMESH S', 3, 0, 4, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(86, 86, 'QFMS', '1057', 'Natraj', 3, 0, 19, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(87, 87, 'QFMS', '1058', 'IMRAN MOHAMED KHAN', 3, 0, 31, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(88, 88, 'QFMS', '1059', 'MANIKANDAN S', 3, 0, 5, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(89, 89, 'QFMS', '1060', 'PAZHANI M', 3, 0, 5, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(90, 90, 'QFMS', '1061', 'MURALI S', 3, 0, 19, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(91, 91, 'QFMS', '1062', 'VENKADA SUBRAMANIYAN', 3, 0, 5, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(92, 92, 'QFMS', '1063', 'BISWAJIT SAHOO', 3, 0, 8, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(93, 93, 'QFMS', '1064', 'MANGESH HANMANT BHOSALE', 3, 0, 7, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(94, 94, 'QFMS', '1065', 'PARAMASIVAM', 3, 0, 8, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(95, 95, 'QFMS', '1066', 'RUPESH CHANDRAKANT SHENDGE', 3, 0, 8, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(96, 96, 'QFMS', '1067', 'Harichanda Prasad', 3, 0, 8, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(97, 97, 'QFMS', '1068', 'SUNDARAM N', 3, 0, 5, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(98, 98, 'QFMS', '1069', 'Ajay Kumar Nayani', 3, 0, 5, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL),
(99, 99, 'QFMS', '1070', 'Sellisathish', 3, 0, 5, '', NULL, NULL, 1, NULL, NULL, 42, '2021-04-08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `technical_person_feedback`
--

DROP TABLE IF EXISTS `technical_person_feedback`;
CREATE TABLE IF NOT EXISTS `technical_person_feedback` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `technical_person_name` varchar(150) NOT NULL,
  `technical_skill` varchar(150) NOT NULL,
  `rating` int(11) NOT NULL,
  `response` varchar(150) NOT NULL,
  `overall_ratings` int(255) NOT NULL,
  `remarks` varchar(150) NOT NULL,
  `feedback` varchar(150) NOT NULL,
  `status` int(255) NOT NULL,
  `created_by` int(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` int(255) DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technical_person_feedback`
--

INSERT INTO `technical_person_feedback` (`id`, `technical_person_name`, `technical_skill`, `rating`, `response`, `overall_ratings`, `remarks`, `feedback`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'ramesh', 'programming', 5, 'good', 5, 'qqqq', 'to be improve', 1, 1, '2020-09-08 11:06:13', 1, '2020-09-08 11:06:23'),
(2, 'rajesh', 'php', 5, 'good', 5, 'nill', 'xxx', 1, 1, '2020-09-08 11:22:17', 1, '2020-09-08 11:23:00'),
(3, 'jhon', 'programming', 5, 'gud', 5, 'nill', 'good', 1, 1, '2020-10-09 12:20:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `technical_team_commands`
--

DROP TABLE IF EXISTS `technical_team_commands`;
CREATE TABLE IF NOT EXISTS `technical_team_commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_id` int(100) DEFAULT NULL,
  `skill` varchar(100) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `response` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technical_team_commands`
--

INSERT INTO `technical_team_commands` (`id`, `technical_id`, `skill`, `rating`, `response`) VALUES
(4, 1, 'etg', 4, '5'),
(3, 1, 'er', 5, '5'),
(5, 4, 'java', 3, '4'),
(6, 4, 'sql', 2, '3'),
(7, 4, 'javascript', 5, '5'),
(8, 6, 'sql', 3, '5'),
(9, 6, 'java', 3, '5'),
(10, 2, 'php', 4, '4'),
(11, 2, 'sql', 3, '4'),
(12, 3, 'PHP', 3, '3'),
(13, 3, 'Node.js', 3, '3'),
(14, 3, 'SQL', 4, '4'),
(15, 3, 'JAVA', 5, '5'),
(16, 3, '', 3, '4'),
(17, 3, 'php', 4, '4'),
(18, 3, 'sql', 4, '2'),
(19, 3, 'PHP', 4, '4'),
(20, 4, 'PHP', 5, '5'),
(21, 3, 'PHP', 4, '2'),
(22, 3, 'SQL', 4, '2'),
(23, 3, 'PHP', 4, '2'),
(24, 3, 'PHP', 3, '2'),
(25, 6, 'node.js', 3, '2'),
(26, 3, 'PHP', 4, '2'),
(27, 19, 'php', 2, '5'),
(28, 19, 'hf', 1, '4'),
(29, 21, 'php', 4, '5'),
(30, 21, 'sdf', 4, '5'),
(31, 20, 'wer', 4, '4'),
(32, 20, 'rtyt', 4, '4'),
(33, 22, 'php', 5, '5'),
(34, 22, 'java', 4, '4'),
(35, 23, 'php', 3, '5'),
(36, 24, 'php', 4, '5'),
(37, 25, 'php', 3, '5'),
(38, 26, 'netwotk', 4, '4'),
(39, 26, 'router', 2, '4'),
(40, 26, 'php', 4, '3'),
(41, 26, 'java', 3, '2'),
(42, 27, 'sdf', 1, '5'),
(43, 27, 'sdf', 3, '3');

-- --------------------------------------------------------

--
-- Table structure for table `technical_team_details`
--

DROP TABLE IF EXISTS `technical_team_details`;
CREATE TABLE IF NOT EXISTS `technical_team_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(100) DEFAULT NULL,
  `head_name` varchar(50) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `remarks` varchar(150) DEFAULT NULL,
  `head_status` varchar(50) DEFAULT NULL,
  `status` int(10) DEFAULT '0',
  `created_by` int(5) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(5) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technical_team_details`
--

INSERT INTO `technical_team_details` (`id`, `candidate_id`, `head_name`, `rating`, `remarks`, `head_status`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 'gopi', 5, 'pgp', '16', 7, NULL, '2020-11-23 10:48:11', NULL, NULL),
(2, 4, 'jai', 5, 'sql is not satisfied', '13', 0, NULL, '2021-02-20 11:07:50', NULL, NULL),
(3, 6, 'rajeshwari', 5, 'sdfg', '13', 0, NULL, '2021-02-22 06:02:55', NULL, NULL),
(4, 2, 'Vani', 5, 'ok', '7', 0, NULL, '2021-02-22 10:31:34', NULL, NULL),
(5, 3, 'Raji', 5, 'ok', '10', 0, NULL, '2021-03-01 11:10:32', NULL, NULL),
(6, 3, '', 5, 'GOOD', '10', 0, NULL, '2021-03-01 11:38:05', NULL, NULL),
(7, 3, '', 5, 'ok', '10', 0, NULL, '2021-03-01 11:42:37', NULL, NULL),
(8, 3, '', 5, 'ok', '10', 0, NULL, '2021-03-01 11:44:39', NULL, NULL),
(9, 3, 'Raji', 5, 'GOOD', '10', 0, NULL, '2021-03-02 04:12:35', NULL, NULL),
(10, 4, 'Raji', 5, 'GOOD', '13', 0, NULL, '2021-03-02 04:14:33', NULL, NULL),
(11, 3, 'Raji', 5, 'GOOD', '10', 0, NULL, '2021-03-02 05:14:39', NULL, NULL),
(12, 3, 'Raji', 5, 'GOOD', '10', 0, NULL, '2021-03-02 05:17:29', NULL, NULL),
(13, 3, '', 5, 'OK', '10', 0, NULL, '2021-03-02 05:25:06', NULL, NULL),
(14, 6, '', 5, 'OK', '13', 0, NULL, '2021-03-02 05:30:32', NULL, NULL),
(15, 3, '', 5, 'GOOD', '10', 0, NULL, '2021-03-02 10:00:55', NULL, NULL),
(16, 19, 'laxmi', 5, 'tht', '4', 0, NULL, '2021-03-16 08:28:41', NULL, NULL),
(17, 21, 'jai', 5, 's', '16', 0, NULL, '2021-03-16 09:07:58', NULL, NULL),
(18, 20, 'jai', 4, 'wer', '16', 0, NULL, '2021-03-16 10:58:26', NULL, NULL),
(19, 22, 'laxmi', 3, 'the', '16', 0, NULL, '2021-03-17 04:05:37', NULL, NULL),
(20, 23, 'jai', 8, '8', '7', 0, NULL, '2021-03-17 04:27:30', NULL, NULL),
(21, 24, 'jeffarson', 8, 'ok', '7', 0, NULL, '2021-03-17 04:37:13', NULL, NULL),
(22, 25, 'jai', 5, 'ok', '7', 0, NULL, '2021-03-17 05:34:44', NULL, NULL),
(23, 26, 'gopinath', 5, 'willing', '7', 0, NULL, '2021-03-17 06:39:51', NULL, NULL),
(24, 27, 'sdf', 4, 'dsf', '7', 0, NULL, '2021-03-17 09:27:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
CREATE TABLE IF NOT EXISTS `upload_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_upload` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_file`
--

INSERT INTO `upload_file` (`id`, `file_upload`) VALUES
(2, 'iGAS-Data_Migration_Specification_1.0.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
CREATE TABLE IF NOT EXISTS `user_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ass_emp_id` int(11) DEFAULT NULL,
  `candidate_id` int(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `email_id` varchar(250) DEFAULT NULL,
  `user_group_code` varchar(250) DEFAULT NULL,
  `mobile_no` varchar(200) DEFAULT NULL,
  `profile` varchar(250) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` varchar(250) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`id`, `user_id`, `ass_emp_id`, `candidate_id`, `department`, `user_name`, `password`, `full_name`, `status`, `email_id`, `user_group_code`, `mobile_no`, `profile`, `gender`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 0, NULL, '1', 'candidate', 'cd84d683cc5612c69efe115c80d0b7dc', 'Intreviewer', 1, 'hr@quadsel.in', 'ROLE-001', '9876543211', 'userlog/intreviewer.png', 'male', '1', '2020-08-10', '1', '2020-08-10 09:31:47'),
(2, 2, 0, NULL, '2', 'Recruiter', 'cd84d683cc5612c69efe115c80d0b7dc', 'Recruiter', 1, 'hr@quadsel.in', 'ROLE-002', '9876543211', 'userlog/hr.png', 'male', '1', '2020-08-10', '1', '2020-08-10 09:31:47'),
(3, 3, 0, NULL, '2', 'admin', 'cd84d683cc5612c69efe115c80d0b7dc', 'Admin', 1, 'hr@admin.in', 'ROLE-003', '9876543211', 'userlog/hr.png', 'male', '1', '2020-08-10', '1', '2020-08-10 09:31:47'),
(4, 4, 0, NULL, '3', 'technical', 'cd84d683cc5612c69efe115c80d0b7dc', 'Technical', 1, 'hr@admin.in', 'ROLE-004', '9876543211', 'userlog/hr.png', 'male', '1', '2020-08-10', '1', '2020-08-10 09:31:47'),
(5, 5, 0, NULL, '2', 'md', 'cd84d683cc5612c69efe115c80d0b7dc', 'Md', 1, 'hr@quadsel.in', 'ROLE-005', '9876543211', '', 'male', '1', '2020-08-10', '1', '2020-08-10 00:00:00'),
(6, 6, 0, 1, '5', 'balachandar', 'cd84d683cc5612c69efe115c80d0b7dc', 'balachandar', 1, 'bala@bluebase.in', 'ROLE-007', '9089786756', NULL, 'male', '1', '2020-11-20', NULL, NULL),
(7, 7, 0, 2, '5', 'bala ', 'cd84d683cc5612c69efe115c80d0b7dc', 'bala ', 1, 'bala@bluebase.in', 'ROLE-007', '9089786756', NULL, 'male', '1', '2020-11-20', NULL, NULL),
(8, 8, 0, 3, '5', 'Gopinath', 'cd84d683cc5612c69efe115c80d0b7dc', 'Gopinath', 1, 'gopi@gmail.com', 'ROLE-006', '8547856985', NULL, 'male', '1', '2020-11-23', NULL, NULL),
(9, 9, 0, 4, '5', 'aishwaria', 'cd84d683cc5612c69efe115c80d0b7dc', 'aishwaria', 1, 'aishu@gmail.com', 'ROLE-006', '879564122', NULL, 'female', '1', '2021-02-20', NULL, NULL),
(10, 10, 0, 5, '5', 'Ishwarya', 'cd84d683cc5612c69efe115c80d0b7dc', 'Ishwarya', 1, 'abc@gmail.com', 'ROLE-006', '3435567123', NULL, 'male', '1', '2021-02-22', NULL, NULL),
(11, 11, 0, 6, '5', 'sakthi', 'cd84d683cc5612c69efe115c80d0b7dc', 'sakthi', 1, 'kk_arun@yahoo.com', 'ROLE-006', '89756216', NULL, 'male', '1', '2021-02-22', NULL, NULL),
(12, 12, 0, 7, '5', 'Abinaya', 'cd84d683cc5612c69efe115c80d0b7dc', 'Abinaya', 1, 'ishu@gmail.com', 'ROLE-006', '9548361423', NULL, 'female', '1', '2021-02-24', NULL, NULL),
(13, 13, 0, 8, '', '', 'cd84d683cc5612c69efe115c80d0b7dc', '', 1, '', 'ROLE-006', '', NULL, 'male', '1', '2021-02-24', NULL, NULL),
(14, 14, 0, NULL, '3', 'hod', 'cd84d683cc5612c69efe115c80d0b7dc', 'HOD', 1, 'hr@admin.in', 'ROLE-008', '9876543211', NULL, 'male', '1', '2021-03-01', '1', '2021-03-01 09:31:47'),
(15, 15, 0, NULL, '3', 'technical1', 'cd84d683cc5612c69efe115c80d0b7dc', 'Technical1', 1, 'hr@admin.in', 'ROLE-008', '9876543211', NULL, 'male', '1', '2021-03-01', '1', '2021-03-01 09:31:47'),
(16, 17, 0, 10, '5', 'Vani', 'cd84d683cc5612c69efe115c80d0b7dc', 'Vani', 1, 'abc@gmail.com', 'ROLE-006', '1234566789', NULL, 'female', '1', '2021-03-03', NULL, NULL),
(17, 18, 0, 11, '5', 'Vanitha', 'cd84d683cc5612c69efe115c80d0b7dc', 'Vanitha', 1, 'vanitha@gmail.com', 'ROLE-006', '1234567890', NULL, 'female', '1', '2021-03-04', NULL, NULL),
(18, 19, 0, NULL, '2', 'Rajeshwari', 'cd84d683cc5612c69efe115c80d0b7dc', 'Rajeshwari', 1, 'hr@admin.in', 'ROLE-003', '9876543211', 'userlog/hr.png', 'male', '1', '2020-08-10', '1', '2020-08-10 09:31:47'),
(19, 25, 0, 12, '5', 'Rohan', 'cd84d683cc5612c69efe115c80d0b7dc', 'Rohan', 1, 'rohan@gmail.com', 'ROLE-006', '9874561230', NULL, 'male', '1', '2021-03-06', NULL, NULL),
(20, 26, 1, 0, '5', 'Laxmi', 'cd84d683cc5612c69efe115c80d0b7dc', 'laxmi', 1, 'rohan@gmail.com', 'ROLE-009', '9874561230', NULL, 'male', '1', '2021-03-06', NULL, NULL),
(21, 27, 3, NULL, '5', 'vanitha', 'cd84d683cc5612c69efe115c80d0b7dc', 'vanitha', 1, NULL, 'ROLE-009', 'fghfgh', NULL, 'female', '1', '2021-03-06', NULL, NULL),
(22, 28, NULL, 19, '2', 'meena', 'cd84d683cc5612c69efe115c80d0b7dc', 'meena', 1, 'sdf@gmail.com', 'ROLE-006', '879564132', NULL, 'male', '1', '2021-03-16', NULL, NULL),
(23, 29, NULL, 20, '5', 'Laxmipriya', 'cd84d683cc5612c69efe115c80d0b7dc', 'Laxmipriya', 1, 'laxmipriya@bluebase.in', 'ROLE-007', 'adfsdaf', NULL, 'female', '1', '2021-03-16', NULL, NULL),
(24, 30, NULL, 21, '3', 'mekala', 'cd84d683cc5612c69efe115c80d0b7dc', 'mekala', 1, 'laxmipriya@bluebase.in', 'ROLE-007', '9994996010', NULL, 'male', '1', '2021-03-16', NULL, NULL),
(25, 31, NULL, 22, '5', 'Jefferarason', 'cd84d683cc5612c69efe115c80d0b7dc', 'Jefferarason', 1, 'jegff@gmail.com', 'ROLE-007', '879564132', NULL, 'male', '1', '2021-03-17', NULL, NULL),
(26, 32, NULL, 23, '1', 'sindhu', 'cd84d683cc5612c69efe115c80d0b7dc', 'sindhu', 1, 'sindhu@gmail.com', 'ROLE-006', '879564', NULL, 'male', '1', '2021-03-17', NULL, NULL),
(27, 33, NULL, 24, '1', 'sakthi', 'cd84d683cc5612c69efe115c80d0b7dc', 'sakthi', 1, 'sakthi@gmail.com', 'ROLE-006', '879564', NULL, 'male', '1', '2021-03-17', NULL, NULL),
(28, 34, NULL, 25, '4', 'Uma', 'cd84d683cc5612c69efe115c80d0b7dc', 'Uma', 1, 'una@gmail.com', 'ROLE-006', '8794123', NULL, 'male', '1', '2021-03-17', NULL, NULL),
(29, 35, NULL, 26, '5', 'meenakshi', 'cd84d683cc5612c69efe115c80d0b7dc', 'meenakshi', 1, 'meena@gmail.com', 'ROLE-006', '98765432', NULL, 'male', '1', '2021-03-17', NULL, NULL),
(30, 36, NULL, 27, '3', 'sathish', 'cd84d683cc5612c69efe115c80d0b7dc', 'sathish', 1, 'sa@gmail.com', 'ROLE-006', '879456', NULL, 'male', '1', '2021-03-17', NULL, NULL),
(31, 37, NULL, 28, '1', 'mani', 'cd84d683cc5612c69efe115c80d0b7dc', 'mani', 1, 'dsaf@gmail.com', 'ROLE-006', '5436456', NULL, 'male', '1', '2021-03-17', NULL, NULL),
(32, 38, 1, NULL, '5', 'Laxmi Priya', 'cd84d683cc5612c69efe115c80d0b7dc', 'Laxmi Priya', 1, NULL, 'ROLE-009', '9790218732', NULL, 'female', '1', '2021-03-23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role_mapping`
--

DROP TABLE IF EXISTS `user_role_mapping`;
CREATE TABLE IF NOT EXISTS `user_role_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolemaster_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role_mapping`
--

INSERT INTO `user_role_mapping` (`id`, `rolemaster_id`, `employee_id`, `created_on`) VALUES
(1, 13, 2, '2021-05-07 12:58:01'),
(2, 20, 26, '2021-05-07 12:59:48'),
(3, 21, 21, '2021-05-07 13:13:15'),
(4, 22, 23, '2021-05-07 13:13:29'),
(5, 22, 25, '2021-05-07 13:13:40'),
(6, 21, 27, '2021-05-07 13:13:53'),
(7, 19, 28, '2021-05-07 13:14:04'),
(8, 18, 29, '2021-05-07 13:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `x_table_recruitment`
--

DROP TABLE IF EXISTS `x_table_recruitment`;
CREATE TABLE IF NOT EXISTS `x_table_recruitment` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `position` varchar(100) NOT NULL,
  `candidate_name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `Paddress` varchar(100) NOT NULL,
  `phone` int(10) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `adharnumber` int(100) NOT NULL,
  `adharcard` varchar(100) NOT NULL,
  `pannumber` int(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `voternumber` int(100) NOT NULL,
  `votercard` varchar(100) NOT NULL,
  `resume` varchar(100) NOT NULL,
  `Examination_passed_1` varchar(100) NOT NULL,
  `instute_1` varchar(100) NOT NULL,
  `degree_1` varchar(100) NOT NULL,
  `field_1` varchar(100) NOT NULL,
  `passing_1` varchar(100) NOT NULL,
  `percentage_1` varchar(100) NOT NULL,
  `attachment_1` varchar(100) NOT NULL,
  `certifcatename_1` varchar(100) NOT NULL,
  `certifcatnumber_1` varchar(100) NOT NULL,
  `validityfrom_1` varchar(100) NOT NULL,
  `validityto_1` varchar(100) NOT NULL,
  `certifcatefile_1` varchar(100) NOT NULL,
  `organization_1` varchar(100) NOT NULL,
  `Designation_1` varchar(100) NOT NULL,
  `From_1` varchar(100) NOT NULL,
  `to_1` varchar(100) NOT NULL,
  `yearofexperience_1` varchar(100) NOT NULL,
  `overallexp` varchar(100) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `interview_date` date NOT NULL,
  `Status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `x_table_recruitment`
--

INSERT INTO `x_table_recruitment` (`id`, `position`, `candidate_name`, `father_name`, `dob`, `Paddress`, `phone`, `mail`, `adharnumber`, `adharcard`, `pannumber`, `pancard`, `voternumber`, `votercard`, `resume`, `Examination_passed_1`, `instute_1`, `degree_1`, `field_1`, `passing_1`, `percentage_1`, `attachment_1`, `certifcatename_1`, `certifcatnumber_1`, `validityfrom_1`, `validityto_1`, `certifcatefile_1`, `organization_1`, `Designation_1`, `From_1`, `to_1`, `yearofexperience_1`, `overallexp`, `reference`, `signature`, `interview_date`, `Status`) VALUES
(1, 'developer', 'ram', 'raju', '2021-02-09', 'chennai', 1234677899, 'abc@gmail.com', 2343466, '245465776', 12547687, '453768979', 445, '23245546', 'ramu resume', '34', 'MZCET', 'BE', 'Marketing', 'ok', '50', 'ok', 'xyz', '23435', '2', '4', 'fgh', 'fghgf', 'ghh', '67', 'ty', '7', 'tyuy', 'rtyu', 'tyu', '2021-02-17', 'active'),
(4, 'developer', 'ram', 'raju', '2021-02-09', 'chennai', 1234677899, 'abc@gmail.com', 2343466, '245465776', 12547687, '453768979', 445, '23245546', 'ramu resume', '34', 'MZCET', 'BE', 'Marketing', 'ok', '50', 'ok', 'xyz', '23435', '2', '4', 'fgh', 'fghgf', 'ghh', '67', 'ty', '7', 'tyuy', 'rtyu', 'tyu', '2021-02-17', 'active'),
(2, 'developer', 'ram', 'raju', '2021-02-09', 'chennai', 1234677899, 'abc@gmail.com', 2343466, '245465776', 12547687, '453768979', 445, '23245546', 'ramu resume', '34', 'MZCET', 'BE', 'Marketing', 'ok', '50', 'ok', 'xyz', '23435', '2', '4', 'fgh', 'fghgf', 'ghh', '67', 'ty', '7', 'tyuy', 'rtyu', 'tyu', '2021-02-17', 'active'),
(3, 'developer', 'ram', 'raju', '2021-02-09', 'chennai', 1234677899, 'abc@gmail.com', 2343466, '245465776', 12547687, '453768979', 445, '23245546', 'ramu resume', '34', 'MZCET', 'BE', 'Marketing', 'ok', '50', 'ok', 'xyz', '23435', '2', '4', 'fgh', 'fghgf', 'ghh', '67', 'ty', '7', 'tyuy', 'rtyu', 'tyu', '2021-02-17', 'active'),
(6, 'tester', 'rani', 'vibu', '2021-02-09', 'chennai', 1234677899, 'abc@gmail.com', 2343466, '32545', 435, '345', 344, '45', '56', '45', '565', 'complete', 'computer', 'ok', '50', 'ok', 'ok', '34546', '4', '7', '4', 'ryuu', 'yuyi', '6', '567', '2', 'jhk', 'vani', 'jjhk', '2021-02-01', '1'),
(8, 'tester', 'rani', 'vibu', '2021-02-09', 'chennai', 1234677899, 'abc@gmail.com', 2343466, '32545', 435, '345', 344, '45', '56', '45', '565', 'complete', 'computer', 'ok', '50', 'ok', 'ok', '34546', '4', '7', '4', 'ryuu', 'yuyi', '6', '567', '2', 'jhk', 'vani', 'jjhk', '2021-02-01', '1'),
(9, 'tester', 'rani', 'vibu', '2021-02-09', 'chennai', 1234677899, 'abc@gmail.com', 2343466, '32545', 435, '345', 344, '45', '56', '45', '565', 'complete', 'computer', 'ok', '50', 'ok', 'ok', '34546', '4', '7', '4', 'ryuu', 'yuyi', '6', '567', '2', 'jhk', 'vani', 'jjhk', '2021-02-01', '1'),
(10, 'tester', 'rani', 'vibu', '2021-02-09', 'chennai', 1234677899, 'abc@gmail.com', 2343466, '32545', 435, '345', 344, '45', '56', '45', '565', 'complete', 'computer', 'ok', '50', 'ok', 'ok', '34546', '4', '7', '4', 'ryuu', 'yuyi', '6', '567', '2', 'jhk', 'vani', 'jjhk', '2021-02-01', '1'),
(11, 'tester', 'rani', 'vibu', '2021-02-09', 'chennai', 1234677899, 'abc@gmail.com', 2343466, '32545', 435, '345', 344, '45', '56', '45', '565', 'complete', 'computer', 'ok', '50', 'ok', 'ok', '34546', '4', '7', '4', 'ryuu', 'yuyi', '6', '567', '2', 'jhk', 'vani', 'jjhk', '2021-02-01', '1');

-- --------------------------------------------------------

--
-- Table structure for table `y_leave_category`
--

DROP TABLE IF EXISTS `y_leave_category`;
CREATE TABLE IF NOT EXISTS `y_leave_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `leave_ids` int(10) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `y_leave_category`
--

INSERT INTO `y_leave_category` (`id`, `type`, `leave_ids`, `status`) VALUES
(1, 'employee', 1, 1),
(2, 'contractor', 2, 1),
(3, 'test', 3, 1),
(4, 'check', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `y_leave_details`
--

DROP TABLE IF EXISTS `y_leave_details`;
CREATE TABLE IF NOT EXISTS `y_leave_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(100) DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  `balance_leave` varchar(150) DEFAULT NULL,
  `leave_type` int(10) DEFAULT NULL,
  `no_of_days` int(10) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `from_time` int(10) DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `to_time` int(10) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `approver_name` varchar(100) DEFAULT NULL,
  `month` int(5) DEFAULT NULL,
  `year` int(10) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `reject_reason` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `y_leave_details`
--

INSERT INTO `y_leave_details` (`id`, `employee_name`, `count`, `balance_leave`, `leave_type`, `no_of_days`, `from_date`, `from_time`, `to_date`, `to_time`, `reason`, `address`, `phone`, `approver_name`, `month`, `year`, `status`, `reject_reason`, `created_on`, `modified_on`) VALUES
(1, '1', 2, 'Sick Leave', 1, 2, '2020-05-01', NULL, '2020-05-02', NULL, 'Going Hometown', '8978674523', '', 'Rajeshwari', 6, 2020, 2, NULL, '2020-06-10 00:00:00', '2020-06-10 00:00:00'),
(2, '1', 2, 'Sick Leave', 1, 2, '2020-05-04', NULL, '2020-05-05', NULL, 'Going Hometown', '8978674523', '', 'Rajeshwari', 6, 2020, 2, NULL, '2020-06-10 00:00:00', '2020-06-10 00:00:00'),
(3, '4', 2, 'Sick Leave', 1, 1, '2020-06-18', NULL, '2020-06-18', NULL, 'Fever', 'Kodambakkam', '988675645', 'Rajeshwari', 6, 2020, 2, NULL, '2020-06-18 00:00:00', '2020-06-18 00:00:00'),
(4, '1', 2, 'Sick Leave', 1, 2, '2020-08-01', NULL, '2020-08-06', NULL, 'Going Hometown', 'sasa', '9089786756', 'Rajeshwari', 8, 2020, 1, NULL, '2020-08-06 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `y_masters_employee`
--

DROP TABLE IF EXISTS `y_masters_employee`;
CREATE TABLE IF NOT EXISTS `y_masters_employee` (
  `id` int(155) NOT NULL AUTO_INCREMENT,
  `emp_no` int(15) DEFAULT NULL,
  `tittle` varchar(30) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL,
  `designation` varchar(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `id_type` varchar(100) DEFAULT NULL,
  `id_number` varchar(100) DEFAULT NULL,
  `id_upload` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `salary` varchar(100) DEFAULT NULL,
  `leave_type` varchar(50) DEFAULT NULL,
  `father_name` varchar(160) DEFAULT NULL,
  `walkin_way` varchar(100) DEFAULT NULL,
  `date_of_interview` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `y_masters_employee`
--

INSERT INTO `y_masters_employee` (`id`, `emp_no`, `tittle`, `gender`, `first_name`, `last_name`, `user_name`, `email`, `password`, `DOB`, `phone`, `department`, `designation`, `country`, `region`, `city`, `address`, `id_type`, `id_number`, `id_upload`, `remark`, `doj`, `salary`, `leave_type`, `father_name`, `walkin_way`, `date_of_interview`, `status`) VALUES
(1, 1001, 'Employee', 'male', 'Bala', 'Chandar', 'balachandars', 'bala@bluebase.in', 'c8774ef5702b5950b488cadc9b64048d', '1995-07-30', '8978674523', '1', '3', 'India', 'Tamilnadu', 'Chennai', 'Kknagar', 'ahdar', '7856HAGA12', NULL, ' test', '2018-04-09', '1', '1', NULL, NULL, NULL, 1),
(2, 1002, NULL, 'female', 'Rizwana', 'shaik', 'rizwana', 'riz@bluebase.in', '249d24fe522f9a1a5a96024fea1faad7', '2020-06-03', '89786745', '1', '3', 'India', 'Andhra', 'Chennai', 'kknagar', 'adhar', '1788JHASS1', NULL, 'employee', '2020-06-10', '2', '1', NULL, NULL, NULL, 1),
(3, 1003, NULL, 'male', 'Jai', 'Kumar', 'jaikumar', 'jai@bluebase.in', '0decd5c563c0f47e3a074ce427bfb838', '2020-06-04', '8967563412', '1', '2', 'India', 'Tamilnadu', 'chennai', 'kodambakkam', 'ahdar', '7878HJKHJ1', NULL, 'contract', '2020-06-10', '1', '2', NULL, NULL, NULL, 1),
(7, NULL, NULL, 'male', 'mohan', 'c', 'mohan', 'mohan@gmail.com', 'e9206237def4b4ef46fd933ed0f5a08f', '2020-07-02', '8767564534', '1', '3', 'india', 'tamilnadu', 'chennai', 'kknagar', 'ahdar', '1261987289', NULL, 'join', '1970-01-01', '2', '1', NULL, NULL, '2020-07-14', 1),
(6, 1004, NULL, 'male', 'Bala', 'Chandar', 'bala', 'bala@bluebase.in', '51d29ccef331f229c7b90b0b68971406', '1995-07-30', '8767564534', '1', '3', 'India', 'Tamilnadiu', 'chennai', 'kknagar', 'adhar', '61627167', NULL, 'Leave', '2020-07-13', '1', '1', NULL, NULL, '2020-07-13', 1),
(8, 1, NULL, 'male', 'jai', 'kumar', 'jai', 'jai@bluebase.in', '421493fa48fc8df84d1f5f3478cf247a', '2020-06-04', '8978676543', '1', '3', 'Indai', 'tamilnadu', 'chennai', 'kodambakkam', 'adhar', '354313234131', NULL, 'Joining', '1970-01-01', '1', '1', NULL, NULL, '2020-07-21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `y_master_leave`
--

DROP TABLE IF EXISTS `y_master_leave`;
CREATE TABLE IF NOT EXISTS `y_master_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_name` varchar(100) DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `y_master_leave`
--

INSERT INTO `y_master_leave` (`id`, `leave_name`, `no_of_days`, `status`) VALUES
(1, 'Sick Leave', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `z_department_master`
--

DROP TABLE IF EXISTS `z_department_master`;
CREATE TABLE IF NOT EXISTS `z_department_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(50) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `created_by` int(5) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_department_master`
--

INSERT INTO `z_department_master` (`id`, `dept_name`, `status`, `created_by`, `created_on`) VALUES
(1, 'Management', 1, 2, '2021-03-30 20:42:09'),
(2, 'Accounts', 1, 2, '2021-03-30 20:42:51'),
(3, 'FMS', 1, 2, '2021-03-30 20:43:21'),
(4, 'Purchase', 1, 2, '2021-03-30 20:44:03'),
(5, 'Marketing', 1, 2, '2021-03-30 20:44:22'),
(6, 'HR', 1, 2, '2021-03-30 20:45:44'),
(7, 'Service', 1, 2, '2021-03-30 20:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `z_log_entry`
--

DROP TABLE IF EXISTS `z_log_entry`;
CREATE TABLE IF NOT EXISTS `z_log_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(200) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `logdate` date NOT NULL,
  `system_ip` varchar(200) NOT NULL,
  `time` time DEFAULT NULL,
  `logout` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1598 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_log_entry`
--

INSERT INTO `z_log_entry` (`id`, `user_id`, `user_name`, `logdate`, `system_ip`, `time`, `logout`) VALUES
(1, '', '', '2020-08-10', '::1', '23:24:42', NULL),
(2, '', 'Intreviewer', '2020-08-10', '::1', '23:27:08', NULL),
(3, '', 'Recruiter', '2020-08-10', '::1', '23:59:16', NULL),
(4, '', 'Recruiter', '2020-08-10', '::1', '23:59:28', NULL),
(5, '', 'Recruiter', '2020-08-10', '::1', '23:59:48', NULL),
(6, '', 'Intreviewer', '2020-08-11', '::1', '00:00:21', NULL),
(7, '', 'Intreviewer', '2020-08-11', '::1', '00:01:24', NULL),
(8, '', 'Recruiter', '2020-08-11', '::1', '00:03:00', NULL),
(9, '', 'Intreviewer', '2020-08-11', '::1', '01:04:05', NULL),
(10, '', 'Intreviewer', '2020-08-11', '::1', '01:14:41', NULL),
(11, '', 'Intreviewer', '2020-08-11', '49.249.229.10', '19:44:35', NULL),
(12, '', 'Recruiter', '2020-08-11', '49.249.229.10', '19:48:15', NULL),
(13, '', 'Intreviewer', '2020-08-11', '49.249.229.10', '19:50:13', NULL),
(14, '', 'Recruiter', '2020-08-12', '::1', '11:32:54', NULL),
(15, '', 'Recruiter', '2020-08-12', '::1', '12:29:52', NULL),
(16, '', 'Recruiter', '2020-08-12', '192.168.201.109', '14:25:53', NULL),
(17, '', 'Intreviewer', '2020-08-12', '192.168.201.109', '14:27:58', NULL),
(18, '', 'Recruiter', '2020-08-12', '192.168.201.109', '14:31:27', NULL),
(19, '', 'Recruiter', '2020-08-12', '49.249.229.10', '18:45:33', NULL),
(20, '', 'Intreviewer', '2020-08-12', '49.249.229.10', '18:50:07', NULL),
(21, '', 'Intreviewer', '2020-08-13', '::1', '11:49:55', NULL),
(22, '', 'Recruiter', '2020-08-13', '::1', '12:03:18', NULL),
(23, '', 'intreviewer', '2020-08-17', '::1', '11:13:10', NULL),
(24, '', 'Recruiter', '2020-08-17', '::1', '11:15:39', NULL),
(25, '', 'Recruiter', '2020-08-17', '49.249.229.10', '11:49:40', NULL),
(26, '', 'admin', '2020-08-17', '::1', '13:08:05', NULL),
(27, '', 'candidate', '2020-08-17', '::1', '13:09:35', NULL),
(28, '', 'admin', '2020-08-17', '::1', '15:38:27', NULL),
(29, '', 'admin', '2020-08-17', '192.168.201.109', '19:18:45', NULL),
(30, '', 'admin', '2020-08-18', '192.168.201.109', '10:21:34', NULL),
(31, '', 'Recruiter', '2020-08-18', '192.168.201.109', '10:33:33', NULL),
(32, '', 'candidate', '2020-08-18', '192.168.201.109', '10:35:12', NULL),
(33, '', 'Recruiter', '2020-08-18', '192.168.201.109', '10:36:06', NULL),
(34, '', 'admin', '2020-08-18', '::1', '11:43:47', NULL),
(35, '', 'admin', '2020-08-18', '192.168.201.109', '12:16:14', NULL),
(36, '', 'Recruiter', '2020-08-18', '::1', '12:47:03', NULL),
(37, '', 'Recruiter', '2020-08-18', '192.168.201.109', '13:00:58', NULL),
(38, '', 'Recruiter', '2020-08-19', '192.168.201.109', '09:34:38', NULL),
(39, '', 'candidate', '2020-08-19', '::1', '14:54:51', NULL),
(40, '', 'Recruiter', '2020-08-19', '::1', '14:55:32', NULL),
(41, '', 'Recruiter', '2020-08-19', '::1', '18:47:38', NULL),
(42, '', 'Recruiter', '2020-08-21', '::1', '09:23:08', NULL),
(43, '', 'technical', '2020-08-22', '49.249.229.10', '11:24:59', NULL),
(44, '', 'admin', '2020-08-22', '49.249.229.10', '11:25:16', NULL),
(45, '', 'Recruiter', '2020-08-22', '::1', '11:39:13', NULL),
(46, '', 'technical', '2020-08-22', '::1', '20:56:51', NULL),
(47, '', 'Recruiter', '2020-08-22', '::1', '21:07:55', NULL),
(48, '', 'technical', '2020-08-22', '::1', '21:09:03', NULL),
(49, '', 'admin', '2020-08-24', '::1', '14:31:23', NULL),
(50, '', 'candidate', '2020-08-24', '::1', '14:31:58', NULL),
(51, '', 'Recruiter', '2020-08-24', '::1', '14:34:36', NULL),
(52, '', 'technical', '2020-08-24', '::1', '14:37:47', NULL),
(53, '', 'admin', '2020-08-24', '::1', '14:39:00', NULL),
(54, '', 'technical', '2020-08-24', '::1', '16:46:14', NULL),
(55, '', 'Recruiter', '2020-08-24', '::1', '17:01:03', NULL),
(56, '', 'md', '2020-08-26', '::1', '08:21:37', NULL),
(57, '', 'technical', '2020-08-26', '::1', '08:30:44', NULL),
(58, '', 'md', '2020-08-26', '::1', '08:32:23', NULL),
(59, '', 'admin', '2020-08-27', '::1', '10:32:04', NULL),
(60, '', 'md', '2020-08-27', '::1', '11:36:32', NULL),
(61, '', 'admin', '2020-08-27', '::1', '11:38:02', NULL),
(62, '', 'md', '2020-08-27', '::1', '12:54:31', NULL),
(63, '', 'admin', '2020-08-27', '::1', '13:08:13', NULL),
(64, '', 'technical', '2020-08-27', '::1', '13:22:55', NULL),
(65, '', 'admin', '2020-08-27', '::1', '13:30:16', NULL),
(66, '', 'md', '2020-08-27', '::1', '14:20:35', NULL),
(67, '', 'technical', '2020-08-27', '::1', '14:29:48', NULL),
(68, '', 'admin', '2020-08-27', '::1', '14:30:24', NULL),
(69, '', 'md', '2020-08-27', '::1', '14:32:39', NULL),
(70, '', 'admin', '2020-08-28', '49.249.229.10', '11:31:36', NULL),
(71, '', 'technical', '2020-08-31', '49.249.229.10', '21:11:44', NULL),
(72, '', 'admin', '2020-08-31', '49.249.229.10', '21:12:32', NULL),
(73, '', 'admin', '2020-09-01', '::1', '21:03:44', NULL),
(74, '', 'technical', '2020-09-01', '::1', '21:05:06', NULL),
(75, '', 'admin', '2020-09-01', '::1', '21:06:22', NULL),
(76, '', 'candidate', '2020-09-02', '::1', '13:32:16', NULL),
(77, '', 'candidate', '2020-09-02', '::1', '15:43:15', NULL),
(78, '', 'Recruiter', '2020-09-02', '::1', '15:44:31', NULL),
(79, '', 'candidate', '2020-09-02', '::1', '17:07:52', NULL),
(80, '', 'Recruiter', '2020-09-02', '::1', '17:21:44', NULL),
(81, '', 'technical', '2020-09-02', '::1', '17:22:32', NULL),
(82, '', 'Recruiter', '2020-09-02', '::1', '17:26:31', NULL),
(83, '', 'candidate', '2020-09-02', '::1', '17:48:06', NULL),
(84, '', 'admin', '2020-09-03', '192.168.200.53', '10:49:49', NULL),
(85, '', 'admin', '2020-09-03', '::1', '11:53:55', NULL),
(86, '', 'admin', '2020-09-03', '::1', '11:55:15', NULL),
(87, '', 'Recruiter', '2020-09-03', '::1', '11:59:49', NULL),
(88, '', 'candidate', '2020-09-03', '::1', '12:00:39', NULL),
(89, '', 'admin', '2020-09-03', '::1', '15:38:39', NULL),
(90, '', 'admin', '2020-09-05', '::1', '10:21:15', NULL),
(91, '', 'admin', '2020-09-05', '49.249.229.10', '15:22:26', NULL),
(92, '', 'admin', '2020-09-05', '::1', '15:32:42', NULL),
(93, '', 'admin', '2020-09-07', '49.249.229.10', '12:09:52', NULL),
(94, '', 'Recruiter', '2020-09-07', '::1', '20:40:09', NULL),
(95, '', 'admin', '2020-09-07', '::1', '20:40:53', NULL),
(96, '', 'admin', '2020-09-08', '49.249.229.10', '10:41:25', NULL),
(97, '', 'admin', '2020-09-08', '49.249.229.10', '10:45:07', NULL),
(98, '', 'technical', '2020-09-08', '49.249.229.10', '10:45:53', NULL),
(99, '', 'admin', '2020-09-08', '49.249.229.10', '10:46:27', NULL),
(100, '', 'admin', '2020-09-08', '49.249.229.10', '10:58:14', NULL),
(101, '', 'admin', '2020-09-08', '49.249.229.10', '15:17:46', NULL),
(102, '', 'admin', '2020-09-08', '49.249.229.10', '16:39:24', NULL),
(103, '', 'admin', '2020-09-09', '49.249.229.10', '08:59:22', NULL),
(104, '', 'admin', '2020-09-09', '192.168.201.188', '10:49:08', NULL),
(105, '', 'admin', '2020-09-09', '49.249.229.10', '12:35:42', NULL),
(106, '', 'admin', '2020-09-09', '192.168.201.188', '17:00:09', NULL),
(107, '', 'admin', '2020-09-09', '49.249.229.10', '21:37:52', NULL),
(108, '', 'admin', '2020-09-10', '192.168.201.109', '12:02:12', NULL),
(109, '', 'admin', '2020-09-11', '49.249.229.10', '08:22:06', NULL),
(110, '', 'Recruiter', '2020-09-13', '::1', '10:04:44', NULL),
(111, '', 'candidate', '2020-09-13', '::1', '10:05:20', NULL),
(112, '', 'admin', '2020-09-13', '::1', '10:06:58', NULL),
(113, '', 'admin', '2020-09-13', '::1', '10:50:13', NULL),
(114, '', 'candidate', '2020-09-13', '::1', '12:04:57', NULL),
(115, '', 'candidate', '2020-09-13', '::1', '12:05:37', NULL),
(116, '', 'Recruiter', '2020-09-13', '::1', '12:06:29', NULL),
(117, '', 'md', '2020-09-13', '::1', '12:07:02', NULL),
(118, '', 'admin', '2020-09-13', '::1', '13:15:23', NULL),
(119, '', 'admin', '2020-09-15', '::1', '19:57:48', NULL),
(120, '', 'Recruiter', '2020-09-15', '::1', '19:58:05', NULL),
(121, '', 'admin', '2020-09-16', '49.249.229.10', '09:35:25', NULL),
(122, '', 'Recruiter', '2020-09-16', '49.249.229.10', '10:50:03', NULL),
(123, '', 'admin', '2020-09-16', '49.249.229.10', '15:35:34', NULL),
(124, '', 'Recruiter', '2020-09-16', '49.249.229.10', '16:04:36', NULL),
(125, '', 'technical', '2020-09-16', '49.249.229.10', '16:06:25', NULL),
(126, '', 'technical', '2020-09-16', '::1', '16:14:14', NULL),
(127, '', 'admin', '2020-09-16', '::1', '21:15:06', NULL),
(128, '', 'admin', '2020-09-17', '49.249.229.10', '10:18:08', NULL),
(129, '', 'admin', '2020-09-18', '192.168.201.170', '14:41:51', NULL),
(130, '', 'admin', '2020-09-18', '192.168.201.170', '14:42:55', NULL),
(131, '', 'admin', '2020-09-18', '192.168.201.180', '14:44:57', NULL),
(132, '', 'admin', '2020-09-18', '49.249.229.10', '16:10:48', NULL),
(133, '', 'admin', '2020-09-18', '49.249.229.10', '16:34:40', NULL),
(134, '', 'technical', '2020-09-18', '49.249.229.10', '16:39:25', NULL),
(135, '', 'admin', '2020-09-19', '::1', '06:32:28', NULL),
(136, '', 'admin', '2020-09-19', '::1', '09:27:33', NULL),
(137, '', 'technical', '2020-09-19', '::1', '09:27:56', NULL),
(138, '', 'md', '2020-09-19', '::1', '20:24:54', NULL),
(139, '', 'candidate', '2020-10-20', '::1', '12:45:45', NULL),
(140, '', 'candidate', '2020-11-03', '::1', '12:10:01', NULL),
(141, '', 'admin', '2020-11-03', '::1', '13:14:53', NULL),
(142, '', 'candidate', '2020-11-03', '::1', '16:00:48', NULL),
(143, '', 'admin', '2020-11-04', '::1', '11:31:30', NULL),
(144, '', 'admin', '2020-11-05', '10.225.1.78', '11:26:54', NULL),
(145, '', 'admin', '2020-11-07', '10.225.1.78', '11:54:53', NULL),
(146, '', 'admin', '2020-11-07', '10.225.1.78', '18:47:43', NULL),
(147, '', 'candidate', '2020-11-07', '10.225.1.78', '18:48:41', NULL),
(148, '', 'admin', '2020-11-09', '10.225.1.78', '09:50:39', NULL),
(149, '', 'admin', '2020-11-09', '10.225.1.78', '10:42:16', NULL),
(150, '', 'admin', '2020-11-09', '10.225.1.78', '17:36:32', NULL),
(151, '', 'candidate', '2020-11-11', '192.168.200.114', '14:12:48', NULL),
(152, '', 'admin', '2020-11-11', '192.168.200.114', '14:18:24', NULL),
(153, '', 'candidate', '2020-11-11', '192.168.200.114', '14:21:11', NULL),
(154, '', 'candidate', '2020-11-11', '192.168.200.114', '14:24:06', NULL),
(155, '', 'admin', '2020-11-11', '192.168.200.114', '14:25:31', NULL),
(156, '', 'candidate', '2020-11-11', '192.168.200.114', '15:14:30', NULL),
(157, '', 'candidate', '2020-11-11', '192.168.200.114', '15:20:26', NULL),
(158, '', 'admin', '2020-11-11', '192.168.200.114', '15:21:00', NULL),
(159, '', 'admin', '2020-11-12', '192.168.200.114', '10:19:21', NULL),
(160, '', 'Recruiter', '2020-11-12', '192.168.200.114', '10:22:00', NULL),
(161, '', 'admin', '2020-11-14', '10.225.1.78', '09:45:40', NULL),
(162, '', 'candidate', '2020-11-14', '10.225.1.78', '09:51:38', NULL),
(163, '', 'admin', '2020-11-14', '10.225.1.78', '09:52:55', NULL),
(164, '', 'Recruiter', '2020-11-14', '10.225.1.78', '09:57:34', NULL),
(165, '', 'admin', '2020-11-17', '192.168.200.114', '09:20:15', NULL),
(166, '', 'Recruiter', '2020-11-17', '192.168.200.114', '14:18:20', NULL),
(167, '', 'admin', '2020-11-17', '192.168.200.114', '14:38:08', NULL),
(168, '', 'Recruiter', '2020-11-17', '10.225.1.78', '16:32:34', NULL),
(169, '', 'admin', '2020-11-17', '10.225.1.78', '16:39:45', NULL),
(170, '', 'Recruiter', '2020-11-17', '10.225.1.78', '16:49:53', NULL),
(171, '', 'Recruiter', '2020-11-17', '192.168.200.114', '16:51:30', NULL),
(172, '', 'technical', '2020-11-18', '192.168.200.114', '09:34:25', NULL),
(173, '', 'admin', '2020-11-18', '192.168.200.16', '09:53:10', NULL),
(174, '', 'candidate', '2020-11-18', '192.168.200.16', '10:04:34', NULL),
(175, '', 'admin', '2020-11-18', '192.168.200.16', '10:06:10', NULL),
(176, '', 'candidate', '2020-11-18', '192.168.200.16', '10:07:55', NULL),
(177, '', 'admin', '2020-11-18', '192.168.200.16', '10:08:56', NULL),
(178, '', 'candidate', '2020-11-18', '192.168.200.16', '10:16:18', NULL),
(179, '', 'admin', '2020-11-18', '192.168.200.16', '10:34:38', NULL),
(180, '', 'admin', '2020-11-18', '192.168.200.114', '10:39:33', NULL),
(181, '', 'candidate', '2020-11-18', '192.168.200.114', '10:40:11', NULL),
(182, '', 'md', '2020-11-18', '192.168.200.16', '10:41:39', NULL),
(183, '', 'technical', '2020-11-18', '192.168.200.16', '10:42:18', NULL),
(184, '', 'candidate', '2020-11-18', '192.168.200.16', '10:45:26', NULL),
(185, '', 'admin', '2020-11-18', '192.168.200.16', '10:57:06', NULL),
(186, '', 'technical', '2020-11-18', '192.168.200.114', '11:16:36', NULL),
(187, '', 'Recruiter', '2020-11-18', '192.168.200.114', '11:17:15', NULL),
(188, '', 'Recruiter', '2020-11-18', '192.168.200.114', '11:33:21', NULL),
(189, '', 'technical', '2020-11-19', '192.168.200.16', '09:08:56', NULL),
(190, '', 'admin', '2020-11-19', '192.168.200.16', '09:12:13', NULL),
(191, '', 'Recruiter', '2020-11-19', '192.168.200.114', '09:25:36', NULL),
(192, '', 'Recruiter', '2020-11-19', '10.225.1.78', '10:04:54', NULL),
(193, '', 'admin', '2020-11-19', '192.168.200.114', '11:32:35', NULL),
(194, '', 'technical', '2020-11-19', '192.168.200.114', '11:36:59', NULL),
(195, '', 'Recruiter', '2020-11-19', '192.168.200.114', '11:37:51', NULL),
(196, '', 'admin', '2020-11-19', '192.168.200.114', '11:39:06', NULL),
(197, '', 'Recruiter', '2020-11-19', '192.168.200.114', '11:41:05', NULL),
(198, '', 'Recruiter', '2020-11-19', '192.168.200.114', '11:45:18', NULL),
(199, '', 'technical', '2020-11-19', '192.168.200.114', '11:57:04', NULL),
(200, '', 'Recruiter', '2020-11-19', '192.168.200.114', '11:57:48', NULL),
(201, '', 'technical', '2020-11-19', '192.168.200.114', '14:00:31', NULL),
(202, '', 'candidate', '2020-11-19', '10.225.1.78', '15:12:13', NULL),
(203, '', 'technical', '2020-11-19', '192.168.200.16', '15:44:31', NULL),
(204, '', 'Recruiter', '2020-11-19', '10.225.1.78', '16:45:15', NULL),
(205, '', 'Recruiter', '2020-11-19', '192.168.200.114', '16:48:16', NULL),
(206, '', 'candidate', '2020-11-19', '10.225.1.78', '16:54:02', NULL),
(207, '', 'candidate', '2020-11-19', '10.225.1.78', '17:13:29', NULL),
(208, '', 'candidate', '2020-11-19', '10.225.1.78', '17:32:42', NULL),
(209, '', 'candidate', '2020-11-19', '192.168.200.16', '17:34:46', NULL),
(210, '', 'technical', '2020-11-19', '192.168.200.114', '17:35:08', NULL),
(211, '', 'Recruiter', '2020-11-19', '10.225.1.78', '17:52:09', NULL),
(212, '', 'technical', '2020-11-19', '10.225.1.78', '17:52:37', NULL),
(213, '', 'candidate', '2020-11-19', '::1', '18:03:48', NULL),
(214, '', 'candidate', '2020-11-19', '::1', '18:45:54', NULL),
(215, '', 'candidate', '2020-11-19', '::1', '20:32:10', NULL),
(216, '', 'balachandar', '2020-11-19', '::1', '20:36:35', NULL),
(217, '', 'candidate', '2020-11-19', '::1', '20:37:44', NULL),
(218, '', 'candidate', '2020-11-19', '::1', '20:43:50', NULL),
(219, '', 'candidate', '2020-11-19', '10.225.1.78', '20:46:20', NULL),
(220, '', 'bala', '2020-11-19', '10.225.1.78', '20:47:05', NULL),
(221, '', 'candidate', '2020-11-20', '192.168.200.16', '09:10:29', NULL),
(222, '', 'admin', '2020-11-20', '192.168.200.16', '09:13:37', NULL),
(223, '', 'Laxmi Priya', '2020-11-20', '192.168.200.16', '09:13:58', NULL),
(224, '', 'admin', '2020-11-20', '192.168.200.16', '09:16:12', NULL),
(225, '', 'Recruiter', '2020-11-20', '192.168.200.114', '09:16:44', NULL),
(226, '', 'technical', '2020-11-20', '192.168.200.114', '09:18:12', NULL),
(227, '', 'technical', '2020-11-20', '192.168.200.114', '11:07:25', NULL),
(228, '', 'Recruiter', '2020-11-20', '192.168.200.114', '11:19:55', NULL),
(229, '', 'candidate', '2020-11-20', '::1', '11:57:00', NULL),
(230, '', 'candidate', '2020-11-20', '192.168.200.16', '12:14:40', NULL),
(231, '', 'Laxmi Priya', '2020-11-20', '192.168.200.16', '12:15:54', NULL),
(232, '', 'Laxmi Priya', '2020-11-20', '192.168.200.16', '12:16:18', NULL),
(233, '', 'candidate', '2020-11-20', '::1', '12:17:34', NULL),
(234, '', 'balachandar', '2020-11-20', '::1', '12:18:57', NULL),
(235, '', 'candidate', '2020-11-20', '::1', '12:36:56', NULL),
(236, '', 'balachandar', '2020-11-20', '::1', '13:13:51', NULL),
(237, '', 'balachandar', '2020-11-20', '::1', '13:13:52', NULL),
(238, '', 'candidate', '2020-11-20', '::1', '13:24:15', NULL),
(239, '', 'balachandar', '2020-11-20', '::1', '13:27:16', NULL),
(240, '', 'admin', '2020-11-20', '192.168.200.16', '14:14:10', NULL),
(241, '', 'Recruiter', '2020-11-20', '192.168.200.16', '14:17:58', NULL),
(242, '', 'Recruiter', '2020-11-20', '192.168.200.114', '15:06:25', NULL),
(243, '', 'admin', '2020-11-20', '192.168.200.16', '15:55:22', NULL),
(244, '', 'admin', '2020-11-20', '::1', '16:12:46', NULL),
(245, '', 'Recruiter', '2020-11-20', '::1', '16:49:35', NULL),
(246, '', 'candidate', '2020-11-20', '::1', '16:50:50', NULL),
(247, '', 'bala ', '2020-11-20', '::1', '16:52:58', NULL),
(248, '', 'admin', '2020-11-20', '::1', '16:53:49', NULL),
(249, '', 'Recruiter', '2020-11-20', '::1', '16:54:19', NULL),
(250, '', 'admin', '2020-11-21', '192.168.200.16', '09:14:50', NULL),
(251, '', 'Recruiter', '2020-11-21', '192.168.200.16', '09:15:49', NULL),
(252, '', 'admin', '2020-11-21', '192.168.200.114', '09:23:51', NULL),
(253, '', 'technical', '2020-11-21', '192.168.200.114', '09:38:08', NULL),
(254, '', 'md', '2020-11-21', '192.168.200.114', '09:40:04', NULL),
(255, '', 'Recruiter', '2020-11-21', '192.168.200.114', '10:04:18', NULL),
(256, '', 'Recruiter', '2020-11-21', '192.168.200.114', '10:31:43', NULL),
(257, '', 'md', '2020-11-21', '192.168.200.114', '10:42:33', NULL),
(258, '', 'Recruiter', '2020-11-21', '10.225.1.78', '12:37:23', NULL),
(259, '', 'Recruiter', '2020-11-21', '192.168.200.114', '12:37:57', NULL),
(260, '', 'Recruiter', '2020-11-21', '192.168.200.114', '14:10:35', NULL),
(261, '', 'technical', '2020-11-23', '192.168.200.16', '09:18:34', NULL),
(262, '', 'admin', '2020-11-23', '192.168.200.16', '09:18:56', NULL),
(263, '', 'technical', '2020-11-23', '192.168.200.16', '09:21:55', NULL),
(264, '', 'Recruiter', '2020-11-23', '192.168.200.16', '10:09:32', NULL),
(265, '', 'Recruiter', '2020-11-23', '192.168.200.47', '10:24:12', NULL),
(266, '', 'candidate', '2020-11-23', '10.225.1.78', '10:46:10', NULL),
(267, '', 'Gopinath', '2020-11-23', '10.225.1.78', '10:53:43', NULL),
(268, '', 'Gopinath', '2020-11-23', '10.225.1.78', '10:58:06', NULL),
(269, '', 'Gopinath', '2020-11-23', '10.225.1.78', '11:05:04', NULL),
(270, '', 'admin', '2020-11-23', '10.225.1.78', '11:20:12', NULL),
(271, '', 'Recruiter', '2020-11-23', '10.225.1.78', '11:20:56', NULL),
(272, '', 'admin', '2020-11-23', '10.225.1.78', '11:33:16', NULL),
(273, '', 'Recruiter', '2020-11-23', '10.225.1.78', '11:36:02', NULL),
(274, '', 'Recruiter', '2020-11-23', '10.225.1.78', '12:08:14', NULL),
(275, '', 'Recruiter', '2020-11-23', '192.168.200.16', '12:52:01', NULL),
(276, '', 'technical', '2020-11-23', '192.168.200.47', '14:05:16', NULL),
(277, '', 'admin', '2020-11-23', '192.168.200.16', '15:36:19', NULL),
(278, '', 'Recruiter', '2020-11-23', '192.168.200.47', '15:49:36', NULL),
(279, '', 'Recruiter', '2020-11-23', '192.168.200.16', '15:56:52', NULL),
(280, '', 'admin', '2020-11-23', '192.168.200.16', '16:02:52', NULL),
(281, '', 'Recruiter', '2020-11-23', '192.168.200.16', '16:03:52', NULL),
(282, '', 'Recruiter', '2020-11-23', '192.168.200.16', '16:07:03', NULL),
(283, '', 'technical', '2020-11-23', '10.225.1.78', '17:06:43', NULL),
(284, '', 'md', '2020-11-23', '10.225.1.78', '17:07:18', NULL),
(285, '', 'admin', '2020-11-23', '10.225.1.78', '17:07:41', NULL),
(286, '', 'admin', '2020-11-23', '::1', '17:15:11', NULL),
(287, '', 'md', '2020-11-23', '192.168.200.47', '17:52:51', NULL),
(288, '', 'md', '2020-11-23', '10.225.1.78', '17:58:27', NULL),
(289, '', 'md', '2020-11-24', '192.168.200.47', '10:15:43', NULL),
(290, '', 'admin', '2020-11-24', '192.168.200.16', '10:45:22', NULL),
(291, '', 'md', '2020-11-24', '10.225.1.78', '12:05:33', NULL),
(292, '', 'admin', '2020-11-25', '10.225.1.78', '12:22:59', NULL),
(293, '', 'md', '2020-11-27', '192.168.200.114', '09:03:49', NULL),
(294, '', 'admin', '2020-11-27', '192.168.200.16', '09:17:39', NULL),
(295, '', 'md', '2020-11-27', '192.168.200.47', '09:41:48', NULL),
(296, '', 'md', '2020-11-27', '192.168.200.47', '10:31:48', NULL),
(297, '', 'Recruiter', '2020-11-27', '192.168.200.16', '11:06:12', NULL),
(298, '', 'technical', '2020-11-27', '192.168.200.47', '11:22:18', NULL),
(299, '', 'Recruiter', '2020-11-27', '192.168.200.47', '11:32:12', NULL),
(300, '', 'technical', '2020-11-27', '192.168.200.47', '11:47:52', NULL),
(301, '', 'admin', '2021-02-16', '192.168.201.12', '09:57:23', NULL),
(302, '', 'admin', '2021-02-16', '192.168.201.15', '10:06:40', NULL),
(303, '', 'admin', '2021-02-16', '192.168.201.12', '10:30:13', NULL),
(304, '', 'admin', '2021-02-17', '192.168.201.12', '09:59:56', NULL),
(305, '', 'admin', '2021-02-17', '192.168.201.15', '10:09:15', NULL),
(306, '', 'admin', '2021-02-20', '192.168.201.17', '10:30:57', NULL),
(307, '', 'candidate', '2021-02-20', '192.168.201.17', '10:33:22', NULL),
(308, '', 'Gopinath', '2021-02-20', '192.168.201.17', '10:34:11', NULL),
(309, '', 'Gopinath', '2021-02-20', '192.168.201.17', '10:36:35', NULL),
(310, '', 'Recruiter', '2021-02-20', '192.168.201.17', '10:41:42', NULL),
(311, '', 'technical', '2021-02-20', '192.168.201.17', '10:42:40', NULL),
(312, '', 'md', '2021-02-20', '192.168.201.17', '10:43:31', NULL),
(313, '', 'admin', '2021-02-20', '192.168.201.176', '12:03:35', NULL),
(314, '', 'admin', '2021-02-20', '192.168.201.176', '12:06:49', NULL),
(315, '', 'candidate', '2021-02-20', '192.168.201.176', '12:11:20', NULL),
(316, '', 'Gopinath', '2021-02-20', '192.168.201.176', '12:12:46', NULL),
(317, '', 'Recruiter', '2021-02-20', '192.168.201.176', '12:13:46', NULL),
(318, '', 'admin', '2021-02-20', '192.168.201.17', '16:24:53', NULL),
(319, '', 'admin', '2021-02-20', '192.168.201.17', '16:26:26', NULL),
(320, '', 'candidate', '2021-02-20', '192.168.201.17', '16:27:40', NULL),
(321, '', 'aishwaria', '2021-02-20', '192.168.201.17', '16:29:36', NULL),
(322, '', 'Recruiter', '2021-02-20', '192.168.201.17', '16:31:51', NULL),
(323, '', 'admin', '2021-02-20', '192.168.201.17', '16:32:43', NULL),
(324, '', 'Recruiter', '2021-02-20', '192.168.201.17', '16:33:27', NULL),
(325, '', 'technical', '2021-02-20', '192.168.201.17', '16:36:13', NULL),
(326, '', 'md', '2021-02-20', '192.168.201.17', '16:39:04', NULL),
(327, '', 'admin', '2021-02-20', '192.168.201.17', '16:46:57', NULL),
(328, '', 'candidate', '2021-02-20', '192.168.201.17', '17:00:18', NULL),
(329, '', 'aishwaria', '2021-02-20', '192.168.201.17', '17:02:23', NULL),
(330, '', 'admin', '2021-02-20', '192.168.201.17', '17:03:32', NULL),
(331, '', 'admin', '2021-02-20', '192.168.201.176', '17:04:44', NULL),
(332, '', 'Recruiter', '2021-02-20', '192.168.201.17', '17:08:02', NULL),
(333, '', 'Recruiter', '2021-02-20', '192.168.201.176', '17:08:10', NULL),
(334, '', 'technical', '2021-02-20', '192.168.201.17', '17:10:21', NULL),
(335, '', 'technical', '2021-02-20', '192.168.201.176', '17:10:48', NULL),
(336, '', 'md', '2021-02-20', '192.168.201.17', '17:11:06', NULL),
(337, '', 'candidate', '2021-02-20', '192.168.201.176', '17:15:21', NULL),
(338, '', 'aishwaria', '2021-02-20', '192.168.201.176', '17:16:54', NULL),
(339, '', 'admin', '2021-02-20', '192.168.201.176', '17:17:59', NULL),
(340, '', 'Recruiter', '2021-02-20', '192.168.201.176', '17:18:55', NULL),
(341, '', 'technical', '2021-02-20', '192.168.201.17', '17:38:44', NULL),
(342, '', 'admin', '2021-02-22', '192.168.201.176', '09:22:13', NULL),
(343, '', 'candidate', '2021-02-22', '192.168.201.176', '09:34:16', NULL),
(344, '', 'Ishwarya', '2021-02-22', '192.168.201.176', '09:41:26', NULL),
(345, '', 'admin', '2021-02-22', '192.168.201.176', '09:50:37', NULL),
(346, '', 'admin', '2021-02-22', '192.168.201.10', '11:06:13', NULL),
(347, '', 'candidate', '2021-02-22', '192.168.201.10', '11:08:34', NULL),
(348, '', 'sakthi', '2021-02-22', '192.168.201.10', '11:12:18', NULL),
(349, '', 'Recruiter', '2021-02-22', '192.168.201.10', '11:15:58', NULL),
(350, '', 'admin', '2021-02-22', '192.168.201.10', '11:17:07', NULL),
(351, '', 'Recruiter', '2021-02-22', '192.168.201.10', '11:22:54', NULL),
(352, '', 'admin', '2021-02-22', '192.168.201.15', '11:24:41', NULL),
(353, '', 'candidate', '2021-02-22', '192.168.201.15', '11:25:30', NULL),
(354, '', 'admin', '2021-02-22', '192.168.201.15', '11:27:37', NULL),
(355, '', 'admin', '2021-02-22', '192.168.201.15', '11:28:40', NULL),
(356, '', 'technical', '2021-02-22', '192.168.201.10', '11:28:49', NULL),
(357, '', 'Recruiter', '2021-02-22', '192.168.201.15', '11:30:56', NULL),
(358, '', 'technical', '2021-02-22', '192.168.201.15', '11:31:48', NULL),
(359, '', 'md', '2021-02-22', '192.168.201.15', '11:32:32', NULL),
(360, '', 'aishwaria', '2021-02-22', '192.168.201.15', '11:33:05', NULL),
(361, '', 'md', '2021-02-22', '192.168.201.10', '11:33:18', NULL),
(362, '', 'aishwaria', '2021-02-22', '192.168.201.15', '11:33:43', NULL),
(363, '', 'admin', '2021-02-22', '192.168.201.10', '11:33:51', NULL),
(364, '', 'aishwaria', '2021-02-22', '192.168.201.15', '11:38:05', NULL),
(365, '', 'candidate', '2021-02-22', '192.168.201.15', '11:41:15', NULL),
(366, '', 'Recruiter', '2021-02-22', '192.168.201.15', '11:41:50', NULL),
(367, '', 'aishwaria', '2021-02-22', '192.168.201.15', '11:47:51', NULL),
(368, '', 'aishwaria', '2021-02-22', '192.168.201.15', '11:51:06', NULL),
(369, '', 'aishwaria', '2021-02-22', '192.168.201.15', '11:53:12', NULL),
(370, '', 'admin', '2021-02-22', '192.168.201.176', '11:58:43', NULL),
(371, '', 'aishwaria', '2021-02-22', '192.168.201.15', '12:13:01', NULL),
(372, '', 'aishwaria', '2021-02-22', '192.168.201.15', '12:13:56', NULL),
(373, '', 'aishwaria', '2021-02-22', '192.168.201.15', '12:14:49', NULL),
(374, '', 'aishwaria', '2021-02-22', '192.168.201.15', '12:20:47', NULL),
(375, '', 'Ishwarya', '2021-02-22', '192.168.201.15', '12:26:07', NULL),
(376, '', 'Ishwarya', '2021-02-22', '192.168.201.15', '12:33:42', NULL),
(377, '', 'Ishwarya', '2021-02-22', '192.168.201.15', '12:36:42', NULL),
(378, '', 'admin', '2021-02-22', '192.168.201.15', '12:40:26', NULL),
(379, '', 'admin', '2021-02-22', '192.168.201.12', '14:21:38', NULL),
(380, '', 'admin', '2021-02-22', '192.168.201.12', '14:59:03', NULL),
(381, '', 'Recruiter', '2021-02-22', '192.168.201.12', '15:17:12', NULL),
(382, '', 'admin', '2021-02-22', '192.168.201.12', '15:22:50', NULL),
(383, '', 'Recruiter', '2021-02-22', '192.168.201.12', '15:32:47', NULL),
(384, '', 'admin', '2021-02-22', '192.168.201.12', '15:34:52', NULL),
(385, '', 'technical', '2021-02-22', '192.168.201.12', '15:59:30', NULL),
(386, '', 'md', '2021-02-22', '192.168.201.12', '16:03:37', NULL),
(387, '', 'md', '2021-02-22', '192.168.201.12', '16:04:12', NULL),
(388, '', 'technical', '2021-02-22', '192.168.201.12', '16:06:05', NULL),
(389, '', 'md', '2021-02-22', '192.168.201.12', '16:13:01', NULL),
(390, '', 'technical', '2021-02-22', '192.168.201.12', '16:30:20', NULL),
(391, '', 'Gopinath', '2021-02-22', '192.168.201.12', '16:38:11', NULL),
(392, '', 'admin', '2021-02-22', '192.168.201.12', '16:38:59', NULL),
(393, '', 'admin', '2021-02-22', '192.168.201.12', '16:56:34', NULL),
(394, '', 'aishwaria', '2021-02-22', '192.168.201.12', '17:10:07', NULL),
(395, '', 'admin', '2021-02-22', '192.168.201.12', '17:18:12', NULL),
(396, '', 'technical', '2021-02-22', '192.168.201.12', '17:25:12', NULL),
(397, '', 'admin', '2021-02-22', '192.168.201.12', '17:32:39', NULL),
(398, '', 'admin', '2021-02-24', '192.168.201.12', '11:59:43', NULL),
(399, '', 'admin', '2021-02-24', '192.168.201.12', '12:00:45', NULL),
(400, '', 'candidate', '2021-02-24', '192.168.201.12', '12:02:01', NULL),
(401, '', 'Recruiter', '2021-02-24', '192.168.201.12', '12:29:56', NULL),
(402, '', 'Abinaya', '2021-02-24', '192.168.201.12', '12:47:11', NULL),
(403, '', 'admin', '2021-02-24', '192.168.201.12', '12:53:03', NULL),
(404, '', 'technical', '2021-02-24', '192.168.201.12', '13:00:20', NULL),
(405, '', 'md', '2021-02-24', '192.168.201.12', '13:01:52', NULL),
(406, '', 'md', '2021-02-24', '192.168.201.12', '13:22:43', NULL),
(407, '', 'admin', '2021-02-24', '192.168.201.12', '14:18:31', NULL),
(408, '', 'admin', '2021-02-24', '192.168.201.12', '14:20:27', NULL),
(409, '', 'Recruiter', '2021-02-24', '192.168.201.12', '14:21:47', NULL),
(410, '', 'Recruiter', '2021-02-24', '192.168.201.12', '14:31:10', NULL),
(411, '', 'technical', '2021-02-24', '192.168.201.12', '14:31:32', NULL),
(412, '', 'md', '2021-02-24', '192.168.201.12', '14:33:36', NULL),
(413, '', 'admin', '2021-02-24', '192.168.201.12', '14:38:39', NULL),
(414, '', 'Recruiter', '2021-02-24', '192.168.201.12', '15:49:20', NULL),
(415, '', 'technical', '2021-02-24', '192.168.201.12', '15:52:55', NULL),
(416, '', 'md', '2021-02-24', '192.168.201.12', '15:54:17', NULL),
(417, '', 'candidate', '2021-02-24', '192.168.201.161', '16:14:01', NULL),
(418, '', 'candidate', '2021-02-24', '192.168.201.161', '16:15:10', NULL),
(419, '', 'Abinaya', '2021-02-24', '192.168.201.161', '16:17:25', NULL),
(420, '', 'admin', '2021-02-24', '192.168.201.161', '16:18:22', NULL),
(421, '', 'Recruiter', '2021-02-24', '192.168.201.161', '16:25:09', NULL),
(422, '', 'technical', '2021-02-24', '192.168.201.161', '16:32:43', NULL),
(423, '', 'md', '2021-02-24', '192.168.201.161', '16:33:12', NULL),
(424, '', 'admin', '2021-02-24', '192.168.201.161', '16:33:47', NULL),
(425, '', 'admin', '2021-02-24', '192.168.201.12', '17:00:19', NULL),
(426, '', 'admin', '2021-02-25', '192.168.201.176', '10:21:32', NULL),
(427, '', 'Abinaya', '2021-02-25', '192.168.201.176', '10:36:13', NULL),
(428, '', 'admin', '2021-02-25', '192.168.201.176', '10:37:47', NULL),
(429, '', 'Ishwarya', '2021-02-25', '192.168.201.176', '11:20:45', NULL),
(430, '', 'admin', '2021-02-25', '192.168.201.176', '12:10:36', NULL),
(431, '', 'Recruiter', '2021-02-25', '192.168.201.176', '12:17:45', NULL),
(432, '', 'Recruiter', '2021-02-25', '192.168.201.176', '13:19:03', NULL),
(433, '', 'admin', '2021-02-25', '192.168.201.176', '13:20:31', NULL),
(434, '', 'admin', '2021-03-01', '192.168.201.15', '09:27:01', NULL),
(435, '', 'admin', '2021-03-01', '192.168.201.176', '09:30:37', NULL),
(436, '', 'technical', '2021-03-01', '192.168.201.15', '09:37:49', NULL),
(437, '', 'admin', '2021-03-01', '192.168.201.15', '10:06:36', NULL),
(438, '', 'hod', '2021-03-01', '192.168.201.15', '10:53:56', NULL),
(439, '', 'hod', '2021-03-01', '192.168.201.15', '11:15:25', NULL),
(440, '', 'technical', '2021-03-01', '192.168.201.15', '11:38:04', NULL),
(441, '', 'hod', '2021-03-01', '192.168.201.15', '11:49:29', NULL),
(442, '', 'md', '2021-03-01', '192.168.201.15', '11:49:59', NULL),
(443, '', 'hod', '2021-03-01', '192.168.201.15', '11:52:31', NULL),
(444, '', 'technical', '2021-03-01', '192.168.201.15', '11:55:20', NULL),
(445, '', 'md', '2021-03-01', '192.168.201.15', '11:57:55', NULL),
(446, '', 'hod', '2021-03-01', '192.168.201.15', '11:59:17', NULL),
(447, '', 'technical', '2021-03-01', '192.168.201.15', '12:10:48', NULL),
(448, '', 'md', '2021-03-01', '192.168.201.15', '12:11:33', NULL),
(449, '', 'hod', '2021-03-01', '192.168.201.15', '12:20:36', NULL),
(450, '', 'technical', '2021-03-01', '192.168.201.15', '12:40:29', NULL),
(451, '', 'hod', '2021-03-01', '192.168.201.15', '12:40:51', NULL),
(452, '', 'hod', '2021-03-01', '192.168.201.15', '12:43:04', NULL),
(453, '', 'hod', '2021-03-01', '192.168.201.15', '12:44:08', NULL),
(454, '', 'md', '2021-03-01', '192.168.201.15', '12:44:30', NULL),
(455, '', 'hod', '2021-03-01', '192.168.201.15', '12:49:51', NULL),
(456, '', 'hod', '2021-03-01', '192.168.201.15', '12:50:38', NULL),
(457, '', 'md', '2021-03-01', '192.168.201.15', '12:52:21', NULL),
(458, '', 'technical', '2021-03-01', '192.168.201.15', '13:05:27', NULL),
(459, '', 'hod', '2021-03-01', '192.168.201.15', '13:07:54', NULL),
(460, '', 'technical', '2021-03-01', '192.168.201.15', '13:18:17', NULL),
(461, '', 'hod', '2021-03-01', '192.168.201.15', '13:21:48', NULL),
(462, '', 'hod', '2021-03-01', '192.168.201.15', '13:28:07', NULL),
(463, '', 'hod', '2021-03-01', '192.168.201.15', '14:13:46', NULL),
(464, '', 'hod', '2021-03-01', '192.168.201.15', '14:14:58', NULL),
(465, '', 'hod', '2021-03-01', '192.168.201.15', '14:28:42', NULL),
(466, '', 'technical', '2021-03-01', '192.168.201.15', '14:32:11', NULL),
(467, '', 'hod', '2021-03-01', '192.168.201.15', '14:44:59', NULL),
(468, '', 'md', '2021-03-01', '192.168.201.15', '15:04:51', NULL),
(469, '', 'hod', '2021-03-01', '192.168.201.15', '15:10:23', NULL),
(470, '', 'technical', '2021-03-01', '192.168.201.15', '15:11:04', NULL),
(471, '', 'md', '2021-03-01', '192.168.201.15', '16:11:28', NULL),
(472, '', 'technical', '2021-03-01', '192.168.201.15', '16:49:58', NULL),
(473, '', 'md', '2021-03-01', '192.168.201.15', '16:58:42', NULL),
(474, '', 'Gopinath', '2021-03-01', '192.168.201.15', '17:11:22', NULL),
(475, '', 'technical', '2021-03-01', '192.168.201.15', '17:16:23', NULL),
(476, '', 'md', '2021-03-01', '192.168.201.15', '17:16:42', NULL),
(477, '', 'md', '2021-03-02', '192.168.201.15', '09:26:19', NULL),
(478, '', 'hod', '2021-03-02', '192.168.201.15', '09:40:10', NULL),
(479, '', 'Gopinath', '2021-03-02', '192.168.201.15', '09:41:36', NULL),
(480, '', 'technical', '2021-03-02', '192.168.201.15', '09:53:18', NULL),
(481, '', 'hod', '2021-03-02', '192.168.201.15', '09:55:38', NULL),
(482, '', 'md', '2021-03-02', '192.168.201.15', '09:56:30', NULL),
(483, '', 'admin', '2021-03-02', '192.168.201.15', '09:57:29', NULL),
(484, '', 'candidate', '2021-03-02', '192.168.201.15', '09:59:13', NULL),
(485, '', 'Recruiter', '2021-03-02', '192.168.201.15', '09:59:33', NULL),
(486, '', 'technical', '2021-03-02', '192.168.201.15', '10:10:35', NULL),
(487, '', 'md', '2021-03-02', '192.168.201.15', '10:16:12', NULL),
(488, '', 'technical', '2021-03-02', '192.168.201.15', '10:23:15', NULL),
(489, '', 'md', '2021-03-02', '192.168.201.15', '10:38:32', NULL),
(490, '', 'technical', '2021-03-02', '192.168.201.15', '10:45:01', NULL),
(491, '', 'md', '2021-03-02', '192.168.201.15', '10:45:59', NULL),
(492, '', 'hod', '2021-03-02', '192.168.201.15', '10:46:49', NULL),
(493, '', 'Recruiter', '2021-03-02', '192.168.201.15', '10:47:52', NULL),
(494, '', 'hod', '2021-03-02', '192.168.201.15', '10:53:21', NULL),
(495, '', 'technical', '2021-03-02', '192.168.201.15', '10:53:47', NULL),
(496, '', 'hod', '2021-03-02', '192.168.201.15', '10:54:22', NULL),
(497, '', 'md', '2021-03-02', '192.168.201.15', '10:55:36', NULL),
(498, '', 'technical', '2021-03-02', '192.168.201.15', '10:56:43', NULL),
(499, '', 'hod', '2021-03-02', '192.168.201.15', '10:59:27', NULL),
(500, '', 'technical', '2021-03-02', '192.168.201.15', '11:00:58', NULL),
(501, '', 'md', '2021-03-02', '192.168.201.15', '11:01:18', NULL),
(502, '', 'hod', '2021-03-02', '192.168.201.15', '11:01:44', NULL),
(503, '', 'technical', '2021-03-02', '192.168.201.15', '11:02:04', NULL),
(504, '', 'hod', '2021-03-02', '192.168.201.15', '11:02:35', NULL),
(505, '', 'Recruiter', '2021-03-02', '192.168.201.15', '11:03:11', NULL),
(506, '', 'Ishwarya', '2021-03-02', '192.168.201.15', '11:04:54', NULL),
(507, '', 'candidate', '2021-03-02', '192.168.201.15', '11:07:11', NULL),
(508, '', 'admin', '2021-03-02', '192.168.201.15', '11:07:49', NULL),
(509, '', 'Recruiter', '2021-03-02', '192.168.201.15', '11:15:53', NULL),
(510, '', 'admin', '2021-03-02', '192.168.201.15', '11:27:32', NULL),
(511, '', 'Recruiter', '2021-03-02', '192.168.201.15', '11:34:09', NULL),
(512, '', 'admin', '2021-03-02', '192.168.201.15', '11:40:50', NULL),
(513, '', 'technical', '2021-03-02', '192.168.201.15', '14:33:33', NULL),
(514, '', 'admin', '2021-03-02', '192.168.201.15', '14:34:17', NULL),
(515, '', 'technical', '2021-03-02', '192.168.201.15', '14:38:07', NULL),
(516, '', 'admin', '2021-03-02', '192.168.201.15', '15:11:24', NULL),
(517, '', 'technical1', '2021-03-02', '192.168.201.15', '15:23:01', NULL),
(518, '', 'hod', '2021-03-02', '192.168.201.15', '15:25:37', NULL),
(519, '', 'technical1', '2021-03-02', '192.168.201.15', '15:31:46', NULL),
(520, '', 'admin', '2021-03-02', '192.168.201.15', '15:32:33', NULL),
(521, '', 'technical1', '2021-03-02', '192.168.201.15', '15:34:06', NULL),
(522, '', 'admin', '2021-03-02', '192.168.201.15', '15:34:35', NULL),
(523, '', 'technical', '2021-03-02', '192.168.201.15', '15:40:37', NULL),
(524, '', 'admin', '2021-03-02', '192.168.201.163', '16:20:23', NULL),
(525, '', 'candidate', '2021-03-02', '192.168.201.15', '16:44:55', NULL),
(526, '', 'VANITHA', '2021-03-02', '192.168.201.15', '16:48:01', NULL),
(527, '', 'admin', '2021-03-02', '192.168.201.15', '16:49:36', NULL),
(528, '', 'candidate', '2021-03-02', '192.168.201.15', '16:50:34', NULL),
(529, '', 'VANITHA', '2021-03-02', '192.168.201.15', '16:51:06', NULL),
(530, '', 'Gopinath', '2021-03-02', '192.168.201.15', '16:52:08', NULL),
(531, '', 'admin', '2021-03-02', '192.168.201.15', '16:56:50', NULL),
(532, '', 'VANITHA', '2021-03-02', '192.168.201.15', '16:57:42', NULL),
(533, '', 'Gopinath', '2021-03-02', '192.168.201.15', '16:58:07', NULL),
(534, '', 'Recruiter', '2021-03-02', '192.168.201.15', '17:01:15', NULL),
(535, '', 'admin', '2021-03-02', '192.168.201.15', '17:03:34', NULL),
(536, '', 'admin', '2021-03-02', '192.168.201.176', '17:06:12', NULL),
(537, '', 'admin', '2021-03-02', '192.168.201.176', '17:10:50', NULL),
(538, '', 'admin', '2021-03-02', '192.168.201.15', '17:44:35', NULL),
(539, '', 'Recruiter', '2021-03-02', '192.168.201.176', '17:44:54', NULL),
(540, '', 'admin', '2021-03-02', '192.168.201.176', '17:46:31', NULL),
(541, '', 'admin', '2021-03-03', '192.168.201.15', '09:36:21', NULL),
(542, '', 'admin', '2021-03-03', '192.168.201.15', '11:00:00', NULL),
(543, '', 'Recruiter', '2021-03-03', '192.168.201.15', '11:00:58', NULL),
(544, '', 'admin', '2021-03-03', '192.168.201.15', '11:15:54', NULL),
(545, '', 'candidate', '2021-03-03', '192.168.201.15', '11:39:26', NULL),
(546, '', 'technical', '2021-03-03', '192.168.201.15', '11:40:11', NULL),
(547, '', 'md', '2021-03-03', '192.168.201.15', '11:40:38', NULL),
(548, '', 'Abinaya', '2021-03-03', '192.168.201.15', '11:41:55', NULL),
(549, '', 'candidate', '2021-03-03', '192.168.201.15', '11:43:01', NULL),
(550, '', 'Recruiter', '2021-03-03', '192.168.201.15', '11:43:39', NULL),
(551, '', 'technical', '2021-03-03', '192.168.201.15', '11:44:26', NULL),
(552, '', 'md', '2021-03-03', '192.168.201.15', '11:45:01', NULL),
(553, '', 'hod', '2021-03-03', '192.168.201.15', '11:45:44', NULL),
(554, '', 'hod', '2021-03-03', '192.168.201.15', '11:48:38', NULL),
(555, '', 'admin', '2021-03-03', '192.168.201.15', '11:49:00', NULL),
(556, '', 'technical1', '2021-03-03', '192.168.201.15', '12:16:32', NULL),
(557, '', 'hod', '2021-03-03', '192.168.201.15', '12:19:30', NULL),
(558, '', 'technical', '2021-03-03', '192.168.201.15', '12:20:49', NULL),
(559, '', 'md', '2021-03-03', '192.168.201.15', '12:21:20', NULL),
(560, '', 'Recruiter', '2021-03-03', '192.168.201.15', '12:21:59', NULL),
(561, '', 'technical', '2021-03-03', '192.168.201.15', '12:22:56', NULL),
(562, '', 'hod', '2021-03-03', '192.168.201.15', '12:23:14', NULL),
(563, '', 'md', '2021-03-03', '192.168.201.15', '12:23:42', NULL),
(564, '', 'technical', '2021-03-03', '192.168.201.15', '12:27:24', NULL),
(565, '', 'technical', '2021-03-03', '192.168.201.15', '12:27:55', NULL),
(566, '', 'Recruiter', '2021-03-03', '192.168.201.15', '12:28:16', NULL),
(567, '', 'hod', '2021-03-03', '192.168.201.15', '12:28:46', NULL),
(568, '', 'md', '2021-03-03', '192.168.201.15', '12:33:09', NULL),
(569, '', 'Ishwarya', '2021-03-03', '192.168.201.15', '12:51:51', NULL),
(570, '', 'Recruiter', '2021-03-03', '192.168.201.15', '12:52:56', NULL),
(571, '', 'technical', '2021-03-03', '192.168.201.15', '12:53:55', NULL),
(572, '', 'hod', '2021-03-03', '192.168.201.15', '12:54:26', NULL),
(573, '', 'technical1', '2021-03-03', '192.168.201.15', '12:55:27', NULL),
(574, '', 'admin', '2021-03-03', '192.168.201.15', '12:56:15', NULL),
(575, '', 'Recruiter', '2021-03-03', '192.168.201.15', '14:35:50', NULL),
(576, '', 'candidate', '2021-03-03', '192.168.201.15', '15:49:27', NULL),
(577, '', 'Recruiter', '2021-03-03', '192.168.201.15', '15:50:16', NULL),
(578, '', 'admin', '2021-03-03', '192.168.201.15', '15:50:37', NULL),
(579, '', 'Recruiter', '2021-03-03', '192.168.201.15', '16:15:24', NULL),
(580, '', 'admin', '2021-03-03', '192.168.201.15', '17:00:13', NULL),
(581, '', 'VANITHA', '2021-03-03', '192.168.201.15', '17:00:36', NULL),
(582, '', 'admin', '2021-03-03', '192.168.201.15', '17:02:36', NULL),
(583, '', 'technical', '2021-03-03', '192.168.201.15', '17:03:08', NULL),
(584, '', 'admin', '2021-03-03', '192.168.201.15', '17:03:40', NULL),
(585, '', 'Recruiter', '2021-03-03', '192.168.201.15', '17:06:01', NULL),
(586, '', 'technical', '2021-03-03', '192.168.201.15', '17:08:01', NULL),
(587, '', 'Recruiter', '2021-03-03', '192.168.201.15', '17:12:00', NULL),
(588, '', 'VANITHA', '2021-03-03', '192.168.201.15', '17:22:45', NULL),
(589, '', 'candidate', '2021-03-03', '192.168.201.15', '17:28:03', NULL),
(590, '', 'Recruiter', '2021-03-03', '192.168.201.15', '17:31:25', NULL),
(591, '', 'technical', '2021-03-03', '192.168.201.15', '17:32:06', NULL),
(592, '', 'Recruiter', '2021-03-03', '192.168.201.15', '17:33:32', NULL),
(593, '', 'admin', '2021-03-03', '192.168.201.15', '17:34:25', NULL),
(594, '', 'Gopinath', '2021-03-03', '192.168.201.15', '17:35:39', NULL),
(595, '', 'technical', '2021-03-03', '192.168.201.15', '17:37:28', NULL),
(596, '', 'Vani', '2021-03-03', '192.168.201.15', '17:50:35', NULL),
(597, '', 'Recruiter', '2021-03-03', '192.168.201.15', '17:50:56', NULL),
(598, '', 'technical1', '2021-03-03', '192.168.201.15', '17:54:45', NULL),
(599, '', 'admin', '2021-03-04', '192.168.201.12', '09:46:14', NULL),
(600, '', 'technical', '2021-03-04', '192.168.201.12', '09:46:40', NULL),
(601, '', 'admin', '2021-03-04', '192.168.201.12', '10:02:55', NULL),
(602, '', 'technical', '2021-03-04', '192.168.201.12', '10:03:37', NULL),
(603, '', 'hod', '2021-03-04', '192.168.201.12', '10:04:12', NULL),
(604, '', 'md', '2021-03-04', '192.168.201.12', '10:04:58', NULL),
(605, '', 'Vani', '2021-03-04', '192.168.201.12', '10:07:38', NULL),
(606, '', 'admin', '2021-03-04', '192.168.201.12', '10:10:06', NULL),
(607, '', 'admin', '2021-03-04', '192.168.201.12', '10:15:51', NULL),
(608, '', 'Vani', '2021-03-04', '192.168.201.12', '10:24:16', NULL),
(609, '', 'admin', '2021-03-04', '192.168.201.12', '10:25:20', NULL),
(610, '', 'admin', '2021-03-04', '192.168.201.12', '11:01:51', NULL),
(611, '', 'technical', '2021-03-04', '192.168.201.12', '11:38:49', NULL),
(612, '', 'Gopinath', '2021-03-04', '192.168.201.12', '11:42:07', NULL),
(613, '', 'Recruiter', '2021-03-04', '192.168.201.12', '11:42:48', NULL),
(614, '', 'hod', '2021-03-04', '192.168.201.12', '12:01:13', NULL),
(615, '', 'technical', '2021-03-04', '192.168.201.12', '12:04:28', NULL),
(616, '', 'admin', '2021-03-04', '192.168.201.12', '12:05:58', NULL),
(617, '', 'Recruiter', '2021-03-04', '192.168.201.12', '12:06:53', NULL),
(618, '', 'technical', '2021-03-04', '192.168.201.12', '12:16:34', NULL),
(619, '', 'hod', '2021-03-04', '192.168.201.12', '12:18:41', NULL),
(620, '', 'md', '2021-03-04', '192.168.201.12', '12:19:24', NULL),
(621, '', 'Recruiter', '2021-03-04', '192.168.201.12', '12:29:01', NULL),
(622, '', 'technical', '2021-03-04', '192.168.201.12', '12:30:48', NULL),
(623, '', 'Recruiter', '2021-03-04', '192.168.201.12', '12:31:14', NULL),
(624, '', 'Recruiter', '2021-03-04', '192.168.201.12', '12:41:18', NULL),
(625, '', 'admin', '2021-03-04', '192.168.201.12', '14:35:24', NULL),
(626, '', 'Recruiter', '2021-03-04', '192.168.201.12', '15:52:07', NULL),
(627, '', 'candidate', '2021-03-04', '192.168.201.12', '15:52:26', NULL),
(628, '', 'Vanitha', '2021-03-04', '192.168.201.12', '15:54:41', NULL),
(629, '', 'Recruiter', '2021-03-04', '192.168.201.12', '15:55:32', NULL),
(630, '', 'admin', '2021-03-04', '192.168.201.12', '16:00:10', NULL),
(631, '', 'technical', '2021-03-04', '192.168.201.12', '16:05:30', NULL),
(632, '', 'Recruiter', '2021-03-04', '192.168.201.12', '16:15:18', NULL),
(633, '', 'admin', '2021-03-04', '192.168.201.12', '16:15:51', NULL),
(634, '', 'admin', '2021-03-04', '192.168.201.12', '16:23:11', NULL),
(635, '', 'hod', '2021-03-04', '192.168.201.12', '16:54:02', NULL),
(636, '', 'candidate', '2021-03-04', '192.168.201.12', '16:55:18', NULL),
(637, '', 'admin', '2021-03-04', '192.168.201.12', '17:02:37', NULL),
(638, '', 'admin', '2021-03-05', '192.168.201.15', '10:59:32', NULL),
(639, '', 'Recruiter', '2021-03-05', '192.168.201.15', '11:04:26', NULL),
(640, '', 'candidate', '2021-03-05', '192.168.201.12', '12:44:14', NULL),
(641, '', 'Recruiter', '2021-03-05', '192.168.201.12', '12:57:07', NULL),
(642, '', 'admin', '2021-03-05', '192.168.201.12', '13:11:57', NULL),
(643, '', 'Rajeshwari', '2021-03-05', '192.168.201.12', '13:15:03', NULL),
(644, '', 'Recruiter', '2021-03-05', '192.168.201.12', '13:22:21', NULL),
(645, '', 'Rajeshwari', '2021-03-05', '192.168.201.12', '14:21:22', NULL),
(646, '', 'admin', '2021-03-05', '192.168.201.12', '14:32:46', NULL),
(647, '', 'Rajeshwari', '2021-03-05', '192.168.201.48', '14:57:38', NULL),
(648, '', 'admin', '2021-03-05', '192.168.201.163', '15:29:27', NULL),
(649, '', 'Recruiter', '2021-03-05', '192.168.201.12', '15:37:23', NULL),
(650, '', 'technical', '2021-03-05', '192.168.201.12', '16:05:32', NULL),
(651, '', 'technical', '2021-03-05', '192.168.201.12', '16:14:57', NULL),
(652, '', 'technical', '2021-03-05', '192.168.201.12', '16:14:59', NULL),
(653, '', 'technical', '2021-03-05', '192.168.201.163', '16:20:31', NULL),
(654, '', 'technical', '2021-03-05', '192.168.201.12', '16:21:20', NULL),
(655, '', 'admin', '2021-03-05', '192.168.201.12', '16:22:17', NULL),
(656, '', 'admin', '2021-03-05', '192.168.201.12', '16:44:49', NULL),
(657, '', 'admin', '2021-03-06', '192.168.201.163', '09:14:02', NULL),
(658, '', 'Recruiter', '2021-03-06', '192.168.201.163', '10:02:22', NULL),
(659, '', 'Recruiter', '2021-03-06', '192.168.201.163', '10:04:21', NULL),
(660, '', 'candidate', '2021-03-06', '192.168.201.163', '10:12:38', NULL),
(661, '', 'Vanitha', '2021-03-06', '192.168.201.163', '10:12:55', NULL),
(662, '', 'admin', '2021-03-06', '192.168.201.12', '10:14:28', NULL),
(663, '', 'technical', '2021-03-06', '192.168.201.12', '10:17:10', NULL),
(664, '', 'Recruiter', '2021-03-06', '192.168.201.12', '10:18:33', NULL),
(665, '', 'technical', '2021-03-06', '192.168.201.12', '10:19:58', NULL),
(666, '', 'Recruiter', '2021-03-06', '192.168.201.12', '10:22:58', NULL),
(667, '', 'technical', '2021-03-06', '192.168.201.12', '10:23:39', NULL),
(668, '', 'Recruiter', '2021-03-06', '192.168.201.163', '10:24:19', NULL),
(669, '', 'candidate', '2021-03-06', '192.168.201.12', '10:26:00', NULL),
(670, '', 'candidate', '2021-03-06', '192.168.201.163', '10:26:05', NULL),
(671, '', 'admin', '2021-03-06', '192.168.201.12', '10:27:19', NULL),
(672, '', 'Recruiter', '2021-03-06', '192.168.201.12', '10:29:04', NULL),
(673, '', 'Rajeshwari', '2021-03-06', '192.168.201.48', '10:29:42', NULL),
(674, '', 'candidate', '2021-03-06', '192.168.201.12', '10:47:31', NULL),
(675, '', 'Recruiter', '2021-03-06', '192.168.201.12', '10:48:00', NULL),
(676, '', 'admin', '2021-03-06', '192.168.201.12', '10:48:17', NULL),
(677, '', 'admin', '2021-03-06', '192.168.201.12', '10:48:59', NULL),
(678, '', 'hod', '2021-03-06', '192.168.201.12', '11:02:08', NULL),
(679, '', 'md', '2021-03-06', '192.168.201.12', '11:02:44', NULL),
(680, '', 'admin', '2021-03-06', '192.168.201.12', '11:06:34', NULL),
(681, '', 'Recruiter', '2021-03-06', '192.168.201.12', '11:07:17', NULL),
(682, '', 'admin', '2021-03-06', '192.168.201.12', '11:16:56', NULL),
(683, '', 'technical', '2021-03-06', '192.168.201.12', '11:28:52', NULL),
(684, '', 'admin', '2021-03-06', '192.168.201.12', '11:42:11', NULL),
(685, '', 'Recruiter', '2021-03-06', '192.168.201.12', '11:42:44', NULL),
(686, '', 'technical', '2021-03-06', '192.168.201.12', '11:43:28', NULL),
(687, '', 'laxmi', '2021-03-06', '192.168.201.163', '11:45:03', NULL),
(688, '', 'candidate', '2021-03-06', '192.168.201.163', '11:54:07', NULL),
(689, '', 'Recruiter', '2021-03-06', '192.168.201.12', '11:57:54', NULL),
(690, '', 'candidate', '2021-03-06', '192.168.201.12', '12:12:56', NULL),
(691, '', 'admin', '2021-03-06', '192.168.201.163', '12:16:04', NULL),
(692, '', 'Rohan', '2021-03-06', '192.168.201.12', '12:16:17', NULL),
(693, '', 'Recruiter', '2021-03-06', '192.168.201.12', '12:17:12', NULL),
(694, '', 'admin', '2021-03-06', '192.168.201.12', '12:17:31', NULL),
(695, '', 'Recruiter', '2021-03-06', '192.168.201.12', '12:25:24', NULL),
(696, '', 'laxmi', '2021-03-06', '192.168.201.163', '12:27:11', NULL),
(697, '', 'technical', '2021-03-06', '192.168.201.12', '12:27:28', NULL),
(698, '', 'admin', '2021-03-06', '192.168.201.12', '12:30:46', NULL),
(699, '', 'Recruiter', '2021-03-06', '192.168.201.12', '12:33:48', NULL),
(700, '', 'admin', '2021-03-06', '192.168.201.12', '13:19:36', NULL),
(701, '', 'technical', '2021-03-06', '192.168.201.12', '16:03:59', NULL),
(702, '', 'admin', '2021-03-06', '192.168.201.12', '17:03:10', NULL),
(703, '', 'Recruiter', '2021-03-06', '192.168.201.12', '17:03:49', NULL),
(704, '', 'Vanitha', '2021-03-06', '192.168.201.163', '17:11:42', NULL),
(705, '', 'vanitha', '2021-03-06', '192.168.201.163', '17:11:42', NULL),
(706, '', 'admin', '2021-03-08', '192.168.201.163', '09:06:38', NULL),
(707, '', 'admin', '2021-03-08', '192.168.201.163', '13:02:47', NULL),
(708, '', 'Laxmi', '2021-03-08', '192.168.201.163', '15:20:43', NULL),
(709, '', 'Vani', '2021-03-08', '192.168.201.163', '15:21:48', NULL),
(710, '', 'Laxmi', '2021-03-08', '192.168.201.163', '15:25:48', NULL),
(711, '', 'Vani', '2021-03-08', '192.168.201.163', '15:48:12', NULL),
(712, '', 'Laxmi', '2021-03-08', '192.168.201.163', '15:48:32', NULL),
(713, '', 'Laxmi', '2021-03-08', '192.168.201.163', '15:55:47', NULL),
(714, '', 'Vani', '2021-03-08', '192.168.201.163', '16:54:27', NULL),
(715, '', 'Laxmi', '2021-03-08', '192.168.201.163', '16:54:51', NULL),
(716, '', 'Laxmi', '2021-03-08', '192.168.201.163', '17:04:50', NULL),
(717, '', 'Laxmi', '2021-03-08', '192.168.201.163', '17:05:27', NULL),
(718, '', 'admin', '2021-03-09', '192.168.201.163', '11:59:19', NULL),
(719, '', 'Laxmi', '2021-03-09', '192.168.201.163', '11:59:40', NULL),
(720, '', 'Laxmi', '2021-03-09', '192.168.201.163', '12:32:39', NULL),
(721, '', 'admin', '2021-03-09', '192.168.201.163', '12:35:15', NULL),
(722, '', 'admin', '2021-03-10', '192.168.201.163', '09:07:24', NULL),
(723, '', 'Laxmi', '2021-03-10', '192.168.201.163', '11:12:24', NULL),
(724, '', 'admin', '2021-03-11', '192.168.201.163', '09:11:52', NULL),
(725, '', 'admin', '2021-03-11', '192.168.201.163', '09:27:02', NULL),
(726, '', 'admin', '2021-03-11', '192.168.201.163', '10:04:55', NULL),
(727, '', 'admin', '2021-03-11', '192.168.201.163', '10:55:23', NULL),
(728, '', 'admin', '2021-03-11', '192.168.201.15', '11:00:59', NULL),
(729, '', 'admin', '2021-03-11', '192.168.201.17', '11:11:10', NULL),
(730, '', 'admin', '2021-03-11', '192.168.201.17', '11:13:22', NULL),
(731, '', 'Recruiter', '2021-03-11', '192.168.201.17', '11:17:03', NULL),
(732, '', 'admin', '2021-03-11', '192.168.201.17', '11:17:21', NULL),
(733, '', 'admin', '2021-03-11', '192.168.201.17', '11:22:46', NULL),
(734, '', 'admin', '2021-03-11', '192.168.201.12', '11:39:28', NULL);
INSERT INTO `z_log_entry` (`id`, `user_id`, `user_name`, `logdate`, `system_ip`, `time`, `logout`) VALUES
(735, '', 'Ishwarya', '2021-03-11', '192.168.201.12', '14:25:17', NULL),
(736, '', 'Ishwarya', '2021-03-11', '192.168.201.12', '14:28:58', NULL),
(737, '', 'admin', '2021-03-11', '192.168.201.163', '14:30:01', NULL),
(738, '', 'Ishwarya', '2021-03-11', '192.168.201.12', '14:30:21', NULL),
(739, '', 'admin', '2021-03-11', '192.168.201.163', '15:51:21', NULL),
(740, '', 'admin', '2021-03-11', '192.168.201.12', '16:22:53', NULL),
(741, '', 'admin', '2021-03-11', '192.168.201.15', '17:41:00', NULL),
(742, '', 'admin', '2021-03-12', '192.168.201.17', '11:42:19', NULL),
(743, '', 'admin', '2021-03-15', '192.168.201.17', '09:48:53', NULL),
(744, '', 'admin', '2021-03-15', '192.168.201.12', '09:57:07', NULL),
(745, '', 'admin', '2021-03-15', '192.168.201.17', '09:58:31', NULL),
(746, '', 'admin', '2021-03-15', '192.168.201.14', '11:33:37', NULL),
(747, '', 'admin', '2021-03-15', '192.168.201.161', '11:35:26', NULL),
(748, '', 'Rajeshwari', '2021-03-15', '192.168.201.48', '11:45:13', NULL),
(749, '', 'admin', '2021-03-15', '192.168.201.17', '12:41:03', NULL),
(750, '', 'admin', '2021-03-15', '192.168.201.161', '13:15:02', NULL),
(751, '', 'admin', '2021-03-15', '192.168.201.17', '13:21:49', NULL),
(752, '', 'admin', '2021-03-15', '192.168.201.12', '15:23:16', NULL),
(753, '', 'admin', '2021-03-15', '192.168.201.17', '15:49:29', NULL),
(754, '', 'Recruiter', '2021-03-15', '192.168.201.12', '16:12:11', NULL),
(755, '', 'admin', '2021-03-15', '192.168.201.12', '17:15:07', NULL),
(756, '', 'Recruiter', '2021-03-15', '192.168.201.12', '17:15:46', NULL),
(757, '', 'admin', '2021-03-16', '192.168.201.15', '09:04:55', NULL),
(758, '', 'admin', '2021-03-16', '192.168.201.161', '09:17:07', NULL),
(759, '', 'admin', '2021-03-16', '192.168.201.12', '09:22:59', NULL),
(760, '', 'admin', '2021-03-16', '192.168.201.14', '09:30:24', NULL),
(761, '', 'admin', '2021-03-16', '192.168.201.163', '09:41:45', NULL),
(762, '', 'admin', '2021-03-16', '192.168.201.17', '10:41:42', NULL),
(763, '', 'candidate', '2021-03-16', '192.168.201.17', '10:53:31', NULL),
(764, '', 'Recruiter', '2021-03-16', '192.168.201.163', '11:22:59', NULL),
(765, '', 'hod', '2021-03-16', '192.168.201.163', '11:23:43', NULL),
(766, '', 'md', '2021-03-16', '192.168.201.163', '11:24:06', NULL),
(767, '', 'hod', '2021-03-16', '192.168.201.163', '11:33:33', NULL),
(768, '', 'technical', '2021-03-16', '192.168.201.163', '11:33:58', NULL),
(769, '', 'admin', '2021-03-16', '192.168.201.163', '11:39:14', NULL),
(770, '', 'candidate', '2021-03-16', '192.168.201.163', '11:40:28', NULL),
(771, '', 'Laxmipriya', '2021-03-16', '192.168.201.163', '11:44:58', NULL),
(772, '', 'admin', '2021-03-16', '192.168.201.163', '11:47:53', NULL),
(773, '', 'Rajeshwari', '2021-03-16', '192.168.201.17', '12:07:21', NULL),
(774, '', 'balachandar', '2021-03-16', '192.168.201.17', '12:07:48', NULL),
(775, '', 'Laxmipriya', '2021-03-16', '192.168.201.17', '12:08:10', NULL),
(776, '', 'admin', '2021-03-16', '192.168.201.17', '12:09:10', NULL),
(777, '', 'Recruiter', '2021-03-16', '192.168.201.17', '12:13:12', NULL),
(778, '', 'admin', '2021-03-16', '192.168.201.17', '12:31:30', NULL),
(779, '', 'meena', '2021-03-16', '192.168.201.17', '12:40:03', NULL),
(780, '', 'admin', '2021-03-16', '192.168.201.17', '12:41:03', NULL),
(781, '', 'Recruiter', '2021-03-16', '192.168.201.17', '12:41:27', NULL),
(782, '', 'admin', '2021-03-16', '192.168.201.17', '13:06:58', NULL),
(783, '', 'Recruiter', '2021-03-16', '192.168.201.17', '13:07:23', NULL),
(784, '', 'technical', '2021-03-16', '192.168.201.17', '13:08:11', NULL),
(785, '', 'md', '2021-03-16', '192.168.201.17', '14:00:44', NULL),
(786, '', 'admin', '2021-03-16', '192.168.201.17', '14:16:21', NULL),
(787, '', 'Vanitha', '2021-03-16', '192.168.201.17', '14:18:25', NULL),
(788, '', 'vanitha', '2021-03-16', '192.168.201.17', '14:18:25', NULL),
(789, '', 'admin', '2021-03-16', '192.168.201.17', '14:20:06', NULL),
(790, '', 'Laxmipriya', '2021-03-16', '192.168.201.17', '14:20:35', NULL),
(791, '', 'Recruiter', '2021-03-16', '192.168.201.17', '14:25:12', NULL),
(792, '', 'admin', '2021-03-16', '192.168.201.17', '14:26:27', NULL),
(793, '', 'admin', '2021-03-16', '192.168.201.17', '14:27:13', NULL),
(794, '', 'Vanitha', '2021-03-16', '192.168.201.17', '14:27:58', NULL),
(795, '', 'vanitha', '2021-03-16', '192.168.201.17', '14:27:58', NULL),
(796, '', 'Gopinath', '2021-03-16', '192.168.201.17', '14:28:38', NULL),
(797, '', 'admin', '2021-03-16', '192.168.201.17', '14:29:29', NULL),
(798, '', 'candidate', '2021-03-16', '192.168.201.17', '14:30:44', NULL),
(799, '', 'mekala', '2021-03-16', '192.168.201.17', '14:32:23', NULL),
(800, '', 'Recruiter', '2021-03-16', '192.168.201.17', '14:33:13', NULL),
(801, '', 'admin', '2021-03-16', '192.168.201.17', '14:33:38', NULL),
(802, '', 'Recruiter', '2021-03-16', '192.168.201.17', '14:34:06', NULL),
(803, '', 'Recruiter', '2021-03-16', '192.168.201.17', '14:36:45', NULL),
(804, '', 'technical', '2021-03-16', '192.168.201.17', '14:37:24', NULL),
(805, '', 'md', '2021-03-16', '192.168.201.17', '14:38:41', NULL),
(806, '', 'admin', '2021-03-16', '192.168.201.17', '14:59:21', NULL),
(807, '', 'admin', '2021-03-16', '192.168.201.163', '15:21:43', NULL),
(808, '', 'Recruiter', '2021-03-16', '192.168.201.163', '15:22:07', NULL),
(809, '', 'technical', '2021-03-16', '192.168.201.163', '16:27:53', NULL),
(810, '', 'hod', '2021-03-16', '192.168.201.163', '16:28:50', NULL),
(811, '', 'Recruiter', '2021-03-16', '192.168.201.163', '16:30:27', NULL),
(812, '', 'admin', '2021-03-16', '192.168.201.163', '16:30:45', NULL),
(813, '', 'md', '2021-03-16', '192.168.201.163', '16:45:46', NULL),
(814, '', 'admin', '2021-03-16', '192.168.201.163', '17:10:33', NULL),
(815, '', 'Recruiter', '2021-03-16', '192.168.201.163', '17:11:19', NULL),
(816, '', 'admin', '2021-03-16', '192.168.201.163', '17:28:09', NULL),
(817, '', 'md', '2021-03-16', '192.168.201.163', '17:38:24', NULL),
(818, '', 'admin', '2021-03-17', '192.168.201.12', '09:10:24', NULL),
(819, '', 'md', '2021-03-17', '192.168.201.163', '09:19:00', NULL),
(820, '', 'admin', '2021-03-17', '192.168.201.19', '09:24:57', NULL),
(821, '', 'admin', '2021-03-17', '192.168.201.19', '09:25:35', NULL),
(822, '', 'candidate', '2021-03-17', '192.168.201.19', '09:27:03', NULL),
(823, '', 'admin', '2021-03-17', '192.168.201.163', '09:27:18', NULL),
(824, '', 'Jefferarason', '2021-03-17', '192.168.201.19', '09:28:29', NULL),
(825, '', 'Recruiter', '2021-03-17', '192.168.201.19', '09:29:23', NULL),
(826, '', 'admin', '2021-03-17', '192.168.201.19', '09:29:44', NULL),
(827, '', 'Recruiter', '2021-03-17', '192.168.201.19', '09:30:14', NULL),
(828, '', 'admin', '2021-03-17', '192.168.201.163', '09:32:31', NULL),
(829, '', 'Recruiter', '2021-03-17', '192.168.201.19', '09:32:51', NULL),
(830, '', 'technical', '2021-03-17', '192.168.201.19', '09:33:42', NULL),
(831, '', 'md', '2021-03-17', '192.168.201.19', '09:37:26', NULL),
(832, '', 'admin', '2021-03-17', '192.168.201.163', '09:38:17', NULL),
(833, '', 'technical', '2021-03-17', '192.168.201.163', '09:43:57', NULL),
(834, '', 'candidate', '2021-03-17', '192.168.201.19', '09:48:01', NULL),
(835, '', 'sindhu', '2021-03-17', '192.168.201.19', '09:50:57', NULL),
(836, '', 'admin', '2021-03-17', '192.168.201.19', '09:52:00', NULL),
(837, '', 'Recruiter', '2021-03-17', '192.168.201.19', '09:53:22', NULL),
(838, '', 'technical', '2021-03-17', '192.168.201.19', '09:55:49', NULL),
(839, '', 'md', '2021-03-17', '192.168.201.19', '09:58:45', NULL),
(840, '', 'candidate', '2021-03-17', '192.168.201.19', '09:59:50', NULL),
(841, '', 'sakthi', '2021-03-17', '192.168.201.19', '10:01:51', NULL),
(842, '', 'sakthi', '2021-03-17', '192.168.201.19', '10:01:51', NULL),
(843, '', 'admin', '2021-03-17', '192.168.201.19', '10:03:04', NULL),
(844, '', 'Recruiter', '2021-03-17', '192.168.201.19', '10:03:54', NULL),
(845, '', 'technical', '2021-03-17', '192.168.201.19', '10:06:43', NULL),
(846, '', 'md', '2021-03-17', '192.168.201.19', '10:07:37', NULL),
(847, '', 'admin', '2021-03-17', '192.168.201.19', '10:08:56', NULL),
(848, '', 'md', '2021-03-17', '192.168.201.163', '10:23:31', NULL),
(849, '', 'technical', '2021-03-17', '192.168.201.163', '10:52:50', NULL),
(850, '', 'admin', '2021-03-17', '192.168.201.163', '10:54:20', NULL),
(851, '', 'admin', '2021-03-17', '192.168.201.17', '10:54:52', NULL),
(852, '', 'Recruiter', '2021-03-17', '192.168.201.17', '10:55:33', NULL),
(853, '', 'admin', '2021-03-17', '192.168.201.17', '10:57:13', NULL),
(854, '', 'candidate', '2021-03-17', '192.168.201.17', '10:57:36', NULL),
(855, '', 'Uma', '2021-03-17', '192.168.201.17', '10:59:01', NULL),
(856, '', 'admin', '2021-03-17', '192.168.201.17', '10:59:45', NULL),
(857, '', 'Recruiter', '2021-03-17', '192.168.201.17', '11:00:12', NULL),
(858, '', 'mekala', '2021-03-17', '192.168.201.163', '11:00:36', NULL),
(859, '', 'Recruiter', '2021-03-17', '192.168.201.17', '11:02:58', NULL),
(860, '', 'technical', '2021-03-17', '192.168.201.17', '11:04:15', NULL),
(861, '', 'md', '2021-03-17', '192.168.201.17', '11:05:17', NULL),
(862, '', 'admin', '2021-03-17', '192.168.201.17', '11:56:42', NULL),
(863, '', 'candidate', '2021-03-17', '192.168.201.163', '11:56:55', NULL),
(864, '', 'mekala', '2021-03-17', '192.168.201.17', '11:58:11', NULL),
(865, '', 'meenakshi', '2021-03-17', '192.168.201.163', '11:59:36', NULL),
(866, '', 'admin', '2021-03-17', '192.168.201.12', '12:03:13', NULL),
(867, '', 'Recruiter', '2021-03-17', '192.168.201.12', '12:04:04', NULL),
(868, '', 'technical', '2021-03-17', '192.168.201.12', '12:08:16', NULL),
(869, '', 'md', '2021-03-17', '192.168.201.12', '12:10:36', NULL),
(870, '', 'admin', '2021-03-17', '192.168.201.12', '12:11:29', NULL),
(871, '', 'admin', '2021-03-17', '192.168.201.12', '12:13:32', NULL),
(872, '', 'admin', '2021-03-17', '192.168.201.17', '12:16:00', NULL),
(873, '', 'mekala', '2021-03-17', '192.168.201.12', '12:23:03', NULL),
(874, '', 'admin', '2021-03-17', '192.168.201.12', '12:33:02', NULL),
(875, '', 'admin', '2021-03-17', '192.168.201.163', '12:34:43', NULL),
(876, '', 'mekala', '2021-03-17', '192.168.201.163', '12:46:26', NULL),
(877, '', 'admin', '2021-03-17', '192.168.201.15', '14:21:07', NULL),
(878, '', 'candidate', '2021-03-17', '192.168.201.17', '14:42:55', NULL),
(879, '', 'candidate', '2021-03-17', '192.168.201.17', '14:45:15', NULL),
(880, '', 'sathish', '2021-03-17', '192.168.201.17', '14:46:23', NULL),
(881, '', 'mani', '2021-03-17', '192.168.201.17', '14:46:34', NULL),
(882, '', 'admin', '2021-03-17', '192.168.201.163', '14:46:34', NULL),
(883, '', 'admin', '2021-03-17', '192.168.201.17', '14:47:19', NULL),
(884, '', 'admin', '2021-03-17', '192.168.201.17', '14:48:11', NULL),
(885, '', 'Recruiter', '2021-03-17', '192.168.201.17', '14:49:41', NULL),
(886, '', 'Recruiter', '2021-03-17', '192.168.201.17', '14:51:10', NULL),
(887, '', 'technical', '2021-03-17', '192.168.201.17', '14:56:49', NULL),
(888, '', 'md', '2021-03-17', '192.168.201.17', '14:57:42', NULL),
(889, '', 'Recruiter', '2021-03-17', '192.168.201.17', '15:00:55', NULL),
(890, '', 'md', '2021-03-17', '192.168.201.17', '15:01:43', NULL),
(891, '', 'technical', '2021-03-17', '192.168.201.17', '15:02:03', NULL),
(892, '', 'mekala', '2021-03-17', '192.168.201.17', '15:15:43', NULL),
(893, '', 'candidate', '2021-03-17', '192.168.201.163', '16:07:59', NULL),
(894, '', 'mekala', '2021-03-17', '192.168.201.163', '16:15:50', NULL),
(895, '', 'admin', '2021-03-17', '192.168.201.15', '17:26:28', NULL),
(896, '', 'admin', '2021-03-17', '192.168.201.12', '17:41:50', NULL),
(897, '', 'admin', '2021-03-18', '192.168.201.15', '09:06:58', NULL),
(898, '', 'admin', '2021-03-18', '192.168.201.163', '09:07:13', NULL),
(899, '', 'admin', '2021-03-18', '192.168.201.163', '09:08:12', NULL),
(900, '', 'admin', '2021-03-18', '192.168.201.12', '09:32:23', NULL),
(901, '', 'admin', '2021-03-18', '192.168.201.161', '09:34:28', NULL),
(902, '', 'admin', '2021-03-18', '192.168.201.15', '09:57:23', NULL),
(903, '', 'technical', '2021-03-18', '192.168.201.163', '10:03:07', NULL),
(904, '', 'hod', '2021-03-18', '192.168.201.163', '10:06:58', NULL),
(905, '', 'md', '2021-03-18', '192.168.201.163', '10:07:31', NULL),
(906, '', 'admin', '2021-03-18', '192.168.201.163', '10:07:57', NULL),
(907, '', 'mekala', '2021-03-18', '192.168.201.163', '10:08:15', NULL),
(908, '', 'Laxmipriya', '2021-03-18', '192.168.201.163', '10:26:02', NULL),
(909, '', 'admin', '2021-03-18', '192.168.201.12', '12:35:47', NULL),
(910, '', 'admin', '2021-03-18', '192.168.201.17', '14:29:00', NULL),
(911, '', 'admin', '2021-03-18', '192.168.201.12', '15:01:56', NULL),
(912, '', 'admin', '2021-03-18', '192.168.201.163', '15:22:00', NULL),
(913, '', 'Laxmipriya', '2021-03-18', '192.168.201.163', '15:22:58', NULL),
(914, '', 'admin', '2021-03-18', '192.168.201.163', '16:00:44', NULL),
(915, '', 'admin', '2021-03-18', '192.168.201.10', '16:02:45', NULL),
(916, '', 'admin', '2021-03-18', '192.168.201.17', '16:28:47', NULL),
(917, '', 'Laxmipriya', '2021-03-18', '192.168.201.163', '17:26:54', NULL),
(918, '', 'admin', '2021-03-19', '192.168.201.163', '09:06:38', NULL),
(919, '', 'Laxmipriya', '2021-03-19', '192.168.201.163', '09:08:21', NULL),
(920, '', 'Laxmipriya', '2021-03-19', '192.168.201.163', '09:09:25', NULL),
(921, '', 'admin', '2021-03-19', '192.168.201.12', '09:12:37', NULL),
(922, '', 'admin', '2021-03-19', '192.168.201.15', '09:18:07', NULL),
(923, '', 'admin', '2021-03-19', '192.168.201.163', '09:22:55', NULL),
(924, '', 'Laxmipriya', '2021-03-19', '192.168.201.163', '09:23:05', NULL),
(925, '', 'admin', '2021-03-19', '192.168.201.163', '10:16:45', NULL),
(926, '', 'candidate', '2021-03-19', '192.168.201.163', '10:18:13', NULL),
(927, '', 'admin', '2021-03-19', '192.168.201.15', '17:26:42', NULL),
(928, '', 'admin', '2021-03-19', '192.168.201.15', '17:30:21', NULL),
(929, '', 'admin', '2021-03-20', '192.168.201.163', '09:20:04', NULL),
(930, '', 'admin', '2021-03-20', '192.168.201.15', '09:36:46', NULL),
(931, '', 'admin', '2021-03-20', '192.168.201.12', '09:40:46', NULL),
(932, '', 'candidate', '2021-03-20', '192.168.201.163', '10:49:16', NULL),
(933, '', 'admin', '2021-03-20', '192.168.201.17', '11:10:02', NULL),
(934, '', 'admin', '2021-03-20', '192.168.201.17', '11:19:18', NULL),
(935, '', 'admin', '2021-03-20', '192.168.201.41', '15:01:18', NULL),
(936, '', 'Laxmipriya', '2021-03-20', '192.168.201.12', '15:43:02', NULL),
(937, '', 'Laxmipriya', '2021-03-20', '192.168.201.163', '15:44:27', NULL),
(938, '', 'admin', '2021-03-20', '192.168.201.15', '16:24:49', NULL),
(939, '', 'admin', '2021-03-22', '192.168.201.12', '09:18:42', NULL),
(940, '', 'Laxmipriya', '2021-03-22', '192.168.201.12', '09:20:02', NULL),
(941, '', 'admin', '2021-03-22', '192.168.201.151', '09:20:56', NULL),
(942, '', 'admin', '2021-03-22', '192.168.201.17', '09:25:48', NULL),
(943, '', 'admin', '2021-03-22', '192.168.201.17', '09:26:10', NULL),
(944, '', 'admin', '2021-03-22', '192.168.201.163', '09:37:31', NULL),
(945, '', 'Laxmipriya', '2021-03-22', '192.168.201.12', '09:39:41', NULL),
(946, '', 'admin', '2021-03-22', '192.168.201.15', '09:44:06', NULL),
(947, '', 'admin', '2021-03-22', '192.168.201.163', '10:00:33', NULL),
(948, '', 'admin', '2021-03-22', '192.168.201.163', '10:04:12', NULL),
(949, '', 'admin', '2021-03-22', '192.168.201.12', '10:05:09', NULL),
(950, '', 'Laxmipriya', '2021-03-22', '192.168.201.12', '13:22:12', NULL),
(951, '', 'admin', '2021-03-22', '192.168.201.12', '13:31:44', NULL),
(952, '', 'Laxmipriya', '2021-03-22', '192.168.201.12', '16:40:55', NULL),
(953, '', 'admin', '2021-03-22', '192.168.201.15', '16:44:59', NULL),
(954, '', 'admin', '2021-03-22', '192.168.201.12', '16:45:47', NULL),
(955, '', 'admin', '2021-03-22', '192.168.201.40', '17:41:54', NULL),
(956, '', 'admin', '2021-03-23', '192.168.201.163', '09:03:47', NULL),
(957, '', 'Laxmipriya', '2021-03-23', '192.168.201.12', '09:25:49', NULL),
(958, '', 'Gopinath', '2021-03-23', '192.168.201.14', '09:35:55', NULL),
(959, '', 'admin', '2021-03-23', '192.168.201.15', '09:38:11', NULL),
(960, '', 'admin', '2021-03-23', '192.168.201.14', '09:39:32', NULL),
(961, '', 'admin', '2021-03-23', '192.168.201.14', '10:00:26', NULL),
(962, '', 'admin', '2021-03-23', '192.168.201.15', '10:27:28', NULL),
(963, '', 'admin', '2021-03-23', '192.168.201.15', '10:29:08', NULL),
(964, '', 'admin', '2021-03-23', '192.168.201.15', '10:29:33', NULL),
(965, '', 'admin', '2021-03-23', '192.168.201.17', '10:45:03', NULL),
(966, '', 'admin', '2021-03-23', '192.168.201.12', '10:47:06', NULL),
(967, '', 'Laxmipriya', '2021-03-23', '192.168.201.12', '10:51:52', NULL),
(968, '', 'admin', '2021-03-23', '192.168.201.163', '10:59:17', NULL),
(969, '', 'admin', '2021-03-23', '192.168.201.163', '11:09:20', NULL),
(970, '', 'admin', '2021-03-23', '192.168.201.163', '11:09:51', NULL),
(971, '', 'admin', '2021-03-23', '192.168.201.12', '11:19:48', NULL),
(972, '', 'admin', '2021-03-23', '192.168.201.163', '11:19:53', NULL),
(973, '', 'Laxmipriya', '2021-03-23', '192.168.201.163', '11:46:09', NULL),
(974, '', 'Laxmi Priya', '2021-03-23', '192.168.201.163', '12:30:33', NULL),
(975, '', 'admin', '2021-03-23', '192.168.201.163', '12:42:42', NULL),
(976, '', 'Laxmi Priya', '2021-03-23', '192.168.201.163', '12:56:36', NULL),
(977, '', 'admin', '2021-03-23', '192.168.201.163', '12:57:14', NULL),
(978, '', 'Laxmi Priya', '2021-03-23', '192.168.201.163', '14:24:20', NULL),
(979, '', 'Laxmi Priya', '2021-03-23', '192.168.201.163', '14:38:35', NULL),
(980, '', 'Laxmi Priya', '2021-03-23', '192.168.201.163', '14:52:35', NULL),
(981, '', 'admin', '2021-03-23', '192.168.201.17', '15:07:00', NULL),
(982, '', 'admin', '2021-03-23', '192.168.201.163', '16:11:53', NULL),
(983, '', 'admin', '2021-03-23', '192.168.201.15', '16:15:14', NULL),
(984, '', 'admin', '2021-03-23', '192.168.201.14', '17:00:20', NULL),
(985, '', 'admin', '2021-03-24', '192.168.201.14', '08:57:20', NULL),
(986, '', 'admin', '2021-03-24', '192.168.201.14', '08:58:57', NULL),
(987, '', 'admin', '2021-03-24', '192.168.201.163', '09:05:52', NULL),
(988, '', 'admin', '2021-03-24', '192.168.201.15', '09:18:36', NULL),
(989, '', 'admin', '2021-03-24', '192.168.201.17', '09:22:05', NULL),
(990, '', 'admin', '2021-03-24', '192.168.201.12', '09:32:17', NULL),
(991, '', 'candidate', '2021-03-24', '192.168.201.163', '11:06:08', NULL),
(992, '', 'candidate', '2021-03-24', '192.168.201.163', '11:35:23', NULL),
(993, '', 'admin', '2021-03-24', '192.168.201.14', '11:43:24', NULL),
(994, '', 'admin', '2021-03-24', '192.168.201.14', '11:44:32', NULL),
(995, '', 'admin', '2021-03-24', '192.168.201.163', '13:10:41', NULL),
(996, '', 'admin', '2021-03-24', '192.168.201.12', '13:12:08', NULL),
(997, '', 'admin', '2021-03-24', '192.168.201.15', '14:29:50', NULL),
(998, '', 'admin', '2021-03-24', '192.168.201.12', '14:37:40', NULL),
(999, '', 'candidate', '2021-03-24', '192.168.201.12', '16:30:18', NULL),
(1000, '', 'Rajeshwari', '2021-03-24', '192.168.201.163', '17:10:08', NULL),
(1001, '', 'Recruiter', '2021-03-24', '192.168.201.12', '17:16:23', NULL),
(1002, '', 'candidate', '2021-03-24', '192.168.201.12', '17:16:48', NULL),
(1003, '', 'Recruiter', '2021-03-24', '192.168.201.163', '17:33:46', NULL),
(1004, '', 'admin', '2021-03-24', '192.168.201.12', '17:43:29', NULL),
(1005, '', 'Rajeshwari', '2021-03-24', '192.168.201.163', '17:43:55', NULL),
(1006, '', 'admin', '2021-03-25', '192.168.201.14', '09:00:14', NULL),
(1007, '', 'admin', '2021-03-25', '192.168.201.163', '09:03:31', NULL),
(1008, '', 'admin', '2021-03-25', '192.168.201.163', '09:03:48', NULL),
(1009, '', 'admin', '2021-03-25', '192.168.201.12', '09:18:58', NULL),
(1010, '', 'admin', '2021-03-25', '192.168.201.14', '10:16:25', NULL),
(1011, '', 'candidate', '2021-03-25', '192.168.201.12', '10:33:45', NULL),
(1012, '', 'candidate', '2021-03-25', '192.168.201.12', '10:34:47', NULL),
(1013, '', 'candidate', '2021-03-25', '192.168.201.12', '10:36:19', NULL),
(1014, '', 'candidate', '2021-03-25', '192.168.201.12', '10:37:05', NULL),
(1015, '', 'candidate', '2021-03-25', '192.168.201.12', '10:37:53', NULL),
(1016, '', 'candidate', '2021-03-25', '192.168.201.12', '10:39:13', NULL),
(1017, '', 'candidate', '2021-03-25', '192.168.201.12', '10:40:04', NULL),
(1018, '', 'candidate', '2021-03-25', '192.168.201.12', '10:44:51', NULL),
(1019, '', 'candidate', '2021-03-25', '192.168.201.12', '10:57:25', NULL),
(1020, '', 'admin', '2021-03-25', '192.168.201.14', '10:57:48', NULL),
(1021, '', 'candidate', '2021-03-25', '192.168.201.12', '10:59:01', NULL),
(1022, '', 'Lakshmi', '2021-03-25', '192.168.201.163', '11:01:00', NULL),
(1023, '', 'candidate', '2021-03-25', '192.168.201.12', '11:07:53', NULL),
(1024, '', 'admin', '2021-03-25', '192.168.201.12', '11:32:54', NULL),
(1025, '', 'admin', '2021-03-25', '192.168.201.15', '11:33:13', NULL),
(1026, '', 'candidate', '2021-03-25', '192.168.201.12', '11:33:44', NULL),
(1027, '', 'admin', '2021-03-25', '192.168.201.12', '11:39:07', NULL),
(1028, '', 'candidate', '2021-03-25', '192.168.201.163', '11:39:15', NULL),
(1029, '', 'Test', '2021-03-25', '192.168.201.163', '11:41:38', NULL),
(1030, '', 'Lakshmi', '2021-03-25', '192.168.201.163', '12:01:14', NULL),
(1031, '', 'Test', '2021-03-25', '192.168.201.163', '12:15:56', NULL),
(1032, '', 'admin', '2021-03-25', '192.168.201.17', '13:06:31', NULL),
(1033, '', 'admin', '2021-03-25', '192.168.201.17', '13:07:51', NULL),
(1034, '', 'Lakshmi', '2021-03-25', '192.168.201.17', '13:11:20', NULL),
(1035, '', 'Recruiter', '2021-03-25', '192.168.201.163', '13:14:46', NULL),
(1036, '', 'Test', '2021-03-25', '192.168.201.163', '13:19:35', NULL),
(1037, '', 'admin', '2021-03-25', '192.168.201.15', '13:33:39', NULL),
(1038, '', 'Test', '2021-03-25', '192.168.201.163', '13:33:53', NULL),
(1039, '', 'Test', '2021-03-25', '192.168.201.163', '13:34:50', NULL),
(1040, '', 'admin', '2021-03-25', '192.168.201.15', '13:35:21', NULL),
(1041, '', 'admin', '2021-03-25', '192.168.201.15', '13:36:08', NULL),
(1042, '', 'admin', '2021-03-25', '192.168.201.14', '14:29:32', NULL),
(1043, '', 'Test', '2021-03-25', '192.168.201.163', '15:42:59', NULL),
(1044, '', 'Test', '2021-03-25', '192.168.201.163', '15:45:09', NULL),
(1045, '', 'candidate', '2021-03-25', '192.168.201.17', '15:50:11', NULL),
(1046, '', 'Lakshmi', '2021-03-25', '192.168.201.17', '16:00:17', NULL),
(1047, '', 'Test', '2021-03-25', '192.168.201.163', '16:01:14', NULL),
(1048, '', 'Test', '2021-03-25', '192.168.201.163', '16:02:26', NULL),
(1049, '', 'Lakshmi', '2021-03-25', '192.168.201.17', '16:21:43', NULL),
(1050, '', 'Test', '2021-03-25', '192.168.201.163', '16:39:24', NULL),
(1051, '', 'admin', '2021-03-25', '192.168.201.163', '16:42:20', NULL),
(1052, '', 'Recruiter', '2021-03-25', '192.168.201.163', '16:45:39', NULL),
(1053, '', 'admin', '2021-03-25', '192.168.201.14', '16:50:29', NULL),
(1054, '', 'Test', '2021-03-25', '192.168.201.151', '17:39:18', NULL),
(1055, '', 'admin', '2021-03-25', '192.168.201.14', '17:42:41', NULL),
(1056, '', 'admin', '2021-03-26', '192.168.201.151', '08:56:50', NULL),
(1057, '', 'admin', '2021-03-26', '192.168.201.14', '08:59:06', NULL),
(1058, '', 'admin', '2021-03-26', '192.168.201.12', '09:07:19', NULL),
(1059, '', 'admin', '2021-03-26', '192.168.201.14', '09:14:02', NULL),
(1060, '', 'admin', '2021-03-26', '192.168.201.15', '09:14:35', NULL),
(1061, '', 'admin', '2021-03-26', '192.168.201.14', '09:28:37', NULL),
(1062, '', 'Test', '2021-03-26', '192.168.201.163', '09:29:55', NULL),
(1063, '', 'Lakshmi', '2021-03-26', '192.168.201.17', '09:30:08', NULL),
(1064, '', 'admin', '2021-03-26', '192.168.201.15', '09:39:33', NULL),
(1065, '', 'Lakshmi', '2021-03-26', '192.168.201.17', '10:11:24', NULL),
(1066, '', 'Lakshmi', '2021-03-26', '192.168.201.14', '11:04:06', NULL),
(1067, '', 'admin', '2021-03-26', '192.168.201.17', '11:14:25', NULL),
(1068, '', 'admin', '2021-03-26', '192.168.201.17', '11:18:13', NULL),
(1069, '', 'admin', '2021-03-26', '192.168.201.17', '11:21:02', NULL),
(1070, '', 'admin', '2021-03-26', '192.168.201.17', '11:40:44', NULL),
(1071, '', 'admin', '2021-03-26', '192.168.201.12', '11:49:20', NULL),
(1072, '', 'Recruiter', '2021-03-26', '192.168.201.12', '11:50:47', NULL),
(1073, '', 'admin', '2021-03-26', '192.168.201.12', '11:55:26', NULL),
(1074, '', 'Lakshmi', '2021-03-26', '192.168.201.163', '11:56:18', NULL),
(1075, '', 'admin', '2021-03-26', '192.168.201.17', '12:09:24', NULL),
(1076, '', 'admin', '2021-03-26', '192.168.201.17', '12:16:02', NULL),
(1077, '', 'Jaikumar', '2021-03-26', '192.168.201.163', '14:27:58', NULL),
(1078, '', 'Jaikumar', '2021-03-26', '192.168.201.163', '14:27:58', NULL),
(1079, '', 'Gopinath', '2021-03-26', '192.168.201.163', '15:00:38', NULL),
(1080, '', 'admin', '2021-03-26', '192.168.201.12', '15:00:40', NULL),
(1081, '', 'Recruiter', '2021-03-26', '192.168.201.12', '15:01:54', NULL),
(1082, '', 'admin', '2021-03-26', '192.168.201.12', '15:37:25', NULL),
(1083, '', 'Recruiter', '2021-03-26', '192.168.201.12', '15:38:23', NULL),
(1084, '', 'md', '2021-03-26', '192.168.201.17', '16:20:44', NULL),
(1085, '', 'md', '2021-03-26', '192.168.201.17', '16:21:26', NULL),
(1086, '', 'Gopinath', '2021-03-26', '192.168.201.163', '16:22:14', NULL),
(1087, '', 'admin', '2021-03-26', '192.168.201.17', '16:25:07', NULL),
(1088, '', 'Recruiter', '2021-03-26', '192.168.201.12', '16:32:30', NULL),
(1089, '', 'admin', '2021-03-26', '192.168.201.163', '16:40:34', NULL),
(1090, '', 'Lakshmi', '2021-03-26', '192.168.201.17', '16:42:10', NULL),
(1091, '', 'admin', '2021-03-29', '192.168.201.12', '09:05:13', NULL),
(1092, '', 'admin', '2021-03-29', '192.168.201.163', '09:08:01', NULL),
(1093, '', 'admin', '2021-03-29', '192.168.201.14', '09:10:04', NULL),
(1094, '', 'Recruiter', '2021-03-29', '192.168.201.12', '09:10:13', NULL),
(1095, '', 'Lakshmi', '2021-03-29', '192.168.201.17', '09:11:07', NULL),
(1096, '', 'admin', '2021-03-29', '192.168.201.12', '09:11:29', NULL),
(1097, '', 'Lakshmi', '2021-03-29', '192.168.201.163', '09:18:19', NULL),
(1098, '', 'laxmipriya', '2021-03-29', '192.168.201.163', '09:19:19', NULL),
(1099, '', 'candidate', '2021-03-29', '192.168.201.12', '09:38:41', NULL),
(1100, '', 'Recruiter', '2021-03-29', '192.168.201.12', '09:39:21', NULL),
(1101, '', 'Rajeshwari', '2021-03-29', '192.168.201.163', '10:06:49', NULL),
(1102, '', 'Rajeshwari', '2021-03-29', '192.168.201.163', '10:07:38', NULL),
(1103, '', 'Test', '2021-03-29', '192.168.201.163', '10:50:35', NULL),
(1104, '', 'Test', '2021-03-29', '192.168.201.163', '10:52:01', NULL),
(1105, '', 'Gopinath', '2021-03-29', '192.168.201.17', '10:53:05', NULL),
(1106, '', 'Recruiter', '2021-03-29', '192.168.201.163', '11:00:04', NULL),
(1107, '', 'candidate', '2021-03-29', '192.168.201.163', '11:07:53', NULL),
(1108, '', 'test1', '2021-03-29', '192.168.201.163', '11:09:13', NULL),
(1109, '', 'Recruiter', '2021-03-29', '192.168.201.163', '11:11:30', NULL),
(1110, '', 'test1', '2021-03-29', '192.168.201.163', '11:17:13', NULL),
(1111, '', 'Recruiter', '2021-03-29', '192.168.201.163', '11:17:26', NULL),
(1112, '', 'Recruiter', '2021-03-29', '192.168.201.163', '11:22:16', NULL),
(1113, '', 'Test', '2021-03-29', '192.168.201.163', '11:36:02', NULL),
(1114, '', 'test1', '2021-03-29', '192.168.201.163', '11:36:59', NULL),
(1115, '', 'test1', '2021-03-29', '192.168.201.163', '11:37:29', NULL),
(1116, '', 'Recruiter', '2021-03-29', '192.168.201.163', '11:37:44', NULL),
(1117, '', 'Test', '2021-03-29', '192.168.201.12', '11:38:06', NULL),
(1118, '', 'Recruiter', '2021-03-29', '192.168.201.12', '11:38:31', NULL),
(1119, '', 'Rajeshwari', '2021-03-29', '115.243.95.114', '12:02:13', NULL),
(1120, '', 'laxmipriya', '2021-03-29', '192.168.201.163', '12:12:44', NULL),
(1121, '', 'Rajeshwari', '2021-03-29', '192.168.201.48', '12:16:57', NULL),
(1122, '', 'admin', '2021-03-29', '192.168.201.17', '12:18:24', NULL),
(1123, '', 'Test', '2021-03-29', '192.168.201.163', '12:43:51', NULL),
(1124, '', 'Jaikumar', '2021-03-29', '192.168.201.15', '12:46:26', NULL),
(1125, '', 'Mohana Krishnan', '2021-03-29', '192.168.201.163', '12:51:43', NULL),
(1126, '', 'admin', '2021-03-29', '192.168.201.17', '12:59:04', NULL),
(1127, '', 'Gopinath', '2021-03-29', '192.168.201.17', '12:59:32', NULL),
(1128, '', 'Gopinath', '2021-03-29', '192.168.201.17', '13:01:31', NULL),
(1129, '', 'admin', '2021-03-29', '192.168.201.12', '13:51:37', NULL),
(1130, '', 'Recruiter', '2021-03-29', '192.168.201.163', '14:03:04', NULL),
(1131, '', 'laxmipriya', '2021-03-29', '192.168.201.17', '14:08:09', NULL),
(1132, '', 'admin', '2021-03-29', '192.168.201.12', '14:10:39', NULL),
(1133, '', 'admin', '2021-03-29', '192.168.201.17', '14:18:06', NULL),
(1134, '', 'admin', '2021-03-29', '192.168.201.163', '14:18:29', NULL),
(1135, '', 'laxmipriya', '2021-03-29', '192.168.201.17', '14:33:59', NULL),
(1136, '', 'technical', '2021-03-29', '192.168.201.12', '14:40:23', NULL),
(1137, '', 'Recruiter', '2021-03-29', '192.168.201.12', '14:41:13', NULL),
(1138, '', 'admin', '2021-03-29', '192.168.201.12', '14:42:06', NULL),
(1139, '', 'admin', '2021-03-29', '192.168.201.12', '14:43:12', NULL),
(1140, '', 'Recruiter', '2021-03-29', '192.168.201.12', '14:51:52', NULL),
(1141, '', 'Mohana Krishnan', '2021-03-29', '192.168.201.40', '14:53:42', NULL),
(1142, '', 'admin', '2021-03-29', '192.168.201.17', '14:53:58', NULL),
(1143, '', 'admin', '2021-03-29', '192.168.201.12', '15:12:12', NULL),
(1144, '', 'Recruiter', '2021-03-29', '192.168.201.12', '15:12:49', NULL),
(1145, '', 'technical', '2021-03-29', '192.168.201.12', '15:13:21', NULL),
(1146, '', 'Gopinath', '2021-03-29', '192.168.201.17', '15:14:48', NULL),
(1147, '', 'admin', '2021-03-29', '192.168.201.17', '15:17:19', NULL),
(1148, '', 'Recruiter', '2021-03-29', '192.168.201.12', '15:18:43', NULL),
(1149, '', 'admin', '2021-03-29', '192.168.201.17', '15:19:05', NULL),
(1150, '', 'admin', '2021-03-29', '192.168.201.17', '15:19:30', NULL),
(1151, '', 'hod', '2021-03-29', '192.168.201.12', '15:20:07', NULL),
(1152, '', 'technical1', '2021-03-29', '192.168.201.12', '15:25:42', NULL),
(1153, '', 'admin', '2021-03-29', '192.168.201.17', '15:25:57', NULL),
(1154, '', 'md', '2021-03-29', '192.168.201.12', '15:28:23', NULL),
(1155, '', 'admin', '2021-03-29', '192.168.201.17', '15:34:20', NULL),
(1156, '', 'md', '2021-03-29', '192.168.201.17', '15:34:45', NULL),
(1157, '', 'test1', '2021-03-29', '192.168.201.163', '15:44:41', NULL),
(1158, '', 'Sebastain', '2021-03-29', '192.168.201.163', '15:45:58', NULL),
(1159, '', 'Sebastain', '2021-03-29', '192.168.201.163', '16:03:29', NULL),
(1160, '', 'admin', '2021-03-29', '192.168.201.17', '16:06:08', NULL),
(1161, '', 'md', '2021-03-29', '192.168.201.17', '16:07:14', NULL),
(1162, '', 'Sebastain', '2021-03-29', '192.168.201.163', '16:08:12', NULL),
(1163, '', 'Recruiter', '2021-03-29', '192.168.201.163', '16:12:38', NULL),
(1164, '', 'Meena', '2021-03-29', '192.168.201.17', '17:05:14', NULL),
(1165, '', 'admin', '2021-03-29', '192.168.201.12', '17:09:39', NULL),
(1166, '', 'Recruiter', '2021-03-29', '192.168.201.12', '17:09:57', NULL),
(1167, '', 'admin', '2021-03-29', '192.168.201.17', '17:15:55', NULL),
(1168, '', 'Meena', '2021-03-29', '192.168.201.17', '17:21:31', NULL),
(1169, '', 'md', '2021-03-29', '192.168.201.17', '17:24:46', NULL),
(1170, '', 'laxmipriya', '2021-03-29', '192.168.201.17', '17:31:35', NULL),
(1171, '', 'Sindhu ', '2021-03-29', '192.168.201.14', '17:32:14', NULL),
(1172, '', 'Vanitha', '2021-03-29', '192.168.201.12', '17:32:21', NULL),
(1173, '', 'admin', '2021-03-29', '192.168.201.12', '17:39:27', NULL),
(1174, '', 'Recruiter', '2021-03-29', '192.168.201.12', '17:40:05', NULL),
(1175, '', 'Mohana Krishnan', '2021-03-29', '192.168.201.40', '17:41:53', NULL),
(1176, '', 'laxmipriya', '2021-03-29', '192.168.201.17', '17:59:47', NULL),
(1177, '', 'Rajeshwari', '2021-03-29', '27.5.246.178', '20:43:18', NULL),
(1178, '', 'Gopinath', '2021-03-30', '192.168.201.17', '09:38:27', NULL),
(1179, '', 'admin', '2021-03-30', '192.168.201.163', '09:38:43', NULL),
(1180, '', 'admin', '2021-03-30', '192.168.201.163', '09:39:07', NULL),
(1181, '', 'admin', '2021-03-30', '192.168.201.12', '09:43:15', NULL),
(1182, '', 'Umadevi', '2021-03-30', '192.168.201.161', '09:48:32', NULL),
(1183, '', 'Vanitha', '2021-03-30', '192.168.201.12', '09:52:22', NULL),
(1184, '', 'Meena', '2021-03-30', '192.168.201.224', '09:52:28', NULL),
(1185, '', 'Jefferson', '2021-03-30', '192.168.201.212', '09:52:45', NULL),
(1186, '', 'Arunachalam', '2021-03-30', '192.168.201.19', '09:54:08', NULL),
(1187, '', 'laxmipriya', '2021-03-30', '192.168.201.163', '10:08:34', NULL),
(1188, '', 'admin', '2021-03-30', '192.168.201.12', '10:25:58', NULL),
(1189, '', 'Rajeshwari', '2021-03-30', '115.243.95.114', '10:34:17', NULL),
(1190, '', 'admin', '2021-03-30', '192.168.201.161', '10:51:37', NULL),
(1191, '', 'admin', '2021-03-30', '192.168.201.12', '11:05:41', NULL),
(1192, '', 'admin', '2021-03-30', '192.168.201.17', '11:06:36', NULL),
(1193, '', 'Recruiter', '2021-03-30', '192.168.201.12', '11:09:12', NULL),
(1194, '', 'admin', '2021-03-30', '192.168.201.17', '11:10:53', NULL),
(1195, '', 'Gopinath', '2021-03-30', '192.168.201.17', '11:11:18', NULL),
(1196, '', 'admin', '2021-03-30', '192.168.201.20', '11:12:08', NULL),
(1197, '', 'admin', '2021-03-30', '192.168.201.161', '11:35:16', NULL),
(1198, '', 'Meena', '2021-03-30', '192.168.201.17', '11:38:56', NULL),
(1199, '', 'Gopinath', '2021-03-30', '192.168.201.17', '11:40:40', NULL),
(1200, '', 'Gopinath', '2021-03-30', '192.168.201.17', '11:45:55', NULL),
(1201, '', 'md', '2021-03-30', '192.168.201.17', '11:46:37', NULL),
(1202, '', 'admin', '2021-03-30', '192.168.201.17', '12:10:30', NULL),
(1203, '', 'admin', '2021-03-30', '192.168.201.12', '12:36:19', NULL),
(1204, '', 'admin', '2021-03-30', '192.168.201.163', '12:56:48', NULL),
(1205, '', 'Gopinath', '2021-03-30', '192.168.201.17', '13:27:33', NULL),
(1206, '', 'admin', '2021-03-30', '192.168.201.15', '13:34:30', NULL),
(1207, '', 'laxmipriya', '2021-03-30', '192.168.201.163', '14:16:10', NULL),
(1208, '', 'admin', '2021-03-30', '192.168.201.12', '14:30:53', NULL),
(1209, '', 'admin', '2021-03-30', '192.168.201.161', '15:15:46', NULL),
(1210, '', 'admin', '2021-03-30', '192.168.201.161', '15:19:53', NULL),
(1211, '', 'Gopinath', '2021-03-30', '192.168.201.17', '15:36:45', NULL),
(1212, '', 'admin', '2021-03-30', '192.168.201.17', '15:56:18', NULL),
(1213, '', 'technical', '2021-03-30', '192.168.201.17', '16:09:37', NULL),
(1214, '', 'md', '2021-03-30', '192.168.201.17', '16:10:12', NULL),
(1215, '', 'Gopinath', '2021-03-30', '192.168.201.17', '16:16:22', NULL),
(1216, '', 'Rajeshwari', '2021-03-30', '115.243.95.114', '16:37:22', NULL),
(1217, '', 'Rajeshwari', '2021-03-30', '115.243.95.114', '16:37:54', NULL),
(1218, '', 'admin', '2021-03-30', '192.168.201.161', '16:57:35', NULL),
(1219, '', 'admin', '2021-03-30', '192.168.201.17', '17:18:06', NULL),
(1220, '', 'md', '2021-03-30', '192.168.201.17', '17:23:48', NULL),
(1221, '', 'Gopinath', '2021-03-30', '192.168.201.17', '17:24:27', NULL),
(1222, '', 'Gopinath', '2021-03-30', '192.168.201.17', '17:46:13', NULL),
(1223, '', 'laxmipriya', '2021-03-30', '192.168.201.163', '18:00:06', NULL),
(1224, '', 'Rajeshwari', '2021-03-30', '27.5.147.50', '20:40:33', NULL),
(1225, '', 'admin', '2021-03-31', '27.62.42.135', '00:56:16', NULL),
(1226, '', 'admin', '2021-03-31', '192.168.201.163', '09:03:49', NULL),
(1227, '', 'admin', '2021-03-31', '192.168.201.20', '09:04:55', NULL),
(1228, '', 'admin', '2021-03-31', '192.168.201.12', '09:10:25', NULL),
(1229, '', 'admin', '2021-03-31', '192.168.201.161', '09:29:29', NULL),
(1230, '', 'Rajeshwari', '2021-03-31', '115.243.95.114', '09:51:00', NULL),
(1231, '', 'admin', '2021-03-31', '192.168.201.161', '10:05:13', NULL),
(1232, '', 'Sindhu ', '2021-03-31', '192.168.201.20', '10:44:09', NULL),
(1233, '', 'candidate', '2021-03-31', '192.168.201.163', '10:58:21', NULL),
(1234, '', 'laxmipriya', '2021-03-31', '192.168.201.163', '11:24:56', NULL),
(1235, '', 'Sindhu ', '2021-03-31', '192.168.201.41', '14:43:44', NULL),
(1236, '', 'admin', '2021-03-31', '192.168.201.163', '14:51:05', NULL),
(1237, '', 'admin', '2021-03-31', '192.168.201.12', '14:57:34', NULL),
(1238, '', 'Rajeshwari', '2021-03-31', '192.168.201.38', '15:16:53', NULL),
(1239, '', 'Rajeshwari', '2021-03-31', '115.243.95.114', '17:19:00', NULL),
(1240, '', 'admin', '2021-04-01', '192.168.201.163', '09:12:12', NULL),
(1241, '', 'Sindhu ', '2021-04-01', '192.168.201.20', '09:12:30', NULL),
(1242, '', 'admin', '2021-04-01', '192.168.201.17', '09:24:10', NULL),
(1243, '', 'Sindhu ', '2021-04-01', '192.168.201.17', '09:57:12', NULL),
(1244, '', 'admin', '2021-04-01', '192.168.201.161', '10:19:43', NULL),
(1245, '', 'admin', '2021-04-01', '192.168.201.17', '10:26:54', NULL),
(1246, '', 'admin', '2021-04-01', '192.168.201.17', '10:45:44', NULL),
(1247, '', 'admin', '2021-04-01', '192.168.201.17', '10:56:26', NULL),
(1248, '', 'admin', '2021-04-01', '192.168.201.163', '11:59:53', NULL),
(1249, '', 'Rajeshwari', '2021-04-01', '115.243.95.114', '12:20:59', NULL),
(1250, '', 'admin', '2021-04-01', '192.168.201.163', '15:12:32', NULL),
(1251, '', 'admin', '2021-04-01', '192.168.201.163', '15:26:41', NULL),
(1252, '', 'admin', '2021-04-01', '192.168.201.15', '15:34:29', NULL),
(1253, '', 'admin', '2021-04-01', '192.168.201.20', '15:37:58', NULL),
(1254, '', 'Sindhu ', '2021-04-01', '192.168.201.163', '15:48:37', NULL),
(1255, '', 'Gopinath', '2021-04-01', '192.168.201.17', '16:16:38', NULL),
(1256, '', 'admin', '2021-04-01', '192.168.201.17', '16:20:21', NULL),
(1257, '', 'md', '2021-04-01', '192.168.201.17', '16:21:10', NULL),
(1258, '', 'admin', '2021-04-01', '192.168.201.17', '16:21:31', NULL),
(1259, '', 'admin', '2021-04-01', '192.168.201.17', '16:32:00', NULL),
(1260, '', 'admin', '2021-04-01', '192.168.201.161', '16:33:15', NULL),
(1261, '', 'admin', '2021-04-01', '192.168.201.41', '16:39:38', NULL),
(1262, '', 'admin', '2021-04-01', '192.168.201.161', '17:59:29', NULL),
(1263, '', 'admin', '2021-04-02', '192.168.201.12', '08:51:30', NULL),
(1264, '', 'admin', '2021-04-02', '192.168.201.163', '09:04:52', NULL),
(1265, '', 'admin', '2021-04-02', '192.168.201.17', '09:15:59', NULL),
(1266, '', 'Sindhu ', '2021-04-02', '192.168.201.20', '09:17:04', NULL),
(1267, '', 'admin', '2021-04-02', '192.168.201.20', '09:17:40', NULL),
(1268, '', 'Sindhu ', '2021-04-02', '192.168.201.20', '10:14:12', NULL),
(1269, '', 'Rajeshwari', '2021-04-02', '115.243.95.114', '10:17:59', NULL),
(1270, '', 'candidate', '2021-04-02', '192.168.201.17', '10:37:39', NULL),
(1271, '', 'Recruiter', '2021-04-02', '192.168.201.17', '10:39:08', NULL),
(1272, '', 'Recruiter', '2021-04-02', '192.168.201.17', '10:39:49', NULL),
(1273, '', 'admin', '2021-04-02', '192.168.201.17', '10:40:22', NULL),
(1274, '', 'Sindhu ', '2021-04-02', '192.168.201.20', '10:41:21', NULL),
(1275, '', 'Sindhu ', '2021-04-02', '192.168.201.20', '11:01:05', NULL),
(1276, '', 'admin', '2021-04-02', '192.168.201.17', '11:54:44', NULL),
(1277, '', 'admin', '2021-04-02', '192.168.201.17', '15:37:40', NULL),
(1278, '', 'admin', '2021-04-02', '192.168.201.17', '16:04:23', NULL),
(1279, '', 'Sindhu ', '2021-04-03', '192.168.201.20', '09:04:00', NULL),
(1280, '', 'admin', '2021-04-03', '192.168.201.163', '09:08:37', NULL),
(1281, '', 'admin', '2021-04-03', '192.168.201.12', '09:10:44', NULL),
(1282, '', 'admin', '2021-04-03', '192.168.201.17', '10:03:24', NULL),
(1283, '', 'Gopinath', '2021-04-03', '192.168.201.17', '12:42:42', NULL),
(1284, '', 'Rajeshwari', '2021-04-03', '115.243.95.114', '16:50:23', NULL),
(1285, '', 'admin', '2021-04-03', '192.168.201.17', '17:01:08', NULL),
(1286, '', 'admin', '2021-04-05', '192.168.201.12', '09:08:05', NULL),
(1287, '', 'admin', '2021-04-05', '192.168.201.163', '09:13:23', NULL),
(1288, '', 'admin', '2021-04-05', '192.168.201.161', '09:23:24', NULL),
(1289, '', 'admin', '2021-04-05', '192.168.201.17', '09:41:34', NULL),
(1290, '', 'admin', '2021-04-05', '192.168.201.15', '09:49:06', NULL),
(1291, '', 'admin', '2021-04-05', '192.168.201.163', '10:29:59', NULL),
(1292, '', 'Gopinath', '2021-04-05', '192.168.201.17', '10:30:04', NULL),
(1293, '', 'admin', '2021-04-05', '192.168.201.17', '11:58:57', NULL),
(1294, '', 'admin', '2021-04-05', '192.168.201.163', '12:33:29', NULL),
(1295, '', 'admin', '2021-04-05', '192.168.201.12', '15:15:30', NULL),
(1296, '', 'admin', '2021-04-05', '192.168.201.163', '15:57:28', NULL),
(1297, '', 'admin', '2021-04-07', '192.168.201.163', '09:24:34', NULL),
(1298, '', 'admin', '2021-04-07', '192.168.201.163', '13:15:29', NULL),
(1299, '', 'admin', '2021-04-07', '192.168.201.163', '14:56:36', NULL),
(1300, '', 'admin', '2021-04-07', '192.168.201.17', '15:02:01', NULL),
(1301, '', 'admin', '2021-04-07', '192.168.201.20', '15:42:12', NULL),
(1302, '', 'admin', '2021-04-07', '192.168.201.163', '15:54:02', NULL),
(1303, '', 'Rajeshwari', '2021-04-07', '115.243.95.114', '16:32:59', NULL),
(1304, '', 'admin', '2021-04-07', '192.168.201.163', '16:50:26', NULL),
(1305, '', 'admin', '2021-04-07', '192.168.201.163', '17:16:01', NULL),
(1306, '', 'admin', '2021-04-08', '192.168.201.163', '08:59:38', NULL),
(1307, '', 'admin', '2021-04-08', '192.168.201.163', '14:44:52', NULL),
(1308, '', 'admin', '2021-04-13', '192.168.201.161', '10:37:41', NULL),
(1309, '', 'admin', '2021-04-13', '192.168.201.161', '10:47:23', NULL),
(1310, '', 'admin', '2021-04-13', '192.168.201.161', '10:50:58', NULL),
(1311, '', 'admin', '2021-04-13', '192.168.201.161', '11:10:14', NULL),
(1312, '', 'admin', '2021-04-13', '192.168.201.161', '11:39:01', NULL),
(1313, '', 'admin', '2021-04-13', '192.168.201.161', '11:40:50', NULL),
(1314, '', 'admin', '2021-04-15', '192.168.201.161', '09:15:27', NULL),
(1315, '', 'admin', '2021-04-15', '192.168.201.161', '12:10:40', NULL),
(1316, '', 'admin', '2021-04-15', '192.168.201.161', '12:15:36', NULL),
(1317, '', 'admin', '2021-04-15', '192.168.201.18', '14:42:15', NULL),
(1318, '', 'admin', '2021-04-15', '192.168.201.18', '16:28:43', NULL),
(1319, '', 'admin', '2021-04-15', '192.168.201.18', '16:31:22', NULL),
(1320, '', 'candidate', '2021-04-15', '192.168.201.18', '16:36:53', NULL),
(1321, '', 'admin', '2021-04-15', '192.168.201.161', '16:37:29', NULL),
(1322, '', 'admin', '2021-04-16', '192.168.201.163', '12:06:50', NULL),
(1323, '', 'admin', '2021-04-16', '192.168.201.161', '13:24:59', NULL),
(1324, '', 'admin', '2021-04-16', '192.168.201.161', '17:38:43', NULL),
(1325, '', 'admin', '2021-04-17', '192.168.201.161', '09:46:21', NULL),
(1326, '', 'admin', '2021-04-17', '192.168.201.161', '17:39:45', NULL),
(1327, '', 'admin', '2021-04-19', '192.168.201.161', '10:11:41', NULL),
(1328, '', 'admin', '2021-04-19', '192.168.201.41', '14:21:44', NULL),
(1329, '', 'admin', '2021-04-20', '192.168.201.161', '08:59:43', NULL),
(1330, '', 'admin', '2021-04-20', '49.249.229.10', '14:31:36', NULL),
(1331, '', 'admin', '2021-04-20', '192.168.201.39', '14:35:18', NULL),
(1332, '', 'admin', '2021-04-20', '192.168.201.161', '15:05:41', NULL),
(1333, '', 'admin', '2021-04-22', '192.168.201.41', '09:50:38', NULL),
(1334, '', 'admin', '2021-04-22', '192.168.201.41', '10:04:00', NULL),
(1335, '', 'admin', '2021-04-22', '192.168.201.41', '10:35:20', NULL),
(1336, '', 'admin', '2021-04-22', '192.168.201.43', '16:53:14', NULL),
(1337, '', 'admin', '2021-04-23', '::1', '21:26:23', NULL),
(1338, '', 'admin', '2021-04-23', '::1', '23:54:59', NULL),
(1339, '', 'admin', '2021-04-24', '::1', '00:13:53', NULL),
(1340, '', 'admin', '2021-04-26', '192.168.201.56', '09:46:18', NULL),
(1341, '', 'admin', '2021-04-26', '192.168.201.56', '10:20:35', NULL),
(1342, '', 'admin', '2021-04-27', '192.168.201.34', '15:40:40', NULL),
(1343, '', 'admin', '2021-04-30', '192.168.201.20', '11:31:52', NULL),
(1344, '', 'admin', '2021-04-30', '49.249.229.10', '15:21:46', NULL),
(1345, '', 'admin', '2021-04-30', '192.168.201.34', '15:56:48', NULL),
(1346, '', 'admin', '2021-04-30', '49.249.229.10', '23:09:41', NULL),
(1347, '', 'admin', '2021-05-01', '49.249.229.10', '10:01:54', NULL),
(1348, '', 'admin', '2021-05-01', '192.168.200.89', '10:03:13', NULL),
(1349, '', 'admin', '2021-05-01', '49.249.229.10', '10:06:39', NULL),
(1350, '', 'sakthivel', '2021-05-01', '49.249.229.10', '10:30:34', NULL),
(1351, '', 'arunkk', '2021-05-01', '49.249.229.10', '10:53:14', NULL),
(1352, '', 'karthick', '2021-05-01', '49.249.229.10', '11:17:13', NULL),
(1353, '', 'shanmuganathan', '2021-05-01', '49.249.229.10', '11:21:09', NULL),
(1354, '', 'kalaimani', '2021-05-01', '49.249.229.10', '11:21:46', NULL),
(1355, '', 'kalaimani', '2021-05-01', '49.249.229.10', '11:21:46', NULL),
(1356, '', 'akshay', '2021-05-01', '49.249.229.10', '11:22:37', NULL),
(1357, '', 'kalaimani', '2021-05-01', '49.249.229.10', '11:24:08', NULL),
(1358, '', 'kalaimani', '2021-05-01', '49.249.229.10', '11:24:08', NULL),
(1359, '', 'kalaimani', '2021-05-01', '49.249.229.10', '11:25:15', NULL),
(1360, '', 'kalaimani', '2021-05-01', '49.249.229.10', '11:25:15', NULL),
(1361, '', 'akshay', '2021-05-01', '49.249.229.10', '11:28:34', NULL),
(1362, '', 'kalaimani', '2021-05-01', '49.249.229.10', '11:29:41', NULL),
(1363, '', 'kalaimani', '2021-05-01', '49.249.229.10', '11:29:41', NULL),
(1364, '', 'akshay', '2021-05-01', '49.249.229.10', '11:30:08', NULL),
(1365, '', 'chandhiramohan', '2021-05-01', '49.249.229.10', '11:46:01', NULL),
(1366, '', 'chandhiramohan', '2021-05-01', '49.249.229.10', '11:51:08', NULL),
(1367, '', 'shanmuganathan', '2021-05-01', '49.249.229.10', '13:10:19', NULL),
(1368, '', 'kalaimani', '2021-05-01', '49.249.229.10', '13:14:41', NULL),
(1369, '', 'kalaimani', '2021-05-01', '49.249.229.10', '13:14:41', NULL),
(1370, '', 'girish', '2021-05-01', '49.249.229.10', '13:22:54', NULL),
(1371, '', 'admin', '2021-05-01', '49.249.229.10', '13:25:14', NULL),
(1372, '', 'girish', '2021-05-01', '49.249.229.10', '13:37:16', NULL),
(1373, '', 'kalaimani', '2021-05-01', '49.249.229.10', '14:17:27', NULL),
(1374, '', 'kalaimani', '2021-05-01', '49.249.229.10', '14:17:27', NULL),
(1375, '', 'venkatesan', '2021-05-01', '49.249.229.10', '16:19:54', NULL),
(1376, '', 'venkatesan', '2021-05-01', '49.249.229.10', '16:23:02', NULL),
(1377, '', 'shanmuganathan', '2021-05-01', '49.249.229.10', '18:10:53', NULL),
(1378, '', 'admin', '2021-05-01', '49.249.229.10', '20:00:57', NULL),
(1379, '', 'rajkumar', '2021-05-01', '49.249.229.10', '20:49:46', NULL),
(1380, '', 'ramakrishnan', '2021-05-01', '49.249.229.10', '22:35:25', NULL),
(1381, '', 'karthick', '2021-05-02', '49.249.229.10', '15:31:59', NULL),
(1382, '', 'karthick', '2021-05-02', '49.249.229.10', '15:32:22', NULL),
(1383, '', 'akshay', '2021-05-02', '49.249.229.10', '18:23:34', NULL),
(1384, '', 'johnavinash', '2021-05-03', '49.249.229.10', '08:37:56', NULL),
(1385, '', 'johnavinash', '2021-05-03', '49.249.229.10', '08:39:07', NULL),
(1386, '', 'johnavinash', '2021-05-03', '49.249.229.10', '08:41:58', NULL),
(1387, '', 'muthukumar', '2021-05-03', '49.249.229.10', '09:32:42', NULL),
(1388, '', 'muthukumar', '2021-05-03', '49.249.229.10', '09:38:28', NULL),
(1389, '', 'sathish', '2021-05-03', '49.249.229.10', '12:12:55', NULL),
(1390, '', 'sathish', '2021-05-03', '49.249.229.10', '12:14:57', NULL),
(1391, '', 'johnavinash', '2021-05-03', '192.168.201.54', '14:54:56', NULL),
(1392, '', 'johnavinash', '2021-05-03', '192.168.201.54', '15:06:44', NULL),
(1393, '', 'johnavinash', '2021-05-03', '49.249.229.10', '17:06:25', NULL),
(1394, '', 'sivakumar', '2021-05-04', '49.249.229.10', '15:24:30', NULL),
(1395, '', 'sivakumar', '2021-05-04', '49.249.229.10', '15:25:24', NULL),
(1396, '', 'girish', '2021-05-05', '49.249.229.10', '10:24:17', NULL),
(1397, '', 'admin', '2021-05-05', '192.168.201.20', '10:38:58', NULL),
(1398, '', 'admin', '2021-05-05', '49.249.229.10', '14:38:41', NULL),
(1399, '', 'admin', '2021-05-05', '49.249.229.10', '14:54:56', NULL),
(1400, '', 'vaidyanathan', '2021-05-06', '49.249.229.10', '09:44:51', NULL),
(1401, '', 'admin', '2021-05-06', '192.168.201.45', '13:20:22', NULL),
(1402, '', 'admin', '2021-05-07', '10.225.1.78', '18:27:39', NULL),
(1403, '', 'admin', '2021-05-08', '192.168.200.89', '11:46:30', NULL),
(1404, '', 'admin', '2021-05-08', '192.168.200.89', '12:32:38', NULL),
(1405, '', 'admin', '2021-05-10', '192.168.200.89', '10:23:42', NULL),
(1406, '', 'admin', '2021-05-10', '192.168.200.89', '11:40:40', NULL),
(1407, '', 'girish', '2021-05-10', '192.168.200.89', '11:47:12', NULL),
(1408, '', 'mythily', '2021-05-10', '192.168.200.89', '11:54:37', NULL),
(1409, '', 'admin', '2021-05-10', '10.225.1.78', '13:39:00', NULL),
(1410, '', 'admin', '2021-05-11', '10.225.1.78', '01:13:42', NULL),
(1411, '', 'admin', '2021-05-11', '192.168.43.246', '09:21:22', NULL),
(1412, '', 'admin', '2021-05-11', '10.225.1.78', '12:31:15', NULL),
(1413, '', 'admin', '2021-05-11', '192.168.200.89', '12:37:00', NULL),
(1414, '', 'admin', '2021-05-11', '192.168.43.246', '14:16:56', NULL),
(1415, '', 'girish', '2021-05-11', '192.168.43.246', '14:29:47', NULL),
(1416, '', 'girish', '2021-05-11', '192.168.43.246', '14:32:24', NULL),
(1417, '', 'admin', '2021-05-11', '192.168.43.246', '14:33:27', NULL),
(1418, '', 'admin', '2021-05-11', '10.225.1.78', '15:21:32', NULL),
(1419, '', 'admin', '2021-05-11', '192.168.200.89', '18:12:31', NULL),
(1420, '', 'admin', '2021-05-12', '192.168.43.246', '12:46:08', NULL),
(1421, '', 'admin', '2021-05-12', '10.225.1.78', '12:55:43', NULL),
(1422, '', 'admin', '2021-05-12', '192.168.43.246', '13:02:10', NULL),
(1423, '', 'admin', '2021-05-12', '192.168.43.246', '13:05:18', NULL),
(1424, '', 'muthukumar', '2021-05-12', '192.168.43.246', '13:08:09', NULL),
(1425, '', 'muthukumar', '2021-05-12', '10.225.1.78', '13:08:28', NULL),
(1426, '', 'admin', '2021-05-12', '10.225.1.78', '13:09:30', NULL),
(1427, '', 'admin', '2021-05-12', '192.168.43.246', '13:10:57', NULL),
(1428, '', 'admin', '2021-05-12', '10.225.1.78', '13:18:34', NULL),
(1429, '', 'muthukumar', '2021-05-12', '10.225.1.78', '13:20:07', NULL),
(1430, '', 'arunkk', '2021-05-12', '10.225.1.78', '13:20:33', NULL),
(1431, '', 'admin', '2021-05-12', '10.225.1.78', '13:31:46', NULL),
(1432, '', 'admin', '2021-05-12', '10.225.1.78', '15:22:56', NULL),
(1433, '', 'admin', '2021-05-12', '10.225.1.78', '16:57:55', NULL),
(1434, '', 'admin', '2021-05-14', '10.225.1.78', '15:25:05', NULL),
(1435, '', 'admin', '2021-05-15', '192.168.200.89', '12:07:40', NULL),
(1436, '', 'vaidyanathan', '2021-05-15', '10.225.1.78', '13:22:25', NULL),
(1437, '', 'vaidyanathan', '2021-05-15', '10.225.1.78', '13:24:30', NULL),
(1438, '', 'vaidyanathan', '2021-05-15', '10.225.1.78', '13:25:12', NULL),
(1439, '', 'admin', '2021-05-15', '10.225.1.78', '16:16:46', NULL),
(1440, '', 'admin', '2021-05-18', '192.168.43.246', '10:19:51', NULL),
(1441, '', 'admin', '2021-05-18', '192.168.43.246', '11:28:31', NULL),
(1442, '', 'admin', '2021-05-19', '10.225.1.78', '00:55:17', NULL),
(1443, '', 'admin', '2021-05-19', '10.225.1.78', '00:55:18', NULL),
(1444, '', 'selvaraj', '2021-05-19', '10.225.1.78', '01:01:41', NULL),
(1445, '', 'admin', '2021-05-19', '10.225.1.78', '01:02:30', NULL);
INSERT INTO `z_log_entry` (`id`, `user_id`, `user_name`, `logdate`, `system_ip`, `time`, `logout`) VALUES
(1446, '', 'admin', '2021-05-19', '10.225.1.78', '01:02:52', NULL),
(1447, '', 'selvaraj', '2021-05-19', '10.225.1.78', '01:03:44', NULL),
(1448, '', 'girish', '2021-05-19', '10.225.1.78', '01:04:20', NULL),
(1449, '', 'selvaraj', '2021-05-19', '10.225.1.78', '01:05:54', NULL),
(1450, '', 'admin', '2021-05-19', '10.225.1.78', '01:06:40', NULL),
(1451, '', 'admin', '2021-05-19', '10.225.1.78', '01:09:05', NULL),
(1452, '', 'admin', '2021-05-20', '192.168.200.89', '10:44:41', NULL),
(1453, '', 'muthukumar', '2021-05-20', '192.168.200.89', '10:47:57', NULL),
(1454, '', 'admin', '2021-05-20', '192.168.200.89', '10:48:12', NULL),
(1455, '', 'muthukumar', '2021-05-20', '192.168.200.89', '10:50:01', NULL),
(1456, '', 'admin', '2021-05-20', '10.225.1.78', '14:29:47', NULL),
(1457, '', 'admin', '2021-05-20', '10.225.1.78', '15:12:33', NULL),
(1458, '', 'admin', '2021-05-20', '10.225.1.78', '16:40:32', NULL),
(1459, '', 'admin', '2021-05-20', '10.225.1.78', '17:31:22', NULL),
(1460, '', 'admin', '2021-05-22', '10.225.1.78', '13:46:02', NULL),
(1461, '', 'admin', '2021-05-22', '192.168.43.246', '14:21:58', NULL),
(1462, '', 'admin', '2021-05-22', '192.168.43.246', '14:24:41', NULL),
(1463, '', 'admin', '2021-05-22', '192.168.43.246', '14:31:05', NULL),
(1464, '', 'admin', '2021-05-22', '192.168.43.246', '14:33:31', NULL),
(1465, '', 'admin', '2021-05-22', '192.168.43.246', '14:55:02', NULL),
(1466, '', 'admin', '2021-05-22', '10.225.1.78', '14:59:21', NULL),
(1467, '', 'girish', '2021-05-24', '10.225.1.78', '10:57:33', NULL),
(1468, '', 'selvaraj', '2021-05-24', '10.225.1.78', '10:57:59', NULL),
(1469, '', 'admin', '2021-05-24', '10.225.1.78', '10:58:21', NULL),
(1470, '', 'admin', '2021-05-24', '10.225.1.78', '15:46:45', NULL),
(1471, '', 'admin', '2021-05-24', '10.225.1.78', '15:57:15', NULL),
(1472, '', 'girish', '2021-05-24', '10.225.1.78', '16:05:43', NULL),
(1473, '', 'selvaraj', '2021-05-24', '10.225.1.78', '16:05:57', NULL),
(1474, '', 'admin', '2021-05-24', '10.225.1.78', '16:06:38', NULL),
(1475, '', 'admin', '2021-05-25', '172.16.10.4', '09:35:41', NULL),
(1476, '', 'admin', '2021-05-25', '172.16.10.4', '09:50:55', NULL),
(1477, '', 'admin', '2021-05-26', '192.168.200.89', '13:10:32', NULL),
(1478, '', 'admin', '2021-05-26', '192.168.200.89', '13:52:36', NULL),
(1479, '', 'admin', '2021-05-26', '192.168.200.89', '14:07:52', NULL),
(1480, '', 'admin', '2021-05-26', '192.168.200.89', '15:18:15', NULL),
(1481, '', 'admin', '2021-05-29', '10.225.1.78', '14:27:07', NULL),
(1482, '', 'admin', '2021-05-29', '172.16.10.4', '18:17:33', NULL),
(1483, '', 'admin', '2021-05-29', '172.16.10.4', '18:19:05', NULL),
(1484, '', 'admin', '2021-05-31', '10.225.1.78', '10:33:25', NULL),
(1485, '', 'admin', '2021-06-01', '10.225.1.78', '09:53:12', NULL),
(1486, '', 'admin', '2021-06-01', '192.168.200.89', '11:30:03', NULL),
(1487, '', 'admin', '2021-06-01', '10.225.1.78', '11:50:30', NULL),
(1488, '', 'admin', '2021-06-01', '10.225.1.78', '12:57:00', NULL),
(1489, '', 'selvaraj', '2021-06-01', '10.225.1.78', '13:08:47', NULL),
(1490, '', 'girish', '2021-06-01', '10.225.1.78', '13:10:01', NULL),
(1491, '', 'admin', '2021-06-01', '192.168.200.89', '13:21:08', NULL),
(1492, '', 'admin', '2021-06-01', '10.225.1.78', '13:34:01', NULL),
(1493, '', 'selvaraj', '2021-06-01', '10.225.1.78', '13:35:50', NULL),
(1494, '', 'muthukumar', '2021-06-01', '10.225.1.78', '13:37:50', NULL),
(1495, '', 'selvaraj', '2021-06-01', '10.225.1.78', '13:46:16', NULL),
(1496, '', 'admin', '2021-06-01', '10.225.1.78', '15:32:23', NULL),
(1497, '', 'admin', '2021-06-02', '10.225.1.78', '14:10:17', NULL),
(1498, '', 'admin', '2021-06-02', '192.168.200.89', '15:05:30', NULL),
(1499, '', 'shanmuganathan', '2021-06-03', '10.225.1.78', '16:33:21', NULL),
(1500, '', 'admin', '2021-06-04', '10.225.1.78', '10:20:12', NULL),
(1501, '', 'admin', '2021-06-04', '10.225.1.78', '10:20:12', NULL),
(1502, '', 'admin', '2021-06-04', '10.225.1.78', '11:43:42', NULL),
(1503, '', 'ramakrishnan', '2021-06-04', '10.225.1.78', '15:02:25', NULL),
(1504, '', 'admin', '2021-06-05', '192.168.200.89', '11:13:12', NULL),
(1505, '', 'admin', '2021-06-05', '10.225.1.78', '12:35:25', NULL),
(1506, '', 'ramakrishnan', '2021-06-05', '10.225.1.78', '14:04:27', NULL),
(1507, '', 'ramakrishnan', '2021-06-07', '10.225.1.78', '10:24:21', NULL),
(1508, '', 'admin', '2021-06-07', '10.225.1.78', '11:23:06', NULL),
(1509, '', 'admin', '2021-06-07', '10.225.1.78', '12:01:40', NULL),
(1510, '', 'muthukumar', '2021-06-07', '10.225.1.78', '12:07:24', NULL),
(1511, '', 'muthukumar', '2021-06-07', '10.225.1.78', '12:08:27', NULL),
(1512, '', 'ramakrishnan', '2021-06-07', '10.225.1.78', '13:54:50', NULL),
(1513, '', 'ramakrishnan', '2021-06-07', '192.168.200.89', '17:50:58', NULL),
(1514, '', 'ramakrishnan', '2021-06-08', '10.225.1.78', '08:59:10', NULL),
(1515, '', 'shanmuganathan', '2021-06-08', '10.225.1.78', '09:00:16', NULL),
(1516, '', 'kalaimani', '2021-06-08', '10.225.1.78', '09:02:46', NULL),
(1517, '', 'kalaimani', '2021-06-08', '10.225.1.78', '09:02:46', NULL),
(1518, '', 'kalaimani', '2021-06-08', '10.225.1.78', '09:04:21', NULL),
(1519, '', 'kalaimani', '2021-06-08', '10.225.1.78', '09:04:21', NULL),
(1520, '', 'ramakrishnan', '2021-06-08', '10.225.1.78', '09:07:05', NULL),
(1521, '', 'karthikeyan', '2021-06-08', '10.225.1.78', '09:11:01', NULL),
(1522, '', 'ramakrishnan', '2021-06-08', '10.225.1.78', '11:34:23', NULL),
(1523, '', 'shanmuganathan', '2021-06-08', '10.225.1.78', '11:35:07', NULL),
(1524, '', 'sathish', '2021-06-08', '10.225.1.78', '11:42:36', NULL),
(1525, '', 'kalaimani', '2021-06-08', '10.225.1.78', '11:43:42', NULL),
(1526, '', 'kalaimani', '2021-06-08', '10.225.1.78', '11:43:42', NULL),
(1527, '', 'kalaimani', '2021-06-08', '10.225.1.78', '11:44:30', NULL),
(1528, '', 'kalaimani', '2021-06-08', '10.225.1.78', '11:44:30', NULL),
(1529, '', 'shanmuganathan', '2021-06-08', '10.225.1.78', '11:45:13', NULL),
(1530, '', 'admin', '2021-06-08', '10.225.1.78', '11:56:43', NULL),
(1531, '', 'admin', '2021-06-08', '10.225.1.78', '12:00:35', NULL),
(1532, '', 'ramakrishnan', '2021-06-08', '10.225.1.78', '12:44:34', NULL),
(1533, '', 'admin', '2021-06-08', '10.225.1.78', '13:33:51', NULL),
(1534, '', 'admin', '2021-06-08', '10.225.1.78', '17:21:37', NULL),
(1535, '', 'selvaraj', '2021-06-08', '10.225.1.78', '17:27:22', NULL),
(1536, '', 'admin', '2021-06-08', '10.225.1.78', '17:27:41', NULL),
(1537, '', 'admin', '2021-06-09', '10.225.1.78', '15:47:59', NULL),
(1538, '', 'admin', '2021-06-09', '10.225.1.78', '17:02:15', NULL),
(1539, '', 'admin', '2021-06-09', '10.225.1.78', '17:03:55', NULL),
(1540, '', 'ramakrishnan', '2021-06-09', '192.168.200.89', '18:08:30', NULL),
(1541, '', 'admin', '2021-06-10', '10.225.1.78', '10:04:38', NULL),
(1542, '', 'ramakrishnan', '2021-06-10', '10.225.1.78', '10:21:15', NULL),
(1543, '', 'selvaraj', '2021-06-10', '10.225.1.78', '11:13:03', NULL),
(1544, '', 'admin', '2021-06-10', '10.225.1.78', '11:36:38', NULL),
(1545, '', 'girish', '2021-06-10', '10.225.1.78', '12:23:03', NULL),
(1546, '', 'admin', '2021-06-11', '10.225.1.78', '15:02:02', NULL),
(1547, '', 'ramakrishnan', '2021-06-14', '10.225.1.78', '09:18:39', NULL),
(1548, '', 'admin', '2021-06-14', '10.225.1.78', '09:32:14', NULL),
(1549, '', 'admin', '2021-06-14', '10.225.1.78', '10:18:00', NULL),
(1550, '', 'admin', '2021-06-14', '192.168.200.89', '10:33:29', NULL),
(1551, '', 'admin', '2021-06-14', '192.168.200.89', '10:34:22', NULL),
(1552, '', 'admin', '2021-06-14', '192.168.182.83', '10:46:18', NULL),
(1553, '', 'admin', '2021-06-14', '10.225.1.78', '10:48:56', NULL),
(1554, '', 'admin', '2021-06-14', '192.168.200.89', '10:53:38', NULL),
(1555, '', 'admin', '2021-06-14', '10.225.1.78', '11:03:09', NULL),
(1556, '', 'admin', '2021-06-14', '10.225.1.78', '11:37:34', NULL),
(1557, '', 'admin', '2021-06-14', '192.168.200.89', '11:49:07', NULL),
(1558, '', 'admin', '2021-06-14', '192.168.200.89', '11:50:25', NULL),
(1559, '', 'admin', '2021-06-14', '10.225.1.78', '12:15:01', NULL),
(1560, '', 'admin', '2021-06-14', '10.225.1.78', '12:21:10', NULL),
(1561, '', 'selvaraj', '2021-06-14', '10.225.1.78', '12:52:42', NULL),
(1562, '', 'admin', '2021-06-14', '10.225.1.78', '12:53:08', NULL),
(1563, '', 'admin', '2021-06-14', '192.168.200.89', '12:55:32', NULL),
(1564, '', 'admin', '2021-06-14', '10.225.1.78', '12:56:16', NULL),
(1565, '', 'selvaraj', '2021-06-14', '10.225.1.78', '12:56:38', NULL),
(1566, '', 'admin', '2021-06-14', '192.168.200.89', '13:07:08', NULL),
(1567, '', 'selvaraj', '2021-06-14', '192.168.200.89', '13:07:13', NULL),
(1568, '', 'muthukumar', '2021-06-14', '192.168.200.89', '13:19:55', NULL),
(1569, '', 'admin', '2021-06-14', '192.168.200.89', '13:26:33', NULL),
(1570, '', 'admin', '2021-06-14', '10.225.1.78', '13:27:39', NULL),
(1571, '', 'selvaraj', '2021-06-14', '192.168.200.89', '13:43:59', NULL),
(1572, '', 'admin', '2021-06-14', '192.168.200.89', '13:48:52', NULL),
(1573, '', 'girish', '2021-06-14', '192.168.200.89', '13:49:20', NULL),
(1574, '', 'selvaraj', '2021-06-14', '10.225.1.78', '14:49:11', NULL),
(1575, '', 'admin', '2021-06-14', '10.225.1.78', '14:49:23', NULL),
(1576, '', 'selvaraj', '2021-06-14', '10.225.1.78', '14:52:19', NULL),
(1577, '', 'girish', '2021-06-14', '10.225.1.78', '14:55:45', NULL),
(1578, '', 'selvaraj', '2021-06-14', '10.225.1.78', '14:57:49', NULL),
(1579, '', 'admin', '2021-06-14', '10.225.1.78', '15:03:07', NULL),
(1580, '', 'admin', '2021-06-14', '10.225.1.78', '15:19:36', NULL),
(1581, '', 'admin', '2021-06-14', '172.16.10.5', '16:21:16', NULL),
(1582, '', 'admin', '2021-06-14', '10.225.1.78', '16:29:36', NULL),
(1583, '', 'admin', '2021-06-15', '10.225.1.78', '09:05:00', NULL),
(1584, '', 'admin', '2021-06-16', '10.225.1.78', '10:27:26', NULL),
(1585, '', 'admin', '2021-06-16', '10.225.1.78', '15:44:14', NULL),
(1586, '', 'admin', '2021-06-18', '172.16.10.1', '09:36:18', NULL),
(1587, '', 'admin', '2021-06-18', '10.225.1.78', '13:25:23', NULL),
(1588, '', 'admin', '2021-06-19', '10.225.1.78', '11:21:08', NULL),
(1589, '', 'admin', '2021-06-19', '10.225.1.78', '11:30:03', NULL),
(1590, '', 'girish', '2021-06-19', '10.225.1.78', '11:42:57', NULL),
(1591, '', 'admin', '2021-06-19', '10.225.1.78', '11:43:44', NULL),
(1592, '', 'admin', '2021-06-22', '172.16.10.1', '11:01:58', NULL),
(1593, '', 'admin', '2021-06-22', '10.225.1.78', '15:52:31', NULL),
(1594, '', 'admin', '2021-06-23', '192.168.200.89', '09:45:19', NULL),
(1595, '', 'admin', '2021-06-23', '192.168.200.89', '13:40:52', NULL),
(1596, '', 'admin', '2021-06-24', '10.225.1.78', '09:49:51', NULL),
(1597, '', 'sivakumar', '2021-06-24', '192.168.201.59', '10:07:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `z_log_error`
--

DROP TABLE IF EXISTS `z_log_error`;
CREATE TABLE IF NOT EXISTS `z_log_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `ip_address` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_log_error`
--

INSERT INTO `z_log_error` (`id`, `user_name`, `password`, `ip_address`, `date`, `time`) VALUES
(1, 'Recruiter', 'Welcome@321', '::1', '2020-08-10', '23:58:19'),
(2, 'Recruiter', 'Welcome@321', '::1', '2020-08-10', '23:58:51'),
(3, 'Recruiter', 'Welcome@321', '::1', '2020-08-11', '00:00:05'),
(4, 'Intreviewer', 'WELCME@123', '192.168.201.109', '2020-08-12', '14:26:36'),
(5, 'Intreviewer', 'wELCOME@123', '192.168.201.109', '2020-08-12', '14:26:54'),
(6, 'Recruiter', 'Welcome@2020', '192.168.201.109', '2020-08-17', '19:24:11'),
(7, 'Recruiter', 'welcome@123', '192.168.201.109', '2020-08-17', '19:24:28'),
(8, 'admin', 'Welcome@2020', '192.168.201.109', '2020-08-18', '10:21:20'),
(9, 'Recruiter', 'wELCOME@123', '192.168.201.109', '2020-08-18', '10:35:48'),
(10, 'Recruiter', 'welcome@123', '::1', '2020-08-19', '18:47:16'),
(11, 'technical', 'welcome@123', '::1', '2020-08-22', '20:56:33'),
(12, 'Recruiter', 'welcome@123', '::1', '2020-08-24', '14:33:42'),
(13, 'Recruiter', 'Welcome', '::1', '2020-08-24', '14:34:00'),
(14, 'md', 'Welcome@123', '::1', '2020-08-26', '08:15:23'),
(15, 'md', 'Welcome@123', '::1', '2020-08-26', '08:15:41'),
(16, 'md', 'Welcome@123', '::1', '2020-08-26', '08:16:17'),
(17, 'admin', 'Welcme@123', '49.249.229.10', '2020-08-28', '11:31:18'),
(18, 'admin', 'Welcome123', '::1', '2020-09-01', '21:03:36'),
(19, 'md', 'Welcome@1233', '::1', '2020-09-01', '21:06:12'),
(20, 'candidate', 'Welocome@123', '::1', '2020-09-02', '17:07:28'),
(21, 'md', 'Welcoem@123', '::1', '2020-09-19', '20:24:46'),
(22, 'admin', 'WelcomeW@123', '::1', '2020-11-03', '13:14:45'),
(23, 'admin', 'Welcome2123', '10.225.1.78', '2020-11-14', '09:52:45'),
(24, 'admin', 'WElcome@123', '10.225.1.78', '2020-11-17', '16:39:31'),
(25, 'Recruiter', '123456', '192.168.200.114', '2020-11-17', '16:51:18'),
(26, 'admin', 'Welcoome@123', '192.168.200.16', '2020-11-19', '09:11:57'),
(27, 'technical', 'Welcome@!23', '192.168.200.114', '2020-11-20', '11:07:17'),
(28, 'balachandar', 'WElcome@123', '::1', '2020-11-20', '16:50:38'),
(29, 'admin', 'Welcome@2123', '192.168.201.15', '2021-02-16', '10:06:04'),
(30, 'admin', '123456', '192.168.201.15', '2021-02-16', '10:06:16'),
(31, 'admin', '123', '192.168.201.15', '2021-02-17', '10:09:03'),
(32, 'admin', '123456', '192.168.201.17', '2021-02-20', '10:30:45'),
(33, 'candidate', 'Welcome!@3', '192.168.201.17', '2021-02-20', '10:33:14'),
(34, 'Gopinath', 'Welcome@!23', '192.168.201.17', '2021-02-20', '10:36:28'),
(35, 'Recruiter', '123456', '192.168.201.17', '2021-02-20', '10:41:34'),
(36, 'admin', '123456', '192.168.201.176', '2021-02-20', '17:04:31'),
(37, 'admin', '123456', '192.168.201.176', '2021-02-22', '09:21:47'),
(38, 'admin', '123456', '192.168.201.176', '2021-02-22', '09:21:58'),
(39, 'admin', 'welcome@123', '192.168.201.15', '2021-02-22', '12:39:26'),
(40, 'Recruiter', 'Welcome@23', '192.168.201.12', '2021-02-22', '15:16:49'),
(41, 'md', 'welcome@123', '192.168.201.12', '2021-02-22', '16:12:49'),
(42, 'Gopinath', 'Welcome@2021', '192.168.201.12', '2021-02-22', '16:37:58'),
(43, 'admin', 'admin', '192.168.201.12', '2021-02-24', '15:43:16'),
(44, 'admin', 'Welcome2123', '192.168.201.12', '2021-02-24', '17:00:06'),
(45, 'admin', '231e@omlcWe', '192.168.201.176', '2021-02-25', '10:20:26'),
(46, 'technical', 'Welome@123', '192.168.201.15', '2021-03-01', '09:37:35'),
(47, 'hod', 'welcome@123', '192.168.201.15', '2021-03-01', '12:50:28'),
(48, 'technical', 'welcome@123', '192.168.201.15', '2021-03-01', '13:18:05'),
(49, 'hod', 'Welcome@1`23', '192.168.201.15', '2021-03-01', '13:21:38'),
(50, 'hod', 'welcome@123', '192.168.201.15', '2021-03-01', '14:44:47'),
(51, 'Gopinath', 'Welcome@!23', '192.168.201.15', '2021-03-01', '17:11:08'),
(52, 'admin', '', '192.168.201.15', '2021-03-02', '09:57:19'),
(53, 'hod', 'welcome@123', '192.168.201.15', '2021-03-02', '10:46:40'),
(54, 'technical', 'Welcome@1232', '192.168.201.15', '2021-03-02', '10:56:30'),
(55, '', '', '192.168.201.15', '2021-03-02', '11:01:33'),
(56, 'Ishwarya', 'Wlcome@123', '192.168.201.15', '2021-03-02', '11:04:42'),
(57, 'technical', 'Welcome@@123', '192.168.201.15', '2021-03-02', '15:40:22'),
(58, 'Gopinath', 'welcome@123', '192.168.201.15', '2021-03-02', '16:51:57'),
(59, 'hod', 'welcome@123', '192.168.201.15', '2021-03-03', '11:45:35'),
(60, 'technical1', 'Welcome@1`23', '192.168.201.15', '2021-03-03', '12:16:17'),
(61, 'Recruiter', '', '192.168.201.15', '2021-03-03', '14:35:36'),
(62, 'technical', 'Wecome@123', '192.168.201.15', '2021-03-03', '17:07:50'),
(63, 'technical', 'Welcome@1233', '192.168.201.15', '2021-03-03', '17:37:15'),
(64, 'md', 'welcome@123', '192.168.201.12', '2021-03-04', '10:04:50'),
(65, 'technical', 'Welcome@23', '192.168.201.12', '2021-03-04', '12:16:21'),
(66, 'Recruiter', 'Welconme@123', '192.168.201.12', '2021-03-05', '12:56:56'),
(67, 'Recruiter', 'Welcome123', '192.168.201.12', '2021-03-06', '10:18:10'),
(68, 'Recruiter', 'welcome@123', '192.168.201.12', '2021-03-06', '10:18:22'),
(69, 'technical', 'Welcome21123', '192.168.201.12', '2021-03-06', '10:19:44'),
(70, 'technical', 'Welcome123', '192.168.201.12', '2021-03-06', '12:27:04'),
(71, 'technical', 'Welcome@23', '192.168.201.12', '2021-03-06', '12:27:17'),
(72, 'admin', 'welcome@123', '192.168.201.12', '2021-03-06', '17:04:26'),
(73, 'Laxmi', 'Welcome@1223', '192.168.201.163', '2021-03-08', '15:25:38'),
(74, 'admin', '123', '192.168.201.14', '2021-03-15', '11:33:19'),
(75, '', '', '192.168.201.48', '2021-03-15', '11:45:09'),
(76, 'admin', '123456', '192.168.201.17', '2021-03-16', '10:41:32'),
(77, 'Uma', 'Welocme@123', '192.168.201.17', '2021-03-17', '10:58:52'),
(78, 'admin', 'Welcome@!123', '192.168.201.17', '2021-03-17', '12:15:49'),
(79, 'admin', '123', '192.168.201.15', '2021-03-17', '14:19:11'),
(80, 'admin', 'admin@123', '192.168.201.15', '2021-03-17', '14:20:56'),
(81, 'admin', '123', '192.168.201.10', '2021-03-18', '16:01:12'),
(82, 'admin', 'admin123', '192.168.201.10', '2021-03-18', '16:01:23'),
(83, 'admin', 'Welcome@!23', '192.168.201.17', '2021-03-20', '11:09:48'),
(84, 'Laxmipriya', 'Welcome123', '192.168.201.12', '2021-03-22', '09:19:39'),
(85, 'admin', 'Welcome123', '192.168.201.163', '2021-03-22', '09:37:22'),
(86, 'sindhu', 'sindhu@123', '192.168.201.41', '2021-03-22', '17:08:26'),
(87, 'sindhu', 'sindhu@123', '192.168.201.41', '2021-03-22', '17:11:13'),
(88, 'admin', 'admin', '192.168.201.40', '2021-03-22', '17:41:00'),
(89, 'admin', '123456', '192.168.201.40', '2021-03-22', '17:41:42'),
(90, '', '', '192.168.201.41', '2021-03-22', '17:49:02'),
(91, 'admin', 'Welcome123', '192.168.201.14', '2021-03-23', '09:38:59'),
(92, 'admin', 'admin@123', '192.168.201.15', '2021-03-23', '10:28:49'),
(93, 'admin', 'elcome@123', '192.168.201.12', '2021-03-23', '10:46:41'),
(94, 'admin', 'Welcome@23', '192.168.201.12', '2021-03-23', '10:46:53'),
(95, 'Laxmi Priya', 'Welcome123', '192.168.201.163', '2021-03-23', '14:24:08'),
(96, 'admin', 'WElcome@123', '192.168.201.14', '2021-03-23', '17:00:16'),
(97, 'admin', '', '192.168.201.12', '2021-03-24', '09:31:30'),
(98, 'Recruiter', 'Welcopme@123', '192.168.201.12', '2021-03-24', '17:16:13'),
(99, 'admin', 'Welcome@13', '192.168.201.12', '2021-03-26', '11:48:51'),
(100, 'admin', 'Welcome123', '192.168.201.12', '2021-03-26', '11:49:03'),
(101, 'admin', 'Welcome@!23', '192.168.201.17', '2021-03-26', '12:09:11'),
(102, 'md', '123456', '192.168.201.17', '2021-03-26', '16:20:32'),
(103, 'admin', 'Welcome@!23', '192.168.201.17', '2021-03-26', '16:24:48'),
(104, 'admin', 'Welcome@!23', '192.168.201.17', '2021-03-26', '16:24:57'),
(105, 'Recruiter', 'Welcome@13', '192.168.201.12', '2021-03-29', '09:09:39'),
(106, 'Recruiter', 'Welcome123', '192.168.201.12', '2021-03-29', '09:09:53'),
(107, 'admin', 'Weklcome@123', '192.168.201.17', '2021-03-29', '12:18:13'),
(108, 'admin', 'Welcome@!23', '192.168.201.17', '2021-03-29', '15:19:22'),
(109, 'admin', 'Welcome@!23', '192.168.201.17', '2021-03-29', '15:34:11'),
(110, 'admin', 'Welcome@!23', '192.168.201.17', '2021-03-29', '16:05:39'),
(111, 'admin', 'Welcome@!23', '192.168.201.17', '2021-03-29', '16:05:51'),
(112, 'md', 'Welcome@!23', '192.168.201.17', '2021-03-29', '16:07:04'),
(113, 'admin', 'Welcome@!23', '192.168.201.17', '2021-03-29', '17:15:47'),
(114, 'Recruiter', 'elcome@123', '192.168.201.12', '2021-03-29', '17:39:52'),
(115, 'Arunachalam', 'Welcom0e@123', '192.168.201.19', '2021-03-30', '09:53:40'),
(116, 'admin', '123', '192.168.201.161', '2021-03-30', '10:51:28'),
(117, 'admin', 'Welcome@!23', '192.168.201.17', '2021-03-30', '11:09:01'),
(118, 'admin', 'Welcome@!23', '192.168.201.17', '2021-03-30', '11:09:09'),
(119, 'Gopinath', 'Welcome@!23', '192.168.201.17', '2021-03-30', '12:10:16'),
(120, 'technical', 'Welcome@!23', '192.168.201.17', '2021-03-30', '16:09:26'),
(121, 'Sindhu ', 'Welcome123', '192.168.201.41', '2021-03-31', '14:41:57'),
(122, 'admin', 'Welcome@!23', '192.168.201.17', '2021-04-01', '10:45:34'),
(123, 'admin', 'Welcome@!23', '192.168.201.17', '2021-04-01', '10:56:17'),
(124, 'md', 'Welcome@!23', '192.168.201.17', '2021-04-01', '16:21:00'),
(125, 'admin', 'Welcome@!23', '192.168.201.17', '2021-04-01', '16:21:23'),
(126, 'admin', 'Welcome@!23', '192.168.201.17', '2021-04-01', '16:31:41'),
(127, 'admin', 'Welcome@!23', '192.168.201.17', '2021-04-01', '16:31:50'),
(128, 'admin', 'Welcoe@123', '192.168.201.12', '2021-04-02', '08:51:18'),
(129, 'admin', 'Welcome@!23', '192.168.201.17', '2021-04-02', '09:15:48'),
(130, 'Recruiter', 'Welcome@!23', '192.168.201.17', '2021-04-02', '10:38:58'),
(131, 'admin', '123456', '192.168.201.40', '2021-04-03', '11:39:43'),
(132, 'admin', '123', '192.168.201.15', '2021-04-05', '09:48:55'),
(133, ' ', '', '192.168.201.163', '2021-04-05', '10:30:03'),
(134, 'admin', 'Erlcome@123', '192.168.201.17', '2021-04-05', '11:58:49'),
(135, 'admin', 'Welcme@123', '192.168.201.12', '2021-04-05', '15:15:20'),
(136, ' ', '', '192.168.201.163', '2021-04-07', '16:48:38'),
(137, ' ', '', '192.168.201.163', '2021-04-07', '16:48:47'),
(138, ' ', '', '192.168.201.163', '2021-04-07', '16:49:37'),
(139, ' ', '', '192.168.201.163', '2021-04-07', '16:49:41'),
(140, ' ', '', '192.168.201.163', '2021-04-07', '16:50:19'),
(141, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(142, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(143, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(144, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(145, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(146, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(147, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(148, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(149, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(150, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(151, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(152, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(153, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(154, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(155, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(156, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(157, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(158, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(159, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(160, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(161, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(162, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(163, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(164, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(165, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(166, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(167, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(168, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(169, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(170, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(171, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(172, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(173, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(174, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(175, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(176, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(177, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(178, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(179, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(180, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(181, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(182, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(183, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(184, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(185, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(186, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(187, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(188, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(189, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(190, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(191, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(192, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(193, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(194, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(195, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(196, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(197, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(198, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(199, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(200, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(201, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(202, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(203, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(204, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(205, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(206, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(207, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(208, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(209, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(210, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(211, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(212, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(213, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(214, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(215, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(216, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(217, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(218, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(219, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(220, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(221, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(222, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(223, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(224, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(225, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(226, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(227, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(228, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(229, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(230, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(231, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(232, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(233, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(234, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(235, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(236, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(237, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(238, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(239, '', '', '192.168.201.18', '2021-04-15', '16:30:33'),
(240, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(241, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(242, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(243, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(244, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(245, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(246, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(247, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(248, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(249, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(250, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(251, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(252, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(253, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(254, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(255, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(256, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(257, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(258, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(259, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(260, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(261, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(262, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(263, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(264, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(265, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(266, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(267, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(268, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(269, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(270, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(271, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(272, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(273, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(274, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(275, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(276, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(277, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(278, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(279, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(280, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(281, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(282, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(283, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(284, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(285, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(286, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(287, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(288, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(289, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(290, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(291, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(292, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(293, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(294, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(295, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(296, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(297, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(298, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(299, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(300, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(301, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(302, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(303, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(304, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(305, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(306, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(307, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(308, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(309, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(310, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(311, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(312, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(313, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(314, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(315, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(316, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(317, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(318, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(319, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(320, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(321, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(322, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(323, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(324, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(325, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(326, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(327, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(328, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(329, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(330, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(331, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(332, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(333, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(334, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(335, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(336, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(337, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(338, '', '', '192.168.201.18', '2021-04-15', '16:30:42'),
(339, 'admin', 'admin@123', '192.168.201.34', '2021-04-27', '15:40:15'),
(340, 'admin', 'welcome@123', '192.168.201.34', '2021-04-27', '15:40:28'),
(341, 'sakthivel', 'Welcome@123 ', '49.249.229.10', '2021-05-01', '10:30:17'),
(342, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(343, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(344, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(345, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(346, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(347, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(348, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(349, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(350, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(351, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(352, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(353, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(354, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(355, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(356, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(357, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(358, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(359, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(360, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(361, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(362, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(363, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(364, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(365, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(366, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(367, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(368, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(369, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(370, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(371, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(372, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(373, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(374, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(375, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(376, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(377, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(378, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(379, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(380, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(381, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(382, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(383, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(384, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(385, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(386, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(387, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(388, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(389, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(390, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(391, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(392, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(393, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(394, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(395, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(396, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(397, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(398, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(399, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(400, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(401, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(402, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(403, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(404, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(405, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(406, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(407, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(408, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(409, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(410, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(411, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(412, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(413, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(414, '', '', '49.249.229.10', '2021-05-01', '10:32:28'),
(415, 'sakthivel', 'Welcome@123 ', '49.249.229.10', '2021-05-01', '10:35:04'),
(416, 'sakthivel', 'Welcome@123 ', '49.249.229.10', '2021-05-01', '10:35:19'),
(417, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(418, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(419, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(420, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(421, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(422, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(423, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(424, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(425, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(426, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(427, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(428, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(429, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(430, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(431, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(432, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(433, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(434, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(435, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(436, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(437, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(438, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(439, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(440, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(441, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(442, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(443, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(444, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(445, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(446, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(447, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(448, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(449, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(450, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(451, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(452, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(453, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(454, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(455, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(456, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(457, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(458, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(459, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(460, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(461, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(462, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(463, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(464, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(465, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(466, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(467, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(468, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(469, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(470, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(471, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(472, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(473, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(474, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(475, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(476, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(477, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(478, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(479, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(480, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(481, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(482, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(483, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(484, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(485, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(486, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(487, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(488, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(489, '', '', '49.249.229.10', '2021-05-01', '10:37:09'),
(490, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(491, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(492, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(493, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(494, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(495, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(496, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(497, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(498, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(499, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(500, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(501, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(502, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(503, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(504, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(505, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(506, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(507, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(508, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(509, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(510, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(511, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(512, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(513, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(514, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(515, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(516, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(517, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(518, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(519, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(520, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(521, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(522, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(523, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(524, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(525, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(526, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(527, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(528, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(529, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(530, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(531, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(532, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(533, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(534, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(535, '', '', '49.249.229.10', '2021-05-03', '08:41:53'),
(536, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(537, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(538, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(539, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(540, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(541, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(542, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(543, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(544, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(545, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(546, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(547, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(548, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(549, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(550, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(551, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(552, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(553, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(554, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(555, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(556, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(557, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(558, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(559, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(560, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(561, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(562, '', '', '49.249.229.10', '2021-05-03', '08:41:54'),
(563, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(564, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(565, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(566, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(567, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(568, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(569, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(570, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(571, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(572, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(573, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(574, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(575, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(576, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(577, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(578, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(579, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(580, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(581, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(582, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(583, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(584, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(585, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(586, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(587, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(588, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(589, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(590, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(591, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(592, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(593, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(594, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(595, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(596, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(597, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(598, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(599, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(600, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(601, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(602, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(603, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(604, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(605, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(606, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(607, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(608, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(609, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(610, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(611, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(612, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(613, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(614, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(615, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(616, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(617, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(618, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(619, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(620, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(621, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(622, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(623, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(624, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(625, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(626, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(627, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(628, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(629, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(630, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(631, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(632, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(633, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(634, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(635, '', '', '49.249.229.10', '2021-05-03', '12:14:53'),
(636, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(637, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(638, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(639, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(640, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(641, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(642, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(643, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(644, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(645, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(646, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(647, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(648, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(649, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(650, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(651, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(652, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(653, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(654, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(655, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(656, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(657, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(658, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(659, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(660, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(661, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(662, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(663, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(664, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(665, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(666, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(667, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(668, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(669, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(670, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(671, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(672, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(673, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(674, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(675, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(676, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(677, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(678, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(679, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(680, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(681, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(682, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(683, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(684, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(685, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(686, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(687, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(688, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(689, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(690, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(691, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(692, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(693, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(694, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(695, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(696, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(697, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(698, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(699, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(700, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(701, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(702, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(703, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(704, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(705, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(706, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(707, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(708, '', '', '49.249.229.10', '2021-05-04', '15:26:17'),
(709, 'admin', 'welcome@123', '192.168.201.20', '2021-05-05', '10:38:50'),
(710, 'muthukumar', 'Welcome@123', '192.168.43.246', '2021-05-12', '13:01:00'),
(711, 'muthukumar', 'Welcome@123', '192.168.43.246', '2021-05-12', '13:01:21'),
(712, 'muthukumar', 'Welcome@12', '192.168.43.246', '2021-05-12', '13:05:06'),
(713, 'muthukumar', 'Welcome@123', '10.225.1.78', '2021-05-12', '13:06:47'),
(714, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(715, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(716, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(717, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(718, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(719, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(720, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(721, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(722, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(723, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(724, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(725, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(726, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(727, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(728, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(729, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(730, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(731, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(732, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(733, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(734, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(735, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(736, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(737, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(738, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(739, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(740, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(741, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(742, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(743, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(744, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(745, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(746, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(747, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(748, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(749, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(750, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(751, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(752, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(753, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(754, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(755, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(756, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(757, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(758, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(759, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(760, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(761, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(762, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(763, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(764, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(765, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(766, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(767, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(768, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(769, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(770, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(771, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(772, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(773, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(774, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(775, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(776, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(777, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(778, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(779, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(780, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(781, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(782, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(783, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(784, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(785, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(786, '', '', '192.168.43.246', '2021-05-22', '14:04:14'),
(787, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(788, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(789, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(790, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(791, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(792, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(793, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(794, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(795, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(796, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(797, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(798, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(799, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(800, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(801, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(802, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(803, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(804, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(805, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(806, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(807, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(808, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(809, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(810, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(811, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(812, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(813, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(814, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(815, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(816, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(817, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(818, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(819, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(820, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(821, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(822, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(823, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(824, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(825, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(826, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(827, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(828, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(829, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(830, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(831, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(832, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(833, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(834, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(835, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(836, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(837, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(838, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(839, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(840, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(841, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(842, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(843, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(844, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(845, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(846, '', '', '192.168.43.246', '2021-05-22', '14:04:25');
INSERT INTO `z_log_error` (`id`, `user_name`, `password`, `ip_address`, `date`, `time`) VALUES
(847, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(848, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(849, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(850, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(851, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(852, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(853, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(854, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(855, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(856, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(857, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(858, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(859, '', '', '192.168.43.246', '2021-05-22', '14:04:25'),
(860, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(861, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(862, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(863, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(864, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(865, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(866, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(867, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(868, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(869, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(870, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(871, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(872, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(873, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(874, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(875, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(876, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(877, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(878, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(879, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(880, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(881, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(882, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(883, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(884, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(885, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(886, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(887, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(888, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(889, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(890, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(891, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(892, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(893, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(894, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(895, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(896, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(897, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(898, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(899, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(900, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(901, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(902, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(903, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(904, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(905, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(906, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(907, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(908, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(909, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(910, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(911, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(912, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(913, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(914, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(915, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(916, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(917, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(918, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(919, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(920, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(921, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(922, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(923, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(924, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(925, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(926, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(927, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(928, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(929, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(930, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(931, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(932, '', '', '192.168.43.246', '2021-05-22', '14:15:29'),
(933, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(934, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(935, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(936, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(937, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(938, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(939, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(940, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(941, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(942, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(943, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(944, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(945, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(946, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(947, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(948, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(949, '', '', '192.168.43.246', '2021-05-22', '14:15:38'),
(950, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(951, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(952, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(953, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(954, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(955, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(956, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(957, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(958, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(959, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(960, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(961, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(962, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(963, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(964, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(965, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(966, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(967, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(968, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(969, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(970, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(971, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(972, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(973, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(974, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(975, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(976, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(977, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(978, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(979, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(980, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(981, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(982, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(983, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(984, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(985, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(986, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(987, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(988, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(989, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(990, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(991, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(992, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(993, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(994, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(995, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(996, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(997, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(998, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(999, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(1000, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(1001, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(1002, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(1003, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(1004, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(1005, '', '', '192.168.43.246', '2021-05-22', '14:15:39'),
(1006, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1007, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1008, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1009, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1010, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1011, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1012, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1013, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1014, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1015, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1016, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1017, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1018, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1019, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1020, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1021, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1022, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1023, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1024, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1025, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1026, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1027, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1028, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1029, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1030, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1031, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1032, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1033, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1034, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1035, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1036, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1037, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1038, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1039, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1040, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1041, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1042, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1043, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1044, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1045, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1046, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1047, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1048, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1049, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1050, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1051, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1052, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1053, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1054, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1055, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1056, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1057, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1058, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1059, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1060, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1061, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1062, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1063, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1064, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1065, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1066, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1067, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1068, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1069, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1070, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1071, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1072, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1073, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1074, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1075, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1076, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1077, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1078, '', '', '192.168.43.246', '2021-05-22', '14:15:57'),
(1079, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1080, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1081, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1082, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1083, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1084, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1085, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1086, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1087, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1088, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1089, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1090, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1091, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1092, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1093, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1094, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1095, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1096, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1097, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1098, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1099, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1100, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1101, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1102, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1103, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1104, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1105, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1106, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1107, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1108, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1109, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1110, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1111, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1112, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1113, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1114, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1115, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1116, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1117, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1118, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1119, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1120, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1121, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1122, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1123, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1124, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1125, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1126, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1127, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1128, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1129, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1130, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1131, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1132, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1133, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1134, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1135, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1136, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1137, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1138, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1139, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1140, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1141, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1142, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1143, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1144, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1145, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1146, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1147, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1148, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1149, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1150, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1151, '', '', '192.168.43.246', '2021-05-22', '14:16:15'),
(1152, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1153, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1154, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1155, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1156, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1157, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1158, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1159, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1160, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1161, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1162, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1163, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1164, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1165, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1166, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1167, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1168, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1169, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1170, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1171, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1172, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1173, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1174, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1175, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1176, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1177, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1178, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1179, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1180, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1181, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1182, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1183, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1184, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1185, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1186, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1187, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1188, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1189, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1190, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1191, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1192, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1193, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1194, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1195, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1196, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1197, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1198, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1199, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1200, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1201, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1202, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1203, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1204, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1205, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1206, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1207, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1208, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1209, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1210, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1211, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1212, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1213, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1214, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1215, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1216, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1217, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1218, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1219, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1220, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1221, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1222, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1223, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1224, '', '', '192.168.43.246', '2021-05-22', '14:17:27'),
(1225, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1226, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1227, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1228, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1229, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1230, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1231, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1232, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1233, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1234, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1235, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1236, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1237, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1238, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1239, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1240, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1241, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1242, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1243, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1244, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1245, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1246, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1247, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1248, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1249, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1250, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1251, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1252, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1253, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1254, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1255, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1256, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1257, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1258, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1259, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1260, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1261, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1262, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1263, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1264, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1265, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1266, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1267, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1268, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1269, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1270, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1271, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1272, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1273, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1274, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1275, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1276, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1277, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1278, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1279, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1280, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1281, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1282, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1283, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1284, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1285, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1286, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1287, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1288, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1289, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1290, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1291, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1292, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1293, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1294, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1295, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1296, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1297, '', '', '192.168.43.246', '2021-05-22', '14:18:59'),
(1298, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1299, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1300, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1301, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1302, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1303, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1304, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1305, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1306, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1307, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1308, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1309, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1310, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1311, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1312, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1313, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1314, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1315, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1316, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1317, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1318, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1319, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1320, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1321, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1322, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1323, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1324, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1325, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1326, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1327, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1328, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1329, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1330, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1331, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1332, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1333, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1334, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1335, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1336, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1337, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1338, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1339, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1340, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1341, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1342, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1343, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1344, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1345, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1346, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1347, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1348, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1349, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1350, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1351, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1352, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1353, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1354, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1355, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1356, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1357, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1358, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1359, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1360, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1361, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1362, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1363, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1364, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1365, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1366, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1367, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1368, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1369, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1370, '', '', '192.168.43.246', '2021-05-22', '14:19:07'),
(1371, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1372, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1373, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1374, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1375, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1376, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1377, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1378, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1379, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1380, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1381, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1382, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1383, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1384, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1385, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1386, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1387, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1388, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1389, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1390, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1391, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1392, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1393, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1394, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1395, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1396, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1397, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1398, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1399, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1400, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1401, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1402, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1403, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1404, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1405, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1406, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1407, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1408, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1409, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1410, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1411, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1412, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1413, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1414, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1415, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1416, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1417, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1418, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1419, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1420, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1421, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1422, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1423, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1424, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1425, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1426, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1427, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1428, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1429, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1430, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1431, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1432, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1433, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1434, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1435, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1436, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1437, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1438, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1439, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1440, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1441, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1442, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1443, '', '', '192.168.43.246', '2021-05-22', '14:19:11'),
(1444, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1445, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1446, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1447, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1448, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1449, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1450, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1451, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1452, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1453, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1454, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1455, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1456, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1457, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1458, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1459, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1460, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1461, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1462, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1463, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1464, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1465, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1466, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1467, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1468, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1469, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1470, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1471, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1472, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1473, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1474, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1475, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1476, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1477, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1478, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1479, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1480, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1481, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1482, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1483, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1484, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1485, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1486, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1487, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1488, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1489, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1490, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1491, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1492, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1493, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1494, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1495, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1496, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1497, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1498, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1499, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1500, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1501, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1502, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1503, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1504, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1505, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1506, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1507, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1508, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1509, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1510, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1511, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1512, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1513, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1514, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1515, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1516, '', '', '192.168.43.246', '2021-05-22', '14:19:28'),
(1517, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1518, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1519, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1520, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1521, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1522, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1523, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1524, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1525, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1526, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1527, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1528, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1529, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1530, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1531, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1532, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1533, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1534, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1535, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1536, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1537, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1538, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1539, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1540, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1541, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1542, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1543, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1544, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1545, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1546, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1547, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1548, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1549, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1550, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1551, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1552, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1553, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1554, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1555, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1556, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1557, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1558, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1559, '', '', '192.168.43.246', '2021-05-22', '14:19:31'),
(1560, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1561, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1562, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1563, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1564, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1565, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1566, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1567, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1568, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1569, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1570, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1571, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1572, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1573, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1574, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1575, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1576, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1577, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1578, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1579, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1580, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1581, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1582, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1583, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1584, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1585, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1586, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1587, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1588, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1589, '', '', '192.168.43.246', '2021-05-22', '14:19:32'),
(1590, 'admin', 'admin@123', '192.168.200.89', '2021-05-26', '15:14:57'),
(1591, 'admin', 'admin@123', '192.168.200.89', '2021-05-26', '15:17:58'),
(1592, 'admin', 'Welclme@123', '10.225.1.78', '2021-06-02', '14:10:04'),
(1593, 'muthukumar', 'Wecome@123', '10.225.1.78', '2021-06-07', '12:08:13'),
(1594, 'karthikeyan', 'Welcome212', '10.225.1.78', '2021-06-08', '09:10:49'),
(1595, 'sathish', 'Welcome@12', '10.225.1.78', '2021-06-08', '11:41:29'),
(1596, 'sathish', 'Welcome@12', '10.225.1.78', '2021-06-08', '11:41:43'),
(1597, 'kalaimani', 'Welcome@12', '10.225.1.78', '2021-06-08', '11:44:17'),
(1598, 'kalaimani', 'Welcome@12', '10.225.1.78', '2021-06-08', '11:44:17'),
(1599, 'admin', 'admin@13', '10.225.1.78', '2021-06-08', '11:56:28'),
(1600, 'admin', 'Welcome@12', '10.225.1.78', '2021-06-09', '17:01:58'),
(1601, 'admin', 'Welcome@1223', '10.225.1.78', '2021-06-10', '10:03:57'),
(1602, 'admin', 'Welcome@12', '10.225.1.78', '2021-06-10', '10:04:19'),
(1603, 'admin', 'admin@123', '192.168.200.89', '2021-06-14', '10:33:13'),
(1604, 'admin', 'Welcome@12', '192.168.200.89', '2021-06-14', '10:53:03'),
(1605, 'admin', 'Welcome@12', '192.168.200.89', '2021-06-14', '10:53:20'),
(1606, 'admin', 'welcome@1123', '192.168.200.89', '2021-06-23', '13:40:26'),
(1607, 'admin', 'welcome @123', '10.225.1.78', '2021-06-24', '09:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `z_masters_menu`
--

DROP TABLE IF EXISTS `z_masters_menu`;
CREATE TABLE IF NOT EXISTS `z_masters_menu` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_description` varchar(255) DEFAULT NULL,
  `menu_order` varchar(255) DEFAULT NULL,
  `menu_class` varchar(255) DEFAULT NULL,
  `menu_url` varchar(255) DEFAULT NULL,
  `call_method` varchar(125) DEFAULT NULL,
  `created_by` int(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_masters_menu`
--

INSERT INTO `z_masters_menu` (`id`, `menu_name`, `menu_description`, `menu_order`, `menu_class`, `menu_url`, `call_method`, `created_by`, `created_on`) VALUES
(1, 'Recruitment', 'Form ', '1', 'fa fa-network-wired', 'Recruitment', 'recruitment()', 1, '2020-08-10 00:00:00'),
(2, 'Reports', 'Intreviewer Reports', '1', 'fa fa-list', 'Reports', 'reports()', 1, '2020-08-10 00:00:00'),
(4, 'Interview Question', 'Interview Question', '3', 'fa fa-list', 'Interview', 'interview()', 1, '2020-11-03 00:00:00'),
(5, 'Masters', 'Masters', '4', 'fa fa-list', 'Masters', 'masters()', 1, '2020-11-03 00:00:00'),
(6, 'Assessment', 'Assesment', '6', 'fa fa-list', 'Assesment', 'assesment()', 1, '2021-03-05 00:00:00'),
(7, 'Employee Assessment ', 'Employee Assessment Question', '7', 'fa fa-list', 'Assessment Question', 'assessment_question()', 1, '2021-03-05 00:00:00'),
(8, 'Payroll', 'Payroll', '8', 'fa fa-list', 'Payroll', 'Payroll()', 1, '2021-03-05 00:00:00'),
(9, 'Staff', 'Staff', '9', 'fa fa-list', 'staff', 'staff()', 1, '2021-03-19 00:00:00'),
(10, 'CRM', 'CRM', '10', 'fa fa-list', 'crm', 'crm()', 1, '2021-03-19 00:00:00'),
(12, 'Business Process', 'Business Process', '13', 'fa fa-list', 'Business Process', 'BusinessProcess()', 1, '2021-03-19 00:00:00'),
(13, 'Resource', 'Resource', '13', 'fa fa-list', 'Resource', 'resource()', 1, '2021-04-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `z_masters_sub_menu`
--

DROP TABLE IF EXISTS `z_masters_sub_menu`;
CREATE TABLE IF NOT EXISTS `z_masters_sub_menu` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `menu_id` int(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `call_method` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `created_by` int(2) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_by` int(2) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_masters_sub_menu`
--

INSERT INTO `z_masters_sub_menu` (`id`, `menu_id`, `name`, `call_method`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 'Application Form', 'application()', 1, 1, '2020-08-10 00:00:00', 1, '2020-08-10 00:00:00'),
(2, 1, 'Interview Feedback Form', 'feedback()', 1, 1, '2020-08-10 00:00:00', 1, '2020-08-10 00:00:00'),
(3, 1, 'CTC Approval', 'ctc_approval()', 1, 1, '2020-08-10 00:00:00', 1, '2020-08-10 00:00:00'),
(4, 2, 'Intreview Peoples', 'interview_reports()', 1, 1, '2020-08-10 00:00:00', 1, '2020-08-10 00:00:00'),
(5, 2, 'Department Report', 'department_reports()', 1, 1, '2020-08-10 00:00:00', 1, '2020-08-10 00:00:00'),
(11, 2, 'CTC Report', 'ctc_reports()', 1, 1, '2020-09-05 00:00:00', 1, '2020-09-05 00:00:00'),
(12, 3, 'Question ', 'question()', 1, 1, '2020-09-05 00:00:00', 1, '2020-09-05 00:00:00'),
(13, 3, 'Question Management', 'question_managements()', 1, 1, '2020-09-05 00:00:00', 1, '2020-09-05 00:00:00'),
(14, 3, 'Candidate Result', 'candicate_results()', 1, 1, '2020-09-07 00:00:00', 1, '2020-09-05 00:00:00'),
(15, 1, 'Candidate Form', 'candidate_form()', 1, 1, '2020-09-07 00:00:00', 1, '2020-09-05 00:00:00'),
(16, 5, 'Department Master', 'department_master()', 1, 1, '2020-09-07 00:00:00', 1, '2020-09-05 00:00:00'),
(17, 5, 'Department Mapping', 'department_mapping()', 1, 1, '2020-09-07 00:00:00', 1, '2020-09-05 00:00:00'),
(18, 5, 'Company Master', 'company_master()', 1, 1, '2020-09-07 00:00:00', 1, '2020-09-05 00:00:00'),
(19, 6, 'Assessment Question', 'assesment_question()', 1, 1, '2021-03-05 00:00:00', 1, '2021-03-05 00:00:00'),
(20, 5, 'Question Name Master', 'question_name()', 1, 1, '2020-09-07 00:00:00', 1, '2020-09-05 00:00:00'),
(21, 5, 'Section Master', 'section_master()', 1, 1, '2020-09-07 00:00:00', 1, '2020-09-05 00:00:00'),
(22, 7, 'Employee Assessment Question', 'emp_assessment_question()', 1, 1, '2021-03-05 00:00:00', 1, '2021-03-05 00:00:00'),
(23, 6, 'Assessment Employee Master', 'assessment_employee()', 1, 1, '2021-03-05 00:00:00', 1, '2021-03-05 00:00:00'),
(24, 6, 'Assessment Employee Result', 'assessment_result()', 1, 1, '2021-03-09 00:00:00', 1, '2021-03-09 00:00:00'),
(25, 8, 'Attendance', 'Attendance()', 1, 1, '2021-03-11 00:00:00', 1, '2021-03-11 00:00:00'),
(26, 8, 'Holidays', 'holidays()', 1, 1, '2021-03-11 00:00:00', 1, '2021-03-11 00:00:00'),
(27, 8, 'Leaves', 'leave_master()', 1, 1, '2021-03-11 00:00:00', 1, '2021-03-11 00:00:00'),
(28, 8, 'Scale', 'scale_master()', 1, 1, '2021-03-11 00:00:00', 1, '2021-03-11 00:00:00'),
(29, 8, 'Deduction', 'deduction()', 1, 1, '2021-03-11 00:00:00', 1, '2021-03-11 00:00:00'),
(30, 8, 'OD', 'od()', 1, 1, '2021-03-11 00:00:00', 1, '2021-03-11 00:00:00'),
(31, 8, 'Payroll Generation', 'Payoll_generation()', 1, 1, '2021-03-11 00:00:00', 1, '2021-03-11 00:00:00'),
(32, 8, 'payslip', 'pay_slip()', 1, 1, '2021-03-11 00:00:00', 1, '2021-03-11 00:00:00'),
(33, 8, 'Payroll Close', 'Payroll_close()', 1, 1, '2021-03-11 00:00:00', 1, '2021-03-11 00:00:00'),
(38, 8, 'Leave Management', 'leave_management()', 1, 1, '2021-03-11 00:00:00', 1, '2021-03-11 00:00:00'),
(39, 1, 'Document View and Approve', 'document_approve()', 1, 1, '2021-03-18 00:00:00', 1, '2021-03-18 00:00:00'),
(40, 5, 'Division Master', 'devision_master()', 1, 1, '2021-03-19 00:00:00', 1, '2021-03-19 00:00:00'),
(41, 5, 'Designation Master', 'designation_master()', 1, 1, '2021-03-19 00:00:00', 1, '2021-03-19 00:00:00'),
(42, 9, 'staff List', 'staff_list()', 1, 1, '2021-03-19 00:00:00', 1, '2021-03-19 00:00:00'),
(43, 2, 'Staff list report', 'staff_report()', 1, 1, '2021-03-20 00:00:00', 1, '2021-03-20 00:00:00'),
(44, 5, 'Interview Rounds', 'interview_rounds()', 1, 1, '2021-03-23 00:00:00', 1, '2021-03-23 00:00:00'),
(45, 5, 'Interview Rounds Mapping', 'interview_rounds_mapping()', 1, 1, '2021-03-23 00:00:00', 1, '2021-03-23 00:00:00'),
(46, 10, 'Enquiry', 'enquiry()', 1, 1, '2021-03-23 00:00:00', 1, '2021-03-23 00:00:00'),
(47, 5, 'Client Master', 'client_master()', 1, 1, '2021-03-30 00:00:00', 1, '2021-03-30 00:00:00'),
(48, 9, 'staff Asset', 'staff_asset()', 1, 1, '2021-03-30 00:00:00', 1, '2021-03-30 00:00:00'),
(49, 10, 'Lead', 'lead()', 1, 1, '2021-03-23 00:00:00', 1, '2021-03-23 00:00:00'),
(52, 1, 'Candidate List', 'interview_candidate_list()', 1, 1, '2021-03-31 00:00:00', 1, '2021-03-31 00:00:00'),
(51, 12, 'Quotation', 'Quotation()', 1, 1, '2021-03-30 00:00:00', 1, '2021-03-30 00:00:00'),
(53, 9, 'staff Asset Master', 'staff_asset_master()', 1, 1, '2021-03-31 00:00:00', 1, '2021-03-31 00:00:00'),
(54, 9, 'HOD', 'hod()', 1, 1, '2021-03-31 00:00:00', 1, '2021-03-31 00:00:00'),
(55, 5, 'Product Master', 'Product_master()', 1, 1, '2020-09-07 00:00:00', 1, '2020-09-05 00:00:00'),
(56, 5, 'service_master', 'service_master()', 1, 1, '2020-09-07 00:00:00', 1, '2020-09-05 00:00:00'),
(57, 5, 'calls_master', 'calls_master()', 1, 1, '2020-09-07 00:00:00', 1, '2020-09-05 00:00:00'),
(58, 5, 'Resource Master', 'resource_master()', 1, 1, '2021-04-01 00:00:00', 1, '2021-04-01 00:00:00'),
(59, 5, 'Feedback Master', 'feedback_master()', 1, 1, '2021-04-01 00:00:00', 1, '2021-04-01 00:00:00'),
(60, 12, 'vendor master', 'vendor_master()', 1, 1, '2021-04-01 00:00:00', 1, '2021-04-01 00:00:00'),
(61, 13, 'Resource Form', 'resource_form()', 1, 1, '2021-04-01 00:00:00', 1, '2021-04-01 00:00:00'),
(62, 13, 'Resource List', 'resource_list()', 1, 1, '2021-04-02 00:00:00', 1, '2021-04-02 00:00:00'),
(66, 12, 'Quotation approve', 'Quotation_approve()', 1, 1, '2021-04-13 00:00:00', 1, '2021-04-13 00:00:00'),
(67, 12, 'Quotation send', 'Quotation_send()', 1, 1, '2021-04-13 00:00:00', 1, '2021-04-13 00:00:00'),
(68, 12, 'Quotation Revise', 'Quotation_revise()', 1, 1, '2021-04-20 00:00:00', 1, '2021-04-20 00:00:00'),
(70, 12, 'Cost Sheet', 'Cost_sheet()', 1, 1, '2021-04-20 00:00:00', 1, '2021-04-20 00:00:00'),
(71, 12, 'Cost Sheet Approve', 'Cost_sheet_approve()', 1, 1, '2021-04-20 00:00:00', 1, '2021-04-20 00:00:00'),
(72, 5, 'Role master', 'role()', 1, 1, '2021-04-20 00:00:00', 1, '2021-04-20 00:00:00'),
(73, 12, 'Cost Sheet Revise', 'Cost_sheet_revise()', 1, 1, '2021-04-20 00:00:00', 1, '2021-04-20 00:00:00'),
(75, 5, 'User Role master', 'user_role()', 1, 1, '2020-09-07 00:00:00', 1, '2020-09-05 00:00:00'),
(76, 12, 'Quotation Regenerate', 'quotation_regenerate()', 1, 1, '2021-04-20 00:00:00', 1, '2021-04-20 00:00:00'),
(77, 12, 'client_approval', 'client_approval()', 1, 1, '2021-04-20 00:00:00', 1, '2021-04-20 00:00:00'),
(78, 12, 'Finance PO Approve', 'finance_po_approve()', 1, 1, '2021-06-04 00:00:00', 1, '2021-06-04 00:00:00'),
(79, 12, 'Service PO Approve', 'service_po_approve()', 1, 1, '2021-06-07 00:00:00', 1, '2021-06-07 00:00:00'),
(80, 12, 'PO Status', 'po_status()', 1, 1, '2021-06-08 00:00:00', 1, '2021-06-08 00:00:00'),
(81, 12, 'PO Upload', 'po_upload()', 1, 1, '2021-06-09 00:00:00', 1, '2021-06-09 00:00:00'),
(82, 12, 'Marketing PO Approve', 'marketing_po_approve()', 1, 1, '2021-06-10 00:00:00', 1, '2021-06-10 00:00:00'),
(83, 12, 'Cost Sheet upload', 'Cost_sheet_upload()', 1, 1, '2021-04-20 00:00:00', 1, '2021-04-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `z_role_detail`
--

DROP TABLE IF EXISTS `z_role_detail`;
CREATE TABLE IF NOT EXISTS `z_role_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(355) DEFAULT NULL,
  `menu_id` int(200) DEFAULT NULL,
  `submenu_id` int(200) DEFAULT NULL,
  `view_only` varchar(200) DEFAULT NULL,
  `edit_only` varchar(200) DEFAULT NULL,
  `all_only` varchar(200) DEFAULT NULL,
  `approval` varchar(200) DEFAULT '0',
  `created_by` int(11) DEFAULT '1',
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1137 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_role_detail`
--

INSERT INTO `z_role_detail` (`id`, `code`, `menu_id`, `submenu_id`, `view_only`, `edit_only`, `all_only`, `approval`, `created_by`, `created_on`) VALUES
(450, 'R007', 13, 61, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(449, 'R007', 12, 73, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(448, 'R007', 12, 71, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(447, 'R007', 12, 70, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(446, 'R007', 12, 68, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(445, 'R007', 12, 67, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(444, 'R007', 12, 66, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(443, 'R007', 12, 60, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(442, 'R007', 12, 51, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(441, 'R007', 10, 49, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(440, 'R007', 10, 46, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(439, 'R007', 9, 54, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(438, 'R007', 9, 53, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(437, 'R007', 9, 48, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(436, 'R007', 9, 42, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(435, 'R007', 8, 38, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(434, 'R007', 8, 33, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(433, 'R007', 8, 32, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(432, 'R007', 8, 31, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(431, 'R007', 8, 30, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(430, 'R007', 8, 29, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(429, 'R007', 8, 28, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(428, 'R007', 8, 27, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(427, 'R007', 8, 26, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(426, 'R007', 8, 25, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(425, 'R007', 7, 22, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(424, 'R007', 6, 24, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(423, 'R007', 6, 23, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(422, 'R007', 6, 19, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(421, 'R007', 5, 75, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(420, 'R007', 5, 72, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(419, 'R007', 5, 59, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(418, 'R007', 5, 58, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(417, 'R007', 5, 57, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(416, 'R007', 5, 56, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(415, 'R007', 5, 55, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(414, 'R007', 5, 47, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(413, 'R007', 5, 45, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(412, 'R007', 5, 44, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(411, 'R007', 5, 41, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(410, 'R007', 5, 40, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(409, 'R007', 5, 21, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(408, 'R007', 5, 20, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(407, 'R007', 5, 18, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(406, 'R007', 5, 17, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(405, 'R007', 5, 16, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(404, 'R007', 2, 43, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(403, 'R007', 2, 11, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(402, 'R007', 2, 5, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(401, 'R007', 2, 4, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(400, 'R007', 1, 52, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(399, 'R007', 1, 39, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(398, 'R007', 1, 15, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(397, 'R007', 1, 3, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(396, 'R007', 1, 2, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(395, 'R007', 1, 1, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(57, 'R001', 1, 1, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(58, 'R001', 1, 2, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(59, 'R001', 1, 3, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(60, 'R001', 1, 15, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(61, 'R001', 1, 39, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(62, 'R001', 1, 52, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(63, 'R001', 2, 4, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(64, 'R001', 2, 5, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(65, 'R001', 2, 11, '1', '1', '1', '0', 1, '2021-05-05 10:43:05'),
(66, 'R001', 2, 43, '1', '1', '1', '0', 1, '2021-05-05 10:43:05'),
(67, 'R001', 5, 16, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(68, 'R001', 5, 17, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(69, 'R001', 5, 18, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(70, 'R001', 5, 20, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(71, 'R001', 5, 21, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(72, 'R001', 5, 40, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(73, 'R001', 5, 41, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(74, 'R001', 5, 44, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(75, 'R001', 5, 45, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(76, 'R001', 5, 47, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(77, 'R001', 5, 55, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(78, 'R001', 5, 56, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(79, 'R001', 5, 57, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(80, 'R001', 5, 58, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(81, 'R001', 5, 59, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(82, 'R001', 5, 72, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(83, 'R001', 6, 19, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(84, 'R001', 6, 23, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(85, 'R001', 6, 24, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(86, 'R001', 7, 22, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(87, 'R001', 8, 25, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(88, 'R001', 8, 26, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(89, 'R001', 8, 27, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(90, 'R001', 8, 28, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(91, 'R001', 8, 29, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(92, 'R001', 8, 30, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(93, 'R001', 8, 31, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(94, 'R001', 8, 32, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(95, 'R001', 8, 33, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(96, 'R001', 8, 38, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(97, 'R001', 9, 42, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(98, 'R001', 9, 48, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(99, 'R001', 9, 53, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(100, 'R001', 9, 54, '1', '1', '1', '0', 1, '2021-05-05 10:43:05'),
(101, 'R001', 10, 46, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(102, 'R001', 10, 49, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(103, 'R001', 12, 51, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(104, 'R001', 12, 60, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(105, 'R001', 12, 66, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(106, 'R001', 12, 67, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(107, 'R001', 12, 68, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(108, 'R001', 12, 70, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(109, 'R001', 12, 71, '1', '1', '1', '0', 1, '2021-05-05 10:43:05'),
(110, 'R001', 12, 73, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(111, 'R001', 13, 61, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(112, 'R001', 13, 62, '', '', '', '0', 1, '2021-05-05 10:43:05'),
(113, 'R002', 1, 1, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(114, 'R002', 1, 2, '1', '1', '1', '0', 1, '2021-05-05 10:46:35'),
(115, 'R002', 1, 3, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(116, 'R002', 1, 15, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(117, 'R002', 1, 39, '1', '1', '1', '0', 1, '2021-05-05 10:46:35'),
(118, 'R002', 1, 52, '1', '1', '1', '0', 1, '2021-05-05 10:46:35'),
(119, 'R002', 2, 4, '1', '1', '1', '0', 1, '2021-05-05 10:46:35'),
(120, 'R002', 2, 5, '1', '1', '1', '0', 1, '2021-05-05 10:46:35'),
(121, 'R002', 2, 11, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(122, 'R002', 2, 43, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(123, 'R002', 5, 16, '1', '', '', '0', 1, '2021-05-05 10:46:35'),
(124, 'R002', 5, 17, '1', '', '', '0', 1, '2021-05-05 10:46:35'),
(125, 'R002', 5, 18, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(126, 'R002', 5, 20, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(127, 'R002', 5, 21, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(128, 'R002', 5, 40, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(129, 'R002', 5, 41, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(130, 'R002', 5, 44, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(131, 'R002', 5, 45, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(132, 'R002', 5, 47, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(133, 'R002', 5, 55, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(134, 'R002', 5, 56, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(135, 'R002', 5, 57, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(136, 'R002', 5, 58, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(137, 'R002', 5, 59, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(138, 'R002', 5, 72, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(139, 'R002', 6, 19, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(140, 'R002', 6, 23, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(141, 'R002', 6, 24, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(142, 'R002', 7, 22, '1', '1', '1', '0', 1, '2021-05-05 10:46:35'),
(143, 'R002', 8, 25, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(144, 'R002', 8, 26, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(145, 'R002', 8, 27, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(146, 'R002', 8, 28, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(147, 'R002', 8, 29, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(148, 'R002', 8, 30, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(149, 'R002', 8, 31, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(150, 'R002', 8, 32, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(151, 'R002', 8, 33, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(152, 'R002', 8, 38, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(153, 'R002', 9, 42, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(154, 'R002', 9, 48, '1', '1', '1', '0', 1, '2021-05-05 10:46:35'),
(155, 'R002', 9, 53, '1', '1', '1', '0', 1, '2021-05-05 10:46:35'),
(156, 'R002', 9, 54, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(157, 'R002', 10, 46, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(158, 'R002', 10, 49, '1', '1', '1', '0', 1, '2021-05-05 10:46:35'),
(159, 'R002', 12, 51, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(160, 'R002', 12, 60, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(161, 'R002', 12, 66, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(162, 'R002', 12, 67, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(163, 'R002', 12, 68, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(164, 'R002', 12, 70, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(165, 'R002', 12, 71, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(166, 'R002', 12, 73, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(167, 'R002', 13, 61, '', '', '', '0', 1, '2021-05-05 10:46:35'),
(168, 'R002', 13, 62, '1', '1', '1', '0', 1, '2021-05-05 10:46:35'),
(169, 'R003', 1, 1, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(170, 'R003', 1, 2, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(171, 'R003', 1, 3, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(172, 'R003', 1, 15, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(173, 'R003', 1, 39, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(174, 'R003', 1, 52, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(175, 'R003', 2, 4, '1', '1', '1', '0', 1, '2021-05-05 10:47:40'),
(176, 'R003', 2, 5, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(177, 'R003', 2, 11, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(178, 'R003', 2, 43, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(179, 'R003', 5, 16, '1', '1', '1', '0', 1, '2021-05-05 10:47:40'),
(180, 'R003', 5, 17, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(181, 'R003', 5, 18, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(182, 'R003', 5, 20, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(183, 'R003', 5, 21, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(184, 'R003', 5, 40, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(185, 'R003', 5, 41, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(186, 'R003', 5, 44, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(187, 'R003', 5, 45, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(188, 'R003', 5, 47, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(189, 'R003', 5, 55, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(190, 'R003', 5, 56, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(191, 'R003', 5, 57, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(192, 'R003', 5, 58, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(193, 'R003', 5, 59, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(194, 'R003', 5, 72, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(195, 'R003', 6, 19, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(196, 'R003', 6, 23, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(197, 'R003', 6, 24, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(198, 'R003', 7, 22, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(199, 'R003', 8, 25, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(200, 'R003', 8, 26, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(201, 'R003', 8, 27, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(202, 'R003', 8, 28, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(203, 'R003', 8, 29, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(204, 'R003', 8, 30, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(205, 'R003', 8, 31, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(206, 'R003', 8, 32, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(207, 'R003', 8, 33, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(208, 'R003', 8, 38, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(209, 'R003', 9, 42, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(210, 'R003', 9, 48, '1', '1', '1', '0', 1, '2021-05-05 10:47:40'),
(211, 'R003', 9, 53, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(212, 'R003', 9, 54, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(213, 'R003', 10, 46, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(214, 'R003', 10, 49, '1', '1', '1', '0', 1, '2021-05-05 10:47:40'),
(215, 'R003', 12, 51, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(216, 'R003', 12, 60, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(217, 'R003', 12, 66, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(218, 'R003', 12, 67, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(219, 'R003', 12, 68, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(220, 'R003', 12, 70, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(221, 'R003', 12, 71, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(222, 'R003', 12, 73, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(223, 'R003', 13, 61, '', '', '', '0', 1, '2021-05-05 10:47:40'),
(224, 'R003', 13, 62, '1', '1', '1', '0', 1, '2021-05-05 10:47:40'),
(225, 'R004', 1, 1, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(226, 'R004', 1, 2, '1', '1', '1', '0', 1, '2021-05-05 10:49:04'),
(227, 'R004', 1, 3, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(228, 'R004', 1, 15, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(229, 'R004', 1, 39, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(230, 'R004', 1, 52, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(231, 'R004', 2, 4, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(232, 'R004', 2, 5, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(233, 'R004', 2, 11, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(234, 'R004', 2, 43, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(235, 'R004', 5, 16, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(236, 'R004', 5, 17, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(237, 'R004', 5, 18, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(238, 'R004', 5, 20, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(239, 'R004', 5, 21, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(240, 'R004', 5, 40, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(241, 'R004', 5, 41, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(242, 'R004', 5, 44, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(243, 'R004', 5, 45, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(244, 'R004', 5, 47, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(245, 'R004', 5, 55, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(246, 'R004', 5, 56, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(247, 'R004', 5, 57, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(248, 'R004', 5, 58, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(249, 'R004', 5, 59, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(250, 'R004', 5, 72, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(251, 'R004', 6, 19, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(252, 'R004', 6, 23, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(253, 'R004', 6, 24, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(254, 'R004', 7, 22, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(255, 'R004', 8, 25, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(256, 'R004', 8, 26, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(257, 'R004', 8, 27, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(258, 'R004', 8, 28, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(259, 'R004', 8, 29, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(260, 'R004', 8, 30, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(261, 'R004', 8, 31, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(262, 'R004', 8, 32, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(263, 'R004', 8, 33, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(264, 'R004', 8, 38, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(265, 'R004', 9, 42, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(266, 'R004', 9, 48, '1', '', '', '0', 1, '2021-05-05 10:49:04'),
(267, 'R004', 9, 53, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(268, 'R004', 9, 54, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(269, 'R004', 10, 46, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(270, 'R004', 10, 49, '1', '1', '1', '0', 1, '2021-05-05 10:49:04'),
(271, 'R004', 12, 51, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(272, 'R004', 12, 60, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(273, 'R004', 12, 66, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(274, 'R004', 12, 67, '1', '1', '1', '0', 1, '2021-05-05 10:49:04'),
(275, 'R004', 12, 68, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(276, 'R004', 12, 70, '1', '1', '1', '0', 1, '2021-05-05 10:49:04'),
(277, 'R004', 12, 71, '1', '1', '1', '0', 1, '2021-05-05 10:49:04'),
(278, 'R004', 12, 73, '1', '1', '1', '0', 1, '2021-05-05 10:49:04'),
(279, 'R004', 13, 61, '1', '1', '1', '0', 1, '2021-05-05 10:49:04'),
(280, 'R004', 13, 62, '', '', '', '0', 1, '2021-05-05 10:49:04'),
(854, 'ROLE-003', 8, 33, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(853, 'ROLE-003', 8, 32, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(852, 'ROLE-003', 8, 31, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(851, 'ROLE-003', 8, 30, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(679, 'ROLE-008', 13, 62, '1', '1', '1', '0', 1, '2021-05-11 09:20:31'),
(678, 'ROLE-008', 13, 61, '', '', '', '0', 1, '2021-05-11 09:20:31'),
(677, 'ROLE-008', 12, 73, '', '', '', '0', 1, '2021-05-11 09:20:31'),
(676, 'ROLE-008', 12, 71, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(675, 'ROLE-008', 12, 70, '1', '1', '1', '0', 1, '2021-05-11 09:20:30'),
(674, 'ROLE-008', 12, 68, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(642, 'ROLE-008', 5, 47, '', '1', '1', '0', 1, '2021-05-11 09:20:30'),
(641, 'ROLE-008', 5, 45, '1', '1', '', '0', 1, '2021-05-11 09:20:30'),
(640, 'ROLE-008', 5, 44, '1', '1', '', '0', 1, '2021-05-11 09:20:30'),
(639, 'ROLE-008', 5, 41, '', '', '1', '0', 1, '2021-05-11 09:20:30'),
(638, 'ROLE-008', 5, 40, '', '', '1', '0', 1, '2021-05-11 09:20:30'),
(637, 'ROLE-008', 5, 21, '', '1', '', '0', 1, '2021-05-11 09:20:30'),
(636, 'ROLE-008', 5, 20, '', '1', '', '0', 1, '2021-05-11 09:20:30'),
(635, 'ROLE-008', 5, 18, '1', '', '', '0', 1, '2021-05-11 09:20:30'),
(634, 'ROLE-008', 5, 17, '1', '', '', '0', 1, '2021-05-11 09:20:30'),
(633, 'ROLE-008', 5, 16, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(632, 'ROLE-008', 2, 43, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(631, 'ROLE-008', 2, 11, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(630, 'ROLE-008', 2, 5, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(629, 'ROLE-008', 2, 4, '1', '1', '1', '0', 1, '2021-05-11 09:20:30'),
(628, 'ROLE-008', 1, 52, '1', '1', '1', '0', 1, '2021-05-11 09:20:30'),
(627, 'ROLE-008', 1, 39, '1', '1', '1', '0', 1, '2021-05-11 09:20:30'),
(626, 'ROLE-008', 1, 15, '1', '1', '1', '0', 1, '2021-05-11 09:20:30'),
(625, 'ROLE-008', 1, 3, '1', '1', '1', '0', 1, '2021-05-11 09:20:30'),
(624, 'ROLE-008', 1, 2, '1', '1', '1', '0', 1, '2021-05-11 09:20:30'),
(623, 'ROLE-008', 1, 1, '1', '1', '1', '0', 1, '2021-05-11 09:20:30'),
(341, 'R006', 1, 15, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(342, 'R006', 1, 39, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(343, 'R006', 1, 52, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(344, 'R006', 2, 4, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(345, 'R006', 2, 5, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(346, 'R006', 2, 11, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(347, 'R006', 2, 43, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(348, 'R006', 5, 16, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(349, 'R006', 5, 17, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(350, 'R006', 5, 18, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(351, 'R006', 5, 20, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(352, 'R006', 5, 21, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(353, 'R006', 5, 40, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(354, 'R006', 5, 41, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(355, 'R006', 5, 44, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(356, 'R006', 5, 45, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(357, 'R006', 5, 47, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(358, 'R006', 5, 55, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(359, 'R006', 5, 56, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(360, 'R006', 5, 57, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(361, 'R006', 5, 58, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(362, 'R006', 5, 59, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(363, 'R006', 5, 72, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(364, 'R006', 5, 75, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(365, 'R006', 6, 19, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(366, 'R006', 6, 23, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(367, 'R006', 6, 24, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(368, 'R006', 7, 22, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(369, 'R006', 8, 25, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(370, 'R006', 8, 26, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(371, 'R006', 8, 27, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(372, 'R006', 8, 28, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(373, 'R006', 8, 29, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(374, 'R006', 8, 30, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(375, 'R006', 8, 31, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(376, 'R006', 8, 32, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(377, 'R006', 8, 33, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(378, 'R006', 8, 38, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(379, 'R006', 9, 42, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(380, 'R006', 9, 48, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(381, 'R006', 9, 53, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(382, 'R006', 9, 54, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(383, 'R006', 10, 46, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(384, 'R006', 10, 49, '1', '1', '1', '0', 1, '2021-05-07 14:29:55'),
(385, 'R006', 12, 51, '1', '1', '1', '0', 1, '2021-05-07 14:29:55'),
(386, 'R006', 12, 60, '1', '1', '1', '0', 1, '2021-05-07 14:29:55'),
(387, 'R006', 12, 66, '1', '1', '1', '0', 1, '2021-05-07 14:29:55'),
(388, 'R006', 12, 67, '1', '1', '1', '0', 1, '2021-05-07 14:29:55'),
(389, 'R006', 12, 68, '1', '1', '1', '0', 1, '2021-05-07 14:29:55'),
(390, 'R006', 12, 70, '1', '1', '1', '0', 1, '2021-05-07 14:29:55'),
(391, 'R006', 12, 71, '1', '1', '1', '0', 1, '2021-05-07 14:29:55'),
(392, 'R006', 12, 73, '', '', '', '0', 1, '2021-05-07 14:29:55'),
(393, 'R006', 13, 61, '1', '1', '1', '0', 1, '2021-05-07 14:29:55'),
(394, 'R006', 13, 62, '1', '1', '1', '0', 1, '2021-05-07 14:29:55'),
(451, 'R007', 13, 62, '1', '1', '1', '0', 1, '2021-05-10 05:07:12'),
(656, 'ROLE-008', 8, 27, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(655, 'ROLE-008', 8, 26, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(654, 'ROLE-008', 8, 25, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(653, 'ROLE-008', 7, 22, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(652, 'ROLE-008', 6, 24, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(651, 'ROLE-008', 6, 23, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(650, 'ROLE-008', 6, 19, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(649, 'ROLE-008', 5, 75, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(648, 'ROLE-008', 5, 72, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(647, 'ROLE-008', 5, 59, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(646, 'ROLE-008', 5, 58, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(645, 'ROLE-008', 5, 57, '1', '', '1', '0', 1, '2021-05-11 09:20:30'),
(644, 'ROLE-008', 5, 56, '1', '', '1', '0', 1, '2021-05-11 09:20:30'),
(643, 'ROLE-008', 5, 55, '1', '1', '1', '0', 1, '2021-05-11 09:20:30'),
(669, 'ROLE-008', 10, 49, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(668, 'ROLE-008', 10, 46, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(667, 'ROLE-008', 9, 54, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(666, 'ROLE-008', 9, 53, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(665, 'ROLE-008', 9, 48, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(664, 'ROLE-008', 9, 42, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(663, 'ROLE-008', 8, 38, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(662, 'ROLE-008', 8, 33, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(661, 'ROLE-008', 8, 32, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(660, 'ROLE-008', 8, 31, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(659, 'ROLE-008', 8, 30, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(658, 'ROLE-008', 8, 29, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(657, 'ROLE-008', 8, 28, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(673, 'ROLE-008', 12, 67, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(672, 'ROLE-008', 12, 66, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(671, 'ROLE-008', 12, 60, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(670, 'ROLE-008', 12, 51, '', '', '', '0', 1, '2021-05-11 09:20:30'),
(509, 'R005', 1, 1, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(510, 'R005', 1, 2, '1', '1', '1', '0', 1, '2021-05-10 19:48:04'),
(511, 'R005', 1, 3, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(512, 'R005', 1, 15, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(513, 'R005', 1, 39, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(514, 'R005', 1, 52, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(515, 'R005', 2, 4, '1', '1', '1', '0', 1, '2021-05-10 19:48:04'),
(516, 'R005', 2, 5, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(517, 'R005', 2, 11, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(518, 'R005', 2, 43, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(519, 'R005', 5, 16, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(520, 'R005', 5, 17, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(521, 'R005', 5, 18, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(522, 'R005', 5, 20, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(523, 'R005', 5, 21, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(524, 'R005', 5, 40, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(525, 'R005', 5, 41, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(526, 'R005', 5, 44, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(527, 'R005', 5, 45, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(528, 'R005', 5, 47, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(529, 'R005', 5, 55, '1', '1', '1', '0', 1, '2021-05-10 19:48:04'),
(530, 'R005', 5, 56, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(531, 'R005', 5, 57, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(532, 'R005', 5, 58, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(533, 'R005', 5, 59, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(534, 'R005', 5, 72, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(535, 'R005', 5, 75, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(536, 'R005', 6, 19, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(537, 'R005', 6, 23, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(538, 'R005', 6, 24, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(539, 'R005', 7, 22, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(540, 'R005', 8, 25, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(541, 'R005', 8, 26, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(542, 'R005', 8, 27, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(543, 'R005', 8, 28, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(544, 'R005', 8, 29, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(545, 'R005', 8, 30, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(546, 'R005', 8, 31, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(547, 'R005', 8, 32, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(548, 'R005', 8, 33, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(549, 'R005', 8, 38, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(550, 'R005', 9, 42, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(551, 'R005', 9, 48, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(552, 'R005', 9, 53, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(553, 'R005', 9, 54, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(554, 'R005', 10, 46, '', '', '', '0', 1, '2021-05-10 19:48:04'),
(555, 'R005', 10, 49, '1', '1', '1', '0', 1, '2021-05-10 19:48:05'),
(556, 'R005', 12, 51, '1', '1', '1', '0', 1, '2021-05-10 19:48:05'),
(557, 'R005', 12, 60, '1', '1', '1', '0', 1, '2021-05-10 19:48:05'),
(558, 'R005', 12, 66, '1', '1', '1', '0', 1, '2021-05-10 19:48:05'),
(559, 'R005', 12, 67, '', '', '', '0', 1, '2021-05-10 19:48:05'),
(560, 'R005', 12, 68, '', '', '', '0', 1, '2021-05-10 19:48:05'),
(561, 'R005', 12, 70, '', '', '', '0', 1, '2021-05-10 19:48:05'),
(562, 'R005', 12, 71, '1', '1', '1', '0', 1, '2021-05-10 19:48:05'),
(563, 'R005', 12, 73, '1', '1', '1', '0', 1, '2021-05-10 19:48:05'),
(564, 'R005', 13, 61, '1', '1', '1', '0', 1, '2021-05-10 19:48:05'),
(565, 'R005', 13, 62, '', '', '', '0', 1, '2021-05-10 19:48:05'),
(751, 'R006', 1, 1, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(752, 'R006', 1, 2, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(753, 'R006', 1, 3, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(754, 'R006', 1, 15, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(755, 'R006', 1, 39, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(766, 'R006', 5, 40, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(765, 'R006', 5, 21, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(764, 'R006', 5, 20, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(763, 'R006', 5, 18, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(762, 'R006', 5, 17, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(761, 'R006', 5, 16, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(760, 'R006', 2, 43, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(759, 'R006', 2, 11, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(758, 'R006', 2, 5, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(757, 'R006', 2, 4, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(756, 'R006', 1, 52, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(790, 'R006', 8, 33, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(789, 'R006', 8, 32, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(788, 'R006', 8, 31, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(787, 'R006', 8, 30, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(786, 'R006', 8, 29, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(785, 'R006', 8, 28, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(784, 'R006', 8, 27, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(783, 'R006', 8, 26, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(782, 'R006', 8, 25, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(781, 'R006', 7, 22, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(780, 'R006', 6, 24, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(779, 'R006', 6, 23, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(778, 'R006', 6, 19, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(777, 'R006', 5, 75, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(776, 'R006', 5, 72, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(775, 'R006', 5, 59, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(774, 'R006', 5, 58, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(773, 'R006', 5, 57, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(772, 'R006', 5, 56, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(771, 'R006', 5, 55, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(770, 'R006', 5, 47, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(769, 'R006', 5, 45, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(768, 'R006', 5, 44, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(767, 'R006', 5, 41, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(795, 'R006', 9, 54, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(794, 'R006', 9, 53, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(793, 'R006', 9, 48, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(792, 'R006', 9, 42, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(791, 'R006', 8, 38, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(850, 'ROLE-003', 8, 29, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(849, 'ROLE-003', 8, 28, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(848, 'ROLE-003', 8, 27, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(847, 'ROLE-003', 8, 26, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(846, 'ROLE-003', 8, 25, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(845, 'ROLE-003', 7, 22, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(844, 'ROLE-003', 6, 24, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(843, 'ROLE-003', 6, 23, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(842, 'ROLE-003', 6, 19, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(841, 'ROLE-003', 5, 75, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(840, 'ROLE-003', 5, 72, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(839, 'ROLE-003', 5, 59, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(838, 'ROLE-003', 5, 58, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(837, 'ROLE-003', 5, 57, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(836, 'ROLE-003', 5, 56, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(835, 'ROLE-003', 5, 55, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(834, 'ROLE-003', 5, 47, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(833, 'ROLE-003', 5, 45, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(832, 'ROLE-003', 5, 44, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(831, 'ROLE-003', 5, 41, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(830, 'ROLE-003', 5, 40, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(829, 'ROLE-003', 5, 21, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(828, 'ROLE-003', 5, 20, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(827, 'ROLE-003', 5, 18, '', '', '', '0', 1, '2021-06-14 05:15:26'),
(826, 'ROLE-003', 5, 17, '', '', '', '0', 1, '2021-06-14 05:15:26'),
(825, 'ROLE-003', 5, 16, '', '', '', '0', 1, '2021-06-14 05:15:26'),
(824, 'ROLE-003', 2, 43, '', '', '', '0', 1, '2021-06-14 05:15:26'),
(823, 'ROLE-003', 2, 11, '', '', '', '0', 1, '2021-06-14 05:15:26'),
(822, 'ROLE-003', 2, 5, '', '', '', '0', 1, '2021-06-14 05:15:26'),
(821, 'ROLE-003', 2, 4, '', '', '', '0', 1, '2021-06-14 05:15:26'),
(820, 'ROLE-003', 1, 52, '', '', '', '0', 1, '2021-06-14 05:15:26'),
(819, 'ROLE-003', 1, 39, '', '', '', '0', 1, '2021-06-14 05:15:26'),
(818, 'ROLE-003', 1, 15, '', '', '', '0', 1, '2021-06-14 05:15:26'),
(817, 'ROLE-003', 1, 3, '', '', '', '0', 1, '2021-06-14 05:15:26'),
(816, 'ROLE-003', 1, 2, '1', '1', '1', '0', 1, '2021-06-14 05:15:26'),
(815, 'ROLE-003', 1, 1, '1', '1', '1', '0', 1, '2021-06-14 05:15:26'),
(814, 'R001', 12, 80, '1', '1', '1', '0', 1, '2021-06-09 19:48:04'),
(813, 'R004', 12, 82, '1', '1', '1', '0', 1, '2021-06-09 19:48:04'),
(812, 'R007', 12, 81, '1', '1', '1', '0', 1, '2021-06-09 05:07:12'),
(811, 'R007', 12, 80, '1', '1', '1', '0', 1, '2021-06-08 05:07:12'),
(810, 'R009', 12, 79, '1', '1', '1', '0', 1, '2021-06-06 19:48:04'),
(809, 'R008', 12, 78, '1', '1', '1', '0', 1, '2021-06-03 19:48:04'),
(808, 'R006', 13, 62, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(807, 'R006', 13, 61, '1', '1', '1', '0', 1, '2021-05-20 05:19:05'),
(806, 'R006', 12, 76, '1', '1', '1', '0', 1, '2021-05-20 05:19:05'),
(805, 'R006', 12, 73, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(804, 'R006', 12, 71, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(803, 'R006', 12, 70, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(802, 'R006', 12, 68, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(801, 'R006', 12, 67, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(800, 'R006', 12, 66, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(799, 'R006', 12, 60, '1', '1', '1', '0', 1, '2021-05-20 05:19:05'),
(798, 'R006', 12, 51, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(797, 'R006', 10, 49, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(796, 'R006', 10, 46, '', '', '', '0', 1, '2021-05-20 05:19:05'),
(855, 'ROLE-003', 8, 38, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(856, 'ROLE-003', 9, 42, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(857, 'ROLE-003', 9, 48, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(858, 'ROLE-003', 9, 53, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(859, 'ROLE-003', 9, 54, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(860, 'ROLE-003', 10, 46, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(861, 'ROLE-003', 10, 49, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(862, 'ROLE-003', 12, 51, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(863, 'ROLE-003', 12, 60, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(864, 'ROLE-003', 12, 66, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(865, 'ROLE-003', 12, 67, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(866, 'ROLE-003', 12, 68, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(867, 'ROLE-003', 12, 70, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(868, 'ROLE-003', 12, 71, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(869, 'ROLE-003', 12, 73, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(870, 'ROLE-003', 12, 76, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(871, 'ROLE-003', 12, 77, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(872, 'ROLE-003', 12, 78, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(873, 'ROLE-003', 12, 79, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(874, 'ROLE-003', 12, 80, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(875, 'ROLE-003', 12, 81, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(876, 'ROLE-003', 12, 82, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(877, 'ROLE-003', 13, 61, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(878, 'ROLE-003', 13, 62, '', '', '', '0', 1, '2021-06-14 05:15:27'),
(879, 'ROLE-005', 1, 1, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(880, 'ROLE-005', 1, 2, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(881, 'ROLE-005', 1, 3, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(882, 'ROLE-005', 1, 15, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(883, 'ROLE-005', 1, 39, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(884, 'ROLE-005', 1, 52, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(885, 'ROLE-005', 2, 4, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(886, 'ROLE-005', 2, 5, '1', '1', '1', '0', 1, '2021-06-14 05:16:51'),
(887, 'ROLE-005', 2, 11, '1', '1', '1', '0', 1, '2021-06-14 05:16:51'),
(888, 'ROLE-005', 2, 43, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(889, 'ROLE-005', 5, 16, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(890, 'ROLE-005', 5, 17, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(891, 'ROLE-005', 5, 18, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(892, 'ROLE-005', 5, 20, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(893, 'ROLE-005', 5, 21, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(894, 'ROLE-005', 5, 40, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(895, 'ROLE-005', 5, 41, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(896, 'ROLE-005', 5, 44, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(897, 'ROLE-005', 5, 45, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(898, 'ROLE-005', 5, 47, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(899, 'ROLE-005', 5, 55, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(900, 'ROLE-005', 5, 56, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(901, 'ROLE-005', 5, 57, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(902, 'ROLE-005', 5, 58, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(903, 'ROLE-005', 5, 59, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(904, 'ROLE-005', 5, 72, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(905, 'ROLE-005', 5, 75, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(906, 'ROLE-005', 6, 19, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(907, 'ROLE-005', 6, 23, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(908, 'ROLE-005', 6, 24, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(909, 'ROLE-005', 7, 22, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(910, 'ROLE-005', 8, 25, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(911, 'ROLE-005', 8, 26, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(912, 'ROLE-005', 8, 27, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(913, 'ROLE-005', 8, 28, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(914, 'ROLE-005', 8, 29, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(915, 'ROLE-005', 8, 30, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(916, 'ROLE-005', 8, 31, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(917, 'ROLE-005', 8, 32, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(918, 'ROLE-005', 8, 33, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(919, 'ROLE-005', 8, 38, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(920, 'ROLE-005', 9, 42, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(921, 'ROLE-005', 9, 48, '', '', '', '0', 1, '2021-06-14 05:16:51'),
(922, 'ROLE-005', 9, 53, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(923, 'ROLE-005', 9, 54, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(924, 'ROLE-005', 10, 46, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(925, 'ROLE-005', 10, 49, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(926, 'ROLE-005', 12, 51, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(927, 'ROLE-005', 12, 60, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(928, 'ROLE-005', 12, 66, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(929, 'ROLE-005', 12, 67, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(930, 'ROLE-005', 12, 68, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(931, 'ROLE-005', 12, 70, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(932, 'ROLE-005', 12, 71, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(933, 'ROLE-005', 12, 73, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(934, 'ROLE-005', 12, 76, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(935, 'ROLE-005', 12, 77, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(936, 'ROLE-005', 12, 78, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(937, 'ROLE-005', 12, 79, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(938, 'ROLE-005', 12, 80, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(939, 'ROLE-005', 12, 81, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(940, 'ROLE-005', 12, 82, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(941, 'ROLE-005', 13, 61, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(942, 'ROLE-005', 13, 62, '', '', '', '0', 1, '2021-06-14 05:16:52'),
(943, 'ROLE-001', 1, 1, '1', '1', '1', '0', 1, '2021-06-14 05:25:35'),
(944, 'ROLE-001', 1, 2, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(945, 'ROLE-001', 1, 3, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(946, 'ROLE-001', 1, 15, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(947, 'ROLE-001', 1, 39, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(948, 'ROLE-001', 1, 52, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(949, 'ROLE-001', 2, 4, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(950, 'ROLE-001', 2, 5, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(951, 'ROLE-001', 2, 11, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(952, 'ROLE-001', 2, 43, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(953, 'ROLE-001', 5, 16, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(954, 'ROLE-001', 5, 17, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(955, 'ROLE-001', 5, 18, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(956, 'ROLE-001', 5, 20, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(957, 'ROLE-001', 5, 21, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(958, 'ROLE-001', 5, 40, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(959, 'ROLE-001', 5, 41, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(960, 'ROLE-001', 5, 44, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(961, 'ROLE-001', 5, 45, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(962, 'ROLE-001', 5, 47, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(963, 'ROLE-001', 5, 55, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(964, 'ROLE-001', 5, 56, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(965, 'ROLE-001', 5, 57, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(966, 'ROLE-001', 5, 58, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(967, 'ROLE-001', 5, 59, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(968, 'ROLE-001', 5, 72, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(969, 'ROLE-001', 5, 75, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(970, 'ROLE-001', 6, 19, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(971, 'ROLE-001', 6, 23, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(972, 'ROLE-001', 6, 24, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(973, 'ROLE-001', 7, 22, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(974, 'ROLE-001', 8, 25, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(975, 'ROLE-001', 8, 26, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(976, 'ROLE-001', 8, 27, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(977, 'ROLE-001', 8, 28, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(978, 'ROLE-001', 8, 29, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(979, 'ROLE-001', 8, 30, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(980, 'ROLE-001', 8, 31, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(981, 'ROLE-001', 8, 32, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(982, 'ROLE-001', 8, 33, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(983, 'ROLE-001', 8, 38, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(984, 'ROLE-001', 9, 42, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(985, 'ROLE-001', 9, 48, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(986, 'ROLE-001', 9, 53, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(987, 'ROLE-001', 9, 54, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(988, 'ROLE-001', 10, 46, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(989, 'ROLE-001', 10, 49, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(990, 'ROLE-001', 12, 51, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(991, 'ROLE-001', 12, 60, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(992, 'ROLE-001', 12, 66, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(993, 'ROLE-001', 12, 67, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(994, 'ROLE-001', 12, 68, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(995, 'ROLE-001', 12, 70, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(996, 'ROLE-001', 12, 71, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(997, 'ROLE-001', 12, 73, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(998, 'ROLE-001', 12, 76, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(999, 'ROLE-001', 12, 77, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(1000, 'ROLE-001', 12, 78, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(1001, 'ROLE-001', 12, 79, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(1002, 'ROLE-001', 12, 80, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(1003, 'ROLE-001', 12, 81, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(1004, 'ROLE-001', 12, 82, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(1005, 'ROLE-001', 13, 61, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(1006, 'ROLE-001', 13, 62, '', '', '', '0', 1, '2021-06-14 05:25:35'),
(1007, 'ROLE-010', 1, 1, '1', '1', '', '0', 1, '2021-06-14 06:11:31'),
(1008, 'ROLE-010', 1, 2, '1', '1', '', '0', 1, '2021-06-14 06:11:31'),
(1009, 'ROLE-010', 1, 3, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1010, 'ROLE-010', 1, 15, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1011, 'ROLE-010', 1, 39, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1012, 'ROLE-010', 1, 52, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1013, 'ROLE-010', 2, 4, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1014, 'ROLE-010', 2, 5, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1015, 'ROLE-010', 2, 11, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1016, 'ROLE-010', 2, 43, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1017, 'ROLE-010', 5, 16, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1018, 'ROLE-010', 5, 17, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1019, 'ROLE-010', 5, 18, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1020, 'ROLE-010', 5, 20, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1021, 'ROLE-010', 5, 21, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1022, 'ROLE-010', 5, 40, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1023, 'ROLE-010', 5, 41, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1024, 'ROLE-010', 5, 44, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1025, 'ROLE-010', 5, 45, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1026, 'ROLE-010', 5, 47, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1027, 'ROLE-010', 5, 55, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1028, 'ROLE-010', 5, 56, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1029, 'ROLE-010', 5, 57, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1030, 'ROLE-010', 5, 58, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1031, 'ROLE-010', 5, 59, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1032, 'ROLE-010', 5, 72, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1033, 'ROLE-010', 5, 75, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1034, 'ROLE-010', 6, 19, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1035, 'ROLE-010', 6, 23, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1036, 'ROLE-010', 6, 24, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1037, 'ROLE-010', 7, 22, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1038, 'ROLE-010', 8, 25, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1039, 'ROLE-010', 8, 26, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1040, 'ROLE-010', 8, 27, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1041, 'ROLE-010', 8, 28, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1042, 'ROLE-010', 8, 29, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1043, 'ROLE-010', 8, 30, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1044, 'ROLE-010', 8, 31, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1045, 'ROLE-010', 8, 32, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1046, 'ROLE-010', 8, 33, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1047, 'ROLE-010', 8, 38, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1048, 'ROLE-010', 9, 42, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1049, 'ROLE-010', 9, 48, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1050, 'ROLE-010', 9, 53, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1051, 'ROLE-010', 9, 54, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1052, 'ROLE-010', 10, 46, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1053, 'ROLE-010', 10, 49, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1054, 'ROLE-010', 12, 51, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1055, 'ROLE-010', 12, 60, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1056, 'ROLE-010', 12, 66, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1057, 'ROLE-010', 12, 67, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1058, 'ROLE-010', 12, 68, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1059, 'ROLE-010', 12, 70, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1060, 'ROLE-010', 12, 71, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1061, 'ROLE-010', 12, 73, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1062, 'ROLE-010', 12, 76, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1063, 'ROLE-010', 12, 77, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1064, 'ROLE-010', 12, 78, '', '', '', '0', 1, '2021-06-14 06:11:31');
INSERT INTO `z_role_detail` (`id`, `code`, `menu_id`, `submenu_id`, `view_only`, `edit_only`, `all_only`, `approval`, `created_by`, `created_on`) VALUES
(1065, 'ROLE-010', 12, 79, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1066, 'ROLE-010', 12, 80, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1067, 'ROLE-010', 12, 81, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1068, 'ROLE-010', 12, 82, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1069, 'ROLE-010', 13, 61, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1070, 'ROLE-010', 13, 62, '', '', '', '0', 1, '2021-06-14 06:11:31'),
(1071, 'ROLE-007', 1, 1, '1', '1', '', '0', 1, '2021-06-14 06:46:03'),
(1072, 'ROLE-007', 1, 2, '1', '', '', '0', 1, '2021-06-14 06:46:03'),
(1073, 'ROLE-007', 1, 3, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1074, 'ROLE-007', 1, 15, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1075, 'ROLE-007', 1, 39, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1076, 'ROLE-007', 1, 52, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1077, 'ROLE-007', 2, 4, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1078, 'ROLE-007', 2, 5, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1079, 'ROLE-007', 2, 11, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1080, 'ROLE-007', 2, 43, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1081, 'ROLE-007', 5, 16, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1082, 'ROLE-007', 5, 17, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1083, 'ROLE-007', 5, 18, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1084, 'ROLE-007', 5, 20, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1085, 'ROLE-007', 5, 21, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1086, 'ROLE-007', 5, 40, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1087, 'ROLE-007', 5, 41, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1088, 'ROLE-007', 5, 44, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1089, 'ROLE-007', 5, 45, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1090, 'ROLE-007', 5, 47, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1091, 'ROLE-007', 5, 55, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1092, 'ROLE-007', 5, 56, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1093, 'ROLE-007', 5, 57, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1094, 'ROLE-007', 5, 58, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1095, 'ROLE-007', 5, 59, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1096, 'ROLE-007', 5, 72, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1097, 'ROLE-007', 5, 75, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1098, 'ROLE-007', 6, 19, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1099, 'ROLE-007', 6, 23, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1100, 'ROLE-007', 6, 24, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1101, 'ROLE-007', 7, 22, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1102, 'ROLE-007', 8, 25, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1103, 'ROLE-007', 8, 26, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1104, 'ROLE-007', 8, 27, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1105, 'ROLE-007', 8, 28, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1106, 'ROLE-007', 8, 29, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1107, 'ROLE-007', 8, 30, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1108, 'ROLE-007', 8, 31, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1109, 'ROLE-007', 8, 32, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1110, 'ROLE-007', 8, 33, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1111, 'ROLE-007', 8, 38, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1112, 'ROLE-007', 9, 42, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1113, 'ROLE-007', 9, 48, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1114, 'ROLE-007', 9, 53, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1115, 'ROLE-007', 9, 54, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1116, 'ROLE-007', 10, 46, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1117, 'ROLE-007', 10, 49, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1118, 'ROLE-007', 12, 51, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1119, 'ROLE-007', 12, 60, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1120, 'ROLE-007', 12, 66, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1121, 'ROLE-007', 12, 67, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1122, 'ROLE-007', 12, 68, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1123, 'ROLE-007', 12, 70, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1124, 'ROLE-007', 12, 71, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1125, 'ROLE-007', 12, 73, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1126, 'ROLE-007', 12, 76, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1127, 'ROLE-007', 12, 77, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1128, 'ROLE-007', 12, 78, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1129, 'ROLE-007', 12, 79, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1130, 'ROLE-007', 12, 80, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1131, 'ROLE-007', 12, 81, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1132, 'ROLE-007', 12, 82, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1133, 'ROLE-007', 13, 61, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1134, 'ROLE-007', 13, 62, '', '', '', '0', 1, '2021-06-14 06:46:03'),
(1135, 'R006', 12, 81, '1', '1', '1', '0', 1, '2021-06-14 14:29:55'),
(1136, 'R007', 12, 83, '1', '1', '1', '0', 1, '2021-05-10 05:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `z_role_mapping`
--

DROP TABLE IF EXISTS `z_role_mapping`;
CREATE TABLE IF NOT EXISTS `z_role_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  `descriptions` varchar(100) DEFAULT NULL,
  `modified_by` varchar(150) NOT NULL,
  `modified_on` date NOT NULL,
  `created_by` varchar(150) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_role_mapping`
--

INSERT INTO `z_role_mapping` (`id`, `user_id`, `code`, `descriptions`, `modified_by`, `modified_on`, `created_by`, `created_on`) VALUES
(1, '1', 'Role-001', 'Recruitment', '1', '2020-08-10', '1', '2020-08-10'),
(2, '2', 'Role-002', 'Intreviewer', '1', '2020-08-10', '1', '2020-08-10'),
(3, '4', 'Role-004', 'Technical', '1', '2020-08-10', '1', '2020-08-10'),
(4, '14', 'Role-006', 'HOD', '1', '2020-08-10', '1', '2020-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `z_role_master`
--

DROP TABLE IF EXISTS `z_role_master`;
CREATE TABLE IF NOT EXISTS `z_role_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(250) NOT NULL,
  `role_name` varchar(200) NOT NULL,
  `status` int(250) NOT NULL DEFAULT '1',
  `modified_by` varchar(150) DEFAULT '1',
  `modified_on` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_role_master`
--

INSERT INTO `z_role_master` (`id`, `code`, `role_name`, `status`, `modified_by`, `modified_on`, `created_by`) VALUES
(1, 'ROLE-001', 'Intreviewer', 1, '1', '2020-08-10', '1'),
(2, 'ROLE-002', 'Recruiter', 1, '1', '0000-00-00', '1'),
(3, 'ROLE-003', 'Admin', 1, '1', '0000-00-00', '1'),
(4, 'ROLE-004', 'Technical', 1, '1', '2020-08-19', '1'),
(5, 'ROLE-005', 'Md', 1, '1', '2020-04-24', '1'),
(6, 'ROLE-006', 'Candidate Interview Question', 1, '1', '2020-04-24', '1'),
(7, 'ROLE-007', 'Employee', 1, '1', '2020-04-24', '1'),
(8, 'ROLE-008', 'HOD', 1, '1', '2020-04-24', '1'),
(9, 'ROLE-009', 'Employee Assessment Question', 1, '1', '2021-03-05', '1'),
(10, 'ROLE-010', 'Resource', 1, '1', '2021-04-05', '1'),
(13, 'R001', 'Managing Director - MD', 1, '1', '2021-05-05', NULL),
(18, 'R002', 'HR - Generalist', 1, '1', '2021-05-05', '1'),
(19, 'R003', 'HR - Recruiter', 1, '1', '2021-05-05', '1'),
(20, 'R004', 'Sales & Marketing Head', 1, '1', '2021-05-05', '1'),
(21, 'R005', 'Sales & Marketing Manager', 1, '1', '2021-05-05', '1'),
(22, 'R006', 'Sales & Marketing Executive', 1, '1', '2021-05-05', '1'),
(23, 'R007', 'admin', 1, '1', '2021-05-10', '1'),
(24, 'R008', 'Account Head', 1, '1', '2021-05-10', '1'),
(25, 'R009', 'Service Head', 1, '1', '2021-06-07', '1'),
(26, 'R010', 'Marketing Head', 1, '1', '2021-06-10', '1');

-- --------------------------------------------------------

--
-- Table structure for table `z_user_master`
--

DROP TABLE IF EXISTS `z_user_master`;
CREATE TABLE IF NOT EXISTS `z_user_master` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `ass_emp_id` int(11) DEFAULT NULL,
  `candidate_id` int(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `email_id` varchar(250) DEFAULT NULL,
  `user_group_code` varchar(250) DEFAULT NULL,
  `mobile_no` varchar(200) DEFAULT NULL,
  `profile` varchar(250) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `modified_by` varchar(250) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_user_master`
--

INSERT INTO `z_user_master` (`user_id`, `ass_emp_id`, `candidate_id`, `department`, `user_name`, `password`, `full_name`, `status`, `email_id`, `user_group_code`, `mobile_no`, `profile`, `gender`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, NULL, NULL, '2', 'admin', 'cd84d683cc5612c69efe115c80d0b7dc', 'admin', 1, NULL, 'R007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, '1', 'candidate', 'cd84d683cc5612c69efe115c80d0b7dc', 'candidate', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, 1, '1', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'DHANAMANI MADHAVAN', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, 2, '1', 'girish', 'cd84d683cc5612c69efe115c80d0b7dc', 'GIRISH MADHAVAN', 1, 'girish@quadsel.in', 'R001', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, 3, '1', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'RESHMA MADHAVAN', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, 4, '2', 'karthikeyan', 'cd84d683cc5612c69efe115c80d0b7dc', 'KARTHIKEYAN R', 1, 'karthikeyan.r@quadsel.in\r\n', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 5, '2', 'ramakrishnan', 'cd84d683cc5612c69efe115c80d0b7dc', 'RAMAKRISHNAN.M', 1, 'ramakrishnan.m@quadsel.in\r\n', 'R008', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, 6, '4', 'kalaimani', 'cd84d683cc5612c69efe115c80d0b7dc', 'KALAIMANI.R', 1, 'kalaimani.r@quadsel.in\r\n', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, 7, '4', 'suriya', 'cd84d683cc5612c69efe115c80d0b7dc', 'SURIYA PRAKASH', 1, 'purchase@quadsel.in\r\n', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, 8, '4', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'NARAYANAN', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, 9, '7', 'akshay', 'cd84d683cc5612c69efe115c80d0b7dc', 'AKSHAY S', 1, 'akshay.s@quadsel.in\r\n', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, 10, '7', 'chandhiramohan', 'cd84d683cc5612c69efe115c80d0b7dc', 'CHANDHIRAMOHAN A', 1, 'chandhiramohan.a@quadsel.in', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, 11, '7', 'kalaimani', 'cd84d683cc5612c69efe115c80d0b7dc', 'KALAIMANI P', 1, 'kalaimani.p@quadsel.in\r\n', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, 12, '7', 'kalaimathi', 'cd84d683cc5612c69efe115c80d0b7dc', 'KALAIMATHI P', 1, 'helpdesk@quadsel.in\r\n', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, 13, '7', 'kalyan', 'cd84d683cc5612c69efe115c80d0b7dc', 'KALYAN KUMAR S', 1, 'kalyan@quadsel.in\r\n', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, 14, '7', 'karthick', 'cd84d683cc5612c69efe115c80d0b7dc', 'KARTHICK S', 1, 'karthick.s@quadsel.in\r\n', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, 16, '7', 'rajkumar', 'cd84d683cc5612c69efe115c80d0b7dc', 'RAJKUMAR T', 1, 'rajkumartamsr@gmail.com\r\n', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, 17, '7', 'sathish', 'cd84d683cc5612c69efe115c80d0b7dc', 'SATHISH KUMAR', 1, 'SathishKumar@quadsel.in\r\n', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, 18, '7', 'shanmuganathan', 'cd84d683cc5612c69efe115c80d0b7dc', 'SHANMUGANATHAN R', 1, 'shanmuganathan.r@quadsel.in\r\n', 'R009', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, 19, '7', 'sivakumar', 'cd84d683cc5612c69efe115c80d0b7dc', 'SIVAKUMAR.R', 1, 'sivakumar.r@quadsel.in', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, 20, '7', 'venkatesan', 'cd84d683cc5612c69efe115c80d0b7dc', 'VENKATESAN.S.', 1, 'venkatesan.s@quadsel.in\r\n', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, 21, '5', 'arunkk', 'cd84d683cc5612c69efe115c80d0b7dc', 'ARUN KK', 1, 'arun@quadsel.in\r\n', 'R005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, 22, '5', '\r\nbabuk', 'cd84d683cc5612c69efe115c80d0b7dc', 'BABU K', 1, 'quote@quadsel.in', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, 23, '5', 'christy', 'cd84d683cc5612c69efe115c80d0b7dc', 'CHRISTY MATHEWS', 1, 'christymathews@quadsel.in\r\n', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, 24, '5', 'johnavinash', 'cd84d683cc5612c69efe115c80d0b7dc', 'JOHN AVINASH RAE', 1, 'johnavinashrae@quadsel.in\r\n', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, 25, '5', 'muthukumar', 'cd84d683cc5612c69efe115c80d0b7dc', 'MUTHUKUMAR V', 1, 'muthukumar@quadsel.in\r\n', 'R006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, 26, '5', 'selvaraj', 'cd84d683cc5612c69efe115c80d0b7dc', 'SELVARAJ.P.', 1, 'selvaraj.p@quadsel.in\r\n', 'R004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, 27, '5', 'vaidyanathan', 'cd84d683cc5612c69efe115c80d0b7dc', 'VAIDYANATHAN CR', 1, 'vaidyanathan.cr@quadsel.in\r\n', 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, 28, '6', 'mythily', 'cd84d683cc5612c69efe115c80d0b7dc', 'MYTHILY', 1, 'rec@quadsel.in\r\n', 'R003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, 29, '6', 'sakthivel', 'cd84d683cc5612c69efe115c80d0b7dc', 'SAKTHIVEL M K', 1, 'hr@quadsel.in\r\n', 'R002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, 30, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'yuga prasanth', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, 31, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Dilli raja', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, NULL, 32, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'ABDUL WAHID', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, NULL, 33, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'RAHUL SURENDAR', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, NULL, 34, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'BHARATHI BASKARAN', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, 35, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'SUBRAMANIAN S', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, NULL, 36, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'MARIMUTHU', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, 37, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Parthiban k', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, 38, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Santhosh PC', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, 39, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Sankara Subramanian P', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, NULL, 40, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Pothiraj', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, NULL, 41, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Venkat K', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, NULL, 42, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Vinothraj', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, NULL, 43, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'HARISH E', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, 44, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'VELMURUGAN S', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, NULL, 45, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'PRAPANCHAN A', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, NULL, 46, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'CHANDHIRAMOHAN A', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, NULL, 47, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Saravanan', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, NULL, 48, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'SIVAKUMAR R', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, NULL, 49, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Thenmozhi', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, 50, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'VENKATESAN S', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, NULL, 51, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Manikandan', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, NULL, 52, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Sam david', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, NULL, 53, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Praveen VC', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, 54, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'GANGATHARAN', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, 55, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'JAIDEEP  JAGDISHCHANDRA', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, 56, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'MANIMARAN P', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, 57, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'NIJANTHAN', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, NULL, 58, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'RAJAPANDIYAN M', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, 59, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'SARAVANAKUMAR S', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, NULL, 60, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'cHANDHIRAMOHAN A', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, NULL, 61, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'VISWANATHAN S', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, NULL, 62, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Sathish', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, NULL, 63, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Balaji', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, NULL, 64, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'MANIKANDAN K', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, NULL, 65, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'SHYAM SUNDER REDDY K', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, NULL, 66, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'POOMALAI R', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, NULL, 67, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'MUTHU RAJESH KANNAN', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, NULL, 68, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'RAMKUMAR U', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, NULL, 69, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'NAGESHWARA RAO CHALLA', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, NULL, 70, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'VALISETTAI YASWANTH', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, NULL, 71, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'SADDAMHUSEIN MULLA', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, NULL, 72, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'PAUL DAVID', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, NULL, 73, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Ghouse Ahmed R', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, NULL, 74, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'INDHUJA A', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, NULL, 75, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'YOKESH DHAMODHARAN', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, NULL, 76, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'BALA BHARATHI K', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, NULL, 77, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'DENITTA CHELIN', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, NULL, 78, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'MANIBALAN S N', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, NULL, 79, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'LOGANATHAN', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, NULL, 80, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'SANTHOSH KUMAR P', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, NULL, 81, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Saravanan', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, NULL, 82, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'KARTHIKEYAN V', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, NULL, 83, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'DEEPAK KUMAR ', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, NULL, 84, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'KARTHICK KUMAR K', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, NULL, 85, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'RAMESH S', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, NULL, 86, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Natraj', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, NULL, 87, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'IMRAN MOHAMED KHAN', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, NULL, 88, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'MANIKANDAN S', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, NULL, 89, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'PAZHANI M', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, NULL, 90, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'MURALI S', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, NULL, 91, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'VENKADA SUBRAMANIYAN', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, NULL, 92, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'BISWAJIT SAHOO', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, NULL, 93, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'MANGESH HANMANT BHOSALE', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, NULL, 94, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'PARAMASIVAM', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, NULL, 95, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'RUPESH CHANDRAKANT SHENDGE', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, NULL, 96, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Harichanda Prasad', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, NULL, 97, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'SUNDARAM N', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, NULL, 98, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Ajay Kumar Nayani', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, NULL, 99, '3', '', 'cd84d683cc5612c69efe115c80d0b7dc', 'Sellisathish', 1, NULL, 'ROLE-007', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
