-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 16, 2018 at 08:06 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slogins`
--

CREATE TABLE `tbl_slogins` (
  `slogin_id` int(10) UNSIGNED NOT NULL,
  `slogin_name` varchar(250) NOT NULL,
  `slogin_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slogins`
--

INSERT INTO `tbl_slogins` (`slogin_id`, `slogin_name`, `slogin_date`) VALUES
(1, 'quinnedy', '2018-02-16 01:51:28'),
(2, 'quinnedy', '2018-02-16 02:01:30'),
(3, 'quinnedy', '2018-02-16 02:02:03'),
(4, 'quinnedy', '2018-02-16 02:15:31'),
(5, 'quinnedy', '2018-02-16 02:15:53'),
(6, 'quinnedy', '2018-02-16 02:48:39'),
(7, 'quinnedy', '2018-02-16 02:54:10'),
(8, 'quinnedy', '2018-02-16 03:00:39'),
(9, 'quinnedy', '2018-02-16 03:02:18'),
(10, 'quinnedy', '2018-02-16 03:04:42'),
(11, 'quinnedy', '2018-02-16 03:04:47'),
(12, 'quinnedy', '2018-02-16 03:19:35'),
(13, 'quinnedy', '2018-02-16 03:29:17'),
(14, 'quinnedy', '2018-02-16 03:29:25'),
(15, 'quinnedy', '2018-02-16 03:36:10'),
(16, 'quinnedy', '2018-02-16 03:36:16'),
(17, 'quinnedy', '2018-02-16 03:37:57'),
(18, 'quinnedy', '2018-02-16 04:15:54'),
(19, 'quinnedy', '2018-02-16 18:03:46'),
(20, 'quinnedy', '2018-02-16 18:29:31'),
(21, 'quinnedy', '2018-02-16 18:31:16'),
(22, 'jkenn22', '2018-02-16 18:32:52'),
(23, 'quinnedy', '2018-02-16 18:33:47'),
(24, 'quinnedy', '2018-02-16 18:35:37'),
(25, 'quinnedy', '2018-02-16 18:47:08'),
(26, 'quinnedy', '2018-02-16 19:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`) VALUES
(1, 'Quinn', 'quinnedy', 'apassword', 'qnnkennedy922@gmail.com', '2018-02-15 23:13:21'),
(2, 'Jon', 'jkenn22', 'apassword2', 'jkenn22@uwo.ca', '2018-02-16 18:32:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_slogins`
--
ALTER TABLE `tbl_slogins`
  ADD PRIMARY KEY (`slogin_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_slogins`
--
ALTER TABLE `tbl_slogins`
  MODIFY `slogin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
