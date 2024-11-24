-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3310
-- Generation Time: Nov 24, 2024 at 03:59 AM
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
(1, 'Mohiuddin', 'admin@gmail.com', '$2y$10$FScFRilXoBC81hmrOtCOBetWRQUebPFK3r0x1u11KB3Ni4lIRePYC', NULL, '2024-11-21 01:09:49', '2024-11-21 01:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `specialist_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specialist_id`, `name`, `email`, `password`, `photo`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Doctor Jamil', 'jamil@gmail.com', '$2y$10$sWPe7BcOLmbI.slkUJ0gwOk6/2kQz74M3hdxvufLe.zSiFOGUtMoq', NULL, NULL, 'inactive', '2024-11-21 01:09:49', '2024-11-21 01:09:49');

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
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(19, '2024_11_18_063438_create_admins_table', 1),
(20, '2024_11_19_041903_create_doctors_table', 1),
(21, '2024_11_20_042519_create_specialists_table', 1);

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
(1, 'omnis doloribus veniam', 'doloribus ut quia nesciunt illum blanditiis quis blanditiis inventore corrupti unde ea aliquid similique earum', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(2, 'ea tempora enim', 'suscipit ut sint aperiam aut ducimus alias ipsum aut vitae qui assumenda quidem aperiam ea', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(3, 'omnis vero eligendi', 'dolores natus incidunt nulla vel tempore rerum molestias et ab expedita officia minima adipisci eum', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(4, 'optio tenetur repudiandae', 'aliquid ratione voluptas molestiae vitae perferendis ea ea pariatur quibusdam vitae excepturi nobis quod fugiat', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(5, 'architecto praesentium cum', 'amet quia et quibusdam dicta ratione fuga dolores velit sunt a perspiciatis molestiae quo adipisci', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(6, 'praesentium quasi quidem', 'libero autem qui possimus rem vero nostrum praesentium corrupti qui et officia libero laudantium rerum', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(7, 'accusamus ipsum eum', 'voluptatem non laboriosam iure expedita adipisci rerum non officiis error cumque sit optio ut sed', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(8, 'qui libero deserunt', 'omnis adipisci velit tenetur necessitatibus reprehenderit ex molestiae quasi voluptatum ut placeat tempora quis quibusdam', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(9, 'culpa corporis quibusdam', 'numquam animi iste voluptate ducimus et et tempora et suscipit voluptate dignissimos et non et', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(10, 'minus sunt eum', 'consectetur voluptatem temporibus nulla libero unde reiciendis labore vero et quia quos totam id nihil', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(11, 'nam quia ex', 'aliquid dolorum natus sint autem maxime consequuntur aut aspernatur fuga mollitia non et et sunt', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(12, 'nobis eos ad', 'sit quas id nihil ut quod aut nihil ipsam et totam vel et cumque laborum', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(13, 'debitis occaecati perferendis', 'quia laborum veritatis consequatur atque quidem mollitia soluta et quia quo ut commodi adipisci quia', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(14, 'illum est occaecati', 'quas rerum consequatur veniam pariatur odit suscipit amet inventore iste repellendus qui et porro id', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(15, 'quia non aut', 'dolor et sequi perspiciatis ad id quod voluptatem dolor facilis porro sit aliquam qui expedita', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(16, 'ut veniam consequatur', 'sequi nobis officia aut et cum voluptatem iusto voluptatem voluptas temporibus libero quae quas excepturi', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(17, 'voluptatem enim corporis', 'totam dolor laudantium nihil esse incidunt dolores non corrupti quis deleniti dolorem aut deleniti et', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(18, 'qui et fugit', 'quibusdam quibusdam eum repellat velit sint quia nisi explicabo sed quam quis ut ipsum facilis', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(19, 'est voluptate animi', 'rerum ea facilis inventore minus et eum vel corrupti tenetur rem ut vel corrupti incidunt', '2024-11-21 01:09:50', '2024-11-21 01:09:50'),
(20, 'ducimus quidem deleniti', 'voluptatum est deleniti voluptatibus inventore est qui impedit minus reprehenderit quia vitae officia qui iusto', '2024-11-21 01:09:50', '2024-11-21 01:09:50');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialists`
--
ALTER TABLE `specialists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
