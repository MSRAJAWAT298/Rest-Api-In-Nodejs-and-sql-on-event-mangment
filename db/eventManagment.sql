-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: database
-- Generation Time: Mar 15, 2022 at 04:00 AM
-- Server version: 10.6.5-MariaDB-1:10.6.5+maria~focal-log
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventManagment`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_details`
--

CREATE TABLE `event_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_starting_time` datetime NOT NULL,
  `event_duration` time NOT NULL,
  `status` enum('1','0') NOT NULL COMMENT '"1"=>event is active or comming soon,"0"=>event expire',
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_on` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_details`
--

INSERT INTO `event_details` (`id`, `user_id`, `event_name`, `event_starting_time`, `event_duration`, `status`, `created_on`, `updated_on`) VALUES
(1, 1, 'Cocktail Party', '2022-01-30 01:30:00', '01:00:00', '1', '2022-03-12 15:50:07', '2022-03-15 07:54:57'),
(2, 1, 'Corporate Event', '2022-03-02 15:53:49', '02:00:00', '1', '2022-03-12 15:50:29', '2022-03-15 00:49:17'),
(3, 1, 'Corporate Event', '2022-03-11 15:53:58', '02:00:00', '1', '2022-03-12 15:50:48', '2022-03-15 00:49:17'),
(4, 1, 'India Event', '2022-03-02 02:00:00', '03:00:00', '1', '2022-03-12 15:51:23', '2022-03-15 00:49:17'),
(5, 1, 'Flim and TV Show', '2022-03-02 03:00:00', '04:00:00', '1', '2022-03-12 15:51:29', '2022-03-15 00:49:17'),
(6, 1, 'Advertisement Film Shooting', '2022-03-03 04:30:00', '05:00:00', '1', '2022-03-12 15:51:33', '2022-03-15 00:49:17'),
(7, 1, 'Live Show', '2022-03-04 05:30:00', '06:00:00', '1', '2022-03-12 15:51:38', '2022-03-15 00:49:17'),
(8, 1, 'Hospitality Services', '2022-03-05 06:00:00', '07:00:00', '1', '2022-03-12 15:51:44', '2022-03-15 00:49:17'),
(9, 1, 'Marriage Arrangement', '2022-03-06 07:00:00', '08:00:00', '1', '2022-03-12 15:51:49', '2022-03-15 00:49:17'),
(10, 1, 'Indian Wedding', '2022-03-07 08:00:00', '09:00:00', '1', '2022-03-12 15:51:54', '2022-03-15 00:49:17'),
(11, 1, 'Beach Wedding', '2022-03-08 10:00:00', '10:00:00', '1', '2022-03-12 15:52:00', '2022-03-15 00:49:17'),
(12, 1, 'Royal Wedding', '2022-03-09 09:00:00', '11:00:00', '1', '2022-03-12 15:52:04', '2022-03-15 00:49:17'),
(13, 1, 'Wedding Theme', '2022-03-20 11:00:00', '12:00:00', '1', '2022-03-12 15:52:10', '2022-03-15 00:49:17'),
(14, 1, 'Wedding Venues', '2022-03-21 12:00:00', '13:00:00', '1', '2022-03-12 15:52:15', '2022-03-15 00:49:17'),
(15, 1, 'Reception Ceremony', '2022-03-16 16:34:00', '14:00:00', '1', '2022-03-12 15:52:20', '2022-03-15 08:18:56'),
(16, 1, 'Cocktail Party', '2022-03-15 09:19:00', '01:00:00', '1', '2022-03-15 08:49:55', '2022-03-15 09:10:46'),
(17, 1, 'Cocktail Party new test', '2022-04-30 01:30:00', '01:00:00', '1', '2022-03-15 09:10:32', '2022-03-15 09:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` char(60) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` enum('Admin','SuperUser') DEFAULT 'SuperUser'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `role`) VALUES
(1, 'msrajawat298', '123', 'Mayank', 'singh', 'msrajawat298@gmail.com', 'SuperUser');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_details`
--
ALTER TABLE `event_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_details`
--
ALTER TABLE `event_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
