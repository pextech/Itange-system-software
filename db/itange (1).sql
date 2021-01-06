-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2020 at 08:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itange`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `branch_address` varchar(100) NOT NULL,
  `branch_contact` varchar(50) NOT NULL,
  `skin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_address`, `branch_contact`, `skin`) VALUES
(1, 'Co-ordinator', 'Nyamirambo', '0787381418', 'red'),
(2, 'superadmin', 'Nyamirambo', '0787381418', 'purple'),
(3, 'admin', 'Nyamirambo', '', 'black');

-- --------------------------------------------------------

--
-- Table structure for table `cells`
--

CREATE TABLE `cells` (
  `id` int(100) NOT NULL,
  `cell_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cells`
--

INSERT INTO `cells` (`id`, `cell_name`) VALUES
(1, 'mumena'),
(2, 'gasharu'),
(3, 'cyivugiza'),
(4, 'rugarama');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `intake` int(100) NOT NULL,
  `sector` varchar(100) NOT NULL,
  `cell` varchar(100) NOT NULL,
  `village` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `nid` varchar(100) NOT NULL,
  `done` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `province` varchar(11) NOT NULL,
  `district` varchar(11) NOT NULL,
  `gender` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `fullname`, `faculty`, `degree`, `intake`, `sector`, `cell`, `village`, `phone`, `nid`, `done`, `post`, `email`, `province`, `district`, `gender`) VALUES
(2, 'karamage', '', 'A2', 2013, 'Nyamirambo', '', '', '', '', 'karambizi joshua', '', '', '', '', ''),
(3, 'kalisa', '', 'A2', 2013, '', '', '', '', '', 'kagabo', 'sec', '', 'kigali', 'kicukiro', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `intake` int(100) NOT NULL,
  `sector` varchar(100) NOT NULL,
  `cell` varchar(100) NOT NULL,
  `village` varchar(100) NOT NULL,
  `nid` varchar(100) NOT NULL,
  `done` varchar(100) NOT NULL,
  `district` varchar(11) NOT NULL,
  `province` varchar(11) NOT NULL,
  `gender` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fullname`, `phone`, `email`, `degree`, `faculty`, `intake`, `sector`, `cell`, `village`, `nid`, `done`, `district`, `province`, `gender`) VALUES
(1, 'mupenzi cedrick', '0780812252', 'mcstain1639@gmail.com', 'A0', 'information technology', 2019, 'Nyamirambo', 'mumena', 'akanyirazaninka', '1122334455667788', 'Mupenzi cedrick', '', '', ''),
(2, 'kaka', '', '', 'A2', '', 2013, 'Nyamirambo', '', '', '', 'Mupenzi cedrick', '', '', ''),
(3, 'djibril', '', '', 'A2', '', 2013, 'nyamirambo', 'mumena', 'kiberinka', '', 'sophie', 'nyarugenge', 'kigali', '');

-- --------------------------------------------------------

--
-- Table structure for table `cyivugiza`
--

CREATE TABLE `cyivugiza` (
  `id` int(100) NOT NULL,
  `village_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(250) NOT NULL,
  `nid` varchar(255) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `post` varchar(250) NOT NULL,
  `done` varchar(250) NOT NULL,
  `date_done` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cell` varchar(100) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `intake` int(10) NOT NULL,
  `sector` varchar(100) NOT NULL,
  `village` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `province` varchar(11) NOT NULL,
  `district` varchar(11) NOT NULL,
  `gender` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `nid`, `fullname`, `username`, `password`, `phone`, `email`, `photo`, `post`, `done`, `date_done`, `cell`, `faculty`, `intake`, `sector`, `village`, `degree`, `province`, `district`, `gender`) VALUES
(1, '1200180117446085', 'Mupenzi cedrick', 'pextech', 'Mc1639_1639', '0780812252', 'mcstain1639@gmail.com', '', '2', 'mupenzi cedrick', '2020-07-12 17:36:39', 'Mumena', 'computer science', 2019, '', '', 'A2', 'super', '', ''),
(2, '1122334455667788', 'karambizi joshua', 'josh', 'josh', '0784465373', '', '', '1', 'Mupenzi cedrick', '2020-07-14 15:16:40', 'gitega', 'computer science', 2019, 'rwezamenyo', 'mumena', 'A0', 'kigali', 'nyarugenge', ''),
(3, '1200220202022232', 'sophie', 'sophie', 'sophie', '078756223', 'sophie@gmail.com', '', '2', 'Mupenzi cedrick', '2020-07-13 13:02:31', 'mumena', 'mathematics', 2020, 'nyamirambo', 'akanyirazaninka', 'A2', 'kigali', 'nyarugenge', 'female'),
(4, '', 'keppi', 'keppi', 'keppi', '0780812252', '', '', '1', 'Mupenzi cedrick', '2020-07-11 14:38:21', '', '', 2013, 'nyarugenge', '', 'A2', '', '', ''),
(5, '', 'shizzy', 'shizzy', 'shizzy', '077282822', '', '', '1', 'Mupenzi cedrick', '2020-07-14 20:39:38', '', '', 2013, 'nyamirambo', '', 'A2', 'kigali', 'nyarugenge', 'male'),
(6, '1122334455667788', 'fab', 'fab', 'fab', '1234567890', 'fab@gmail.com', '', '3', 'Mupenzi cedrick', '2020-07-11 15:32:53', 'mwendo', 'computer science', 2019, 'kigali', 'akumunigo', 'A0', 'kigali', 'nyarugenge', 'male'),
(9, '1122334455667788', 'kagabo', 'kagabo', 'kagabo', '1234567890', 'kagabo@gmail.com', '', '2', 'Mupenzi cedrick', '2020-07-13 13:43:14', 'muhima', 'history', 2013, 'muhima', 'muhima', 'A2', 'north', 'kicukiro', 'male'),
(18, '', 'nana', 'nana', 'nana', '', '', '', '2', 'Mupenzi cedrick', '2020-07-14 20:26:00', '', '', 2013, 'kicukiro', '', 'A2', 'kigali', 'kicukiro', ''),
(19, '', 'kalisa', 'kalisa', 'kalisa', '', '', '', '1', 'kagabo', '2020-07-14 20:33:10', '', '', 2013, 'kicukiro', '', 'A2', '', 'kicukiro', ''),
(20, '', 'cyiza', 'cyiza', 'cyiza', '', '', '', '1', 'Mupenzi cedrick', '2020-07-17 12:55:39', '', '', 2013, 'kimisagara', '', 'A2', 'kigali', 'nyarugenge', ''),
(21, '', 'luck', 'luck', 'luck', '', '', '', '2', 'Mupenzi cedrick', '2020-07-17 18:41:54', '', '', 2013, 'Rubavu', '', 'A2', 'West', 'Rubavu', ''),
(22, '', 'vava', 'vava', 'vava', '', '', '', '2', 'Mupenzi cedrick', '2020-07-17 18:46:04', '', '', 2013, 'Ruvune', '', 'A2', 'North', 'Gicumbi', ''),
(23, '', 'happy', 'happy', 'happy', '', '', '', '2', 'Mupenzi cedrick', '2020-07-17 18:47:17', '', '', 2013, 'Murama', '', 'A2', 'East', 'Kayonza', ''),
(24, '', 'montana', 'montana', 'montana', '', '', '', '1', 'happy', '2020-07-17 18:50:18', '', '', 2013, 'Mukarange', '', 'A2', 'East', 'Kayonza', ''),
(25, '', 'amina', 'amina', 'amina', '', '', '', '1', 'vava', '2020-07-17 18:52:08', '', '', 2013, 'Byumba', '', 'A2', 'North', 'Gicumbi', ''),
(26, '', 'bro', 'bro', 'bro', '', '', '', '1', 'luck', '2020-07-17 18:55:19', '', '', 2013, 'Rubavu', '', 'A2', 'West', 'Rubavu', '');

-- --------------------------------------------------------

--
-- Table structure for table `gasharu`
--

CREATE TABLE `gasharu` (
  `id` int(100) NOT NULL,
  `village_name` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 0, 'has logged out the system at ', '2019-10-10 08:41:45'),
