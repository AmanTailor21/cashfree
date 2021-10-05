-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2021 at 10:51 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cashfree`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_05_051517_create_payments_table', 2),
(6, '2021_10_05_051534_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) UNSIGNED NOT NULL,
  `amount` decimal(8,2) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `price`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 101, '1199.00', '999.00', 0, '2021-10-05 00:59:04', '2021-10-05 00:59:04'),
(2, 1, 101, '1199.00', '999.00', 0, '2021-10-05 00:59:26', '2021-10-05 00:59:26'),
(3, 1, 101, '1199.00', '999.00', 0, '2021-10-05 01:00:25', '2021-10-05 01:00:25'),
(4, 1, 101, '1199.00', '999.00', 0, '2021-10-05 01:00:30', '2021-10-05 01:00:30'),
(5, NULL, 101, '1199.00', '999.00', 0, '2021-10-05 01:04:51', '2021-10-05 01:04:51'),
(6, NULL, 101, '1199.00', '999.00', 0, '2021-10-05 01:04:51', '2021-10-05 01:04:51'),
(7, NULL, 101, '1199.00', '999.00', 0, '2021-10-05 01:04:57', '2021-10-05 01:04:57'),
(8, NULL, 101, '1199.00', '999.00', 0, '2021-10-05 01:05:20', '2021-10-05 01:05:20'),
(9, NULL, 101, '1199.00', '999.00', 0, '2021-10-05 01:06:59', '2021-10-05 01:06:59'),
(10, NULL, 101, '1199.00', '999.00', 0, '2021-10-05 01:09:35', '2021-10-05 01:09:35'),
(11, NULL, 101, '1199.00', '999.00', 0, '2021-10-05 01:09:58', '2021-10-05 01:09:58'),
(12, NULL, 101, '1199.00', '1.00', 0, '2021-10-05 01:17:36', '2021-10-05 01:17:36'),
(13, NULL, 101, '1199.00', '1.00', 0, '2021-10-05 01:17:46', '2021-10-05 01:17:46'),
(14, NULL, 101, '1199.00', '1.00', 0, '2021-10-05 01:18:17', '2021-10-05 01:18:17'),
(15, NULL, 101, '1199.00', '1.00', 0, '2021-10-05 01:18:17', '2021-10-05 01:18:17'),
(16, NULL, 101, '1199.00', '1.00', 0, '2021-10-05 01:18:26', '2021-10-05 01:18:26'),
(17, NULL, 101, '1199.00', '999.00', 0, '2021-10-05 01:18:50', '2021-10-05 01:18:50'),
(18, NULL, 101, '1199.00', '999.00', 0, '2021-10-05 01:21:18', '2021-10-05 01:21:18'),
(19, NULL, 101, '1199.00', '999.00', 0, '2021-10-05 01:22:37', '2021-10-05 01:22:37'),
(20, NULL, 101, '1199.00', '999.00', 0, '2021-10-05 01:23:14', '2021-10-05 01:23:14'),
(21, NULL, 101, '1.00', '1.00', 0, '2021-10-05 01:26:09', '2021-10-05 01:26:09'),
(22, NULL, 101, '1.00', '1.00', 0, '2021-10-05 01:28:44', '2021-10-05 01:28:44'),
(23, NULL, 101, '1.00', '1.00', 0, '2021-10-05 01:33:50', '2021-10-05 01:33:50'),
(24, NULL, 101, '1.00', '1.00', 0, '2021-10-05 01:34:13', '2021-10-05 01:34:13'),
(25, NULL, 101, '1.00', '1.00', 0, '2021-10-05 02:09:13', '2021-10-05 02:09:13'),
(26, NULL, 101, '1.00', '1.00', 0, '2021-10-05 02:11:42', '2021-10-05 02:11:42'),
(27, NULL, 101, '1.00', '1.00', 0, '2021-10-05 02:36:03', '2021-10-05 02:36:03'),
(28, NULL, 101, '1.00', '1.00', 0, '2021-10-05 02:41:57', '2021-10-05 02:41:57'),
(29, NULL, 101, '1.00', '1.00', 0, '2021-10-05 02:46:02', '2021-10-05 02:46:02'),
(30, NULL, 101, '1.00', '1.00', 0, '2021-10-05 02:48:20', '2021-10-05 02:48:20'),
(31, NULL, 101, '1.00', '1.00', 0, '2021-10-05 02:49:22', '2021-10-05 02:49:22'),
(32, NULL, 101, '1.00', '1.00', 0, '2021-10-05 02:52:35', '2021-10-05 02:52:35'),
(33, NULL, 101, '1.00', '1.00', 0, '2021-10-05 02:53:20', '2021-10-05 02:53:20'),
(34, NULL, 101, '1.00', '1.00', 0, '2021-10-05 03:01:39', '2021-10-05 03:01:39'),
(35, NULL, 101, '1.00', '1.00', 1, '2021-10-05 03:04:41', '2021-10-05 03:09:15'),
(36, NULL, 101, '1.00', '1.00', 1, '2021-10-05 03:09:33', '2021-10-05 03:10:46');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_amount` double(8,2) NOT NULL,
  `reference_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txstatus` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txmsg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txtime` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `appointment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `order_amount`, `reference_id`, `txstatus`, `payment_mode`, `refund_id`, `txmsg`, `txtime`, `sign`, `created_at`, `updated_at`, `appointment_id`) VALUES
(1, 'MCG-635', 1.00, '1102290', 'SUCCESS', 'CREDIT_CARD', NULL, 'Transaction Successful', 'Transaction Successful', '60kuw8FqjXm6DIgets0GpBJRkB2k4s4QY8oSxeARGaA=', '2021-10-05 03:05:01', '2021-10-05 03:05:01', 35),
(2, 'MCG-635', 1.00, '1102290', 'SUCCESS', 'CREDIT_CARD', NULL, 'Transaction Successful', 'Transaction Successful', '60kuw8FqjXm6DIgets0GpBJRkB2k4s4QY8oSxeARGaA=', '2021-10-05 03:09:15', '2021-10-05 03:09:15', 35),
(3, 'MCG-636', 1.00, '1102301', 'SUCCESS', 'CREDIT_CARD', NULL, 'Transaction Successful', 'Transaction Successful', '7eD8NhRVAXgdyCBla5/OI6Or6dX4rxtM3ucZ9cFETVw=', '2021-10-05 03:10:46', '2021-10-05 03:10:46', 36);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
