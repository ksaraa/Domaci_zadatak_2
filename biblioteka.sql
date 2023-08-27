-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2023 at 12:10 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteka`
--

-- --------------------------------------------------------

--
-- Table structure for table `knjige`
--

CREATE TABLE `knjige` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Naslov` varchar(255) NOT NULL,
  `Autor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `knjige`
--

INSERT INTO `knjige` (`id`, `Naslov`, `Autor`, `created_at`, `updated_at`) VALUES
(1, 'Una', 'Momo Kapor', '2023-08-25 18:30:54', '2023-08-25 18:30:54'),
(2, 'Bela griva', 'Rene Gio', '2023-08-25 18:31:41', '2023-08-25 18:31:41');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Ime` varchar(255) NOT NULL,
  `Prezime` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `Ime`, `Prezime`, `created_at`, `updated_at`) VALUES
(1, 'Sara', 'Kalicanin', '2023-08-25 18:27:07', '2023-08-25 18:27:07'),
(2, 'Petar', 'Petrovic', '2023-08-25 18:27:53', '2023-08-25 18:27:53'),
(3, 'Marko', 'Markovic', '2023-08-27 11:09:12', '2023-08-27 11:09:12'),
(7, 'Jelena', 'Peric', '2023-08-27 11:42:51', '2023-08-27 11:42:51'),
(8, 'Nikola', 'Djuricko', '2023-08-27 19:42:38', '2023-08-27 19:42:38'),
(9, 'Marko', 'Nastic', '2023-08-27 19:56:33', '2023-08-27 19:56:33');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2023_08_19_145849_knjige', 1),
(6, '2023_08_19_145903_korisnik', 1),
(7, '2023_08_19_145920_zaduzenje', 1),
(8, '2023_08_19_153245_ukupno__zaduzenje', 2),
(9, '2023_08_19_153739_brisanje__ukupnog__zaduzenja', 2),
(10, '2023_08_26_121809_dodavanje_kolone_u_zaduzenju', 3),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 4),
(14, '2023_08_27_163643_create_zaposleni_table', 5);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Zaposleni', 1, 'MyApp', '896152c7a434fbf58d9ec269e1fb68b05725381651bca501192d91eccaa8112b', '[\"*\"]', NULL, NULL, '2023-08-27 19:14:29', '2023-08-27 19:14:29'),
(2, 'App\\Models\\Zaposleni', 1, 'MyApp', 'a0c65a48176266b72385c891e9cead6487ceba6333153f037886fcc4a2725986', '[\"*\"]', NULL, NULL, '2023-08-27 19:16:21', '2023-08-27 19:16:21'),
(3, 'App\\Models\\Zaposleni', 1, 'MyApp', '193d2920b76ea6cabbbdff3be139228b41cfc7b1e9cc8e1ba5f6700ab64470b7', '[\"*\"]', NULL, NULL, '2023-08-27 19:21:24', '2023-08-27 19:21:24'),
(4, 'App\\Models\\Zaposleni', 1, 'MyApp', '4e361a754ba205029897d86e8e711182c6a2aeb9d69c619055da5332116249c9', '[\"*\"]', NULL, NULL, '2023-08-27 19:29:17', '2023-08-27 19:29:17'),
(5, 'App\\Models\\Zaposleni', 1, 'MyApp', '1d1cca4325a201a1b50f3e242aeb35d0b1e4e552f45145a5e49ccaf9d24deb01', '[\"*\"]', '2023-08-27 19:52:43', NULL, '2023-08-27 19:31:28', '2023-08-27 19:52:43'),
(6, 'App\\Models\\Zaposleni', 1, 'MyApp', '890bc81101dc4b55e62cec1549e34ecf1fec1adbb2a9cff3dfabfbfbbb2b8d59', '[\"*\"]', '2023-08-27 19:38:56', NULL, '2023-08-27 19:36:39', '2023-08-27 19:38:56'),
(7, 'App\\Models\\Zaposleni', 1, 'MyApp', '0e6fe4d2c2228cfc113bca03cc71c8f65b75b940852270a6ef83c18040dbca20', '[\"*\"]', NULL, NULL, '2023-08-27 19:40:34', '2023-08-27 19:40:34'),
(8, 'App\\Models\\Zaposleni', 1, 'MyApp', 'f3f8984911eaed7e320164235a4255f2f8a8bea2f8fb9299270363876c49e6b1', '[\"*\"]', '2023-08-27 19:43:54', NULL, '2023-08-27 19:41:21', '2023-08-27 19:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `ukupno zaduzenje`
--

CREATE TABLE `ukupno zaduzenje` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Korisnik_id` bigint(20) UNSIGNED NOT NULL,
  `Ukupno_Zaduzenje` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zaduzenje`
--

CREATE TABLE `zaduzenje` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Korisnik_id` bigint(20) UNSIGNED NOT NULL,
  `Knjige_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ime` varchar(255) NOT NULL,
  `prezime` varchar(255) NOT NULL,
  `naslov` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zaduzenje`
--

INSERT INTO `zaduzenje` (`id`, `Korisnik_id`, `Knjige_id`, `created_at`, `updated_at`, `ime`, `prezime`, `naslov`, `autor`) VALUES
(1, 2, 1, '2023-08-26 11:37:13', '2023-08-26 11:37:13', 'Petar', 'Petrovic', 'Una', 'Momo Kapor'),
(2, 2, 2, '2023-08-26 11:42:21', '2023-08-26 11:42:21', 'Petar', 'Petrovic', 'Bela griva', 'Rene Gio'),
(3, 3, 1, '2023-08-27 11:23:12', '2023-08-27 11:23:12', 'Marko', 'Markovic', 'Una', 'Momo Kapor');

-- --------------------------------------------------------

--
-- Table structure for table `zaposleni`
--

CREATE TABLE `zaposleni` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zaposleni`
--

INSERT INTO `zaposleni` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$.Y45aN8I5g3cDcIOEnN5c.C8SEsvcaxeG7Jc0hNqU4Gx4AKJ9WB2K'),
(2, 'admin', '$2y$10$CNpNd7w6819F9ak0ErZDjeRYs5iCKyjwQmK0klXjEojFNM9ffrWlO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `knjige`
--
ALTER TABLE `knjige`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ukupno zaduzenje`
--
ALTER TABLE `ukupno zaduzenje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ukupno zaduzenje_korisnik_id_foreign` (`Korisnik_id`);

--
-- Indexes for table `zaduzenje`
--
ALTER TABLE `zaduzenje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zaduzenje_korisnik_id_foreign` (`Korisnik_id`),
  ADD KEY `zaduzenje_knjige_id_foreign` (`Knjige_id`);

--
-- Indexes for table `zaposleni`
--
ALTER TABLE `zaposleni`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `knjige`
--
ALTER TABLE `knjige`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ukupno zaduzenje`
--
ALTER TABLE `ukupno zaduzenje`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zaduzenje`
--
ALTER TABLE `zaduzenje`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `zaposleni`
--
ALTER TABLE `zaposleni`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ukupno zaduzenje`
--
ALTER TABLE `ukupno zaduzenje`
  ADD CONSTRAINT `ukupno zaduzenje_korisnik_id_foreign` FOREIGN KEY (`Korisnik_id`) REFERENCES `korisnik` (`id`);

--
-- Constraints for table `zaduzenje`
--
ALTER TABLE `zaduzenje`
  ADD CONSTRAINT `zaduzenje_knjige_id_foreign` FOREIGN KEY (`Knjige_id`) REFERENCES `knjige` (`id`),
  ADD CONSTRAINT `zaduzenje_korisnik_id_foreign` FOREIGN KEY (`Korisnik_id`) REFERENCES `korisnik` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
