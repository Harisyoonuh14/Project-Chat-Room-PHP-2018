-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2018 at 04:05 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chatid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `chatroomid` int(11) NOT NULL,
  `file` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL,
  `chat_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chatid`, `userid`, `chatroomid`, `file`, `message`, `chat_date`) VALUES
(228, 8, 20, '', 'Hello', '2018-11-07 00:42:03'),
(229, 8, 20, 'upload/gallardo-0638_1541526131.jpg', '', '2018-11-07 00:42:11'),
(230, 8, 20, '', 'I like this car', '2018-11-07 00:44:37'),
(231, 11, 20, '', 'wow', '2018-11-07 11:18:11'),
(232, 11, 20, '', 'i like too', '2018-11-07 11:18:17'),
(233, 11, 20, 'upload/senna1_1541564309.jpg', '', '2018-11-07 11:18:29'),
(239, 11, 20, 'upload/gallardo-0638_1541587387.jpg', '', '2018-11-07 17:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `chatroom`
--

CREATE TABLE `chatroom` (
  `chatroomid` int(11) NOT NULL,
  `chat_name` varchar(60) NOT NULL,
  `date_created` datetime NOT NULL,
  `chat_password` varchar(30) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatroom`
--

INSERT INTO `chatroom` (`chatroomid`, `chat_name`, `date_created`, `chat_password`, `userid`) VALUES
(4, 'IT Student59', '2018-10-26 14:51:55', '1234', 1),
(7, 'Public Chat', '2018-11-04 20:22:00', '', 5),
(8, 'Thai Student', '2018-11-04 20:22:23', 'thai', 5),
(9, 'Teacher Room', '2018-11-04 20:22:33', 'teacher', 5),
(10, 'Database Room', '2018-11-04 20:23:23', 'db', 5),
(16, 'PHP Room', '2018-11-06 22:58:44', 'php', 1),
(17, 'Q&A Room', '2018-11-06 22:58:58', '', 1),
(18, 'Java Room', '2018-11-06 22:59:28', 'java', 1),
(19, 'Admin Room', '2018-11-06 22:59:59', 'admin', 1),
(20, 'My room 59', '2018-11-07 00:41:18', 'my', 8),
(22, 'multi', '2018-11-07 17:37:57', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chat_member`
--

CREATE TABLE `chat_member` (
  `chat_memberid` int(11) NOT NULL,
  `chatroomid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_member`
--

INSERT INTO `chat_member` (`chat_memberid`, `chatroomid`, `userid`) VALUES
(5, 4, 1),
(15, 7, 5),
(16, 8, 5),
(17, 9, 5),
(18, 10, 5),
(42, 16, 1),
(43, 17, 1),
(44, 18, 1),
(45, 19, 1),
(47, 20, 8),
(48, 20, 6),
(49, 17, 8),
(54, 18, 6),
(55, 16, 6),
(56, 22, 1),
(59, 22, 11),
(60, 17, 11),
(61, 20, 11);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(150) DEFAULT NULL,
  `uname` varchar(60) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `access` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `uname`, `photo`, `access`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'upload/admin2_1541587218.png', 1),
(5, 'haris', 'c0ba88b8bca79ca3b50b96abdf431766', 'haris', '', 1),
(6, 'musron', 'ebe3df4675c64946f9e6e0da0c41327f', 'musron', 'upload/22_1541525900.jpg', 2),
(8, 'atip', 'cdb48e76fe338d7d1ed13ec115de8101', 'atip', '', 2),
(9, 'suf', 'ac9dfa5e755e830154a57e3e086c2a35', 'suf', '', 2),
(11, 'anasm', '81dc9bdb52d04dc20036dbd8313ed055', 'anasM', 'upload/7800_1541587376.jpg', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatid`);

--
-- Indexes for table `chatroom`
--
ALTER TABLE `chatroom`
  ADD PRIMARY KEY (`chatroomid`);

--
-- Indexes for table `chat_member`
--
ALTER TABLE `chat_member`
  ADD PRIMARY KEY (`chat_memberid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `chatroom`
--
ALTER TABLE `chatroom`
  MODIFY `chatroomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `chat_member`
--
ALTER TABLE `chat_member`
  MODIFY `chat_memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
