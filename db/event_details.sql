-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: database
-- Generation Time: Mar 12, 2022 at 11:15 AM
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

INSERT INTO `event_details` (`id`, `event_name`, `event_starting_time`, `event_duration`, `status`, `created_on`, `updated_on`) VALUES
(1, 'Cocktail Party', '2022-01-30 01:30:00', '01:00:00', '1', '2022-03-12 15:50:07', '2022-03-12 15:50:07'),
(2, 'Corporate Event', '2022-03-02 15:53:49', '02:00:00', '1', '2022-03-12 15:50:29', '2022-03-12 15:53:56'),
(3, 'Corporate Event', '2022-03-11 15:53:58', '02:00:00', '1', '2022-03-12 15:50:48', '2022-03-12 15:54:02'),
(4, 'India Event', '2022-03-02 02:00:00', '03:00:00', '1', '2022-03-12 15:51:23', '2022-03-12 15:51:23'),
(5, 'Flim and TV Show', '2022-03-02 03:00:00', '04:00:00', '1', '2022-03-12 15:51:29', '2022-03-12 15:51:29'),
(6, 'Advertisement Film Shooting', '2022-03-03 04:30:00', '05:00:00', '1', '2022-03-12 15:51:33', '2022-03-12 15:51:33'),
(7, 'Live Show', '2022-03-04 05:30:00', '06:00:00', '1', '2022-03-12 15:51:38', '2022-03-12 15:51:38'),
(8, 'Hospitality Services', '2022-03-05 06:00:00', '07:00:00', '1', '2022-03-12 15:51:44', '2022-03-12 15:51:44'),
(9, 'Marriage Arrangement', '2022-03-06 07:00:00', '08:00:00', '1', '2022-03-12 15:51:49', '2022-03-12 15:51:49'),
(10, 'Indian Wedding', '2022-03-07 08:00:00', '09:00:00', '1', '2022-03-12 15:51:54', '2022-03-12 15:51:54'),
(11, 'Beach Wedding', '2022-03-08 10:00:00', '10:00:00', '1', '2022-03-12 15:52:00', '2022-03-12 15:52:00'),
(12, 'Royal Wedding', '2022-03-09 09:00:00', '11:00:00', '1', '2022-03-12 15:52:04', '2022-03-12 15:52:04'),
(13, 'Wedding Theme', '2022-03-20 11:00:00', '12:00:00', '1', '2022-03-12 15:52:10', '2022-03-12 15:52:10'),
(14, 'Wedding Venues', '2022-03-21 12:00:00', '13:00:00', '1', '2022-03-12 15:52:15', '2022-03-12 15:52:15'),
(15, 'Reception Ceremony', '2022-03-12 16:34:00', '14:00:00', '1', '2022-03-12 15:52:20', '2022-03-12 16:38:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_details`
--
ALTER TABLE `event_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_details`
--
ALTER TABLE `event_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