(2, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(3, 0, 'has logged out the system at ', '2019-10-10 08:43:35'),
(4, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(5, 0, 'has logged out the system at ', '2019-10-10 17:40:00'),
(6, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(7, 0, 'has logged out the system at ', '2019-10-10 17:42:14'),
(8, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(9, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(10, 0, 'has logged out the system at ', '2019-10-11 09:10:43'),
(11, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(12, 0, 'has logged out the system at ', '2019-10-11 09:11:38'),
(13, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(14, 0, 'has logged out the system at ', '2019-10-11 09:12:14'),
(15, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(16, 0, 'has logged out the system at ', '2019-10-11 09:56:01'),
(17, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(18, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(19, 0, 'has logged out the system at ', '2019-10-12 04:28:42'),
(20, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(21, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(22, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(23, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(24, 0, 'has logged out the system at ', '2019-10-13 00:29:46'),
(25, 0, 'has logged out the system at ', '2019-10-13 00:30:01'),
(26, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(27, 0, 'has logged out the system at ', '2019-10-13 00:30:49'),
(28, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(29, 0, 'has logged out the system at ', '2019-10-13 00:31:38'),
(30, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(31, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(32, 0, 'has logged out the system at ', '2019-10-13 00:36:09'),
(33, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(34, 0, 'has logged out the system at ', '2019-10-13 00:36:30'),
(35, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(36, 0, 'has logged out the system at ', '2019-10-13 02:19:09'),
(37, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(38, 0, 'has logged out the system at ', '2019-10-13 06:46:39'),
(39, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(40, 0, 'has logged out the system at ', '2019-10-13 15:23:46'),
(41, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(42, 0, 'has logged out the system at ', '2019-10-13 15:55:05'),
(43, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(44, 0, 'has logged out the system at ', '2019-10-13 15:55:37'),
(45, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(46, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(47, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(48, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(49, 0, 'has logged out the system at ', '2019-10-14 13:31:30'),
(50, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(51, 0, 'has logged out the system at ', '2019-10-14 14:30:10'),
(52, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(53, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(54, 0, 'has logged out the system at ', '2019-10-16 00:43:16'),
(55, 0, 'has logged out the system at ', '2019-10-16 01:58:44'),
(56, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(57, 0, 'has logged out the system at ', '2019-10-16 02:00:01'),
(58, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(59, 0, 'has logged out the system at ', '2019-10-16 23:27:43'),
(60, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(61, 0, 'has logged out the system at ', '2019-10-17 02:04:32'),
(62, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(63, 0, 'has logged out the system at ', '2019-10-17 02:05:53'),
(64, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(65, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(66, 0, 'has logged out the system at ', '2019-10-20 01:21:17'),
(67, 0, 'has logged out the system at ', '2019-10-20 01:21:59'),
(68, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(69, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(70, 0, 'has logged out the system at ', '2019-10-22 01:17:58'),
(71, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(72, 0, 'has logged out the system at ', '2019-10-23 05:58:25'),
(73, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(74, 0, 'has logged out the system at ', '2019-10-23 05:58:37'),
(75, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(76, 0, 'has logged out the system at ', '2019-10-23 06:07:37'),
(77, 0, 'has logged out the system at ', '2019-10-24 02:30:12'),
(78, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(79, 0, 'has logged out the system at ', '2019-10-24 04:49:43'),
(80, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(81, 0, 'has logged out the system at ', '2019-10-24 14:34:27'),
(82, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(83, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(84, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(85, 0, 'has logged out the system at ', '2019-10-24 22:32:41'),
(86, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(87, 0, 'has logged out the system at ', '2019-10-25 00:23:33'),
(88, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(89, 0, 'has logged out the system at ', '2019-10-25 01:28:59'),
(90, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(91, 0, 'has logged out the system at ', '2019-10-25 01:30:16'),
(92, 0, 'has logged out the system at ', '2019-10-25 01:30:18'),
(93, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(94, 0, 'has logged out the system at ', '2019-10-25 01:32:18'),
(95, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(96, 0, 'has logged out the system at ', '2019-10-25 01:38:38'),
(97, 0, 'has logged out the system at ', '2019-10-28 18:23:08'),
(98, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(99, 0, 'has logged out the system at ', '2019-10-29 05:37:39'),
(100, 0, 'has logged out the system at ', '2019-10-29 05:38:06'),
(101, 0, 'has logged out the system at ', '2019-10-29 05:40:24'),
(102, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(103, 0, 'has logged out the system at ', '2019-10-29 05:50:16'),
(104, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(105, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(106, 0, 'has logged out the system at ', '2019-11-23 06:44:20'),
(107, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(108, 0, 'has logged out the system at ', '2019-12-06 00:13:04'),
(109, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(110, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(111, 0, 'has logged out the system at ', '2019-12-06 22:56:07'),
(112, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(113, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(114, 0, 'has logged out the system at ', '2019-12-12 15:23:50'),
(115, 0, 'has logged out the system at ', '2019-12-12 15:24:20'),
(116, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(117, 0, 'has logged out the system at ', '2019-12-12 19:11:48'),
(118, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(119, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(120, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(121, 0, 'has logged out the system at ', '2019-12-16 18:53:25'),
(122, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(123, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(124, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(125, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(126, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(127, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(128, 0, 'has logged out the system at ', '2019-12-20 04:42:43'),
(129, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(130, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(131, 0, 'has logged out the system at ', '2019-12-20 09:02:27'),
(132, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(133, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(134, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(135, 0, 'has logged out the system at ', '2019-12-22 19:19:30'),
(136, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(137, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(138, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(139, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(140, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(141, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(142, 0, 'has logged out the system at ', '2020-01-11 19:23:46'),
(143, 0, 'has logged out the system at ', '2020-01-11 19:23:47'),
(144, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(145, 0, 'has logged out the system at ', '2020-01-11 19:32:58'),
(146, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(147, 0, 'has logged out the system at ', '2020-01-14 18:05:47'),
(148, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(149, 0, 'has logged out the system at ', '2020-01-20 17:55:57'),
(150, 0, 'has logged out the system at ', '2020-01-20 17:55:57'),
(151, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(152, 0, 'has logged out the system at ', '2020-01-21 08:09:04'),
(153, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(154, 0, 'has logged out the system at ', '2020-01-29 17:44:18'),
(155, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(156, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(157, 0, 'has logged out the system at ', '2020-01-31 20:20:02'),
(158, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(159, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(160, 0, 'has logged out the system at ', '2020-02-08 10:33:06'),
(161, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(162, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(163, 0, 'has logged out the system at ', '2020-02-08 20:58:38'),
(164, 0, 'has logged out the system at ', '2020-02-08 20:59:05'),
(165, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(166, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(167, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(168, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(169, 0, 'has logged out the system at ', '2017-01-12 14:53:30'),
(170, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(171, 0, 'has logged out the system at ', '2017-01-12 14:55:41'),
(172, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(173, 0, 'has logged out the system at ', '2017-01-12 14:59:29'),
(174, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(175, 0, 'has logged out the system at ', '2017-01-12 15:00:02'),
(176, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(177, 0, 'has logged out the system at ', '2017-01-12 15:01:32'),
(178, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(179, 0, 'has logged out the system at ', '2017-01-12 15:02:13'),
(180, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(181, 0, 'has logged out the system at ', '2017-01-12 15:06:35'),
(182, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(183, 0, 'has logged out the system at ', '2017-01-12 15:29:06'),
(184, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(185, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(186, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(187, 0, 'has logged out the system at ', '2017-01-12 17:53:01'),
(188, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(189, 0, 'has logged out the system at ', '2017-01-12 19:22:24'),
(190, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(191, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(192, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(193, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(194, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(195, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(196, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(197, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(198, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(199, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(200, 0, 'has logged out the system at ', '2020-02-27 03:55:05'),
(201, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(202, 0, 'has logged out the system at ', '2020-02-27 05:45:04'),
(203, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(204, 0, 'has logged out the system at ', '2020-02-27 17:27:27'),
(205, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(206, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(207, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(208, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(209, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(210, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(211, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(212, 0, 'has logged out the system at ', '2020-03-29 05:10:29'),
(213, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(214, 0, 'has logged out the system at ', '2020-04-01 22:49:23'),
(215, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(216, 0, 'has logged out the system at ', '2020-04-02 04:14:17'),
(217, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(218, 0, 'has logged out the system at ', '2020-04-06 04:03:16'),
(219, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(220, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(221, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(222, 0, 'has logged out the system at ', '2020-04-27 06:18:28'),
(223, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(224, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(225, 0, 'has logged out the system at ', '2020-05-03 21:41:30'),
(226, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(227, 0, 'has logged out the system at ', '2020-05-05 17:46:14'),
(228, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(229, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(230, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(231, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(232, 0, 'has logged out the system at ', '2020-05-19 15:51:36'),
(233, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(234, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(235, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(236, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(237, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(238, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(239, 0, 'has logged out the system at ', '2020-05-31 17:16:00'),
(240, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(241, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(242, 0, 'has logged out the system at ', '2020-05-31 18:54:57'),
(243, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(244, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(245, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(246, 0, 'has logged out the system at ', '2020-06-01 01:32:31'),
(247, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(248, 0, 'has logged out the system at ', '2020-06-01 01:33:33'),
(249, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(250, 0, 'has logged out the system at ', '2020-06-01 01:53:29'),
(251, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(252, 0, 'has logged out the system at ', '2020-06-01 02:09:04'),
(253, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(254, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(255, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(256, 0, 'has logged out the system at ', '2020-06-03 15:37:11'),
(257, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(258, 0, 'has logged out the system at ', '2020-06-03 15:41:25'),
(259, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(260, 0, 'has logged out the system at ', '2020-06-03 15:41:58'),
(261, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(262, 0, 'has logged out the system at ', '2020-06-03 15:43:26'),
(263, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(264, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(265, 0, 'has logged out the system at ', '2020-06-03 16:07:22'),
(266, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(267, 0, 'has logged out the system at ', '2020-06-03 16:24:02'),
(268, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(269, 0, 'has logged out the system at ', '2020-06-03 16:42:23'),
(270, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(271, 0, 'has logged out the system at ', '2020-06-03 17:19:53'),
(272, 0, 'has logged out the system at ', '2020-06-03 17:19:58'),
(273, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(274, 0, 'has logged out the system at ', '2020-06-03 17:50:15'),
(275, 0, 'has logged out the system at ', '2020-06-03 17:50:26'),
(276, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(277, 0, 'has logged out the system at ', '2020-06-03 17:50:52'),
(278, 0, 'has logged out the system at ', '2020-06-03 17:51:12'),
(279, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(280, 0, 'has logged out the system at ', '2020-06-03 17:52:04'),
(281, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(282, 0, 'has logged out the system at ', '2020-06-03 17:56:25'),
(283, 0, 'has logged out the system at ', '2020-06-03 17:57:33'),
(284, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(285, 0, 'has logged out the system at ', '2020-06-03 18:02:40'),
(286, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(287, 0, 'has logged out the system at ', '2020-06-03 18:12:33'),
(288, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(289, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(290, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(291, 0, 'has logged out the system at ', '2020-06-03 18:14:43'),
(292, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(293, 0, 'has logged out the system at ', '2020-06-03 19:10:19'),
(294, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(295, 0, 'has logged out the system at ', '2020-06-03 19:17:40'),
(296, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(297, 0, 'has logged out the system at ', '2020-06-03 19:28:18'),
(298, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(299, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(300, 0, 'has logged out the system at ', '2020-06-04 01:09:39'),
(301, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(302, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(303, 0, 'has logged out the system at ', '2020-06-04 01:30:46'),
(304, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(305, 0, 'has logged out the system at ', '2020-06-04 01:31:46'),
(306, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(307, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(308, 0, 'has logged out the system at ', '2020-06-04 15:42:02'),
(309, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(310, 0, 'has logged out the system at ', '2020-06-04 15:58:35'),
(311, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(312, 0, 'has logged out the system at ', '2020-06-04 16:49:50'),
(313, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(314, 0, 'has logged out the system at ', '2020-06-04 17:13:25'),
(315, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(316, 0, 'has logged out the system at ', '2020-06-04 18:05:55'),
(317, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(318, 0, 'has logged out the system at ', '2020-06-04 18:48:03'),
(319, 0, 'has logged out the system at ', '2020-06-04 19:28:04'),
(320, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(321, 0, 'has logged out the system at ', '2020-06-04 19:28:29'),
(322, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(323, 0, 'has logged out the system at ', '2020-06-04 19:30:17'),
(324, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(325, 0, 'has logged out the system at ', '2020-06-04 19:31:48'),
(326, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(327, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(328, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(329, 0, 'has logged out the system at ', '2020-06-05 17:25:39'),
(330, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(331, 0, 'has logged out the system at ', '2020-06-05 18:25:20'),
(332, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(333, 0, 'has logged out the system at ', '2020-06-05 18:33:11'),
(334, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(335, 0, 'has logged out the system at ', '2020-06-05 18:34:14'),
(336, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(337, 0, 'has logged out the system at ', '2020-06-05 18:35:16'),
(338, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(339, 0, 'has logged out the system at ', '2020-06-05 18:39:41'),
(340, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(341, 0, 'has logged out the system at ', '2020-06-05 18:40:21'),
(342, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(343, 0, 'has logged out the system at ', '2020-06-05 18:42:21'),
(344, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(345, 0, 'has logged out the system at ', '2020-06-05 18:42:37'),
(346, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(347, 0, 'has logged out the system at ', '2020-06-05 18:51:40'),
(348, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(349, 0, 'has logged out the system at ', '2020-06-05 18:57:19'),
(350, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(351, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(352, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(353, 0, 'has logged out the system at ', '2020-06-05 19:05:32'),
(354, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(355, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(356, 0, 'has logged out the system at ', '2020-06-06 01:08:59'),
(357, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(358, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(359, 0, 'has logged out the system at ', '2020-06-07 03:25:44'),
(360, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(361, 0, 'has logged out the system at ', '2020-06-07 03:29:20'),
(362, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(363, 0, 'has logged out the system at ', '2020-06-07 03:37:21'),
(364, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(365, 0, 'has logged out the system at ', '2020-06-07 03:37:46'),
(366, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(367, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(368, 0, 'has logged out the system at ', '2020-06-08 20:13:05'),
(369, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(370, 0, 'has logged out the system at ', '2020-06-08 20:13:18'),
(371, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(372, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(373, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(374, 0, 'has logged out the system at ', '2020-06-08 23:54:58'),
(375, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(376, 0, 'has logged out the system at ', '2020-06-08 23:57:53'),
(377, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(378, 0, 'has logged out the system at ', '2020-06-09 00:18:49'),
(379, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(380, 0, 'has logged out the system at ', '2020-06-09 00:52:39'),
(381, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(382, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(383, 0, 'has logged out the system at ', '2020-06-12 21:45:42'),
(384, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(385, 0, 'has logged out the system at ', '2020-06-12 21:50:03'),
(386, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(387, 0, 'has logged out the system at ', '2020-06-12 21:50:17'),
(388, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(389, 0, 'has logged out the system at ', '2020-06-12 21:51:04'),
(390, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(391, 0, 'has logged out the system at ', '2020-06-12 21:51:11'),
(392, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(393, 0, 'has logged out the system at ', '2020-06-12 21:52:26'),
(394, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(395, 0, 'has logged out the system at ', '2020-06-12 21:54:45'),
(396, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(397, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(398, 0, 'has logged out the system at ', '2020-06-12 22:14:59'),
(399, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(400, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(401, 0, 'has logged out the system at ', '2020-06-14 03:50:41'),
(402, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(403, 0, 'has logged out the system at ', '2020-06-14 03:50:52'),
(404, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(405, 0, 'has logged out the system at ', '2020-06-14 03:52:18'),
(406, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(407, 0, 'has logged out the system at ', '2020-06-14 03:52:54'),
(408, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(409, 0, 'has logged out the system at ', '2020-06-14 03:53:15'),
(410, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(411, 0, 'has logged out the system at ', '2020-06-14 03:57:35'),
(412, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(413, 0, 'has logged out the system at ', '2020-06-14 03:58:36'),
(414, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(415, 0, 'has logged out the system at ', '2020-06-14 04:12:48'),
(416, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(417, 0, 'has logged out the system at ', '2020-06-14 04:15:12'),
(418, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(419, 0, 'has logged out the system at ', '2020-06-14 04:15:54'),
(420, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(421, 0, 'has logged out the system at ', '2020-06-14 04:20:43'),
(422, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(423, 0, 'has logged out the system at ', '2020-06-14 04:21:28'),
(424, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(425, 0, 'has logged out the system at ', '2020-06-14 04:21:35'),
(426, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(427, 0, 'has logged out the system at ', '2020-06-14 04:22:08'),
(428, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(429, 0, 'has logged out the system at ', '2020-06-14 04:22:36'),
(430, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(431, 0, 'has logged out the system at ', '2020-06-14 04:23:54'),
(432, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(433, 0, 'has logged out the system at ', '2020-06-14 04:24:19'),
(434, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(435, 0, 'has logged out the system at ', '2020-06-14 04:25:34'),
(436, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(437, 0, 'has logged out the system at ', '2020-06-14 04:28:19'),
(438, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(439, 0, 'has logged out the system at ', '2020-06-14 04:29:06'),
(440, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(441, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(442, 0, 'has logged out the system at ', '2020-06-14 15:39:40'),
(443, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(444, 0, 'has logged out the system at ', '2020-06-14 15:41:05'),
(445, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(446, 0, 'has logged out the system at ', '2020-06-14 16:30:17'),
(447, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(448, 0, 'has logged out the system at ', '2020-06-14 16:56:36'),
(449, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(450, 0, 'has logged out the system at ', '2020-06-14 16:57:15'),
(451, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(452, 0, 'has logged out the system at ', '2020-06-14 17:47:31'),
(453, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(454, 0, 'has logged out the system at ', '2020-06-14 17:47:39'),
(455, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(456, 0, 'has logged out the system at ', '2020-06-14 17:47:50'),
(457, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(458, 0, 'has logged out the system at ', '2020-06-14 17:50:13'),
(459, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(460, 0, 'has logged out the system at ', '2020-06-14 17:52:46'),
(461, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(462, 0, 'has logged out the system at ', '2020-06-14 17:53:50'),
(463, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(464, 0, 'has logged out the system at ', '2020-06-14 18:07:16'),
(465, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(466, 0, 'has logged out the system at ', '2020-06-14 18:11:58'),
(467, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(468, 0, 'has logged out the system at ', '2020-06-14 19:06:10'),
(469, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(470, 0, 'has logged out the system at ', '2020-06-14 19:17:27'),
(471, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(472, 0, 'has logged out the system at ', '2020-06-14 19:17:46'),
(473, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(474, 0, 'has logged out the system at ', '2020-06-14 19:19:27'),
(475, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(476, 0, 'has logged out the system at ', '2020-06-14 19:24:04'),
(477, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(478, 0, 'has logged out the system at ', '2020-06-14 19:36:38'),
(479, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(480, 0, 'has logged out the system at ', '2020-06-14 19:36:59'),
(481, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(482, 0, 'has logged out the system at ', '2020-06-14 19:43:18'),
(483, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(484, 0, 'has logged out the system at ', '2020-06-14 19:44:17'),
(485, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(486, 0, 'has logged out the system at ', '2020-06-14 19:47:02'),
(487, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(488, 0, 'has logged out the system at ', '2020-06-14 20:06:53'),
(489, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(490, 0, 'has logged out the system at ', '2020-06-14 20:08:13'),
(491, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(492, 0, 'has logged out the system at ', '2020-06-14 20:25:40'),
(493, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(494, 0, 'has logged out the system at ', '2020-06-14 20:27:34'),
(495, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(496, 0, 'has logged out the system at ', '2020-06-14 20:28:13'),
(497, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(498, 0, 'has logged out the system at ', '2020-06-15 19:02:44'),
(499, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(500, 0, 'has logged out the system at ', '2020-06-15 19:21:19'),
(501, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(502, 0, 'has logged out the system at ', '2020-06-15 19:35:55'),
(503, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(504, 0, 'has logged out the system at ', '2020-06-15 19:36:41'),
(505, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(506, 0, 'has logged out the system at ', '2020-06-15 19:40:08'),
(507, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(508, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(509, 0, 'has logged out the system at ', '2020-06-16 18:03:29'),
(510, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(511, 0, 'has logged out the system at ', '2020-06-16 18:41:09'),
(512, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(513, 0, 'has logged out the system at ', '2020-06-16 22:07:43'),
(514, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(515, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(516, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(517, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(518, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(519, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(520, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(521, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(522, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(523, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(524, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(525, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(526, 0, 'has logged out the system at ', '2020-07-06 15:37:05'),
(527, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(528, 0, 'has logged out the system at ', '2020-07-06 15:51:04'),
(529, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(530, 0, 'has logged out the system at ', '2020-07-06 15:57:26'),
(531, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(532, 0, 'has logged out the system at ', '2020-07-06 15:58:05'),
(533, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(534, 0, 'has logged out the system at ', '2020-07-06 16:18:32'),
(535, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(536, 0, 'has logged out the system at ', '2020-07-06 16:18:38'),
(537, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(538, 0, 'has logged out the system at ', '2020-07-06 19:41:18'),
(539, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(540, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(541, 0, 'has logged out the system at ', '2020-07-07 04:15:56'),
(542, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(543, 0, 'has logged out the system at ', '2020-07-07 04:32:26'),
(544, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(545, 0, 'has logged out the system at ', '2020-07-07 04:34:14'),
(546, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(547, 0, 'has logged out the system at ', '2020-07-07 16:11:16'),
(548, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(549, 0, 'has logged out the system at ', '2020-07-08 03:37:52'),
(550, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(551, 0, 'has logged out the system at ', '2020-07-09 02:25:52'),
(552, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(553, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(554, 0, 'has logged out the system at ', '2020-07-10 02:04:57'),
(555, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(556, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(557, 0, 'has logged out the system at ', '2020-07-10 14:43:16'),
(558, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(559, 0, 'has logged out the system at ', '2020-07-10 14:44:10'),
(560, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(561, 0, 'has logged out the system at ', '2020-07-10 16:09:54'),
(562, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(563, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(564, 0, 'has logged out the system at ', '2020-07-11 01:31:19'),
(565, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(566, 0, 'has logged out the system at ', '2020-07-11 03:26:45'),
(567, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(568, 0, 'has logged out the system at ', '2020-07-11 03:35:02'),
(569, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(570, 0, 'has logged out the system at ', '2020-07-11 03:43:06'),
(571, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(572, 0, 'has logged out the system at ', '2020-07-11 03:49:58'),
(573, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(574, 0, 'has logged out the system at ', '2020-07-11 03:50:14'),
(575, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(576, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(577, 0, 'has logged out the system at ', '2020-07-11 21:20:16'),
(578, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(579, 0, 'has logged out the system at ', '2020-07-11 21:28:05'),
(580, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(581, 0, 'has logged out the system at ', '2020-07-11 21:35:32'),
(582, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(583, 0, 'has logged out the system at ', '2020-07-11 21:48:18'),
(584, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(585, 0, 'has logged out the system at ', '2020-07-11 22:14:34'),
(586, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(587, 0, 'has logged out the system at ', '2020-07-11 22:19:07'),
(588, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(589, 0, 'has logged out the system at ', '2020-07-11 22:19:22'),
(590, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(591, 0, 'has logged out the system at ', '2020-07-11 22:26:54'),
(592, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(593, 0, 'has logged out the system at ', '2020-07-11 22:32:29'),
(594, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(595, 0, 'has logged out the system at ', '2020-07-11 22:34:23'),
(596, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(597, 0, 'has logged out the system at ', '2020-07-11 22:34:58'),
(598, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(599, 0, 'has logged out the system at ', '2020-07-11 22:36:38'),
(600, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(601, 0, 'has logged out the system at ', '2020-07-11 23:26:30'),
(602, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(603, 0, 'has logged out the system at ', '2020-07-11 23:32:58'),
(604, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(605, 0, 'has logged out the system at ', '2020-07-11 23:33:50'),
(606, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(607, 0, 'has logged out the system at ', '2020-07-11 23:34:45'),
(608, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(609, 0, 'has logged out the system at ', '2020-07-11 23:35:29'),
(610, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(611, 0, 'has logged out the system at ', '2020-07-11 23:35:43'),
(612, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(613, 0, 'has logged out the system at ', '2020-07-12 00:12:47'),
(614, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(615, 0, 'has logged out the system at ', '2020-07-12 00:13:09'),
(616, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(617, 0, 'has logged out the system at ', '2020-07-12 00:19:24'),
(618, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(619, 0, 'has logged out the system at ', '2020-07-12 00:21:08'),
(620, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(621, 0, 'has logged out the system at ', '2020-07-12 00:21:48'),
(622, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(623, 0, 'has logged out the system at ', '2020-07-12 00:22:04'),
(624, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(625, 0, 'has logged out the system at ', '2020-07-12 00:22:53'),
(626, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(627, 0, 'has logged out the system at ', '2020-07-12 00:32:45'),
(628, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(629, 0, 'has logged out the system at ', '2020-07-12 00:33:18'),
(630, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(631, 0, 'has logged out the system at ', '2020-07-12 00:33:39'),
(632, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(633, 0, 'has logged out the system at ', '2020-07-12 00:34:33'),
(634, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(635, 0, 'has logged out the system at ', '2020-07-12 00:34:51'),
(636, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(637, 0, 'has logged out the system at ', '2020-07-12 00:47:15'),
(638, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(639, 0, 'has logged out the system at ', '2020-07-12 00:47:45'),
(640, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(641, 0, 'has logged out the system at ', '2020-07-12 00:50:34'),
(642, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(643, 0, 'has logged out the system at ', '2020-07-12 01:02:44'),
(644, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(645, 0, 'has logged out the system at ', '2020-07-12 01:15:40'),
(646, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(647, 0, 'has logged out the system at ', '2020-07-12 01:16:38'),
(648, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(649, 0, 'has logged out the system at ', '2020-07-12 01:17:13'),
(650, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(651, 0, 'has logged out the system at ', '2020-07-12 01:17:46'),
(652, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(653, 0, 'has logged out the system at ', '2020-07-12 01:40:58'),
(654, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(655, 0, 'has logged out the system at ', '2020-07-12 01:43:09'),
(656, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(657, 0, 'has logged out the system at ', '2020-07-12 01:48:05'),
(658, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(659, 0, 'has logged out the system at ', '2020-07-12 01:52:32'),
(660, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(661, 0, 'has logged out the system at ', '2020-07-12 01:59:33'),
(662, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(663, 0, 'has logged out the system at ', '2020-07-12 02:00:08'),
(664, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(665, 0, 'has logged out the system at ', '2020-07-12 02:00:40'),
(666, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(667, 0, 'has logged out the system at ', '2020-07-12 02:03:48'),
(668, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(669, 0, 'has logged out the system at ', '2020-07-12 02:04:21'),
(670, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(671, 0, 'has logged out the system at ', '2020-07-12 02:12:23'),
(672, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(673, 0, 'has logged out the system at ', '2020-07-12 03:07:47'),
(674, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(675, 0, 'has logged out the system at ', '2020-07-12 03:08:54'),
(676, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(677, 0, 'has logged out the system at ', '2020-07-12 03:13:45'),
(678, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(679, 0, 'has logged out the system at ', '2020-07-12 03:14:09'),
(680, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(681, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(682, 0, 'has logged out the system at ', '2020-07-12 19:52:19'),
(683, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(684, 0, 'has logged out the system at ', '2020-07-12 20:38:53'),
(685, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(686, 0, 'has logged out the system at ', '2020-07-12 20:41:13'),
(687, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(688, 0, 'has logged out the system at ', '2020-07-13 01:10:54'),
(689, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(690, 0, 'has logged out the system at ', '2020-07-13 01:23:56'),
(691, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(692, 0, 'has logged out the system at ', '2020-07-13 01:39:58'),
(693, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(694, 0, 'has logged out the system at ', '2020-07-13 01:45:12'),
(695, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(696, 0, 'has logged out the system at ', '2020-07-13 01:46:07'),
(697, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(698, 0, 'has logged out the system at ', '2020-07-13 01:48:41'),
(699, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(700, 0, 'has logged out the system at ', '2020-07-13 01:49:12'),
(701, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(702, 0, 'has logged out the system at ', '2020-07-13 01:51:12'),
(703, 0, 'has logged out the system at ', '2020-07-13 01:51:13'),
(704, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(705, 0, 'has logged out the system at ', '2020-07-13 02:00:15'),
(706, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(707, 0, 'has logged out the system at ', '2020-07-13 02:01:27'),
(708, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(709, 0, 'has logged out the system at ', '2020-07-13 02:02:09'),
(710, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(711, 0, 'has logged out the system at ', '2020-07-13 02:02:35'),
(712, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(713, 0, 'has logged out the system at ', '2020-07-13 02:04:13'),
(714, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(715, 0, 'has logged out the system at ', '2020-07-13 02:04:26'),
(716, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(717, 0, 'has logged out the system at ', '2020-07-13 02:06:45'),
(718, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(719, 0, 'has logged out the system at ', '2020-07-13 02:11:51'),
(720, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(721, 0, 'has logged out the system at ', '2020-07-13 02:12:21'),
(722, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(723, 0, 'has logged out the system at ', '2020-07-13 02:16:13'),
(724, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(725, 0, 'has logged out the system at ', '2020-07-13 02:16:52'),
(726, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(727, 0, 'has logged out the system at ', '2020-07-13 02:18:02'),
(728, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(729, 0, 'has logged out the system at ', '2020-07-13 02:18:59'),
(730, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(731, 0, 'has logged out the system at ', '2020-07-13 02:19:36'),
(732, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(733, 0, 'has logged out the system at ', '2020-07-13 02:19:47'),
(734, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(735, 0, 'has logged out the system at ', '2020-07-13 02:21:12'),
(736, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(737, 0, 'has logged out the system at ', '2020-07-13 02:21:23'),
(738, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(739, 0, 'has logged out the system at ', '2020-07-13 02:25:32'),
(740, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(741, 0, 'has logged out the system at ', '2020-07-13 02:25:43'),
(742, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(743, 0, 'has logged out the system at ', '2020-07-13 02:39:11'),
(744, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(745, 0, 'has logged out the system at ', '2020-07-13 02:39:54'),
(746, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(747, 0, 'has logged out the system at ', '2020-07-13 02:40:52'),
(748, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(749, 0, 'has logged out the system at ', '2020-07-13 02:53:50'),
(750, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(751, 0, 'has logged out the system at ', '2020-07-13 02:54:07'),
(752, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(753, 0, 'has logged out the system at ', '2020-07-13 03:12:22'),
(754, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(755, 0, 'has logged out the system at ', '2020-07-13 03:13:28'),
(756, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(757, 0, 'has logged out the system at ', '2020-07-13 03:22:52'),
(758, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(759, 0, 'has logged out the system at ', '2020-07-13 03:26:42'),
(760, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(761, 0, 'has logged out the system at ', '2020-07-13 03:31:24'),
(762, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(763, 0, 'has logged out the system at ', '2020-07-13 03:33:30'),
(764, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(765, 0, 'has logged out the system at ', '2020-07-13 03:34:23'),
(766, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(767, 0, 'has logged out the system at ', '2020-07-13 03:35:41'),
(768, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(769, 0, 'has logged out the system at ', '2020-07-13 03:39:13'),
(770, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(771, 0, 'has logged out the system at ', '2020-07-13 03:43:41'),
(772, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(773, 0, 'has logged out the system at ', '2020-07-13 03:44:33'),
(774, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(775, 0, 'has logged out the system at ', '2020-07-13 03:46:06'),
(776, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(777, 0, 'has logged out the system at ', '2020-07-13 03:46:25'),
(778, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(779, 0, 'has logged out the system at ', '2020-07-13 03:51:19'),
(780, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(781, 0, 'has logged out the system at ', '2020-07-13 20:35:16'),
(782, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(783, 0, 'has logged out the system at ', '2020-07-13 20:37:46'),
(784, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(785, 0, 'has logged out the system at ', '2020-07-13 20:38:16'),
(786, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(787, 0, 'has logged out the system at ', '2020-07-13 20:59:55'),
(788, 0, 'has logged in the system at ', '0000-00-00 00:00:00');
INSERT INTO `history_log` (`log_id`, `user_id`, `action`, `date`) VALUES
(789, 0, 'has logged out the system at ', '2020-07-13 21:01:13'),
(790, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(791, 0, 'has logged out the system at ', '2020-07-13 21:03:17'),
(792, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(793, 0, 'has logged out the system at ', '2020-07-13 21:16:22'),
(794, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(795, 0, 'has logged out the system at ', '2020-07-13 21:16:36'),
(796, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(797, 0, 'has logged out the system at ', '2020-07-13 21:16:48'),
(798, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(799, 0, 'has logged out the system at ', '2020-07-13 21:20:25'),
(800, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(801, 0, 'has logged out the system at ', '2020-07-13 21:20:50'),
(802, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(803, 0, 'has logged out the system at ', '2020-07-13 21:21:12'),
(804, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(805, 0, 'has logged out the system at ', '2020-07-13 21:21:45'),
(806, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(807, 0, 'has logged out the system at ', '2020-07-13 21:22:40'),
(808, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(809, 0, 'has logged out the system at ', '2020-07-13 21:31:13'),
(810, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(811, 0, 'has logged out the system at ', '2020-07-13 21:31:34'),
(812, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(813, 0, 'has logged out the system at ', '2020-07-13 21:31:51'),
(814, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(815, 0, 'has logged out the system at ', '2020-07-13 21:33:38'),
(816, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(817, 0, 'has logged out the system at ', '2020-07-13 21:40:05'),
(818, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(819, 0, 'has logged out the system at ', '2020-07-13 21:40:41'),
(820, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(821, 0, 'has logged out the system at ', '2020-07-13 21:43:24'),
(822, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(823, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(824, 0, 'has logged out the system at ', '2020-07-14 00:46:44'),
(825, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(826, 0, 'has logged out the system at ', '2020-07-14 00:46:52'),
(827, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(828, 0, 'has logged out the system at ', '2020-07-14 00:57:52'),
(829, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(830, 0, 'has logged out the system at ', '2020-07-14 01:05:59'),
(831, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(832, 0, 'has logged out the system at ', '2020-07-14 01:56:22'),
(833, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(834, 0, 'has logged out the system at ', '2020-07-14 02:00:21'),
(835, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(836, 0, 'has logged out the system at ', '2020-07-14 02:00:49'),
(837, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(838, 0, 'has logged out the system at ', '2020-07-14 02:01:10'),
(839, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(840, 0, 'has logged out the system at ', '2020-07-14 02:03:50'),
(841, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(842, 0, 'has logged out the system at ', '2020-07-14 02:05:43'),
(843, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(844, 0, 'has logged out the system at ', '2020-07-14 02:07:00'),
(845, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(846, 0, 'has logged out the system at ', '2020-07-14 02:14:19'),
(847, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(848, 0, 'has logged out the system at ', '2020-07-14 02:16:13'),
(849, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(850, 0, 'has logged out the system at ', '2020-07-14 02:28:31'),
(851, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(852, 0, 'has logged out the system at ', '2020-07-14 03:11:37'),
(853, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(854, 0, 'has logged out the system at ', '2020-07-14 03:47:17'),
(855, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(856, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(857, 0, 'has logged out the system at ', '2020-07-14 21:03:02'),
(858, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(859, 0, 'has logged out the system at ', '2020-07-14 21:03:52'),
(860, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(861, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(862, 0, 'has logged out the system at ', '2020-07-14 22:51:11'),
(863, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(864, 0, 'has logged out the system at ', '2020-07-14 22:54:18'),
(865, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(866, 0, 'has logged out the system at ', '2020-07-14 22:56:40'),
(867, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(868, 0, 'has logged out the system at ', '2020-07-14 23:07:57'),
(869, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(870, 0, 'has logged out the system at ', '2020-07-14 23:14:59'),
(871, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(872, 0, 'has logged out the system at ', '2020-07-14 23:17:57'),
(873, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(874, 0, 'has logged out the system at ', '2020-07-15 02:20:24'),
(875, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(876, 0, 'has logged out the system at ', '2020-07-15 03:33:32'),
(877, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(878, 0, 'has logged out the system at ', '2020-07-15 03:39:08'),
(879, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(880, 0, 'has logged out the system at ', '2020-07-15 03:40:36'),
(881, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(882, 0, 'has logged out the system at ', '2020-07-15 03:41:21'),
(883, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(884, 0, 'has logged out the system at ', '2020-07-15 03:46:33'),
(885, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(886, 0, 'has logged out the system at ', '2020-07-15 03:48:08'),
(887, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(888, 0, 'has logged out the system at ', '2020-07-15 03:50:06'),
(889, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(890, 0, 'has logged out the system at ', '2020-07-15 03:50:48'),
(891, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(892, 0, 'has logged out the system at ', '2020-07-15 03:53:17'),
(893, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(894, 0, 'has logged out the system at ', '2020-07-15 03:53:58'),
(895, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(896, 0, 'has logged out the system at ', '2020-07-15 04:04:18'),
(897, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(898, 0, 'has logged out the system at ', '2020-07-15 04:04:27'),
(899, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(900, 0, 'has logged out the system at ', '2020-07-15 04:07:51'),
(901, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(902, 0, 'has logged out the system at ', '2020-07-15 04:09:22'),
(903, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(904, 0, 'has logged out the system at ', '2020-07-15 04:12:11'),
(905, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(906, 0, 'has logged out the system at ', '2020-07-15 04:13:02'),
(907, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(908, 0, 'has logged out the system at ', '2020-07-15 04:13:32'),
(909, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(910, 0, 'has logged out the system at ', '2020-07-15 04:18:30'),
(911, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(912, 0, 'has logged out the system at ', '2020-07-15 04:18:48'),
(913, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(914, 0, 'has logged out the system at ', '2020-07-15 04:23:48'),
(915, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(916, 0, 'has logged out the system at ', '2020-07-15 04:24:28'),
(917, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(918, 0, 'has logged out the system at ', '2020-07-15 04:26:04'),
(919, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(920, 0, 'has logged out the system at ', '2020-07-15 04:27:01'),
(921, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(922, 0, 'has logged out the system at ', '2020-07-15 04:35:09'),
(923, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(924, 0, 'has logged out the system at ', '2020-07-15 04:35:53'),
(925, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(926, 0, 'has logged out the system at ', '2020-07-15 04:36:02'),
(927, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(928, 0, 'has logged out the system at ', '2020-07-15 04:38:31'),
(929, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(930, 0, 'has logged out the system at ', '2020-07-15 04:40:25'),
(931, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(932, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(933, 0, 'has logged out the system at ', '2020-07-15 20:52:16'),
(934, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(935, 0, 'has logged out the system at ', '2020-07-15 20:53:23'),
(936, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(937, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(938, 0, 'has logged out the system at ', '2020-07-15 22:20:28'),
(939, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(940, 0, 'has logged out the system at ', '2020-07-16 00:36:22'),
(941, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(942, 0, 'has logged out the system at ', '2020-07-16 00:40:56'),
(943, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(944, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(945, 0, 'has logged out the system at ', '2020-07-16 22:26:34'),
(946, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(947, 0, 'has logged out the system at ', '2020-07-17 20:26:16'),
(948, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(949, 0, 'has logged out the system at ', '2020-07-17 20:27:22'),
(950, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(951, 0, 'has logged out the system at ', '2020-07-17 20:27:56'),
(952, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(953, 0, 'has logged out the system at ', '2020-07-17 20:28:02'),
(954, 0, 'has logged out the system at ', '2020-07-17 20:28:03'),
(955, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(956, 0, 'has logged out the system at ', '2020-07-17 20:48:24'),
(957, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(958, 0, 'has logged out the system at ', '2020-07-17 20:55:43'),
(959, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(960, 0, 'has logged out the system at ', '2020-07-17 20:56:40'),
(961, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(962, 0, 'has logged out the system at ', '2020-07-17 20:57:18'),
(963, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(964, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(965, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(966, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(967, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(968, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(969, 0, 'has logged out the system at ', '2020-07-17 22:22:35'),
(970, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(971, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(972, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(973, 0, 'has logged out the system at ', '2020-07-17 22:55:31'),
(974, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(975, 0, 'has logged out the system at ', '2020-07-17 22:56:16'),
(976, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(977, 0, 'has logged out the system at ', '2020-07-17 23:01:37'),
(978, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(979, 0, 'has logged out the system at ', '2020-07-18 02:33:37'),
(980, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(981, 0, 'has logged out the system at ', '2020-07-18 02:47:23'),
(982, 0, 'has logged out the system at ', '2020-07-18 02:47:23'),
(983, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(984, 0, 'has logged out the system at ', '2020-07-18 02:48:56'),
(985, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(986, 0, 'has logged out the system at ', '2020-07-18 02:50:22'),
(987, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(988, 0, 'has logged out the system at ', '2020-07-18 02:50:56'),
(989, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(990, 0, 'has logged out the system at ', '2020-07-18 02:52:17'),
(991, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(992, 0, 'has logged out the system at ', '2020-07-18 02:52:46'),
(993, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(994, 0, 'has logged out the system at ', '2020-07-18 02:54:01'),
(995, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(996, 0, 'has logged out the system at ', '2020-07-18 02:54:13'),
(997, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(998, 0, 'has logged out the system at ', '2020-07-18 02:55:27'),
(999, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1000, 0, 'has logged out the system at ', '2020-07-18 02:55:50'),
(1001, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1002, 0, 'has logged out the system at ', '2020-07-18 02:56:38'),
(1003, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1004, 0, 'has logged out the system at ', '2020-07-18 02:57:09'),
(1005, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1006, 0, 'has logged out the system at ', '2020-07-18 02:57:21'),
(1007, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1008, 0, 'has logged out the system at ', '2020-07-18 02:58:38'),
(1009, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1010, 0, 'has logged out the system at ', '2020-07-18 02:59:10'),
(1011, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1012, 0, 'has logged out the system at ', '2020-07-18 02:59:29'),
(1013, 0, 'has logged out the system at ', '2020-07-18 02:59:30'),
(1014, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1015, 0, 'has logged out the system at ', '2020-07-18 02:59:51'),
(1016, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1017, 0, 'has logged out the system at ', '2020-07-18 03:01:06'),
(1018, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1019, 0, 'has logged out the system at ', '2020-07-18 03:06:20'),
(1020, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1021, 0, 'has logged out the system at ', '2020-07-18 03:12:20'),
(1022, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1023, 0, 'has logged out the system at ', '2020-07-18 03:24:48'),
(1024, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1025, 0, 'has logged out the system at ', '2020-07-21 00:47:02'),
(1026, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1027, 0, 'has logged out the system at ', '2020-07-25 01:06:45'),
(1028, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1029, 0, 'has logged out the system at ', '2020-07-25 01:07:13'),
(1030, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1031, 0, 'has logged out the system at ', '2020-07-25 01:08:04'),
(1032, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1033, 0, 'has logged out the system at ', '2020-07-25 01:08:19'),
(1034, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1035, 0, 'has logged out the system at ', '2020-07-25 01:08:44'),
(1036, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1037, 0, 'has logged out the system at ', '2020-07-25 01:15:35'),
(1038, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1039, 0, 'has logged out the system at ', '2020-07-25 01:27:57'),
(1040, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1041, 0, 'has logged out the system at ', '2020-07-25 01:35:38'),
(1042, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1043, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1044, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1045, 0, 'has logged out the system at ', '2020-07-30 02:39:10'),
(1046, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1047, 0, 'has logged out the system at ', '2020-07-30 03:10:39'),
(1048, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1049, 0, 'has logged out the system at ', '2020-07-30 03:12:27'),
(1050, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1051, 0, 'has logged out the system at ', '2020-07-30 03:16:56'),
(1052, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1053, 0, 'has logged out the system at ', '2020-07-30 03:17:42'),
(1054, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1055, 0, 'has logged out the system at ', '2020-07-30 03:18:03'),
(1056, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1057, 0, 'has logged out the system at ', '2020-07-30 03:20:19'),
(1058, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1059, 0, 'has logged out the system at ', '2020-07-30 03:21:18'),
(1060, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1061, 0, 'has logged out the system at ', '2020-07-30 03:22:12'),
(1062, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1063, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1064, 0, 'has logged out the system at ', '2020-08-05 15:05:36'),
(1065, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1066, 0, 'has logged out the system at ', '2020-08-05 15:08:03'),
(1067, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1068, 0, 'has logged out the system at ', '2020-08-05 15:09:05'),
(1069, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1070, 0, 'has logged out the system at ', '2020-08-05 15:09:26'),
(1071, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1072, 0, 'has logged out the system at ', '2020-08-05 15:10:25'),
(1073, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1074, 0, 'has logged out the system at ', '2020-08-05 15:11:26'),
(1075, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1076, 0, 'has logged out the system at ', '2020-08-05 15:12:19'),
(1077, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1078, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1079, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1080, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1081, 0, 'has logged out the system at ', '2020-08-08 21:44:23'),
(1082, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1083, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1084, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1085, 0, 'has logged out the system at ', '2020-08-09 00:39:22'),
(1086, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1087, 0, 'has logged out the system at ', '2020-08-09 00:39:32'),
(1088, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1089, 0, 'has logged out the system at ', '2020-08-09 00:42:53'),
(1090, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1091, 0, 'has logged out the system at ', '2020-08-09 00:43:17'),
(1092, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1093, 0, 'has logged out the system at ', '2020-08-11 01:50:07'),
(1094, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1095, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1096, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1097, 0, 'has logged out the system at ', '2020-08-20 00:28:54'),
(1098, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1099, 0, 'has logged out the system at ', '2020-08-20 00:29:26'),
(1100, 0, 'has logged out the system at ', '2020-08-20 00:29:26'),
(1101, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1102, 0, 'has logged out the system at ', '2020-08-20 00:29:49'),
(1103, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1104, 0, 'has logged out the system at ', '2020-08-20 00:32:57'),
(1105, 0, 'has logged in the system at ', '0000-00-00 00:00:00'),
(1106, 0, 'has logged out the system at ', '2020-08-20 00:33:46'),
(1107, 0, 'has logged in the system at ', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mumena`
--

CREATE TABLE `mumena` (
  `id` int(100) NOT NULL,
  `village_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `profileimg`
--

CREATE TABLE `profileimg` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nid` varchar(100) NOT NULL,
  `fnm` varchar(100) NOT NULL,
  `mnm` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `intake` varchar(100) NOT NULL,
  `sector` varchar(100) NOT NULL,
  `cell` varchar(100) NOT NULL,
  `village` varchar(100) NOT NULL,
  `date` timestamp(2) NOT NULL DEFAULT current_timestamp(2),
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `province` varchar(11) NOT NULL,
  `district` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `phone`, `email`, `nid`, `fnm`, `mnm`, `degree`, `faculty`, `intake`, `sector`, `cell`, `village`, `date`, `name`, `gender`, `status`, `province`, `district`) VALUES
(4, '0780812252', 'mcstain1639@gmail.com', '120010817746085', 'rangira theogene', 'nyirasafari m solange', 'A2', 'computer science', '2016', 'Nyamirambo', 'mumena', 'akanyirazaninka', '2020-07-10 18:29:51.25', 'mupenzi cedrick', 'Male', 1, '', ''),
(9, '', '', '66', '', '', 'A2', '', '2013', 'Nyamirambo', '', '', '2020-07-10 19:12:56.56', '', 'Male', 2, '', ''),
(10, '0780812252', 'tintin@2001.com', '11200180354647', '', '', 'A0', '', '2013', 'Nyamirambo', '', '', '2020-07-10 18:29:20.04', 'tintin ', 'Male', 1, '', ''),
(11, '', '', '2', '', '', 'A2', '', '2013', 'Nyamirambo', '', '', '2020-07-10 19:13:07.40', 'ssssss', 'Male', 2, '', ''),
(12, '', '', '32', '', '', 'A2', '', '2013', 'Nyamirambo', '', '', '2020-07-10 19:26:01.95', '', 'Male', 2, '', ''),
(13, '', '', '77', '', '', 'A2', '', '2013', 'Nyamirambo', '', '', '2020-07-10 19:26:07.40', 'l', 'Male', 2, '', ''),
(14, '', '', '', '', '', 'A2', '', '2013', 'Nyamirambo', '', '', '2020-07-10 19:26:14.12', '', 'Male', 2, '', ''),
(16, '', '', '', '', '', 'A2', '', '2013', 'Nyamirambo', '', '', '2020-07-10 19:26:23.51', 'petero', 'Male', 1, '', ''),
(17, '0788566136', 'mignone@gmail.com', '1122334455667788', 'rangira theogene', 'nyirasafari m solange', 'secondary diploma', 'medecine', '2019', 'Nyamirambo', 'mumena', 'mumena', '2020-07-10 19:40:07.66', 'mignone  nadege umukundwa', 'Female', 2, '', ''),
(18, '', '', '', '', '', 'A2', '', '2013', 'Nyamirambo', '', '', '2020-07-10 19:38:35.12', 'kizito mihigo', 'Male', 2, '', ''),
(19, '', 'pazzo@gmail.com', '', '', '', 'A2', '', '2013', 'Nyamirambo', '', '', '2020-07-10 19:50:52.22', 'muryerye patrick', 'Male', 1, '', ''),
(20, '07889929292', 'niyonteze@gmail.com', '1122334455667788', '', '', 'A2', '', '2013', 'Nyamirambo', '', '', '2020-07-11 13:24:14.43', 'umutesi henriette', 'Female', 1, '', ''),
(21, '', '', '', '', '', 'A2', '', '2013', 'Nyamirambo', '', '', '2020-07-11 13:26:51.02', 'hhhhhhhhhhhhhhhh', 'Male', 2, '', ''),
(22, '', '', '', '', '', 'A2', '', '2013', 'Nyamirambo', '', '', '2020-07-11 13:26:55.75', 'sssssss', 'Male', 2, '', ''),
(23, '', '', '', '', '', 'A2', '', '2013', 'Nyamirambo', '', '', '2020-07-11 13:27:03.72', 'benimaan', 'Male', 2, '', ''),
(24, '', '', '', '', '', 'A2', '', '2013', 'Nyamirambo', '', '', '2020-07-11 14:14:30.06', 'fuck you', 'Male', 2, '', ''),
(25, '', '', '', '', '', 'A2', '', '2013', 'Kigali', 'norvege', 'norvege', '2020-07-11 17:02:19.95', 'fuck youu bitch', 'Male', 2, 'kigali', 'kigali'),
(26, '', '', '', '', '', 'A2', '', '2013', 'Nyamirambo', '', '', '2020-07-11 14:27:17.33', 'dada', 'Male', 2, '', ''),
(28, '', '', '', '', '', 'A2', '', '2013', 'Kanyinya', '', '', '2020-07-11 17:16:59.96', 'kanyinya', 'Male', 1, '', ''),
(29, '', '', '', '', '', 'A2', '', '2013', 'Kigali', '', '', '2020-07-11 18:04:50.02', 'kabira', 'Male', 1, '', ''),
(30, '', '', '', '', '', 'A2', '', '2013', 'Kigali', '', '', '2020-07-11 18:04:54.91', 'kigali', 'Male', 1, '', ''),
(31, '', '', '', '', '', 'A2', '', '2013', 'Gitega', '', '', '2020-07-12 12:37:44.78', 'jean don dieu', 'Male', 2, '', ''),
(32, '', 'kampili', '', '', '', 'A2', '', '2013', 'Gitega', '', '', '2020-07-12 19:27:33.21', 'kampiri benabera', 'Male', 2, 'kigali', 'nyarugenge'),
(33, '', '', '1122334455667799', '', '', 'A2', '', '2013', 'Gitega', '', '', '2020-07-12 19:31:50.77', 'faustin gasingwa', 'Male', 1, 'kigali', 'nyarugenge'),
(34, '', '', '1122334455667799', '', '', 'A2', '', '2013', 'nyamirambo', '', '', '2020-07-13 18:28:51.79', 'happy', 'Male', 2, 'kigali', 'nyarugenge'),
(35, '', '', '', '', '', 'A2', '', '2013', 'nyakabanda', 'nyakabanda II', 'kirwa', '2020-07-14 13:00:27.70', 'ghafar', 'Male', 2, 'kigali', 'nyarugenge'),
(36, '', '', '', '', '', 'A2', '', '2013', 'rwezamenyo', '', '', '2020-07-14 15:13:50.46', 'byiringiro benjamin', 'Male', 1, 'kigali', 'nyarugenge'),
(37, '', '', '', '', '', 'A2', '', '2013', 'kicukiro', '', '', '2020-07-14 19:39:38.98', 'kamanzi', 'Male', 2, 'kigali', 'kicukiro'),
(38, '', '', '', '', '', 'A2', '', '2013', 'nyamirambo', '', '', '2020-07-14 19:41:04.48', 'pierr oreste', 'Male', 2, 'kigali', 'nyarugenge'),
(39, '', '', '', '', '', 'A2', '', '2013', 'nyamirambo', '', '', '2020-07-15 12:52:45.63', 'teta', 'Male', 1, 'kigali', 'nyarugenge'),
(40, '', '', '', '', '', 'A2', '', '2013', 'kimisagara', 'kamuhoza', '', '2020-07-17 12:25:47.88', 'sostene', 'Male', 1, 'kigali', 'nyarugenge'),
(41, '', '', '', '', '', 'A2', '', '2013', 'Rubavu', 'Rukoko', 'Kitarimwa', '2020-07-17 18:35:14.35', 'jimmy', 'Male', 1, 'West', 'Rubavu'),
(42, '', '', '', '', '', 'A2', '', '2013', 'Byumba', 'Gisuna', 'Bereshi', '2020-07-17 18:35:38.40', 'gatete', 'Male', 1, 'North', 'Gicumbi'),
(43, '', '', '', '', '', 'A2', '', '2013', 'Mukarange', 'Mburabuturo', 'Bwingeyo', '2020-07-17 18:36:05.85', 'karera', 'Male', 1, 'East', 'Kayonza'),
(44, '', '', '', '', '', 'A2', '', '2013', 'Rubavu', 'Murambi', 'Bushengo', '2020-07-17 18:57:50.70', 'mastiko', 'Male', 1, 'West', 'Rubavu'),
(45, '', '', '', '', '', 'A2', '', '2013', 'Mukarange', 'Kayonza', 'Akabuga', '2020-07-17 18:58:22.51', 'kararisa', 'Male', 1, 'East', 'Kayonza'),
(46, '', '', '', '', '', 'A2', '', '2013', 'Rubavu', 'Gikombe', 'Bambiro', '2020-07-17 19:00:21.06', 'caguwa', 'Male', 1, 'West', 'Rubavu'),
(49, '', '', '', '', '', 'A2', '', '2013', 'Nyarugenge', 'Biryogo', 'Biryogo', '2020-07-29 18:30:58.72', 'kanyana', 'Male', 0, 'Kigali', 'Nyarugenge'),
(52, '', '', '', '', '', 'A2', '', '2013', 'Bwishyura', 'Burunga', 'Kabuga', '2020-07-29 18:56:52.50', 'karasira', 'Male', 0, 'West', 'Karongi'),
(53, '', '', '', '', '', 'A2', '', '2013', 'Gashora', 'Biryogo', 'Bidudu', '2020-07-29 18:57:46.42', 'lolio', 'Male', 0, 'East', 'Bugesera'),
(54, '', '', '', '', '', 'A2', '', '2013', 'Kigali', 'Nyabugogo', 'Gakoni', '2020-08-05 07:06:29.85', 'christian ndizeye', 'Male', 1, 'Kigali', 'Nyarugenge'),
(55, '0780498777', 'gisimba@gmail.com', '', 'gisimba', 'beatrice', 'A2', 'HEG', '2020', 'Rwezamenyo', 'Rwezamenyo I', 'Inkerakubanza', '2020-08-19 16:31:30.32', 'gisimba bertrand', 'Male', 1, 'Kigali', 'Nyarugenge');

-- --------------------------------------------------------

--
-- Table structure for table `rugarama`
--

CREATE TABLE `rugarama` (
  `id` int(100) NOT NULL,
  `village_name` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(250) NOT NULL,
  `company` varchar(250) NOT NULL,
  `taxes` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `tin` varchar(250) NOT NULL,
  `done` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `company`, `taxes`, `logo`, `location`, `phone`, `tin`, `done`) VALUES
(1, 'ITANGE ::', '', '', 'Rwanda', '0788566136', '', 'Mupenzi cedrick');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nid` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `intake` int(100) NOT NULL,
  `fnm` varchar(100) NOT NULL,
  `mnm` varchar(100) NOT NULL,
  `sector` varchar(100) NOT NULL,
  `cell` varchar(100) NOT NULL,
  `village` varchar(100) NOT NULL,
  `done` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` timestamp(2) NOT NULL DEFAULT current_timestamp(2) ON UPDATE current_timestamp(2),
  `gender` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `phone`, `email`, `nid`, `degree`, `faculty`, `intake`, `fnm`, `mnm`, `sector`, `cell`, `village`, `done`, `name`, `date`, `gender`, `district`, `province`) VALUES
(1, '0780812252', 'mcstain1639@gmail.com', '1200180117446085', 'A2', 'computer science', 2019, 'Mupenzi theogene', 'marie solange', 'Nyamirambo', 'mumena', 'akanyirazaninka', 'Mupenzi cedrick', 'mupenzi cedrick', '2020-06-15 11:13:21.23', '', '', ''),
(2, '0786447322', 'mupenzi@gmail.com', '1122334455667789', 'A2', '', 2020, 'Mupenzi theogene', 'nyirasafari marie solange', 'Nyamirambo', 'mumena', 'akanyirazaninka', 'karambizi joshua', 'mupenzi gislain', '2020-06-15 11:39:15.59', '', '', ''),
(3, '0787543383', 'umutesifalidah@gmail.com', '1122334455667788', 'A2', 'accounting', 2019, 'yusuf', 'hadjati', 'Nyamirambo', 'mumena', 'mumena', 'Mupenzi cedrick', 'umutesi falidah', '2020-07-06 07:45:48.50', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `village`
--

CREATE TABLE `village` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `cell_id` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `village`
--

INSERT INTO `village` (`id`, `name`, `cell_id`) VALUES
(1, 'Akarekare', '1'),
(2, 'Akanyana', '1'),
(3, 'mumena', '1'),
(4, 'Akanyirazaninka', '1'),
(5, 'Irembo', '1'),
(6, 'Kiberinka', '1'),
(7, 'Itaba', '1'),
(8, 'Rwampara', '1'),
(9, 'Akatabaro', '1'),
(10, 'Kagunga', '2'),
(11, 'Karukoro', '2'),
(12, 'Rwintare', '2'),
(13, 'Muhoza', '3'),
(14, 'Shema', '3'),
(15, 'Munini', '3'),
(16, 'Imanzi', '3'),
(17, 'Ingenzi', '3'),
(18, 'Intwali', '3'),
(19, 'Kalisimbi', '3'),
(20, 'Rugero', '3'),
(21, 'Mpano', '3'),
(22, 'Mahoro', '3'),
(23, 'Amizero', '3'),
(24, 'Muhabura', '3'),
(25, 'Gabiro', '3'),
(26, 'Runyinya', '4'),
(27, 'Rusisiro', '4'),
(28, 'Rugarama', '4'),
(29, 'Tetero', '4'),
(30, 'Rubona', '4'),
(31, 'Riba', '4'),
(32, 'Munanira', '4'),
(34, 'kiberinka (rugarama)', '4'),
(35, 'Gatare', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `cells`
--
ALTER TABLE `cells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cyivugiza`
--
ALTER TABLE `cyivugiza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nid` (`nid`);

--
-- Indexes for table `gasharu`
--
ALTER TABLE `gasharu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `mumena`
--
ALTER TABLE `mumena`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profileimg`
--
ALTER TABLE `profileimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rugarama`
--
ALTER TABLE `rugarama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `village`
--
ALTER TABLE `village`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cells`
--
ALTER TABLE `cells`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cyivugiza`
--
ALTER TABLE `cyivugiza`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `gasharu`
--
ALTER TABLE `gasharu`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1108;

--
-- AUTO_INCREMENT for table `mumena`
--
ALTER TABLE `mumena`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profileimg`
--
ALTER TABLE `profileimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `rugarama`
--
ALTER TABLE `rugarama`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `village`
--
ALTER TABLE `village`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
