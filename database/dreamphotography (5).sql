-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 10, 2022 at 02:23 PM
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
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `role_id`, `image`, `is_admin`, `email_verified_at`, `password`, `is_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(44, 'sourav karmokar', 'sourav@gmail.com', 3, '1659942010.jpg', NULL, NULL, '$2y$10$ZDXo5R.e9dh0/5Q1d/73Ve0BMrPihYg01Zen9EliyJaLpiUkgsEu6', 1, NULL, '2022-06-20 07:09:09', '2022-08-08 01:30:10'),
(45, 'Bijay', 'bijay@gmail.com', 20, '', NULL, NULL, '$2y$10$.WUg4ZV5JVKBS6816ZWHm.tX0K5aGv2L4PlwkmVbP4yYSHbG89GsC', 1, NULL, '2022-06-20 07:09:54', '2022-08-26 05:34:48'),
(46, 'adminpp', 'admin@gmail.com', 2, '1663053057.png', NULL, NULL, '$2y$10$bBSjAef8hflNkMReHMIVGOIAZZ7bth0RBfuXawswLRDrqecw8kFuy', 1, '93S8JMqq8RCkjsEeMYUHguueRu4929BnGtzYDhNpRcqemDBWGDm31MHykjzO', '2022-06-20 07:11:28', '2022-09-13 01:40:57'),
(47, 'developer', 'developer@gmail.com', 6, '', 0, NULL, '$2y$10$bX5RPh7gpLxkZmAOiT4LPutik8o/eiCo2J6iHpCAZvoMYQEHHG5AS', 0, NULL, '2022-06-22 01:06:19', '2022-09-06 07:55:04'),
(64, 'Piyali Bhattachariya', 'piyali@gmail.com', 4, NULL, NULL, NULL, '$2y$10$y6UBMSjV/mXWwgpgfMF4heLkjYfJ6M8j3tfxmD5hWcZAczp08Shvq', 0, NULL, '2022-08-25 04:18:31', '2022-09-24 01:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `contests`
--

CREATE TABLE `contests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contest_type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contest_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_date` date NOT NULL,
  `closing_date` date NOT NULL,
  `opening_time` time NOT NULL,
  `closing_time` time NOT NULL,
  `entry_fees` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `data_protection` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_one` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contest_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contests`
--

INSERT INTO `contests` (`id`, `contest_type_name`, `contest_name`, `opening_date`, `closing_date`, `opening_time`, `closing_time`, `entry_fees`, `is_status`, `data_protection`, `description_one`, `contest_id`, `created_at`, `updated_at`) VALUES
(1, 'Weekly', 'Holi Contest', '2022-11-20', '2022-11-27', '13:13:00', '13:13:00', '10', '1', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.\r\nIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'c85-102022', '2022-10-20 02:14:56', '2022-10-20 02:14:56'),
(2, 'Weekly', 'Puja contest', '2022-11-21', '2022-11-28', '13:15:00', '14:15:00', '20', '1', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'c679-102022', '2022-10-20 02:17:30', '2022-10-20 02:17:30'),
(3, 'Monthly', 'Duga Puja', '2022-11-21', '2022-12-20', '13:18:00', '13:18:00', '25', '1', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'c423-102022', '2022-10-20 02:19:59', '2022-10-20 02:19:59'),
(4, 'Weekly', 'Kali Puja', '2022-11-21', '2022-11-27', '14:20:00', '15:20:00', '10', '1', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'c976-102022', '2022-10-20 02:22:05', '2022-10-20 02:22:05'),
(5, 'Weekly', 'Color Contest', '2022-11-21', '2022-11-28', '14:23:00', '15:23:00', '20', '1', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'c433-102022', '2022-10-20 02:24:17', '2022-10-20 02:24:17'),
(6, 'Weekly', 'Mountain Contest', '2022-11-21', '2022-11-27', '14:25:00', '16:25:00', '45', '1', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'c172-102022', '2022-10-20 02:26:41', '2022-10-20 02:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `contest_categories`
--

CREATE TABLE `contest_categories` (
  `id` int(11) NOT NULL,
  `contest_unique_id` int(11) NOT NULL,
  `contest_id` varchar(255) NOT NULL,
  `number_of_image` int(11) NOT NULL,
  `contest_cat_name` varchar(255) NOT NULL,
  `contest_cat_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_as` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contest_categories`
--

