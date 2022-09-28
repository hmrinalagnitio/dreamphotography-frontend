-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 13, 2022 at 01:08 PM
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
-- Database: `dreamphotography_admin`
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
(64, 'Piyali Bhattachariya', 'piyali@gmail.com', 4, NULL, NULL, NULL, '$2y$10$y6UBMSjV/mXWwgpgfMF4heLkjYfJ6M8j3tfxmD5hWcZAczp08Shvq', 0, NULL, '2022-08-25 04:18:31', '2022-09-06 07:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `contests`
--

CREATE TABLE `contests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contest_type_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contest_category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contest_cat_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contest_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_date` date NOT NULL,
  `closing_date` date NOT NULL,
  `opening_time` time NOT NULL,
  `closing_time` time NOT NULL,
  `entry_fees` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `prize_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prize_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prize_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_one` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_protection` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contest_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contests`
--

INSERT INTO `contests` (`id`, `contest_type_name`, `contest_category_name`, `contest_cat_slug`, `contest_name`, `number_of_image`, `opening_date`, `closing_date`, `opening_time`, `closing_time`, `entry_fees`, `is_status`, `prize_name`, `prize_amount`, `prize_description`, `description_one`, `data_protection`, `contest_id`, `created_at`, `updated_at`) VALUES
(97, 'example 2022', '[\"contest_one\",\"contest_two\",\"contest_three\"]', '[\"contest_one\",\"contest_two\",\"contest_three\"]', 'saloon', '[\"2\",\"3\",\"4\"]', '2022-07-30', '2022-09-08', '00:00:00', '00:00:00', '20', '1', '[\"1st\",\"2nd\",\"3rd\"]', '[\"100\",\"50\",\"20\"]', '[\"null\",\"null\",\"null\"]', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', '#289-072022', '2022-07-27 05:09:26', '2022-07-27 05:09:26'),
(99, 'sample2022', '[\"sample1\",\"sample2\",\"sample3\"]', '[\"sample1\",\"sample2\",\"sample3\"]', 'rainy', '[\"2\",\"3\",\"4\"]', '2022-08-14', '2022-08-21', '15:09:00', '16:09:00', '210', '1', '[\"1st\",\"2nd\"]', '[\"150\",\"100\"]', '[\"dummy\",\"dummy\"]', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'By entering this exhibition, you are explicitly consenting to the personal details you have supplied, including email addresses, being held, processed and used by the exhibition organizers for purposes associated with this exhibition. You also explicitly consent to such information being sent to organizations that have accorded official recognition, patronage or accreditation to this exhibition. You acknowledge and accept that entering this exhibition means that the status and results of your entry may be made public.', '#562-082022', '2022-08-11 04:10:59', '2022-08-11 04:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `contest_images`
--

CREATE TABLE `contest_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contest_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_no` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contest_images`
--

INSERT INTO `contest_images` (`id`, `user_id`, `contest_id`, `category_name`, `img_no`, `title`, `path`, `valid`, `created_at`, `updated_at`) VALUES
(28, '9', '97', 'contest_one', 2, 'kk', 'public/contests_images/#289-072022/9/contest_one/2/#289-072022_9_contest_one_2.jpg', 1, '2022-07-27 10:56:57', '2022-07-27 10:56:57'),
(29, '18', '97', 'contest_three', 3, 'sdd', 'public/contests_images/#289-072022/18/contest_three/3/#289-072022_18_contest_three_3.jpg', 1, '2022-08-10 13:35:25', '2022-08-10 13:35:25'),
(30, '9', '97', 'contest_one', 1, 'fgdf', 'public/contests_images/#289-072022/9/contest_one/1/#289-072022_9_contest_one_1.jpg', 1, '2022-08-11 11:08:12', '2022-08-11 11:08:12'),
(31, '24', '97', 'contest_one', 1, 'dgsyrwywryqweyw', 'public/contests_images/#289-072022/24/contest_one/1/#289-072022_24_contest_one_1.png', 1, '2022-08-12 11:50:55', '2022-08-12 11:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 2),
(4, '2019_08_19_000000_create_failed_jobs_table', 2),
(5, '2022_04_13_123656_create_admins_table', 3),
(6, '2022_04_13_124159_create_admins_table', 4),
(7, '2022_04_14_063737_create_admins_table', 5),
(8, '2022_04_28_103550_create_contest_types_table', 6);

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
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `contest_id` int(11) NOT NULL,
  `image_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `user_id`, `contest_id`, `image_status`, `payment_status`, `created_at`, `updated_at`) VALUES
(6, 24, 97, 1, 0, '2022-08-12 11:50:55', '2022-08-12 11:50:55'),
(7, 9, 97, 1, 0, '2022-08-30 06:24:59', '2022-08-30 06:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `reclycle_contests`
--

INSERT INTO `reclycle_contests` (`id`, `contest_id`, `created_at`, `updated_at`) VALUES
(50, 94, NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_status`, `user_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'user', 'user@gmail.com', NULL, '$2y$10$xYJhPj08Y67v1TcXprGja.FmTxwWPiK3sZJKyOdrrxF0R7zCWjKpG', 1, '#1663058461', NULL, '2022-09-13 03:11:01', '2022-09-13 03:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `contest_id` int(11) NOT NULL,
  `valid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `contest_id`, `valid`, `created_at`, `updated_at`) VALUES
(72, 9, 99, 1, '2022-08-11 13:20:03', '2022-08-11 13:20:03'),
(73, 20, 97, 1, '2022-08-12 10:23:31', '2022-08-12 10:23:31'),
(74, 20, 99, 1, '2022-08-12 10:23:33', '2022-08-12 10:23:33'),
(75, 21, 97, 1, '2022-08-12 10:55:21', '2022-08-12 10:55:21'),
(76, 24, 97, 1, '2022-08-12 11:46:58', '2022-08-12 11:46:58'),
(77, 24, 99, 1, '2022-08-12 11:47:25', '2022-08-12 11:47:25'),
(78, 27, 97, 1, '2022-08-27 08:46:19', '2022-08-27 08:46:19');

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
-- Indexes for table `contest_images`
--
ALTER TABLE `contest_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
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
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `contest_images`
--
ALTER TABLE `contest_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reclycle_contests`
--
ALTER TABLE `reclycle_contests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
