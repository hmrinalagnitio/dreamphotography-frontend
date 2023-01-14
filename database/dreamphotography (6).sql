-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 14, 2023 at 11:16 AM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 7.4.32

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
  `is_status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `role_id`, `image`, `is_admin`, `email_verified_at`, `password`, `is_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(44, 'sourav karmokar', 'sourav@gmail.com', 3, '1659942010.jpg', NULL, NULL, '$2y$10$ZDXo5R.e9dh0/5Q1d/73Ve0BMrPihYg01Zen9EliyJaLpiUkgsEu6', 1, NULL, '2022-06-20 07:09:09', '2022-08-08 01:30:10'),
(45, 'Bijay', 'bijay@gmail.com', 24, '', NULL, NULL, '$2y$10$.WUg4ZV5JVKBS6816ZWHm.tX0K5aGv2L4PlwkmVbP4yYSHbG89GsC', 1, NULL, '2022-06-20 07:09:54', '2023-01-09 01:52:11'),
(46, 'adminpp', 'admin@gmail.com', 2, '1666099817.jpeg', NULL, NULL, '$2y$10$d8YDb8rIfdJgbZ0Uu/usXOAh6ygHkitBPKWLWaDNhL73dZJ/t.bRe', 1, '93S8JMqq8RCkjsEeMYUHguueRu4929BnGtzYDhNpRcqemDBWGDm31MHykjzO', '2022-06-20 07:11:28', '2023-01-08 10:10:37'),
(47, 'developer', 'developer@gmail.com', 6, '', 0, NULL, '$2y$10$bX5RPh7gpLxkZmAOiT4LPutik8o/eiCo2J6iHpCAZvoMYQEHHG5AS', 0, NULL, '2022-06-22 01:06:19', '2022-09-06 07:55:04'),
(64, 'Piyali Bhattachariya', 'piyali@gmail.com', 4, NULL, NULL, NULL, '$2y$10$tgIWdOXnp0boA0gL7.a4huTdcgG.WcBSrrhZvd8KizGTLKR592csO', 0, NULL, '2022-08-25 04:18:31', '2023-01-05 02:48:37');

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
(1, 'weekly', 'Laxmi puja', '2022-11-14', '2022-11-21', '15:13:00', '15:13:00', '100', '1', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is availableIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is availableIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is availableIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is availableIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is availableIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available', 'c761-102022', '2022-10-13 04:14:39', '2022-10-13 04:14:39'),
(2, 'monthly', 'Durga. puja', '2022-11-14', '2022-12-12', '15:20:00', '15:20:00', '200', '1', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available\r\nIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available', 'c132-102022', '2022-10-13 04:22:02', '2022-10-13 04:22:02'),
(3, 'Weekly', 'Ganesh Puja', '2022-11-14', '2022-11-21', '15:23:00', '15:24:00', '30', '1', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is availableIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available', 'c643-102022', '2022-10-13 04:25:04', '2022-10-13 04:25:04'),
(4, 'weekly', 'kali puja', '2022-11-15', '2022-11-22', '15:25:00', '15:27:00', '50', '0', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available', 'c448-102022', '2022-10-13 04:27:05', '2022-11-30 07:37:16'),
(5, 'weekly', 'holi', '2022-11-15', '2022-11-20', '15:29:00', '15:29:00', '40', '1', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is availableIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available', 'c388-102022', '2022-12-13 04:30:47', '2022-11-20 04:30:47'),
(6, 'weeklySSSSS', 'color contestSSSS', '2023-01-26', '2022-11-21', '16:34:00', '17:34:00', '200', '1', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is availableIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is availablesadddd', 'c602-102022', '2022-10-13 04:35:52', '2023-01-13 01:16:27'),
(8, 'weekly', 'tewst contest', '2023-01-09', '2023-01-15', '12:25:00', '13:25:00', '10', '1', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'p', 'c862-012023', '2023-01-09 01:37:10', '2023-01-09 01:37:10'),
(9, 'weekly', 'tewst contest', '2023-01-09', '2023-01-15', '12:25:00', '13:25:00', '10', '1', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'p', 'c214-012023', '2023-01-09 01:37:42', '2023-01-09 01:37:42'),
(10, 'weekly', 'tewst contest', '2023-01-09', '2023-01-15', '12:25:00', '13:25:00', '10', '1', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'pIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface withoutIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface withoutIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface withoutIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface withoutIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface withoutIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface withoutIn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without', 'c586-012023', '2023-01-09 01:38:11', '2023-01-09 04:09:26'),
(12, 'weekly', 'partha contest', '2023-01-13', '2023-01-20', '00:55:00', '01:55:00', '500', '1', 'By entering this exhibition,', 'sanjoy3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333', 'c172-012023', '2023-01-13 00:57:23', '2023-01-13 01:30:31'),
(13, 'weekly', 'gold contest', '2023-01-13', '2023-01-20', '15:06:00', '15:06:00', '200', '0', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'Second. You use format d.m.Y H:i that includes time part. If you wish to compare only dates, you must remove time part, e.g. `$date = date(\"d.m.Y\");``Second. You use format d.m.Y H:i that includes time part. If you wish to compare only dates, you must remove time part, e.g. `$date = date(\"d.m.Y\");``Second. You use format d.m.Y H:i that includes time part. If you wish to compare only dates, you must remove time part, e.g. `$date = date(\"d.m.Y\");``Second. You use format d.m.Y H:i that includes time part. If you wish to compare only dates, you must remove time part, e.g. `$date = date(\"d.m.Y\");``', 'c709-012023', '2023-01-13 03:08:18', '2023-01-13 04:04:44'),
(14, 'monthly', 'winter vacation contest', '2023-01-13', '2023-02-13', '16:07:00', '16:07:00', '200', '1', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', 'n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 'c441-012023', '2023-01-13 04:08:36', '2023-01-13 04:11:52');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_as` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contest_categories`
--

INSERT INTO `contest_categories` (`id`, `contest_unique_id`, `contest_id`, `number_of_image`, `contest_cat_name`, `contest_cat_slug`, `created_at`, `updated_as`) VALUES
(1, 1, 'c761-102022', 2, 'laxmi one', 'laxmi_one', '2022-10-13 09:44:39', '2022-10-13 09:44:39'),
(2, 1, 'c761-102022', 4, 'laxmi cat two', 'laxmi_cat_two', '2022-10-13 09:44:39', '2022-10-13 09:44:39'),
(3, 2, 'c132-102022', 3, 'durga puja one', 'durga_puja_one', '2022-10-13 09:52:02', '2022-10-13 09:52:02'),
(4, 2, 'c132-102022', 1, 'druga puja two', 'druga_puja_two', '2022-10-13 09:52:02', '2022-10-13 09:52:02'),
(5, 2, 'c132-102022', 3, 'durga puja three', 'durga_puja_three', '2022-10-13 09:52:02', '2022-10-13 09:52:02'),
(6, 3, 'c643-102022', 3, 'ganesh one', 'ganesh_one', '2022-10-13 09:55:04', '2022-10-13 09:55:04'),
(7, 3, 'c643-102022', 2, 'ganesh two', 'ganesh_two', '2022-10-13 09:55:04', '2022-10-13 09:55:04'),
(8, 3, 'c643-102022', 2, 'ganesh three', 'ganesh_three', '2022-10-13 09:55:04', '2022-10-13 09:55:04'),
(9, 4, 'c448-102022', 4, 'kali two', 'kali_two', '2022-10-13 09:57:05', '2022-10-13 09:57:05'),
(10, 4, 'c448-102022', 4, 'kali two', 'kali_two', '2022-10-13 09:57:05', '2022-10-13 09:57:05'),
(11, 5, 'c388-102022', 3, 'holi two', 'holi_two', '2022-10-13 10:00:47', '2022-10-13 10:00:47'),
(12, 5, 'c388-102022', 3, 'holi two', 'holi_two', '2022-10-13 10:00:47', '2022-10-13 10:00:47'),
(13, 6, 'c602-102022', 3, 'blue color', 'blue_color', '2022-10-13 10:05:52', '2022-10-13 10:05:52'),
(14, 6, 'c602-102022', 3, 'blue color', 'blue_color', '2022-10-13 10:05:52', '2022-10-13 10:05:52'),
(15, 9, 'c214-012023', 2, 'copn one', 'copn_one', NULL, NULL),
(16, 9, 'c214-012023', 1, 'con two', 'con_two', NULL, NULL),
(17, 10, 'c586-012023', 1, 'con two', 'con_two', NULL, NULL),
(18, 10, 'c586-012023', 1, 'con two', 'con_two', NULL, NULL),
(19, 11, 'c702-012023', 1, 'contest two', 'contest_two', NULL, NULL),
(20, 11, 'c702-012023', 1, 'contest two', 'contest_two', NULL, NULL),
(21, 12, 'c172-012023', 1, 'p cat two', 'p_cat_two', NULL, NULL),
(22, 12, 'c172-012023', 1, 'p cat two', 'p_cat_two', NULL, NULL),
(23, 13, 'c709-012023', 2, 'gold two', 'gold_two', NULL, NULL),
(24, 13, 'c709-012023', 2, 'gold two', 'gold_two', NULL, NULL),
(25, 14, 'c441-012023', 2, 'winter two', 'winter_two', NULL, NULL),
(26, 14, 'c441-012023', 2, 'winter two', 'winter_two', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contest_gallery_imges`
--

CREATE TABLE `contest_gallery_imges` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gallery_image_show_id` varchar(255) NOT NULL,
  `gallery_contest_unique_id` int(11) NOT NULL,
  `gallery_image_upload_id` int(11) NOT NULL,
  `is_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contest_gallery_imges`
--

INSERT INTO `contest_gallery_imges` (`id`, `user_id`, `gallery_image_show_id`, `gallery_contest_unique_id`, `gallery_image_upload_id`, `is_status`, `created_at`, `updated_at`) VALUES
(4, 5, '00', 6, 1, 1, '2023-01-06 07:08:47', '2023-01-06 07:08:47'),
(5, 5, '21', 5, 4, 1, '2023-01-06 07:12:50', '2023-01-06 07:12:50'),
(6, 5, '11', 5, 3, 1, '2023-01-06 07:12:52', '2023-01-06 07:12:52'),
(7, 5, '11', 6, 5, 1, '2023-01-06 07:13:24', '2023-01-06 07:13:24'),
(8, 10, '10', 6, 7, 1, '2023-01-06 07:14:39', '2023-01-06 07:14:39'),
(9, 5, '01', 11, 17, 1, '2023-01-09 13:08:37', '2023-01-09 13:08:37');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contest_image_uploads`
--

INSERT INTO `contest_image_uploads` (`id`, `contest_unique_id`, `user_id`, `image_path`, `contest_id`, `imageShow_id`, `category_name`, `image_no`, `title`, `created_at`, `updated_at`) VALUES
(1, 6, 5, '1672988853-c602-102022-U1663058461-user-blue-color-3.jpg', 'c602-102022', '00', 'blue color', 3, NULL, '2023-01-06 07:07:33', '2023-01-06 07:07:33'),
(2, 5, 5, '1672989138-c388-102022-U1663058461-user-holi-two-3.jpg', 'c388-102022', '10', 'holi two', 3, NULL, '2023-01-06 07:12:18', '2023-01-06 07:12:18'),
(3, 5, 5, '1672989157-c388-102022-U1663058461-user-holi-two-3.png', 'c388-102022', '11', 'holi two', 3, NULL, '2023-01-06 07:12:37', '2023-01-06 07:12:37'),
(4, 5, 5, '1672989167-c388-102022-U1663058461-user-holi-two-3.jpg', 'c388-102022', '21', 'holi two', 3, NULL, '2023-01-06 07:12:47', '2023-01-06 07:12:47'),
(5, 6, 5, '1672989202-c602-102022-U1663058461-user-blue-color-3.jpg', 'c602-102022', '11', 'blue color', 3, NULL, '2023-01-06 07:13:22', '2023-01-06 07:13:22'),
(6, 6, 5, '1672989216-c602-102022-U1663058461-user-blue-color-3.jpg', 'c602-102022', '21', 'blue color', 3, NULL, '2023-01-06 07:13:36', '2023-01-06 07:13:36'),
(7, 6, 10, '1672989268-c602-102022-U1672723826-Part-blue-color-3.jpg', 'c602-102022', '10', 'blue color', 3, NULL, '2023-01-06 07:14:28', '2023-01-06 07:14:28'),
(8, 6, 10, '1672989276-c602-102022-U1672723826-Part-blue-color-3.jpg', 'c602-102022', '00', 'blue color', 3, NULL, '2023-01-06 07:14:36', '2023-01-06 07:14:36'),
(9, 6, 15, '1672997990-c602-102022-U1672996200-sonu-blue-color-3.jpg', 'c602-102022', '21', 'blue color', 3, NULL, '2023-01-06 09:39:50', '2023-01-06 09:39:50'),
(10, 6, 15, '1672998007-c602-102022-U1672996200-sonu-blue-color-3.jpg', 'c602-102022', '01', 'blue color', 3, NULL, '2023-01-06 09:40:07', '2023-01-06 09:40:07'),
(12, 6, 15, '1672998070-c602-102022-U1672996200-sonu-blue-color-3.jpg', 'c602-102022', '00', 'blue color', 3, NULL, '2023-01-06 09:41:10', '2023-01-06 09:41:10'),
(13, 5, 19, '1673189022-c388-102022-U1673182800-sonu-holi-two-3.jpg', 'c388-102022', '00', 'holi two', 3, NULL, '2023-01-08 14:43:42', '2023-01-08 14:43:42'),
(14, 5, 19, '1673189166-c388-102022-U1673182800-sonu-holi-two-3.jpg', 'c388-102022', '10', 'holi two', 3, NULL, '2023-01-08 14:46:06', '2023-01-08 14:46:06'),
(15, 5, 19, '1673189184-c388-102022-U1673182800-sonu-holi-two-3.png', 'c388-102022', '20', 'holi two', 3, NULL, '2023-01-08 14:46:24', '2023-01-08 14:46:24'),
(17, 11, 5, '1673441082-c702-012023-U1663058461-user-contest-two-1.png', 'c702-012023', '01', 'contest two', 1, NULL, '2023-01-11 12:44:42', '2023-01-11 12:44:42'),
(18, 11, 19, '1673441641-c702-012023-U1673182800-sonu-contest-two-1.png', 'c702-012023', '00', 'contest two', 1, NULL, '2023-01-11 12:54:01', '2023-01-11 12:54:01'),
(19, 11, 19, '1673441611-c702-012023-U1673182800-sonu-contest-two-1.jpg', 'c702-012023', '01', 'contest two', 1, NULL, '2023-01-11 12:53:31', '2023-01-11 12:53:31');

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
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contest_payments`
--

INSERT INTO `contest_payments` (`id`, `contest_unique_id`, `payment_mode`, `payment_status`, `payment_id`, `user_id`, `default_user_id`, `name`, `email`, `contest_id`, `contest_type_name`, `contest_name`, `opening_date`, `closing_date`, `opening_time`, `closing_time`, `entry_fees_amount`, `created_date`, `updated_date`) VALUES
(1, 6, 'Paid by Paypal', 'COMPLETED', '1RY87548GG5661454', 8, '0', 'John Doe', 'sb-4hxhy8312429@personal.example.com', 'c172-102022', 'Weekly', 'Mountain Contest', '2022-11-21', '2022-11-27', '14:25:00', '16:25:00', '1', '2022-11-11 05:17:06', '2022-11-11 05:17:06'),
(4, 6, 'Paid by Paypal', 'COMPLETED', '67G5682074276624X', 7, '0', 'John Doe', 'sb-4hxhy8312429@personal.example.com', 'c602-102022', 'weekly', 'color contest', '2022-10-14', '2022-10-21', '16:34:00', '17:34:00', '1', '2022-12-16 10:29:54', NULL),
(12, 6, 'Paid By Cash', 'COMPLETED', NULL, 6, 'U1664357135', 'amitav', 'amitav@gmail.com', 'c602-102022', 'weekly', 'color contest', '2022-11-15', '2022-11-21', '16:34:00', '17:34:00', '200', '2023-01-04 11:16:24', NULL),
(13, 6, 'Paid By Cash', 'COMPLETED', NULL, 15, 'U1672996200', 'sonu', 'sonu@gmail.com', 'c602-102022', 'weeklySSSSS', 'color contestSSSS', '2023-01-26', '2022-11-21', '16:34:00', '17:34:00', '200', '2023-01-06 10:58:36', NULL),
(14, 6, 'Paid By Cash', 'COMPLETED', NULL, 10, 'U1672723826', 'Partha Neogy', 'partha@gmail.com', 'c602-102022', 'weeklySSSSS', 'color contestSSSS', '2023-01-26', '2022-11-21', '16:34:00', '17:34:00', '200', '2023-01-06 13:02:00', NULL),
(19, 11, 'Paid By Cash', 'COMPLETED', NULL, 5, 'U1663058461', 'user', 'user@gmail.com', 'c702-012023', 'weekly', 'test p contest', '2023-01-09', '2023-01-15', '13:39:00', '13:39:00', '10', '2023-01-10 10:53:22', NULL),
(20, 5, 'Paid By Cash', 'COMPLETED', NULL, 19, 'U1673182800', 'sonu1', 'dsanjoy.agnitio@gmail.com', 'c388-102022', 'weekly', 'holi', '2022-11-15', '2022-11-20', '15:29:00', '15:29:00', '40', '2023-01-10 12:25:47', NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contest_prize_amounts`
--

INSERT INTO `contest_prize_amounts` (`id`, `contest_unique_id`, `contest_id`, `prize_amount`, `prize_name`, `prize_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'c761-102022', '1000', '1st prize', 'first-prize', '2022-10-13 09:44:39', '2022-10-13 09:44:39'),
(2, 1, 'c761-102022', '700', '2nd prize', 'secend-prize', '2022-10-13 09:44:39', '2022-10-13 09:44:39'),
(3, 1, 'c761-102022', '500', '3rd prize', 'third-prize', '2022-10-13 09:44:39', '2022-10-13 09:44:39'),
(4, 2, 'c132-102022', '5000', '1st prize', 'first-prize', '2022-10-13 09:52:02', '2022-10-13 09:52:02'),
(5, 2, 'c132-102022', '3000', '2nd prize', 'secend-prize', '2022-10-13 09:52:02', '2022-10-13 09:52:02'),
(6, 2, 'c132-102022', '2000', '3rd prize', 'third-prize', '2022-10-13 09:52:02', '2022-10-13 09:52:02'),
(7, 3, 'c643-102022', '2000', '1st prize', 'first-prize', '2022-10-13 09:55:04', '2022-10-13 09:55:04'),
(8, 3, 'c643-102022', '1500', '2nd prize', 'secend-prize', '2022-10-13 09:55:04', '2022-10-13 09:55:04'),
(9, 3, 'c643-102022', '500', '3rd prize', 'third-prize', '2022-10-13 09:55:04', '2022-10-13 09:55:04'),
(10, 4, 'c448-102022', '3000', '1st prize', 'first-prize', '2022-10-13 09:57:05', '2022-10-13 09:57:05'),
(11, 4, 'c448-102022', '2000', '2nd prize', 'secend-prize', '2022-10-13 09:57:05', '2022-10-13 09:57:05'),
(12, 4, 'c448-102022', '1000', '3rd prize', 'third-prize', '2022-10-13 09:57:05', '2022-10-13 09:57:05'),
(13, 5, 'c388-102022', '5000', '1st prize', 'first-prize', '2022-10-13 10:00:47', '2022-10-13 10:00:47'),
(14, 5, 'c388-102022', '3000', '2nd prize', 'secend-prize', '2022-10-13 10:00:47', '2022-10-13 10:00:47'),
(15, 5, 'c388-102022', '2000', '3rd prize', 'third-prize', '2022-10-13 10:00:47', '2022-10-13 10:00:47'),
(16, 6, 'c602-102022', '700', '1st prize', 'first-prize', '2022-10-13 10:05:52', '2022-10-13 10:05:52'),
(17, 6, 'c602-102022', '500', '2nd prize', 'secend-prize', '2022-10-13 10:05:52', '2022-10-13 10:05:52'),
(18, 6, 'c602-102022', '300', '3rd prize', 'third-prize', '2022-10-13 10:05:52', '2022-10-13 10:05:52'),
(19, 10, 'c586-012023', '200', '1st prize', 'first-prize', NULL, NULL),
(20, 10, 'c586-012023', '150', '2nd prize', 'secend-prize', NULL, NULL),
(21, 10, 'c586-012023', '100', '3rd prize', 'third-prize', NULL, NULL),
(22, 11, 'c702-012023', '6000', '1st prize', 'first-prize', NULL, NULL),
(23, 11, 'c702-012023', '5000', '2nd prize', 'secend-prize', NULL, NULL),
(24, 11, 'c702-012023', '4000', '3rd prize', 'third-prize', NULL, NULL),
(25, 12, 'c172-012023', '2000', '1st prize', 'first-prize', NULL, NULL),
(26, 12, 'c172-012023', '1500', '2nd prize', 'secend-prize', NULL, NULL),
(27, 12, 'c172-012023', '1000', '3rd prize', 'third-prize', NULL, NULL),
(28, 13, 'c709-012023', '8000', '1st prize', 'first-prize', NULL, NULL),
(29, 13, 'c709-012023', '6000', '2nd prize', 'secend-prize', NULL, NULL),
(30, 13, 'c709-012023', '5000', '3rd prize', 'third-prize', NULL, NULL),
(31, 14, 'c441-012023', '6000', '1st prize', 'first-prize', NULL, NULL),
(32, 14, 'c441-012023', '4000', '2nd prize', 'secend-prize', NULL, NULL),
(33, 14, 'c441-012023', '3000', '3rd prize', 'third-prize', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contest_sorting_prize`
--

CREATE TABLE `contest_sorting_prize` (
  `id` int(11) NOT NULL,
  `contest_sort_id` int(11) NOT NULL,
  `p_contest_id` varchar(11) NOT NULL,
  `contest_low_prize` int(11) NOT NULL,
  `contest_high_prize` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contest_sorting_prize`
--

INSERT INTO `contest_sorting_prize` (`id`, `contest_sort_id`, `p_contest_id`, `contest_low_prize`, `contest_high_prize`, `created_at`, `updated_at`) VALUES
(1, 1, 'c761-102022', 500, 1000, '2022-10-13 09:44:39', '2022-10-13 09:44:39'),
(2, 2, 'c132-102022', 2000, 5000, '2022-10-13 09:52:02', '2022-10-13 09:52:02'),
(3, 3, 'c643-102022', 500, 2000, '2022-10-13 09:55:04', '2022-10-13 09:55:04'),
(4, 4, 'c448-102022', 1000, 3000, '2022-10-13 09:57:05', '2022-10-13 09:57:05'),
(5, 5, 'c388-102022', 2000, 5000, '2022-10-13 10:00:47', '2022-10-13 10:00:47'),
(6, 6, 'c602-102022', 300, 700, '2022-10-13 10:05:52', '2022-10-13 10:05:52'),
(7, 8, 'c862-012023', 100, 200, '2023-01-09 07:07:10', '0000-00-00 00:00:00'),
(8, 9, 'c214-012023', 100, 200, '2023-01-09 07:07:42', '0000-00-00 00:00:00'),
(9, 10, 'c586-012023', 100, 200, '2023-01-09 07:08:11', '0000-00-00 00:00:00'),
(10, 11, 'c702-012023', 4000, 6000, '2023-01-09 07:10:58', '0000-00-00 00:00:00'),
(11, 12, 'c172-012023', 1000, 2000, '2023-01-13 06:27:23', '0000-00-00 00:00:00'),
(12, 13, 'c709-012023', 5000, 8000, '2023-01-13 08:38:18', '0000-00-00 00:00:00'),
(13, 14, 'c441-012023', 3000, 6000, '2023-01-13 09:38:36', '0000-00-00 00:00:00');

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
  `is_status` int(11) NOT NULL DEFAULT '1',
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
  `is_status` tinyint(4) NOT NULL DEFAULT '1',
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
  `abilities` text COLLATE utf8mb4_unicode_ci,
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

--
-- Dumping data for table `reclycle_contests`
--

INSERT INTO `reclycle_contests` (`id`, `contest_id`, `created_at`, `updated_at`) VALUES
(1, 11, NULL, NULL),
(2, 9, NULL, NULL),
(3, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `is_status`, `created_at`, `updated_at`) VALUES
(2, 'admin', 0, '2022-06-20 06:13:34', '2023-01-05 02:45:25'),
(3, 'Editor', 0, '2022-06-20 06:13:43', '2022-11-30 07:41:33'),
(4, 'Employee', 0, '2022-06-20 06:13:57', '2022-11-30 07:41:34'),
(6, 'Developer', 0, '2022-06-21 01:14:47', '2022-11-30 07:41:35'),
(18, 'content creator kkk', 0, '2022-08-24 04:55:01', '2022-11-30 07:41:36'),
(20, 'contest edited', 0, '2022-08-25 04:54:47', '2022-11-30 07:41:37'),
(24, 'admintrator', 1, '2023-01-05 02:46:31', '2023-01-09 03:15:35');

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
  `is_status` int(11) NOT NULL DEFAULT '1',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
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
(5, 'user', 'user@gmail.com', NULL, '$2y$10$xYJhPj08Y67v1TcXprGja.FmTxwWPiK3sZJKyOdrrxF0R7zCWjKpG', 1, 'U1663058461', NULL, NULL, '1234567890', 'barackpur, kolkata 700123', '5/1673339308_sanjoy.jpg', 'India', '454600', '2022-09-13 03:11:01', '2023-01-05 02:51:29'),
(6, 'amitav', 'amitav@gmail.com', NULL, '$2y$10$u1j3pws5S/cXbCcuqwVIGeSNvwSjQX.u3HfPmnEkSuwxmI9T8.1u.', 1, 'U1664357135', NULL, NULL, '1234567890', 'barackpur, kolkata 700123', NULL, 'India', '700123', '2022-09-28 03:55:35', '2022-09-28 03:55:35'),
(7, 'bijay', 'bijay@gmail.com', NULL, '$2y$10$RJEQTTRNJeQARlvQsbR39e6uDjJ/m0LkPUACgn3kbodPV4DjHjfmK', 1, 'U1667553681', NULL, NULL, '1234567890', 'barackpur, kolkata 700123', NULL, 'India', '700123', '2022-11-04 09:21:21', '2022-11-04 09:21:21'),
(8, 'paypal user', 'sb-4hxhy8312429@personal.example.com', NULL, '$2y$10$bxkB8Or08cQZkFpu0vRt.uwEsQxX9UL357hQRgFhYcLY87RFyJlRG', 1, 'U1667814136', NULL, NULL, '1234567890', 'barackpur, kolkata 700123', NULL, 'India', '700123', '2022-11-07 09:42:16', '2022-11-07 09:42:16'),
(9, 'Arjun Mallick', 'arjun@gmail.com', NULL, '$2y$10$W7C19iyVGSzTOcB0rhN40e/9hQh0859Imu8dOqKDDkKEGi.1veOSG', 1, 'U1671185713', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-16 10:15:13', '2022-12-16 10:15:13'),
(10, 'Partha Neogy', 'partha@gmail.com', NULL, '$2y$10$Fxc1uTEMLl5mcRQO4IxAWejD8g6WYwjgxiqtePAYmiwItmOFFqDRO', 1, 'U1672723826', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-03 05:30:26', '2023-01-03 05:30:26'),
(11, 'satwik Majumder', 'satwik@gmail.com', NULL, '$2y$10$5/JOr6eXkbx4cg60hS7AvuIwf3BtT8yt9c.Jgg7k7tUA.fJ/k1Thm', 1, 'U1672724834', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-03 05:47:14', '2023-01-03 05:47:14'),
(12, 'Ritam Talukdar', 'ritam@gmail.com', NULL, '$2y$10$ha1.qBeXHUqHGgT7xN3W5.z3scDc/L45r..OKbBtfBbpauHwdhgA.', 1, 'U1672726668', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-03 06:17:48', '2023-01-03 06:17:48'),
(13, 'sunia', 'sfffunia@aaaaaaaa.in.co', NULL, '$2y$10$S3U.lIh74D/zdt9Cy/qjn.laUShGrOwpayrVSLDCaaCFP.E.M0NPO', 1, 'U1672985739', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-06 06:15:39', '2023-01-06 06:15:39'),
(15, 'sonu', 'sonu@gmail.com', NULL, '$2y$10$ijM8V8Wj2mJEXx8oXVcOBeKGn5ehvmd99PbsBQeShprDQM.Wo0SlW', 1, 'U1672996200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-06 09:10:00', '2023-01-06 09:10:00'),
(17, 'santa', 'santa@gmail.com', NULL, '$2y$10$7.7v3lgdnqQmoap.gQqs4.3J.vpMN1zUVZdqWrYMme9irG3if73QG', 1, 'U1672999522', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-06 10:05:22', '2023-01-06 10:05:22'),
(19, 'sonu1', 'dsanjoy.agnitio@gmail.com', NULL, '$2y$10$5QY1d3LS/nhDTiR3gYQgxucnE58nY.HrZSebrN.7fZ3jZ2sT1xJtq', 1, 'U1673182800', NULL, NULL, '7894561230', '13/3334/55////#$%^&*()(----------------------------------------------------------------', '19/1673183487_sanjoy.jpg', NULL, '789456', '2023-01-08 13:00:00', '2023-01-09 03:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `wacth_lists`
--

CREATE TABLE `wacth_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `contest_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_status` int(11) NOT NULL DEFAULT '1',
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
(99, 5, 'c132-102022', 1, '2022-11-30 10:12:31', '2022-11-30 10:12:31'),
(135, 5, 'c602-102022', 1, '2022-12-05 10:36:05', '2022-12-05 10:36:05'),
(136, 5, 'c761-102022', 1, '2022-12-09 13:22:14', '2022-12-09 13:22:14'),
(137, 5, 'c388-102022', 1, '2022-12-09 13:22:19', '2022-12-09 13:22:19'),
(138, 5, 'c448-102022', 1, '2022-12-09 13:22:24', '2022-12-09 13:22:24'),
(139, 10, 'c602-102022', 1, '2023-01-06 07:15:30', '2023-01-06 07:15:30'),
(140, 19, 'c388-102022', 1, '2023-01-08 13:57:21', '2023-01-08 13:57:21'),
(141, 19, 'c602-102022', 1, '2023-01-08 15:33:38', '2023-01-08 15:33:38');

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`(191),`tokenable_id`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contest_categories`
--
ALTER TABLE `contest_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `contest_gallery_imges`
--
ALTER TABLE `contest_gallery_imges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contest_image_uploads`
--
ALTER TABLE `contest_image_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contest_payments`
--
ALTER TABLE `contest_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contest_prize_amounts`
--
ALTER TABLE `contest_prize_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `contest_sorting_prize`
--
ALTER TABLE `contest_sorting_prize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `reclycle_contests`
--
ALTER TABLE `reclycle_contests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wacth_lists`
--
ALTER TABLE `wacth_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