INSERT INTO `contest_categories` (`id`, `contest_unique_id`, `contest_id`, `number_of_image`, `contest_cat_name`, `contest_cat_slug`, `created_at`, `updated_as`) VALUES
(1, 1, 'c85-102022', 2, 'holi one', 'holi_one', '2022-10-20 07:44:56', '2022-10-20 07:44:56'),
(2, 1, 'c85-102022', 4, 'holi two', 'holi_two', '2022-10-20 07:44:56', '2022-10-20 07:44:56'),
(3, 2, 'c679-102022', 3, 'Puja one', 'Puja_one', '2022-10-20 07:47:30', '2022-10-20 07:47:30'),
(4, 2, 'c679-102022', 3, 'puja rtwo', 'puja_rtwo', '2022-10-20 07:47:30', '2022-10-20 07:47:30'),
(5, 2, 'c679-102022', 1, 'puja three', 'puja_three', '2022-10-20 07:47:30', '2022-10-20 07:47:30'),
(6, 3, 'c423-102022', 4, 'Durga puja one', 'Durga_puja_one', '2022-10-20 07:49:59', '2022-10-20 07:49:59'),
(7, 3, 'c423-102022', 2, 'Durga puja two', 'Durga_puja_two', '2022-10-20 07:49:59', '2022-10-20 07:49:59'),
(8, 3, 'c423-102022', 3, 'Durga puja three', 'Durga_puja_three', '2022-10-20 07:49:59', '2022-10-20 07:49:59'),
(9, 4, 'c976-102022', 3, 'Kali puja one', 'Kali_puja_one', '2022-10-20 07:52:05', '2022-10-20 07:52:05'),
(10, 4, 'c976-102022', 1, 'Kali puja two', 'Kali_puja_two', '2022-10-20 07:52:05', '2022-10-20 07:52:05'),
(11, 5, 'c433-102022', 2, 'Color one', 'Color_one', '2022-10-20 07:54:17', '2022-10-20 07:54:17'),
(12, 5, 'c433-102022', 4, 'ciolor two', 'ciolor_two', '2022-10-20 07:54:17', '2022-10-20 07:54:17'),
(13, 6, 'c172-102022', 2, 'hills onbe', 'hills_onbe', '2022-10-20 07:56:41', '2022-10-20 07:56:41'),
(14, 6, 'c172-102022', 4, 'hilkls two', 'hilkls_two', '2022-10-20 07:56:41', '2022-10-20 07:56:41'),
(15, 6, 'c172-102022', 3, 'sky light', 'sky_light', '2022-10-20 07:56:41', '2022-10-20 07:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `contest_gallery_imges`
--

CREATE TABLE `contest_gallery_imges` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gallery_image_show_id` varchar(255) NOT NULL,
  `gallery_contest_unique_id` int(11) NOT NULL,
  `is_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contest_gallery_imges`
--

INSERT INTO `contest_gallery_imges` (`id`, `user_id`, `gallery_image_show_id`, `gallery_contest_unique_id`, `is_status`, `created_at`, `updated_at`) VALUES
(10, 5, '10', 6, 1, '2022-11-16 10:05:14', '2022-11-16 10:05:14'),
(20, 5, '11', 6, 1, '2022-11-25 09:14:22', '2022-11-25 09:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `contest_image_uploads`
--

CREATE TABLE `contest_image_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contest_unique_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contest_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageShow_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_no` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contest_image_uploads`
--

INSERT INTO `contest_image_uploads` (`id`, `contest_unique_id`, `user_id`, `image_path`, `contest_id`, `imageShow_id`, `category_name`, `image_no`, `title`, `created_at`, `updated_at`) VALUES
(1, 4, 5, '/5/c976-102022/Kali puja one/3/1667283579_54BEAF6F-0271-4B7D-A977-0110C6DB08C6.jpeg', 'c976-102022', '20', 'Kali puja one', 3, 'test', '2022-11-01 06:19:39', '2022-11-01 06:19:39'),
(2, 4, 5, '/5/c976-102022/Kali puja one/3/1667283617_91-ai.svg', 'c976-102022', '20', 'Kali puja one', 3, NULL, '2022-11-01 06:20:17', '2022-11-01 06:20:17'),
(4, 4, 5, '/5/c976-102022/Kali puja one/3/1667284306_ABSTRACT_BACKGROUND_01-ai.svg', 'c976-102022', '00', 'Kali puja one', 3, NULL, '2022-11-01 06:31:46', '2022-11-01 06:31:46'),
(7, 6, 6, '/6/c172-102022/hilkls two/4/1667285742_5-ai (1).svg', 'c172-102022', '11', 'hilkls two', 4, 'amita', '2022-11-01 06:55:42', '2022-11-01 06:55:42'),
(8, 6, 7, '/7/c172-102022/hills onbe/2/1667553834_91-ai.svg', 'c172-102022', '00', 'hills onbe', 2, 'test', '2022-11-04 09:23:54', '2022-11-04 09:23:54'),
(9, 6, 8, '/8/c172-102022/hills onbe/2/1667814230_2364519-ai.svg', 'c172-102022', '00', 'hills onbe', 2, 'john', '2022-11-07 09:43:50', '2022-11-07 09:43:50'),
(10, 5, 8, '/8/c433-102022/Color one/2/1667981945_842.svg', 'c433-102022', '10', 'Color one', 2, 'school', '2022-11-09 08:19:05', '2022-11-09 08:19:05'),
(15, 2, 5, '/5/c679-102022/Puja one/3/1668413956_611ebf30463d636de9af43df-ai.svg', 'c679-102022', '00', 'Puja one', 3, 'aaa', '2022-11-14 08:19:16', '2022-11-14 08:19:16'),
(16, 6, 8, '/8/c172-102022/hilkls two/4/1668588532_BF886AB6-5E7D-49D0-9938-E9B91481902A.png', 'c172-102022', '01', 'hilkls two', 4, 'aa', '2022-11-16 08:48:52', '2022-11-16 08:48:52'),
(17, 6, 8, '/8/c172-102022/hilkls two/4/1668588599_115B80D6-362A-47D8-B251-C4F17FE6FA97.jpeg', 'c172-102022', '11', 'hilkls two', 4, 'as', '2022-11-16 08:49:59', '2022-11-16 08:49:59'),
(18, 5, 8, '/8/c433-102022/ciolor two/4/1668588698_296280-P7FFCY-629-ai.svg', 'c433-102022', '21', 'ciolor two', 4, 'ASSA', '2022-11-16 08:51:38', '2022-11-16 08:51:38'),
(19, 5, 8, '/8/c433-102022/ciolor two/4/1668588716_2450-ai.svg', 'c433-102022', '11', 'ciolor two', 4, 'SAS', '2022-11-16 08:51:56', '2022-11-16 08:51:56'),
(23, 6, 5, '/5/c172-102022/hills onbe/2/1668769802_blogpost_slider_2-2-1.png', 'c172-102022', 'undefined', 'hills onbe', 2, 'undefined', '2022-11-18 11:10:02', '2022-11-18 11:10:02'),
(24, 6, 5, '/5/c172-102022/hills onbe/2/1668769830_3d-apple-logo-wallpaper-thumb.jpeg', 'c172-102022', 'undefined', 'hills onbe', 2, 'undefined', '2022-11-18 11:10:30', '2022-11-18 11:10:30'),
(59, 6, 5, '/5/c172-102022/hilkls two/4/1669111973_typography-motivational-word-clouds-simple-background-wallpaper-preview.jpeg', 'c172-102022', 'undefined', 'hilkls two', 4, 'undefined', '2022-11-22 10:12:53', '2022-11-22 10:12:53'),
(60, 6, 5, '/5/c172-102022/hilkls two/4/1669112003_1D376C55-9FA7-4D0D-B69B-23332E055D37.jpeg', 'c172-102022', 'undefined', 'hilkls two', 4, 'undefined', '2022-11-22 10:13:23', '2022-11-22 10:13:23'),
(61, 6, 5, '/5/c172-102022/hilkls two/4/1669112280_1D376C55-9FA7-4D0D-B69B-23332E055D37.jpeg', 'c172-102022', 'undefined', 'hilkls two', 4, 'undefined', '2022-11-22 10:18:00', '2022-11-22 10:18:00'),
(62, 6, 5, '/5/c172-102022/hilkls two/4/1669112772_4824-ai.svg', 'c172-102022', 'C:\\fakepath\\4824-ai.svg', 'hilkls two', 4, 'undefined', '2022-11-22 10:26:12', '2022-11-22 10:26:12'),
(73, 6, 5, '/5/c172-102022/hilkls two/4/1669123870_pexels-luis-del-río-15286.jpg', 'c172-102022', '31', 'hilkls two', 4, 'undefined', '2022-11-22 13:31:10', '2022-11-22 13:31:10'),
(74, 6, 5, '/5/c172-102022/hilkls two/4/1669123941_18715887-ai.svg', 'c172-102022', '11', 'hilkls two', 4, 'undefined', '2022-11-22 13:32:21', '2022-11-22 13:32:21'),
(82, 6, 5, '/5/c172-102022/hills onbe/2/1669202257_5228591-ai.svg', 'c172-102022', '10', 'hills onbe', 2, 'undefined', '2022-11-23 11:17:37', '2022-11-23 11:17:37'),
(90, 6, 5, '/5/c172-102022/hilkls two/4/1669207613_7EC72DAE-971F-405B-AEBE-D50951CFBAF5.jpeg', 'c172-102022', '21', 'hilkls two', 4, 'undefined', '2022-11-23 12:46:53', '2022-11-23 12:46:53'),
(92, 5, 5, '/5/c433-102022/Color one/2/1669208978_pexels-luis-del-río-15286.jpg', 'c433-102022', '10', 'Color one', 2, 'undefined', '2022-11-23 13:09:38', '2022-11-23 13:09:38'),
(93, 5, 5, '/5/c433-102022/ciolor two/4/1669209155_7EC72DAE-971F-405B-AEBE-D50951CFBAF5.jpeg', 'c433-102022', '21', 'ciolor two', 4, 'undefined', '2022-11-23 13:12:35', '2022-11-23 13:12:35'),
(96, 6, 5, '/5/c172-102022/hills onbe/2/1669296199_BF886AB6-5E7D-49D0-9938-E9B91481902A.jpeg', 'c172-102022', '00', 'hills onbe', 2, 'undefined', '2022-11-24 13:23:19', '2022-11-24 13:23:19'),
(97, 6, 5, '/5/c172-102022/hills onbe/2/1669296313_blogpost_slider_2-2-1 1.png', 'c172-102022', '00', 'hills onbe', 2, 'undefined', '2022-11-24 13:25:13', '2022-11-24 13:25:13'),
(98, 5, 5, '/5/c433-102022/ciolor two/4/1669367701_611ebf30463d636de9af43df-ai.svg', 'c433-102022', '11', 'ciolor two', 4, 'undefined', '2022-11-25 09:15:02', '2022-11-25 09:15:02'),
(99, 6, 5, '/5/c172-102022/sky light/3/1669367964_2121212-ai.svg', 'c172-102022', '12', 'sky light', 3, 'undefined', '2022-11-25 09:19:24', '2022-11-25 09:19:24'),
(102, 6, 10, '/10/c172-102022/hills onbe/2/1670331755_3d-apple-logo-wallpaper-thumb.jpeg', 'c172-102022', '00', 'hills onbe', 2, 'undefined', '2022-12-06 13:02:35', '2022-12-06 13:02:35'),
(103, 6, 10, '/10/c172-102022/hills onbe/2/1670482329_img1.jpeg', 'c172-102022', '10', 'hills onbe', 2, 'undefined', '2022-12-08 06:52:09', '2022-12-08 06:52:09'),
(104, 6, 10, '/U1670331629/c172-102022/hilkls two/4/1670484293_img1.jpeg', 'c172-102022', '11', 'hilkls two', 4, 'undefined', '2022-12-08 07:24:53', '2022-12-08 07:24:53'),
(105, 6, 10, '/U1670331629/c172-102022/sky light/3/1670484445_3477C635-0058-44E8-B456-C4B1B1B5ED99.png', 'c172-102022', '22', 'sky light', 3, 'undefined', '2022-12-08 07:27:25', '2022-12-08 07:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `contest_payments`
--

CREATE TABLE `contest_payments` (
  `id` int(11) NOT NULL,
  `contest_unique_id` int(11) DEFAULT NULL,
  `payment_mode` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `default_user_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contest_id` varchar(255) DEFAULT NULL,
  `contest_type_name` varchar(255) DEFAULT NULL,
  `contest_name` varchar(255) DEFAULT NULL,
  `opening_date` date DEFAULT NULL,
  `closing_date` date DEFAULT NULL,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `entry_fees_amount` varchar(255) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contest_payments`
--

INSERT INTO `contest_payments` (`id`, `contest_unique_id`, `payment_mode`, `payment_status`, `payment_id`, `user_id`, `default_user_id`, `name`, `email`, `contest_id`, `contest_type_name`, `contest_name`, `opening_date`, `closing_date`, `opening_time`, `closing_time`, `entry_fees_amount`, `created_date`, `updated_date`) VALUES
(3, 6, 'Paid by Paypal', 'COMPLETED', '8X9036679P8777401', 10, 'U1670331629', 'Piyali Bhattachariya', 'piyali@gmail.com', 'c172-102022', 'Weekly', 'Mountain Contest', '2022-11-21', '2022-11-27', '14:25:00', '16:25:00', '1', '2022-12-08 11:03:09', '2022-12-08 11:03:09'),
(4, 6, 'Paid by Paypal', 'COMPLETED', '9A967213TA0743709', 5, '#1663058461', 'user', 'user@gmail.com', 'c172-102022', 'Weekly', 'Mountain Contest', '2022-11-21', '2022-11-27', '14:25:00', '16:25:00', '1', '2022-12-08 11:04:29', '2022-12-08 11:04:29'),
(5, 5, 'Paid by Paypal', 'COMPLETED', '6K09660378423480T', 5, '#1663058461', 'user', 'user@gmail.com', 'c433-102022', 'Weekly', 'Color Contest', '2022-11-21', '2022-11-28', '14:23:00', '15:23:00', '1', '2022-12-08 11:05:03', '2022-12-08 11:05:03');

-- --------------------------------------------------------

--
-- Table structure for table `contest_prize_amounts`
--

CREATE TABLE `contest_prize_amounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contest_unique_id` int(11) NOT NULL,
  `contest_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prize_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prize_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prize_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contest_prize_amounts`
--

INSERT INTO `contest_prize_amounts` (`id`, `contest_unique_id`, `contest_id`, `prize_amount`, `prize_name`, `prize_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'c85-102022', '2000', '1st prize', 'first-prize', '2022-10-20 07:44:56', '2022-10-20 07:44:56'),
(2, 1, 'c85-102022', '1500', '2nd prize', 'secend-prize', '2022-10-20 07:44:56', '2022-10-20 07:44:56'),
(3, 1, 'c85-102022', '1000', '3rd prize', 'third-prize', '2022-10-20 07:44:56', '2022-10-20 07:44:56'),
(4, 2, 'c679-102022', '3000', '1st prize', 'first-prize', '2022-10-20 07:47:30', '2022-10-20 07:47:30'),
(5, 2, 'c679-102022', '2000', '2nd prize', 'secend-prize', '2022-10-20 07:47:30', '2022-10-20 07:47:30'),
(6, 2, 'c679-102022', '1400', '3rd prize', 'third-prize', '2022-10-20 07:47:30', '2022-10-20 07:47:30'),
(7, 3, 'c423-102022', '1000', '1st prize', 'first-prize', '2022-10-20 07:49:59', '2022-10-20 07:49:59'),
(8, 3, 'c423-102022', '800', '2nd prize', 'secend-prize', '2022-10-20 07:49:59', '2022-10-20 07:49:59'),
(9, 3, 'c423-102022', '500', '3rd  prize', 'third-prize', '2022-10-20 07:49:59', '2022-10-20 07:49:59'),
(10, 4, 'c976-102022', '5000', '1st prize', 'first-prize', '2022-10-20 07:52:05', '2022-10-20 07:52:05'),
(11, 4, 'c976-102022', '4000', '2nd prize', 'secend-prize', '2022-10-20 07:52:05', '2022-10-20 07:52:05'),
(12, 4, 'c976-102022', '3000', '3rd prize', 'third-prize', '2022-10-20 07:52:05', '2022-10-20 07:52:05'),
(13, 5, 'c433-102022', '10000', '1st prize', 'first-prize', '2022-10-20 07:54:17', '2022-10-20 07:54:17'),
(14, 5, 'c433-102022', '8000', '2nd prize', 'secend-prize', '2022-10-20 07:54:17', '2022-10-20 07:54:17'),
(15, 5, 'c433-102022', '5000', '3rd prize', 'third-prize', '2022-10-20 07:54:17', '2022-10-20 07:54:17'),
(16, 6, 'c172-102022', '5000', '1st prize', 'first-prize', '2022-10-20 07:56:41', '2022-10-20 07:56:41'),
(17, 6, 'c172-102022', '4000', '2nd prize', 'secend-prize', '2022-10-20 07:56:41', '2022-10-20 07:56:41'),
(18, 6, 'c172-102022', '3000', '3rd prize', 'third-prize', '2022-10-20 07:56:41', '2022-10-20 07:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `contest_sorting_prize`
--

CREATE TABLE `contest_sorting_prize` (
  `id` int(11) NOT NULL,
  `contest_sort_id` int(11) DEFAULT NULL,
  `p_contest_id` varchar(11) NOT NULL,
  `contest_low_prize` int(11) NOT NULL,
  `contest_high_prize` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contest_sorting_prize`
--

INSERT INTO `contest_sorting_prize` (`id`, `contest_sort_id`, `p_contest_id`, `contest_low_prize`, `contest_high_prize`, `created_at`, `updated_at`) VALUES
(1, 1, 'c85-102022', 1000, 2000, '2022-10-20 07:44:56', '2022-10-20 07:44:56'),
(2, 2, 'c679-102022', 1400, 3000, '2022-10-20 07:47:30', '2022-10-20 07:47:30'),
(3, 3, 'c423-102022', 500, 1000, '2022-10-20 07:49:59', '2022-10-20 07:49:59'),
(4, 4, 'c976-102022', 3000, 5000, '2022-10-20 07:52:05', '2022-10-20 07:52:05'),
(5, 5, 'c433-102022', 5000, 10000, '2022-10-20 07:54:17', '2022-10-20 07:54:17'),
(6, 6, 'c172-102022', 3000, 5000, '2022-10-20 07:56:41', '2022-10-20 07:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `contest_types`
--

CREATE TABLE `contest_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contest_type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_days` int(11) NOT NULL,
  `button_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `box_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phoneCode` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `phoneCode`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', '93', NULL, NULL),
(2, 'AL', 'Albania', '355', NULL, NULL),
(3, 'DZ', 'Algeria', '213', NULL, NULL),
(4, 'AS', 'American Samoa', '1684', NULL, NULL),
(5, 'AD', 'Andorra', '376', NULL, NULL),
(6, 'AO', 'Angola', '244', NULL, NULL),
(7, 'AI', 'Anguilla', '1264', NULL, NULL),
(8, 'AQ', 'Antarctica', '0', NULL, NULL),
(9, 'AG', 'Antigua And Barbuda', '1268', NULL, NULL),
(10, 'AR', 'Argentina', '54', NULL, NULL),
(11, 'AM', 'Armenia', '374', NULL, NULL),
(12, 'AW', 'Aruba', '297', NULL, NULL),
(13, 'AU', 'Australia', '61', NULL, NULL),
(14, 'AT', 'Austria', '43', NULL, NULL),
(15, 'AZ', 'Azerbaijan', '994', NULL, NULL),
(16, 'BS', 'Bahamas The', '1242', NULL, NULL),
(17, 'BH', 'Bahrain', '973', NULL, NULL),
(18, 'BD', 'Bangladesh', '880', NULL, NULL),
(19, 'BB', 'Barbados', '1246', NULL, NULL),
(20, 'BY', 'Belarus', '375', NULL, NULL),
(21, 'BE', 'Belgium', '32', NULL, NULL),
(22, 'BZ', 'Belize', '501', NULL, NULL),
(23, 'BJ', 'Benin', '229', NULL, NULL),
(24, 'BM', 'Bermuda', '1441', NULL, NULL),
(25, 'BT', 'Bhutan', '975', NULL, NULL),
(26, 'BO', 'Bolivia', '591', NULL, NULL),
(27, 'BA', 'Bosnia and Herzegovina', '387', NULL, NULL),
(28, 'BW', 'Botswana', '267', NULL, NULL),
(29, 'BV', 'Bouvet Island', '0', NULL, NULL),
(30, 'BR', 'Brazil', '55', NULL, NULL),
(31, 'IO', 'British Indian Ocean Territory', '246', NULL, NULL),
(32, 'BN', 'Brunei', '673', NULL, NULL),
(33, 'BG', 'Bulgaria', '359', NULL, NULL),
(34, 'BF', 'Burkina Faso', '226', NULL, NULL),
(35, 'BI', 'Burundi', '257', NULL, NULL),
(36, 'KH', 'Cambodia', '855', NULL, NULL),
(37, 'CM', 'Cameroon', '237', NULL, NULL),
(38, 'CA', 'Canada', '1', NULL, NULL),
(39, 'CV', 'Cape Verde', '238', NULL, NULL),
(40, 'KY', 'Cayman Islands', '1345', NULL, NULL),
(41, 'CF', 'Central African Republic', '236', NULL, NULL),
(42, 'TD', 'Chad', '235', NULL, NULL),
(43, 'CL', 'Chile', '56', NULL, NULL),
(44, 'CN', 'China', '86', NULL, NULL),
(45, 'CX', 'Christmas Island', '61', NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', '672', NULL, NULL),
(47, 'CO', 'Colombia', '57', NULL, NULL),
(48, 'KM', 'Comoros', '269', NULL, NULL),
(49, 'CG', 'Republic Of The Congo', '242', NULL, NULL),
(50, 'CD', 'Democratic Republic Of The Congo', '242', NULL, NULL),
(51, 'CK', 'Cook Islands', '682', NULL, NULL),
(52, 'CR', 'Costa Rica', '506', NULL, NULL),
(53, 'CI', 'Cote D\'\'Ivoire (Ivory Coast)', '225', NULL, NULL),
(54, 'HR', 'Croatia (Hrvatska)', '385', NULL, NULL),
(55, 'CU', 'Cuba', '53', NULL, NULL),
(56, 'CY', 'Cyprus', '357', NULL, NULL),
(57, 'CZ', 'Czech Republic', '420', NULL, NULL),
(58, 'DK', 'Denmark', '45', NULL, NULL),
(59, 'DJ', 'Djibouti', '253', NULL, NULL),
(60, 'DM', 'Dominica', '1767', NULL, NULL),
(61, 'DO', 'Dominican Republic', '1809', NULL, NULL),
(62, 'TP', 'East Timor', '670', NULL, NULL),
(63, 'EC', 'Ecuador', '593', NULL, NULL),
(64, 'EG', 'Egypt', '20', NULL, NULL),
(65, 'SV', 'El Salvador', '503', NULL, NULL),
(66, 'GQ', 'Equatorial Guinea', '240', NULL, NULL),
(67, 'ER', 'Eritrea', '291', NULL, NULL),
(68, 'EE', 'Estonia', '372', NULL, NULL),
(69, 'ET', 'Ethiopia', '251', NULL, NULL),
(70, 'XA', 'External Territories of Australia', '61', NULL, NULL),
(71, 'FK', 'Falkland Islands', '500', NULL, NULL),
(72, 'FO', 'Faroe Islands', '298', NULL, NULL),
(73, 'FJ', 'Fiji Islands', '679', NULL, NULL),
(74, 'FI', 'Finland', '358', NULL, NULL),
(75, 'FR', 'France', '33', NULL, NULL),
(76, 'GF', 'French Guiana', '594', NULL, NULL),
(77, 'PF', 'French Polynesia', '689', NULL, NULL),
(78, 'TF', 'French Southern Territories', '0', NULL, NULL),
(79, 'GA', 'Gabon', '241', NULL, NULL),
(80, 'GM', 'Gambia The', '220', NULL, NULL),
(81, 'GE', 'Georgia', '995', NULL, NULL),
(82, 'DE', 'Germany', '49', NULL, NULL),
(83, 'GH', 'Ghana', '233', NULL, NULL),
(84, 'GI', 'Gibraltar', '350', NULL, NULL),
(85, 'GR', 'Greece', '30', NULL, NULL),
(86, 'GL', 'Greenland', '299', NULL, NULL),
(87, 'GD', 'Grenada', '1473', NULL, NULL),
(88, 'GP', 'Guadeloupe', '590', NULL, NULL),
(89, 'GU', 'Guam', '1671', NULL, NULL),
(90, 'GT', 'Guatemala', '502', NULL, NULL),
(91, 'XU', 'Guernsey and Alderney', '44', NULL, NULL),
(92, 'GN', 'Guinea', '224', NULL, NULL),
(93, 'GW', 'Guinea-Bissau', '245', NULL, NULL),
(94, 'GY', 'Guyana', '592', NULL, NULL),
(95, 'HT', 'Haiti', '509', NULL, NULL),
(96, 'HM', 'Heard and McDonald Islands', '0', NULL, NULL),
(97, 'HN', 'Honduras', '504', NULL, NULL),
(98, 'HK', 'Hong Kong S.A.R.', '852', NULL, NULL),
(99, 'HU', 'Hungary', '36', NULL, NULL),
(100, 'IS', 'Iceland', '354', NULL, NULL),
(101, 'IN', 'India', '91', NULL, NULL),
(102, 'ID', 'Indonesia', '62', NULL, NULL),
(103, 'IR', 'Iran', '98', NULL, NULL),
(104, 'IQ', 'Iraq', '964', NULL, NULL),
(105, 'IE', 'Ireland', '353', NULL, NULL),
(106, 'IL', 'Israel', '972', NULL, NULL),
(107, 'IT', 'Italy', '39', NULL, NULL),
(108, 'JM', 'Jamaica', '1876', NULL, NULL),
(109, 'JP', 'Japan', '81', NULL, NULL),
(110, 'XJ', 'Jersey', '44', NULL, NULL),
(111, 'JO', 'Jordan', '962', NULL, NULL),
(112, 'KZ', 'Kazakhstan', '7', NULL, NULL),
(113, 'KE', 'Kenya', '254', NULL, NULL),
(114, 'KI', 'Kiribati', '686', NULL, NULL),
(115, 'KP', 'Korea North', '850', NULL, NULL),
(116, 'KR', 'Korea South', '82', NULL, NULL),
(117, 'KW', 'Kuwait', '965', NULL, NULL),
(118, 'KG', 'Kyrgyzstan', '996', NULL, NULL),
(119, 'LA', 'Laos', '856', NULL, NULL),
(120, 'LV', 'Latvia', '371', NULL, NULL),
(121, 'LB', 'Lebanon', '961', NULL, NULL),
(122, 'LS', 'Lesotho', '266', NULL, NULL),
(123, 'LR', 'Liberia', '231', NULL, NULL),
(124, 'LY', 'Libya', '218', NULL, NULL),
(125, 'LI', 'Liechtenstein', '423', NULL, NULL),
(126, 'LT', 'Lithuania', '370', NULL, NULL),
(127, 'LU', 'Luxembourg', '352', NULL, NULL),
(128, 'MO', 'Macau S.A.R.', '853', NULL, NULL),
(129, 'MK', 'Macedonia', '389', NULL, NULL),
(130, 'MG', 'Madagascar', '261', NULL, NULL),
(131, 'MW', 'Malawi', '265', NULL, NULL),
(132, 'MY', 'Malaysia', '60', NULL, NULL),
(133, 'MV', 'Maldives', '960', NULL, NULL),
(134, 'ML', 'Mali', '223', NULL, NULL),
(135, 'MT', 'Malta', '356', NULL, NULL),
(136, 'XM', 'Man (Isle of)', '44', NULL, NULL),
(137, 'MH', 'Marshall Islands', '692', NULL, NULL),
(138, 'MQ', 'Martinique', '596', NULL, NULL),
(139, 'MR', 'Mauritania', '222', NULL, NULL),
(140, 'MU', 'Mauritius', '230', NULL, NULL),
(141, 'YT', 'Mayotte', '269', NULL, NULL),
(142, 'MX', 'Mexico', '52', NULL, NULL),
(143, 'FM', 'Micronesia', '691', NULL, NULL),
(144, 'MD', 'Moldova', '373', NULL, NULL),
(145, 'MC', 'Monaco', '377', NULL, NULL),
(146, 'MN', 'Mongolia', '976', NULL, NULL),
(147, 'MS', 'Montserrat', '1664', NULL, NULL),
(148, 'MA', 'Morocco', '212', NULL, NULL),
(149, 'MZ', 'Mozambique', '258', NULL, NULL),
(150, 'MM', 'Myanmar', '95', NULL, NULL),
(151, 'NA', 'Namibia', '264', NULL, NULL),
(152, 'NR', 'Nauru', '674', NULL, NULL),
(153, 'NP', 'Nepal', '977', NULL, NULL),
(154, 'AN', 'Netherlands Antilles', '599', NULL, NULL),
(155, 'NL', 'Netherlands The', '31', NULL, NULL),
(156, 'NC', 'New Caledonia', '687', NULL, NULL),
(157, 'NZ', 'New Zealand', '64', NULL, NULL),
(158, 'NI', 'Nicaragua', '505', NULL, NULL),
(159, 'NE', 'Niger', '227', NULL, NULL),
(160, 'NG', 'Nigeria', '234', NULL, NULL),
(161, 'NU', 'Niue', '683', NULL, NULL),
(162, 'NF', 'Norfolk Island', '672', NULL, NULL),
(163, 'MP', 'Northern Mariana Islands', '1670', NULL, NULL),
(164, 'NO', 'Norway', '47', NULL, NULL),
(165, 'OM', 'Oman', '968', NULL, NULL),
(166, 'PK', 'Pakistan', '92', NULL, NULL),
(167, 'PW', 'Palau', '680', NULL, NULL),
(168, 'PS', 'Palestinian Territory Occupied', '970', NULL, NULL),
(169, 'PA', 'Panama', '507', NULL, NULL),
(170, 'PG', 'Papua new Guinea', '675', NULL, NULL),
(171, 'PY', 'Paraguay', '595', NULL, NULL),
(172, 'PE', 'Peru', '51', NULL, NULL),
(173, 'PH', 'Philippines', '63', NULL, NULL),
(174, 'PN', 'Pitcairn Island', '0', NULL, NULL),
(175, 'PL', 'Poland', '48', NULL, NULL),
(176, 'PT', 'Portugal', '351', NULL, NULL),
(177, 'PR', 'Puerto Rico', '1787', NULL, NULL),
(178, 'QA', 'Qatar', '974', NULL, NULL),
(179, 'RE', 'Reunion', '262', NULL, NULL),
(180, 'RO', 'Romania', '40', NULL, NULL),
(181, 'RU', 'Russia', '70', NULL, NULL),
(182, 'RW', 'Rwanda', '250', NULL, NULL),
(183, 'SH', 'Saint Helena', '290', NULL, NULL),
(184, 'KN', 'Saint Kitts And Nevis', '1869', NULL, NULL),
(185, 'LC', 'Saint Lucia', '1758', NULL, NULL),
(186, 'PM', 'Saint Pierre and Miquelon', '508', NULL, NULL),
(187, 'VC', 'Saint Vincent And The Grenadines', '1784', NULL, NULL),
(188, 'WS', 'Samoa', '684', NULL, NULL),
(189, 'SM', 'San Marino', '378', NULL, NULL),
(190, 'ST', 'Sao Tome and Principe', '239', NULL, NULL),
(191, 'SA', 'Saudi Arabia', '966', NULL, NULL),
(192, 'SN', 'Senegal', '221', NULL, NULL),
(193, 'RS', 'Serbia', '381', NULL, NULL),
(194, 'SC', 'Seychelles', '248', NULL, NULL),
(195, 'SL', 'Sierra Leone', '232', NULL, NULL),
(196, 'SG', 'Singapore', '65', NULL, NULL),
(197, 'SK', 'Slovakia', '421', NULL, NULL),
(198, 'SI', 'Slovenia', '386', NULL, NULL),
(199, 'XG', 'Smaller Territories of the UK', '44', NULL, NULL),
(200, 'SB', 'Solomon Islands', '677', NULL, NULL),
(201, 'SO', 'Somalia', '252', NULL, NULL),
(202, 'ZA', 'South Africa', '27', NULL, NULL),
(203, 'GS', 'South Georgia', '0', NULL, NULL),
(204, 'SS', 'South Sudan', '211', NULL, NULL),
(205, 'ES', 'Spain', '34', NULL, NULL),
(206, 'LK', 'Sri Lanka', '94', NULL, NULL),
(207, 'SD', 'Sudan', '249', NULL, NULL),
(208, 'SR', 'Suriname', '597', NULL, NULL),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', '47', NULL, NULL),
(210, 'SZ', 'Swaziland', '268', NULL, NULL),
(211, 'SE', 'Sweden', '46', NULL, NULL),
(212, 'CH', 'Switzerland', '41', NULL, NULL),
(213, 'SY', 'Syria', '963', NULL, NULL),
(214, 'TW', 'Taiwan', '886', NULL, NULL),
(215, 'TJ', 'Tajikistan', '992', NULL, NULL),
(216, 'TZ', 'Tanzania', '255', NULL, NULL),
(217, 'TH', 'Thailand', '66', NULL, NULL),
(218, 'TG', 'Togo', '228', NULL, NULL),
(219, 'TK', 'Tokelau', '690', NULL, NULL),
(220, 'TO', 'Tonga', '676', NULL, NULL),
(221, 'TT', 'Trinidad And Tobago', '1868', NULL, NULL),
(222, 'TN', 'Tunisia', '216', NULL, NULL),
(223, 'TR', 'Turkey', '90', NULL, NULL),
(224, 'TM', 'Turkmenistan', '7370', NULL, NULL),
(225, 'TC', 'Turks And Caicos Islands', '1649', NULL, NULL),
(226, 'TV', 'Tuvalu', '688', NULL, NULL),
(227, 'UG', 'Uganda', '256', NULL, NULL),
(228, 'UA', 'Ukraine', '380', NULL, NULL),
(229, 'AE', 'United Arab Emirates', '971', NULL, NULL),
(230, 'GB', 'United Kingdom', '44', NULL, NULL),
(231, 'US', 'United States', '1', NULL, NULL),
(232, 'UM', 'United States Minor Outlying Islands', '1', NULL, NULL),
(233, 'UY', 'Uruguay', '598', NULL, NULL),
(234, 'UZ', 'Uzbekistan', '998', NULL, NULL),
(235, 'VU', 'Vanuatu', '678', NULL, NULL),
(236, 'VA', 'Vatican City State (Holy See)', '39', NULL, NULL),
(237, 'VE', 'Venezuela', '58', NULL, NULL),
(238, 'VN', 'Vietnam', '84', NULL, NULL),
(239, 'VG', 'Virgin Islands (British)', '1284', NULL, NULL),
(240, 'VI', 'Virgin Islands (US)', '1340', NULL, NULL),
(241, 'WF', 'Wallis And Futuna Islands', '681', NULL, NULL),
(242, 'EH', 'Western Sahara', '212', NULL, NULL),
(243, 'YE', 'Yemen', '967', NULL, NULL),
(244, 'YU', 'Yugoslavia', '38', NULL, NULL),
(245, 'ZM', 'Zambia', '260', NULL, NULL),
(246, 'ZW', 'Zimbabwe', '26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_name`, `role_id`, `is_status`, `created_at`, `updated_at`) VALUES
(9, 'Dashbord', 2, 1, '2022-06-29 03:02:51', '2022-06-29 03:02:51'),
(10, 'Admin', 2, 1, '2022-06-29 03:04:03', '2022-06-29 03:04:03'),
(11, 'Page Permission', 0, 1, '2022-06-29 03:04:20', '2022-06-29 03:04:20'),
(12, 'Users', 2, 1, '2022-06-29 03:06:21', '2022-06-29 03:06:21'),
(13, 'Contest', 2, 1, '2022-06-29 03:06:31', '2022-06-29 03:06:31'),
(14, 'Participates', 2, 1, '2022-06-29 03:06:51', '2022-06-29 03:06:51'),
(15, 'Recycle Data', 2, 1, '2022-06-29 03:07:08', '2022-06-29 03:07:08'),
(16, 'Payment', 2, 1, '2022-06-29 03:07:24', '2022-06-29 03:07:24'),
(17, 'Menu', 0, 0, '2022-06-29 03:07:53', '2022-06-29 03:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_04_14_063737_create_admins_table', 1),
(3, '2022_04_28_103550_create_contest_types_table', 1),
(4, '2022_04_29_093304_create_contests_table', 1),
(5, '2022_05_12_055921_create_reclycle_contests_table', 1),
(6, '2022_06_16_085513_create_pages_table', 1),
(7, '2022_06_17_092035_create_roles_table', 1),
(8, '2022_06_21_082658_create_pagepermissions_table', 1),
(9, '2022_06_27_101507_create_menus_table', 1),
(10, '2022_09_24_081343_create_contest_prize_amounts_table', 1),
(11, '2022_09_24_101032_create_contest_category_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissions`
--

CREATE TABLE `pagepermissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagepermissions`
--

INSERT INTO `pagepermissions` (`id`, `role_id`, `page_permission_id`, `created_at`, `updated_at`) VALUES
(2, 2, 14, '2022-06-27 03:36:43', '2022-06-27 03:36:43'),
(7, 2, 16, '2022-06-27 07:50:29', '2022-06-27 07:50:29'),
(9, 2, 11, '2022-06-27 07:50:30', '2022-06-27 07:50:30'),
(10, 2, 7, '2022-06-27 07:50:30', '2022-06-27 07:50:30'),
(11, 2, 15, '2022-06-27 07:50:30', '2022-06-27 07:50:30'),
(12, 2, 16, '2022-06-27 07:50:30', '2022-06-27 07:50:30'),
(13, 2, 4, '2022-06-27 07:50:30', '2022-06-27 07:50:30'),
(14, 2, 3, '2022-06-27 07:50:30', '2022-06-27 07:50:30'),
(15, 2, 2, '2022-06-27 07:50:30', '2022-06-27 07:50:30'),
(16, 2, 1, '2022-06-27 07:50:30', '2022-06-27 07:50:30'),
(17, 2, 38, '2022-06-29 03:46:58', '2022-06-29 03:46:58'),
(18, 2, 37, '2022-06-29 03:46:58', '2022-06-29 03:46:58'),
(19, 2, 36, '2022-06-29 03:46:58', '2022-06-29 03:46:58'),
(20, 2, 35, '2022-06-29 03:46:58', '2022-06-29 03:46:58'),
(21, 2, 34, '2022-06-29 03:46:58', '2022-06-29 03:46:58'),
(22, 2, 33, '2022-06-29 03:46:58', '2022-06-29 03:46:58'),
(23, 2, 32, '2022-06-29 03:46:58', '2022-06-29 03:46:58'),
(24, 2, 31, '2022-06-29 03:46:58', '2022-06-29 03:46:58'),
(25, 2, 30, '2022-06-29 03:46:59', '2022-06-29 03:46:59'),
(26, 2, 29, '2022-06-29 03:46:59', '2022-06-29 03:46:59'),
(27, 2, 28, '2022-06-29 03:46:59', '2022-06-29 03:46:59'),
(28, 2, 27, '2022-06-29 03:46:59', '2022-06-29 03:46:59'),
(29, 2, 26, '2022-06-29 03:46:59', '2022-06-29 03:46:59'),
(30, 2, 25, '2022-06-29 03:46:59', '2022-06-29 03:46:59'),
(31, 2, 23, '2022-06-29 03:46:59', '2022-06-29 03:46:59'),
(32, 2, 22, '2022-06-29 03:46:59', '2022-06-29 03:46:59'),
(33, 2, 21, '2022-06-29 03:46:59', '2022-06-29 03:46:59'),
(34, 2, 20, '2022-06-29 03:46:59', '2022-06-29 03:46:59'),
(35, 2, 39, '2022-06-29 05:14:01', '2022-06-29 05:14:01'),
(36, 2, 40, '2022-06-29 05:33:11', '2022-06-29 05:33:11'),
(37, 8, 40, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(38, 8, 39, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(39, 8, 38, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(40, 8, 37, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(41, 8, 36, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(42, 8, 35, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(43, 8, 34, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(44, 8, 33, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(45, 8, 32, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(46, 8, 31, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(47, 8, 30, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(48, 8, 29, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(49, 8, 28, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(50, 8, 27, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(51, 8, 26, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(52, 8, 25, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(53, 8, 24, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(54, 8, 23, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(55, 8, 22, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(56, 8, 21, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(57, 8, 20, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(58, 8, 14, '2022-07-08 07:17:02', '2022-07-08 07:17:02'),
(62, 10, 33, '2022-07-27 07:15:06', '2022-07-27 07:15:06'),
(63, 10, 29, '2022-07-27 07:15:06', '2022-07-27 07:15:06'),
(64, 11, 39, '2022-07-30 06:43:51', '2022-07-30 06:43:51'),
(65, 11, 38, '2022-07-30 06:43:51', '2022-07-30 06:43:51'),
(66, 11, 37, '2022-07-30 06:43:51', '2022-07-30 06:43:51'),
(79, 14, 39, '2022-08-08 07:15:54', '2022-08-08 07:15:54'),
(80, 14, 37, '2022-08-08 07:15:54', '2022-08-08 07:15:54'),
(81, 14, 22, '2022-08-08 07:15:54', '2022-08-08 07:15:54'),
(82, 18, 40, '2022-09-02 04:38:31', '2022-09-02 04:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(11) NOT NULL,
  `is_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `page_url`, `icon`, `menu_id`, `is_status`, `created_at`, `updated_at`) VALUES
(14, 'addpage', 'addpage', 'material-icons opacity-10', 0, 1, '2022-06-28 23:40:24', '2022-06-28 23:40:24'),
(20, 'Dashboard', 'dashboard', 'material-icons opacity-10', 9, 1, '2022-06-29 03:24:34', '2022-06-29 03:24:34'),
(21, 'Add Menu', 'addmenu', 'material-icons opacity-10', 0, 0, '2022-06-29 03:25:13', '2022-06-29 03:25:13'),
(22, 'Add  Sub Admin', 'addAdmin', 'material-icons opacity-10', 0, 1, '2022-06-29 03:25:52', '2022-06-29 03:25:52'),
(23, 'Admin List', 'adminlist', 'material-icons opacity-10', 10, 1, '2022-06-29 03:28:28', '2022-06-29 03:28:28'),
(24, 'Add Page', 'addpage', 'material-icons opacity-10', 11, 0, '2022-06-29 03:29:13', '2022-06-29 03:29:13'),
(25, 'Page Permission', 'pagepermission', 'material-icons opacity-10', 0, 1, '2022-06-29 03:31:07', '2022-06-29 03:31:07'),
(26, 'Add New Role', 'createrole', 'material-icons opacity-10', 0, 1, '2022-06-29 03:32:36', '2022-06-29 03:32:36'),
(27, 'All Roles List', 'allrole', 'material-icons opacity-10', 10, 1, '2022-06-29 03:33:10', '2022-06-29 03:33:10'),
(28, 'All Users', 'alluser', 'material-icons opacity-10', 12, 1, '2022-06-29 03:33:56', '2022-06-29 03:33:56'),
(29, 'Add Contest', 'addcontest', 'material-icons opacity-10', 13, 1, '2022-06-29 03:34:30', '2022-06-29 03:34:30'),
(30, 'All Contest', 'allcontest', 'material-icons opacity-10', 13, 1, '2022-06-29 03:34:58', '2022-06-29 03:34:58'),
(31, 'All active contest List', 'allactivecontest', 'material-icons opacity-10', 0, 1, '2022-06-29 03:35:59', '2022-06-29 03:35:59'),
(32, 'All close contest list', 'closeContestlist', 'material-icons opacity-10', 0, 1, '2022-06-29 03:36:49', '2022-06-29 03:36:49'),
(33, 'All winner contest list', 'winnerContestlist', 'material-icons opacity-10', 0, 1, '2022-06-29 03:37:27', '2022-06-29 03:37:27'),
(34, 'All watch contest list', 'watchlist', 'material-icons opacity-10', 0, 1, '2022-06-29 03:38:09', '2022-06-29 03:38:09'),
(35, 'All judging contest list', 'alljudgingcontest', 'material-icons opacity-10', 0, 1, '2022-06-29 03:39:45', '2022-06-29 03:39:45'),
(36, 'Participate list', 'participatelist', 'material-icons opacity-10', 0, 1, '2022-06-29 03:40:37', '2022-06-29 03:40:37'),
(37, 'Restore deleted data list', 'recycleContest', 'material-icons opacity-10', 15, 1, '2022-06-29 03:42:08', '2022-06-29 03:42:08'),
(38, 'Transction list', 'transctionlist', 'material-icons opacity-10', 0, 1, '2022-06-29 03:43:06', '2022-06-29 03:43:06'),
(39, 'All Page Permission', 'allpagepermission', 'material-icons opacity-10', 10, 1, '2022-06-29 05:13:47', '2022-06-29 05:13:47'),
(40, 'allMenu', 'allMenu', 'material-icons opacity-10', 0, 0, '2022-06-29 05:30:36', '2022-06-29 05:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reclycle_contests`
--

CREATE TABLE `reclycle_contests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contest_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `is_status`, `created_at`, `updated_at`) VALUES
(2, 'admin', 1, '2022-06-20 06:13:34', '2022-06-20 06:13:34'),
(3, 'Editor', 1, '2022-06-20 06:13:43', '2022-06-20 06:13:43'),
(4, 'Employee', 1, '2022-06-20 06:13:57', '2022-08-11 04:11:10'),
(6, 'Developer', 0, '2022-06-21 01:14:47', '2022-08-24 06:20:15'),
(18, 'content creator kkk', 0, '2022-08-24 04:55:01', '2022-08-24 06:20:12'),
(20, 'sdfsf', 1, '2022-08-25 04:54:47', '2022-09-13 01:37:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_status` int(11) NOT NULL DEFAULT 1,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_status`, `user_id`, `remember_token`, `gender`, `phone_number`, `address`, `user_image_path`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(5, 'user', 'user@gmail.com', NULL, '$2y$10$xYJhPj08Y67v1TcXprGja.FmTxwWPiK3sZJKyOdrrxF0R7zCWjKpG', 1, '#1663058461', NULL, NULL, '1234567890', 'barackpur, kolkata 700123', '5/1670244514_SampleJPGImage_50kbmb.jpg', 'India', '454600', '2022-09-13 03:11:01', '2022-09-13 03:11:01'),
(6, 'amitav', 'amitav@gmail.com', NULL, '$2y$10$u1j3pws5S/cXbCcuqwVIGeSNvwSjQX.u3HfPmnEkSuwxmI9T8.1u.', 1, '#1664357135', NULL, NULL, '1234567890', 'barackpur, kolkata 700123', NULL, 'India', '700123', '2022-09-28 03:55:35', '2022-09-28 03:55:35'),
(7, 'bijay', 'bijay@gmail.com', NULL, '$2y$10$RJEQTTRNJeQARlvQsbR39e6uDjJ/m0LkPUACgn3kbodPV4DjHjfmK', 1, '#1667553681', NULL, NULL, '1234567890', 'barackpur, kolkata 700123', NULL, 'India', '700123', '2022-11-04 09:21:21', '2022-11-04 09:21:21'),
(8, 'test', 'sb-4hxhy8312429@personal.example.com', NULL, '$2y$10$bxkB8Or08cQZkFpu0vRt.uwEsQxX9UL357hQRgFhYcLY87RFyJlRG', 1, '#1667814136', NULL, NULL, '1234567890', 'barackpur, kolkata 700123', NULL, 'India', '700123', '2022-11-07 09:42:16', '2022-11-07 09:42:16'),
(9, 'Partha Neogy', 'partha@gmail.com', NULL, '$2y$10$wVowpnZB.a9CwD44Mf4eYOq5k3CVzzVw5lvTCFNjDADHhMePXYEBq', 1, 'C1670331461', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-06 12:57:41', '2022-12-06 12:57:41'),
(10, 'Piyali Bhattachariya', 'piyali@gmail.com', NULL, '$2y$10$j.TLIay1TjJGS6d4InZmGebRopavlNCBRdl0qPrC5GhfXUwdzqnGa', 1, 'U1670331629', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-06 13:00:29', '2022-12-06 13:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `wacth_lists`
--

CREATE TABLE `wacth_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `contest_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wacth_lists`
--

INSERT INTO `wacth_lists` (`id`, `user_id`, `contest_id`, `is_status`, `created_at`, `updated_at`) VALUES
(3, 5, 'c739-092022', 1, '2022-09-30 03:12:31', '2022-09-30 03:12:31'),
(13, 6, 'c607-092022', 1, '2022-09-30 03:58:22', '2022-09-30 03:58:22'),
(14, 6, 'c764-092022', 1, '2022-09-30 03:58:35', '2022-09-30 03:58:35'),
(16, 5, 'c607-092022', 1, '2022-10-11 03:29:03', '2022-10-11 03:29:03'),
(17, 5, 'c764-092022', 1, '2022-10-11 03:45:42', '2022-10-11 03:45:42'),
(18, 5, 'c550-102022', 1, '2022-10-11 05:31:05', '2022-10-11 05:31:05'),
(355, 5, 'c172-102022', 1, '2022-12-05 09:21:51', '2022-12-05 09:21:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contests`
--
ALTER TABLE `contests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contest_categories`
--
ALTER TABLE `contest_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contest_gallery_imges`
--
ALTER TABLE `contest_gallery_imges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contest_image_uploads`
--
ALTER TABLE `contest_image_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contest_payments`
--
ALTER TABLE `contest_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contest_prize_amounts`
--
ALTER TABLE `contest_prize_amounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contest_sorting_prize`
--
ALTER TABLE `contest_sorting_prize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contest_types`
--
ALTER TABLE `contest_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagepermissions`
--
ALTER TABLE `pagepermissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reclycle_contests`
--
ALTER TABLE `reclycle_contests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wacth_lists`
--
ALTER TABLE `wacth_lists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `contests`
--
ALTER TABLE `contests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contest_categories`
--
ALTER TABLE `contest_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contest_gallery_imges`
--
ALTER TABLE `contest_gallery_imges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `contest_image_uploads`
--
ALTER TABLE `contest_image_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `contest_payments`
--
ALTER TABLE `contest_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contest_prize_amounts`
--
ALTER TABLE `contest_prize_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contest_sorting_prize`
--
ALTER TABLE `contest_sorting_prize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contest_types`
--
ALTER TABLE `contest_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pagepermissions`
--
ALTER TABLE `pagepermissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reclycle_contests`
--
ALTER TABLE `reclycle_contests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wacth_lists`
--
ALTER TABLE `wacth_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
