-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 28, 2022 at 02:50 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dreamphotography`
--

-- --------------------------------------------------------

--
-- Table structure for table `contest_watch`
--

CREATE TABLE `contest_watch` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contest_id` varchar(255) NOT NULL,
  `is_status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contest_watch`
--

INSERT INTO `contest_watch` (`id`, `user_id`, `contest_id`, `is_status`, `created_at`, `updated_at`) VALUES
(1, 6, 'c607-092022', '1', '2022-09-28 09:27:54', '2022-09-28 09:27:54'),
(2, 6, 'c739-092022', '1', '2022-09-28 09:27:59', '2022-09-28 09:27:59'),
(3, 5, 'c739-092022', '1', '2022-09-28 09:28:41', '2022-09-28 09:28:41'),
(4, 5, 'c764-092022', '1', '2022-09-28 09:28:44', '2022-09-28 09:28:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contest_watch`
--
ALTER TABLE `contest_watch`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contest_watch`
--
ALTER TABLE `contest_watch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
