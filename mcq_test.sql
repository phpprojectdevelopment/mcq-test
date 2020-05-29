-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2020 at 04:39 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcq_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` int(10) NOT NULL,
  `option` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option`, `created_at`, `updated_at`) VALUES
(1, 1, 'Long Ball Wide', '2020-05-28 02:07:05', '2020-05-28 02:07:05'),
(2, 1, 'Leg Beyond Width', '2020-05-28 02:07:05', '2020-05-28 02:07:05'),
(3, 1, 'Leg Before Wicket', '2020-05-28 02:07:41', '2020-05-28 02:07:41'),
(4, 1, 'Lol \'Bout to Win', '2020-05-28 02:07:41', '2020-05-28 02:07:41'),
(5, 2, 'Australia', '2020-05-28 02:08:08', '2020-05-28 02:08:08'),
(6, 2, 'Sri Lanka', '2020-05-28 02:08:08', '2020-05-28 02:08:08'),
(7, 2, 'New Zealand', '2020-05-28 02:08:34', '2020-05-28 02:08:34'),
(8, 2, 'Belarus', '2020-05-28 02:08:34', '2020-05-28 02:08:34'),
(9, 3, '90 minutes', '2020-05-28 02:09:08', '2020-05-28 02:09:08'),
(10, 3, '6 hours', '2020-05-28 02:09:08', '2020-05-28 02:09:08'),
(11, 3, '3 to 5 days', '2020-05-28 02:09:38', '2020-05-28 02:09:38'),
(12, 3, 'Over a week', '2020-05-28 02:09:38', '2020-05-28 02:09:38'),
(13, 4, 'By scoring the most goals', '2020-05-28 02:10:14', '2020-05-28 02:10:14'),
(14, 4, 'By scoring the most runs and losing the least wickets', '2020-05-28 02:10:14', '2020-05-28 02:10:14'),
(15, 4, 'By losing all your wickets', '2020-05-28 02:10:47', '2020-05-28 02:10:47'),
(16, 4, 'By cheating', '2020-05-28 02:10:47', '2020-05-28 02:10:47'),
(17, 5, 'An Umpire', '2020-05-28 02:11:18', '2020-05-28 02:11:18'),
(18, 5, 'A vampire', '2020-05-28 02:11:18', '2020-05-28 02:11:18'),
(19, 5, 'A cricketeferee', '2020-05-28 02:11:53', '2020-05-28 02:11:53'),
(20, 5, 'A Cricketumpireferee', '2020-05-28 02:11:53', '2020-05-28 02:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(260) NOT NULL,
  `right_option` bigint(20) NOT NULL COMMENT 'column option_id from table options',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `right_option`, `created_at`, `updated_at`) VALUES
(1, 'What does LBW stand for?', 3, '2020-05-28 02:03:14', '2020-05-28 02:03:14'),
(2, 'Who did England beat in the final of the 2019 Cricket World Cup?', 5, '2020-05-28 05:06:57', '2020-05-28 05:06:57'),
(3, 'How long do test cricket matches usually go on for?', 11, '2020-05-28 05:07:21', '2020-05-28 05:07:21'),
(4, 'How do you win at cricket?', 14, '2020-05-28 05:08:02', '2020-05-28 05:08:02'),
(5, 'What do you call a referee in cricket?', 17, '2020-05-28 05:08:25', '2020-05-28 05:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'amzad', 'khan', 'rl.amzadkhan@gmail.com', '4ba96764eedccdad4c74372ab2c7ae2c:wFD2HwPBHGH1OZR9b3IbSWXDilD3bCxJ', '2020-05-28 12:26:53', '2020-05-28 12:26:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
