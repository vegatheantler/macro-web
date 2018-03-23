-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2018 at 03:16 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pnp2`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `accountID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `userTypeID` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `accountIP` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`accountID`, `username`, `password`, `lastName`, `firstName`, `userTypeID`, `dateCreated`, `accountIP`) VALUES
(1, 'pulis', '1183533288be465129168dcd0ca791a4', 'Roca', 'Jhum', 1, '2017-05-03 00:00:00', '10.0.28.37'),
(9, 'pnp', 'dd659348c317942ce6b00831656a1703', 'Chief', 'Bato', 2, '2017-05-11 00:00:00', '10.0.28.37');

-- --------------------------------------------------------

--
-- Table structure for table `approvedreports`
--

CREATE TABLE `approvedreports` (
  `reportID` int(11) NOT NULL,
  `approverID` int(11) NOT NULL,
  `isFeatured` tinyint(1) NOT NULL,
  `dateApproved` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `attch_ID` int(11) NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `reportID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`attch_ID`, `fileName`, `reportID`) VALUES
(1, 'IMG_20161124_082229.jpg', 55),
(2, 'IMG_20161124_082844.jpg', 55),
(3, 'IMG_20161124_082851.jpg', 55),
(4, 'IMG_20161124_082855.jpg', 55),
(5, '4pbkco2x19lgsuh087jt.jpg', 127),
(6, 'smrpycvz0o9djxt7e2b1.jpg', 128),
(7, 'rwon9hia6mqdb4cfgk5x.jpg', 129),
(8, 'b947vjhuzcekm621yqlf.jpg', 130);

-- --------------------------------------------------------

--
-- Table structure for table `chatlogs`
--

CREATE TABLE `chatlogs` (
  `chatID` int(10) UNSIGNED NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `message` text NOT NULL,
  `reportID` int(11) DEFAULT NULL,
  `date_sent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatlogs`
--

INSERT INTO `chatlogs` (`chatID`, `isAdmin`, `message`, `reportID`, `date_sent`) VALUES
(2, 0, 'qweqwe', 55, '2017-07-11 08:10:22'),
(3, 0, 'qweqwe', 55, '2017-07-11 08:11:01'),
(4, 0, 'qweqweqwe', 55, '2017-07-11 08:11:22'),
(5, 0, 'qweqwe', 55, '2017-07-11 08:21:14'),
(6, 0, 'qweqweqwe', 55, '2017-07-11 08:25:23'),
(7, 0, 'pogi ako', 55, '2017-07-11 08:25:29'),
(8, 0, 'baliw ka ba?', 55, '2017-07-11 08:25:41'),
(9, 0, 'qwewqe', 55, '2017-07-11 08:27:58'),
(10, 0, 'asdasd', 55, '2017-07-11 08:28:00'),
(11, 0, 'qweqwe', 55, '2017-07-11 08:31:14'),
(12, 0, 'qwe', 55, '2017-07-11 08:31:15'),
(13, 0, 'qweqwe', 55, '2017-07-11 08:31:22'),
(14, 0, 'qweqwe', 55, '2017-07-11 08:31:24'),
(15, 0, 'q', 55, '2017-07-11 08:42:44'),
(16, 0, 'qwe', 55, '2017-07-11 08:43:54'),
(17, 0, 'pogi me', 55, '2017-07-11 08:44:01'),
(18, 0, 'hhiihihih', 55, '2017-07-11 08:44:05'),
(19, 0, 'lul', 55, '2017-07-11 08:44:10'),
(20, 0, 'eqweqwe', 55, '2017-07-11 15:23:56'),
(21, 0, 'WOW', 55, '2017-07-11 15:24:02'),
(22, 0, 'wqaeqwe', 55, '2017-07-11 15:36:13'),
(23, 0, 'WOW', 55, '2017-07-11 15:36:16'),
(24, 0, 'HAHAHAHAHAHHAHA', 55, '2017-07-11 15:36:20'),
(25, 0, 'qweqwe', 55, '2017-07-11 17:01:32'),
(26, 0, 'bat ganun', 55, '2017-07-11 17:01:37'),
(27, 0, 'qweqwe', 55, '2017-07-11 17:12:01'),
(28, 0, 'HAHAHAHHA', 55, '2017-07-11 17:12:04'),
(29, 0, 'ayos', 55, '2017-07-11 17:12:07'),
(30, 0, 'nice men', 55, '2017-07-11 17:12:11'),
(31, 0, 'Ohyes this is it! WOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO', 55, '2017-07-11 17:34:37'),
(32, 0, 'DI NA NATIN PALALAGPASIN TOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO', 55, '2017-07-11 17:35:03'),
(33, 0, 'qweqwe', 55, '2017-07-11 17:39:42'),
(34, 0, 'qweqwe', 55, '2017-07-11 17:39:46'),
(35, 0, 'qweqwe', 55, '2017-07-11 17:40:25'),
(36, 0, 'HOTDOG', 55, '2017-07-11 17:40:30'),
(37, 0, 'HAHAHAHAH', 55, '2017-07-11 17:40:36'),
(38, 0, 'qweqwe', 55, '2017-07-11 17:41:00'),
(39, 0, 'qwe', 91, '2017-07-11 17:44:23'),
(40, 0, 'Easy life', 91, '2017-07-11 17:45:04'),
(41, 0, 'ohya', 91, '2017-07-11 17:45:09'),
(42, 0, 'hahahaha', 91, '2017-07-11 17:45:11'),
(43, 0, 'pano ba yan', 91, '2017-07-11 17:45:14'),
(44, 0, 'qweqwe', 91, '2017-07-11 18:26:49'),
(45, 0, 'qweqwewq', 91, '2017-07-11 18:27:33'),
(46, 0, 'zxc', 91, '2017-07-11 18:27:36'),
(47, 0, 'qweqwe', 91, '2017-07-11 18:27:57'),
(48, 0, 'halu abry', 91, '2017-07-11 18:28:06'),
(49, 0, 'bwahahhaa', 91, '2017-07-11 18:28:22'),
(50, 0, 'uxtah', 91, '2017-07-11 18:28:59'),
(51, 0, 'oki nmn', 91, '2017-07-11 18:29:05'),
(52, 0, 'Hays', 91, '2017-07-11 18:41:58'),
(53, 0, '', 91, '2017-07-11 18:42:03'),
(54, 0, '', 91, '2017-07-11 18:42:04'),
(55, 0, '', 91, '2017-07-11 18:42:04'),
(56, 0, '', 91, '2017-07-11 18:42:04'),
(57, 0, '', 91, '2017-07-11 18:42:04'),
(58, 0, '', 91, '2017-07-11 18:42:04'),
(59, 0, '', 91, '2017-07-11 18:42:05'),
(60, 0, '', 91, '2017-07-11 18:42:05'),
(61, 0, '', 91, '2017-07-11 18:42:05'),
(62, 0, '', 91, '2017-07-11 18:42:05'),
(63, 0, '', 91, '2017-07-11 18:42:05'),
(64, 0, '', 91, '2017-07-11 18:42:05'),
(65, 0, '', 91, '2017-07-11 18:42:06'),
(66, 0, '', 91, '2017-07-11 18:42:06'),
(67, 0, '', 91, '2017-07-11 18:42:06'),
(68, 0, '', 91, '2017-07-11 18:42:06'),
(69, 0, '', 91, '2017-07-11 18:42:06'),
(70, 0, '', 91, '2017-07-11 18:42:06'),
(71, 0, '', 91, '2017-07-11 18:42:07'),
(72, 0, '', 91, '2017-07-11 18:42:07'),
(73, 0, '', 91, '2017-07-11 18:42:07'),
(74, 0, '', 91, '2017-07-11 18:42:07'),
(75, 0, '', 91, '2017-07-11 18:42:07'),
(76, 0, '', 91, '2017-07-11 18:42:07'),
(77, 0, '', 91, '2017-07-11 18:42:07'),
(78, 0, '', 91, '2017-07-11 18:42:07'),
(79, 0, '', 91, '2017-07-11 18:42:08'),
(80, 0, '', 91, '2017-07-11 18:42:08'),
(81, 0, '', 91, '2017-07-11 18:42:08'),
(82, 0, '', 91, '2017-07-11 18:42:08'),
(83, 0, '', 91, '2017-07-11 18:42:08'),
(84, 0, '', 91, '2017-07-11 18:42:08'),
(85, 0, '', 91, '2017-07-11 18:42:08'),
(86, 0, '', 91, '2017-07-11 18:42:08'),
(87, 0, '', 91, '2017-07-11 18:42:09'),
(88, 0, '', 91, '2017-07-11 18:42:09'),
(89, 0, '', 91, '2017-07-11 18:42:09'),
(90, 0, '', 91, '2017-07-11 18:42:09'),
(91, 0, '', 91, '2017-07-11 18:42:09'),
(92, 0, '', 91, '2017-07-11 18:42:09'),
(93, 0, '', 91, '2017-07-11 18:42:09'),
(94, 0, '', 91, '2017-07-11 18:42:10'),
(95, 0, '', 91, '2017-07-11 18:42:10'),
(96, 0, '', 91, '2017-07-11 18:42:10'),
(97, 0, '', 91, '2017-07-11 18:42:10'),
(98, 0, '', 91, '2017-07-11 18:42:10'),
(99, 0, 'Ang pogi ko tlga', 91, '2017-07-11 18:42:17'),
(100, 0, 'qweqwe', 91, '2017-07-11 18:42:50'),
(101, 0, 'pakiss nga pre', 91, '2017-07-11 18:43:31'),
(102, 0, 'ang pogi pogi mo tlga abry hart hart', 91, '2017-07-11 18:43:45'),
(103, 0, 'Ayos', 91, '2017-07-11 19:54:58'),
(104, 1, 'soya', 91, '2017-08-09 02:58:07'),
(105, 0, 'tangina mo officer', 91, '2017-08-09 03:25:27'),
(106, 1, 'ftytfy', 108, '2017-08-09 04:51:48'),
(107, 1, 'zcxvcv', 108, '2017-08-09 04:51:52'),
(108, 0, 'Perl', 91, '2017-08-09 07:07:52'),
(109, 1, 'hi jhums\n', 91, '2017-08-09 07:08:01'),
(110, 0, 'Bakit perl', 91, '2017-08-09 07:08:08'),
(111, 1, 'pogi daw ni grace', 91, '2017-08-09 07:08:30'),
(112, 0, 'Weh', 91, '2017-08-09 07:08:34'),
(113, 1, 'Welcome to macro anonymous crime reporting!', 91, '2017-08-09 07:08:49'),
(114, 0, 'Ulol', 91, '2017-08-09 07:08:50'),
(115, 1, 'Welcome to macro', 120, '2017-08-09 07:09:22'),
(116, 1, 'hello', 116, '2017-08-09 07:10:24'),
(117, 1, 'hello', 111, '2017-08-09 07:10:53'),
(118, 0, 'Grace', 111, '2017-08-09 07:11:18'),
(119, 0, 'Msg', 122, '2017-08-09 08:06:55'),
(120, 1, 'mam ruby', 122, '2017-08-09 08:07:58'),
(121, 0, 'Power', 122, '2017-08-09 08:08:27'),
(122, 0, 'Power', 122, '2017-08-09 08:08:35'),
(123, 0, 'Poeer', 122, '2017-08-09 08:08:38'),
(124, 0, 'Power', 122, '2017-08-09 08:08:41'),
(125, 0, 'Power', 122, '2017-08-09 08:08:45'),
(126, 0, 'Power', 122, '2017-08-09 08:08:48'),
(127, 0, 'Power', 122, '2017-08-09 08:09:03'),
(128, 1, 'poooowwwwwwweerr\n', 122, '2017-08-09 08:09:23'),
(129, 1, 'boss', 124, '2017-08-09 08:10:22'),
(130, 0, 'adasdas', 125, '2017-08-09 08:13:15'),
(131, 0, 'hi ser', 124, '2017-08-09 08:13:27'),
(132, 1, 'lao', 124, '2017-08-09 08:13:37'),
(133, 0, 'roca', 124, '2017-08-09 08:13:43'),
(134, 1, 'yes sir?', 124, '2017-08-09 08:13:47'),
(135, 0, 'nagugutom ako', 124, '2017-08-09 08:13:59'),
(136, 0, 'haha', 124, '2017-08-09 08:14:02'),
(137, 0, 'dfdffgfhgh', 125, '2017-08-09 08:14:16'),
(138, 0, 'hkjkjk', 125, '2017-08-09 08:14:18'),
(139, 1, 'ahahahhaha sir javinar power', 125, '2017-08-09 08:14:20'),
(140, 0, 'ghjhui4jghg', 125, '2017-08-09 08:14:22'),
(141, 0, 'pano ako', 124, '2017-08-09 08:14:27'),
(142, 0, 'pano ako', 124, '2017-08-09 08:14:29'),
(143, 0, 'pahahaha', 124, '2017-08-09 08:14:33'),
(144, 1, 'ahahahha wala tag gutom power', 124, '2017-08-09 08:14:41'),
(145, 0, 'Payaman', 122, '2017-08-09 08:14:58'),
(146, 1, 'pahirap', 122, '2017-08-09 08:15:13'),
(147, 0, 'shshshhshshs', 91, '2017-09-20 02:08:43'),
(148, 1, 'asdasdadadadadsa jap\n', 91, '2017-10-09 09:44:51'),
(149, 0, 'adasdasdadadadad jhums', 91, '2017-10-09 09:45:05'),
(150, 0, 'make me!!', 91, '2018-02-28 11:12:28'),
(151, 0, 'hataw!', 110, '2018-03-04 07:26:02'),
(152, 0, 'jakul', 128, '2018-03-06 18:59:28'),
(153, 0, 'asd', 130, '2018-03-06 19:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `closedreports`
--

CREATE TABLE `closedreports` (
  `reportID` int(11) NOT NULL,
  `closedByID` int(11) NOT NULL,
  `dateClosed` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `involvedparty`
--

CREATE TABLE `involvedparty` (
  `inv_ID` int(11) NOT NULL,
  `reportID` int(11) NOT NULL,
  `susLastname` varchar(50) DEFAULT NULL,
  `susFirstname` varchar(50) DEFAULT NULL,
  `susAlias` varchar(50) DEFAULT NULL,
  `susLastSeen` varchar(255) DEFAULT NULL,
  `susNumber` varchar(50) DEFAULT NULL,
  `susGender` varchar(20) DEFAULT NULL,
  `susWeight` varchar(255) DEFAULT NULL,
  `susHeight` varchar(50) DEFAULT NULL,
  `susAge` varchar(20) DEFAULT NULL,
  `susHairColor` varchar(50) DEFAULT NULL,
  `susScars` varchar(50) NOT NULL,
  `susClothing` varchar(50) DEFAULT NULL,
  `susEyecolor` varchar(50) DEFAULT NULL,
  `susRace` varchar(50) DEFAULT NULL,
  `susFacialhair` varchar(50) DEFAULT NULL,
  `susFeatures` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `involvedparty`
--

INSERT INTO `involvedparty` (`inv_ID`, `reportID`, `susLastname`, `susFirstname`, `susAlias`, `susLastSeen`, `susNumber`, `susGender`, `susWeight`, `susHeight`, `susAge`, `susHairColor`, `susScars`, `susClothing`, `susEyecolor`, `susRace`, `susFacialhair`, `susFeatures`) VALUES
(1, 55, 'Dela Pogi', 'Abraham', 'Abry', 'Tondo', '09123123123', 'M', 'light', 'tall', '12', NULL, 'Tattoo sa braso', 'FUBU', 'blue', 'B', 'bigote', 'mabango'),
(2, 55, 'Roca', 'Jhumari', 'Jhumz', 'Tondo', '099999999', 'F', 'Tabachoy', 'Pandak', '15', NULL, 'May balat sa pwet', 'JEJECAP', 'Madilim', 'l', 'Wala', 'MABAHO'),
(3, 67, 'Dela Pogi', 'Abraham', 'Abry', 'Tondo', '09123123123', 'M', 'light', 'tall', '12', NULL, 'Tattoo sa braso', 'FUBU', 'blue', 'Black', 'bigote', 'mabango'),
(4, 67, 'Roca', 'Jhumari', 'Jhumz', 'Tondo', '099999999', 'F', 'Tabachoy', 'Pandak', '15', NULL, 'May balat sa pwet', 'JEJECAP', 'Madilim', 'Black', 'Wala', 'MABAHO'),
(5, 68, 'Dela Pogi', 'Abraham', 'Abry', 'Tondo', '09123123123', 'M', 'light', 'tall', '12', NULL, 'Tattoo sa braso', 'FUBU', 'blue', 'Black', 'bigote', 'mabango'),
(6, 68, 'Roca', 'Jhumari', 'Jhumz', 'Tondo', '099999999', 'F', 'Tabachoy', 'Pandak', '15', NULL, 'May balat sa pwet', 'JEJECAP', 'Madilim', 'Black', 'Wala', 'MABAHO'),
(7, 69, 'Dela Pogi', 'Abraham', 'Abry', 'Tondo', '09123123123', 'M', 'light', 'tall', '12', NULL, 'Tattoo sa braso', 'FUBU', 'blue', 'Black', 'bigote', 'mabango'),
(8, 69, 'Roca', 'Jhumari', 'Jhumz', 'Tondo', '099999999', 'F', 'Tabachoy', 'Pandak', '15', NULL, 'May balat sa pwet', 'JEJECAP', 'Madilim', 'Black', 'Wala', 'MABAHO'),
(9, 71, 'Dela Pogi', 'Abraham', 'Abry', 'Tondo', '09123123123', 'M', 'light', 'tall', '12', NULL, 'Tattoo sa braso', 'FUBU', 'blue', 'Black', 'bigote', 'mabango'),
(10, 71, 'Roca', 'Jhumari', 'Jhumz', 'Tondo', '099999999', 'F', 'Tabachoy', 'Pandak', '15', NULL, 'May balat sa pwet', 'JEJECAP', 'Madilim', 'Black', 'Wala', 'MABAHO'),
(11, 72, 'Dela Pogi', 'Abraham', 'Abry', 'Tondo', '09123123123', 'M', 'light', 'tall', '12', NULL, 'Tattoo sa braso', 'FUBU', 'blue', 'Black', 'bigote', 'mabango'),
(12, 72, 'Roca', 'Jhumari', 'Jhumz', 'Tondo', '099999999', 'F', 'Tabachoy', 'Pandak', '15', NULL, 'May balat sa pwet', 'JEJECAP', 'Madilim', 'Black', 'Wala', 'MABAHO'),
(13, 73, 'Dela Pogi', 'Abraham', 'Abry', 'Tondo', '09123123123', 'M', 'light', 'tall', '12', NULL, 'Tattoo sa braso', 'FUBU', 'blue', 'Black', 'bigote', 'mabango'),
(14, 73, 'Roca', 'Jhumari', 'Jhumz', 'Tondo', '099999999', 'F', 'Tabachoy', 'Pandak', '15', NULL, 'May balat sa pwet', 'JEJECAP', 'Madilim', 'Black', 'Wala', 'MABAHO'),
(15, 74, 'Dela Pogi', 'Abraham', 'Abry', 'Tondo', '09123123123', 'M', 'light', 'tall', '12', NULL, 'Tattoo sa braso', 'FUBU', 'blue', 'Black', 'bigote', 'mabango'),
(16, 74, 'Roca', 'Jhumari', 'Jhumz', 'Tondo', '099999999', 'F', 'Tabachoy', 'Pandak', '15', NULL, 'May balat sa pwet', 'JEJECAP', 'Madilim', 'Black', 'Wala', 'MABAHO'),
(17, 79, 'Dela Pogi', 'Abraham', 'Abry', 'Tondo', '09123123123', 'M', 'light', 'tall', '12', NULL, 'Tattoo sa braso', 'FUBU', 'blue', 'Black', 'bigote', 'mabango'),
(18, 79, 'Roca', 'Jhumari', 'Jhumz', 'Tondo', '099999999', 'F', 'Tabachoy', 'Pandak', '15', NULL, 'May balat sa pwet', 'JEJECAP', 'Madilim', 'Black', 'Wala', 'MABAHO'),
(19, 80, 'Dela Pogi', 'Abraham', 'Abry', 'Tondo', '09123123123', 'M', 'light', 'tall', '12', NULL, 'Tattoo sa braso', 'FUBU', 'blue', 'Black', 'bigote', 'mabango'),
(20, 80, 'Roca', 'Jhumari', 'Jhumz', 'Tondo', '099999999', 'F', 'Tabachoy', 'Pandak', '15', NULL, 'May balat sa pwet', 'JEJECAP', 'Madilim', 'Black', 'Wala', 'MABAHO'),
(21, 81, 'Dela Pogi', 'Abraham', 'Abry', 'Tondo', '09123123123', 'M', 'light', 'tall', '12', NULL, 'Tattoo sa braso', 'FUBU', 'blue', 'Black', 'bigote', 'mabango'),
(22, 81, 'Roca', 'Jhumari', 'Jhumz', 'Tondo', '099999999', 'F', 'Tabachoy', 'Pandak', '15', NULL, 'May balat sa pwet', 'JEJECAP', 'Madilim', 'Black', 'Wala', 'MABAHO'),
(23, 84, 'Dela Pogi', 'Abraham', 'Abry', 'Tondo', '09123123123', 'M', 'light', 'tall', '12', NULL, 'Tattoo sa braso', 'FUBU', 'blue', 'Black', 'bigote', 'mabango'),
(24, 84, 'Roca', 'Jhumari', 'Jhumz', 'Tondo', '099999999', 'F', 'Tabachoy', 'Pandak', '15', NULL, 'May balat sa pwet', 'JEJECAP', 'Madilim', 'Black', 'Wala', 'MABAHO'),
(25, 86, 'Dela Pogi', 'Abraham', 'Abry', 'Tondo', '09123123123', 'M', 'light', 'tall', '12', NULL, 'Tattoo sa braso', 'FUBU', 'blue', 'Black', 'bigote', 'mabango'),
(26, 86, 'Roca', 'Jhumari', 'Jhumz', 'Tondo', '099999999', 'F', 'Tabachoy', 'Pandak', '15', NULL, 'May balat sa pwet', 'JEJECAP', 'Madilim', 'Black', 'Wala', 'MABAHO'),
(27, 87, 'Dela Pogi', 'Abraham', 'Abry', 'Tondo', '09123123123', 'M', 'light', 'tall', '12', NULL, 'Tattoo sa braso', 'FUBU', 'blue', 'Black', 'bigote', 'mabango'),
(28, 87, 'Roca', 'Jhumari', 'Jhumz', 'Tondo', '099999999', 'F', 'Tabachoy', 'Pandak', '15', NULL, 'May balat sa pwet', 'JEJECAP', 'Madilim', 'Black', 'Wala', 'MABAHO'),
(29, 88, 'Dela Pogi', 'Abraham', 'Abry', 'Tondo', '09123123123', 'M', 'light', 'tall', '12', NULL, 'Tattoo sa braso', 'FUBU', 'blue', 'Black', 'bigote', 'mabango'),
(30, 88, 'Roca', 'Jhumari', 'Jhumz', 'Tondo', '099999999', 'F', 'Tabachoy', 'Pandak', '15', NULL, 'May balat sa pwet', 'JEJECAP', 'Madilim', 'Black', 'Wala', 'MABAHO'),
(31, 89, 'Dela Pogi', 'Abraham', 'Abry', 'Tondo', '09123123123', 'M', 'light', 'tall', '12', NULL, 'Tattoo sa braso', 'FUBU', 'blue', 'Black', 'bigote', 'mabango'),
(32, 89, 'Roca', 'Jhumari', 'Jhumz', 'Tondo', '099999999', 'F', 'Tabachoy', 'Pandak', '15', NULL, 'May balat sa pwet', 'JEJECAP', 'Madilim', 'Black', 'Wala', 'MABAHO'),
(33, 123, '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, '', ''),
(34, 123, '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, '', ''),
(35, 123, '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, '', ''),
(36, 123, '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, '', ''),
(37, 123, '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, '', ''),
(38, 124, 'lao', 'lao', 'lao', 'kanto', '', 'Male', 'Thin', '5.7', '15', 'brown', 'medical', 'sira', 'browm', 'Other', 'brown', 'hinawakan ako\r\n'),
(39, 124, 'lao', 'lao', 'lao', 'kanto', '', 'Male', 'Average', '5.8', '60', 'brown', 'medical', 'sira', 'brown', 'Hawaiian', 'brown', 'secreat'),
(40, 125, 'dionisio', 'grace', 'donie', 'AMA', '0925515151', 'Unknown', 'Obese', '5\"', '200', 'blue', 'sa pwet', '', 'brown', 'Hawaiian', 'black', ''),
(41, 127, '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', NULL, '', ''),
(42, 128, 'sdasdasdasda', 'sdasda', '', '', 'sdasd', '', '', '', 'asd', '', '', '', '', 'Asian', '', ''),
(43, 128, '', '', '', '', '', '', '', '', 'asd', '', 'asdasd', '', '', '', '', 'asdasdasd'),
(44, 129, 'sdasdasdasda', 'sdasda', '', '', 'sdasd', '', '', '', 'asd', '', '', '', '', 'Asian', '', ''),
(45, 129, '', '', '', '', '', '', '', '', 'asd', '', 'asdasd', '', '', '', '', 'asdasdasd'),
(46, 130, 'sdasdasdasda', 'sdasda', '', '', 'sdasd', '', '', '', 'asd', '', '', '', '', 'Asian', '', ''),
(47, 130, '', '', '', '', '', '', '', '', 'asd', '', 'asdasd', '', '', '', '', 'asdasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `involvedvehicle`
--

CREATE TABLE `involvedvehicle` (
  `inv_VehID` int(11) NOT NULL,
  `reportID` int(11) NOT NULL,
  `carPlate` varchar(50) DEFAULT NULL,
  `carMake` varchar(50) DEFAULT NULL,
  `carModel` varchar(50) DEFAULT NULL,
  `carColor` varchar(50) DEFAULT NULL,
  `carYear` varchar(50) DEFAULT NULL,
  `carDesc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `involvedvehicle`
--

INSERT INTO `involvedvehicle` (`inv_VehID`, `reportID`, `carPlate`, `carMake`, `carModel`, `carColor`, `carYear`, `carDesc`) VALUES
(1, 55, 'M', 'S', 'N', 'Y', '2', 'M'),
(2, 55, 'C', 'u', 'e', 'e', '0', 'a'),
(3, 55, 'A', 'z', 'o', 'l', '1', 'y'),
(4, 67, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(5, 67, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(6, 67, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(7, 68, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(8, 68, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(9, 68, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(10, 69, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(11, 69, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(12, 69, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(13, 71, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(14, 71, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(15, 71, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(16, 72, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(17, 72, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(18, 72, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(19, 73, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(20, 73, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(21, 73, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(22, 74, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(23, 74, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(24, 74, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(25, 79, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(26, 79, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(27, 79, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(28, 80, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(29, 80, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(30, 80, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(31, 81, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(32, 81, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(33, 81, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(34, 84, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(35, 84, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(36, 84, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(37, 86, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(38, 86, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(39, 86, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(40, 87, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(41, 87, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(42, 87, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(43, 88, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(44, 88, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(45, 88, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(46, 89, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(47, 89, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(48, 89, 'MCA 999', 'Suzuki', 'Neo', 'Yellow', '2015', 'May mukha ni DIgong sa likod'),
(49, 123, '', '', '', '', '', ''),
(50, 123, '', '', '', '', '', ''),
(51, 123, '', '', '', '', '', ''),
(52, 123, '', '', '', '', '', ''),
(53, 123, '', '', '', '', '', ''),
(54, 124, 'AVD-2005', 'toyota', 'vios', 'red', '2016', 'BINANGAN AKO'),
(55, 127, 'kjqlkj', '', '', 'kasjdlaskjdl', '', ''),
(56, 127, '', '', '', '', '', ''),
(57, 127, '', '', '', '', '', 'askldjaslkdjaslkd'),
(58, 128, '', '', 'asdasdasd', '', '', 'asdasd'),
(59, 128, '', '', 'asdasd', 'asda', '', 'sdasd'),
(60, 128, '', '', 'asdasdasd', 'asdasd', '', 'asdasd'),
(61, 129, '', '', 'asdasdasd', '', '', 'asdasd'),
(62, 129, '', '', 'asdasd', 'asda', '', 'sdasd'),
(63, 129, '', '', 'asdasdasd', 'asdasd', '', 'asdasd'),
(64, 130, '', '', 'asdasdasd', '', '', 'asdasd'),
(65, 130, '', '', 'asdasd', 'asda', '', 'sdasd'),
(66, 130, '', '', 'asdasdasd', 'asdasd', '', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `keepsafe`
--

CREATE TABLE `keepsafe` (
  `tipID` int(11) NOT NULL,
  `cIdentifier` varchar(255) NOT NULL,
  `cSidebarLink` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cTitle` varchar(9999) NOT NULL,
  `cTabName` varchar(255) NOT NULL,
  `cImage` varchar(255) NOT NULL,
  `cTips` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keepsafe`
--

INSERT INTO `keepsafe` (`tipID`, `cIdentifier`, `cSidebarLink`, `title`, `cTitle`, `cTabName`, `cImage`, `cTips`) VALUES
(1, 'KS1', 'sbKS1', 'How to escape from flod', 'an overflow of a large amount of water beyond its normal limits, especially over what is normally dry land.\r\n\r\n', 'Flood Tips', 'ligtas', 'Contrary to popular belief, Lorem Ipsum is not simply random text.<br> It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham..\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n'),
(2, 'KS2', 'sbKS2', 'very goo', 'very good.\nvery good.\nvery good.\nvery good.\nvery good.\nvery good.\nvery good.\nvery good.\nvery good.\nvery good.\n', 'how to be very good', '2', 'asdasdasdasdadasdadadasdasdasdadasdadasasdasd.\nasdasdasdasdadasdadadasdasdasdadasdadasasdasd.\nasdasdasdasdadasdadadasdasdasdadasdadasasdasd.\nasdasdasdasdadasdadadasdasdasdadasdadasasdasd.\n');

-- --------------------------------------------------------

--
-- Table structure for table `ligtastips`
--

CREATE TABLE `ligtastips` (
  `tipID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ligtastips`
--

INSERT INTO `ligtastips` (`tipID`, `title`, `description`) VALUES
(1, 'Arson', 'maging maouuri mapangahas mapatmatag matanglawin'),
(2, 'Rape', 'usaapang kantot very gooodqweqwe'),
(3, 'Rape', 'usaapang kantot very goood. jakult everyday para everyday okay.'),
(4, 'Arson', 'maging maouuri mapangahas mapatmatag matanglawin'),
(5, 'Arson', 'kantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\n'),
(6, 'rape', 'kantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot iyot.\nkantot i');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `noteID` int(11) NOT NULL,
  `accountID` int(11) NOT NULL,
  `reportID` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `referencecodes`
--

CREATE TABLE `referencecodes` (
  `referenceID` varchar(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `reportID` int(50) NOT NULL,
  `newMsgAdmin` int(11) NOT NULL,
  `newMsgUser` int(11) NOT NULL,
  `isOnline` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referencecodes`
--

INSERT INTO `referencecodes` (`referenceID`, `password`, `reportID`, `newMsgAdmin`, `newMsgUser`, `isOnline`) VALUES
('02756', 'tekwz', 91, 5, 0, 1),
('06437', '1tbhi', 110, 0, 0, 1),
('12049', 'vchb4', 108, 2, 0, 1),
('14032', '9w6fc', 93, 0, 1, 1),
('14870', '7ewd3', 92, 0, 1, 0),
('17503', 'loxfd', 88, 0, 0, 0),
('19063', 'ki9zt', 113, 0, 0, 0),
('1mifq', 'dsadsa', 119, 0, 0, 0),
('1umrc', 'walalang', 124, 4, 0, 0),
('20hmd', '54545454', 125, 1, 0, 0),
('21635', 'fvxu6', 90, 0, 0, 0),
('21e74', 'dg4lw', 99, 0, 0, 0),
('29e56', 'xm4au', 100, 0, 0, 0),
('2wbfh', 'cxsft', 73, 0, 0, 0),
('341e8', 'vj3qh', 101, 0, 0, 0),
('34265', 'lmdzc', 109, 0, 0, 0),
('39417', 'mwzrb', 105, 0, 0, 0),
('3jy9b', 'pogi321', 121, 0, 0, 0),
('47829', 'l0jqm', 106, 0, 0, 0),
('48e56', 're2y0', 102, 0, 0, 0),
('54196', '52ki9', 86, 0, 0, 0),
('68273', '3xp0b', 94, 0, 0, 0),
('74132', 'zkvwm', 96, 0, 0, 0),
('76921', 'j4p2g', 112, 0, 0, 0),
('81064', 'fuz0b', 98, 0, 0, 0),
('81752', 'bdl4z', 95, 0, 0, 0),
('90134', 'rj9a2', 107, 0, 0, 0),
('901e2', 'g97p1', 89, 0, 0, 0),
('92e51', 'i4qxt', 103, 0, 0, 0),
('93750', '92yok', 104, 0, 0, 0),
('94263', 'vncmb', 97, 0, 0, 0),
('98157', 'dhtg5', 111, 1, 0, 0),
('9x5lt', 'nkrj1', 84, 0, 0, 0),
('axgrz', '545454545', 123, 0, 0, 0),
('BsECF', '5INFH', 67, 0, 0, 0),
('fdwjp', 'dtx0m', 74, 0, 0, 0),
('h5k7z', 'jhums', 120, 1, 0, 0),
('hap46', 'pass123', 130, 0, 0, 0),
('iwpkz', '12345', 127, 0, 0, 0),
('k8enf', '123', 118, 0, 0, 0),
('klfiv', '123', 117, 0, 0, 0),
('koj6y', 'wafyl', 79, 0, 0, 0),
('mhvtu', 'Asdasd', 122, 3, 0, 0),
('mqus7', 'igep1', 87, 0, 0, 0),
('n3hc9', '12345', 126, 0, 0, 0),
('S8klf', 'ky82I', 72, 0, 0, 0),
('Sl1Im', 'UxueL', 71, 0, 0, 0),
('tbcko', 'dkqly', 81, 0, 0, 0),
('tdx5e', 'pass123', 129, 0, 0, 0),
('TKWsX', 'UBfVT', 68, 0, 0, 0),
('u5zks', 'm1r7a', 80, 0, 0, 0),
('v5dl4', '123', 116, 1, 0, 0),
('z56s1', 'pass123', 128, 0, 0, 0),
('zDtMZ', 'uyNkH', 69, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `reportID` int(11) NOT NULL,
  `crime` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `typeOfOffense` varchar(255) NOT NULL,
  `dateTimeOfOffense` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `streetAddressOfOffense` varchar(255) NOT NULL,
  `barangayOfOffense` varchar(255) NOT NULL,
  `cityOfOffense` varchar(255) NOT NULL,
  `isRead` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`reportID`, `crime`, `description`, `typeOfOffense`, `dateTimeOfOffense`, `streetAddressOfOffense`, `barangayOfOffense`, `cityOfOffense`, `isRead`) VALUES
(44, '', 'Naginaso pero pogi parin', 'Theft', '2017-06-14 23:31:45', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 1),
(45, '', 'Naginaso pero pogi parin', 'Theft', '2017-08-09 11:33:51', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 1),
(46, '', 'Naginaso pero pogi parin', 'Theft', '2017-08-09 12:37:52', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 1),
(47, '', 'Naginaso pero pogi parin', 'Theft', '2017-08-09 12:37:53', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 1),
(48, '', 'Naginaso pero pogi parin', 'Theft', '2017-08-09 12:47:53', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 1),
(49, '', 'Naginaso pero pogi parin', 'Theft', '2017-09-21 08:00:24', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 1),
(50, '', 'Naginaso pero pogi parin', 'Theft', '2017-06-14 23:31:48', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 1),
(51, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(52, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(53, '', 'Naginaso pero pogi parin', 'Theft', '2017-06-14 23:31:52', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 1),
(54, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(55, '', 'Naginaso pero pogi parin', 'Theft', '2017-08-09 12:37:56', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 1),
(56, '', 'Naginaso pero pogi parin', 'Theft', '2017-09-21 08:01:18', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 1),
(57, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(58, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(59, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(60, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(61, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(62, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(63, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(64, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(65, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(66, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(67, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(68, '', 'Naginaso pero pogi parin', 'Theft', '2017-09-21 07:57:52', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 1),
(69, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(70, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(71, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(72, '', 'Naginaso pero pogi parin', 'Theft', '2017-09-20 16:22:04', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 1),
(73, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(74, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(75, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(76, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(77, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(78, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(79, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(80, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(81, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(82, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(83, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(84, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(85, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(86, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(87, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(88, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(89, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(90, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(91, '', 'Naginaso pero pogi parin', 'Theft', '2017-08-09 11:00:33', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 1),
(92, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(93, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(94, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(95, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(96, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(97, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(98, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(99, '', 'Naginaso pero pogi parin', 'Theft', '0000-00-00 00:00:00', 'Old JP Rizal Street', 'Calumpang', 'Binondo,Manila', 0),
(100, '', '', '', '0000-00-00 00:00:00', '', '', 'Binondo,Manila', 0),
(101, '', '', '', '0000-00-00 00:00:00', '', '', 'Binondo,Manila', 0),
(102, '', '', '', '0000-00-00 00:00:00', '', '', 'Binondo,Manila', 0),
(103, '', '', '', '0000-00-00 00:00:00', '', '', 'Binondo,Manila', 0),
(104, '', '', '', '0000-00-00 00:00:00', '', '', 'Binondo,Manila', 0),
(105, '', '', '', '0000-00-00 00:00:00', '', '', 'Binondo,Manila', 0),
(106, '', '', '', '0000-00-00 00:00:00', '', '', 'Binondo,Manila', 0),
(107, '', '', '', '0000-00-00 00:00:00', '', '', 'Binondo,Manila', 0),
(108, '', '', '', '0000-00-00 00:00:00', '', '', 'Binondo,Manila', 0),
(109, '', '', '', '0000-00-00 00:00:00', '', '', 'Binondo,Manila', 0),
(110, '', '', '', '0000-00-00 00:00:00', '', '', 'Binondo,Manila', 0),
(111, '', '', '', '0000-00-00 00:00:00', '', '', 'Binondo,Manila', 0),
(112, '', '', '', '0000-00-00 00:00:00', '', '', 'Binondo,Manila', 0),
(113, '', '', '', '0000-00-00 00:00:00', '', '', 'Binondo,Manila', 0),
(114, '', '', '', '0000-00-00 00:00:00', '', '', 'Binondo,Manila', 0),
(115, '', '123', 'Burglary Habitation', '0000-00-00 00:00:00', '123', '123', '123', 0),
(116, '', '123', 'Burglary Habitation', '0000-00-00 00:00:00', '123', '123', '123', 0),
(117, '', '123', 'Burglary Habitation', '0000-00-00 00:00:00', '123', '123', '123', 0),
(118, '', 'awsd', 'Burglary Habitation', '2017-09-20 14:15:33', '123', '123', '123', 1),
(119, '', 'lksjdklsajdsald', 'Burglary Habitation', '0000-00-00 00:00:00', '1212', '12212', '', 0),
(120, '', 'Sbvsgsgsgsgs', 'Arson', '0000-00-00 00:00:00', 'gagagsgaga', 'hsgsgsgs', '', 0),
(121, '', 'llksadjalskjdalsjdka', 'Burglary Building', '2017-08-09 16:21:07', 'sldkjfsdlkfjsdlkfj', 'sdlkfjsdlkjfsldkjf', '', 1),
(122, '', 'Asdadd', 'Theft', '2017-08-09 16:19:59', '', '', '', 1),
(123, '', 'asdasd', 'Arson', '2017-08-09 16:19:53', 'Maganda', 'Sampaloc', '', 1),
(124, '', 'ni rape ako', 'Sexual Assault', '2017-08-09 16:19:11', 'pilapil', '51', '', 1),
(125, '', 'asdasdm', 'Arson', '2017-08-09 16:19:10', 'Maganda', 'Sampaloc', '', 1),
(126, '', 'qweqweqwe', 'Burglary Building', '0000-00-00 00:00:00', 'qweqwe', 'qweqwe', 'qweqwe', 0),
(127, '', 'qweqweqwq', 'Burglary Building', '0000-00-00 00:00:00', 'qweqwe', 'qweqwe', 'qweqwe', 0),
(128, '', 'asdasdasdasdasdasdasd', 'Bank Fraud', '2020-02-02 00:00:00', 'asdasdasdasd', 'asdasdasd', 'asdasdasd', 0),
(129, '', 'asdasdasdasdasdasdasd', 'Bank Fraud', '2020-02-02 00:00:00', 'asdasdasdasd', 'asdasdasd', 'asdasdasd', 0),
(130, '', 'asdasdasdasdasdasdasd', 'Bank Fraud', '2020-02-02 00:00:00', 'asdasdasdasd', 'asdasdasd', 'asdasdasd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sender`
--

CREATE TABLE `sender` (
  `senderID` int(11) NOT NULL,
  `reportID` int(11) NOT NULL,
  `infFirstname` varchar(50) DEFAULT NULL,
  `infLastname` varchar(50) DEFAULT NULL,
  `infStreetAddress` varchar(255) DEFAULT NULL,
  `infBarangay` varchar(50) DEFAULT NULL,
  `infNumber` varchar(50) DEFAULT NULL,
  `infEmail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sender`
--

INSERT INTO `sender` (`senderID`, `reportID`, `infFirstname`, `infLastname`, `infStreetAddress`, `infBarangay`, `infNumber`, `infEmail`) VALUES
(1, 116, '', '', '', '', '', ''),
(2, 117, '', '', '', '', '', ''),
(3, 118, '', '', '', '', '', ''),
(4, 119, '', '', '', '', '', ''),
(5, 120, '', '', '', '', '', ''),
(6, 121, '', '', '', '', '', ''),
(7, 122, '', '', '', '', '', ''),
(8, 123, '', '', '', '', '', ''),
(9, 124, 'LAO', 'LAO', 'LAO', 'LAO', 'LAO', 'LAO'),
(10, 125, '', '', '', '', '', ''),
(11, 126, '', '', '', '', '', ''),
(12, 127, '', '', 'aodkasldkasl', '', '', ''),
(13, 128, '', '', '', '', '', ''),
(14, 129, '', '', '', '', '', ''),
(15, 130, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `unsolved`
--

CREATE TABLE `unsolved` (
  `caseID` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `imagename` varchar(255) NOT NULL,
  `casenumber` int(11) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unsolved`
--

INSERT INTO `unsolved` (`caseID`, `title`, `imagename`, `casenumber`, `description`, `created_at`) VALUES
('1', 'rapist', '2', 98752, 'It is a long rape fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). \r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2018-02-16 20:17:02'),
('6', 'rape', '1', 98754, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). \r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2018-02-16 20:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `unsolvedgivedtips`
--

CREATE TABLE `unsolvedgivedtips` (
  `id` int(11) NOT NULL,
  `tipsDescription` varchar(1000) NOT NULL,
  `senderName` varchar(255) NOT NULL,
  `senderContact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `updatelog`
--

CREATE TABLE `updatelog` (
  `updateID` int(11) NOT NULL,
  `reportID` int(11) NOT NULL,
  `timeUpdated` datetime NOT NULL,
  `reason` varchar(255) NOT NULL,
  `loggedIP` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updatelog`
--

INSERT INTO `updatelog` (`updateID`, `reportID`, `timeUpdated`, `reason`, `loggedIP`) VALUES
(1, 116, '0000-00-00 00:00:00', 'New Report', '::1'),
(2, 117, '0000-00-00 00:00:00', 'New Report', '::1'),
(3, 118, '0000-00-00 00:00:00', 'New Report', '::1'),
(4, 119, '0000-00-00 00:00:00', 'New Report', '::1'),
(5, 120, '0000-00-00 00:00:00', 'New Report', '192.168.43.14'),
(6, 121, '0000-00-00 00:00:00', 'New Report', '::1'),
(7, 122, '0000-00-00 00:00:00', 'New Report', '192.168.43.234'),
(8, 123, '0000-00-00 00:00:00', 'New Report', '192.168.43.69'),
(9, 124, '0000-00-00 00:00:00', 'New Report', '192.168.43.92'),
(10, 125, '0000-00-00 00:00:00', 'New Report', '192.168.43.69'),
(11, 126, '0000-00-00 00:00:00', 'New Report', '::1'),
(12, 127, '0000-00-00 00:00:00', 'New Report', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `usertypes`
--

CREATE TABLE `usertypes` (
  `userTypeID` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertypes`
--

INSERT INTO `usertypes` (`userTypeID`, `title`, `isAdmin`) VALUES
(1, 'pulis', 0),
(2, 'PNP', 1),
(3, 'pulis', 0),
(4, 'PNP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wanted`
--

CREATE TABLE `wanted` (
  `wantedID` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `CriminalCase` varchar(50) NOT NULL,
  `crimeLocation` varchar(255) NOT NULL,
  `crimeDesc` varchar(1000) NOT NULL,
  `time` varchar(255) NOT NULL,
  `warrantDate` datetime NOT NULL,
  `age` varchar(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `height` varchar(50) NOT NULL,
  `build` varchar(50) NOT NULL,
  `hairColor` varchar(255) NOT NULL,
  `hairLength` varchar(50) NOT NULL,
  `hairStyle` varchar(50) NOT NULL,
  `facialHair` varchar(255) NOT NULL,
  `ethnicApp` varchar(255) NOT NULL,
  `addInfo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wanted`
--

INSERT INTO `wanted` (`wantedID`, `firstName`, `lastName`, `CriminalCase`, `crimeLocation`, `crimeDesc`, `time`, `warrantDate`, `age`, `gender`, `height`, `build`, `hairColor`, `hairLength`, `hairStyle`, `facialHair`, `ethnicApp`, `addInfo`) VALUES
(4, 'Asiong', 'Salonga', 'rape,theif,murder', 'Anonas St., Sta.Mesa', 'HINALAY ANG ISANG BABAE NA WALANG KALABAN LABAN AT PINAG NAKAWAN ITO AT PAGKATAPOS NITONG GAWIN ANG KADUMALDUMAL NA KRIMEN SYA AY BINATAY NG SUSPEK BANDANG ALAS.', 'AROUND\r\n 9PM-10PM', '2017-06-02 00:00:00', '25', 'Male', '5\'8', 'slim', 'Black', 'short', 'spicky', 'beard', 'Filipino American', 'tatoo on the forehead, no teeeth, big eyes.'),
(26, 'jhumari', 'roca', 'theif,carnaping', 'Anonas St., Sta.Mesa', '', '00:00:00', '2017-06-02 00:00:00', '25', 'M', '5\'8', 'slim', '', 'short', 'spicky', 'beard', '', ''),
(27, 'Asiong', 'Salonga', 'rape,theif,murder', 'Anonas St., Sta.Mesa', '', '00:00:00', '2017-06-02 00:00:00', '25', 'M', '5\'8', 'slim', '', 'short', 'spicky', 'beard', '', ''),
(28, 'Asiong', 'Salonga', 'rape,theif,murder', 'Anonas St., Sta.Mesa', '', '00:00:00', '2017-06-02 00:00:00', '25', 'M', '5\'8', 'slim', '', 'short', 'spicky', 'beard', '', ''),
(29, 'jhumari', 'roca', 'theif,carnaping', 'Anonas St., Sta.Mesa', '', '00:00:00', '2017-06-02 00:00:00', '25', 'M', '5\'8', 'slim', '', 'short', 'spicky', 'beard', '', ''),
(30, 'Asiong', 'Salonga', 'rape,theif,murder', 'Anonas St., Sta.Mesa', '', '00:00:00', '2017-06-02 00:00:00', '25', 'M', '5\'8', 'slim', '', 'short', 'spicky', 'beard', '', ''),
(31, 'Asiong', 'Salonga', 'rape,theif,murder', 'Anonas St., Sta.Mesa', '', '00:00:00', '2017-06-02 00:00:00', '25', 'M', '5\'8', 'slim', '', 'short', 'spicky', 'beard', '', ''),
(32, 'jhumari', 'roca', 'theif,carnaping', 'Anonas St., Sta.Mesa', '', '00:00:00', '2017-06-02 00:00:00', '25', 'M', '5\'8', 'slim', '', 'short', 'spicky', 'beard', '', ''),
(33, 'Asiong', 'Salonga', 'rape,theif,murder', 'Anonas St., Sta.Mesa', '', '00:00:00', '2017-06-02 00:00:00', '25', 'M', '5\'8', 'slim', '', 'short', 'spicky', 'beard', '', ''),
(34, 'Asiong', 'Salonga', 'rape,theif,murder', 'Anonas St., Sta.Mesa', '', '00:00:00', '2017-06-02 00:00:00', '25', 'M', '5\'8', 'slim', '', 'short', 'spicky', 'beard', '', ''),
(35, 'jhumari', 'roca', 'theif,carnaping', 'Anonas St., Sta.Mesa', '', '00:00:00', '2017-06-02 00:00:00', '25', 'M', '5\'8', 'slim', '', 'short', 'spicky', 'beard', '', ''),
(36, 'Asiong', 'Salonga', 'rape,theif,murder', 'Anonas St., Sta.Mesa', '', '00:00:00', '2017-06-02 00:00:00', '25', 'M', '5\'8', 'slim', '', 'short', 'spicky', 'beard', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`accountID`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `accounts_fk0` (`userTypeID`);

--
-- Indexes for table `approvedreports`
--
ALTER TABLE `approvedreports`
  ADD PRIMARY KEY (`reportID`),
  ADD KEY `approvedReports_fk1` (`approverID`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`attch_ID`),
  ADD KEY `attachments_fk0` (`reportID`);

--
-- Indexes for table `chatlogs`
--
ALTER TABLE `chatlogs`
  ADD PRIMARY KEY (`chatID`),
  ADD KEY `reportID` (`reportID`);

--
-- Indexes for table `closedreports`
--
ALTER TABLE `closedreports`
  ADD PRIMARY KEY (`reportID`),
  ADD KEY `closedReports_fk1` (`closedByID`);

--
-- Indexes for table `involvedparty`
--
ALTER TABLE `involvedparty`
  ADD PRIMARY KEY (`inv_ID`),
  ADD KEY `involedParty_fk0` (`reportID`);

--
-- Indexes for table `involvedvehicle`
--
ALTER TABLE `involvedvehicle`
  ADD PRIMARY KEY (`inv_VehID`),
  ADD KEY `involvedVehicle_fk0` (`reportID`);

--
-- Indexes for table `keepsafe`
--
ALTER TABLE `keepsafe`
  ADD PRIMARY KEY (`tipID`),
  ADD UNIQUE KEY `tipID` (`tipID`),
  ADD UNIQUE KEY `cIdentifier` (`cIdentifier`),
  ADD UNIQUE KEY `cSidebarLink` (`cSidebarLink`);

--
-- Indexes for table `ligtastips`
--
ALTER TABLE `ligtastips`
  ADD PRIMARY KEY (`tipID`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`noteID`),
  ADD KEY `notes_fk0` (`accountID`),
  ADD KEY `notes_fk1` (`reportID`);

--
-- Indexes for table `referencecodes`
--
ALTER TABLE `referencecodes`
  ADD PRIMARY KEY (`referenceID`),
  ADD KEY `referenceCodes_fk0` (`reportID`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`reportID`);

--
-- Indexes for table `sender`
--
ALTER TABLE `sender`
  ADD PRIMARY KEY (`senderID`),
  ADD KEY `sender_fk0` (`reportID`);

--
-- Indexes for table `unsolved`
--
ALTER TABLE `unsolved`
  ADD PRIMARY KEY (`caseID`);

--
-- Indexes for table `unsolvedgivedtips`
--
ALTER TABLE `unsolvedgivedtips`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `updatelog`
--
ALTER TABLE `updatelog`
  ADD PRIMARY KEY (`updateID`),
  ADD KEY `updateLog_fk0` (`reportID`);

--
-- Indexes for table `usertypes`
--
ALTER TABLE `usertypes`
  ADD PRIMARY KEY (`userTypeID`);

--
-- Indexes for table `wanted`
--
ALTER TABLE `wanted`
  ADD PRIMARY KEY (`wantedID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `accountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `attch_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chatlogs`
--
ALTER TABLE `chatlogs`
  MODIFY `chatID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `involvedparty`
--
ALTER TABLE `involvedparty`
  MODIFY `inv_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `involvedvehicle`
--
ALTER TABLE `involvedvehicle`
  MODIFY `inv_VehID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `keepsafe`
--
ALTER TABLE `keepsafe`
  MODIFY `tipID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ligtastips`
--
ALTER TABLE `ligtastips`
  MODIFY `tipID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `noteID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `reportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `sender`
--
ALTER TABLE `sender`
  MODIFY `senderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `unsolvedgivedtips`
--
ALTER TABLE `unsolvedgivedtips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `updatelog`
--
ALTER TABLE `updatelog`
  MODIFY `updateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `usertypes`
--
ALTER TABLE `usertypes`
  MODIFY `userTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wanted`
--
ALTER TABLE `wanted`
  MODIFY `wantedID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_fk0` FOREIGN KEY (`userTypeID`) REFERENCES `usertypes` (`userTypeID`);

--
-- Constraints for table `approvedreports`
--
ALTER TABLE `approvedreports`
  ADD CONSTRAINT `approvedReports_fk0` FOREIGN KEY (`reportID`) REFERENCES `reports` (`reportID`),
  ADD CONSTRAINT `approvedReports_fk1` FOREIGN KEY (`approverID`) REFERENCES `accounts` (`accountID`);

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_fk0` FOREIGN KEY (`reportID`) REFERENCES `reports` (`reportID`);

--
-- Constraints for table `chatlogs`
--
ALTER TABLE `chatlogs`
  ADD CONSTRAINT `chatlogs_ibfk_1` FOREIGN KEY (`reportID`) REFERENCES `reports` (`reportID`);

--
-- Constraints for table `closedreports`
--
ALTER TABLE `closedreports`
  ADD CONSTRAINT `closedReports_fk0` FOREIGN KEY (`reportID`) REFERENCES `reports` (`reportID`),
  ADD CONSTRAINT `closedReports_fk1` FOREIGN KEY (`closedByID`) REFERENCES `accounts` (`accountID`);

--
-- Constraints for table `involvedparty`
--
ALTER TABLE `involvedparty`
  ADD CONSTRAINT `involedParty_fk0` FOREIGN KEY (`reportID`) REFERENCES `reports` (`reportID`);

--
-- Constraints for table `involvedvehicle`
--
ALTER TABLE `involvedvehicle`
  ADD CONSTRAINT `involvedVehicle_fk0` FOREIGN KEY (`reportID`) REFERENCES `reports` (`reportID`);

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_fk0` FOREIGN KEY (`accountID`) REFERENCES `accounts` (`accountID`),
  ADD CONSTRAINT `notes_fk1` FOREIGN KEY (`reportID`) REFERENCES `reports` (`reportID`);

--
-- Constraints for table `referencecodes`
--
ALTER TABLE `referencecodes`
  ADD CONSTRAINT `referenceCodes_fk0` FOREIGN KEY (`reportID`) REFERENCES `reports` (`reportID`);

--
-- Constraints for table `sender`
--
ALTER TABLE `sender`
  ADD CONSTRAINT `sender_fk0` FOREIGN KEY (`reportID`) REFERENCES `reports` (`reportID`);

--
-- Constraints for table `updatelog`
--
ALTER TABLE `updatelog`
  ADD CONSTRAINT `updateLog_fk0` FOREIGN KEY (`reportID`) REFERENCES `reports` (`reportID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
