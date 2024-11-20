-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3310
-- Generation Time: Nov 20, 2024 at 07:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_sir_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'admin@gmail.com', '$2y$10$1IkU2nI3aZ83MPpJY2PLYuVwaL7jmdVVuBbOMnt5OukRB.cRoIFmu', NULL, '2024-11-18 01:17:12', '2024-11-18 01:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT 'nophoto.jpg',
  `remember_token` varchar(100) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `email`, `password`, `photo`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Doctor Jamil', 'jamil@gmail.com', '$2y$10$SG/PF/qBwuWwfnA01fZ79uUPR9.Dn6MGU9CVfwtpYNfzlcCdcBcGi', 'nophoto.jpg', NULL, 'active', '2024-11-18 22:58:48', '2024-11-18 22:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_18_063438_create_admins_table', 2),
(6, '2024_11_19_041903_create_doctors_table', 3),
(7, '2024_11_20_042519_create_specialists_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specialists`
--

CREATE TABLE `specialists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specialists`
--

INSERT INTO `specialists` (`id`, `name`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Rakib', 'Ent', '2024-11-20 06:36:01', '2024-11-20 06:36:01'),
(2, 'ullam et eveniet', 'ut quisquam autem praesentium nostrum neque voluptatibus officia vero rem saepe aperiam sunt id incidunt', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(3, 'nihil sequi hic', 'eligendi quos nihil modi nihil atque sint eum non amet ea eos quasi autem cum', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(4, 'dolor praesentium sapiente', 'ex illum nam qui nostrum porro voluptate rem numquam aut quia qui sapiente repudiandae debitis', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(5, 'tenetur magni cum', 'consequatur harum odio cumque veritatis delectus doloribus et magnam consequatur voluptates ad consequatur natus rerum', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(6, 'quas dolor eaque', 'dolores quia ab amet similique qui facilis rem voluptas quidem ad veritatis quibusdam exercitationem eius', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(7, 'et molestiae itaque', 'iusto dicta quo fuga commodi ad alias autem ut aliquam rem sint suscipit voluptas a', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(8, 'est quisquam sapiente', 'placeat quas dicta magni eveniet voluptatibus dignissimos ut et ad deserunt cum est expedita et', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(9, 'voluptate voluptatibus provident', 'quisquam nihil cupiditate totam et hic aut ut laborum et temporibus iusto dolores corrupti ut', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(10, 'adipisci voluptas qui', 'illum pariatur quo nihil est accusantium sint sit sed quasi magnam sed id perferendis nam', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(11, 'in molestiae est', 'earum nemo consequatur nostrum voluptatem dolorum et dolor nostrum rerum dolores animi id exercitationem repellat', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(12, 'soluta cupiditate dolorem', 'occaecati quia voluptas expedita sunt ut nemo temporibus autem hic sapiente quaerat suscipit sit eum', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(13, 'in est eos', 'aut similique quos maxime nobis ad dolores quidem aut itaque id tempore asperiores non qui', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(14, 'cum et dolores', 'id officiis perferendis ut eos possimus est et est voluptatum autem accusamus atque vero qui', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(15, 'autem iure amet', 'asperiores corporis ea molestias et amet similique aliquid repellat quos cumque eum quo quisquam voluptatem', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(16, 'eos ut a', 'exercitationem officiis itaque nam molestiae quasi quidem ex ducimus aut quo hic fugiat veniam et', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(17, 'rerum voluptas libero', 'autem quia voluptates ut est est ex doloremque fuga dolorem ab quis omnis quo asperiores', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(18, 'ad ut voluptatem', 'et saepe esse sit nemo tenetur esse omnis ipsam omnis vitae aut dolore soluta neque', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(19, 'error aliquid ut', 'perferendis doloremque culpa quia excepturi impedit cupiditate tempora qui aut officiis officia non sed qui', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(20, 'ut reiciendis veniam', 'id quibusdam adipisci ut iste adipisci vel sit vero vel omnis quia accusantium expedita fugiat', '2024-11-20 00:44:48', '2024-11-20 00:44:48'),
(21, 'repellat rem maxime', 'quae incidunt fuga ut quia quae aut inventore dignissimos recusandae earum velit repellendus deserunt tempore', '2024-11-20 00:44:48', '2024-11-20 00:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohiuddin', 'admin@gmail.com', NULL, '$2y$10$TV4c.Rlwy4aMm0fMwxOOSuQfD6nhSDE3aNODbY4Crxc3T4iyEgksa', NULL, '2024-11-17 21:26:44', '2024-11-17 21:26:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `specialists`
--
ALTER TABLE `specialists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialists`
--
ALTER TABLE `specialists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
