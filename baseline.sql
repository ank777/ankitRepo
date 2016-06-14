-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2016 at 04:33 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `1122518`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AMID` varchar(50) NOT NULL,
  `AMName` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AMID`, `AMName`, `Username`, `Password`) VALUES
('23', 'Satish', 'satish', 'satish');

-- --------------------------------------------------------

--
-- Table structure for table `assumptions`
--

CREATE TABLE `assumptions` (
  `Project_id` varchar(5) NOT NULL,
  `Assumptions_id` int(11) NOT NULL,
  `Employee_id` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `LastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Minutes` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `baseline`
--

CREATE TABLE `baseline` (
  `Emp_id` varchar(50) NOT NULL,
  `Project_id` varchar(10) NOT NULL,
  `R_id` varchar(10) NOT NULL,
  `Description` text NOT NULL,
  `Pm_id` varchar(50) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Status` varchar(10) NOT NULL DEFAULT 'incomplete',
  `TypeID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baseline`
--

INSERT INTO `baseline` (`Emp_id`, `Project_id`, `R_id`, `Description`, `Pm_id`, `Timestamp`, `Status`, `TypeID`) VALUES
('13BCE0166', 'S12', 'S12FR1', 'use login diagram(sequenece)', '13BCE0558', '2016-05-04 05:15:57', 'complete', '2'),
('13BCE0303', 'S12', 'S12FR10', 'add or modify(statechart)', '13BCE0558', '2016-04-30 09:42:14', 'incomplete', '2'),
('13BCB0017', 'S12', 'S12FR11', 'Status diagram(state chart)', '13BCE0558', '2016-04-30 09:42:14', 'incomplete', '2'),
('13BCE0558', 'S12', 'S12FR2', 'Approve and disapprove(sequence)', '13BCE0558', '2016-04-30 09:42:14', 'incomplete', '2'),
('13BCE0042', 'S12', 'S12FR3', 'Status diagram(sequence)', '13BCE0558', '2016-04-30 09:42:14', 'incomplete', '2'),
('13BCE0567', 'S12', 'S12FR4', 'View reports diagram(sequence)', '13BCE0558', '2016-04-30 09:42:14', 'incomplete', '2'),
('13BCE0166', 'S12', 'S12FR5', 'Add or modify(sequence)', '13BCE0558', '2016-04-30 09:42:14', 'incomplete', '2'),
('13BCE0348', 'S12', 'S12FR6', 'login diagrams(activity)', '13BCE0558', '2016-04-30 09:42:14', 'incomplete', '2'),
('13BCE0348', 'S12', 'S12FR7', 'approve disapprove(activity)', '13BCE0558', '2016-04-30 09:42:14', 'incomplete', '2'),
('13BCE0558', 'S12', 'S12FR8', 'Admin functionalities', '13BCE0558', '2016-04-30 09:42:14', 'incomplete', '2'),
('13BCE0819', 'S12', 'S12FR9', 'approve disapprove statechart', '13BCE0558', '2016-05-03 17:45:50', 'complete', '2'),
('13BCE0567', 'S12', 'S12NFR1', 'Usability requirements', '13BCE0558', '2016-05-03 16:10:45', 'complete', '2'),
('13BCE0567', 'S12', 'S12NFR10', 'Privacy requirements', '13BCE0558', '2016-05-03 16:10:56', 'incomplete', '2'),
('13BCE0567', 'S12', 'S12NFR2', 'Security requirements\n', '13BCE0558', '2016-05-03 16:11:28', 'incomplete', '2'),
('13BCE0863', 'S12', 'S12NFR3', 'Password requirements \n', '13BCE0558', '2016-05-03 16:06:16', 'incomplete', '2'),
('13BCE0348', 'S12', 'S12NFR4', 'Inactivity timeouts', '13BCE0558', '2016-05-03 16:06:40', 'incomplete', '2'),
('13BCE0863', 'S12', 'S12NFR5', 'Response time\n', '13BCE0558', '2016-05-03 16:07:11', 'incomplete', '2'),
('13BCE0567', 'S12', 'S12NFR6', 'Throughput functions ', '13BCE0558', '2016-05-03 16:09:08', 'incomplete', '2'),
('13BCE0863', 'S12', 'S12NFR7', 'Storage requirements', '13BCE0558', '2016-05-03 16:09:38', 'incomplete', '2'),
('13BCE0348', 'S12', 'S12NFR8', 'Availability requirements', '13BCE0558', '2016-05-03 16:10:03', 'incomplete', '2'),
('13BCE0348', 'S12', 'S12NFR9', 'Portability requirements', '13BCE0558', '2016-05-03 16:10:24', 'incomplete', '2'),
('13BCE0456', 'S13', 'S13FR1', 'baseline', '13BCE0075', '2016-05-04 05:11:38', 'incomplete', '2'),
('13BCE0274', 'S13', 'S13FR10', 'project manager diagrams', '13BCE0075', '2016-05-03 07:24:54', 'complete', '2'),
('13BCE0075', 'S13', 'S13FR15', 'CODE FOR FUNCTION MAPPING', '13BCE0075', '2016-05-02 07:37:30', 'complete', '1'),
('13BCE0702', 'S13', 'S13FR2', 'baseline', '13BCE0075', '2016-05-05 03:24:53', 'complete', '2'),
('13BCE0231', 'S13', 'S13FR20', 'AUDIO', '13BCE0075', '2016-05-04 05:27:59', 'incomplete', '3'),
('13BCE0325', 'S13', 'S13FR3', 'view details status', '13BCE0075', '2016-05-03 17:27:05', 'complete', '2'),
('13BCE0482', 'S13', 'S13FR4', 'add modify upload project diagrams', '13BCE0075', '2016-04-30 09:51:56', 'incomplete', '2'),
('13BCE0231', 'S13', 'S13FR5', 'upload requirement diagrams', '13BCE0075', '2016-05-04 05:10:29', 'complete', '2'),
('13BCE0651', 'S13', 'S13FR6', 'view requirements', '13BCE0075', '2016-05-02 13:14:08', 'complete', '2'),
('13BCE0291', 'S13', 'S13FR7', 'admin diagrams', '13BCE0075', '2016-05-02 16:56:52', 'complete', '2'),
('13BCE0609', 'S13', 'S13FR8', 'report generation', '13BCE0075', '2016-05-03 17:17:15', 'complete', '2'),
('13BCE0075', 'S13', 'S13FR9', 'function mapping', '13BCE0075', '2016-05-02 07:25:03', 'incomplete', '2'),
('13BCE0702', 'S13', 'S13NFR1', 'Usability requirements', '13BCE0075', '2016-05-03 19:01:17', 'incomplete', '2'),
('13BCE0702', 'S13', 'S13NFR10', 'Privacy requirements', '13BCE0075', '2016-05-03 16:15:31', 'incomplete', '2'),
('13BCE0702', 'S13', 'S13NFR2', 'Login requirements', '13BCE0075', '2016-05-03 16:16:33', 'incomplete', '2'),
('13BCE0702', 'S13', 'S13NFR3', 'Password requirements\n', '13BCE0075', '2016-05-03 16:17:13', 'incomplete', '2'),
('13BCE0702', 'S13', 'S13NFR4', 'Inactivity timeouts requirements', '13BCE0558', '2016-05-03 16:17:50', 'incomplete', '2'),
('13BCE0702', 'S13', 'S13NFR5', 'Response time requirements', '13BCE0075', '2016-05-03 16:18:18', 'incomplete', '2'),
('13BCE0702', 'S13', 'S13NFR6', 'Throughput requirements', '13BCE0075', '2016-05-03 16:18:41', 'incomplete', '2'),
('13BCE0702', 'S13', 'S13NFR7', 'Storage requirements', '13BCE0075', '2016-05-03 16:18:57', 'incomplete', '2'),
('13BCE0702', 'S13', 'S13NFR8', 'Availability requirements', '13BCE0075', '2016-05-03 16:19:27', 'incomplete', '2'),
('13BCE0702', 'S13', 'S13NFR9', 'Portability requirements', '13BCE0075', '2016-05-03 16:21:00', 'incomplete', '2');

-- --------------------------------------------------------

--
-- Table structure for table `constraints`
--

CREATE TABLE `constraints` (
  `Project_id` varchar(5) NOT NULL,
  `Constraint_id` int(11) NOT NULL,
  `Employee_id` varchar(50) NOT NULL,
  `Type` text NOT NULL,
  `Description` text NOT NULL,
  `Status` text NOT NULL,
  `LastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Minutes` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `defect`
--

CREATE TABLE `defect` (
  `Test_Id` int(5) NOT NULL,
  `Defect_Id` int(5) NOT NULL,
  `Programmer_Id` varchar(50) NOT NULL,
  `Open_Date` date NOT NULL,
  `Modified_Date` date DEFAULT NULL,
  `Status` enum('open','in-progress','closed') NOT NULL,
  `Defect_Description` varchar(200) NOT NULL,
  `Defect_Solution` varchar(200) DEFAULT NULL,
  `Upload_File` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `diagram`
--

CREATE TABLE `diagram` (
  `fileid` int(11) NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `hours` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `empid` varchar(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'complete'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diagram`
--

INSERT INTO `diagram` (`fileid`, `fileName`, `pid`, `image`, `hours`, `comment`, `date`, `empid`, `status`) VALUES
(89, 'class diagram', 'S13', 'check/images.jpg', 0, 'Comment:\r\n', '2016-05-03', '13BCE0482', 'complete'),
(92, 'class diagram', 'S12', 'check/class.jpg', 30, 'Comment:\r\nComplete', '2016-05-03', '13BCE0348', 'complete'),
(73, 'architecture diagram', 'S13', 'check/images.jpg', 30, 'Comment:\r\ncomplete', '2016-05-03', '13BCE0482', 'complete'),
(74, 'structure diagram', 'S13', 'check/struct.png', 50, 'Comment:\r\nComplete', '2016-05-03', '13BCE0482', 'complete'),
(93, 'ER diagram', 'S12', 'check/ER.png', 10, 'Comment:\r\nComplete', '2016-05-03', '13BCE0348', 'complete'),
(94, 'structure diagram', 'S12', 'check/Structure.png', 10, 'Comment:\r\nComplete', '2016-05-03', '13BCE0348', 'complete'),
(95, 'architecture diagram', 'S12', 'check/arch.jpg', 2, 'Comment:\r\nComplete', '2016-05-03', '13BCE0348', 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Emp_id` varchar(50) NOT NULL,
  `Emp_Name` varchar(20) NOT NULL,
  `Emp_Email` varchar(50) NOT NULL,
  `User_Name` varchar(20) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Emp_Designation` varchar(20) NOT NULL,
  `login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emp_id`, `Emp_Name`, `Emp_Email`, `User_Name`, `Password`, `Emp_Designation`, `login`, `logout`) VALUES
('13BCB0017', 'Amulya', 'amulya@software.com', '13BCB0017', 'welcome1', 'Report Generation', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0042', 'Aparajita', 'apara@software.com', '13BCE0042', 'welcome1', 'Report Generation', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0070', 'Anushka', 'anushka@software.com', '13BCE0070', 'welcome1', 'use case', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0075', 'Angad', 'angad@software.com', '13BCE0075', 'welcome1', 'Project Manager', '2016-05-04 08:38:45', '2016-05-04 08:33:44'),
('13BCE0166', 'Vivek', 'Vivek@software.com', '13BCE0166', 'welcome1', 'functional', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0231', 'Krishna', 'krishna@software.com', '13BCE0231', 'welcome1', 'Upload requirments f', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0274', 'Pradheesh', 'pradheesh@software.com', '13BCE0274', 'welcome1', 'admin', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0291', 'Tanya', 'tanya@software.com', '13BCE0291', 'welcome1', 'PM LOGIN', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0303', 'Udita', 'Udita@software.com', '13BCE0303', 'welcome1', 'Project Details', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0325', 'Abhishek', 'abhishek@software.com', '13BCE0325', 'welcome1', 'VIEW Details', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0348', 'Harsh', 'harsh@software.com', '13BCE0348', 'welcome1', 'Project Management', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0359', 'Sanyukta', 'sanyukta@software.com', '13BCE0359', 'welcome1', 'Maintaing Versions', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0456', 'Ankit', 'ankit@software.com', '13BCE0456', 'welcome1', 'Baseline', '2016-05-03 20:30:07', '2016-01-21 09:00:00'),
('13BCE0473', 'Anan', 'anan@software.com', '13BCE0473', 'welcome1', 'Login', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0482', 'Parth', 'parth@software.com', '13BCE0482', 'welcome1', 'upload files for pro', '2016-01-21 10:00:00', '2016-05-03 14:00:16'),
('13BCE0558', 'Anya', 'anya@software.com', '13BCE0558', 'welcome1', 'Project Manager', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0567', 'Ashutosh', 'ashutosh@software.com', '13BCE0567', 'welcome1', 'Project Details', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0609', 'Nishant', 'nishant@software.com', '13BCE0609', 'welcome1', 'Report Generation', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0651', 'Prakhar', 'prakhar@software.com', '13BCE0651', 'welcome1', 'View Requirments', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0702', 'Sukriti', 'sukriti@software.com', '13BCE0702', 'welcome1', 'filter in baseline', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0819', 'Shannon', 'shannon@software.com', '13BCE0819', 'welcome1', 'USE CASE', '2016-01-21 10:00:00', '2016-01-21 09:00:00'),
('13BCE0863', 'Mitesh', 'mitesh@software.com', '13BCE0863', 'welcome1', 'admin', '2016-01-21 10:00:00', '2016-01-21 09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `fileid` int(10) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `image` varchar(200) NOT NULL,
  `reqid` varchar(10) NOT NULL,
  `hours` int(10) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `timestamp` datetime NOT NULL,
  `empid` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`fileid`, `filename`, `image`, `reqid`, `hours`, `comment`, `timestamp`, `empid`, `status`) VALUES
(1, 'sequenceDiagramS13FR8', '/project/er-diagram-2-large.jpg', 'S13FR8', 1, '', '2016-05-02 01:52:55', '13BCE0609', 'completed'),
(2, '2016-05-02 (1).pngS13FR8', 'check/2016-05-02 (1).png', 'S13FR8', 1, '', '2016-05-02 01:53:38', '13BCE0609', 'completed'),
(3, 'DataFlowDiagramS13FR8', 'check/2016-05-02 (5).png', 'S13FR8', 1, '', '2016-05-02 01:54:04', '13BCE0609', 'completed'),
(4, '2016-05-02 (6).pngS13FR8', 'check/2016-05-02 (6).png', 'S13FR8', 1, '', '2016-05-02 01:55:34', '13BCE0609', 'completed'),
(5, 'activityDiagramS13FR8', 'check/2016-05-02 (3).png', 'S13FR8', 1, '', '2016-05-02 01:56:15', '13BCE0609', 'completed'),
(6, 'stateChartS13FR8', 'check/2016-05-02 (4).png', 'S13FR8', 2, '', '2016-05-02 01:57:06', '13BCE0609', 'completed'),
(7, 'sequenceDiagramS13FR9', 'check/sequence.png', 'S13FR9', 1, '', '2016-05-02 01:58:07', '13BCE0075', 'completed'),
(8, 'stateChartS13FR9', 'check/statechart.png', 'S13FR9', 2, '', '2016-05-02 01:58:30', '13BCE0075', 'completed'),
(9, 'UseCaseDiagramS13FR9', 'check/usecase.png', 'S13FR9', 3, '', '2016-05-02 01:59:02', '13BCE0075', 'completed'),
(10, 'activityDiagramS13FR9', 'check/activity.png', 'S13FR9', 3, '', '2016-05-02 01:59:35', '13BCE0075', 'completed'),
(12, 'stateChartS12FR10', 'check/2016-05-02 (7).png', 'S12FR10', 3, '', '2016-05-02 02:05:30', '13BCE0303', 'completed'),
(13, '2016-05-02 (8).pngS12FR10', 'check/2016-05-02 (8).png', 'S12FR10', 1, 'State Chart (6.1)', '2016-05-02 02:07:29', '13BCE0303', 'completed'),
(14, 'DataFlowDiagramS13FR9', 'check/dataflow.png', 'S13FR9', 2, '', '2016-05-02 02:08:08', '13BCE0075', 'completed'),
(15, '2016-05-02 (9).pngS12FR10', 'check/2016-05-02 (9).png', 'S12FR10', 1, 'State Chart 6.2', '2016-05-02 02:08:25', '13BCE0303', 'completed'),
(16, '2016-05-02 (10).pngS12FR10', 'check/2016-05-02 (10).png', 'S12FR10', 1, 'State Chart 6.3', '2016-05-02 02:08:45', '13BCE0303', 'completed'),
(19, '2016-05-02 (11).pngS12FR11', 'check/2016-05-02 (11).png', 'S12FR11', 3, 'ER Diagram', '2016-05-02 02:18:56', '13BCB0017', 'completed'),
(20, 'stateChartS12FR11', 'check/2016-05-02 (7).png', 'S12FR11', 3, '', '2016-05-02 02:19:15', '13BCB0017', 'completed'),
(21, '2016-05-02 (8).pngS12FR11', 'check/2016-05-02 (8).png', 'S12FR11', 1, '6.1 State Chart', '2016-05-02 02:19:56', '13BCB0017', 'completed'),
(22, '2016-05-02 (9).pngS12FR11', 'check/2016-05-02 (9).png', 'S12FR11', 1, '6.2 State Chart', '2016-05-02 02:20:18', '13BCB0017', 'completed'),
(23, '2016-05-02 (10).pngS12FR11', 'check/2016-05-02 (10).png', 'S12FR11', 1, '6.3 State Chart', '2016-05-02 02:20:41', '13BCB0017', 'completed'),
(24, 'code.pngS13FR15', 'check/code.png', 'S13FR15', 2, '', '2016-05-02 02:37:30', '13BCE0075', 'completed'),
(25, 'sequenceDiagramS13FR1', 'check/sequencediagram13bceo456.JPG', 'S13FR1', 1, '', '2016-05-02 04:13:17', '13BCE0456', 'completed'),
(26, 'sequenceDiagramS13FR6', 'check/sequence dig.JPG', 'S13FR6', 2, '', '2016-05-02 08:05:17', '13BCE0651', 'completed'),
(27, 'activityDiagramS13FR6', 'check/activity dig.JPG', 'S13FR6', 2, '', '2016-05-02 08:08:57', '13BCE0651', 'completed'),
(28, 'stateChartS13FR6', 'check/state dig.JPG', 'S13FR6', 2, '', '2016-05-02 08:11:06', '13BCE0651', 'completed'),
(29, 'sequence dig.JPGS13FR6', 'check/sequence dig.JPG', 'S13FR6', 1, '', '2016-05-02 08:14:07', '13BCE0651', 'completed'),
(30, 'activityDiagramS12FR4', 'check/activity dig.JPG', 'S12FR4', 2, '', '2016-05-02 08:16:31', '13BCE0567', 'completed'),
(31, '12400599_10207905949317256_5811925632026968898_n.jpgS13FR4', 'check/12400599_10207905949317256_5811925632026968898_n.jpg', 'S13FR4', 1, '123', '2016-05-02 11:38:01', '13BCE0482', 'completed'),
(32, 'jordan-belfort-quotes-wolf-wall-street12.jpgS13FR4', 'check/jordan-belfort-quotes-wolf-wall-street12.jpg', 'S13FR4', 1, '123', '2016-05-02 11:50:21', '13BCE0482', 'completed'),
(33, 'activityDiagramS13FR7', 'check/2.jpg', 'S13FR7', 1, '', '2016-05-02 11:56:51', '13BCE0291', 'completed'),
(37, 'sequenceDiagramS13FR10', 'check/seq.jpg', 'S13FR10', 1, '', '2016-05-03 02:24:54', '13BCE0274', 'completed'),
(40, 'jordan-belfort-quotes-wolf-wall-street.jpgS12NFR1', 'check/jordan-belfort-quotes-wolf-wall-street.jpg', 'S12NFR1', 3, '', '2016-05-03 10:49:04', '13BCE0567', 'completed'),
(41, 'stateChartS12NFR1', 'check/jordan-belfort-quotes-wolf-wall-street.jpg', 'S12NFR1', 3, '', '2016-05-03 10:50:08', '13BCE0567', 'completed'),
(44, 'stateChartS13FR1', 'check/statechartdiagram13bce0456.JPG', 'S13FR1', 1, '', '2016-05-03 12:01:14', '13BCE0456', 'completed'),
(45, 'dfd.JPGS13FR1', 'check/dfd.JPG', 'S13FR1', 1, '', '2016-05-03 12:09:19', '13BCE0456', 'completed'),
(47, 'activityDiagramS13FR3', 'check/activityDiagramStatus.png', 'S13FR3', 2, 'Activity Diagram for detailed Status', '2016-05-03 12:25:15', '13BCE0325', 'completed'),
(48, 'DataFlowDiagramS13FR3', 'check/dataflowdiagramStatus.png', 'S13FR3', 2, 'Data flow diagram for detailed status', '2016-05-03 12:25:48', '13BCE0325', 'completed'),
(49, 'sequenceDiagramS13FR3', 'check/sequence diagram.png', 'S13FR3', 2, 'Sequence diagram for detailed status', '2016-05-03 12:26:22', '13BCE0325', 'completed'),
(50, 'stateChartS13FR3', 'check/statechartdiagram.png', 'S13FR3', 2, 'state chart diagram for detailed status', '2016-05-03 12:27:05', '13BCE0325', 'completed'),
(51, 'stateChartS12FR9', 'check/statechart.png', 'S12FR9', 2, 'statechart for approve disapprove ', '2016-05-03 12:45:50', '13BCE0819', 'completed'),
(52, 'UseCaseDiagramS13FR1', 'check/UsecaseId12.JPG', 'S13FR1', 1, '', '2016-05-03 12:47:07', '13BCE0456', 'completed'),
(53, 'DataFlowDiagramS13FR2', 'check/DataFlowDiagram.png', 'S13FR2', 1, 'Data Flow Diagram for Baseline.', '2016-05-03 12:59:30', '13BCE0702', 'completed'),
(54, 'activityDiagramS13FR2', 'check/ActivityDiagram.png', 'S13FR2', 1, 'Activity Diagram for Baseline.', '2016-05-03 13:02:40', '13BCE0702', 'completed'),
(55, 'UseCaseDiagramS13FR2', 'check/Use-case.png', 'S13FR2', 1, 'Use Case Description for Baseline filter.', '2016-05-03 13:10:32', '13BCE0702', 'completed'),
(58, 'stateChartS13FR5', 'check/state.PNG', 'S13FR5', 2, 'SC Diagram for upload portal', '2016-05-04 00:02:33', '13BCE0231', 'completed'),
(59, 'sequenceDiagramS13FR5', 'check/Seq.PNG', 'S13FR5', 2, 'Sequence Diagram for upload portal', '2016-05-04 00:03:04', '13BCE0231', 'completed'),
(60, 'UseCaseDiagramS13FR5', 'check/use case.PNG', 'S13FR5', 2, 'Use case Diagram for upload portal', '2016-05-04 00:03:36', '13BCE0231', 'completed'),
(61, 'DataFlowDiagramS13FR5', 'check/DFD.PNG', 'S13FR5', 2, 'Data flow Diagram for upload portal', '2016-05-04 00:04:06', '13BCE0231', 'completed'),
(62, 'activityDiagramS13FR5', 'check/Act.PNG', 'S13FR5', 2, 'Activity Diagram for upload portal', '2016-05-04 00:06:55', '13BCE0231', 'completed'),
(63, 'DFD level0.PNGS13FR5', 'check/DFD level0.PNG', 'S13FR5', 2, 'DFD0 Diagram for upload portal', '2016-05-04 00:07:39', '13BCE0231', 'completed'),
(64, 'DFD level2.PNGS13FR5', 'check/DFD level2.PNG', 'S13FR5', 2, 'DFD2 Diagram for upload portal', '2016-05-04 00:08:52', '13BCE0231', 'completed'),
(65, 'DFD level2.2.PNGS13FR5', 'check/DFD level2.2.PNG', 'S13FR5', 2, 'DFD2.2 Diagram for upload portal', '2016-05-04 00:09:19', '13BCE0231', 'completed'),
(66, 'DFD level2.3.PNGS13FR5', 'check/DFD level2.3.PNG', 'S13FR5', 2, 'DFD2.3 Diagram for upload portal', '2016-05-04 00:10:29', '13BCE0231', 'completed'),
(67, 'activityDiagramS12FR1', 'check/Act.PNG', 'S12FR1', 2, 'act', '2016-05-04 00:13:43', '13BCE0166', 'completed'),
(68, 'DataFlowDiagramS12FR1', 'check/DFD.PNG', 'S12FR1', 2, 'dfd', '2016-05-04 00:14:26', '13BCE0166', 'completed'),
(69, 'sequenceDiagramS12FR1', 'check/Seq.PNG', 'S12FR1', 2, 'Seq', '2016-05-04 00:14:51', '13BCE0166', 'completed'),
(70, 'stateChartS12FR1', 'check/state.PNG', 'S12FR1', 2, 'State Chart', '2016-05-04 00:15:21', '13BCE0166', 'completed'),
(71, 'UseCaseDiagramS12FR1', 'check/use case.PNG', 'S12FR1', 2, 'UC', '2016-05-04 00:15:57', '13BCE0166', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `form1`
--

CREATE TABLE `form1` (
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form1`
--

INSERT INTO `form1` (`name`, `email`) VALUES
('Ankit', 'Ak77@gmail.com'),
('ankit.panchariya2013', '+919629787284'),
('dsaf', 'fg'),
('dsaf', 'fg'),
('dsaf', 'fg'),
('dsaf', 'fg'),
('dsaf', 'fg');

-- --------------------------------------------------------

--
-- Table structure for table `functional`
--

CREATE TABLE `functional` (
  `Project_id` varchar(10) NOT NULL,
  `FR_id` varchar(10) NOT NULL,
  `Emp_id` varchar(50) NOT NULL,
  `Type` text NOT NULL,
  `Description` text NOT NULL,
  `Status` enum('pending','complete','approved','disapproved') NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `functional`
--

INSERT INTO `functional` (`Project_id`, `FR_id`, `Emp_id`, `Type`, `Description`, `Status`, `Timestamp`) VALUES
('S12', 'S12FR1', '13BCE0166', 'Authentication', 'Use Login Diagrams(Sequrence)', 'complete', '2016-04-30 07:53:29'),
('S12', 'S12FR10', '13BCE0303', 'Legal/Regulatory', 'Add/MODIFY(state Chart)', 'complete', '2016-03-24 07:00:00'),
('S12', 'S12FR11', '13BCB0017', 'Audict Tracking', 'Status Diagrams(State Chart)', 'complete', '2016-03-02 07:00:00'),
('S12', 'S12FR2', '13BCE0558', 'Administrative Functions', 'Approve/Disapprove(Sequence)', 'complete', '2016-04-30 07:53:35'),
('S12', 'S12FR3', '13BCE0042', 'Audit Tracking', 'Status Diagrams(Sequence)', 'complete', '2016-04-30 07:53:42'),
('S12', 'S12FR4', '13BCE0567', 'Reporting Requirements', 'View Reports Digrams(Sequence)', 'complete', '2016-04-30 07:53:49'),
('S12', 'S12FR5', '13BCE0166', 'Legal or Regulatory', 'Add/Modify Diagrams(Sequence)', 'complete', '2016-04-30 07:53:54'),
('S12', 'S12FR6', '13BCE0348', 'Authentication', 'Login Diagrams(Activity)', 'complete', '2016-02-18 12:00:00'),
('S12', 'S12FR7', '13BCE0348', 'Administrative Functions', 'Approve/Disapprove(Activity)', 'complete', '2016-02-26 09:00:00'),
('S12', 'S12FR8', '13BCE0558', 'Administrative FUnctions', 'Admin Functionalities(Activity)', 'complete', '2016-02-20 09:00:00'),
('S12', 'S12FR9', '13BCE0819', 'Administrative Functions', 'Approve/Disapprove(State Chart)', 'complete', '2016-02-29 09:00:00'),
('S13', 'S13FR1', '13BCE0456', 'External Interface', 'Baseline', 'complete', '2016-03-30 07:00:00'),
('S13', 'S13FR10', '13BCE0274', 'Authorization levels', 'Project Manager DIagrams', 'complete', '2016-05-03 19:14:40'),
('S13', 'S13FR11', '13BCE0231', '', 'Audio requirements test', 'approved', '2016-05-03 17:01:36'),
('S13', 'S13FR15', '13BCE0075', 'Historical data', 'Code for function mapping', 'complete', '2016-05-02 07:14:40'),
('S13', 'S13FR2', '13BCE0702', 'External Interface', 'Baseline', 'complete', '2016-03-23 09:00:00'),
('S13', 'S13FR20', '13BCE0231', 'AUDIO', 'AUDIO', 'pending', '2016-05-04 05:28:48'),
('S13', 'S13FR21', '13BCE0231', 'VIDEO', 'VIDEO', 'pending', '2016-05-04 05:29:19'),
('S13', 'S13FR3', '13BCE0325', 'Audit Tracking', 'View Detailed Status', 'complete', '2016-03-30 07:00:00'),
('S13', 'S13FR4', '13BCE0482', 'Legal/Regulatory', 'Add/Modify(UPLOAD PROJECT DIAGRAMS)', 'complete', '2016-03-30 11:00:00'),
('S13', 'S13FR5', '13BCE0231', 'Legal/Regulatory', 'Upload DIagrams For Requirments', 'complete', '2016-03-31 11:00:00'),
('S13', 'S13FR6', '13BCE0651', 'Reporting Requirements', 'View Requirments', 'complete', '2016-03-16 09:00:00'),
('S13', 'S13FR7', '13BCE0291', 'Adminitrative Functions', 'Admin Diagrams', 'complete', '2016-03-23 12:00:00'),
('S13', 'S13FR8', '13BCE0609', 'Transcation/Corrections', 'Report Generastion', 'complete', '2016-03-17 09:00:00'),
('S13', 'S13FR9', '13BCE0075', 'Historical Data', 'Function Mapping', 'complete', '2016-03-23 09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `interface`
--

CREATE TABLE `interface` (
  `Project_id` varchar(5) NOT NULL,
  `Interface_id` int(11) NOT NULL,
  `Employee_id` varchar(50) NOT NULL,
  `Type` text NOT NULL,
  `Description` text NOT NULL,
  `Status` text NOT NULL,
  `LastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Minutes` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mapping`
--

CREATE TABLE `mapping` (
  `callername` varchar(20) NOT NULL,
  `comment1` varchar(40) NOT NULL,
  `calledname` varchar(20) NOT NULL,
  `comment2` varchar(40) NOT NULL,
  `pmpassed` varchar(30) NOT NULL,
  `fileid` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mapping`
--

INSERT INTO `mapping` (`callername`, `comment1`, `calledname`, `comment2`, `pmpassed`, `fileid`) VALUES
('main', 'The main display\r\n                      ', 'ajaxfunction2', 'using ajax to display function called me', 'NOParameter', '24'),
('main', 'The main display\r\n                      ', 'ajaxfunction1', 'using ajax to display function caller me', 'NOParameter', '24'),
('Odd', 'Calculates odd\r\n                        ', 'Even', 'Calculates even\r\n                       ', 'Number', '31'),
('prime', 'calculate prime\r\n                       ', 'factorial', 'calculate factorial\r\n                   ', 'Number', '31');

-- --------------------------------------------------------

--
-- Table structure for table `non_functional`
--

CREATE TABLE `non_functional` (
  `Project_id` varchar(10) NOT NULL,
  `NFR_id` varchar(10) NOT NULL,
  `Emp_id` varchar(50) NOT NULL,
  `Type` text NOT NULL,
  `Description` text NOT NULL,
  `Status` enum('pending','complete','approved','disapproved') NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `subtype` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `non_functional`
--

INSERT INTO `non_functional` (`Project_id`, `NFR_id`, `Emp_id`, `Type`, `Description`, `Status`, `Timestamp`, `subtype`) VALUES
('S12', 'S12NFR1', '13BCE0567', 'Usability', '9.1.1	The system shall allow the users to access the system from the Internet using HTML or its derivative technologies like XML/CSS. The system uses a web browser as an interface. \r\n\r\n9.1.2	Online help will be available for the system in the form of sample project, video tutorial and Help document. Also the user shall have the option of clarifying the functionalities of the tools through mail id provided on the website.\r\n9.1.3	The end users will be able to able to adapt to the system with a minimum training of 1 hour. \r\n\r\n\r\n9.1.4	The employees and project managers shall be able to view the pages in English\r\n', 'complete', '2016-02-09 04:00:00', ''),
('S12', 'S12NFR10', '13BCE0567', '\r\nPrivacy', 'Employees and Project Managers shall be able to view and modify only the projects they are working on. \r\n9.7.2	The completed projects will be shifted to Baseline and would only be viewed and not modified.\r\n\r\n9.7.3	All the project content will be confidential and will not be available to general public without prior approval from Project Manager.\r\n9.7.4	Only Project Managers will have the option of viewing notifications about changes.', 'complete', '2016-04-30 06:51:41', ''),
('S12', 'S12NFR2', '13BCE0567', 'Security', '9.2.1.1	Employees and Project Managers will be provided access to the system after they are registered in the Project Management Tool \r\n\r\n9.2.1.2	 Employees and Project Managers will be logging into the system using their ID and password as registered under Project Management Tool. \r\n\r\n9.2.1.3	All users will have the option to change their current password whenever necessary. \r\n', 'complete', '2016-03-22 02:00:00', 'Login Requirements'),
('S12', 'S12NFR3', '13BCE0863', 'Security', '9.2.2.1	Passwords must have a minimum length of 8 characters\r\n9.2.2.2	Passwords must meet at least 3 out of the 4 requirements for quality: \r\no	at least 1 lower case letter \r\no	at least 1 upper case letter \r\no	at least 1 number \r\no	At least 1 special character (?, *, %) \r\n', 'complete', '2016-04-30 06:56:59', 'Password Requirements'),
('S12', 'S12NFR4', '13BCE0348', 'SEcurity', '9.2.3.1	System should timeout when there is no activity for ten minutes. ', 'complete', '2016-03-30 04:00:00', 'Inactivity Timeours'),
('S12', 'S12NFR5', '13BCE0863', 'Performance', '\r\n9.3.1.1 The response time will be less than 30 seconds for 95% requests made to the system. \r\n', 'complete', '2016-04-30 06:54:21', ''),
('S12', 'S12NFR6', '13BCE0567', ' Capacity', '\r\n9.4.1.1	The application shall be able to successfully handle 50 requests per hour. \r\n', 'complete', '2016-04-04 05:00:00', '9.4.1	Throughput '),
('S12', 'S12NFR7', '13BCE0863', 'Capacity', 'Hard disk space –  20 GB – Content ', 'complete', '2016-03-23 08:00:00', '9.4.2	Storage '),
('S12', 'S12NFR8', '13BCE0348', '9.5	Availability', '9.5.1.1	The system will be available on all days 24*7.', 'complete', '2016-04-12 08:00:00', '9.5.1	Hours of operation '),
('S12', 'S12NFR9', '13BCE0348', 'Portability', '9.6.1	The system will run on windows XP/Windows7/Windows 8/Windows 8.1/Windows 10', 'complete', '2016-02-01 03:00:00', ''),
('S13', 'S13NFR1', '13BCE0702', 'Usability', '9.1.1	The system shall allow the users to access the system from the Internet using HTML or its derivative technologies like XML/CSS. The system uses a web browser as an interface. \r\n\r\n9.1.2	Online help will be available for the system in the form of sample project, video tutorial and Help document. Also the user shall have the option of clarifying the functionalities of the tools through mail id provided on the website.\r\n9.1.3	The end users will be able to able to adapt to the system with a minimum training of 1 hour. \r\n\r\n\r\n9.1.4	The employees and project managers shall be able to view the pages in English\r\n', 'complete', '2016-02-09 05:00:00', ''),
('S13', 'S13NFR10', '13BCE0702', '\r\nPrivacy', 'Employees and Project Managers shall be able to view and modify only the projects they are working on. \r\n9.7.2	The completed projects will be shifted to Baseline and would only be viewed and not modified.\r\n\r\n9.7.3	All the project content will be confidential and will not be available to general public without prior approval from Project Manager.\r\n9.7.4	Only Project Managers will have the option of viewing notifications about changes.', 'complete', '2016-04-30 08:51:41', ''),
('S13', 'S13NFR2', '13BCE0702', 'Security', '9.2.1.1	Employees and Project Managers will be provided access to the system after they are registered in the Project Management Tool \r\n\r\n9.2.1.2	 Employees and Project Managers will be logging into the system using their ID and password as registered under Project Management Tool. \r\n\r\n9.2.1.3	All users will have the option to change their current password whenever necessary. \r\n', 'complete', '2016-03-22 03:00:00', 'Login Requirements'),
('S13', 'S13NFR3', '13BCE0702', 'Security', '9.2.2.1	Passwords must have a minimum length of 8 characters\r\n9.2.2.2	Passwords must meet at least 3 out of the 4 requirements for quality: \r\no	at least 1 lower case letter \r\no	at least 1 upper case letter \r\no	at least 1 number \r\no	At least 1 special character (?, *, %) \r\n', 'complete', '2016-04-30 08:56:59', 'Password Requirements'),
('S13', 'S13NFR4', '13BCE0702', 'SEcurity', '9.2.3.1	System should timeout when there is no activity for ten minutes. ', 'complete', '2016-03-30 06:00:00', 'Inactivity Timeours'),
('S13', 'S13NFR5', '13BCE0702', 'Performance', '\r\n9.3.1.1 The response time will be less than 30 seconds for 95% requests made to the system. \r\n', 'complete', '2016-04-30 08:54:21', ''),
('S13', 'S13NFR6', '13BCE0702', ' Capacity', '\r\n9.4.1.1	The application shall be able to successfully handle 50 requests per hour. \r\n', 'complete', '2016-04-04 07:00:00', '9.4.1	Throughput '),
('S13', 'S13NFR7', '13BCE0702', 'Capacity', 'Hard disk space –  20 GB – Content ', 'complete', '2016-03-23 09:00:00', '9.4.2	Storage '),
('S13', 'S13NFR8', '13BCE0702', '9.5	Availability', '9.5.1.1	The system will be available on all days 24*7.', 'complete', '2016-04-12 10:00:00', '9.5.1	Hours of operation '),
('S13', 'S13NFR9', '13BCE0702', 'Portability', '9.6.1	The system will run on windows XP/Windows7/Windows 8/Windows 8.1/Windows 10', 'complete', '2016-04-13 10:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `pm_emp`
--

CREATE TABLE `pm_emp` (
  `Emp_id` varchar(10) NOT NULL,
  `Pm_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pm_emp`
--

INSERT INTO `pm_emp` (`Emp_id`, `Pm_id`) VALUES
('13BCB0017', '13BCE0558'),
('13BCE0042', '13BCE0558'),
('13BCE0070', '13BCE0558'),
('13BCE0166', '13BCE0558'),
('13BCE0231', '13BCE0075'),
('13BCE0274', '13BCE0075'),
('13BCE0291', '13BCE0075'),
('13BCE0303', '13BCE0558'),
('13BCE0325', '13BCE0075'),
('13BCE0348', '13BCE0558'),
('13BCE0359', '13BCE0075'),
('13BCE0456', '13BCE0075'),
('13BCE0473', '13BCE0558'),
('13BCE0482', '13BCE0075'),
('13BCE0567', '13BCE0558'),
('13BCE0609', '13BCE0075'),
('13BCE0651', '13BCE0075'),
('13BCE0702', '13BCE0075'),
('13BCE0819', '13BCE0558'),
('13BCE0863', '13BCE0558');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `Sys_Id` varchar(5) NOT NULL,
  `Proj_Id` varchar(5) NOT NULL,
  `Proj_Name` varchar(50) NOT NULL,
  `Proj_Desc` text NOT NULL,
  `StartDate` datetime NOT NULL,
  `EnDate` datetime NOT NULL,
  `NoOfHrs` int(11) NOT NULL,
  `NoOfMembers` int(11) NOT NULL,
  `Status` enum('pending','complete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Sys_Id`, `Proj_Id`, `Proj_Name`, `Proj_Desc`, `StartDate`, `EnDate`, `NoOfHrs`, `NoOfMembers`, `Status`) VALUES
('S1', 'S11', 'Project Management System', 'A Tool to create and Manage Projects with task assignment', '2016-01-14 07:00:00', '2016-05-01 08:00:00', 1200, 10, 'pending'),
('S1', 'S12', 'Requirements Management System', 'A Tool to assign functional,nonfunctional and use case requirements ', '2016-01-14 07:00:00', '2016-05-01 08:00:00', 1200, 11, 'pending'),
('S1', 'S13', 'Design Management System', 'A Tool to upload files for all set of projects and requirements ', '2016-01-14 07:00:00', '2016-05-01 08:00:00', 1200, 11, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `project_details`
--

CREATE TABLE `project_details` (
  `Project_id` varchar(10) NOT NULL,
  `Ref` text NOT NULL,
  `revision_history` text NOT NULL,
  `scope` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_details`
--

INSERT INTO `project_details` (`Project_id`, `Ref`, `revision_history`, `scope`) VALUES
('S11', 'Wikipedia,VIT Academics Course Page Material\r\n\r\n', 'Initialization, Purpose and Scope and Product Functions1.0, External Interface Requirements and Assumptions and Dependencies1.1, Nonfunctional Requirements and Constraints1.2, Project Cost1.3,Use Descriptions1.4,Use Case Diagrams1.6,Final CheckforRS1.7\r\n', 'System Creation\r\nProject Creation – Take project details and necessary team details as input and create a project with these inputs\r\nAssignment of TMs to projects. \r\nCreation of tasks for each project.   \r\nAssignment of tasks to TMs in a project. \r\nStatus view and upload - Check how much percentage of a particular task has been done.\r\nFile upload - Include option to upload necessary documents.  \r\nReviews and review status for all processes.  \r\nProject Closure - Close your project quickly and efficiently with required details.Project cost estimation analysis.\r\n'),
('S12', 'Wikipedia,VIT Academics Course Page Material\r\n\r\n', 'Initialization, Purpose and Scope and Product Functions1.0, External Interface Requirements and Assumptions and Dependencies1.1, Nonfunctional Requirements and Constraints1.2, Project Cost1.3,Use Descriptions1.4,Use Case Diagrams1.6,Final CheckforRS1.7\r\n', 'The user has the right to update and add new requirements.\r\nKeeping track of different versions of the requirements documents.\r\nProject manager has the rights to approve the requirements.\r\nFind out how much work is done in a particular period of time.\r\nEvery person involved in the process can view reports at each stage.\r\nThe user can see the requirements that are approved/ disapproved.\r\n'),
('S13', 'Wikipedia,VIT Academics Course Page Material\r\n\r\n', 'Initialization, Purpose and Scope and Product Functions1.0, External Interface Requirements and Assumptions and Dependencies1.1, Nonfunctional Requirements and Constraints1.2, Project Cost1.3,Use Descriptions1.4,Use Case Diagrams1.6,Final CheckforRS1.7\r\n', 'Online project registration.Employees can submit their reports online.Different versions of a document can be submitted, highlighting the updates.Project managers can track the status of the project and contribution of other team members.Admins will have view permission for all systems .Project Managers can delete files if required.Reports for completed projects can be generated by project managers.All completed project s can be viewed under the baseline.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `project_pm`
--

CREATE TABLE `project_pm` (
  `Proj_Id` varchar(10) NOT NULL,
  `Emp_Id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_pm`
--

INSERT INTO `project_pm` (`Proj_Id`, `Emp_Id`) VALUES
('S12', '13BCB0017'),
('S12', '13BCE0042'),
('S12', '13BCE0070'),
('S13', '13BCE0075'),
('S12', '13BCE0166'),
('S13', '13BCE0231'),
('S13', '13BCE0274'),
('S13', '13BCE0291'),
('S12', '13BCE0303'),
('S13', '13BCE0325'),
('S12', '13BCE0348'),
('S13', '13BCE0359'),
('S13', '13BCE0456'),
('S12', '13BCE0473'),
('S13', '13BCE0482'),
('S12', '13BCE0558'),
('S12', '13BCE0567'),
('S13', '13BCE0609'),
('S13', '13BCE0651'),
('S13', '13BCE0702'),
('S12', '13BCE0819'),
('S12', '13BCE0863');

-- --------------------------------------------------------

--
-- Table structure for table `project_task_cost`
--

CREATE TABLE `project_task_cost` (
  `PTC_TaskId` varchar(45) NOT NULL,
  `PTC_ActualStartDate` date NOT NULL,
  `PTC_ActualEndDate` date NOT NULL,
  `PTC_ActualTaskCost` varchar(45) DEFAULT NULL,
  `PTC_NoOfmembers` varchar(70) DEFAULT NULL,
  `PTC_NoOfHours` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_testcase`
--

CREATE TABLE `project_testcase` (
  `Test_Id` int(5) NOT NULL,
  `Project_Id` varchar(5) NOT NULL,
  `Requirement_Id` varchar(5) NOT NULL,
  `Testcase_Id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `proj_task`
--

CREATE TABLE `proj_task` (
  `ProId` varchar(50) NOT NULL,
  `TaskId` varchar(50) NOT NULL,
  `TaskName` varchar(50) NOT NULL,
  `TaskDesc` varchar(100) NOT NULL,
  `TaskStartDate` date NOT NULL,
  `TaskEndDate` date NOT NULL,
  `Hours` int(11) NOT NULL,
  `Members` int(11) NOT NULL,
  `Status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prototype`
--

CREATE TABLE `prototype` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PROJECT_ID` varchar(5) NOT NULL,
  `FILE_NAME` varchar(100) NOT NULL,
  `FILE_SIZE` int(11) NOT NULL,
  `FILE_TYPE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requirement_emp`
--

CREATE TABLE `requirement_emp` (
  `Project_Id` varchar(5) NOT NULL,
  `Requirement_Id` varchar(5) NOT NULL,
  `Tester_Id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `Project_id` varchar(10) NOT NULL,
  `R_id` varchar(10) NOT NULL,
  `Pm_id` varchar(50) NOT NULL,
  `Status` enum('approved','disapproved') NOT NULL,
  `Comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`Project_id`, `R_id`, `Pm_id`, `Status`, `Comments`) VALUES
('S12', 'S12FR1', '13BCE0558', 'approved', ''),
('S12', 'S12FR10', '13BCE0558', 'approved', ''),
('S12', 'S12FR11', '13BCE0558', 'approved', ''),
('S12', 'S12FR2', '13BCE0558', 'approved', ''),
('S12', 'S12FR3', '13BCE0558', 'approved', ''),
('S12', 'S12FR4', '13BCE0558', 'approved', ''),
('S12', 'S12FR5', '13BCE0558', 'approved', ''),
('S12', 'S12FR6', '13BCE0558', 'approved', ''),
('S12', 'S12FR7', '13BCE0558', 'approved', ''),
('S12', 'S12FR8', '13BCE0558', 'approved', ''),
('S12', 'S12FR9', '13BCE0558', 'approved', ''),
('S12', 'S12NFR1', '13BCE0558', 'approved', ''),
('S12', 'S12NFR10', '13BCE0558', 'approved', ''),
('S12', 'S12NFR2', '13BCE0558', 'approved', ''),
('S12', 'S12NFR3', '13BCE0558', 'approved', ''),
('S12', 'S12NFR4', '13BCE0558', 'approved', ''),
('S12', 'S12NFR5', '13BCE0558', 'approved', ''),
('S12', 'S12NFR6', '13BCE0558', 'approved', ''),
('S12', 'S12NFR7', '13BCE0558', 'approved', ''),
('S12', 'S12NFR8', '13BCE0558', 'approved', ''),
('S12', 'S12NFR9', '13BCE0558', 'approved', ''),
('S13', 'S13FR1', '13BCE0075', 'approved', ''),
('S13', 'S13FR10', '13BCE0075', 'approved', ''),
('S13', 'S13FR15', '13BCE0075', 'approved', ''),
('S13', 'S13FR2', '13BCE0075', 'approved', ''),
('S13', 'S13FR20', '13BCE0075', 'approved', ''),
('S13', 'S13FR3', '13BCE0075', 'approved', ''),
('S13', 'S13FR4', '13BCE0075', 'approved', ''),
('S13', 'S13FR5', '13BCE0075', 'approved', ''),
('S13', 'S13FR6', '13BCE0075', 'approved', ''),
('S13', 'S13FR7', '13BCE0075', 'approved', ''),
('S13', 'S13FR8', '13BCE0075', 'approved', ''),
('S13', 'S13FR9', '13BCE0075', 'approved', ''),
('S13', 'S13NFR1', '13BCE0075', 'approved', ''),
('S13', 'S13NFR10', '13BCE0075', 'approved', ''),
('S13', 'S13NFR2', '13BCE0075', 'approved', ''),
('S13', 'S13NFR3', '13BCE0075', 'approved', ''),
('S13', 'S13NFR4', '13BCE0075', 'approved', ''),
('S13', 'S13NFR5', '13BCE0075', 'approved', ''),
('S13', 'S13NFR6', '13BCE0075', 'approved', ''),
('S13', 'S13NFR7', '13BCE0075', 'approved', ''),
('S13', 'S13NFR8', '13BCE0075', 'approved', ''),
('S13', 'S13NFR9', '13BCE0075', 'approved', '');

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `SM_SystemID` varchar(5) NOT NULL,
  `SM_SysName` varchar(50) NOT NULL,
  `SM_SysDesc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`SM_SystemID`, `SM_SysName`, `SM_SysDesc`) VALUES
('S1', 'CSE325', 'Six  teams in Software Engineering Class working i');

-- --------------------------------------------------------

--
-- Table structure for table `task_employee`
--

CREATE TABLE `task_employee` (
  `Task_ID` varchar(50) NOT NULL,
  `Emp_Id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testcase`
--

CREATE TABLE `testcase` (
  `Test_Id` int(5) NOT NULL,
  `Testcase_Description` varchar(200) NOT NULL,
  `Input` varchar(200) NOT NULL,
  `Expected_Output` varchar(200) NOT NULL,
  `Actual_Output` varchar(200) DEFAULT NULL,
  `Tester_Id` varchar(50) NOT NULL,
  `status` enum('open','success','failure','approved') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `typeid` varchar(10) NOT NULL,
  `typename` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`typeid`, `typename`) VALUES
('1', 'code'),
('2', 'image'),
('3', 'audio'),
('4', 'video');

-- --------------------------------------------------------

--
-- Table structure for table `usecase_actors`
--

CREATE TABLE `usecase_actors` (
  `UR_id` varchar(5) NOT NULL,
  `Actors` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `use_case`
--

CREATE TABLE `use_case` (
  `Project_id` varchar(5) NOT NULL,
  `UR_id` varchar(5) NOT NULL,
  `Emp_id` varchar(50) NOT NULL,
  `Name` text NOT NULL,
  `Preconditions` text NOT NULL,
  `Success_condition` text NOT NULL,
  `Fail_condition` text NOT NULL,
  `Usecase_diag` blob NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Description` text NOT NULL,
  `status` enum('pending','complete','approved','disapproved') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AMID`);

--
-- Indexes for table `assumptions`
--
ALTER TABLE `assumptions`
  ADD PRIMARY KEY (`Assumptions_id`),
  ADD KEY `Project_id` (`Project_id`),
  ADD KEY `Employee_id` (`Employee_id`);

--
-- Indexes for table `baseline`
--
ALTER TABLE `baseline`
  ADD PRIMARY KEY (`Project_id`,`R_id`),
  ADD KEY `Emp_id` (`Emp_id`),
  ADD KEY `Project_id` (`Project_id`),
  ADD KEY `R_id` (`R_id`),
  ADD KEY `Timestamp` (`Timestamp`),
  ADD KEY `Pm_id` (`Pm_id`),
  ADD KEY `Type` (`TypeID`);

--
-- Indexes for table `constraints`
--
ALTER TABLE `constraints`
  ADD PRIMARY KEY (`Constraint_id`),
  ADD KEY `Project_id` (`Project_id`),
  ADD KEY `Employee_id` (`Employee_id`),
  ADD KEY `Constraint_id` (`Constraint_id`);

--
-- Indexes for table `defect`
--
ALTER TABLE `defect`
  ADD PRIMARY KEY (`Test_Id`,`Defect_Id`),
  ADD KEY `Test_Id` (`Test_Id`),
  ADD KEY `Programmer_Id` (`Programmer_Id`);

--
-- Indexes for table `diagram`
--
ALTER TABLE `diagram`
  ADD PRIMARY KEY (`fileid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `empid` (`empid`),
  ADD KEY `empid_2` (`empid`),
  ADD KEY `pid_2` (`pid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emp_id`),
  ADD UNIQUE KEY `Emp_Email` (`Emp_Email`),
  ADD UNIQUE KEY `User_Name` (`User_Name`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`fileid`);

--
-- Indexes for table `functional`
--
ALTER TABLE `functional`
  ADD PRIMARY KEY (`Project_id`,`FR_id`),
  ADD KEY `Project_id` (`Project_id`),
  ADD KEY `Emp_id` (`Emp_id`),
  ADD KEY `FR_id` (`FR_id`);

--
-- Indexes for table `interface`
--
ALTER TABLE `interface`
  ADD PRIMARY KEY (`Interface_id`),
  ADD KEY `Project_id` (`Project_id`),
  ADD KEY `Employee_id` (`Employee_id`);

--
-- Indexes for table `mapping`
--
ALTER TABLE `mapping`
  ADD KEY `fileid` (`fileid`);

--
-- Indexes for table `non_functional`
--
ALTER TABLE `non_functional`
  ADD PRIMARY KEY (`Project_id`,`NFR_id`),
  ADD KEY `Project_id` (`Project_id`),
  ADD KEY `NFR_id` (`NFR_id`),
  ADD KEY `Emp_id` (`Emp_id`),
  ADD KEY `NFR_id_2` (`NFR_id`);

--
-- Indexes for table `pm_emp`
--
ALTER TABLE `pm_emp`
  ADD PRIMARY KEY (`Emp_id`,`Pm_id`),
  ADD KEY `Emp_id` (`Emp_id`),
  ADD KEY `Pm_id` (`Pm_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Proj_Id`),
  ADD KEY `Sys_Id` (`Sys_Id`),
  ADD KEY `Sys_Id_2` (`Sys_Id`);

--
-- Indexes for table `project_details`
--
ALTER TABLE `project_details`
  ADD KEY `Project_id` (`Project_id`);

--
-- Indexes for table `project_pm`
--
ALTER TABLE `project_pm`
  ADD PRIMARY KEY (`Emp_Id`,`Proj_Id`),
  ADD KEY `Proj_Id` (`Proj_Id`),
  ADD KEY `Emp_Id` (`Emp_Id`);

--
-- Indexes for table `project_task_cost`
--
ALTER TABLE `project_task_cost`
  ADD PRIMARY KEY (`PTC_TaskId`),
  ADD KEY `PTC_TaskId` (`PTC_TaskId`);

--
-- Indexes for table `project_testcase`
--
ALTER TABLE `project_testcase`
  ADD PRIMARY KEY (`Test_Id`),
  ADD KEY `Project_Id` (`Project_Id`),
  ADD KEY `Requirement_Id` (`Requirement_Id`),
  ADD KEY `Testcase_Id` (`Testcase_Id`),
  ADD KEY `Project_Id_2` (`Project_Id`),
  ADD KEY `Requirement_Id_2` (`Requirement_Id`),
  ADD KEY `Testcase_Id_2` (`Testcase_Id`);

--
-- Indexes for table `proj_task`
--
ALTER TABLE `proj_task`
  ADD PRIMARY KEY (`TaskId`),
  ADD KEY `ProId` (`ProId`),
  ADD KEY `ProId_2` (`ProId`);

--
-- Indexes for table `prototype`
--
ALTER TABLE `prototype`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PROJECT_ID` (`PROJECT_ID`);

--
-- Indexes for table `requirement_emp`
--
ALTER TABLE `requirement_emp`
  ADD PRIMARY KEY (`Project_Id`,`Requirement_Id`,`Tester_Id`),
  ADD KEY `Requirement_Id` (`Requirement_Id`),
  ADD KEY `Tester_Id` (`Tester_Id`),
  ADD KEY `Project_Id` (`Project_Id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`Project_id`,`R_id`),
  ADD KEY `R_id` (`R_id`),
  ADD KEY `Pm_id` (`Pm_id`),
  ADD KEY `Project_id` (`Project_id`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`SM_SystemID`);

--
-- Indexes for table `task_employee`
--
ALTER TABLE `task_employee`
  ADD PRIMARY KEY (`Task_ID`,`Emp_Id`),
  ADD KEY `Task_ID` (`Task_ID`),
  ADD KEY `Emp_Id` (`Emp_Id`);

--
-- Indexes for table `testcase`
--
ALTER TABLE `testcase`
  ADD PRIMARY KEY (`Test_Id`),
  ADD KEY `Test_Id` (`Test_Id`),
  ADD KEY `Tester_Id` (`Tester_Id`),
  ADD KEY `Tester_Id_2` (`Tester_Id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`typeid`),
  ADD KEY `typeid` (`typeid`);

--
-- Indexes for table `usecase_actors`
--
ALTER TABLE `usecase_actors`
  ADD PRIMARY KEY (`UR_id`),
  ADD KEY `UR_id` (`UR_id`);

--
-- Indexes for table `use_case`
--
ALTER TABLE `use_case`
  ADD PRIMARY KEY (`Project_id`,`UR_id`),
  ADD KEY `Project_id` (`Project_id`),
  ADD KEY `UR_id` (`UR_id`),
  ADD KEY `Emp_id` (`Emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assumptions`
--
ALTER TABLE `assumptions`
  MODIFY `Assumptions_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `constraints`
--
ALTER TABLE `constraints`
  MODIFY `Constraint_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `diagram`
--
ALTER TABLE `diagram`
  MODIFY `fileid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `fileid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `interface`
--
ALTER TABLE `interface`
  MODIFY `Interface_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prototype`
--
ALTER TABLE `prototype`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assumptions`
--
ALTER TABLE `assumptions`
  ADD CONSTRAINT `assumptions_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `assumptions_ibfk_2` FOREIGN KEY (`Employee_id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `baseline`
--
ALTER TABLE `baseline`
  ADD CONSTRAINT `baseline_ibfk_1` FOREIGN KEY (`Emp_id`) REFERENCES `employee` (`Emp_id`),
  ADD CONSTRAINT `baseline_ibfk_2` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `baseline_ibfk_3` FOREIGN KEY (`R_id`) REFERENCES `status` (`R_id`),
  ADD CONSTRAINT `baseline_ibfk_4` FOREIGN KEY (`Pm_id`) REFERENCES `employee` (`Emp_id`),
  ADD CONSTRAINT `baseline_ibfk_5` FOREIGN KEY (`TypeID`) REFERENCES `type` (`typeid`);

--
-- Constraints for table `constraints`
--
ALTER TABLE `constraints`
  ADD CONSTRAINT `constraints_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `constraints_ibfk_2` FOREIGN KEY (`Employee_id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `defect`
--
ALTER TABLE `defect`
  ADD CONSTRAINT `defect_ibfk_1` FOREIGN KEY (`Test_Id`) REFERENCES `project_testcase` (`Test_Id`),
  ADD CONSTRAINT `defect_ibfk_2` FOREIGN KEY (`Programmer_Id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `functional`
--
ALTER TABLE `functional`
  ADD CONSTRAINT `functional_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `functional_ibfk_2` FOREIGN KEY (`Emp_id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `interface`
--
ALTER TABLE `interface`
  ADD CONSTRAINT `interface_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `interface_ibfk_2` FOREIGN KEY (`Employee_id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `non_functional`
--
ALTER TABLE `non_functional`
  ADD CONSTRAINT `non_functional_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `non_functional_ibfk_2` FOREIGN KEY (`Emp_id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `pm_emp`
--
ALTER TABLE `pm_emp`
  ADD CONSTRAINT `pm_emp_ibfk_1` FOREIGN KEY (`Emp_id`) REFERENCES `employee` (`Emp_id`),
  ADD CONSTRAINT `pm_emp_ibfk_2` FOREIGN KEY (`Pm_id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`Sys_Id`) REFERENCES `system` (`SM_SystemID`);

--
-- Constraints for table `project_pm`
--
ALTER TABLE `project_pm`
  ADD CONSTRAINT `project_pm_ibfk_1` FOREIGN KEY (`Proj_Id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `project_pm_ibfk_2` FOREIGN KEY (`Emp_Id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `project_task_cost`
--
ALTER TABLE `project_task_cost`
  ADD CONSTRAINT `project_task_cost_ibfk_1` FOREIGN KEY (`PTC_TaskId`) REFERENCES `proj_task` (`TaskId`);

--
-- Constraints for table `project_testcase`
--
ALTER TABLE `project_testcase`
  ADD CONSTRAINT `project_testcase_ibfk_1` FOREIGN KEY (`Project_Id`) REFERENCES `requirement_emp` (`Project_Id`),
  ADD CONSTRAINT `project_testcase_ibfk_2` FOREIGN KEY (`Requirement_Id`) REFERENCES `requirement_emp` (`Requirement_Id`);

--
-- Constraints for table `proj_task`
--
ALTER TABLE `proj_task`
  ADD CONSTRAINT `proj_task_ibfk_1` FOREIGN KEY (`ProId`) REFERENCES `project` (`Proj_Id`);

--
-- Constraints for table `prototype`
--
ALTER TABLE `prototype`
  ADD CONSTRAINT `prototype_ibfk_1` FOREIGN KEY (`PROJECT_ID`) REFERENCES `project` (`Proj_Id`);

--
-- Constraints for table `requirement_emp`
--
ALTER TABLE `requirement_emp`
  ADD CONSTRAINT `requirement_emp_ibfk_1` FOREIGN KEY (`Project_Id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `requirement_emp_ibfk_2` FOREIGN KEY (`Requirement_Id`) REFERENCES `baseline` (`R_id`),
  ADD CONSTRAINT `requirement_emp_ibfk_3` FOREIGN KEY (`Tester_Id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `status_ibfk_2` FOREIGN KEY (`Pm_id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `task_employee`
--
ALTER TABLE `task_employee`
  ADD CONSTRAINT `task_employee_ibfk_1` FOREIGN KEY (`Task_ID`) REFERENCES `proj_task` (`TaskId`),
  ADD CONSTRAINT `task_employee_ibfk_2` FOREIGN KEY (`Emp_Id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `testcase`
--
ALTER TABLE `testcase`
  ADD CONSTRAINT `testcase_ibfk_1` FOREIGN KEY (`Test_Id`) REFERENCES `project_testcase` (`Test_Id`),
  ADD CONSTRAINT `testcase_ibfk_2` FOREIGN KEY (`Tester_Id`) REFERENCES `requirement_emp` (`Tester_Id`);

--
-- Constraints for table `use_case`
--
ALTER TABLE `use_case`
  ADD CONSTRAINT `use_case_ibfk_1` FOREIGN KEY (`Project_id`) REFERENCES `project` (`Proj_Id`),
  ADD CONSTRAINT `use_case_ibfk_2` FOREIGN KEY (`Emp_id`) REFERENCES `employee` (`Emp_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
