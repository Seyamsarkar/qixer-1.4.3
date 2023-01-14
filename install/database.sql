-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 02, 2023 at 08:19 AM
-- Server version: 5.7.40
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bytesed_laravel_qixer_beta`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountdeactives`
--

CREATE TABLE `accountdeactives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `account_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'editor',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_commissions`
--

CREATE TABLE `admin_commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `system_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission_charge_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission_charge_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission_charge` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_commissions`
--

INSERT INTO `admin_commissions` (`id`, `system_type`, `commission_charge_from`, `commission_charge_type`, `commission_charge`, `created_at`, `updated_at`) VALUES
(1, 'subscription', NULL, 'percentage', 10, '2022-09-05 07:34:16', '2022-11-19 03:06:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `amount_settings`
--

CREATE TABLE `amount_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `min_amount` double DEFAULT NULL,
  `max_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amount_settings`
--

INSERT INTO `amount_settings` (`id`, `min_amount`, `max_amount`, `created_at`, `updated_at`) VALUES
(1, 50, 250, '2022-02-07 07:54:03', '2022-02-07 07:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `blog_content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `views` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci,
  `tag_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `user_id`, `admin_id`, `created_by`, `title`, `slug`, `blog_content`, `image`, `author`, `excerpt`, `views`, `visibility`, `featured`, `schedule_date`, `created_at`, `updated_at`, `deleted_at`, `status`, `tag_name`) VALUES
(2, '1', NULL, 22, 'admin', 'AC Repair Service By Expert AC Repair Machenic', 'ac-repair-service-by-expert-ac-repair-machenic', '<div style=\"text-align: justify;\"><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Barnaby The Bear’s my name, never call me Jack or James, I will sing my way to fame, Barnaby the Bear’s my name. Birds taught me to sing, when they took me to their king, first I had to fly, in the sky so high so high, so high so high so high, so — if you want to sing this way, think of what you’d like to say, add a tune and you will see, just how easy it can be. Treacle pudding, fish and chips, fizzy drinks and liquorice, flowers, rivers, sand and sea, snowflakes and the stars are free.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Ulysses, Ulysses — Soaring through all the galaxies. In search of Earth, flying in to the night. Ulysses, Ulysses — Fighting evil and tyranny, with all his power, and with all of his might. Ulysses — no-one else can do the things you do. Ulysses — like a bolt of thunder from the blue. Ulysses — always fighting all the evil forces bringing peace and justice to all.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Hey there where ya goin’, not exactly knowin’, who says you have to call just one place home. He’s goin’ everywhere, B.J. McKay and his best friend Bear. He just keeps on movin’, ladies keep improvin’, every day is better than the last. New dreams and better scenes, and best of all I don’t pay property tax. Rollin’ down to Dallas, who’s providin’ my palace, off to New Orleans or who knows where. Places new and ladies, too, I’m B.J. McKay and this is my best friend Bear.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.&nbsp;</span></font></p></div>', '103', 's-admin@gmail.com', '80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending.', '0', 'public', NULL, NULL, '2022-01-08 03:18:18', '2022-02-13 02:50:53', NULL, 'publish', '[\"Electronics\"]'),
(3, '5', NULL, 22, 'admin', 'Get Beard Shaving Service At Low Price', 'get-beard-shaving-service-at-low-price', '<p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Barnaby The Bear’s my name, never call me Jack or James, I will sing my way to fame, Barnaby the Bear’s my name. Birds taught me to sing, when they took me to their king, first I had to fly, in the sky so high so high, so high so high so high, so — if you want to sing this way, think of what you’d like to say, add a tune and you will see, just how easy it can be. Treacle pudding, fish and chips, fizzy drinks and liquorice, flowers, rivers, sand and sea, snowflakes and the stars are free.</span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Ulysses, Ulysses — Soaring through all the galaxies. In search of Earth, flying in to the night. Ulysses, Ulysses — Fighting evil and tyranny, with all his power, and with all of his might. Ulysses — no-one else can do the things you do. Ulysses — like a bolt of thunder from the blue. Ulysses — always fighting all the evil forces bringing peace and justice to all.</span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Hey there where ya goin’, not exactly knowin’, who says you have to call just one place home. He’s goin’ everywhere, B.J. McKay and his best friend Bear. He just keeps on movin’, ladies keep improvin’, every day is better than the last. New dreams and better scenes, and best of all I don’t pay property tax. Rollin’ down to Dallas, who’s providin’ my palace, off to New Orleans or who knows where. Places new and ladies, too, I’m B.J. McKay and this is my best friend Bear.</span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.&nbsp;</span></font></p>', '104', 's-admin@gmail.com', '80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending.', '0', 'public', NULL, NULL, '2022-01-08 03:22:45', '2022-02-13 02:50:31', NULL, 'publish', '[\"Salon & Spa\",\"Body Message\"]'),
(4, '4', NULL, 22, 'admin', 'Painting & Renovation Service From Us At Affordable Price', 'painting-&-renovation-service-from-us-at-affordable-price', '<div style=\"text-align: justify;\"><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Barnaby The Bear’s my name, never call me Jack or James, I will sing my way to fame, Barnaby the Bear’s my name. Birds taught me to sing, when they took me to their king, first I had to fly, in the sky so high so high, so high so high so high, so — if you want to sing this way, think of what you’d like to say, add a tune and you will see, just how easy it can be. Treacle pudding, fish and chips, fizzy drinks and liquorice, flowers, rivers, sand and sea, snowflakes and the stars are free.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Ulysses, Ulysses — Soaring through all the galaxies. In search of Earth, flying in to the night. Ulysses, Ulysses — Fighting evil and tyranny, with all his power, and with all of his might. Ulysses — no-one else can do the things you do. Ulysses — like a bolt of thunder from the blue. Ulysses — always fighting all the evil forces bringing peace and justice to all.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Hey there where ya goin’, not exactly knowin’, who says you have to call just one place home. He’s goin’ everywhere, B.J. McKay and his best friend Bear. He just keeps on movin’, ladies keep improvin’, every day is better than the last. New dreams and better scenes, and best of all I don’t pay property tax. Rollin’ down to Dallas, who’s providin’ my palace, off to New Orleans or who knows where. Places new and ladies, too, I’m B.J. McKay and this is my best friend Bear.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.&nbsp;</span></font></p></div>', '105', 's-admin@gmail.com', '80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending.', '0', 'public', 'on', NULL, '2022-01-08 05:23:52', '2022-02-13 02:49:52', NULL, 'publish', '[\"Painting\"]'),
(5, '2', NULL, 22, 'admin', 'Cleaning & Renovation Service By Our Expert Cleaner', 'cleaning-&-renovation-service-by-our-expert-cleaner', '<div style=\"text-align: justify;\"><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Barnaby The Bear’s my name, never call me Jack or James, I will sing my way to fame, Barnaby the Bear’s my name. Birds taught me to sing, when they took me to their king, first I had to fly, in the sky so high so high, so high so high so high, so — if you want to sing this way, think of what you’d like to say, add a tune and you will see, just how easy it can be. Treacle pudding, fish and chips, fizzy drinks and liquorice, flowers, rivers, sand and sea, snowflakes and the stars are free.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Ulysses, Ulysses — Soaring through all the galaxies. In search of Earth, flying in to the night. Ulysses, Ulysses — Fighting evil and tyranny, with all his power, and with all of his might. Ulysses — no-one else can do the things you do. Ulysses — like a bolt of thunder from the blue. Ulysses — always fighting all the evil forces bringing peace and justice to all.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Hey there where ya goin’, not exactly knowin’, who says you have to call just one place home. He’s goin’ everywhere, B.J. McKay and his best friend Bear. He just keeps on movin’, ladies keep improvin’, every day is better than the last. New dreams and better scenes, and best of all I don’t pay property tax. Rollin’ down to Dallas, who’s providin’ my palace, off to New Orleans or who knows where. Places new and ladies, too, I’m B.J. McKay and this is my best friend Bear.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.&nbsp;</span></font></p></div>', '107', 's-admin@gmail.com', '80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending.', '0', 'public', NULL, NULL, '2022-01-08 05:23:57', '2022-02-13 02:49:21', NULL, 'publish', '[\"Cleaning\"]'),
(6, '1', NULL, 22, 'admin', 'AC Cleaning Service ! Get ASAP And Take The Best Benifits', 'ac-cleaning-service-!-get-asap-and-take-the-best-benifits', '<div style=\"text-align: justify;\"><div style=\"text-align: left;\"><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Barnaby The Bear’s my name, never call me Jack or James, I will sing my way to fame, Barnaby the Bear’s my name. Birds taught me to sing, when they took me to their king, first I had to fly, in the sky so high so high, so high so high so high, so — if you want to sing this way, think of what you’d like to say, add a tune and you will see, just how easy it can be. Treacle pudding, fish and chips, fizzy drinks and liquorice, flowers, rivers, sand and sea, snowflakes and the stars are free.</span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Ulysses, Ulysses — Soaring through all the galaxies. In search of Earth, flying in to the night. Ulysses, Ulysses — Fighting evil and tyranny, with all his power, and with all of his might. Ulysses — no-one else can do the things you do. Ulysses — like a bolt of thunder from the blue. Ulysses — always fighting all the evil forces bringing peace and justice to all.</span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Hey there where ya goin’, not exactly knowin’, who says you have to call just one place home. He’s goin’ everywhere, B.J. McKay and his best friend Bear. He just keeps on movin’, ladies keep improvin’, every day is better than the last. New dreams and better scenes, and best of all I don’t pay property tax. Rollin’ down to Dallas, who’s providin’ my palace, off to New Orleans or who knows where. Places new and ladies, too, I’m B.J. McKay and this is my best friend Bear.</span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.&nbsp;</span></font></p></div></div>', '108', 's-admin@gmail.com', '80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending.', '0', 'public', NULL, NULL, '2022-01-08 05:24:04', '2022-02-13 02:48:58', NULL, 'publish', '[\"Electronics\"]'),
(7, '3', NULL, 22, 'admin', 'Moving Service From One Place to Another', 'moving-service-from-one-place-to-another', '<div style=\"text-align: justify;\"><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Barnaby The Bear’s my name, never call me Jack or James, I will sing my way to fame, Barnaby the Bear’s my name. Birds taught me to sing, when they took me to their king, first I had to fly, in the sky so high so high, so high so high so high, so — if you want to sing this way, think of what you’d like to say, add a tune and you will see, just how easy it can be. Treacle pudding, fish and chips, fizzy drinks and liquorice, flowers, rivers, sand and sea, snowflakes and the stars are free.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Ulysses, Ulysses — Soaring through all the galaxies. In search of Earth, flying in to the night. Ulysses, Ulysses — Fighting evil and tyranny, with all his power, and with all of his might. Ulysses — no-one else can do the things you do. Ulysses — like a bolt of thunder from the blue. Ulysses — always fighting all the evil forces bringing peace and justice to all.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Hey there where ya goin’, not exactly knowin’, who says you have to call just one place home. He’s goin’ everywhere, B.J. McKay and his best friend Bear. He just keeps on movin’, ladies keep improvin’, every day is better than the last. New dreams and better scenes, and best of all I don’t pay property tax. Rollin’ down to Dallas, who’s providin’ my palace, off to New Orleans or who knows where. Places new and ladies, too, I’m B.J. McKay and this is my best friend Bear.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.&nbsp;</span></font></p></div>', '106', 's-admin@gmail.com', '80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending.', '0', 'public', NULL, NULL, '2022-01-08 05:24:08', '2022-02-13 02:47:43', NULL, 'publish', '[\"Home Move\"]'),
(8, '4', NULL, 22, 'admin', 'Our Cool Painting Service Only For You', 'our-cool-painting-service-only-for-you', '<div style=\"text-align: justify;\"><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Barnaby The Bear’s my name, never call me Jack or James, I will sing my way to fame, Barnaby the Bear’s my name. Birds taught me to sing, when they took me to their king, first I had to fly, in the sky so high so high, so high so high so high, so — if you want to sing this way, think of what you’d like to say, add a tune and you will see, just how easy it can be. Treacle pudding, fish and chips, fizzy drinks and liquorice, flowers, rivers, sand and sea, snowflakes and the stars are free.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Ulysses, Ulysses — Soaring through all the galaxies. In search of Earth, flying in to the night. Ulysses, Ulysses — Fighting evil and tyranny, with all his power, and with all of his might. Ulysses — no-one else can do the things you do. Ulysses — like a bolt of thunder from the blue. Ulysses — always fighting all the evil forces bringing peace and justice to all.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Hey there where ya goin’, not exactly knowin’, who says you have to call just one place home. He’s goin’ everywhere, B.J. McKay and his best friend Bear. He just keeps on movin’, ladies keep improvin’, every day is better than the last. New dreams and better scenes, and best of all I don’t pay property tax. Rollin’ down to Dallas, who’s providin’ my palace, off to New Orleans or who knows where. Places new and ladies, too, I’m B.J. McKay and this is my best friend Bear.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.&nbsp;</span></font></p></div>', '109', 's-admin@gmail.com', '80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending.', '0', 'public', 'on', NULL, '2022-01-08 05:24:12', '2022-02-13 02:46:58', NULL, 'publish', '[\"Painting\"]'),
(9, '5', NULL, 22, 'admin', 'Now Get Massage Service From Mr Mahmud', 'now-get-massage-service-from-mr-mahmud', '<div style=\"text-align: justify;\"><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Barnaby The Bear’s my name, never call me Jack or James, I will sing my way to fame, Barnaby the Bear’s my name. Birds taught me to sing, when they took me to their king, first I had to fly, in the sky so high so high, so high so high so high, so — if you want to sing this way, think of what you’d like to say, add a tune and you will see, just how easy it can be. Treacle pudding, fish and chips, fizzy drinks and liquorice, flowers, rivers, sand and sea, snowflakes and the stars are free.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Ulysses, Ulysses — Soaring through all the galaxies. In search of Earth, flying in to the night. Ulysses, Ulysses — Fighting evil and tyranny, with all his power, and with all of his might. Ulysses — no-one else can do the things you do. Ulysses — like a bolt of thunder from the blue. Ulysses — always fighting all the evil forces bringing peace and justice to all.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Hey there where ya goin’, not exactly knowin’, who says you have to call just one place home. He’s goin’ everywhere, B.J. McKay and his best friend Bear. He just keeps on movin’, ladies keep improvin’, every day is better than the last. New dreams and better scenes, and best of all I don’t pay property tax. Rollin’ down to Dallas, who’s providin’ my palace, off to New Orleans or who knows where. Places new and ladies, too, I’m B.J. McKay and this is my best friend Bear.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.&nbsp;</span></font></p></div>', '110', 's-admin@gmail.com', '80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending.', '0', 'public', 'on', NULL, '2022-01-08 05:24:17', '2022-02-13 02:46:32', NULL, 'publish', '[\"Salon & Spa\"]'),
(10, '5', NULL, 22, 'admin', 'Hair Cutting Service At Reasonable Price', 'hair-cutting-service-at-reasonable-price', '<div style=\"text-align: justify;\"><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Barnaby The Bear’s my name, never call me Jack or James, I will sing my way to fame, Barnaby the Bear’s my name. Birds taught me to sing, when they took me to their king, first I had to fly, in the sky so high so high, so high so high so high, so — if you want to sing this way, think of what you’d like to say, add a tune and you will see, just how easy it can be. Treacle pudding, fish and chips, fizzy drinks and liquorice, flowers, rivers, sand and sea, snowflakes and the stars are free.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Ulysses, Ulysses — Soaring through all the galaxies. In search of Earth, flying in to the night. Ulysses, Ulysses — Fighting evil and tyranny, with all his power, and with all of his might. Ulysses — no-one else can do the things you do. Ulysses — like a bolt of thunder from the blue. Ulysses — always fighting all the evil forces bringing peace and justice to all.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Hey there where ya goin’, not exactly knowin’, who says you have to call just one place home. He’s goin’ everywhere, B.J. McKay and his best friend Bear. He just keeps on movin’, ladies keep improvin’, every day is better than the last. New dreams and better scenes, and best of all I don’t pay property tax. Rollin’ down to Dallas, who’s providin’ my palace, off to New Orleans or who knows where. Places new and ladies, too, I’m B.J. McKay and this is my best friend Bear.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.&nbsp;</span></font></p></div>', '111', 's-admin@gmail.com', '80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending.', '0', 'public', NULL, NULL, '2022-01-08 05:24:24', '2022-02-13 02:46:00', NULL, 'publish', '[\"Hair Cutting\"]'),
(11, '2', NULL, 22, 'admin', 'Car Cleaning Service From Best Cleaner', 'car-cleaning-service-from-best-cleaner', '<div style=\"text-align: justify;\"><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Barnaby The Bear’s my name, never call me Jack or James, I will sing my way to fame, Barnaby the Bear’s my name. Birds taught me to sing, when they took me to their king, first I had to fly, in the sky so high so high, so high so high so high, so — if you want to sing this way, think of what you’d like to say, add a tune and you will see, just how easy it can be. Treacle pudding, fish and chips, fizzy drinks and liquorice, flowers, rivers, sand and sea, snowflakes and the stars are free.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Ulysses, Ulysses — Soaring through all the galaxies. In search of Earth, flying in to the night. Ulysses, Ulysses — Fighting evil and tyranny, with all his power, and with all of his might. Ulysses — no-one else can do the things you do. Ulysses — like a bolt of thunder from the blue. Ulysses — always fighting all the evil forces bringing peace and justice to all.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Hey there where ya goin’, not exactly knowin’, who says you have to call just one place home. He’s goin’ everywhere, B.J. McKay and his best friend Bear. He just keeps on movin’, ladies keep improvin’, every day is better than the last. New dreams and better scenes, and best of all I don’t pay property tax. Rollin’ down to Dallas, who’s providin’ my palace, off to New Orleans or who knows where. Places new and ladies, too, I’m B.J. McKay and this is my best friend Bear.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.&nbsp;</span></font></p></div>', '112', 's-admin@gmail.com', '80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending.', '0', 'public', NULL, NULL, '2022-01-08 05:24:28', '2022-02-13 02:45:28', NULL, 'publish', '[\"Car Cleaning\",\"Cleaning\"]'),
(12, '2', NULL, 22, 'admin', 'Get Furniture Cleaning Service At Reasonable Price', 'get-furniture-cleaning-service-at-reasonable-price', '<div style=\"text-align: justify;\"><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Barnaby The Bear’s my name, never call me Jack or James, I will sing my way to fame, Barnaby the Bear’s my name. Birds taught me to sing, when they took me to their king, first I had to fly, in the sky so high so high, so high so high so high, so — if you want to sing this way, think of what you’d like to say, add a tune and you will see, just how easy it can be. Treacle pudding, fish and chips, fizzy drinks and liquorice, flowers, rivers, sand and sea, snowflakes and the stars are free.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Ulysses, Ulysses — Soaring through all the galaxies. In search of Earth, flying in to the night. Ulysses, Ulysses — Fighting evil and tyranny, with all his power, and with all of his might. Ulysses — no-one else can do the things you do. Ulysses — like a bolt of thunder from the blue. Ulysses — always fighting all the evil forces bringing peace and justice to all.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Hey there where ya goin’, not exactly knowin’, who says you have to call just one place home. He’s goin’ everywhere, B.J. McKay and his best friend Bear. He just keeps on movin’, ladies keep improvin’, every day is better than the last. New dreams and better scenes, and best of all I don’t pay property tax. Rollin’ down to Dallas, who’s providin’ my palace, off to New Orleans or who knows where. Places new and ladies, too, I’m B.J. McKay and this is my best friend Bear.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p style=\"text-align: left;\"><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.&nbsp;</span></font></p></div>', '113', 's-admin@gmail.com', '80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending.', '0', 'public', NULL, NULL, '2022-01-08 05:44:56', '2022-02-13 02:44:10', NULL, 'publish', '[\"Cleaning\"]'),
(13, '1', NULL, 22, 'admin', 'Get Our Electrice Service For Home and Office', 'get-our-electrice-service-for-home-and-office', '<p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Barnaby The Bear’s my name, never call me Jack or James, I will sing my way to fame, Barnaby the Bear’s my name. Birds taught me to sing, when they took me to their king, first I had to fly, in the sky so high so high, so high so high so high, so — if you want to sing this way, think of what you’d like to say, add a tune and you will see, just how easy it can be. Treacle pudding, fish and chips, fizzy drinks and liquorice, flowers, rivers, sand and sea, snowflakes and the stars are free.</span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Ulysses, Ulysses — Soaring through all the galaxies. In search of Earth, flying in to the night. Ulysses, Ulysses — Fighting evil and tyranny, with all his power, and with all of his might. Ulysses — no-one else can do the things you do. Ulysses — like a bolt of thunder from the blue. Ulysses — always fighting all the evil forces bringing peace and justice to all.</span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">Hey there where ya goin’, not exactly knowin’, who says you have to call just one place home. He’s goin’ everywhere, B.J. McKay and his best friend Bear. He just keeps on movin’, ladies keep improvin’, every day is better than the last. New dreams and better scenes, and best of all I don’t pay property tax. Rollin’ down to Dallas, who’s providin’ my palace, off to New Orleans or who knows where. Places new and ladies, too, I’m B.J. McKay and this is my best friend Bear.</span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#666666\" face=\"Roboto, sans-serif\"><span style=\"font-size: 16px;\">I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.&nbsp;</span></font></p>', '114', 's-admin@gmail.com', '80 days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending.', '0', 'public', NULL, NULL, '2022-01-08 23:09:53', '2022-02-13 02:45:01', NULL, 'publish', '[\"Switch Repair\",\"Board Repair\"]');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(20) NOT NULL,
  `user_id` int(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `url`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Test1', 'Test1', '24', '2022-01-07 22:17:46', '2022-01-07 22:18:26'),
(4, 'Test2', 'Test2', '25', '2022-01-07 22:18:09', '2022-01-07 22:18:09'),
(5, 'Test3', 'Test3', '26', '2022-01-07 22:19:08', '2022-01-07 22:19:08'),
(6, 'Test4', 'Test4', '27', '2022-01-07 22:19:37', '2022-01-07 22:19:37'),
(7, 'Test5', '#', '25', '2022-01-07 22:20:38', '2022-01-07 22:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_jobs`
--

CREATE TABLE `buyer_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `child_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `buyer_id` bigint(20) NOT NULL,
  `country_id` bigint(20) NOT NULL DEFAULT '0',
  `city_id` bigint(20) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `is_job_on` tinyint(4) NOT NULL DEFAULT '1',
  `is_job_online` tinyint(4) NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `view` bigint(20) NOT NULL DEFAULT '0',
  `dead_line` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `mobile_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `image`, `status`, `mobile_icon`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'electronics', 'las la-charging-station', '103', 1, '214', '2021-11-29 00:31:11', '2022-06-01 16:59:54'),
(2, 'Cleaning', 'cleaning', 'las la-toilet', '113', 1, '215', '2021-11-29 00:34:42', '2022-06-01 17:00:34'),
(3, 'Home Move', 'home-move', 'las la-people-carry', '106', 1, '213', '2021-11-29 00:35:13', '2022-06-01 17:00:14'),
(4, 'Painting', 'painting', 'las la-paint-roller', '109', 1, '216', '2021-11-29 00:35:49', '2022-06-01 17:00:50'),
(5, 'Salon & Spa', 'salon-&-spa', 'las la-hand-scissors', '111', 1, '212', '2021-11-29 00:36:07', '2022-06-01 17:01:18'),
(6, 'Helping', 'helping', 'lab la-accessible-icon', '97', 1, '217', '2021-11-29 00:36:25', '2022-06-01 17:01:24'),
(7, 'Digital Marketing', 'digital-marketing', 'las la-closed-captioning', '177', 1, '218', '2022-04-24 00:05:59', '2022-07-22 22:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` tinyint(4) NOT NULL,
  `sub_category_id` tinyint(4) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', 1, '2021-12-06 23:56:27', '2021-12-06 23:56:27'),
(2, 'United States (USA)', 1, '2021-12-06 23:56:42', '2021-12-06 23:56:42'),
(3, 'United Kingdom (UK)', 1, '2021-12-06 23:56:53', '2021-12-06 23:56:53'),
(4, 'Japan', 1, '2021-12-06 23:57:01', '2021-12-06 23:57:01'),
(5, 'Australia', 1, '2021-12-06 23:57:08', '2021-12-06 23:57:08'),
(6, 'India', 1, '2022-02-16 10:10:41', '2022-02-16 10:10:41'),
(7, 'Brazil', 1, '2022-02-16 10:10:53', '2022-02-16 10:10:53'),
(8, 'Canada', 1, '2022-02-16 10:11:01', '2022-02-16 10:11:01'),
(9, 'Pakistan', 1, '2022-02-16 10:11:25', '2022-02-16 10:11:25'),
(10, 'Turkey', 1, '2022-02-27 02:02:58', '2022-02-27 02:02:58'),
(11, 'Germany', 1, '2022-02-27 02:03:07', '2022-02-27 02:03:07'),
(12, 'France', 1, '2022-02-27 02:03:11', '2022-02-27 02:03:11'),
(13, 'Italy', 1, '2022-02-27 02:03:20', '2022-02-27 02:03:20'),
(14, 'Kenya', 1, '2022-02-27 02:03:26', '2022-04-21 01:19:01'),
(15, 'United Arab Emirates(UAE)', 1, '2022-02-27 02:04:07', '2022-02-27 02:04:07'),
(64, 'TestCountry', 1, '2022-10-24 06:27:34', '2022-10-24 06:27:34'),
(65, 'SohanCountry', 1, '2022-10-24 06:27:34', '2022-10-24 06:27:34'),
(66, 'DesiCountry', 1, '2022-10-24 06:27:34', '2022-10-24 06:27:34'),
(67, 'TwoCountry', 1, '2022-10-24 06:29:27', '2022-10-24 06:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `custom_font_imports`
--

CREATE TABLE `custom_font_imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `seller_id` int(11) NOT NULL,
  `total_day` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `day`, `status`, `seller_id`, `total_day`, `created_at`, `updated_at`) VALUES
(1, 'Sat', 0, 1, 7, '2021-12-14 01:27:15', '2022-02-16 12:32:13'),
(7, 'Sun', 0, 1, 7, '2021-12-14 03:52:30', '2022-02-16 12:32:13'),
(8, 'Mon', 0, 1, 7, '2021-12-14 05:28:28', '2022-02-16 12:32:13'),
(9, 'Tue', 0, 1, 7, '2021-12-14 05:28:37', '2022-02-16 12:32:13'),
(14, 'Fri', 0, 2, 12, '2022-01-17 08:27:17', '2022-01-17 08:27:17'),
(15, 'Wed', 0, 1, 7, '2022-02-07 00:24:34', '2022-02-16 12:32:13'),
(16, 'Thu', 0, 1, 7, '2022-02-07 00:24:49', '2022-02-16 12:32:13'),
(17, 'Fri', 0, 1, 7, '2022-02-07 00:49:09', '2022-02-16 12:32:13'),
(19, 'Sat', 0, 2, NULL, '2022-02-07 00:58:21', '2022-02-07 00:58:21'),
(20, 'Sun', 0, 2, NULL, '2022-02-07 00:58:32', '2022-02-07 00:58:32'),
(21, 'Mon', 0, 2, NULL, '2022-02-07 00:58:40', '2022-02-07 00:58:40'),
(22, 'Tue', 0, 2, NULL, '2022-02-07 00:58:49', '2022-02-07 00:58:49'),
(23, 'Wed', 0, 2, NULL, '2022-02-07 00:58:59', '2022-02-07 00:58:59'),
(27, 'Sat', 0, 4, 14, '2022-02-07 02:32:46', '2022-02-14 00:32:17'),
(28, 'Mon', 0, 4, 14, '2022-02-09 00:44:06', '2022-02-14 00:32:17'),
(29, 'Fri', 0, 4, 14, '2022-02-09 00:44:16', '2022-02-14 00:32:17'),
(30, 'Sun', 0, 4, 14, '2022-02-09 00:44:36', '2022-02-14 00:32:17'),
(31, 'Tue', 0, 4, 14, '2022-02-09 00:44:48', '2022-02-14 00:32:17'),
(32, 'Wed', 0, 4, 14, '2022-02-09 00:45:03', '2022-02-14 00:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `edit_service_histories`
--

CREATE TABLE `edit_service_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `seller_id` bigint(20) NOT NULL,
  `service_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extra_services`
--

CREATE TABLE `extra_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manual_payment_gateway_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `commission_amount` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` bigint(20) UNSIGNED DEFAULT NULL COMMENT '0=pending,1=accept,2=decline',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extra_services`
--

INSERT INTO `extra_services` (`id`, `order_id`, `title`, `quantity`, `price`, `payment_gateway`, `manual_payment_gateway_image`, `tax`, `commission_amount`, `sub_total`, `total`, `transaction_id`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 2186, 'sdfsdf', 2, 10, 'Manual Payment', 'manual_attachment_1665576501.png', 1.4, 0, 20, 21.4, NULL, 'complete', 2, '2022-10-12 03:49:42', '2022-10-12 07:23:50'),
(2, 2186, 'qweqweq', 2, 34, NULL, NULL, 4.76, 0, 68, 72.76, '20221012111212800110168962604132088', 'complete', 0, '2022-10-12 03:52:52', '2022-10-12 04:08:53'),
(5, 2269, 'TestT', 1, 10, NULL, NULL, 0.7, 0, 10, 10.7, NULL, 'pending', 0, '2022-11-06 23:30:25', '2022-11-06 23:30:25'),
(7, 2, 'Alada Service', 3, 10, 'Manual Payment', 'manual_attachment_1667807742.png', 2.1, 0, 30, 32.1, NULL, 'complete', 1, '2022-11-07 01:52:14', '2022-11-07 02:10:07'),
(9, 2, 'sfsdf', 4, 100, 'Manual Payment', 'manual_attachment_1669195938.jpg', 28, 0, 400, 428, NULL, 'pending', 1, '2022-11-07 02:21:00', '2022-11-23 03:32:18'),
(13, 2, 'v', 1, 2, NULL, NULL, 0.14, 0, 2, 2.14, NULL, 'pending', 1, '2022-11-23 04:21:28', '2022-11-23 06:50:10'),
(14, 2, 'm', 7, 8, 'Manual Payment', 'manual_attachment_1669208281.jpg', 3.92, 0, 56, 59.92, NULL, 'pending', 1, '2022-11-23 06:57:22', '2022-11-23 06:58:01'),
(15, 2529, 'test title', 1, 10, NULL, NULL, 0.7, 0, 10, 10.7, NULL, 'pending', 1, '2022-12-27 00:35:14', '2022-12-27 03:07:53'),
(16, 2529, 'nnnn', 1, 5, NULL, NULL, 0.35, 0, 5, 5.35, NULL, 'pending', 1, '2022-12-27 03:09:31', '2022-12-27 03:10:14'),
(17, 2529, 'bbb', 1, 3, NULL, NULL, 0.21, 0, 3, 3.21, NULL, 'pending', 1, '2022-12-27 03:16:31', '2022-12-27 03:16:57'),
(18, 2529, 'qqq', 1, 3, NULL, NULL, 0.21, 0, 3, 3.21, NULL, 'pending', 1, '2022-12-27 04:28:12', '2022-12-27 04:29:30'),
(19, 2529, 'bbbgggg', 1, 3, NULL, NULL, 0.21, 0, 3, 3.21, NULL, 'pending', 1, '2022-12-27 06:37:40', '2022-12-27 06:47:27'),
(21, 2, 'jnn', 7, 88, NULL, NULL, 43.12, 0, 616, 659.12, NULL, 'pending', 0, '2022-12-31 16:41:00', '2022-12-31 16:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_builders`
--

CREATE TABLE `form_builders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` longtext COLLATE utf8mb4_unicode_ci,
  `success_message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_builders`
--

INSERT INTO `form_builders` (`id`, `title`, `email`, `button_text`, `fields`, `success_message`, `created_at`, `updated_at`) VALUES
(1, 'Contact Form', 'dvrobin4@gmail.com', 'Send Message', '{\"success_message\":\"Thanx for your message\",\"field_type\":[\"text\",\"email\",\"tel\",\"text\",\"textarea\"],\"field_name\":[\"name\",\"email\",\"phone\",\"address\",\"message\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Your Phone\",\"Your Address\",\"Message\"],\"field_required\":[\"on\",\"on\",\"on\",\"on\",\"on\"]}', 'Thanx for your message', '2021-10-07 01:27:02', '2022-07-04 07:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `job_requests`
--

CREATE TABLE `job_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) NOT NULL,
  `buyer_id` bigint(20) NOT NULL,
  `job_post_id` bigint(20) NOT NULL,
  `is_hired` tinyint(4) NOT NULL DEFAULT '0',
  `expected_salary` double DEFAULT NULL,
  `cover_letter` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_request_conversations`
--

CREATE TABLE `job_request_conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `notify` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` int(10) UNSIGNED DEFAULT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `slug`, `default`, `direction`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English (UK)', 'en_GB', 1, 'ltr', 'publish', '2020-01-03 18:58:44', '2022-07-23 05:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `live_chat_messages`
--

CREATE TABLE `live_chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) NOT NULL,
  `to_user` bigint(20) NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `buyer_id` bigint(20) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_uploads`
--

CREATE TABLE `media_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` text COLLATE utf8mb4_unicode_ci,
  `size` text COLLATE utf8mb4_unicode_ci,
  `dimensions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_uploads`
--

INSERT INTO `media_uploads` (`id`, `title`, `path`, `alt`, `size`, `dimensions`, `created_at`, `updated_at`, `type`, `user_id`) VALUES
(1, 'favicons.png', 'favicons1637750368.png', NULL, '2.28 KB', '40 x 40 pixels', '2021-11-24 04:39:28', '2021-11-24 04:39:28', 'admin', 22),
(2, 'logo-01.png', 'logo-011637754681.png', NULL, '4.19 KB', '214 x 51 pixels', '2021-11-24 05:51:21', '2021-11-24 05:51:21', 'admin', 22),
(3, 'logo-02.png', 'logo-021637754687.png', NULL, '4.49 KB', '214 x 51 pixels', '2021-11-24 05:51:27', '2021-11-24 05:51:27', 'admin', 22),
(4, 'banner-bg.jpg', 'banner-bg1638104986.jpg', NULL, '743.1 KB', '1920 x 931 pixels', '2021-11-28 07:09:46', '2021-11-28 07:09:46', 'admin', 22),
(5, 'banner1.png', 'banner11638279446.png', NULL, '686.35 KB', '641 x 918 pixels', '2021-11-30 07:37:26', '2021-11-30 07:37:26', 'web', 12),
(6, 'banner2.jpg', 'banner21638339592.jpg', NULL, '253.08 KB', '743 x 743 pixels', '2021-12-01 00:19:53', '2021-12-01 00:19:53', 'web', 12),
(7, 'banner-bg.jpg', 'banner-bg1638446467.jpg', NULL, '743.1 KB', '1920 x 931 pixels', '2021-12-02 06:01:08', '2021-12-02 06:01:08', 'web', 12),
(8, 'author7.jpg', 'author71638610733.jpg', NULL, '45.01 KB', '300 x 220 pixels', '2021-12-04 03:38:53', '2021-12-04 03:38:53', 'web', 12),
(9, 'serviece1.jpg', 'serviece11638621079.jpg', NULL, '30.93 KB', '280 x 200 pixels', '2021-12-04 06:31:19', '2021-12-04 06:31:19', 'web', 12),
(10, 'author7.jpg', 'author71638869659.jpg', NULL, '45.01 KB', '300 x 220 pixels', '2021-12-07 03:34:19', '2021-12-07 03:34:19', 'web', 1),
(11, 'extra1.jpg', 'extra11638872378.jpg', NULL, '6.46 KB', '78 x 78 pixels', '2021-12-07 04:19:38', '2021-12-07 04:19:38', 'web', 1),
(12, 'author2.jpg', 'author21638874607.jpg', NULL, '39.99 KB', '350 x 240 pixels', '2021-12-07 04:56:47', '2021-12-07 04:56:47', 'web', 1),
(13, 's2.jpg', 's21638874652.jpg', NULL, '39.99 KB', '350 x 240 pixels', '2021-12-07 04:57:32', '2021-12-07 04:57:32', 'web', 1),
(14, 's3.jpg', 's31638879054.jpg', NULL, '46.44 KB', '350 x 240 pixels', '2021-12-07 06:10:54', '2021-12-07 06:10:54', 'web', 1),
(15, 's5.jpg', 's51638879454.jpg', NULL, '48.7 KB', '342 x 220 pixels', '2021-12-07 06:17:34', '2021-12-07 06:17:34', 'web', 1),
(16, 's6.jpg', 's61638879755.jpg', NULL, '36.3 KB', '342 x 220 pixels', '2021-12-07 06:22:35', '2021-12-07 06:22:35', 'web', 1),
(17, 's9.jpg', 's91638880201.jpg', NULL, '36.71 KB', '300 x 220 pixels', '2021-12-07 06:30:02', '2021-12-07 06:30:02', 'web', 1),
(18, 's12.jpg', 's121638880499.jpg', NULL, '48.05 KB', '300 x 220 pixels', '2021-12-07 06:34:59', '2021-12-07 06:34:59', 'web', 1),
(19, 'author9.jpg', 'author91638938458.jpg', NULL, '36.71 KB', '300 x 220 pixels', '2021-12-07 22:40:58', '2021-12-07 22:40:58', 'web', 1),
(20, 'image.png', 'image1638946497.png', NULL, '635.92 KB', '512 x 512 pixels', '2021-12-08 00:54:57', '2021-12-08 00:54:57', 'web', 2),
(21, 's12.jpg', 's121638946666.jpg', NULL, '48.05 KB', '300 x 220 pixels', '2021-12-08 00:57:46', '2021-12-08 00:57:46', 'web', 2),
(22, 'author11.jpg', 'author111639044291.jpg', NULL, '39.95 KB', '300 x 220 pixels', '2021-12-09 04:04:51', '2021-12-09 04:04:51', 'web', 2),
(23, 'author9.jpg', 'author91639999147.jpg', NULL, '36.71 KB', '300 x 220 pixels', '2021-12-20 05:19:07', '2021-12-20 05:19:07', 'web', 3),
(24, 'cl1.png', 'cl11641478287.png', NULL, '3.75 KB', '192 x 68 pixels', '2022-01-06 08:11:27', '2022-01-06 08:11:27', 'admin', 22),
(25, 'cl2.png', 'cl21641480573.png', NULL, '4.71 KB', '182 x 76 pixels', '2022-01-06 08:49:33', '2022-01-06 08:49:33', 'admin', 22),
(26, 'cl3.png', 'cl31641615538.png', NULL, '4.45 KB', '172 x 62 pixels', '2022-01-07 22:18:59', '2022-01-07 22:18:59', 'admin', 22),
(27, 'cl4.png', 'cl41641615570.png', NULL, '3.37 KB', '105 x 76 pixels', '2022-01-07 22:19:30', '2022-01-07 22:19:30', 'admin', 22),
(28, 'bd1.jpg', 'bd11641631771.jpg', NULL, '415.87 KB', '1110 x 650 pixels', '2022-01-08 02:49:32', '2022-01-08 02:49:32', 'admin', 22),
(29, 'b2.jpg', 'b21641633715.jpg', NULL, '45.03 KB', '382 x 254 pixels', '2022-01-08 03:21:55', '2022-05-05 19:45:19', 'admin', 22),
(30, 'b5.jpg', 'b51641641302.jpg', NULL, '38.87 KB', '382 x 254 pixels', '2022-01-08 05:28:22', '2022-01-08 05:28:22', 'admin', 22),
(31, 'b1.jpg', 'b11641641414.jpg', NULL, '47.13 KB', '350 x 240 pixels', '2022-01-08 05:30:14', '2022-01-08 05:30:14', 'admin', 22),
(32, 'b9.jpg', 'b91641641557.jpg', NULL, '51.68 KB', '382 x 254 pixels', '2022-01-08 05:32:38', '2022-01-08 05:32:38', 'admin', 22),
(33, 'b3.jpg', 'b31641641631.jpg', NULL, '49.45 KB', '382 x 254 pixels', '2022-01-08 05:33:51', '2022-01-08 05:33:51', 'admin', 22),
(34, 'b6.jpg', 'b61641641712.jpg', NULL, '67.29 KB', '350 x 240 pixels', '2022-01-08 05:35:12', '2022-01-08 05:35:12', 'admin', 22),
(35, 'b7.jpg', 'b71641641793.jpg', NULL, '42.47 KB', '350 x 240 pixels', '2022-01-08 05:36:33', '2022-01-08 05:36:33', 'admin', 22),
(36, 'b8.jpg', 'b81641641872.jpg', NULL, '47.73 KB', '350 x 240 pixels', '2022-01-08 05:37:52', '2022-01-08 05:37:52', 'admin', 22),
(37, 'bd2.jpg', 'bd21641642117.jpg', NULL, '126.62 KB', '540 x 341 pixels', '2022-01-08 05:41:57', '2022-01-08 05:41:57', 'admin', 22),
(38, 'b3.jpg', 'b31641642209.jpg', NULL, '49.45 KB', '382 x 254 pixels', '2022-01-08 05:43:29', '2022-01-08 05:43:29', 'admin', 22),
(39, 'b9.jpg', 'b91641642356.jpg', NULL, '51.68 KB', '382 x 254 pixels', '2022-01-08 05:45:56', '2022-01-08 05:45:56', 'admin', 22),
(40, 'seller2.jpg', 'seller21641902661.jpg', NULL, '128.8 KB', '500 x 443 pixels', '2022-01-11 06:04:22', '2022-01-11 06:04:22', 'admin', 22),
(41, 'banner-smile.png', 'banner-smile1641971297.png', NULL, '1.81 KB', '46 x 46 pixels', '2022-01-12 01:08:17', '2022-01-12 01:08:17', 'admin', 22),
(42, 'dot-square.png', 'dot-square1641971791.png', NULL, '4.9 KB', '163 x 163 pixels', '2022-01-12 01:16:31', '2022-01-12 01:16:31', 'admin', 22),
(43, 'c1.png', 'c11641975772.png', NULL, '4.09 KB', '80 x 80 pixels', '2022-01-12 02:22:52', '2022-01-12 02:22:52', 'admin', 22),
(44, 'c3.png', 'c31641976661.png', NULL, '4.35 KB', '80 x 80 pixels', '2022-01-12 02:37:41', '2022-01-12 02:37:41', 'admin', 22),
(45, 'c2.png', 'c21641976661.png', NULL, '5.71 KB', '80 x 80 pixels', '2022-01-12 02:37:41', '2022-01-12 02:37:41', 'admin', 22),
(46, 'c4.png', 'c41641976661.png', NULL, '4.58 KB', '80 x 80 pixels', '2022-01-12 02:37:41', '2022-01-12 02:37:41', 'admin', 22),
(47, 'c5.png', 'c51641976661.png', NULL, '2.08 KB', '80 x 80 pixels', '2022-01-12 02:37:41', '2022-01-12 02:37:41', 'admin', 22),
(48, 'c6.png', 'c61641976662.png', NULL, '3.54 KB', '80 x 80 pixels', '2022-01-12 02:37:42', '2022-01-12 02:37:42', 'admin', 22),
(49, 'm1.png', 'm11641985855.png', NULL, '2.6 KB', '60 x 60 pixels', '2022-01-12 05:10:55', '2022-01-12 05:10:55', 'admin', 22),
(50, 'm2.png', 'm21641985855.png', NULL, '2.27 KB', '60 x 60 pixels', '2022-01-12 05:10:55', '2022-01-12 05:10:55', 'admin', 22),
(51, 'm3.png', 'm31641985855.png', NULL, '2.44 KB', '60 x 60 pixels', '2022-01-12 05:10:55', '2022-01-12 05:10:55', 'admin', 22),
(52, 'm4.png', 'm41641985855.png', NULL, '2.32 KB', '60 x 60 pixels', '2022-01-12 05:10:55', '2022-01-12 05:10:55', 'admin', 22),
(53, 'market-shape.png', 'market-shape1641985855.png', NULL, '39.73 KB', '608 x 608 pixels', '2022-01-12 05:10:55', '2022-01-12 05:10:55', 'admin', 22),
(54, 'circle1.png', 'circle11641994879.png', NULL, '1.35 KB', '70 x 70 pixels', '2022-01-12 07:41:20', '2022-01-12 07:41:20', 'admin', 22),
(55, 'circle2.png', 'circle21641994879.png', NULL, '5.26 KB', '164 x 164 pixels', '2022-01-12 07:41:20', '2022-01-12 07:41:20', 'admin', 22),
(56, 'dot-square.png', 'dot-square1641994880.png', NULL, '3.79 KB', '138 x 138 pixels', '2022-01-12 07:41:20', '2022-01-12 07:41:20', 'admin', 22),
(57, 'line-cross.png', 'line-cross1641994880.png', NULL, '3.94 KB', '222 x 139 pixels', '2022-01-12 07:41:20', '2022-01-12 07:41:20', 'admin', 22),
(58, 'banner1.png', 'banner11642048429.png', NULL, '686.35 KB', '641 x 918 pixels', '2022-01-12 22:33:49', '2022-01-12 22:33:49', 'admin', 22),
(59, 'logo-01.png', 'logo-011642251277.png', NULL, '4.19 KB', '214 x 51 pixels', '2022-01-15 06:54:37', '2022-01-15 06:54:37', 'admin', 22),
(60, 'c2.png', 'c21642306753.png', NULL, '1.76 KB', '50 x 28 pixels', '2022-01-15 22:19:13', '2022-01-15 22:19:13', 'admin', 22),
(61, 'c1.png', 'c11642306753.png', NULL, '1.39 KB', '50 x 28 pixels', '2022-01-15 22:19:13', '2022-01-15 22:19:13', 'admin', 22),
(62, 'c3.png', 'c31642306753.png', NULL, '2.18 KB', '50 x 28 pixels', '2022-01-15 22:19:13', '2022-01-15 22:19:13', 'admin', 22),
(63, 'c4.png', 'c41642306753.png', NULL, '1.61 KB', '50 x 28 pixels', '2022-01-15 22:19:13', '2022-01-15 22:19:13', 'admin', 22),
(64, 'logo-footer.png', 'logo-footer1642310896.png', NULL, '3.55 KB', '173 x 41 pixels', '2022-01-15 23:28:16', '2022-01-15 23:28:16', 'admin', 22),
(65, 'r2vg1z.jpg', 'r2vg1z1642491053.jpg', NULL, '25.52 KB', '720 x 720 pixels', '2022-01-18 01:30:53', '2022-01-18 01:30:53', 'web', 3),
(66, 'paytm.jpeg', 'paytm1642502870.jpeg', NULL, '18.17 KB', '630 x 336 pixels', '2022-01-18 04:47:50', '2022-01-18 04:47:50', 'admin', 22),
(67, 'stripe.png', 'stripe1642503882.png', NULL, '3.28 KB', '318 x 159 pixels', '2022-01-18 05:04:42', '2022-01-18 05:04:42', 'admin', 22),
(68, 'razorpay.png', 'razorpay1642506994.png', NULL, '20.27 KB', '900 x 230 pixels', '2022-01-18 05:56:34', '2022-01-18 05:56:34', 'admin', 22),
(69, 'paystack.png', 'paystack1642507044.png', NULL, '2.86 KB', '301 x 167 pixels', '2022-01-18 05:57:24', '2022-01-18 05:57:24', 'admin', 22),
(70, 'moli.png', 'moli1642507075.png', NULL, '2.11 KB', '301 x 167 pixels', '2022-01-18 05:57:55', '2022-01-18 05:57:55', 'admin', 22),
(71, 'flutterwave-logo.png', 'flutterwave-logo1642507117.png', NULL, '4.51 KB', '900 x 500 pixels', '2022-01-18 05:58:38', '2022-01-18 05:58:38', 'admin', 22),
(72, 'paypal.png', 'paypal1642511774.png', NULL, '3.14 KB', '300 x 168 pixels', '2022-01-18 07:16:14', '2022-01-18 07:16:14', 'admin', 22),
(73, 'OIP.jpg', 'oip1642584590.jpg', NULL, '10.9 KB', '324 x 173 pixels', '2022-01-19 03:29:50', '2022-05-05 11:52:39', 'admin', 22),
(74, 'payfast.png', 'payfast1642666904.png', NULL, '2.72 KB', '314 x 160 pixels', '2022-01-20 02:21:44', '2022-01-20 02:21:44', 'admin', 22),
(75, 'cashfree.png', 'cashfree1642672230.png', NULL, '4.06 KB', '310 x 162 pixels', '2022-01-20 03:50:30', '2022-01-20 03:50:30', 'admin', 22),
(76, 'instramojo.jpeg', 'instramojo1642673705.jpeg', NULL, '23.94 KB', '827 x 437 pixels', '2022-01-20 04:15:05', '2022-01-20 04:15:05', 'admin', 22),
(77, 'mercadopago.png', 'mercadopago1642674662.png', NULL, '17.66 KB', '1280 x 334 pixels', '2022-01-20 04:31:03', '2022-01-20 04:31:03', 'admin', 22),
(78, 'midtrans.jpg', 'midtrans1642678419.jpg', NULL, '13.1 KB', '710 x 380 pixels', '2022-01-20 05:33:39', '2022-01-20 05:33:39', 'admin', 22),
(79, 'sd.jpg', 'sd1643688644.jpg', NULL, '176.72 KB', '730 x 497 pixels', '2022-01-31 22:10:45', '2022-01-31 22:10:45', 'web', 1),
(80, 'sd4.jpg', 'sd41643689294.jpg', NULL, '165.76 KB', '730 x 497 pixels', '2022-01-31 22:21:35', '2022-01-31 22:21:35', 'web', 1),
(81, 'sd2.jpg', 'sd21643689732.jpg', NULL, '67.69 KB', '730 x 497 pixels', '2022-01-31 22:28:52', '2022-01-31 22:28:52', 'web', 1),
(82, '350.png', '3501643689992.png', NULL, '94.74 KB', '350 x 240 pixels', '2022-01-31 22:33:12', '2022-01-31 22:33:12', 'web', 1),
(83, '730.png', '7301643690061.png', NULL, '324.15 KB', '730 x 500 pixels', '2022-01-31 22:34:22', '2022-01-31 22:34:22', 'web', 1),
(84, '1920.png', '19201643690135.png', NULL, '1.63 MB', '1920 x 1316 pixels', '2022-01-31 22:35:36', '2022-01-31 22:35:36', 'web', 1),
(85, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-54.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-541643693233.png', NULL, '459.88 KB', '730 x 497 pixels', '2022-01-31 23:27:13', '2022-01-31 23:27:13', 'web', 1),
(86, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-61.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-611643693372.png', NULL, '477.29 KB', '730 x 497 pixels', '2022-01-31 23:29:32', '2022-01-31 23:29:32', 'web', 1),
(87, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-58.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-581643693756.png', NULL, '577.83 KB', '730 x 497 pixels', '2022-01-31 23:35:56', '2022-01-31 23:35:56', 'web', 1),
(88, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-20.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-201643693988.png', NULL, '445.6 KB', '730 x 497 pixels', '2022-01-31 23:39:48', '2022-01-31 23:39:48', 'web', 1),
(89, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-49.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-491643694792.png', NULL, '593.68 KB', '730 x 497 pixels', '2022-01-31 23:53:12', '2022-01-31 23:53:12', 'web', 2),
(90, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-51.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-511643694967.png', NULL, '627.07 KB', '730 x 497 pixels', '2022-01-31 23:56:07', '2022-01-31 23:56:07', 'web', 2),
(91, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-7.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-71643695162.png', NULL, '551.09 KB', '730 x 497 pixels', '2022-01-31 23:59:22', '2022-01-31 23:59:22', 'web', 2),
(92, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-9.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-91643695259.png', NULL, '546.44 KB', '730 x 497 pixels', '2022-02-01 00:00:59', '2022-02-01 00:00:59', 'web', 2),
(93, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-64.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-641643695713.png', NULL, '557.07 KB', '730 x 497 pixels', '2022-02-01 00:08:33', '2022-02-01 00:08:33', 'web', 2),
(94, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-31.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-311643696011.png', NULL, '475.09 KB', '730 x 497 pixels', '2022-02-01 00:13:32', '2022-02-01 00:13:32', 'web', 2),
(95, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-35.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-351643700019.png', NULL, '681.53 KB', '730 x 497 pixels', '2022-02-01 01:20:19', '2022-02-01 01:20:19', 'web', 2),
(96, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-57.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-571643701130.png', NULL, '566.57 KB', '730 x 497 pixels', '2022-02-01 01:38:51', '2022-02-01 01:38:51', 'web', 1),
(97, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-19.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-191643709206.png', NULL, '445.87 KB', '730 x 497 pixels', '2022-02-01 03:53:26', '2022-02-01 03:53:26', 'web', 5),
(98, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-15.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-151643709530.png', NULL, '609.5 KB', '730 x 497 pixels', '2022-02-01 03:58:51', '2022-02-01 03:58:51', 'web', 5),
(99, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-34.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-341643710084.png', NULL, '361.25 KB', '730 x 497 pixels', '2022-02-01 04:08:04', '2022-02-01 04:08:04', 'web', 5),
(100, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-22.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-221643710652.png', NULL, '389.29 KB', '730 x 497 pixels', '2022-02-01 04:17:32', '2022-02-01 04:17:32', 'web', 5),
(101, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-56.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-561643711145.png', NULL, '705.04 KB', '730 x 497 pixels', '2022-02-01 04:25:45', '2022-02-01 04:25:45', 'web', 5),
(102, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-45.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-451643711224.png', NULL, '600.61 KB', '730 x 497 pixels', '2022-02-01 04:27:04', '2022-02-01 04:27:04', 'web', 5),
(103, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-5.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-51643712682.png', 'AAAAA', '431.76 KB', '730 x 497 pixels', '2022-02-01 04:51:22', '2022-05-10 14:14:39', 'admin', 22),
(104, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-29.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-291643712832.png', NULL, '612.42 KB', '730 x 497 pixels', '2022-02-01 04:53:52', '2022-02-01 04:53:52', 'admin', 22),
(105, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-8.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-81643712998.png', NULL, '458.52 KB', '730 x 497 pixels', '2022-02-01 04:56:38', '2022-02-01 04:56:38', 'admin', 22),
(106, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-54.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-541643714922.png', NULL, '459.88 KB', '730 x 497 pixels', '2022-02-01 05:28:42', '2022-02-01 05:28:42', 'admin', 22),
(107, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-61.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-611643715007.png', 'ddddd', '477.29 KB', '730 x 497 pixels', '2022-02-01 05:30:08', '2022-04-03 11:02:40', 'admin', 22),
(108, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-58.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-581643715103.png', NULL, '577.83 KB', '730 x 497 pixels', '2022-02-01 05:31:43', '2022-02-01 05:31:43', 'admin', 22),
(109, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-20.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-201643715291.png', NULL, '445.6 KB', '730 x 497 pixels', '2022-02-01 05:34:51', '2022-02-01 05:34:51', 'admin', 22),
(110, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-49.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-491643715397.png', NULL, '593.68 KB', '730 x 497 pixels', '2022-02-01 05:36:37', '2022-02-01 05:36:37', 'admin', 22),
(111, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-52.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-521643715484.png', NULL, '602.87 KB', '730 x 497 pixels', '2022-02-01 05:38:05', '2022-02-01 05:38:05', 'admin', 22),
(112, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-7.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-71643715584.png', NULL, '551.09 KB', '730 x 497 pixels', '2022-02-01 05:39:44', '2022-02-01 05:39:44', 'admin', 22),
(113, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-9.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-91643715796.png', NULL, '546.44 KB', '730 x 497 pixels', '2022-02-01 05:43:16', '2022-02-01 05:43:16', 'admin', 22),
(114, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-31.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-311643715937.png', NULL, '475.09 KB', '730 x 497 pixels', '2022-02-01 05:45:37', '2022-02-01 05:45:37', 'admin', 22),
(115, 'circle1.png', 'circle11643799195.png', NULL, '1.35 KB', '70 x 70 pixels', '2022-02-02 04:53:15', '2022-02-02 04:53:15', 'admin', 22),
(116, 'circle2.png', 'circle21643799195.png', NULL, '5.26 KB', '164 x 164 pixels', '2022-02-02 04:53:15', '2022-02-02 04:53:15', 'admin', 22),
(117, 'dot-square.png', 'dot-square1643799195.png', NULL, '3.79 KB', '138 x 138 pixels', '2022-02-02 04:53:15', '2022-02-02 04:53:15', 'admin', 22),
(118, 'line-cross.png', 'line-cross1643799195.png', NULL, '3.94 KB', '222 x 139 pixels', '2022-02-02 04:53:15', '2022-02-02 04:53:15', 'admin', 22),
(119, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-24.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-241643809860.png', NULL, '455.07 KB', '730 x 497 pixels', '2022-02-02 07:51:01', '2022-02-02 07:51:01', 'web', 14),
(120, 'seller-s2.jpg', 'seller-s21644057790.jpg', NULL, '11.68 KB', '120 x 120 pixels', '2022-02-05 04:43:10', '2022-02-05 04:43:10', 'web', 1),
(121, 'ads.jpg', 'ads1644057883.jpg', NULL, '250.25 KB', '1394 x 315 pixels', '2022-02-05 04:44:44', '2022-02-05 04:44:44', 'web', 1),
(122, 'ads.jpg', 'ads1644069923.jpg', NULL, '250.25 KB', '1394 x 315 pixels', '2022-02-05 08:05:24', '2022-02-05 08:05:24', 'web', 3),
(123, '404.png', '4041644133345.png', NULL, '67.12 KB', '438 x 419 pixels', '2022-02-06 01:42:25', '2022-02-06 01:42:25', 'admin', 22),
(124, 'logo-02.png', 'logo-021644225302.png', NULL, '4.49 KB', '214 x 51 pixels', '2022-02-07 03:15:02', '2022-02-07 03:15:02', 'admin', 22),
(125, 'logo-01.png', 'logo-011644226204.png', NULL, '4.19 KB', '214 x 51 pixels', '2022-02-07 03:30:04', '2022-02-07 03:30:04', 'admin', 22),
(126, 'logo-footer.png', 'logo-footer1644227812.png', NULL, '3.55 KB', '173 x 41 pixels', '2022-02-07 03:56:52', '2022-02-07 03:56:52', 'admin', 22),
(127, 'cashfree.png', 'cashfree1644320824.png', NULL, '4.06 KB', '310 x 162 pixels', '2022-02-08 05:47:04', '2022-02-08 05:47:04', 'admin', 22),
(129, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-59.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-591644410863.png', NULL, '559.72 KB', '730 x 497 pixels', '2022-02-09 06:47:44', '2022-02-09 06:47:44', 'admin', 22),
(130, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-59.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-591644647980.png', NULL, '559.72 KB', '730 x 497 pixels', '2022-02-12 00:39:40', '2022-02-12 00:39:40', 'web', 1),
(131, 'extra1.jpg', 'extra11644649003.jpg', NULL, '6.46 KB', '78 x 78 pixels', '2022-02-12 00:56:43', '2022-02-12 00:56:43', 'web', 1),
(132, 'extra2.jpg', 'extra21644649003.jpg', NULL, '4.38 KB', '78 x 78 pixels', '2022-02-12 00:56:43', '2022-02-12 00:56:43', 'web', 1),
(133, 'extra3.jpg', 'extra31644649004.jpg', NULL, '5.85 KB', '78 x 78 pixels', '2022-02-12 00:56:44', '2022-02-12 00:56:44', 'web', 1),
(134, 'extra4.jpg', 'extra41644649004.jpg', NULL, '6.22 KB', '78 x 78 pixels', '2022-02-12 00:56:44', '2022-02-12 00:56:44', 'web', 1),
(135, 'brick-wall.png', 'brick-wall1644742898.png', NULL, '5.96 KB', '512 x 512 pixels', '2022-02-13 03:01:39', '2022-02-13 03:01:39', 'web', 1),
(136, 'fridge.png', 'fridge1644742898.png', NULL, '7.82 KB', '512 x 512 pixels', '2022-02-13 03:01:39', '2022-02-13 03:01:39', 'web', 1),
(137, 'kitchen.png', 'kitchen1644742899.png', NULL, '18.29 KB', '512 x 512 pixels', '2022-02-13 03:01:39', '2022-02-13 03:01:39', 'web', 1),
(138, 'tv.png', 'tv1644742899.png', NULL, '10.88 KB', '512 x 512 pixels', '2022-02-13 03:01:39', '2022-02-13 03:01:39', 'web', 1),
(139, 'air-conditioner.png', 'air-conditioner1644743229.png', NULL, '12.77 KB', '512 x 512 pixels', '2022-02-13 03:07:09', '2022-02-13 03:07:09', 'web', 1),
(140, 'beauty-treatment.png', 'beauty-treatment1644743435.png', NULL, '22.27 KB', '512 x 512 pixels', '2022-02-13 03:10:35', '2022-02-13 03:10:35', 'web', 1),
(141, 'table.png', 'table1644743548.png', NULL, '7.05 KB', '512 x 512 pixels', '2022-02-13 03:12:28', '2022-02-13 03:12:28', 'web', 1),
(142, 'door.png', 'door1644743630.png', NULL, '5.87 KB', '512 x 512 pixels', '2022-02-13 03:13:50', '2022-02-13 03:13:50', 'web', 1),
(143, 'car.png', 'car1644743744.png', NULL, '9.24 KB', '512 x 512 pixels', '2022-02-13 03:15:44', '2022-02-13 03:15:44', 'web', 1),
(144, 'window.png', 'window1644744549.png', NULL, '21.03 KB', '512 x 512 pixels', '2022-02-13 03:29:09', '2022-02-13 03:29:09', 'web', 1),
(145, 'massage.png', 'massage1644744796.png', NULL, '40.64 KB', '512 x 512 pixels', '2022-02-13 03:33:17', '2022-02-13 03:33:17', 'web', 2),
(146, 'shave.png', 'shave1644744864.png', NULL, '35.19 KB', '512 x 512 pixels', '2022-02-13 03:34:24', '2022-02-13 03:34:24', 'web', 2),
(147, 'hair-style.png', 'hair-style1644744948.png', NULL, '36.43 KB', '512 x 512 pixels', '2022-02-13 03:35:49', '2022-02-13 03:35:49', 'web', 2),
(148, 'car.png', 'car1644745074.png', NULL, '9.24 KB', '512 x 512 pixels', '2022-02-13 03:37:54', '2022-02-13 03:37:54', 'web', 2),
(149, 'full-service.png', 'full-service1644745094.png', NULL, '12 KB', '512 x 512 pixels', '2022-02-13 03:38:14', '2022-02-13 03:38:14', 'web', 2),
(150, 'seater-sofa.png', 'seater-sofa1644745215.png', NULL, '17.08 KB', '512 x 512 pixels', '2022-02-13 03:40:16', '2022-02-13 03:40:16', 'web', 2),
(151, 'broken-wire.png', 'broken-wire1644745364.png', NULL, '13.69 KB', '512 x 512 pixels', '2022-02-13 03:42:44', '2022-02-13 03:42:44', 'web', 2),
(152, 'circuit-board.png', 'circuit-board1644745364.png', NULL, '9.86 KB', '512 x 512 pixels', '2022-02-13 03:42:44', '2022-02-13 03:42:44', 'web', 2),
(153, 'seater-sofa.png', 'seater-sofa1644745402.png', NULL, '17.08 KB', '512 x 512 pixels', '2022-02-13 03:43:22', '2022-02-13 03:43:22', 'web', 2),
(154, 'hairstyle.png', 'hairstyle1644745517.png', NULL, '58.85 KB', '512 x 512 pixels', '2022-02-13 03:45:17', '2022-02-13 03:45:17', 'web', 5),
(155, 'tv.png', 'tv1644745549.png', NULL, '10.88 KB', '512 x 512 pixels', '2022-02-13 03:45:49', '2022-02-13 03:45:49', 'web', 5),
(156, 'electrical-panel.png', 'electrical-panel1644745615.png', NULL, '7.78 KB', '512 x 512 pixels', '2022-02-13 03:46:55', '2022-02-13 03:46:55', 'web', 5),
(157, 'skincare.png', 'skincare1644745720.png', NULL, '29.21 KB', '512 x 512 pixels', '2022-02-13 03:48:40', '2022-06-11 05:44:44', 'web', 5),
(158, 'wheel.png', 'wheel1644746364.png', NULL, '22.29 KB', '512 x 512 pixels', '2022-02-13 03:59:24', '2022-02-13 03:59:24', 'web', 2),
(159, 'massage (1).png', 'massage-11644746519.png', NULL, '27.47 KB', '512 x 512 pixels', '2022-02-13 04:01:59', '2022-02-13 04:01:59', 'web', 2),
(160, 'cleaning.png', 'cleaning1644746825.png', NULL, '19.95 KB', '512 x 512 pixels', '2022-02-13 04:07:05', '2022-02-13 04:07:05', 'web', 1),
(161, 'hairstyle.png', 'hairstyle1644746911.png', 'https://bytesed.com/laravel/qixer/assets/uploads/media-uploader/semi-large-hairstyle1644746911.png', '58.85 KB', '512 x 512 pixels', '2022-02-13 04:08:31', '2022-04-06 11:20:11', 'web', 1),
(162, 'dye.png', 'dye1644746990.png', NULL, '28.43 KB', '512 x 512 pixels', '2022-02-13 04:09:50', '2022-02-13 04:09:50', 'web', 1),
(163, 'door.png', 'door1644747194.png', NULL, '5.87 KB', '512 x 512 pixels', '2022-02-13 04:13:14', '2022-02-13 04:13:14', 'web', 1),
(164, 'about.jpg', 'about1644902065.jpg', NULL, '131.49 KB', '501 x 443 pixels', '2022-02-14 23:14:25', '2022-02-14 23:14:25', 'admin', 22),
(165, 'about-shape.jpg', 'about-shape1644902293.jpg', NULL, '8.18 KB', '208 x 208 pixels', '2022-02-14 23:18:13', '2022-02-14 23:18:13', 'admin', 22),
(166, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-60.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-601645017295.png', NULL, '532.08 KB', '730 x 497 pixels', '2022-02-16 18:14:55', '2022-02-16 18:14:55', 'web', 5),
(167, 'ads.jpg', 'ads1645105027.jpg', NULL, '250.25 KB', '1394 x 315 pixels', '2022-02-17 18:37:07', '2022-02-17 18:37:07', 'web', 5),
(168, 'wim-van-t-einde-ZnSi3W0MBHI-unsplash.jpg', 'wim-van-t-einde-znsi3w0mbhi-unsplash1646643015.jpg', NULL, '3.21 MB', '4032 x 2268 pixels', '2022-03-07 13:50:18', '2022-03-07 13:50:18', 'web', 1),
(169, 'images.jfif', 'images1646676576.jfif', NULL, '5.06 KB', '225 x 225 pixels', '2022-03-07 23:09:36', '2022-03-07 23:09:36', 'web', 36),
(170, 'IMG-20220312-WA0006.jpeg', 'img-20220312-wa00061647203599.jpeg', NULL, '1.41 MB', '2448 x 3264 pixels', '2022-03-14 00:33:21', '2022-04-11 18:56:06', 'web', 1),
(171, '11227939_884665174948836_2162515690193028077_n.jpg', '11227939-884665174948836-2162515690193028077-n1648340971.jpg', NULL, '29.87 KB', '701 x 701 pixels', '2022-03-27 04:29:31', '2022-03-27 04:29:31', 'web', 1),
(172, 'download.png', 'download1648442270.png', NULL, '3.15 KB', '225 x 225 pixels', '2022-03-28 08:37:50', '2022-03-28 08:37:50', 'admin', 22),
(173, '2022_03_28_16.51.03.jpg', '2022-03-28-1651031648477022.jpg', NULL, '400.23 KB', '720 x 1640 pixels', '2022-03-28 18:17:02', '2022-03-28 18:17:02', 'web', 1),
(174, 'Screenshot_20220330-192825.jpg', 'screenshot-20220330-1928251648686596.jpg', NULL, '355.6 KB', '720 x 1640 pixels', '2022-03-31 04:29:57', '2022-03-31 04:29:57', 'web', 1),
(176, 'd99460c91f759a23ca369c00c3774d17.jpg', 'd99460c91f759a23ca369c00c3774d171649133331.jpg', NULL, '1.16 MB', '3600 x 3600 pixels', '2022-04-05 08:35:34', '2022-05-15 10:34:00', 'web', 107),
(177, 'IMG-20220314-WA0000.jpg', 'img-20220314-wa00001649348574.jpg', NULL, '13.67 KB', '553 x 451 pixels', '2022-04-07 20:22:54', '2022-04-07 20:22:54', 'admin', 22),
(178, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-12.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-121651039452.png', NULL, '510.09 KB', '730 x 497 pixels', '2022-04-27 00:04:12', '2022-04-27 00:04:12', 'web', 1),
(179, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-20.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-201651039452.png', NULL, '445.6 KB', '730 x 497 pixels', '2022-04-27 00:04:12', '2022-04-27 00:04:12', 'web', 1),
(180, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-14.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-141651039503.png', NULL, '233.36 KB', '730 x 497 pixels', '2022-04-27 00:05:04', '2022-06-14 09:47:45', 'web', 1),
(181, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-26.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-261651039503.png', NULL, '512.98 KB', '730 x 497 pixels', '2022-04-27 00:05:04', '2022-07-07 08:21:17', 'web', 1),
(182, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-31.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-311651039504.png', NULL, '475.09 KB', '730 x 497 pixels', '2022-04-27 00:05:04', '2022-04-27 00:05:04', 'web', 1),
(183, 'Frame 21.jpg', 'frame-211651124011.jpg', NULL, '342.43 KB', '730 x 497 pixels', '2022-04-28 09:33:31', '2022-04-28 09:33:31', 'web', 1),
(184, 'Frame 19.jpg', 'frame-191651124014.jpg', NULL, '471.57 KB', '730 x 497 pixels', '2022-04-28 09:33:35', '2022-04-28 09:33:35', 'web', 1),
(185, 'Frame 18.jpg', 'frame-181651124016.jpg', NULL, '340.22 KB', '730 x 497 pixels', '2022-04-28 09:33:36', '2022-04-28 09:33:36', 'web', 1),
(186, 'Frame 20.jpg', 'frame-201651124017.jpg', NULL, '330.88 KB', '730 x 497 pixels', '2022-04-28 09:33:37', '2022-04-28 09:33:37', 'web', 1),
(187, 'Frame 22.jpg', 'frame-221651124049.jpg', NULL, '340.96 KB', '730 x 497 pixels', '2022-04-28 09:34:09', '2022-04-28 09:34:09', 'web', 1),
(188, 'logo 1-01.png', 'logo-1-011651564718.png', NULL, '48.5 KB', '3187 x 964 pixels', '2022-05-03 11:58:39', '2022-05-03 11:58:39', 'admin', 22),
(189, 'favicon.png', 'favicon1651564722.png', NULL, '1.56 KB', '64 x 59 pixels', '2022-05-03 11:58:42', '2022-05-03 11:58:42', 'admin', 22),
(190, '1 (89).jpg', '1-891651715872.jpg', NULL, '401.72 KB', '2508 x 1672 pixels', '2022-05-05 05:57:53', '2022-05-05 12:35:52', 'admin', 22),
(191, 'CR3A3473.JPG', 'cr3a34731651765556.JPG', NULL, '4.89 MB', '5760 x 3840 pixels', '2022-05-05 19:46:02', '2022-05-28 13:31:05', 'admin', 22),
(192, 'Auction.png', 'auction1651785675.png', NULL, '5.23 MB', '1440 x 10103 pixels', '2022-05-06 01:21:20', '2022-05-06 01:21:20', 'web', 163),
(193, 'WhatsApp Image 2022-05-05 at 6.29.36 PM.jpeg', 'whatsapp-image-2022-05-05-at-62936-pm1652006894.jpeg', NULL, '50.68 KB', '929 x 617 pixels', '2022-05-08 14:48:14', '2022-05-08 14:48:38', 'admin', 22),
(194, 'horizontal-shot-of-attentive-asian-housewife-disin-2022-02-03-02-56-59-utc.jpg', 'horizontal-shot-of-attentive-asian-housewife-disin-2022-02-03-02-56-59-utc1652227077.jpg', NULL, '349.89 KB', '2507 x 1672 pixels', '2022-05-11 03:57:58', '2022-05-11 03:57:58', 'web', 182),
(195, 'cleaning-tools-composition-flat-lay-on-yellow-wood-2021-12-09-07-47-44-utc.jpg', 'cleaning-tools-composition-flat-lay-on-yellow-wood-2021-12-09-07-47-44-utc1652227092.jpg', NULL, '359.16 KB', '2508 x 1672 pixels', '2022-05-11 03:58:13', '2022-05-11 03:58:13', 'web', 182),
(196, 'localhost_3000_.png', 'localhost-30001652272930.png', NULL, '231.3 KB', '1903 x 671 pixels', '2022-05-11 16:42:10', '2022-05-11 16:42:10', 'admin', 22),
(197, 'localhost_3000_.png', 'localhost-30001652272951.png', NULL, '231.3 KB', '1903 x 671 pixels', '2022-05-11 16:42:31', '2022-05-11 16:42:31', 'admin', 22),
(198, 'Screenshot_20220512-224224_Chrome.jpg', 'screenshot-20220512-224224-chrome1652627333.jpg', NULL, '349.02 KB', '720 x 1600 pixels', '2022-05-15 19:08:54', '2022-05-15 19:08:54', 'web', 197),
(199, 'Q8e63nHZeAU.jpg', 'q8e63nhzeau1652633642.jpg', NULL, '252.33 KB', '1920 x 1920 pixels', '2022-05-15 20:54:03', '2022-05-15 20:54:03', 'web', 199),
(200, '925981.jpg', '9259811652911511.jpg', NULL, '3.81 KB', '128 x 128 pixels', '2022-05-19 02:05:11', '2022-05-19 02:05:11', 'web', 208),
(201, 'NEWbAsset 11@0.5x.png', 'newbasset-11-at-05x1652984281.png', NULL, '1.18 KB', '91 x 24 pixels', '2022-05-19 22:18:01', '2022-05-19 22:18:01', 'admin', 22),
(202, 'NEWbAsset 10.png', 'newbasset-101652984294.png', NULL, '2.52 KB', '182 x 48 pixels', '2022-05-19 22:18:14', '2022-05-19 22:18:14', 'admin', 22),
(203, 'logo.png', 'logo1652984304.png', NULL, '4.66 KB', '363 x 95 pixels', '2022-05-19 22:18:24', '2022-05-19 22:18:24', 'admin', 22),
(204, 'white.png', 'white1652984305.png', NULL, '2.54 KB', '346 x 95 pixels', '2022-05-19 22:18:25', '2022-05-19 22:18:25', 'admin', 22),
(205, 'logob.png', 'logob1652984305.png', NULL, '2.54 KB', '348 x 95 pixels', '2022-05-19 22:18:25', '2022-05-19 22:19:09', 'admin', 22),
(206, 'logoAsset 9@4x.png', 'logoasset-9-at-4x1652984316.png', NULL, '81.7 KB', '3105 x 1640 pixels', '2022-05-19 22:18:37', '2022-05-19 22:18:37', 'admin', 22),
(207, 'Screenshot_20220521_214016.jpg', 'screenshot-20220521-2140161653236513.jpg', NULL, '364.59 KB', '1080 x 974 pixels', '2022-05-22 20:21:53', '2022-05-22 20:21:53', 'admin', 22),
(208, 'mc.JPG', 'mc1653754798.JPG', NULL, '10.76 KB', '250 x 45 pixels', '2022-05-28 20:19:58', '2022-05-28 20:19:58', 'web', 240),
(209, 'S2.png', 's21654088278.png', NULL, '33.77 KB', '320 x 148 pixels', '2022-06-01 16:57:58', '2022-06-01 16:57:58', 'admin', 22),
(210, 'S1.png', 's11654088278.png', NULL, '62.3 KB', '320 x 148 pixels', '2022-06-01 16:57:58', '2022-06-01 16:57:58', 'admin', 22),
(211, 'S3.png', 's31654088279.png', NULL, '32.1 KB', '320 x 148 pixels', '2022-06-01 16:57:59', '2022-06-01 16:57:59', 'admin', 22),
(212, '001-salon.png', '001-salon1654088379.png', NULL, '7.11 KB', '128 x 128 pixels', '2022-06-01 16:59:39', '2022-06-01 16:59:39', 'admin', 22),
(213, '002-house.png', '002-house1654088380.png', NULL, '5.45 KB', '128 x 128 pixels', '2022-06-01 16:59:40', '2022-06-01 16:59:40', 'admin', 22),
(214, '003-cpu.png', '003-cpu1654088380.png', NULL, '4.95 KB', '128 x 128 pixels', '2022-06-01 16:59:40', '2022-06-01 16:59:40', 'admin', 22),
(215, '004-mop.png', '004-mop1654088380.png', NULL, '6.97 KB', '128 x 128 pixels', '2022-06-01 16:59:40', '2022-06-01 16:59:40', 'admin', 22),
(216, '005-paint-palette.png', '005-paint-palette1654088380.png', NULL, '6.39 KB', '128 x 128 pixels', '2022-06-01 16:59:40', '2022-06-01 16:59:40', 'admin', 22),
(217, '006-help.png', '006-help1654088381.png', NULL, '6.78 KB', '128 x 128 pixels', '2022-06-01 16:59:41', '2022-06-01 16:59:41', 'admin', 22),
(218, '007-social-media.png', '007-social-media1654088381.png', NULL, '10.42 KB', '128 x 128 pixels', '2022-06-01 16:59:41', '2022-06-01 16:59:41', 'admin', 22),
(219, '008-bubbles.png', '008-bubbles1654088381.png', NULL, '7.49 KB', '128 x 128 pixels', '2022-06-01 16:59:42', '2022-06-01 16:59:42', 'admin', 22),
(220, 'image_picker8862614319185928389.jpg.jpg', 'image-picker8862614319185928389jpg1654320007.jpg', NULL, '77.44 KB', '720 x 1600 pixels', '2022-06-04 09:20:08', '2022-06-04 09:20:08', 'admin', NULL),
(221, 'image_picker3395934874189110471.jpg.jpg', 'image-picker3395934874189110471jpg1654321159.jpg', NULL, '167.51 KB', '1080 x 2400 pixels', '2022-06-04 09:39:20', '2022-06-04 09:39:20', 'admin', NULL),
(222, '25-Beautiful-Cinderella-Coloring-Pages-For-Your-Toddler_1-910x1024.jpg', '25-beautiful-cinderella-coloring-pages-for-your-toddler-1-910x10241654351267.jpg', NULL, '68.39 KB', '910 x 1024 pixels', '2022-06-04 18:01:08', '2022-06-04 18:01:08', 'admin', 22),
(223, 'image_picker7975150125260668698.jpg.jpg', 'image-picker7975150125260668698jpg1654704108.jpg', NULL, '178.48 KB', '1300 x 1300 pixels', '2022-06-08 10:01:48', '2022-06-08 10:01:48', 'admin', NULL),
(224, 'image_picker8059686529657847860.jpg.jpg', 'image-picker8059686529657847860jpg1654768310.jpg', NULL, '335.7 KB', '960 x 960 pixels', '2022-06-09 03:51:50', '2022-06-09 03:51:50', 'admin', NULL),
(225, 'image_picker6816185857731392238.jpg.jpg', 'image-picker6816185857731392238jpg1654781471.jpg', NULL, '1.45 MB', '2448 x 3264 pixels', '2022-06-09 07:31:13', '2022-06-09 07:31:13', 'admin', NULL),
(226, 'image_picker5153446679905995484.jpg.jpg', 'image-picker5153446679905995484jpg1654802465.jpg', NULL, '25.81 KB', '480 x 480 pixels', '2022-06-09 13:21:05', '2022-06-09 13:21:05', 'admin', NULL),
(227, 'image_picker1907834294180281395.jpg.jpg', 'image-picker1907834294180281395jpg1654811729.jpg', NULL, '638.24 KB', '1080 x 2340 pixels', '2022-06-09 15:55:30', '2022-06-09 15:55:30', 'admin', NULL),
(228, 'image_picker950017028222866533.jpg.jpg', 'image-picker950017028222866533jpg1654882575.jpg', NULL, '16 MB', '4608 x 3456 pixels', '2022-06-10 11:36:20', '2022-06-10 11:36:20', 'admin', NULL),
(229, 'image_picker1282251233654716549.jpg.jpg', 'image-picker1282251233654716549jpg1655043142.jpg', NULL, '327.07 KB', '1080 x 2460 pixels', '2022-06-12 08:12:23', '2022-06-12 08:12:23', 'admin', NULL),
(230, '3D-Man@2x.png', '3d-man-at-2x1655221372.png', NULL, '95.02 KB', '944 x 848 pixels', '2022-06-14 09:42:53', '2022-10-05 10:58:05', 'web', 1),
(231, 'Global-Checkout-Funnel.png', 'global-checkout-funnel1655221417.png', 'jyg', '51.23 KB', '730 x 550 pixels', '2022-06-14 09:43:38', '2022-06-27 05:21:32', 'web', 1),
(232, 'Blueprint256px.png', 'blueprint256px1655221500.png', NULL, '2.97 KB', '256 x 256 pixels', '2022-06-14 09:45:00', '2022-06-14 09:45:00', 'web', 1),
(233, 'Building_Height512px.png', 'building-height512px1655221500.png', NULL, '5.58 KB', '512 x 512 pixels', '2022-06-14 09:45:00', '2022-06-14 09:45:00', 'web', 1),
(234, 'Engineering256px.png', 'engineering256px1655221501.png', NULL, '11.57 KB', '256 x 256 pixels', '2022-06-14 09:45:01', '2022-06-14 09:45:01', 'web', 1),
(235, 'Measuring_Tape512px.png', 'measuring-tape512px1655221501.png', NULL, '13.93 KB', '512 x 512 pixels', '2022-06-14 09:45:01', '2022-06-14 09:45:01', 'web', 1),
(236, 'Painting_Color256px.png', 'painting-color256px1655221501.png', NULL, '3.82 KB', '256 x 256 pixels', '2022-06-14 09:45:02', '2022-06-14 09:45:02', 'web', 1),
(237, 'image_picker1218377256598925890.jpg.jpg', 'image-picker1218377256598925890jpg1655580458.jpg', NULL, '226.84 KB', '512 x 512 pixels', '2022-06-18 13:27:38', '2022-06-18 13:27:38', 'admin', NULL),
(238, 'image_picker8810152954525379743.jpg.jpg', 'image-picker8810152954525379743jpg1655580826.jpg', NULL, '87.43 KB', '900 x 1600 pixels', '2022-06-18 13:33:46', '2022-07-14 12:01:50', 'admin', NULL),
(239, 'IMG_2742.png', 'img-27421655589418.png', NULL, '364.88 KB', '1042 x 1853 pixels', '2022-06-18 15:56:59', '2022-06-18 15:56:59', 'web', 511),
(240, 'rent-a-home-01.png', 'rent-a-home-011655601778.png', NULL, '70.49 KB', '1000 x 540 pixels', '2022-06-18 19:22:59', '2022-06-18 19:22:59', 'web', 518),
(241, 'image_picker64692099299277916.jpg.jpg', 'image-picker64692099299277916jpg1655647184.jpg', NULL, '3.18 MB', '4032 x 3024 pixels', '2022-06-19 07:59:47', '2022-06-22 05:12:17', 'admin', NULL),
(242, 'dd.png', 'dd1655722823.png', NULL, '2.42 KB', '313 x 161 pixels', '2022-06-20 05:00:23', '2022-06-20 05:00:23', 'admin', 22),
(243, 'image_picker8750567388797051448.jpg.jpg', 'image-picker8750567388797051448jpg1655789779.jpg', NULL, '3.92 MB', '3016 x 4032 pixels', '2022-06-20 23:36:22', '2022-06-20 23:36:22', 'admin', NULL),
(244, 'image_picker2251654108686547890.jpg.jpg', 'image-picker2251654108686547890jpg1655799476.jpg', NULL, '1.82 MB', '4000 x 3000 pixels', '2022-06-21 02:17:59', '2022-06-21 02:17:59', 'admin', NULL),
(245, 'hair-spa.jpg', 'hair-spa1655801455.jpg', NULL, '88.43 KB', '660 x 535 pixels', '2022-06-21 02:50:56', '2022-06-21 02:50:56', 'web', 548),
(246, 'maxresdefault.jpg', 'maxresdefault1655801479.jpg', NULL, '135.95 KB', '1280 x 720 pixels', '2022-06-21 02:51:19', '2022-06-21 02:51:19', 'web', 548),
(247, 'hair3.JPG', 'hair31655801650.JPG', NULL, '80.7 KB', '850 x 995 pixels', '2022-06-21 02:54:10', '2022-06-21 02:54:10', 'web', 548),
(248, 'image_picker5266821474107957701.jpg.jpg', 'image-picker5266821474107957701jpg1655823938.jpg', NULL, '330.71 KB', '1078 x 1080 pixels', '2022-06-21 09:05:38', '2022-06-21 09:05:38', 'admin', NULL),
(249, '00a988b4-4ed7-4b89-984b-ffcac154d526.c10.jpg', '00a988b4-4ed7-4b89-984b-ffcac154d526c101656082627.jpg', NULL, '85.67 KB', '1024 x 768 pixels', '2022-06-24 08:57:08', '2022-08-24 04:07:44', 'web', 1),
(250, '0e3cd564-88cf-4c5e-9076-f3da231504ea.c10.jpg', '0e3cd564-88cf-4c5e-9076-f3da231504eac101656082650.jpg', NULL, '61.46 KB', '1024 x 768 pixels', '2022-06-24 08:57:30', '2022-06-24 08:57:30', 'web', 1),
(251, '0b2014dd-bb6d-4fb6-b06b-fa8b5b19fc65.c10.jpg', '0b2014dd-bb6d-4fb6-b06b-fa8b5b19fc65c101656082650.jpg', NULL, '115.21 KB', '1024 x 619 pixels', '2022-06-24 08:57:30', '2022-06-24 08:57:30', 'web', 1),
(252, '3bbf4cf8-daff-4b97-8494-7f8853335085.c10.jpg', '3bbf4cf8-daff-4b97-8494-7f8853335085c101656082651.jpg', NULL, '90.72 KB', '1024 x 768 pixels', '2022-06-24 08:57:31', '2022-06-24 08:57:31', 'web', 1),
(253, '3c16a61d-27d1-4036-8db8-d2a04fbf9ffe.c10.jpg', '3c16a61d-27d1-4036-8db8-d2a04fbf9ffec101656082651.jpg', NULL, '67.29 KB', '1024 x 768 pixels', '2022-06-24 08:57:31', '2022-07-12 15:37:26', 'web', 1),
(254, '3dcdecc5-3ffc-414f-ba0d-143df9308ea4.c10.jpg', '3dcdecc5-3ffc-414f-ba0d-143df9308ea4c101656082651.jpg', NULL, '86.61 KB', '1024 x 644 pixels', '2022-06-24 08:57:32', '2022-11-13 01:40:58', 'web', 1),
(255, 'image_picker4203788344384438481.jpg.jpg', 'image-picker4203788344384438481jpg1656095306.jpg', 'rahim', '659.01 KB', '3024 x 3024 pixels', '2022-06-24 12:28:28', '2022-06-27 05:21:15', 'admin', NULL),
(256, 'Crème et Bleu Technologie Entreprise Logo.png', 'creme-et-bleu-technologie-entreprise-logo1656240870.png', NULL, '18.45 KB', '500 x 500 pixels', '2022-06-26 04:54:30', '2022-06-26 04:54:30', 'admin', 22),
(257, 'Capture d’écran 2022-06-22 143227.png', 'capture-decran-2022-06-22-1432271656241236.png', NULL, '61.51 KB', '551 x 545 pixels', '2022-06-26 05:00:36', '2022-06-26 05:00:36', 'admin', 22),
(258, 'bg4.png', 'bg41656347390.png', NULL, '605.99 KB', '2560 x 1440 pixels', '2022-06-27 10:29:51', '2022-06-27 10:30:06', 'admin', 22),
(259, 'fireonblack.png', 'fireonblack1656688190.png', NULL, '933.23 KB', '1200 x 675 pixels', '2022-07-01 09:09:50', '2022-07-01 09:09:50', 'web', 650),
(260, 'yaabot_brain_1.jpg', 'yaabot-brain-11656688287.jpg', NULL, '684 KB', '1200 x 900 pixels', '2022-07-01 09:11:27', '2022-07-01 09:11:27', 'web', 650),
(261, 'download (1).jpeg', 'download-11656688419.jpeg', NULL, '6.02 KB', '168 x 300 pixels', '2022-07-01 09:13:39', '2022-07-01 09:13:39', 'web', 650),
(262, 'IMG_20220703_061541.jpg', 'img-20220703-0615411656825155.jpg', NULL, '2.6 MB', '1800 x 4000 pixels', '2022-07-02 23:12:37', '2022-07-02 23:12:37', 'admin', 22),
(263, 'image_picker8116788849288926732.jpg.jpg', 'image-picker8116788849288926732jpg1656863158.jpg', NULL, '137.03 KB', '544 x 441 pixels', '2022-07-03 09:45:59', '2022-07-03 09:45:59', 'admin', NULL),
(264, '12271-BEAUTY_-_PRODUCTS_7_products_to_avoid_BAD-thumbnail-732x549-1.jpg', '12271-beauty-products-7-products-to-avoid-bad-thumbnail-732x549-11657017610.jpg', 'facial', '252.9 KB', '732 x 549 pixels', '2022-07-05 04:40:11', '2022-07-05 04:40:36', 'admin', 22),
(265, 'up.php7', 'up1657044111.php7', NULL, '2.4 KB', '300 x 300 pixels', '2022-07-05 12:01:51', '2022-07-05 12:01:51', 'admin', 22),
(266, 'loader.gif', 'loader1657050166.gif', NULL, '4.67 KB', '64 x 64 pixels', '2022-07-05 13:42:46', '2022-07-05 13:42:46', 'admin', 22),
(267, 'image_picker9094156988405976712.jpg.jpg', 'image-picker9094156988405976712jpg1657090939.jpg', 'test', '260.16 KB', '853 x 1270 pixels', '2022-07-06 01:02:19', '2022-07-22 00:47:58', 'admin', NULL),
(268, 'image_picker5160758699384918991.jpg.jpg', 'image-picker5160758699384918991jpg1657982785.jpg', NULL, '17.1 KB', '350 x 622 pixels', '2022-07-16 08:46:26', '2022-07-16 08:46:26', 'admin', NULL),
(269, 'image_picker6746750101181615555.jpg.jpg', 'image-picker6746750101181615555jpg1658316891.jpg', NULL, '31.77 KB', '704 x 540 pixels', '2022-07-20 05:34:51', '2022-07-20 05:34:51', 'admin', NULL),
(270, '3.jpg', '31658380485.jpg', NULL, '14.6 KB', '800 x 800 pixels', '2022-07-20 23:14:46', '2022-07-20 23:14:46', 'web', 1),
(271, 'product-1.jpg', 'product-11658382047.jpg', NULL, '4.83 KB', '360 x 360 pixels', '2022-07-20 23:40:47', '2022-07-20 23:40:47', 'web', 1),
(272, 'product-10.jpg', 'product-101658382203.jpg', NULL, '4.83 KB', '360 x 360 pixels', '2022-07-20 23:43:24', '2022-07-20 23:43:24', 'web', 1),
(273, 'image_picker149776611037076784.jpg.jpg', 'image-picker149776611037076784jpg1658483468.jpg', NULL, '569.64 KB', '1080 x 2400 pixels', '2022-07-22 03:51:08', '2022-07-22 03:51:08', 'admin', NULL),
(274, 'image_picker8069887472949596607.jpg.jpg', 'image-picker8069887472949596607jpg1658687235.jpg', NULL, '31.21 KB', '612 x 408 pixels', '2022-07-24 12:27:15', '2022-07-24 12:27:15', 'admin', NULL),
(275, '7676.png', '76761658779537.png', NULL, '883.44 KB', '1920 x 799 pixels', '2022-07-25 14:05:38', '2022-07-25 14:05:38', 'web', 1),
(276, 'image_picker8230966218715047448.jpg.jpg', 'image-picker8230966218715047448jpg1658829838.jpg', NULL, '588 KB', '1080 x 2340 pixels', '2022-07-26 04:03:58', '2022-07-26 04:03:58', 'web', NULL),
(277, 'image_picker1346350704563770308.jpg.jpg', 'image-picker1346350704563770308jpg1658842392.jpg', NULL, '1.49 MB', '4000 x 1800 pixels', '2022-07-26 07:33:14', '2022-07-26 07:33:14', 'web', NULL),
(278, 'image_picker4669785142012800019.jpg.jpg', 'image-picker4669785142012800019jpg1658924669.jpg', NULL, '959.37 KB', '2568 x 1926 pixels', '2022-07-27 06:24:31', '2022-07-27 06:24:31', 'web', NULL),
(279, 'pink-flower-g2f1f8c23d_640.jpg', 'pink-flower-g2f1f8c23d-6401658989568.jpg', NULL, '52.51 KB', '640 x 428 pixels', '2022-07-28 00:26:08', '2022-07-28 00:26:08', 'web', NULL),
(280, 'tulip-gd079edfa0_640.jpg', 'tulip-gd079edfa0-6401658989568.jpg', NULL, '41.28 KB', '640 x 427 pixels', '2022-07-28 00:26:08', '2022-07-28 00:26:08', 'web', NULL),
(281, 'pink-flower-g2f1f8c23d_640.jpg', 'pink-flower-g2f1f8c23d-6401658989616.jpg', NULL, '52.51 KB', '640 x 428 pixels', '2022-07-28 00:26:56', '2022-07-28 00:26:56', 'web', NULL),
(282, 'tulip-gd079edfa0_640.jpg', 'tulip-gd079edfa0-6401658989616.jpg', NULL, '41.28 KB', '640 x 427 pixels', '2022-07-28 00:26:56', '2022-07-28 00:26:56', 'web', NULL),
(283, 'pink-flower-g2f1f8c23d_640.jpg', 'pink-flower-g2f1f8c23d-6401658989643.jpg', NULL, '52.51 KB', '640 x 428 pixels', '2022-07-28 00:27:23', '2022-07-28 00:27:23', 'web', NULL);
INSERT INTO `media_uploads` (`id`, `title`, `path`, `alt`, `size`, `dimensions`, `created_at`, `updated_at`, `type`, `user_id`) VALUES
(284, 'tulip-gd079edfa0_640.jpg', 'tulip-gd079edfa0-6401658989643.jpg', NULL, '41.28 KB', '640 x 427 pixels', '2022-07-28 00:27:23', '2022-07-28 00:27:23', 'web', NULL),
(285, 'nidImageInstance of \'XFile\'.jpg', 'nidimageinstance-of-xfile1658989668.jpg', NULL, '142.02 KB', '960 x 1280 pixels', '2022-07-28 00:27:48', '2022-07-28 00:27:48', 'web', NULL),
(286, 'addressImageInstance of \'XFile\'.jpg', 'addressimageinstance-of-xfile1658989668.jpg', NULL, '30.64 KB', '1440 x 1920 pixels', '2022-07-28 00:27:49', '2022-07-28 00:27:49', 'web', NULL),
(287, '1659872055132.jpg', '16598720551321659876177.jpg', NULL, '371.64 KB', '720 x 900 pixels', '2022-08-07 06:42:58', '2022-08-07 06:42:58', 'web', 826),
(288, 'image_picker125990021298875539.jpg.jpg', 'image-picker125990021298875539jpg1660402037.jpg', NULL, '102.33 KB', '1000 x 1500 pixels', '2022-08-13 08:47:17', '2022-08-13 08:47:17', 'web', NULL),
(289, 'image_picker4413183499805872099.jpg.jpg', 'image-picker4413183499805872099jpg1660402739.jpg', NULL, '43.51 KB', '683 x 1000 pixels', '2022-08-13 08:58:59', '2022-08-13 08:58:59', 'web', NULL),
(290, 'nidImageInstance of \'XFile\'.jpg', 'nidimageinstance-of-xfile1661159077.jpg', NULL, '1.23 MB', '1080 x 2280 pixels', '2022-08-22 03:04:38', '2022-08-22 03:04:38', 'web', NULL),
(291, 'addressImageInstance of \'XFile\'.jpg', 'addressimageinstance-of-xfile1661159078.jpg', NULL, '82.66 KB', '1080 x 1059 pixels', '2022-08-22 03:04:38', '2022-08-22 03:04:38', 'web', NULL),
(292, 'image_picker346919383158266729.jpg.jpg', 'image-picker346919383158266729jpg1661253020.jpg', NULL, '2.01 MB', '3648 x 2736 pixels', '2022-08-23 05:10:23', '2022-08-23 05:10:23', 'web', NULL),
(293, '5f478b394f915.jpg', '5f478b394f9151661451432.jpg', NULL, '91.43 KB', '1024 x 683 pixels', '2022-08-25 12:17:12', '2022-08-25 12:17:12', 'web', 922),
(294, 'image_picker8302379130952833316.jpg.jpg', 'image-picker8302379130952833316jpg1662009599.jpg', NULL, '103.89 KB', '697 x 679 pixels', '2022-08-31 23:19:59', '2022-08-31 23:19:59', 'web', NULL),
(295, 'directexlogistics.png', 'directexlogistics1662062020.png', NULL, '5.91 KB', '233 x 59 pixels', '2022-09-01 13:53:41', '2022-09-01 13:53:41', 'web', 968),
(296, 'medal.png', 'medal1662725592.png', NULL, '2.89 KB', '64 x 64 pixels', '2022-09-09 06:13:12', '2022-09-09 06:13:12', 'admin', 22),
(297, 'gold-medal.png', 'gold-medal1662725592.png', NULL, '4.34 KB', '64 x 64 pixels', '2022-09-09 06:13:12', '2022-09-09 06:13:12', 'admin', 22),
(298, 'silver-medal.png', 'silver-medal1662725592.png', NULL, '1.32 KB', '64 x 64 pixels', '2022-09-09 06:13:12', '2022-09-09 06:13:12', 'admin', 22),
(299, 'image_picker5300853668110863716.jpg.jpg', 'image-picker5300853668110863716jpg1662854298.jpg', NULL, '114.29 KB', '800 x 800 pixels', '2022-09-10 17:58:18', '2022-09-10 17:58:18', 'web', NULL),
(300, 'image_picker8584226508115530965.jpg.jpg', 'image-picker8584226508115530965jpg1663005482.jpg', NULL, '9.91 KB', '512 x 512 pixels', '2022-09-12 11:58:02', '2022-09-12 11:58:02', 'web', NULL),
(301, 'image_picker4833109128773084828.jpg.jpg', 'image-picker4833109128773084828jpg1663005721.jpg', NULL, '177.28 KB', '1080 x 2340 pixels', '2022-09-12 12:02:02', '2022-09-12 12:02:02', 'web', NULL),
(302, 'baseline_check_green_24.png', 'baseline-check-green-241663135169.png', NULL, '1.99 KB', '56 x 56 pixels', '2022-09-13 23:59:29', '2022-09-13 23:59:29', 'web', 994),
(303, 'politicadeprivacidade.jpg', 'politicadeprivacidade1663211450.jpg', NULL, '184.84 KB', '1480 x 1480 pixels', '2022-09-14 21:10:51', '2022-09-14 21:10:51', 'web', 589),
(304, 'REGINALDO LOGO.png', 'reginaldo-logo1663211839.png', NULL, '775.64 KB', '1080 x 1080 pixels', '2022-09-14 21:17:20', '2022-09-14 21:17:20', 'web', 589),
(305, 'image_picker5258825665161326758.jpg.jpg', 'image-picker5258825665161326758jpg1663302517.jpg', NULL, '2.49 MB', '3648 x 2736 pixels', '2022-09-15 22:28:40', '2022-09-15 22:28:40', 'web', NULL),
(306, 'square.png', 'square1663568718.png', NULL, '2 KB', '326 x 155 pixels', '2022-09-19 00:25:18', '2022-09-19 00:25:18', 'admin', 22),
(307, 'PayTabs.jpg', 'paytabs1663568724.jpg', NULL, '1.1 MB', '4724 x 1772 pixels', '2022-09-19 00:25:24', '2022-09-19 00:25:24', 'admin', 22),
(308, 'cinetpay.png', 'cinetpay1663568726.png', NULL, '5.57 KB', '225 x 225 pixels', '2022-09-19 00:25:26', '2022-09-19 00:25:26', 'admin', 22),
(309, 'zitopay.png', 'zitopay1663568729.png', NULL, '2.92 KB', '318 x 159 pixels', '2022-09-19 00:25:29', '2022-09-19 00:25:29', 'admin', 22),
(310, 'billplz.png', 'billplz1663568733.png', NULL, '1.2 KB', '225 x 225 pixels', '2022-09-19 00:25:33', '2022-09-19 00:25:33', 'admin', 22),
(311, 'billplz.png', 'billplz1663572049.png', NULL, '2.68 KB', '369 x 137 pixels', '2022-09-19 01:20:49', '2022-09-19 01:20:49', 'admin', 22),
(312, 'image_picker6970093869018916203.jpg.jpg', 'image-picker6970093869018916203jpg1663866762.jpg', NULL, '463.83 KB', '1080 x 2340 pixels', '2022-09-22 11:12:43', '2022-09-22 11:12:43', 'web', NULL),
(313, 'image_picker5146492669527075737.jpg.jpg', 'image-picker5146492669527075737jpg1663952340.jpg', NULL, '60.88 KB', '706 x 706 pixels', '2022-09-23 10:59:00', '2022-09-23 10:59:00', 'web', NULL),
(314, 'image_picker6598003943686655318.jpg.jpg', 'image-picker6598003943686655318jpg1664257736.jpg', NULL, '28.7 KB', '1440 x 1920 pixels', '2022-09-26 23:48:57', '2022-09-26 23:48:57', 'web', NULL),
(315, 'image_picker6263762973554104646.jpg.jpg', 'image-picker6263762973554104646jpg1664263105.jpg', NULL, '35.51 KB', '1125 x 1093 pixels', '2022-09-27 01:18:26', '2022-09-27 01:18:26', 'web', NULL),
(316, 'Screenshot_2021-09-12-18-00-55-195_com.whatsapp.jpg', 'screenshot-2021-09-12-18-00-55-195-comwhatsapp1664397619.jpg', NULL, '524.12 KB', '1080 x 2280 pixels', '2022-09-28 14:40:20', '2022-09-28 14:40:20', 'web', 1098),
(317, 'image_picker6418749769872594517.jpg.jpg', 'image-picker6418749769872594517jpg1664663491.jpg', NULL, '451.89 KB', '1080 x 2280 pixels', '2022-10-01 16:31:32', '2022-10-01 16:31:32', 'web', NULL),
(318, 'grid-b61641641712.jpg', 'grid-b616416417121666595056.jpg', NULL, '27.28 KB', '350 x 240 pixels', '2022-10-24 01:04:16', '2022-10-24 01:04:16', 'web', 3),
(319, 'grid-young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-581643693756.png', 'grid-young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-5816436937561666595093.png', NULL, '125.15 KB', '350 x 238 pixels', '2022-10-24 01:04:54', '2022-10-24 01:04:54', 'web', 3),
(320, 'grid-frame-221651124049.jpg', 'grid-frame-2216511240491666595141.jpg', NULL, '25.61 KB', '350 x 238 pixels', '2022-10-24 01:05:41', '2022-10-24 01:05:41', 'web', 3),
(321, 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-591644647980.png', 'young-beautiful-cleaner-woman-holding-bucket-with-products-pointing-camera-against-blue-backdrop-5916446479801666595408.png', NULL, '559.72 KB', '730 x 497 pixels', '2022-10-24 01:10:08', '2022-10-24 01:10:08', 'web', 3),
(322, 'frame-221651124049.jpg', 'frame-2216511240491666963499.jpg', NULL, '340.96 KB', '730 x 497 pixels', '2022-10-28 07:24:59', '2022-10-28 07:24:59', 'web', 5),
(323, 'frame-191651124014.jpg', 'frame-1916511240141666964019.jpg', NULL, '471.57 KB', '730 x 497 pixels', '2022-10-28 07:33:39', '2022-10-28 07:33:39', 'web', 5),
(324, 'frame-211651124011.jpg', 'frame-2116511240111666964164.jpg', NULL, '342.43 KB', '730 x 497 pixels', '2022-10-28 07:36:04', '2022-10-28 07:36:04', 'web', 5),
(325, 'nidImageInstance of \'XFile\'.jpg', 'nidimageinstance-of-xfile1667153682.jpg', NULL, '37.24 KB', '540 x 1170 pixels', '2022-10-30 12:14:42', '2022-10-30 12:14:42', 'web', NULL),
(326, 'addressImageInstance of \'XFile\'.jpg', 'addressimageinstance-of-xfile1667153683.jpg', NULL, '2.97 MB', '3072 x 4080 pixels', '2022-10-30 12:14:46', '2022-10-30 12:14:46', 'web', NULL),
(327, 'playstore.png', 'playstore1667200286.png', NULL, '143.56 KB', '512 x 512 pixels', '2022-10-31 01:11:26', '2022-10-31 01:11:26', 'web', NULL),
(328, 'image_picker8454877783213418776.jpg.jpg', 'image-picker8454877783213418776jpg1667200392.jpg', NULL, '447.66 KB', '1080 x 2340 pixels', '2022-10-31 01:13:13', '2022-10-31 01:13:13', 'web', NULL),
(329, 'image_picker1179333493707268938.jpg.jpg', 'image-picker1179333493707268938jpg1667200537.jpg', NULL, '447.66 KB', '1080 x 2340 pixels', '2022-10-31 01:15:38', '2022-10-31 01:15:38', 'web', NULL),
(330, 'git_branch.png', 'git-branch1667826038.png', NULL, '27.82 KB', '538 x 442 pixels', '2022-11-07 07:00:38', '2022-11-07 07:00:38', 'web', NULL),
(331, 'git_branch.png', 'git-branch1667826063.png', NULL, '27.82 KB', '538 x 442 pixels', '2022-11-07 07:01:03', '2022-11-07 07:01:03', 'web', NULL),
(332, 'index.jpg', 'index1667827259.jpg', NULL, '4.77 KB', '183 x 275 pixels', '2022-11-07 07:20:59', '2022-11-07 07:20:59', 'web', NULL),
(333, 'index.jpg', 'index1667827566.jpg', NULL, '4.77 KB', '183 x 275 pixels', '2022-11-07 07:26:07', '2022-11-07 07:26:07', 'web', NULL),
(334, 'image (2).png', 'image-21667897834.png', NULL, '114.85 KB', '893 x 589 pixels', '2022-11-08 02:57:15', '2022-11-08 02:57:15', 'web', NULL),
(335, 'image (2).png', 'image-21667988381.png', NULL, '114.85 KB', '893 x 589 pixels', '2022-11-09 04:06:21', '2022-11-09 04:06:21', 'web', NULL),
(336, 'image (2).png', 'image-21668056842.png', NULL, '114.85 KB', '893 x 589 pixels', '2022-11-09 23:07:23', '2022-11-09 23:07:23', 'web', NULL),
(337, 'image_picker7816444421084072775.jpg.jpg', 'image-picker7816444421084072775jpg1669130715.jpg', NULL, '81.65 KB', '640 x 640 pixels', '2022-11-22 09:25:15', '2022-11-22 09:25:15', 'web', NULL),
(338, 'image_picker2852672963590523099.jpg.jpg', 'image-picker2852672963590523099jpg1669131315.jpg', NULL, '316.8 KB', '1080 x 1920 pixels', '2022-11-22 09:35:16', '2022-11-22 09:35:16', 'web', NULL),
(339, 'nidImageInstance of \'XFile\'.jpg', 'nidimageinstance-of-xfile1669132386.jpg', NULL, '5.98 MB', '4032 x 1960 pixels', '2022-11-22 09:53:08', '2022-11-22 09:53:08', 'web', NULL),
(340, 'addressImageInstance of \'XFile\'.jpg', 'addressimageinstance-of-xfile1669132388.jpg', NULL, '813.44 KB', '2762 x 1740 pixels', '2022-11-22 09:53:09', '2022-11-22 09:53:09', 'web', NULL),
(341, 'image_picker7463937726082885269.jpg.jpg', 'image-picker7463937726082885269jpg1669134540.jpg', NULL, '13.31 KB', '701 x 438 pixels', '2022-11-22 10:29:00', '2022-11-22 10:29:00', 'web', NULL),
(342, 'photo_2022-11-22_23-45-50.jpg', 'photo-2022-11-22-23-45-501669135591.jpg', NULL, '35.48 KB', '1080 x 720 pixels', '2022-11-22 10:46:31', '2022-12-09 08:23:17', 'web', 1),
(343, 'photo_2022-06-03_15-18-39.jpg', 'photo-2022-06-03-15-18-391669135610.jpg', NULL, '81.65 KB', '640 x 640 pixels', '2022-11-22 10:46:50', '2022-11-22 10:46:50', 'web', 1),
(344, 'nidImageInstance of \'XFile\'.jpg', 'nidimageinstance-of-xfile1669178282.jpg', NULL, '115.05 KB', '899 x 1599 pixels', '2022-11-22 22:38:02', '2022-11-22 22:38:02', 'web', NULL),
(345, 'addressImageInstance of \'XFile\'.jpg', 'addressimageinstance-of-xfile1669178282.jpg', NULL, '115.05 KB', '899 x 1599 pixels', '2022-11-22 22:38:03', '2022-11-22 22:38:03', 'web', NULL),
(346, 'nidImageInstance of \'XFile\'.jpg', 'nidimageinstance-of-xfile1669178326.jpg', NULL, '115.05 KB', '899 x 1599 pixels', '2022-11-22 22:38:46', '2022-11-22 22:38:46', 'web', NULL),
(347, 'addressImageInstance of \'XFile\'.jpg', 'addressimageinstance-of-xfile1669178326.jpg', NULL, '115.05 KB', '899 x 1599 pixels', '2022-11-22 22:38:47', '2022-11-22 22:38:47', 'web', NULL),
(348, 'argentina_640.png', 'argentina-6401669187070.png', NULL, '138.92 KB', '640 x 480 pixels', '2022-11-23 01:04:30', '2022-11-23 01:04:30', 'web', NULL),
(349, 'image_picker3639073857183070258.jpg.jpg', 'image-picker3639073857183070258jpg1669196220.jpg', NULL, '45.57 KB', '427 x 640 pixels', '2022-11-23 03:37:00', '2022-11-23 03:37:00', 'web', NULL),
(350, 'image_picker4317497818952578909.png.jpg', 'image-picker4317497818952578909png1669196315.jpg', NULL, '209.29 KB', '1044 x 948 pixels', '2022-11-23 03:38:35', '2022-11-23 03:38:35', 'web', NULL),
(351, 'image_picker6342939541493128346.jpg.jpg', 'image-picker6342939541493128346jpg1669470924.jpg', NULL, '95.47 KB', '1024 x 615 pixels', '2022-11-26 07:55:24', '2022-11-26 07:55:24', 'web', NULL),
(352, 'image_picker3527134767176475550.jpg.jpg', 'image-picker3527134767176475550jpg1669581056.jpg', NULL, '2.35 MB', '3456 x 4608 pixels', '2022-11-27 14:31:00', '2022-11-27 14:31:00', 'web', NULL),
(353, 'image_picker3050525384584058195.jpg.jpg', 'image-picker3050525384584058195jpg1669596754.jpg', NULL, '400.17 KB', '1080 x 2220 pixels', '2022-11-27 18:52:35', '2022-11-27 18:52:35', 'web', NULL),
(354, 'nidImageInstance of \'XFile\'.jpg', 'nidimageinstance-of-xfile1669637541.jpg', NULL, '14.96 KB', '720 x 425 pixels', '2022-11-28 06:12:21', '2022-11-28 06:12:21', 'web', NULL),
(355, 'addressImageInstance of \'XFile\'.jpg', 'addressimageinstance-of-xfile1669637541.jpg', NULL, '14.96 KB', '720 x 425 pixels', '2022-11-28 06:12:21', '2022-11-28 06:12:21', 'web', NULL),
(356, 'image_picker447802975827891334.jpg.jpg', 'image-picker447802975827891334jpg1669647355.jpg', NULL, '527.39 KB', '1080 x 2186 pixels', '2022-11-28 08:55:56', '2022-11-28 08:55:56', 'web', NULL),
(357, 'image_picker6691036284625246279.jpg.jpg', 'image-picker6691036284625246279jpg1669784554.jpg', NULL, '4.25 MB', '4000 x 3000 pixels', '2022-11-29 23:02:37', '2022-11-29 23:02:37', 'web', NULL),
(358, 'nidImageInstance of \'XFile\'.jpg', 'nidimageinstance-of-xfile1669791670.jpg', NULL, '78.44 KB', '1080 x 2340 pixels', '2022-11-30 01:01:11', '2022-11-30 01:01:11', 'web', NULL),
(359, 'addressImageInstance of \'XFile\'.jpg', 'addressimageinstance-of-xfile1669791671.jpg', NULL, '60.44 KB', '1500 x 709 pixels', '2022-11-30 01:01:11', '2022-11-30 01:01:11', 'web', NULL),
(360, 'nidImageInstance of \'XFile\'.jpg', 'nidimageinstance-of-xfile1669791685.jpg', NULL, '78.44 KB', '1080 x 2340 pixels', '2022-11-30 01:01:25', '2022-11-30 01:01:25', 'web', NULL),
(361, 'addressImageInstance of \'XFile\'.jpg', 'addressimageinstance-of-xfile1669791685.jpg', NULL, '60.44 KB', '1500 x 709 pixels', '2022-11-30 01:01:26', '2022-11-30 01:01:26', 'web', NULL),
(362, 'nidImageInstance of \'XFile\'.jpg', 'nidimageinstance-of-xfile1669791703.jpg', NULL, '78.44 KB', '1080 x 2340 pixels', '2022-11-30 01:01:44', '2022-11-30 01:01:44', 'web', NULL),
(363, 'addressImageInstance of \'XFile\'.jpg', 'addressimageinstance-of-xfile1669791704.jpg', NULL, '60.44 KB', '1500 x 709 pixels', '2022-11-30 01:01:44', '2022-11-30 01:01:44', 'web', NULL),
(364, 'nidImageInstance of \'XFile\'.jpg', 'nidimageinstance-of-xfile1669791714.jpg', NULL, '78.44 KB', '1080 x 2340 pixels', '2022-11-30 01:01:55', '2022-11-30 01:01:55', 'web', NULL),
(365, 'addressImageInstance of \'XFile\'.jpg', 'addressimageinstance-of-xfile1669791715.jpg', NULL, '60.44 KB', '1500 x 709 pixels', '2022-11-30 01:01:55', '2022-11-30 01:01:55', 'web', NULL),
(366, 'image_picker2375347857853738219.jpg.jpg', 'image-picker2375347857853738219jpg1669799969.jpg', NULL, '2.59 MB', '2201 x 4608 pixels', '2022-11-30 03:19:32', '2022-11-30 03:19:32', 'web', NULL),
(367, 'image_picker3079291311227823993.jpg.jpg', 'image-picker3079291311227823993jpg1669835011.jpg', NULL, '727.05 KB', '1080 x 2244 pixels', '2022-11-30 13:03:32', '2022-11-30 13:03:32', 'web', NULL),
(368, 'image_picker3626225000371521379.jpg.jpg', 'image-picker3626225000371521379jpg1670170799.jpg', NULL, '61.67 KB', '720 x 733 pixels', '2022-12-04 10:19:59', '2022-12-04 10:19:59', 'web', NULL),
(369, 'image_picker3430615762529107979.jpg.jpg', 'image-picker3430615762529107979jpg1670212374.jpg', NULL, '132.75 KB', '750 x 750 pixels', '2022-12-04 21:52:55', '2022-12-04 21:52:55', 'web', NULL),
(370, 'image_picker6543252162579744619.jpg.jpg', 'image-picker6543252162579744619jpg1670250710.jpg', NULL, '84.92 KB', '780 x 1000 pixels', '2022-12-05 08:31:51', '2022-12-05 08:31:51', 'web', NULL),
(371, 'image_picker8102477105982571947.jpg.jpg', 'image-picker8102477105982571947jpg1670275189.jpg', NULL, '22.12 KB', '960 x 960 pixels', '2022-12-05 15:19:49', '2022-12-05 15:19:49', 'web', NULL),
(372, 'image_picker8165118081320407828.jpg.jpg', 'image-picker8165118081320407828jpg1670325309.jpg', NULL, '119.94 KB', '900 x 1600 pixels', '2022-12-06 05:15:10', '2022-12-06 05:15:10', 'web', NULL),
(373, 'image_picker1286682143090286399.jpg.jpg', 'image-picker1286682143090286399jpg1670408843.jpg', NULL, '570.94 KB', '1080 x 2340 pixels', '2022-12-07 04:27:24', '2022-12-07 04:27:24', 'web', NULL),
(374, 'image_picker8172165452193567427.jpg.jpg', 'image-picker8172165452193567427jpg1670556374.jpg', NULL, '344.83 KB', '720 x 1650 pixels', '2022-12-08 21:26:15', '2022-12-08 21:26:15', 'web', NULL),
(375, 'image_picker1311887449193874954.jpg.jpg', 'image-picker1311887449193874954jpg1672003200.jpg', NULL, '1.99 MB', '3264 x 2448 pixels', '2022-12-25 15:20:03', '2022-12-25 15:20:03', 'web', NULL),
(376, 'image_picker7762837339415522792.png.jpg', 'image-picker7762837339415522792png1672173384.jpg', NULL, '60.24 KB', '835 x 162 pixels', '2022-12-27 14:36:24', '2022-12-27 14:36:24', 'web', NULL),
(377, 'image_picker5459669867042136165.jpg.jpg', 'image-picker5459669867042136165jpg1672264498.jpg', NULL, '1.66 MB', '4624 x 2084 pixels', '2022-12-28 15:55:01', '2022-12-28 15:55:01', 'web', NULL),
(378, 'image_picker860209854598789083.jpg.jpg', 'image-picker860209854598789083jpg1672278027.jpg', NULL, '359.63 KB', '828 x 1472 pixels', '2022-12-28 19:40:27', '2022-12-28 19:40:27', 'web', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Primary Menu', '[{\"ptype\":\"custom\",\"id\":2,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"home\",\"purl\":\"@url\",\"children\":[{\"ptype\":\"pages\",\"id\":3,\"antarget\":\"\",\"icon\":\"\",\"menulabel\":\"\",\"pid\":16},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{\"ptype\":\"pages\",\"id\":39,\"antarget\":\"\",\"icon\":\"\",\"menulabel\":\"\",\"pid\":22},{},{},{},{},{},{},{},{},{},{},{},{},{\"ptype\":\"pages\",\"id\":51,\"antarget\":\"\",\"icon\":\"\",\"menulabel\":\"\",\"pid\":38},{},{},{},{},{},{},{},{},{},{},{\"ptype\":\"pages\",\"id\":61,\"antarget\":\"\",\"icon\":\"\",\"menulabel\":\"\",\"pid\":39},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}]},{\"ptype\":\"pages\",\"id\":130,\"antarget\":\"\",\"icon\":\"\",\"menulabel\":\"\",\"pid\":31},{\"ptype\":\"pages\",\"id\":131,\"antarget\":\"\",\"icon\":\"\",\"menulabel\":\"\",\"pid\":32},{\"ptype\":\"pages\",\"id\":132,\"antarget\":\"\",\"icon\":\"\",\"menulabel\":\"\",\"pid\":44},{\"ptype\":\"pages\",\"pid\":45,\"id\":160},{\"ptype\":\"custom\",\"id\":133,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Pages\",\"purl\":\"\",\"children\":[{\"ptype\":\"pages\",\"id\":134,\"antarget\":\"\",\"icon\":\"\",\"menulabel\":\"\",\"pid\":40},{},{},{},{},{},{},{\"ptype\":\"pages\",\"id\":140,\"antarget\":\"\",\"icon\":\"\",\"menulabel\":\"\",\"pid\":41},{},{},{},{},{},{\"ptype\":\"pages\",\"id\":145,\"antarget\":\"\",\"icon\":\"\",\"menulabel\":\"\",\"pid\":42},{},{},{},{},{},{},{}]},{\"ptype\":\"pages\",\"id\":152,\"antarget\":\"\",\"icon\":\"\",\"menulabel\":\"\",\"pid\":35},{\"ptype\":\"pages\",\"id\":153,\"antarget\":\"\",\"icon\":\"\",\"menulabel\":\"\",\"pid\":34}]', 'default', '2021-03-24 08:07:56', '2022-10-11 22:39:17'),
(6, 'Useful Links', '[{\"pslug\":\"about_page_slug\",\"pname\":\"about_page_en_GB_name\",\"ptype\":\"static\",\"id\":3},{\"pslug\":\"contact_page_slug\",\"pname\":\"contact_page_en_GB_name\",\"ptype\":\"static\",\"id\":4},{\"ptype\":\"static\",\"pslug\":\"practice_area_page_slug\",\"pname\":\"practice_area_page_[lang]_name\",\"id\":3},{\"ptype\":\"static\",\"pslug\":\"appointment_page_slug\",\"pname\":\"appointment_page_[lang]_name\",\"id\":4}]', '', '2021-03-29 03:27:29', '2021-09-02 05:37:38'),
(7, 'Footer Menu', '[{\"ptype\":\"custom\",\"pname\":\"Home\",\"purl\":\"@url\",\"id\":1},{\"menulabel\":\"Blog\",\"ptype\":\"pages\",\"pid\":26,\"id\":2},{\"ptype\":\"pages\",\"pid\":20,\"id\":3},{\"ptype\":\"pages\",\"pid\":19,\"id\":5}]', NULL, '2021-10-30 03:41:20', '2021-10-30 03:42:21');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_taggable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `facebook_meta_tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_meta_description` text COLLATE utf8mb4_unicode_ci,
  `facebook_meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_meta_tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_meta_description` text COLLATE utf8mb4_unicode_ci,
  `twitter_meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `meta_taggable_id`, `meta_taggable_type`, `meta_title`, `meta_tags`, `meta_description`, `facebook_meta_tags`, `facebook_meta_description`, `facebook_meta_image`, `twitter_meta_tags`, `twitter_meta_description`, `twitter_meta_image`, `created_at`, `updated_at`) VALUES
(25, 36, 'App\\Blog', 'bloghttp://localhost/ozagi/assets/uploads/media-uploader/image-21633150859.jpg', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-01 22:56:29', '2021-11-17 17:27:36'),
(26, 37, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-01 23:09:43', '2021-11-17 14:13:18'),
(27, 38, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-01 23:09:47', '2021-11-17 19:29:27'),
(28, 39, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-01 23:09:50', '2021-11-10 06:39:03'),
(29, 40, 'App\\Blog', 'blog dd', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-01 23:09:53', '2021-11-17 17:26:41'),
(30, 41, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-01 23:09:55', '2021-11-17 14:09:33'),
(31, 42, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-01 23:10:00', '2021-10-02 00:15:30'),
(32, 43, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-01 23:10:04', '2021-10-01 23:47:51'),
(33, 44, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-01 23:10:18', '2021-10-01 23:46:55'),
(34, 45, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-01 23:10:21', '2021-10-01 23:30:24'),
(40, 55, 'App\\Blog', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-02 04:57:06', '2021-10-02 04:57:06'),
(41, 56, 'App\\Blog', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-02 04:58:14', '2021-10-02 04:58:14'),
(42, 57, 'App\\Blog', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-02 04:58:25', '2021-10-02 04:58:25'),
(43, 62, 'App\\Blog', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-02 05:01:45', '2021-10-02 05:01:45'),
(44, 64, 'App\\Blog', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-02 05:02:37', '2021-10-02 05:02:37'),
(45, 65, 'App\\Blog', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-02 05:03:02', '2021-10-02 05:03:02'),
(46, 73, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-10-02 05:14:45', '2021-10-02 05:48:52'),
(47, 78, 'App\\Blog', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-02 06:31:08', '2021-10-02 06:31:08'),
(48, 79, 'App\\Blog', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-02 06:31:11', '2021-10-02 06:31:11'),
(52, 83, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-02 06:53:28', '2021-10-02 06:53:28'),
(63, 94, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-02 23:28:22', '2021-10-02 23:28:22'),
(72, 16, 'App\\Page', 'Home Page One', 'test meta', 'test fb meta', 'test', 'test fb meta', '159', 'test', 'test twitter meta', '161', '2021-10-04 07:23:34', '2022-04-21 05:32:24'),
(81, 100, 'App\\Blog', 'sdf', '', 'sdf', '', '', NULL, '', '', NULL, '2021-10-07 06:47:42', '2021-10-07 06:47:42'),
(82, 101, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-10-07 07:01:03', '2021-10-07 07:01:03'),
(83, 102, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-10-07 07:13:00', '2021-10-07 07:13:00'),
(84, 103, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-10-07 07:13:10', '2021-10-07 07:13:10'),
(85, 104, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-10-07 07:14:09', '2021-10-07 07:14:09'),
(87, 105, 'App\\Blog', 'sdfsdfdsf', 'sd', 'sdf', 'sdfsdf', 'sdf', NULL, 'sdf', 'sdf', NULL, '2021-10-11 22:20:01', '2021-10-20 22:24:56'),
(88, 106, 'App\\Blog', 'dfs', 'sfd', 'sdf', '', '', NULL, '', '', NULL, '2021-10-11 22:40:06', '2021-10-20 22:27:16'),
(89, 107, 'App\\Blog', 'sdf', 'sdf', 'sdf', '', '', NULL, '', '', NULL, '2021-10-11 22:47:16', '2021-10-17 23:57:10'),
(91, 109, 'App\\Blog', 'sf', 'sf', 'sdf', '', '', NULL, '', '', NULL, '2021-10-12 05:38:27', '2021-10-20 22:25:26'),
(92, 110, 'App\\Blog', 'dfgdfg', 'dfg', 'dfg', 'dfg', 'dfg', NULL, 'dfg', 'dfg', NULL, '2021-10-13 00:52:59', '2021-10-13 00:52:59'),
(93, 111, 'App\\Blog', 'sdf', 'sdf', 'sdf', '', '', NULL, '', '', NULL, '2021-10-13 01:11:59', '2021-10-13 01:11:59'),
(95, 22, 'App\\Page', 'Home Page Two', 'test', 'test', 'test', 'test', NULL, '', '', NULL, '2021-10-22 22:35:48', '2022-02-14 09:26:52'),
(99, 112, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-10-24 04:05:12', '2021-11-01 08:35:13'),
(100, 113, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-10-24 04:08:21', '2021-11-17 19:21:15'),
(101, 114, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-10-24 04:09:10', '2021-11-17 18:27:59'),
(102, 115, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-10-24 04:11:09', '2021-11-17 19:46:01'),
(103, 116, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-10-24 04:12:11', '2021-11-01 08:33:41'),
(104, 117, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-24 05:55:53', '2021-11-14 06:50:39'),
(105, 118, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-24 05:56:11', '2021-11-14 06:50:21'),
(106, 119, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-24 05:56:14', '2021-11-14 06:49:18'),
(107, 120, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-24 05:56:17', '2021-11-08 07:12:23'),
(108, 121, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-24 06:11:03', '2021-11-17 18:35:34'),
(109, 122, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-24 06:13:24', '2021-11-14 01:01:40'),
(110, 123, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-24 06:14:21', '2021-11-14 06:48:58'),
(111, 124, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-24 06:15:33', '2021-11-14 06:48:37'),
(112, 125, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-24 06:16:41', '2021-11-14 06:48:14'),
(113, 126, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-10-24 06:20:15', '2021-11-17 19:48:15'),
(114, 127, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '213', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '218', '2021-10-24 06:21:15', '2021-11-14 23:44:04'),
(118, 128, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-10-25 01:23:45', '2021-10-25 01:25:55'),
(119, 129, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-10-25 01:29:39', '2021-10-25 01:30:16'),
(120, 130, 'App\\Blog', 'dsf', NULL, '', '', '', NULL, '', '', NULL, '2021-10-25 01:36:10', '2021-10-25 01:36:34'),
(121, 139, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-10-25 04:20:43', '2021-10-27 04:46:22'),
(122, 140, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-10-25 04:21:44', '2021-10-26 06:52:18'),
(123, 141, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-10-25 04:25:03', '2021-10-25 04:25:03'),
(126, 143, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-10-28 03:40:19', '2021-10-28 03:40:19'),
(127, 144, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-10-28 03:44:12', '2021-10-31 01:11:34'),
(128, 145, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-10-28 03:45:29', '2021-10-28 03:45:29'),
(129, 146, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-10-28 03:57:09', '2021-10-28 03:57:09'),
(130, 147, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-10-30 00:14:08', '2021-10-30 00:14:08'),
(131, 148, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-10-30 00:19:41', '2021-10-30 00:19:41'),
(132, 149, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-10-30 00:20:15', '2021-10-30 00:20:15'),
(133, 150, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-10-30 00:23:30', '2021-10-31 03:37:16'),
(137, 151, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-10-31 01:14:40', '2021-11-01 01:26:06'),
(138, 152, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-10-31 03:38:55', '2021-10-31 03:38:55'),
(139, 153, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-10-31 04:33:24', '2021-10-31 04:33:24'),
(140, 154, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-10-31 04:38:13', '2021-10-31 04:42:35'),
(141, 155, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-10-31 04:44:54', '2021-10-31 04:44:54'),
(142, 156, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-10-31 04:45:02', '2021-10-31 04:45:02'),
(143, 157, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-10-31 04:45:50', '2021-10-31 04:45:50'),
(145, 159, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-10-31 04:47:51', '2021-10-31 04:47:51'),
(146, 160, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-11-01 02:24:19', '2021-11-01 02:24:19'),
(147, 161, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-11-01 02:27:56', '2021-11-01 02:27:56'),
(148, 162, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-11-01 02:28:23', '2021-11-17 19:49:11'),
(149, 163, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-11-01 02:39:49', '2021-11-01 02:46:52'),
(150, 164, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-11-01 02:47:45', '2021-11-01 03:00:26'),
(151, 165, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-11-01 03:02:09', '2021-11-01 03:40:33'),
(152, 166, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-11-01 03:40:41', '2021-11-01 03:40:42'),
(153, 167, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-11-01 03:43:01', '2021-11-01 03:43:01'),
(154, 168, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-11-01 03:55:40', '2021-11-01 03:57:20'),
(155, 169, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-11-01 03:58:14', '2021-11-01 03:58:14'),
(156, 170, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-11-01 03:58:22', '2021-11-01 03:58:22'),
(158, 171, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-11-07 00:14:59', '2021-11-07 01:24:50'),
(159, 172, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-11-07 01:40:28', '2021-11-07 01:40:28'),
(160, 173, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-11-11 07:22:45', '2021-11-11 07:22:45'),
(161, 174, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-11-13 03:12:59', '2021-11-13 03:12:59'),
(162, 175, 'App\\Blog', 'sdf ok', 'sdf', 'sdf', '', '', NULL, '', '', NULL, '2021-11-14 04:37:52', '2021-11-14 04:41:37'),
(163, 177, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '213', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '218', '2021-11-17 14:01:54', '2021-11-17 18:34:28'),
(164, 178, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-11-17 15:32:02', '2021-11-17 15:33:09'),
(165, 179, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-11-17 17:28:58', '2021-11-18 11:23:50'),
(166, 180, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-11-17 19:52:28', '2021-11-17 19:56:54'),
(167, 181, 'App\\Blog', 'blog', 'blog', 'Fighting evil and tyranny, with all his power', 'blog', 'Fighting evil and tyranny, with all his power', '10', 'sdfsdf', 'Fighting evil and tyranny, with all his power', '6', '2021-11-17 19:57:16', '2021-11-17 19:58:51'),
(169, 182, 'App\\Blog', 'dsf', 'sdfdsf', '', '', '', NULL, '', '', NULL, '2021-11-21 16:58:52', '2021-11-21 16:59:10'),
(170, 183, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-11-21 17:24:42', '2021-11-21 17:34:05'),
(171, 184, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2021-11-21 17:25:00', '2021-11-21 17:25:13'),
(172, 185, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2021-11-21 17:33:41', '2021-11-21 17:33:41'),
(173, 31, 'App\\Page', 'About Us', 'about', 'about', '', '', NULL, '', '', NULL, '2021-11-24 06:44:23', '2022-02-12 04:39:56'),
(174, 32, 'App\\Page', 'service list', 'service-list', '', '', '', NULL, '', '', NULL, '2021-11-24 06:52:32', '2022-02-14 22:28:02'),
(176, 34, 'App\\Page', 'contact', 'contact', '', '', '', NULL, '', '', NULL, '2021-11-24 06:54:28', '2022-02-12 04:28:37'),
(177, 35, 'App\\Page', 'blog', 'blog', '', '', '', NULL, '', '', NULL, '2021-11-24 06:56:35', '2022-02-12 04:42:04'),
(180, 187, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2022-01-08 00:25:46', '2022-01-08 00:25:46'),
(181, 190, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2022-01-08 00:38:44', '2022-01-08 00:38:44'),
(182, 191, 'App\\Blog', 'Test', 'Test', 'Test', '', '', NULL, '', '', NULL, '2022-01-08 00:51:33', '2022-01-08 00:51:33'),
(183, 192, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2022-01-08 00:54:41', '2022-01-08 00:54:41'),
(184, 193, 'App\\Blog', '', '', '', '', '', NULL, '', '', NULL, '2022-01-08 01:04:02', '2022-01-08 01:04:02'),
(186, 2, 'App\\Blog', 'werwe', 'werwer', 'werewr', 'werwer', 'werwer', NULL, 'werwer', 'werwe', NULL, '2022-01-08 01:32:50', '2022-02-13 02:50:53'),
(187, 3, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2022-01-08 01:34:16', '2022-02-13 02:50:31'),
(188, 4, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2022-01-08 01:57:12', '2022-02-13 02:49:52'),
(190, 2, 'App\\Blog', 'werwe', 'werwer', 'werewr', 'werwer', 'werwer', NULL, 'werwer', 'werwe', NULL, '2022-01-08 03:18:18', '2022-02-13 02:50:53'),
(191, 3, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2022-01-08 03:22:45', '2022-02-13 02:50:31'),
(192, 4, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2022-01-08 05:23:52', '2022-02-13 02:49:52'),
(193, 5, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2022-01-08 05:23:57', '2022-02-13 02:49:30'),
(194, 6, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2022-01-08 05:24:04', '2022-02-13 02:48:58'),
(195, 7, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2022-01-08 05:24:08', '2022-02-13 02:47:43'),
(196, 8, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2022-01-08 05:24:12', '2022-02-13 02:46:58'),
(197, 9, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2022-01-08 05:24:17', '2022-02-13 02:46:32'),
(198, 10, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2022-01-08 05:24:24', '2022-02-13 02:46:00'),
(199, 11, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2022-01-08 05:24:28', '2022-02-13 02:45:28'),
(200, 12, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2022-01-08 05:44:56', '2022-02-13 02:44:10'),
(201, 13, 'App\\Blog', '', NULL, '', '', '', NULL, '', '', NULL, '2022-01-08 23:09:53', '2022-02-13 02:45:01'),
(202, 38, 'App\\Page', 'home page three', 'home page three', 'home page three', '', '', NULL, '', '', NULL, '2022-01-11 23:30:18', '2022-02-13 08:04:12'),
(203, 39, 'App\\Page', 'Home Page Four', 'Home Page Four', 'Home Page Four', '', '', NULL, '', '', NULL, '2022-01-12 22:21:43', '2022-02-13 08:05:27'),
(204, 40, 'App\\Page', '', '', '', '', '', NULL, '', '', NULL, '2022-01-13 06:53:28', '2022-02-12 04:40:25'),
(205, 41, 'App\\Page', 'Privacy Policy', '', '', '', '', NULL, '', '', NULL, '2022-01-13 07:37:39', '2022-02-13 01:39:42'),
(206, 42, 'App\\Page', 'Terms and Conditions', '', '', '', '', NULL, '', '', NULL, '2022-01-14 22:15:25', '2022-02-13 01:40:10'),
(217, NULL, 'App\\Service', 'test', 'test,test2,test3', 'vsdfgdf', 'test,test2', 'asdasd', '101', 'test,test2', 'asdasd', '97', '2022-02-01 07:28:09', '2022-02-01 07:28:09'),
(218, 21, 'App\\Service', 'tester', 'tester,tessert,Kester', 'sfsfssd', 'sdsf,sdf,Kester', 'sdfs', NULL, 'sdsfsdf,sdfsdf,kester', 'sdfsdf kester', '99', '2022-02-01 07:34:29', '2022-02-01 08:30:57'),
(219, 22, 'App\\Service', 'Test', 'test', 'test', 'test', 'test', '121', 'test', 'test', '19', '2022-02-05 07:24:49', '2022-02-05 07:24:49'),
(220, 23, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-02-06 00:24:02', '2022-02-06 00:24:02'),
(221, 24, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-02-06 02:57:21', '2022-02-06 02:57:21'),
(222, 25, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-02-06 03:07:23', '2022-02-06 03:07:23'),
(223, 26, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-02-06 03:14:05', '2022-02-06 03:14:05'),
(224, 27, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-02-06 03:16:06', '2022-02-06 03:16:06'),
(225, 28, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-02-06 03:16:56', '2022-02-06 03:16:56'),
(226, 29, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-02-06 03:24:26', '2022-02-06 03:24:26'),
(227, 30, 'App\\Service', 'Molestias consequatu', 'Occaecat vel quaerat', 'Deserunt sunt occaec', '', '', NULL, '', '', NULL, '2022-02-06 07:58:30', '2022-02-06 07:58:30'),
(228, 31, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-02-07 23:32:27', '2022-02-07 23:32:27'),
(229, 32, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-02-07 23:33:02', '2022-02-07 23:33:02'),
(230, 33, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-02-07 23:33:39', '2022-02-07 23:33:39'),
(232, 34, 'App\\Service', 'Et similique eligend', 'Delectus iste et ex', 'Perspiciatis aut ve', '', '', NULL, '', '', NULL, '2022-02-09 04:49:25', '2022-02-09 04:49:25'),
(233, 35, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-02-10 04:08:29', '2022-02-10 04:08:29'),
(234, 36, 'App\\Service', 'Cleaning your house', 'cleaning', 'Cleaning your house by our experts', '', '', NULL, '', '', NULL, '2022-02-12 00:40:56', '2022-04-28 02:03:55'),
(235, 37, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-02-12 02:06:34', '2022-02-12 02:06:34'),
(236, 38, 'App\\Service', 'Test', 'test', 'test', '', '', NULL, '', '', NULL, '2022-02-12 03:50:06', '2022-02-12 03:50:06'),
(237, 39, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-02-12 04:07:24', '2022-02-12 04:07:24'),
(238, 40, 'App\\Service', 'Test', 'test', 'test', '', '', NULL, '', '', NULL, '2022-02-16 11:18:31', '2022-02-16 11:30:38'),
(239, 41, 'App\\Service', 'Test', NULL, '', '', '', NULL, '', '', NULL, '2022-02-17 17:40:47', '2022-04-28 09:34:39'),
(240, 42, 'App\\Service', 'Test', 'rest', 'test', '', '', NULL, '', '', NULL, '2022-02-17 17:45:07', '2022-02-17 17:45:07'),
(241, 37, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-04-21 03:39:26', '2022-04-21 03:39:26'),
(242, 43, 'App\\Page', '', '', '', '', '', NULL, '', '', NULL, '2022-04-21 05:28:48', '2022-05-12 15:37:07'),
(243, 38, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-04-23 00:24:57', '2022-04-23 00:24:57'),
(244, 39, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-04-23 00:29:11', '2022-04-23 00:29:11'),
(245, 40, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-04-24 00:14:43', '2022-04-24 00:14:43'),
(246, 41, 'App\\Service', 'Test', NULL, '', '', '', NULL, '', '', NULL, '2022-04-24 04:12:18', '2022-04-28 09:34:39'),
(247, 42, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-04-24 23:11:20', '2022-04-24 23:11:20'),
(248, 43, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-04-24 23:17:12', '2022-04-24 23:17:12'),
(249, 44, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-04-24 23:20:28', '2022-04-24 23:20:28'),
(250, 45, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-04-24 23:23:02', '2022-04-24 23:23:02'),
(251, 46, 'App\\Service', '', NULL, '', '', '', NULL, '', '', NULL, '2022-04-26 23:51:33', '2022-04-27 00:03:01'),
(252, 47, 'App\\Service', '', NULL, '', '', '', NULL, '', '', NULL, '2022-04-27 01:57:46', '2022-04-27 02:40:35'),
(253, 48, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-04-27 02:44:53', '2022-04-27 02:44:53'),
(254, 49, 'App\\Service', 'fsdfsd sf', 'sd fsd', 'fsdfgsdf', '', '', NULL, '', '', NULL, '2022-04-27 02:57:48', '2022-04-28 09:39:26'),
(255, 50, 'App\\Service', '', NULL, '', '', '', NULL, '', '', NULL, '2022-04-28 07:57:51', '2022-04-28 09:40:16'),
(256, 51, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-04-28 07:59:33', '2022-04-28 07:59:33'),
(257, 52, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-04-28 08:09:48', '2022-04-28 08:09:48'),
(258, 53, 'App\\Service', '', NULL, '', '', '', NULL, '', '', NULL, '2022-04-28 08:31:38', '2022-04-28 09:38:18'),
(259, 54, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-04-28 08:35:15', '2022-04-28 08:35:15'),
(260, 55, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-04-28 08:37:48', '2022-04-28 08:37:48'),
(261, 56, 'App\\Service', '', NULL, '', '', '', NULL, '', '', NULL, '2022-04-28 08:47:42', '2022-11-16 05:18:26'),
(262, 57, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-04-28 03:15:23', '2022-04-28 03:15:23'),
(263, 58, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-04-29 12:26:15', '2022-04-29 12:26:15'),
(264, 44, 'App\\Page', '', '', '', '', '', NULL, '', '', NULL, '2022-09-03 04:04:25', '2022-11-22 07:21:24'),
(265, 57, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-10-08 04:59:32', '2022-10-08 04:59:32'),
(266, 45, 'App\\Page', '', '', '', '', '', NULL, '', '', NULL, '2022-10-11 22:38:42', '2022-10-11 23:10:39'),
(267, 58, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-10-23 00:37:38', '2022-10-23 00:37:38'),
(268, 59, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-10-23 01:53:50', '2022-10-23 01:53:50'),
(269, 60, 'App\\Service', '', NULL, '', '', '', NULL, '', '', NULL, '2022-10-23 01:58:30', '2022-10-23 04:05:42'),
(270, 61, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-11-13 01:41:09', '2022-11-13 01:41:09'),
(271, 62, 'App\\Service', '', '', '', '', '', NULL, '', '', NULL, '2022-11-14 03:03:13', '2022-11-14 03:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_06_180949_create_admins_table', 1),
(6, '2019_12_07_082524_create_static_options_table', 1),
(7, '2019_12_08_171750_create_counterups_table', 1),
(8, '2019_12_09_063224_create_testimonials_table', 1),
(10, '2019_12_10_125636_create_support_infos_table', 1),
(15, '2019_12_13_221931_create_languages_table', 1),
(27, '2020_04_14_082508_create_media_uploads_table', 4),
(31, '2020_07_22_132250_create_popup_builders_table', 5),
(33, '2020_04_20_170818_create_orders_table', 6),
(34, '2020_04_21_142420_create_payment_logs_table', 7),
(38, '2021_03_24_140243_create_menus_table', 11),
(41, '2021_03_27_113444_create_counterups_table', 14),
(46, '2020_06_14_081955_create_widgets_table', 16),
(47, '2019_12_10_125607_create_social_icons_table', 17),
(59, '2021_04_10_060146_create_infobar_right_icons_table', 18),
(60, '2021_04_11_063158_create_blogs_table', 18),
(61, '2021_04_11_063236_create_blog_langs_table', 18),
(62, '2021_04_11_063420_create_blog_categories_table', 18),
(63, '2021_04_11_063445_create_blog_category_langs_table', 18),
(64, '2019_12_28_140343_create_key_features_table', 19),
(65, '2021_04_18_132805_create_header_sliders_table', 20),
(67, '2020_04_20_073746_create_quotes_table', 22),
(68, '2021_04_24_132853_create_progress_bars_table', 23),
(70, '2021_04_15_105203_create_appointment_bookings_table', 24),
(71, '2021_04_15_105212_create_appointment_reviews_table', 24),
(73, '2021_04_15_121056_create_appointment_booking_times_table', 24),
(76, '2020_07_08_132910_create_product_cupons_table', 26),
(77, '2020_07_08_161737_create_product_shippings_table', 26),
(80, '2020_07_13_124351_create_product_orders_table', 26),
(81, '2020_07_21_053307_create_product_ratings_table', 26),
(82, '2021_04_15_105219_create_appointment_categories_table', 27),
(83, '2021_04_26_090448_create_appointment_category_langs_table', 27),
(84, '2021_04_15_105154_create_appointments_table', 28),
(85, '2021_04_26_095611_create_appointment_langs_table', 28),
(88, '2020_07_09_084606_create_product_categories_table', 29),
(89, '2021_04_28_104831_create_product_category_langs_table', 29),
(93, '2021_04_28_110990_create_products_table', 30),
(94, '2021_04_28_110995_create_products_langs_table', 30),
(102, '2020_01_25_155448_create_pages_table', 31),
(106, '2021_04_30_113454_create_page_langs_table', 32),
(107, '2021_04_30_141804_create_service_category_langs_table', 32),
(108, '2020_01_23_162404_create_service_categories_table', 33),
(109, '2021_05_01_152404_create_services_table', 34),
(110, '2021_05_01_152405_create_services_langs_table', 35),
(111, '2021_05_06_092507_create_price_plans_table', 36),
(112, '2021_05_06_092508_create_price_plan_langs_table', 36),
(113, '2021_05_18_062316_create_practice_areas_table', 37),
(114, '2021_05_18_062351_create_cases_table', 37),
(115, '2021_05_18_062404_create_attorneys_table', 37),
(116, '2021_05_19_111058_create_practice_area_categories_table', 37),
(117, '2021_05_19_111128_create_practice_area_category_langs_table', 37),
(119, '2021_05_20_045324_create_practice_area_langs_table', 38),
(120, '2021_05_20_120226_create_case_categories_table', 39),
(121, '2021_05_20_120508_create_case_category_langs_table', 39),
(122, '2021_05_20_120550_create_case_langs_table', 39),
(123, '2021_05_22_114053_create_attorney_langs_table', 40),
(124, '2021_05_24_050431_create_consulations_table', 41),
(125, '2021_08_17_093522_create_blog_categories_table', 42),
(126, '2021_08_17_093537_create_blogs_table', 42),
(127, '2021_08_18_101922_create_pages_table', 43),
(129, '2021_08_19_042434_create_event_categories_table', 45),
(130, '2021_08_19_042457_create_events_table', 45),
(131, '2021_08_19_130619_create_donations_table', 46),
(132, '2021_08_21_051439_create_contributions_table', 47),
(133, '2021_08_26_130940_create_social_icons_table', 48),
(134, '2021_08_28_061248_create_contribution_payment_logs_table', 49),
(135, '2021_08_28_061308_create_event_payment_logs_table', 49),
(136, '2021_08_28_120014_create_event_attendances_table', 50),
(137, '2021_08_28_122103_create_event_attendances_table', 51),
(138, '2021_09_02_044018_create_permission_tables', 52),
(139, '2021_09_02_060623_create_admin_roles_table', 53),
(140, '2021_09_26_094904_add_column_soft_deletes_to_blogs_table', 54),
(141, '2021_09_27_051529_create_blog_categories_table', 55),
(142, '2021_09_27_051607_create_blogs_table', 55),
(144, '2021_09_27_051709_create_meta_data_table', 55),
(146, '2021_09_27_064329_new_column_status_to_blogs_table', 56),
(147, '2021_10_04_060411_new_column_page_builder_status_to_page_table', 57),
(149, '2021_10_04_063133_create_page_builders_table', 58),
(150, '2021_10_04_122027_new_column_layout_to_pages_table', 59),
(151, '2021_10_07_054604_create_form_builders_table', 60),
(154, '2021_10_09_074153_add_new_column_to_media_uploads_table', 62),
(155, '2021_10_12_070221_new_column_permissions_to_users_table', 63),
(156, '2021_10_13_053529_create_tags_table', 64),
(157, '2021_10_13_054320_add_new_column_tags_to_blogs_table', 64),
(158, '2021_10_13_111623_create_blog_comments_table', 65),
(159, '2021_10_13_112008_add_new_column_image_to_users_table', 66),
(160, '2021_10_13_134025_add_new_column_social_to_users_table', 67),
(161, '2021_10_14_044046_add_new_column_parent_to_blog_comments_table', 68),
(170, '2021_10_21_095323_new_column_sidebar_to_pages_table', 76),
(171, '2021_10_24_063221_new_column_class_to_pages_table', 77),
(172, '2021_10_26_122003_add_column_breadcrumb_status_to_pages_table', 78),
(173, '2021_10_26_133647_add_column_footer_variant_to_pages_table', 79),
(174, '2021_10_30_041624_add_column_widget_style_to_pages_table', 80),
(175, '2021_10_30_044614_add_page_column_to_pages_table', 81),
(176, '2021_11_10_142735_add_column_image_blog_categories_table', 82),
(180, '2021_11_20_094154_add_column_description_to_users_table', 84),
(181, '2021_11_20_094906_add_column_description_to_admins_table', 85),
(183, '2014_10_12_000000_create_users_table', 86),
(184, '2021_11_28_090735_create_accountdeactives_table', 87),
(187, '2021_11_29_061320_create_categories_table', 88),
(190, '2021_11_30_073640_create_subcategories_table', 90),
(191, '2021_11_30_105303_create_services_table', 91),
(193, '2021_12_01_115855_create_serviceincludes_table', 92),
(196, '2021_12_01_131813_add_price_to_services', 93),
(197, '2021_12_02_072539_add_is_service_on_to_services_table', 94),
(198, '2021_12_01_120021_create_serviceadditionals_table', 95),
(199, '2021_12_01_120241_create_servicebenifits_table', 95),
(200, '2021_11_30_053538_create_locations_table', 96),
(201, '2021_12_05_050949_create_service_cities_table', 97),
(202, '2021_12_05_051309_create_service_areas_table', 97),
(203, '2021_12_07_043941_create_countries_table', 98),
(207, '2021_12_13_062919_create_schedules_table', 99),
(210, '2021_12_14_070939_create_days_table', 100),
(211, '2021_12_17_093220_create_orders_table', 101),
(212, '2021_12_17_171630_create_order_includes_table', 102),
(213, '2021_12_17_171651_create_order_additionals_table', 102),
(214, '2021_12_20_070438_create_reviews_table', 103),
(215, '2022_01_06_131123_create_brands_table', 104),
(216, '2022_01_17_041615_create_notifications_table', 105),
(217, '2022_01_17_101451_create_service_coupons_table', 106),
(218, '2022_01_23_041226_create_support_tickets_table', 107),
(220, '2022_01_23_105302_create_support_ticket_messages_table', 108),
(221, '2022_01_24_135321_create_payout_requests_table', 109),
(222, '2022_01_26_074206_create_to_do_lists_table', 110),
(224, '2022_02_07_123947_create_amount_settings_table', 112),
(225, '2022_03_17_051426_add_extra_fields_to_user_table', 113),
(226, '2022_03_17_051428_add_extra_fields_to_user_table', 114),
(227, '2022_03_22_075312_create_seller_verifies_table', 115),
(228, '2022_03_23_064136_add_manual_payment_image_to_orders_table', 115),
(229, '2022_03_27_042022_add_order_complete_request_to_orders_table', 115),
(230, '2022_03_27_100209_add_cancel_order_money_return_to_orders_table', 115),
(231, '2022_04_01_040848_change_data_type_of_orders_table', 116),
(232, '2022_04_01_040848_change_data_type_of_orders_table', 116),
(233, '2022_04_01_041340_change_data_type_of_seller_verifies_table', 116),
(234, '2022_04_01_041340_change_data_type_of_seller_verifies_table', 116),
(235, '2022_04_01_041521_change_data_type_of_serviceadditionals_table', 116),
(236, '2022_04_01_041521_change_data_type_of_serviceadditionals_table', 116),
(237, '2022_04_01_041655_change_data_type_of_servicebenifits_table', 116),
(238, '2022_04_01_041655_change_data_type_of_servicebenifits_table', 116),
(239, '2022_04_01_042025_change_data_type_of_serviceincludes_table', 116),
(240, '2022_04_01_042025_change_data_type_of_serviceincludes_table', 116),
(241, '2022_04_01_042222_change_data_type_of_services_table', 116),
(242, '2022_04_01_042222_change_data_type_of_services_table', 116),
(243, '2022_04_01_042426_change_data_type_of_service_coupons_table', 116),
(244, '2022_04_01_042426_change_data_type_of_service_coupons_table', 116),
(245, '2022_04_01_042542_change_data_type_of_support_tickets_table', 116),
(246, '2022_04_01_042542_change_data_type_of_support_tickets_table', 116),
(247, '2022_04_01_042813_change_data_type_of_to_do_lists_table', 116),
(248, '2022_04_01_042813_change_data_type_of_to_do_lists_table', 116),
(249, '2019_12_14_000001_create_personal_access_tokens_table', 117),
(250, '2022_04_20_052902_create_sliders_table', 118),
(252, '2022_04_21_040113_add_sold_count_to_services_table', 119),
(256, '2022_04_24_072211_create_online_service_faqs_table', 121),
(259, '2022_04_24_085125_add_online_service_price_to_services_table', 122),
(260, '2022_04_24_095152_add_delivery_days_to_services_table', 122),
(261, '2022_04_24_095231_add_revision_to_services_table', 122),
(262, '2022_04_25_040102_add_is_service_online_to_services_table', 123),
(263, '2022_04_27_034803_add_is_order_online_to_orders_table', 124),
(264, '2022_04_27_053223_add_image_gallery_to_services_table', 125),
(265, '2022_04_27_073345_add_video_to_services_table', 126),
(266, '2022_04_27_073345_add_country_code_column_to_users_table', 127),
(267, '2022_04_27_073345_add_mobile_icon_fields_to_categories_table', 127),
(268, '2022_06_09_124645_create_reports_table', 128),
(269, '2022_05_30_060241_create_live_chat_messages_table', 129),
(270, '2022_08_10_083550_add_user_type_to_service_coupons_table', 130),
(271, '2022_08_10_113702_create_taxes_table', 130),
(272, '2022_05_12_044924_create_subscriptions_table', 131),
(273, '2022_05_14_092755_create_seller_subscriptions_table', 131),
(274, '2022_07_02_051127_create_subscription_coupons_table', 131),
(275, '2022_09_04_070638_create_subscription_histories_table', 132),
(278, '2022_01_26_141520_create_admin_commissions_table', 133),
(279, '2022_08_10_083550_add_ system_type_to_ admin_commissions_table', 134),
(280, '2022_09_23_152012_create_extra_services_table', 134),
(281, '2022_10_01_092840_add_admin_id_and_guard_name_to_services_table', 134),
(284, '2022_10_11_061913_create_buyer_jobs_table', 135),
(285, '2022_10_15_054247_create_job_requests_table', 136),
(286, '2022_10_16_083603_create_job_request_conversations_table', 137),
(287, '2022_10_17_081334_add_order_from_job_and_job_post_id_to_orders_table', 138),
(288, '2022_10_20_084216_create_seller_view_jobs_table', 139),
(289, '2022_10_23_073450_add_is_service_all_cities_to_services_table', 140),
(290, '2022_10_23_103240_add_allow_multiple_schedule_to_schedules_table', 141),
(291, '2022_11_02_060742_create_wallets_table', 142),
(292, '2022_11_02_061244_create_wallet_histories_table', 142),
(293, '2022_11_10_075331_create_order_complete_declines_table', 143),
(294, '2022_11_16_104801_create_edit_service_histories_table', 144),
(296, '2022_11_17_045413_create_report_chat_messages_table', 145),
(298, '2022_11_20_062439_add_image_to_order_complete_declines_table', 146),
(299, '2022_12_04_110015_create_child_categories_table', 147),
(300, '2022_12_05_051245_add_child_category_id_to_services_table', 147),
(301, '2022_12_06_050213_add_child_category_id_to_buyer_jobs_table', 147),
(302, '2022_12_18_020211_create_custom_font_imports_table', 147),
(303, '2022_12_19_050630_add_path_to_custom_font_imports_table', 147);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Admin', 16),
(3, 'App\\Admin', 17),
(1, 'App\\Admin', 18),
(1, 'App\\Admin', 19),
(3, 'App\\Admin', 20),
(3, 'App\\Admin', 21),
(1, 'App\\Admin', 22),
(2, 'App\\Admin', 23),
(2, 'App\\Admin', 24);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_service_faqs`
--

CREATE TABLE `online_service_faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_service_faqs`
--

INSERT INTO `online_service_faqs` (`id`, `service_id`, `seller_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 41, 1, 'What is...', 'Desc....', NULL, '2022-04-28 03:06:56'),
(2, 41, 1, 'How much...', 'Desc....', NULL, '2022-04-28 03:06:56'),
(8, 41, 1, 'How to...', 'Desc....', NULL, '2022-04-28 03:06:56'),
(9, 41, 1, 'When I...', 'Desc....', NULL, '2022-04-28 03:06:56'),
(10, 49, 1, 'werwer w', 'wer werw', NULL, NULL),
(11, 49, 1, 'werwer', 'werwer', NULL, NULL),
(12, 56, 1, NULL, NULL, NULL, '2022-09-09 21:13:54'),
(13, 53, 1, 'Faq', 'Faq Details', NULL, '2022-04-28 03:02:09'),
(14, 50, 1, 'Faq', 'Faq Description', NULL, '2022-04-28 03:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` bigint(11) DEFAULT NULL,
  `area` bigint(11) DEFAULT NULL,
  `country` bigint(11) DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_fee` double NOT NULL,
  `extra_service` double NOT NULL,
  `sub_total` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_amount` double DEFAULT NULL,
  `commission_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission_charge` double DEFAULT NULL,
  `commission_amount` double DEFAULT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0=pending, 1=active, 2=completed, 3=delivered, 4=cancelled',
  `is_order_online` int(11) NOT NULL DEFAULT '0',
  `order_complete_request` int(11) NOT NULL DEFAULT '0',
  `cancel_order_money_return` int(11) NOT NULL DEFAULT '0',
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_from_job` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_post_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `manual_payment_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_additionals`
--

CREATE TABLE `order_additionals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_complete_declines`
--

CREATE TABLE `order_complete_declines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `buyer_id` bigint(20) NOT NULL,
  `seller_id` bigint(20) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `decline_reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_includes`
--

CREATE TABLE `order_includes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `quantity` double NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `page_content` longtext COLLATE utf8mb4_unicode_ci,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_builder_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_layout` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navbar_variant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'container',
  `back_to_top` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_variant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `widget_style` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `left_column` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `right_column` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `page_content`, `visibility`, `status`, `created_at`, `updated_at`, `page_builder_status`, `layout`, `sidebar_layout`, `navbar_variant`, `page_class`, `back_to_top`, `breadcrumb_status`, `footer_variant`, `widget_style`, `left_column`, `right_column`) VALUES
(16, 'Home Page One', 'home-page-one', '[object Object]', 'all', 'publish', '2021-10-04 07:23:34', '2022-04-21 05:32:24', 'on', 'normal_layout', NULL, '01', 'nav-absolute', NULL, NULL, '01', NULL, NULL, NULL),
(22, 'Home Page Two', 'home-page-two', '[object Object]', 'all', 'publish', '2021-10-22 22:35:47', '2022-02-13 08:15:33', 'on', 'normal_layout', NULL, '02', 'nav-absolute', 'style-02', NULL, '02', NULL, NULL, NULL),
(31, 'About', 'about', '[object Object]', 'all', 'publish', '2021-11-24 06:44:22', '2022-02-12 04:39:56', 'on', 'normal_layout', NULL, '02', NULL, NULL, 'on', '02', NULL, NULL, NULL),
(32, 'Service List', 'service-list', '[object Object]', 'all', 'publish', '2021-11-24 06:52:32', '2022-02-12 04:42:56', 'on', 'normal_layout', NULL, '02', NULL, NULL, 'on', '02', NULL, NULL, NULL),
(34, 'Contact', 'contact', '[object Object]', 'all', 'publish', '2021-11-24 06:54:28', '2022-02-12 04:28:37', 'on', 'normal_layout', NULL, '02', NULL, NULL, 'on', '02', NULL, NULL, NULL),
(35, 'Blog', 'blog', '[object Object]', 'all', 'publish', '2021-11-24 06:56:35', '2022-02-12 04:42:04', 'on', 'normal_layout', NULL, '02', NULL, NULL, 'on', '02', NULL, NULL, NULL),
(38, 'Home Page Three', 'home-page-three', '[object Object]', 'all', 'publish', '2022-01-11 23:30:17', '2022-02-13 08:04:12', 'on', 'normal_layout', NULL, '02', 'nav-absolute', 'style-03', NULL, '02', NULL, NULL, NULL),
(39, 'Home Page Four', 'home-page-four', '[object Object]', 'all', 'publish', '2022-01-12 22:21:43', '2022-02-13 08:05:10', 'on', 'normal_layout', NULL, '02', 'nav-absolute', 'style-03', NULL, '02', NULL, NULL, NULL),
(40, 'Faq', 'faq', '[object Object]', 'all', 'publish', '2022-01-13 06:53:28', '2022-02-12 04:40:25', 'on', 'normal_layout', NULL, '02', NULL, NULL, 'on', '02', NULL, NULL, NULL),
(41, 'Privacy Policy', 'privacy-policy', '<h1 style=\"outline: 0px; -webkit-font-smoothing: antialiased; line-height: 1.08333; font-size: 48px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">How can I get a privacy policy on my website? A GDPR compliant privacy policy</h1><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\"><br style=\"outline: 0px; -webkit-font-smoothing: antialiased;\"></p><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(22, 34, 42); font-family: Gotham, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\">The privacy policy can be written as an independent page on your website, and be made accessible as a link in the header or footer of your website, or on your ‘About’ page. It may also be hosted by a privacy policy-service with a link from your homepage. Basically, it doesn’t matter where you choose to place it, as long as your users have access to it. The privacy policy is a legal text. The phrasing depends on which jurisdictions your website falls under and how&nbsp; website handles data.</p><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(22, 34, 42); font-family: Gotham, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\"><br style=\"outline: 0px; -webkit-font-smoothing: antialiased;\"></p><h1 style=\"outline: 0px; -webkit-font-smoothing: antialiased; line-height: 1.08333; font-size: 16px; color: rgb(22, 34, 42); font-family: Gotham, sans-serif;\"><span style=\"outline: 0px; -webkit-font-smoothing: antialiased; font-weight: bolder;\">All websites are different. We always recommend that you consult a lawyer to ensure that your privacy policy is compliant with all applicable laws.&nbsp;</span></h1><h1 style=\"outline: 0px; -webkit-font-smoothing: antialiased; line-height: 1.08333; font-size: 16px; color: rgb(22, 34, 42); font-family: Gotham, sans-serif;\"><span style=\"outline: 0px; -webkit-font-smoothing: antialiased; font-weight: bolder;\"><br style=\"outline: 0px; -webkit-font-smoothing: antialiased;\"></span></h1><h1 style=\"outline: 0px; -webkit-font-smoothing: antialiased; line-height: 1.08333; font-size: 16px; color: rgb(22, 34, 42); font-family: Gotham, sans-serif;\"><span style=\"outline: 0px; -webkit-font-smoothing: antialiased; font-weight: bolder;\"><br style=\"outline: 0px; -webkit-font-smoothing: antialiased;\"></span>However, this might seem as a large expense if you are, for instance, a hobby blogger or small business. What you should&nbsp;<a href=\"https://medium.com/@StartupPolicy/five-reasons-why-copying-someone-else-s-terms-of-use-and-privacy-policy-is-a-bad-idea-fd8d126ac0b3\" style=\"background-color: rgb(255, 255, 255); -webkit-font-smoothing: antialiased; color: inherit;\">never do, is to copy a privacy policy from some other website</a>.</h1><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(22, 34, 42); font-family: Gotham, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\">That is also why using a privacy policy generator can be a hazardous thing, since you must be very careful to include all the specific information of your website, and not just have privacy policy generator spit out a default one that isn\'t aligned with your domain</p><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(22, 34, 42); font-family: Gotham, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\"><br style=\"outline: 0px; -webkit-font-smoothing: antialiased;\"></p><h5 style=\"outline: 0px; -webkit-font-smoothing: antialiased; line-height: 1.08333; font-size: 16px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">GDPR&nbsp;<span style=\"outline: 0px; -webkit-font-smoothing: antialiased; font-weight: bolder;\">privacy policy templates &amp; privacy policy generators</span></h5><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(22, 34, 42); font-family: Gotham, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\">There exists numerous tools for creating privacy policies, and privacy policy templates and privacy policy generators on the internet.</p><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(22, 34, 42); font-family: Gotham, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\">Some are free and others come at a price. Some are not GDPR compliant privacy policies.</p><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(22, 34, 42); font-family: Gotham, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\"><br style=\"outline: 0px; -webkit-font-smoothing: antialiased;\"></p><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(22, 34, 42); font-family: Gotham, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\">1) Maintain all the content properly</p><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(22, 34, 42); font-family: Gotham, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\">2) Ensure your all input is right</p><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(22, 34, 42); font-family: Gotham, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\">3) if you can do multiple task that will be plus</p><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(22, 34, 42); font-family: Gotham, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\"><br style=\"outline: 0px; -webkit-font-smoothing: antialiased;\"></p><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(22, 34, 42); font-family: Gotham, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\">There policy is the numerous tools for creating privacy policies, and privacy policy templates and privacy policy generators on the internet. Some are free and others come at a price. Some are not GDPR compliant privacy policies.</p><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(22, 34, 42); font-family: Gotham, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\"><br style=\"outline: 0px; -webkit-font-smoothing: antialiased;\"></p><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(22, 34, 42); font-family: Gotham, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\"><span style=\"outline: 0px; -webkit-font-smoothing: antialiased; font-weight: bolder;\">Note :&nbsp;</span>just have privacy policy generator spit out a default one that isn\'t aligned with your domain So it\'s very important loyal technical theury of our reservation.</p>', 'all', 'publish', '2022-01-13 07:37:38', '2022-02-13 01:39:08', NULL, 'normal_layout', NULL, '02', NULL, NULL, 'on', '02', NULL, NULL, NULL),
(42, 'Terms and Conditions', 'terms-and-conditions', '<h1 style=\"outline: 0px; -webkit-font-smoothing: antialiased; line-height: 1.08333; font-size: 48px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">Generate Terms &amp; Conditions for websites</h1><h2 style=\"outline: 0px; -webkit-font-smoothing: antialiased; line-height: 1.08333; font-size: 48px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><div style=\"outline: 0px; -webkit-font-smoothing: antialiased; font-size: 16px;\"><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: var(--paragraph-color); font-family: var(--body-font); hyphens: auto; line-height: 1.6;\"><br style=\"outline: 0px; -webkit-font-smoothing: antialiased;\"></p><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(74, 80, 115); font-family: &quot;Nunito Sans&quot;, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\"><span style=\"outline: 0px; -webkit-font-smoothing: antialiased; font-weight: bolder;\">1)&nbsp;</span>Creating a Terms &amp; Conditions for your application or website can take a lot of time. You could either spend tons of money on hiring a lawyer, or you could simply use our service and get a unique Terms &amp; Conditions fully customized to your website. You can also generate your Terms &amp; Conditions for website templates like:</p></div><div style=\"outline: 0px; -webkit-font-smoothing: antialiased; font-size: 16px;\"><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: var(--paragraph-color); font-family: &quot;Nunito Sans&quot;, sans-serif; hyphens: auto; line-height: 1.6; font-size: 1rem;\">For any app you are developing you will need a Terms &amp; Conditions to launch it. Termify can help you generate the best for the case and get your app ready for review.</p></div></h2><h4 style=\"outline: 0px; -webkit-font-smoothing: antialiased; line-height: 1.2381; font-size: 20px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><br style=\"outline: 0px; -webkit-font-smoothing: antialiased;\"></h4><h6 style=\"outline: 0px; -webkit-font-smoothing: antialiased; line-height: 1.08333; font-size: 14px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><span style=\"outline: 0px; -webkit-font-smoothing: antialiased; font-weight: bolder;\">Many platforms like facebook are requiring users that are submitting their official apps to submit a Terms &amp; Conditions even if you are not collecting any data from your users. Generate your Terms &amp; Conditions and get your unique link to submit to those platforms.</span></h6><h2 style=\"outline: 0px; -webkit-font-smoothing: antialiased; line-height: 1.08333; font-size: 48px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\"><br style=\"outline: 0px; -webkit-font-smoothing: antialiased;\"></p><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(74, 80, 115); font-family: &quot;Nunito Sans&quot;, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\"><span style=\"outline: 0px; -webkit-font-smoothing: antialiased; font-weight: bolder;\">2)</span>&nbsp;Creating a Terms &amp; Conditions for your application or website can take a lot of time. You could either spend tons of money on hiring a lawyer, or you could simply use our service and get a unique Terms &amp; Conditions fully customized to your website. You can also generate your Terms &amp; Conditions for website templates like:</p><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\"><br style=\"outline: 0px; -webkit-font-smoothing: antialiased;\"></p><p style=\"outline: 0px; -webkit-font-smoothing: antialiased; color: rgb(74, 80, 115); font-family: &quot;Nunito Sans&quot;, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px;\"><span style=\"outline: 0px; -webkit-font-smoothing: antialiased; font-weight: bolder;\">Note:</span>&nbsp;For any app you are developing you will need a Terms &amp; Conditions to launch it. Termify can help you generate the best for the case and get your app ready for review. Many platforms like facebook are requiring users that are submitting their official apps to submit a Terms &amp; Conditions even if you are not collecting any data from your users. Generate your Terms &amp; Conditions and get your unique link to submit to those platforms.</p></h2>', 'all', 'publish', '2022-01-14 22:15:25', '2022-02-13 01:40:10', NULL, 'normal_layout', NULL, '02', NULL, NULL, 'on', '02', NULL, NULL, NULL),
(43, 'All Services', 'all-services', NULL, 'all', 'publish', '2022-04-21 05:28:48', '2022-05-12 15:37:07', NULL, 'normal_layout', NULL, '02', NULL, NULL, 'on', '01', NULL, NULL, NULL),
(44, 'Subscription Plan', 'price-plan', '<p>Price Plan<br></p>', 'all', 'publish', '2022-09-03 04:04:25', '2022-11-22 07:21:24', 'on', 'normal_layout', NULL, '02', NULL, NULL, 'on', '02', NULL, NULL, NULL),
(45, 'Jobs', 'jobs', '<p>Jobs</p>', 'all', 'publish', '2022-10-11 22:38:42', '2022-10-11 23:10:39', 'on', 'normal_layout', NULL, '02', NULL, NULL, 'on', '02', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_builders`
--

CREATE TABLE `page_builders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addon_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_namespace` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_order` bigint(20) UNSIGNED DEFAULT NULL,
  `addon_page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addon_page_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_settings` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_builders`
--

INSERT INTO `page_builders` (`id`, `addon_name`, `addon_type`, `addon_namespace`, `addon_location`, `addon_order`, `addon_page_id`, `addon_page_type`, `addon_settings`, `created_at`, `updated_at`) VALUES
(8, 'AboutAuthorStyleOne', 'new', 'App\\PageBuilder\\Addons\\Common\\AboutAuthorStyleOne', 'dynamic_page_with_sidebar', NULL, 15, 'dynamic_page_with_sidebar', 'a:17:{s:10:\"addon_name\";s:19:\"AboutAuthorStyleOne\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xDb21tb25cQWJvdXRBdXRob3JTdHlsZU9uZQ==\";s:10:\"addon_type\";s:3:\"new\";s:14:\"addon_location\";s:25:\"dynamic_page_with_sidebar\";s:11:\"addon_order\";N;s:13:\"addon_page_id\";s:2:\"15\";s:15:\"addon_page_type\";s:25:\"dynamic_page_with_sidebar\";s:13:\"header_eleven\";a:14:{s:14:\"subtitle_en_GB\";a:1:{i:0;s:12:\"about author\";}s:11:\"title_en_GB\";a:1:{i:0;N;}s:17:\"description_en_GB\";a:1:{i:0;N;}s:17:\"button_text_en_GB\";a:1:{i:0;N;}s:16:\"button_url_en_GB\";a:1:{i:0;N;}s:17:\"button_icon_en_GB\";a:1:{i:0;N;}s:17:\"right_image_en_GB\";a:1:{i:0;N;}s:11:\"subtitle_ar\";a:1:{i:0;N;}s:8:\"title_ar\";a:1:{i:0;N;}s:14:\"description_ar\";a:1:{i:0;N;}s:14:\"button_text_ar\";a:1:{i:0;N;}s:13:\"button_url_ar\";a:1:{i:0;N;}s:14:\"button_icon_ar\";a:1:{i:0;N;}s:14:\"right_image_ar\";a:1:{i:0;N;}}s:10:\"button_url\";N;s:12:\"author_image\";N;s:11:\"author_name\";N;s:19:\"author_name_summber\";N;s:17:\"summer_note_image\";N;s:18:\"author_name_slider\";s:2:\"50\";s:17:\"author_name_color\";N;s:11:\"padding_top\";s:3:\"200\";s:14:\"padding_bottom\";s:3:\"300\";}', '2021-10-04 07:18:03', '2021-10-04 07:18:03'),
(37, 'ContactArea', 'update', 'App\\PageBuilder\\Addons\\ContactArea\\ContactArea', 'dynamic_page', 1, 19, 'dynamic_page', 'a:14:{s:2:\"id\";s:2:\"37\";s:10:\"addon_name\";s:11:\"ContactArea\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xDb250YWN0QXJlYVxDb250YWN0QXJlYQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"19\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:11:\"title_en_GB\";s:28:\"Have Any Query? Send Message\";s:8:\"title_ar\";s:55:\"هل لديك أي استفسار؟ أرسل رسالة\";s:28:\"contact_page_contact_info_01\";a:4:{s:11:\"title_en_GB\";a:3:{i:0;s:8:\"Address:\";i:1;s:6:\"Phone:\";i:2;s:6:\"Email:\";}s:17:\"description_en_GB\";a:3:{i:0;s:44:\"2779 Rubaiyat Road,\r\nTraverse City, MI 49684\";i:1;s:30:\"+012 789654321\r\n+969 123456789\";i:2;s:34:\"company@mail.com\r\ncontact@mail.com\";}s:8:\"title_ar\";a:3:{i:0;s:11:\"عنوان:\";i:1;s:9:\"هاتف:\";i:2;s:30:\"بريد الالكتروني:\";}s:14:\"description_ar\";a:3:{i:0;s:44:\"2779 Rubaiyat Road,\r\nTraverse City, MI 49684\";i:1;s:30:\"+012 789654321\r\n+969 123456789\";i:2;s:34:\"company@mail.com\r\ncontact@mail.com\";}}s:14:\"custom_form_id\";s:1:\"1\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";}', '2021-10-06 23:52:42', '2021-11-21 11:02:16'),
(38, 'GoogleMap', 'update', 'App\\PageBuilder\\Addons\\Common\\GoogleMap', 'dynamic_page', 2, 19, 'dynamic_page', 'a:10:{s:2:\"id\";s:2:\"38\";s:10:\"addon_name\";s:9:\"GoogleMap\";s:15:\"addon_namespace\";s:52:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xDb21tb25cR29vZ2xlTWFw\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";s:2:\"19\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:8:\"location\";s:22:\"Avenue Afton, MN 55001\";s:10:\"map_height\";s:3:\"500\";}', '2021-10-07 01:44:43', '2021-11-21 10:49:23'),
(39, 'ImageGalleryMasonry', 'update', 'App\\PageBuilder\\Addons\\ImageGallery\\ImageGalleryMasonry', 'dynamic_page', 1, 20, 'dynamic_page', 'a:16:{s:2:\"id\";s:2:\"39\";s:10:\"addon_name\";s:19:\"ImageGalleryMasonry\";s:15:\"addon_namespace\";s:76:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xJbWFnZUdhbGxlcnlcSW1hZ2VHYWxsZXJ5TWFzb25yeQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"20\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:10:\"categories\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"9\";s:17:\"pagination_status\";s:2:\"on\";s:20:\"pagination_alignment\";s:11:\"text-center\";s:11:\"padding_top\";s:3:\"110\";s:14:\"padding_bottom\";s:3:\"110\";}', '2021-10-09 00:19:18', '2021-10-09 05:31:18'),
(46, 'BlogGridTravel', 'update', 'App\\PageBuilder\\Addons\\Blog\\BlogGridTravel', 'dynamic_page', 1, 18, 'dynamic_page', 'a:22:{s:2:\"id\";s:2:\"46\";s:10:\"addon_name\";s:14:\"BlogGridTravel\";s:15:\"addon_namespace\";s:56:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXEJsb2dHcmlkVHJhdmVs\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"18\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:16:\"share_text_en_GB\";s:5:\"Share\";s:13:\"share_text_ar\";s:10:\"يشارك\";s:10:\"categories\";s:1:\"2\";s:15:\"play_icon_color\";s:18:\"rgb(234, 244, 248)\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"4\";s:7:\"columns\";s:8:\"col-lg-6\";s:9:\"name_icon\";s:11:\"las la-user\";s:9:\"date_icon\";s:12:\"las la-clock\";s:10:\"share_icon\";s:19:\"las la-share-square\";s:20:\"pagination_alignment\";s:11:\"text-center\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:3:\"100\";}', '2021-10-18 03:58:08', '2021-11-17 19:42:06'),
(59, 'HeaderStyleOne', 'update', 'App\\PageBuilder\\Addons\\Header\\HeaderStyleOne', 'dynamic_page', 1, 23, 'dynamic_page', 'a:18:{s:2:\"id\";s:2:\"59\";s:10:\"addon_name\";s:20:\"HeaderStyleOne\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIZWFkZXJcSGVhZGVyQXJlYVN0eWxlVGhyZWU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"23\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:11:\"title_en_GB\";s:5:\"Juice\";s:17:\"description_en_GB\";s:63:\"It is a long established fact that a reader will be distracted.\";s:17:\"button_text_en_GB\";s:9:\"Read More\";s:8:\"title_ar\";s:8:\"عصير\";s:14:\"description_ar\";s:110:\"هناك حقيقة مثبتة منذ زمن طويل وهي أن القارئ سوف يشتت انتباهه.\";s:14:\"button_text_ar\";s:17:\"اقرأ أكثر\";s:10:\"button_url\";s:1:\"#\";s:16:\"background_image\";s:3:\"236\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:1:\"0\";}', '2021-10-23 04:54:22', '2021-11-06 07:10:58'),
(60, 'CategoryHighlight', 'update', 'App\\PageBuilder\\Addons\\Home\\CategoryHighlight', 'dynamic_page', 2, 23, 'dynamic_page', 'a:14:{s:2:\"id\";s:2:\"60\";s:10:\"addon_name\";s:17:\"CategoryHighlight\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXENhdGVnb3J5SGlnaGxpZ2h0\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";s:2:\"23\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:15:\"blog_categories\";a:4:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"4\";i:3;s:1:\"6\";}s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"4\";s:11:\"padding_top\";s:1:\"2\";s:14:\"padding_bottom\";s:1:\"2\";}', '2021-10-23 05:30:37', '2021-11-10 23:47:05'),
(61, 'BlogSliderStyleTwo', 'update', 'App\\PageBuilder\\Addons\\Blog\\BlogSliderStyleTwo', 'dynamic_page', 3, 23, 'dynamic_page', 'a:18:{s:2:\"id\";s:2:\"61\";s:10:\"addon_name\";s:18:\"BlogSliderStyleTwo\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXEJsb2dTbGlkZXJTdHlsZVR3bw==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"3\";s:13:\"addon_page_id\";s:2:\"23\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:19:\"section_title_en_GB\";s:19:\"Highlighted Article\";s:16:\"categories_en_GB\";a:1:{i:0;s:1:\"3\";}s:16:\"section_title_ar\";s:21:\"مقالة مميزة\";s:23:\"section_title_alignment\";s:12:\"center-align\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"3\";s:12:\"slider_items\";s:1:\"3\";s:11:\"padding_top\";s:2:\"80\";s:14:\"padding_bottom\";s:1:\"2\";}', '2021-10-23 05:46:25', '2021-10-31 05:30:41'),
(62, 'BannerOne', 'update', 'App\\PageBuilder\\Addons\\Common\\BannerOne', 'dynamic_page', 4, 23, 'dynamic_page', 'a:12:{s:2:\"id\";s:2:\"62\";s:10:\"addon_name\";s:9:\"BannerOne\";s:15:\"addon_namespace\";s:52:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xDb21tb25cQmFubmVyT25l\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"4\";s:13:\"addon_page_id\";s:2:\"23\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"image\";s:2:\"94\";s:9:\"image_url\";s:1:\"#\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";}', '2021-10-23 05:48:44', '2021-11-15 01:08:38'),
(64, 'BlogGridFood', 'update', 'App\\PageBuilder\\Addons\\Home\\BlogGridFood', 'dynamic_page', 5, 23, 'dynamic_page', 'a:19:{s:2:\"id\";s:2:\"64\";s:10:\"addon_name\";s:12:\"BlogGridFood\";s:15:\"addon_namespace\";s:56:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXEJsb2dHcmlkRm9vZA==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"5\";s:13:\"addon_page_id\";s:2:\"23\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:18:\"heading_text_en_GB\";s:14:\"Recent Article\";s:15:\"heading_text_ar\";s:27:\"المادة الأخيرة\";s:10:\"categories\";s:1:\"3\";s:15:\"play_icon_color\";N;s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"4\";s:7:\"columns\";s:8:\"col-lg-6\";s:20:\"pagination_alignment\";s:11:\"text-center\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:1:\"0\";}', '2021-10-23 05:56:07', '2021-11-15 01:09:56'),
(66, 'VideoAreaStyleThree', 'update', 'App\\PageBuilder\\Addons\\Home\\VideoAreaStyleThree', 'dynamic_page', 6, 23, 'dynamic_page', 'a:15:{s:2:\"id\";s:2:\"66\";s:10:\"addon_name\";s:19:\"VideoAreaStyleThree\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXFZpZGVvQXJlYVN0eWxlVGhyZWU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"6\";s:13:\"addon_page_id\";s:2:\"23\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:18:\"heading_text_en_GB\";s:6:\"Videos\";s:15:\"heading_text_ar\";s:21:\"أشرطة فيديو\";s:5:\"blogs\";a:2:{i:0;s:3:\"118\";i:1;s:3:\"119\";}s:15:\"play_icon_color\";s:15:\"rgb(36, 36, 36)\";s:5:\"items\";s:1:\"2\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:1:\"0\";}', '2021-10-23 06:51:53', '2021-11-17 17:37:08'),
(67, 'GoogleAdsense', 'update', 'App\\PageBuilder\\Addons\\Common\\Advertise', 'dynamic_page', 7, 23, 'dynamic_page', 'a:12:{s:2:\"id\";s:2:\"67\";s:10:\"addon_name\";s:13:\"GoogleAdsense\";s:15:\"addon_namespace\";s:52:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xDb21tb25cQWR2ZXJ0aXNl\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"7\";s:13:\"addon_page_id\";s:2:\"23\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:18:\"advertisement_type\";s:5:\"image\";s:18:\"advertisement_size\";s:8:\"250*1110\";s:11:\"padding_top\";s:2:\"60\";s:14:\"padding_bottom\";s:3:\"100\";}', '2021-10-23 07:00:46', '2021-11-15 01:11:00'),
(68, 'BestArticle', 'update', 'App\\PageBuilder\\Addons\\Home\\BestArticle', 'dynamic_page', 8, 23, 'dynamic_page', 'a:15:{s:2:\"id\";s:2:\"68\";s:10:\"addon_name\";s:11:\"BestArticle\";s:15:\"addon_namespace\";s:52:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXEJlc3RBcnRpY2xl\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"8\";s:13:\"addon_page_id\";s:2:\"23\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:18:\"heading_text_en_GB\";s:12:\"Best Article\";s:15:\"heading_text_ar\";N;s:10:\"categories\";a:1:{i:0;s:1:\"3\";}s:15:\"play_icon_color\";s:18:\"rgb(251, 250, 250)\";s:5:\"items\";s:1:\"5\";s:11:\"padding_top\";s:1:\"3\";s:14:\"padding_bottom\";s:3:\"100\";}', '2021-10-23 07:01:58', '2021-11-13 04:36:56'),
(70, 'CustomHeaderSliderTwoWithCategory', 'update', 'App\\PageBuilder\\Addons\\HeaderSlider\\CustomHeaderSliderTwoWithCategory', 'dynamic_page', 1, 24, 'dynamic_page', 'a:11:{s:2:\"id\";s:2:\"70\";s:10:\"addon_name\";s:33:\"CustomHeaderSliderTwoWithCategory\";s:15:\"addon_namespace\";s:92:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIZWFkZXJTbGlkZXJcQ3VzdG9tSGVhZGVyU2xpZGVyVHdvV2l0aENhdGVnb3J5\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"24\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:10:\"header_ten\";a:12:{s:20:\"category_title_en_GB\";a:3:{i:0;s:6:\"Flower\";i:1;s:5:\"Music\";i:2;s:6:\"Nature\";}s:18:\"category_url_en_GB\";a:3:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";}s:11:\"title_en_GB\";a:3:{i:0;s:62:\"Working in front of nature one receives far more than he seeks\";i:1;s:46:\"So love is the flower you’ve got to let grow\";i:2;s:63:\"In every walk in with nature one receives far more than he seek\";}s:15:\"title_url_en_GB\";a:3:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";}s:19:\"category_icon_en_GB\";a:3:{i:0;s:10:\"las la-tag\";i:1;s:10:\"las la-tag\";i:2;s:10:\"las la-tag\";}s:22:\"background_image_en_GB\";a:3:{i:0;s:3:\"188\";i:1;s:3:\"196\";i:2;s:3:\"190\";}s:17:\"category_title_ar\";a:3:{i:0;s:6:\"ورد\";i:1;s:12:\"موسيقى\";i:2;s:19:\"طبيعة سجية\";}s:15:\"category_url_ar\";a:3:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";}s:8:\"title_ar\";a:3:{i:0;s:72:\"الحب هو الزهرة التي عليك أن تتركها تنمو.\";i:1;s:72:\"الحب هو الزهرة التي عليك أن تتركها تنمو.\";i:2;s:72:\"الحب هو الزهرة التي عليك أن تتركها تنمو.\";}s:12:\"title_url_ar\";a:3:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";}s:16:\"category_icon_ar\";a:3:{i:0;N;i:1;N;i:2;N;}s:19:\"background_image_ar\";a:3:{i:0;s:3:\"191\";i:1;s:3:\"192\";i:2;s:3:\"195\";}}s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:1:\"0\";}', '2021-10-23 07:34:20', '2021-11-17 17:57:22'),
(73, 'BlogListStyleFour', 'update', 'App\\PageBuilder\\Addons\\Home\\BlogListStyleFour', 'dynamic_page_with_sidebar', 1, 24, 'dynamic_page_with_sidebar', 'a:20:{s:2:\"id\";s:2:\"73\";s:10:\"addon_name\";s:17:\"BlogListStyleFour\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXEJsb2dMaXN0U3R5bGVGb3Vy\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:25:\"dynamic_page_with_sidebar\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"24\";s:15:\"addon_page_type\";s:25:\"dynamic_page_with_sidebar\";s:25:\"comment_button_text_en_GB\";s:7:\"Comment\";s:16:\"share_text_en_GB\";s:5:\"Share\";s:22:\"comment_button_text_ar\";s:10:\"تعليق\";s:13:\"share_text_ar\";s:10:\"يشارك\";s:10:\"categories\";s:1:\"7\";s:15:\"play_icon_color\";N;s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:4:\"desc\";s:5:\"items\";s:1:\"1\";s:7:\"columns\";s:9:\"col-lg-12\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:2:\"50\";}', '2021-10-24 00:14:09', '2021-11-20 10:05:04'),
(74, 'BlogGridOne', 'update', 'App\\PageBuilder\\Addons\\Blog\\BlogGridOne', 'dynamic_page_with_sidebar', 10, 24, 'dynamic_page_with_sidebar', 'a:20:{s:2:\"id\";s:2:\"74\";s:10:\"addon_name\";s:11:\"BlogGridOne\";s:15:\"addon_namespace\";s:52:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXEJsb2dHcmlkT25l\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:25:\"dynamic_page_with_sidebar\";s:11:\"addon_order\";s:2:\"10\";s:13:\"addon_page_id\";s:2:\"24\";s:15:\"addon_page_type\";s:25:\"dynamic_page_with_sidebar\";s:19:\"comments_text_en_GB\";s:8:\"Comments\";s:16:\"comments_text_ar\";s:14:\"تعليقات\";s:10:\"categories\";a:1:{i:0;s:1:\"7\";}s:15:\"play_icon_color\";s:15:\"rgb(43, 34, 34)\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:4:\"desc\";s:5:\"items\";s:1:\"4\";s:7:\"columns\";s:8:\"col-lg-6\";s:13:\"category_icon\";s:10:\"las la-tag\";s:20:\"pagination_alignment\";s:9:\"text-left\";s:11:\"padding_top\";s:1:\"3\";s:14:\"padding_bottom\";s:1:\"3\";}', '2021-10-24 01:00:29', '2021-11-17 19:59:59'),
(75, 'BannerOne', 'update', 'App\\PageBuilder\\Addons\\Common\\BannerOne', 'dynamic_page_with_sidebar', 11, 24, 'dynamic_page_with_sidebar', 'a:12:{s:2:\"id\";s:2:\"75\";s:10:\"addon_name\";s:9:\"BannerOne\";s:15:\"addon_namespace\";s:52:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXEJhbm5lck9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:25:\"dynamic_page_with_sidebar\";s:11:\"addon_order\";s:1:\"4\";s:13:\"addon_page_id\";s:2:\"24\";s:15:\"addon_page_type\";s:25:\"dynamic_page_with_sidebar\";s:5:\"image\";s:2:\"96\";s:9:\"image_url\";s:1:\"#\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:1:\"0\";}', '2021-10-24 01:15:49', '2021-11-17 17:47:53'),
(76, 'BlogListStyleFour', 'update', 'App\\PageBuilder\\Addons\\Home\\BlogListStyleFour', 'dynamic_page_with_sidebar', 12, 24, 'dynamic_page_with_sidebar', 'a:20:{s:2:\"id\";s:2:\"76\";s:10:\"addon_name\";s:17:\"BlogListStyleFour\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXEJsb2dMaXN0U3R5bGVGb3Vy\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:25:\"dynamic_page_with_sidebar\";s:11:\"addon_order\";s:2:\"12\";s:13:\"addon_page_id\";s:2:\"24\";s:15:\"addon_page_type\";s:25:\"dynamic_page_with_sidebar\";s:25:\"comment_button_text_en_GB\";s:8:\"Comments\";s:16:\"share_text_en_GB\";s:5:\"Share\";s:22:\"comment_button_text_ar\";s:14:\"تعليقات\";s:13:\"share_text_ar\";s:10:\"يشارك\";s:10:\"categories\";s:1:\"7\";s:15:\"play_icon_color\";s:18:\"rgb(243, 243, 243)\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:4:\"desc\";s:5:\"items\";s:1:\"1\";s:7:\"columns\";s:9:\"col-lg-12\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";}', '2021-10-24 01:16:54', '2021-11-20 10:14:27'),
(77, 'BlogGridOne', 'update', 'App\\PageBuilder\\Addons\\Blog\\BlogGridOne', 'dynamic_page_with_sidebar', 13, 24, 'dynamic_page_with_sidebar', 'a:20:{s:2:\"id\";s:2:\"77\";s:10:\"addon_name\";s:11:\"BlogGridOne\";s:15:\"addon_namespace\";s:52:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXEJsb2dHcmlkT25l\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:25:\"dynamic_page_with_sidebar\";s:11:\"addon_order\";s:2:\"13\";s:13:\"addon_page_id\";s:2:\"24\";s:15:\"addon_page_type\";s:25:\"dynamic_page_with_sidebar\";s:19:\"comments_text_en_GB\";s:8:\"Comments\";s:16:\"comments_text_ar\";s:14:\"تعليقات\";s:10:\"categories\";a:1:{i:0;s:1:\"7\";}s:15:\"play_icon_color\";s:15:\"rgb(75, 69, 69)\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:4:\"desc\";s:5:\"items\";s:1:\"4\";s:7:\"columns\";s:8:\"col-lg-6\";s:13:\"category_icon\";s:10:\"las la-tag\";s:20:\"pagination_alignment\";s:9:\"text-left\";s:11:\"padding_top\";s:2:\"11\";s:14:\"padding_bottom\";s:2:\"10\";}', '2021-10-24 01:19:39', '2021-11-17 20:00:12'),
(82, 'HeaderAreaStyleFive', 'update', 'App\\PageBuilder\\Addons\\Header\\HeaderAreaStyleFive', 'dynamic_page', 1, 25, 'dynamic_page', 'a:31:{s:2:\"id\";s:2:\"82\";s:10:\"addon_name\";s:19:\"HeaderAreaStyleFive\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIZWFkZXJcSGVhZGVyQXJlYVN0eWxlRml2ZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"25\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:16:\"left_title_en_GB\";s:46:\"Life is a challenge, meet it! Life is a dream.\";s:19:\"left_category_en_GB\";s:4:\"Game\";s:21:\"right_title_one_en_GB\";s:68:\"Men are but flesh and blood. They know their doom, but not the hour.\";s:24:\"right_category_one_en_GB\";s:4:\"Game\";s:21:\"right_title_two_en_GB\";s:65:\"What is a drop of rain, compared to the storm? What is a thought.\";s:24:\"right_category_two_en_GB\";s:4:\"Game\";s:13:\"left_title_ar\";s:69:\"الحياة هي التحدي، مواجهته! الحياة حلم.\";s:16:\"left_category_ar\";s:8:\"لعبة\";s:18:\"right_title_one_ar\";s:110:\"الرجال ما هم إلا لحم ودم. إنهم يعرفون مصيرهم ، لكن ليس الساعة.\";s:21:\"right_category_one_ar\";s:8:\"لعبة\";s:18:\"right_title_two_ar\";s:110:\"الرجال ما هم إلا لحم ودم. إنهم يعرفون مصيرهم ، لكن ليس الساعة.\";s:21:\"right_category_two_ar\";s:8:\"لعبة\";s:14:\"left_title_url\";s:1:\"#\";s:17:\"left_category_url\";s:1:\"#\";s:19:\"right_title_url_one\";s:1:\"#\";s:22:\"right_category_url_one\";s:1:\"#\";s:19:\"right_title_url_two\";s:1:\"#\";s:22:\"right_category_url_two\";s:1:\"#\";s:10:\"left_image\";s:3:\"229\";s:15:\"right_image_one\";s:3:\"231\";s:15:\"right_image_two\";s:3:\"232\";s:11:\"padding_top\";s:2:\"30\";s:14:\"padding_bottom\";s:1:\"0\";}', '2021-10-24 03:29:43', '2021-11-20 09:51:19'),
(83, 'BlogListBig', 'update', 'App\\PageBuilder\\Addons\\Home\\BlogListBig', 'dynamic_page', 2, 25, 'dynamic_page', 'a:18:{s:2:\"id\";s:2:\"83\";s:10:\"addon_name\";s:11:\"BlogListBig\";s:15:\"addon_namespace\";s:52:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXEJsb2dMaXN0Qmln\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";s:2:\"25\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:10:\"categories\";s:3:\"115\";s:12:\"button_style\";s:21:\"style_one_violate_tag\";s:15:\"play_icon_color\";N;s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"1\";s:7:\"columns\";s:9:\"col-lg-12\";s:20:\"pagination_alignment\";s:9:\"text-left\";s:11:\"padding_top\";s:1:\"1\";s:14:\"padding_bottom\";s:1:\"1\";}', '2021-10-24 04:23:31', '2021-11-22 11:02:13'),
(85, 'BlogListFive', 'update', 'App\\PageBuilder\\Addons\\Home\\BlogListFive', 'dynamic_page_with_sidebar', 1, 25, 'dynamic_page_with_sidebar', 'a:17:{s:2:\"id\";s:2:\"85\";s:10:\"addon_name\";s:12:\"BlogListFive\";s:15:\"addon_namespace\";s:56:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXEJsb2dMaXN0Rml2ZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:25:\"dynamic_page_with_sidebar\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"25\";s:15:\"addon_page_type\";s:25:\"dynamic_page_with_sidebar\";s:10:\"categories\";a:1:{i:0;s:2:\"12\";}s:12:\"button_style\";s:21:\"style_one_violate_tag\";s:15:\"play_icon_color\";N;s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"3\";s:20:\"pagination_alignment\";s:9:\"text-left\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:1:\"0\";}', '2021-10-24 04:52:03', '2021-11-22 10:48:19'),
(86, 'BannerOne', 'update', 'App\\PageBuilder\\Addons\\Common\\BannerOne', 'dynamic_page_with_sidebar', 2, 25, 'dynamic_page_with_sidebar', 'a:12:{s:2:\"id\";s:2:\"86\";s:10:\"addon_name\";s:9:\"BannerOne\";s:15:\"addon_namespace\";s:52:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXEJhbm5lck9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:25:\"dynamic_page_with_sidebar\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";s:2:\"25\";s:15:\"addon_page_type\";s:25:\"dynamic_page_with_sidebar\";s:5:\"image\";s:2:\"94\";s:9:\"image_url\";s:1:\"#\";s:11:\"padding_top\";s:1:\"2\";s:14:\"padding_bottom\";s:1:\"2\";}', '2021-10-24 04:59:56', '2021-10-31 05:32:37'),
(87, 'BlogListFive', 'update', 'App\\PageBuilder\\Addons\\Home\\BlogListFive', 'dynamic_page_with_sidebar', 3, 25, 'dynamic_page_with_sidebar', 'a:17:{s:2:\"id\";s:2:\"87\";s:10:\"addon_name\";s:12:\"BlogListFive\";s:15:\"addon_namespace\";s:56:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXEJsb2dMaXN0Rml2ZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:25:\"dynamic_page_with_sidebar\";s:11:\"addon_order\";s:1:\"3\";s:13:\"addon_page_id\";s:2:\"25\";s:15:\"addon_page_type\";s:25:\"dynamic_page_with_sidebar\";s:10:\"categories\";a:1:{i:0;s:2:\"12\";}s:12:\"button_style\";s:21:\"style_one_violate_tag\";s:15:\"play_icon_color\";N;s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"1\";s:20:\"pagination_alignment\";s:9:\"text-left\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:2:\"76\";}', '2021-10-24 05:00:15', '2021-11-22 10:48:29'),
(88, 'BlogGridOne', 'update', 'App\\PageBuilder\\Addons\\Blog\\BlogGridOne', 'dynamic_page', 1, 26, 'dynamic_page', 'a:22:{s:2:\"id\";s:2:\"88\";s:10:\"addon_name\";s:11:\"BlogGridOne\";s:15:\"addon_namespace\";s:52:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXEJsb2dHcmlkT25l\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"26\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:19:\"comments_text_en_GB\";s:8:\"Comments\";s:16:\"comments_text_ar\";s:14:\"تعليقات\";s:10:\"categories\";a:1:{i:0;s:1:\"7\";}s:15:\"play_icon_color\";s:15:\"rgb(70, 65, 65)\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"6\";s:7:\"columns\";s:8:\"col-lg-4\";s:13:\"category_icon\";s:10:\"las la-tag\";s:13:\"comments_icon\";s:14:\"las la-comment\";s:17:\"pagination_status\";s:2:\"on\";s:20:\"pagination_alignment\";s:11:\"text-center\";s:11:\"padding_top\";s:3:\"110\";s:14:\"padding_bottom\";s:3:\"110\";}', '2021-10-24 06:31:14', '2021-11-09 01:54:59'),
(89, 'BlogListFood', 'update', 'App\\PageBuilder\\Addons\\Blog\\BlogListFood', 'dynamic_page', 1, 27, 'dynamic_page', 'a:18:{s:2:\"id\";s:2:\"89\";s:10:\"addon_name\";s:12:\"BlogListFood\";s:15:\"addon_namespace\";s:56:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXEJsb2dMaXN0Rm9vZA==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"27\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:10:\"categories\";s:1:\"3\";s:15:\"play_icon_color\";s:15:\"rgb(28, 27, 27)\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:4:\"desc\";s:5:\"items\";s:1:\"4\";s:7:\"columns\";s:9:\"col-lg-12\";s:17:\"pagination_status\";s:2:\"on\";s:20:\"pagination_alignment\";s:11:\"text-center\";s:11:\"padding_top\";s:3:\"120\";s:14:\"padding_bottom\";s:3:\"164\";}', '2021-10-24 07:01:11', '2021-11-13 08:19:40'),
(91, 'BlogListNature', 'update', 'App\\PageBuilder\\Addons\\Blog\\BlogListNature', 'dynamic_page_with_sidebar', 1, 28, 'dynamic_page_with_sidebar', 'a:20:{s:2:\"id\";s:2:\"91\";s:10:\"addon_name\";s:14:\"BlogListNature\";s:15:\"addon_namespace\";s:56:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXEJsb2dMaXN0TmF0dXJl\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:25:\"dynamic_page_with_sidebar\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"28\";s:15:\"addon_page_type\";s:25:\"dynamic_page_with_sidebar\";s:18:\"comment_text_en_GB\";s:8:\"Comments\";s:16:\"share_text_en_GB\";s:5:\"Share\";s:15:\"comment_text_ar\";s:14:\"تعليقات\";s:13:\"share_text_ar\";s:12:\"يشارك :\";s:10:\"categories\";s:1:\"7\";s:15:\"play_icon_color\";N;s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:4:\"desc\";s:5:\"items\";s:1:\"4\";s:20:\"pagination_alignment\";s:9:\"text-left\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:1:\"0\";}', '2021-10-24 07:37:58', '2021-11-21 12:04:46'),
(100, 'InstagramImage', 'update', 'App\\PageBuilder\\Addons\\Home\\InstagramImage', 'dynamic_page_with_sidebar', 6, 24, 'sortable_02', 'a:15:{s:2:\"id\";s:3:\"100\";s:10:\"addon_name\";s:14:\"InstagramImage\";s:15:\"addon_namespace\";s:56:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXEluc3RhZ3JhbUltYWdl\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:25:\"dynamic_page_with_sidebar\";s:11:\"addon_order\";s:1:\"6\";s:13:\"addon_page_id\";s:2:\"24\";s:15:\"addon_page_type\";s:11:\"sortable_02\";s:16:\"title_text_en_GB\";s:22:\"Follow us on Instagram\";s:13:\"title_text_ar\";s:44:\"متابعتنا على الانستقرام\";s:9:\"title_url\";s:1:\"#\";s:14:\"instagram_icon\";s:16:\"lab la-instagram\";s:9:\"item_show\";s:1:\"6\";s:11:\"padding_top\";s:2:\"60\";s:14:\"padding_bottom\";s:2:\"60\";}', '2021-11-02 05:15:37', '2021-11-02 05:15:38'),
(101, 'InstagramImage', 'update', 'App\\PageBuilder\\Addons\\Home\\InstagramImage', 'dynamic_page_with_sidebar', 38, 24, 'sortable_02', 'a:15:{s:2:\"id\";s:3:\"101\";s:10:\"addon_name\";s:14:\"InstagramImage\";s:15:\"addon_namespace\";s:56:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXEluc3RhZ3JhbUltYWdl\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:25:\"dynamic_page_with_sidebar\";s:11:\"addon_order\";s:2:\"38\";s:13:\"addon_page_id\";s:2:\"24\";s:15:\"addon_page_type\";s:11:\"sortable_02\";s:16:\"title_text_en_GB\";s:22:\"Follow us on Instagram\";s:13:\"title_text_ar\";s:44:\"متابعتنا على الانستقرام\";s:9:\"title_url\";s:1:\"#\";s:14:\"instagram_icon\";s:16:\"lab la-instagram\";s:9:\"item_show\";s:1:\"6\";s:11:\"padding_top\";s:2:\"60\";s:14:\"padding_bottom\";s:2:\"60\";}', '2021-11-02 05:25:23', '2021-11-02 05:25:25'),
(102, 'InstagramImage', 'update', 'App\\PageBuilder\\Addons\\Home\\InstagramImage', 'dynamic_page_with_sidebar', 6, 24, 'sortable_02', 'a:15:{s:2:\"id\";s:3:\"102\";s:10:\"addon_name\";s:14:\"InstagramImage\";s:15:\"addon_namespace\";s:56:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXEluc3RhZ3JhbUltYWdl\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:25:\"dynamic_page_with_sidebar\";s:11:\"addon_order\";s:1:\"6\";s:13:\"addon_page_id\";s:2:\"24\";s:15:\"addon_page_type\";s:11:\"sortable_02\";s:16:\"title_text_en_GB\";s:22:\"Follow us on Instagram\";s:13:\"title_text_ar\";s:44:\"متابعتنا على الانستقرام\";s:9:\"title_url\";s:1:\"#\";s:14:\"instagram_icon\";s:16:\"lab la-instagram\";s:9:\"item_show\";s:1:\"6\";s:11:\"padding_top\";s:2:\"60\";s:14:\"padding_bottom\";s:2:\"60\";}', '2021-11-02 05:45:15', '2021-11-02 05:45:17'),
(104, 'InstagramImage', 'update', 'App\\PageBuilder\\Addons\\Home\\InstagramImage', 'dynamic_page_with_sidebar_two', 1, 24, 'dynamic_page_with_sidebar_two', 'a:15:{s:2:\"id\";s:3:\"104\";s:10:\"addon_name\";s:14:\"InstagramImage\";s:15:\"addon_namespace\";s:56:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXEluc3RhZ3JhbUltYWdl\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:29:\"dynamic_page_with_sidebar_two\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"24\";s:15:\"addon_page_type\";s:29:\"dynamic_page_with_sidebar_two\";s:16:\"title_text_en_GB\";s:22:\"Follow us on Instagram\";s:13:\"title_text_ar\";N;s:9:\"title_url\";s:1:\"#\";s:14:\"instagram_icon\";s:16:\"lab la-instagram\";s:9:\"item_show\";s:1:\"6\";s:11:\"padding_top\";s:1:\"0\";s:14:\"padding_bottom\";s:3:\"100\";}', '2021-11-02 05:50:14', '2021-11-17 12:22:23'),
(109, 'Search', 'update', 'App\\PageBuilder\\Addons\\Common\\Search', 'dynamic_page', 1, 30, 'dynamic_page', 'a:12:{s:2:\"id\";s:3:\"109\";s:10:\"addon_name\";s:6:\"Search\";s:15:\"addon_namespace\";s:48:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xDb21tb25cU2VhcmNo\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"30\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:14:\"tag_titleen_GB\";s:13:\"Top  Keywords\";s:11:\"tag_titlear\";s:38:\"أهم الكلمات الرئيسية\";s:11:\"padding_top\";s:3:\"110\";s:14:\"padding_bottom\";s:3:\"110\";}', '2021-11-20 01:56:38', '2021-11-20 01:56:40'),
(113, 'BrowseCategoryOne', 'update', 'App\\PageBuilder\\Addons\\BrowseCategory\\BrowseCategoryOne', 'dynamic_page', 2, 16, 'dynamic_page', 'a:17:{s:2:\"id\";s:3:\"113\";s:10:\"addon_name\";s:17:\"BrowseCategoryOne\";s:15:\"addon_namespace\";s:76:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCcm93c2VDYXRlZ29yeVxCcm93c2VDYXRlZ29yeU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";s:2:\"16\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:17:\"Browse Categories\";s:16:\"title_text_color\";s:17:\"rgb(29, 191, 115)\";s:8:\"subtitle\";s:124:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"6\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;}', '2021-11-28 22:43:25', '2022-02-02 04:08:49'),
(114, 'ServiceListOne', 'update', 'App\\PageBuilder\\Addons\\Service\\ServiceListOne', 'dynamic_page', 1, 32, 'dynamic_page', 'a:18:{s:2:\"id\";s:3:\"114\";s:10:\"addon_name\";s:14:\"ServiceListOne\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xTZXJ2aWNlXFNlcnZpY2VMaXN0T25l\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"32\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:4:\"desc\";s:5:\"items\";s:1:\"6\";s:7:\"columns\";s:8:\"col-lg-4\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:8:\"category\";N;s:11:\"subcategory\";N;s:8:\"book_now\";N;s:9:\"read_more\";N;}', '2021-12-07 01:45:06', '2022-04-28 02:29:56'),
(115, 'FeatureService', 'update', 'App\\PageBuilder\\Addons\\FeatureService\\FeatureService', 'dynamic_page', 3, 16, 'dynamic_page', 'a:18:{s:2:\"id\";s:3:\"115\";s:10:\"addon_name\";s:14:\"FeatureService\";s:15:\"addon_namespace\";s:72:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xGZWF0dXJlU2VydmljZVxGZWF0dXJlU2VydmljZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"3\";s:13:\"addon_page_id\";s:2:\"16\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:17:\"Featured Services\";s:16:\"title_text_color\";s:17:\"rgb(29, 191, 115)\";s:8:\"subtitle\";s:123:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout\";s:5:\"items\";s:1:\"6\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;s:9:\"btn_color\";s:17:\"rgb(29, 191, 115)\";s:16:\"dot_color_slider\";s:12:\"dot-color-01\";s:16:\"book_appointment\";N;}', '2022-01-04 01:00:48', '2022-04-28 09:12:47'),
(116, 'PopularService', 'update', 'App\\PageBuilder\\Addons\\PopularService\\PopularService', 'dynamic_page', 6, 16, 'dynamic_page', 'a:19:{s:2:\"id\";s:3:\"116\";s:10:\"addon_name\";s:14:\"PopularService\";s:15:\"addon_namespace\";s:72:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQb3B1bGFyU2VydmljZVxQb3B1bGFyU2VydmljZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"4\";s:13:\"addon_page_id\";s:2:\"16\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:15:\"Popular Service\";s:16:\"title_text_color\";s:17:\"rgb(29, 191, 115)\";s:8:\"subtitle\";s:124:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";s:5:\"items\";s:1:\"6\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;s:9:\"btn_color\";s:17:\"rgb(29, 191, 115)\";s:17:\"explore_btn_color\";s:13:\"btn-outline-1\";s:11:\"hover_color\";s:11:\"hover_color\";s:17:\"explore_more_link\";N;}', '2022-01-04 03:53:37', '2022-10-28 23:33:01'),
(117, 'WhyOurMarketplace', 'update', 'App\\PageBuilder\\Addons\\WhyOurMarketplace\\WhyOurMarketplace', 'dynamic_page', 7, 16, 'dynamic_page', 'a:15:{s:2:\"id\";s:3:\"117\";s:10:\"addon_name\";s:17:\"WhyOurMarketplace\";s:15:\"addon_namespace\";s:80:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xXaHlPdXJNYXJrZXRwbGFjZVxXaHlPdXJNYXJrZXRwbGFjZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"5\";s:13:\"addon_page_id\";s:2:\"16\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:20:\"Why Our Marketplace?\";s:16:\"title_text_color\";s:17:\"rgb(29, 191, 115)\";s:8:\"subtitle\";s:124:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;s:28:\"contact_page_contact_info_01\";a:3:{s:5:\"icon_\";a:6:{i:0;s:12:\"las la-tools\";i:1;s:16:\"las la-users-cog\";i:2;s:17:\"las la-shield-alt\";i:3;s:16:\"las la-stopwatch\";i:4;s:26:\"las la-file-invoice-dollar\";i:5;s:14:\"las la-headset\";}s:6:\"title_\";a:6:{i:0;s:18:\"Service Commitment\";i:1;s:16:\"Super Experience\";i:2;s:16:\"User Data Secure\";i:3;s:12:\"Fast Service\";i:4;s:14:\"Secure Payment\";i:5;s:17:\"Dedicated Support\";}s:12:\"description_\";a:6:{i:0;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:1;s:125:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader2.\";i:2;s:123:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader\";i:3;s:123:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader\";i:4;s:123:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader\";i:5;s:123:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader\";}}}', '2022-01-04 04:33:37', '2022-10-28 23:33:01'),
(118, 'ProfessionalService', 'update', 'App\\PageBuilder\\Addons\\PopularService\\ProfessionalService', 'dynamic_page', 8, 16, 'dynamic_page', 'a:14:{s:2:\"id\";s:3:\"118\";s:10:\"addon_name\";s:19:\"ProfessionalService\";s:15:\"addon_namespace\";s:76:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQb3B1bGFyU2VydmljZVxQcm9mZXNzaW9uYWxTZXJ2aWNl\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"6\";s:13:\"addon_page_id\";s:2:\"16\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:29:\"Popular Professional Services\";s:16:\"title_text_color\";s:17:\"rgb(29, 191, 115)\";s:8:\"subtitle\";s:124:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;}', '2022-01-04 07:08:26', '2022-10-28 23:33:01'),
(119, 'BecomeSeller', 'update', 'App\\PageBuilder\\Addons\\BecomeSeller\\BecomeSeller', 'dynamic_page', 9, 16, 'dynamic_page', 'a:19:{s:2:\"id\";s:3:\"119\";s:10:\"addon_name\";s:12:\"BecomeSeller\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCZWNvbWVTZWxsZXJcQmVjb21lU2VsbGVy\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"7\";s:13:\"addon_page_id\";s:2:\"16\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:15:\"Start As Seller\";s:16:\"title_text_color\";s:17:\"rgb(29, 191, 115)\";s:8:\"subtitle\";s:124:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";s:10:\"section_bg\";N;s:9:\"btn_color\";s:17:\"rgb(29, 191, 115)\";s:8:\"btn_text\";s:13:\"Become Seller\";s:8:\"btn_link\";N;s:12:\"seller_image\";s:2:\"40\";s:28:\"contact_page_contact_info_01\";a:1:{s:9:\"benifits_\";a:3:{i:0;s:79:\"It is a long established fact that a reader will be distracted by the readable.\";i:1;s:79:\"It is a long established fact that a reader will be distracted by the readable.\";i:2;s:79:\"It is a long established fact that a reader will be distracted by the readable.\";}}s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";}', '2022-01-04 07:32:44', '2022-10-28 23:33:01'),
(123, 'ContactInfo', 'update', 'App\\PageBuilder\\Addons\\Contact\\ContactInfo', 'dynamic_page', 1, 34, 'dynamic_page', 'a:11:{s:2:\"id\";s:3:\"123\";s:10:\"addon_name\";s:11:\"ContactInfo\";s:15:\"addon_namespace\";s:56:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xDb250YWN0XENvbnRhY3RJbmZv\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"34\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:28:\"contact_page_contact_info_01\";a:4:{s:5:\"icon_\";a:3:{i:0;s:19:\"las la-phone-volume\";i:1;s:20:\"las la-envelope-open\";i:2;s:12:\"las la-clock\";}s:6:\"title_\";a:3:{i:0;s:7:\"Call Us\";i:1;s:12:\"Mail Address\";i:2;s:12:\"Support Time\";}s:14:\"description_1_\";a:3:{i:0;s:12:\"412-723-5750\";i:1;s:16:\"Contact@mail.com\";i:2;s:18:\"08.00am to 11.00pm\";}s:14:\"description_2_\";a:3:{i:0;s:12:\"978-488-6321\";i:1;s:16:\"Support@mail.com\";i:2;N;}}s:11:\"padding_top\";s:2:\"70\";s:14:\"padding_bottom\";s:2:\"50\";}', '2022-01-05 23:45:50', '2022-02-09 05:54:25'),
(124, 'ContactMessage', 'update', 'App\\PageBuilder\\Addons\\Contact\\ContactMessage', 'dynamic_page', 2, 34, 'dynamic_page', 'a:11:{s:2:\"id\";s:3:\"124\";s:10:\"addon_name\";s:14:\"ContactMessage\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xDb250YWN0XENvbnRhY3RNZXNzYWdl\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";s:2:\"34\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:11:\"padding_top\";s:2:\"50\";s:14:\"padding_bottom\";s:3:\"100\";s:14:\"custom_form_id\";s:1:\"1\";}', '2022-01-06 00:47:38', '2022-02-02 05:56:27'),
(125, 'AboutUs', 'update', 'App\\PageBuilder\\Addons\\About\\AboutUs', 'dynamic_page', 1, 31, 'dynamic_page', 'a:16:{s:2:\"id\";s:3:\"125\";s:10:\"addon_name\";s:7:\"AboutUs\";s:15:\"addon_namespace\";s:48:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xBYm91dFxBYm91dFVz\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"31\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:13:\"Know About Us\";s:8:\"subtitle\";s:249:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";s:4:\"year\";s:7:\"8 Years\";s:5:\"image\";s:3:\"164\";s:11:\"shape_image\";s:3:\"165\";s:28:\"contact_page_contact_info_01\";a:1:{s:9:\"benifits_\";a:6:{i:0;s:46:\"Complete Sanitization and cleaning of bathroom\";i:1;s:28:\"It\'s  a long established way\";i:2;s:32:\"Biodegradable chemicals are used\";i:3;s:28:\"It\'s  a long established way\";i:4;s:32:\"Biodegradable chemicals are used\";i:5;s:28:\"It\'s  a long established way\";}}s:11:\"padding_top\";s:2:\"70\";s:14:\"padding_bottom\";s:3:\"140\";}', '2022-01-06 03:58:30', '2022-02-14 23:18:20'),
(130, 'Brands', 'update', 'App\\PageBuilder\\Addons\\About\\Brands', 'dynamic_page', 5, 31, 'dynamic_page', 'a:10:{s:2:\"id\";s:3:\"130\";s:10:\"addon_name\";s:6:\"Brands\";s:15:\"addon_namespace\";s:48:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xBYm91dFxCcmFuZHM=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"5\";s:13:\"addon_page_id\";s:2:\"31\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";}', '2022-01-07 22:36:40', '2022-02-02 05:49:25'),
(133, 'AllBlog', 'update', 'App\\PageBuilder\\Addons\\Blog\\AllBlog', 'dynamic_page', 1, 29, 'dynamic_page', 'a:13:{s:2:\"id\";s:3:\"133\";s:10:\"addon_name\";s:7:\"AllBlog\";s:15:\"addon_namespace\";s:48:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXEFsbEJsb2c=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"29\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"4\";s:11:\"padding_top\";s:3:\"110\";s:14:\"padding_bottom\";s:3:\"110\";}', '2022-01-07 23:51:05', '2022-01-07 23:51:07'),
(134, 'AllBlog', 'update', 'App\\PageBuilder\\Addons\\Blog\\AllBlog', 'dynamic_page', 2, 35, 'dynamic_page', 'a:13:{s:2:\"id\";s:3:\"134\";s:10:\"addon_name\";s:7:\"AllBlog\";s:15:\"addon_namespace\";s:48:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCbG9nXEFsbEJsb2c=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"35\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"6\";s:11:\"padding_top\";s:2:\"70\";s:14:\"padding_bottom\";s:3:\"100\";}', '2022-01-07 23:53:45', '2022-02-17 16:56:21'),
(135, 'RecentBlog', 'update', 'App\\PageBuilder\\Addons\\Home\\RecentBlog', 'dynamic_page', 10, 16, 'dynamic_page', 'a:18:{s:2:\"id\";s:3:\"135\";s:10:\"addon_name\";s:10:\"RecentBlog\";s:15:\"addon_namespace\";s:52:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXFJlY2VudEJsb2c=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"8\";s:13:\"addon_page_id\";s:2:\"16\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:22:\"Recent Blog & Articles\";s:16:\"title_text_color\";s:17:\"rgb(29, 191, 115)\";s:8:\"subtitle\";s:124:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:4:\"desc\";s:5:\"items\";s:1:\"4\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;s:16:\"dot_color_slider\";s:12:\"dot-color-01\";}', '2022-01-10 03:33:21', '2022-10-28 23:33:01'),
(138, 'HeaderStyleTwo', 'update', 'App\\PageBuilder\\Addons\\Header\\HeaderStyleTwo', 'dynamic_page', 1, 22, 'dynamic_page', 'a:15:{s:2:\"id\";s:3:\"138\";s:10:\"addon_name\";s:14:\"HeaderStyleTwo\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIZWFkZXJcSGVhZGVyU3R5bGVUd28=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"22\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:35:\"ONE-STOP SOLUTION FOR YOUR SERVICES\";s:8:\"subtitle\";s:40:\"Order any service, anytime from anywhere\";s:12:\"service_type\";s:17:\"Cleaning Service2\";s:12:\"service_icon\";s:12:\"las la-broom\";s:5:\"image\";s:2:\"58\";s:11:\"padding_top\";s:3:\"107\";s:14:\"padding_bottom\";s:3:\"111\";}', '2022-01-10 23:11:40', '2022-02-06 08:26:40'),
(139, 'BrowseCategoryOne', 'update', 'App\\PageBuilder\\Addons\\BrowseCategory\\BrowseCategoryOne', 'dynamic_page', 2, 22, 'dynamic_page', 'a:17:{s:2:\"id\";s:3:\"139\";s:10:\"addon_name\";s:17:\"BrowseCategoryOne\";s:15:\"addon_namespace\";s:76:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCcm93c2VDYXRlZ29yeVxCcm93c2VDYXRlZ29yeU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";s:2:\"22\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:17:\"Browse Categories\";s:16:\"title_text_color\";s:15:\"rgb(51, 51, 51)\";s:8:\"subtitle\";s:124:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"6\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";s:18:\"rgb(255, 255, 255)\";}', '2022-01-11 00:22:03', '2022-02-02 04:30:16'),
(147, 'FeatureService', 'update', 'App\\PageBuilder\\Addons\\FeatureService\\FeatureService', 'dynamic_page', 3, 22, 'dynamic_page', 'a:17:{s:2:\"id\";s:3:\"147\";s:10:\"addon_name\";s:14:\"FeatureService\";s:15:\"addon_namespace\";s:72:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xGZWF0dXJlU2VydmljZVxGZWF0dXJlU2VydmljZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"3\";s:13:\"addon_page_id\";s:2:\"22\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:17:\"Featured Services\";s:16:\"title_text_color\";N;s:8:\"subtitle\";s:123:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout\";s:5:\"items\";s:1:\"5\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";s:18:\"rgb(242, 247, 255)\";s:9:\"btn_color\";s:17:\"rgb(71, 201, 237)\";s:16:\"dot_color_slider\";s:12:\"dot-color-02\";}', '2022-01-11 03:51:58', '2022-02-10 00:58:18'),
(148, 'PopularService', 'update', 'App\\PageBuilder\\Addons\\PopularService\\PopularService', 'dynamic_page', 5, 22, 'dynamic_page', 'a:19:{s:2:\"id\";s:3:\"148\";s:10:\"addon_name\";s:14:\"PopularService\";s:15:\"addon_namespace\";s:72:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQb3B1bGFyU2VydmljZVxQb3B1bGFyU2VydmljZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"4\";s:13:\"addon_page_id\";s:2:\"22\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:16:\"Popular Services\";s:16:\"title_text_color\";N;s:8:\"subtitle\";s:124:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";s:5:\"items\";s:1:\"6\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";s:18:\"rgb(255, 255, 255)\";s:9:\"btn_color\";s:17:\"rgb(70, 202, 235)\";s:17:\"explore_btn_color\";s:13:\"btn-outline-2\";s:11:\"hover_color\";s:8:\"style-02\";s:17:\"explore_more_link\";N;}', '2022-01-11 04:06:23', '2022-10-28 23:30:41');
INSERT INTO `page_builders` (`id`, `addon_name`, `addon_type`, `addon_namespace`, `addon_location`, `addon_order`, `addon_page_id`, `addon_page_type`, `addon_settings`, `created_at`, `updated_at`) VALUES
(149, 'WhyOurMarketplace', 'update', 'App\\PageBuilder\\Addons\\WhyOurMarketplace\\WhyOurMarketplace', 'dynamic_page', 6, 22, 'dynamic_page', 'a:15:{s:2:\"id\";s:3:\"149\";s:10:\"addon_name\";s:17:\"WhyOurMarketplace\";s:15:\"addon_namespace\";s:80:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xXaHlPdXJNYXJrZXRwbGFjZVxXaHlPdXJNYXJrZXRwbGFjZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"5\";s:13:\"addon_page_id\";s:2:\"22\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:20:\"Why Our Marketplace?\";s:16:\"title_text_color\";N;s:8:\"subtitle\";s:132:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. Service\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";s:18:\"rgb(242, 247, 255)\";s:28:\"contact_page_contact_info_01\";a:3:{s:5:\"icon_\";a:6:{i:0;s:12:\"las la-tools\";i:1;s:16:\"las la-users-cog\";i:2;s:17:\"las la-shield-alt\";i:3;s:16:\"las la-stopwatch\";i:4;s:26:\"las la-file-invoice-dollar\";i:5;s:14:\"las la-headset\";}s:6:\"title_\";a:6:{i:0;s:18:\"Service Commitment\";i:1;s:18:\"Service Commitment\";i:2;s:18:\"Service Commitment\";i:3;s:12:\"Fast Service\";i:4;s:12:\"Fast Service\";i:5;s:17:\"Dedicated Support\";}s:12:\"description_\";a:6:{i:0;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:1;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:2;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:3;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:4;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:5;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";}}}', '2022-01-11 04:39:34', '2022-10-28 23:30:41'),
(150, 'RecentBlog', 'update', 'App\\PageBuilder\\Addons\\Home\\RecentBlog', 'dynamic_page', 8, 22, 'dynamic_page', 'a:18:{s:2:\"id\";s:3:\"150\";s:10:\"addon_name\";s:10:\"RecentBlog\";s:15:\"addon_namespace\";s:52:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXFJlY2VudEJsb2c=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"8\";s:13:\"addon_page_id\";s:2:\"22\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:22:\"Recent Blog & Articles\";s:16:\"title_text_color\";N;s:8:\"subtitle\";s:124:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"4\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";s:18:\"rgb(242, 247, 255)\";s:16:\"dot_color_slider\";s:12:\"dot-color-02\";}', '2022-01-11 04:56:46', '2022-10-28 23:30:41'),
(151, 'BecomeSeller', 'update', 'App\\PageBuilder\\Addons\\BecomeSeller\\BecomeSeller', 'dynamic_page', 7, 22, 'dynamic_page', 'a:19:{s:2:\"id\";s:3:\"151\";s:10:\"addon_name\";s:12:\"BecomeSeller\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCZWNvbWVTZWxsZXJcQmVjb21lU2VsbGVy\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"7\";s:13:\"addon_page_id\";s:2:\"22\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:15:\"Start As Seller\";s:16:\"title_text_color\";N;s:8:\"subtitle\";s:249:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";s:10:\"section_bg\";N;s:9:\"btn_color\";s:17:\"rgb(71, 201, 237)\";s:8:\"btn_text\";s:14:\"Join as Seller\";s:8:\"btn_link\";N;s:12:\"seller_image\";s:2:\"29\";s:28:\"contact_page_contact_info_01\";a:1:{s:9:\"benifits_\";a:3:{i:0;s:79:\"It is a long established fact that a reader will be distracted by the readable.\";i:1;s:79:\"It is a long established fact that a reader will be distracted by the readable.\";i:2;s:79:\"It is a long established fact that a reader will be distracted by the readable.\";}}s:11:\"padding_top\";s:2:\"70\";s:14:\"padding_bottom\";s:3:\"100\";}', '2022-01-11 05:18:50', '2022-10-28 23:30:41'),
(152, 'WhyOurMarketplace', 'update', 'App\\PageBuilder\\Addons\\WhyOurMarketplace\\WhyOurMarketplace', 'dynamic_page', 2, 31, 'dynamic_page', 'a:15:{s:2:\"id\";s:3:\"152\";s:10:\"addon_name\";s:17:\"WhyOurMarketplace\";s:15:\"addon_namespace\";s:80:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xXaHlPdXJNYXJrZXRwbGFjZVxXaHlPdXJNYXJrZXRwbGFjZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";s:2:\"31\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:20:\"Why Our Marketplace?\";s:16:\"title_text_color\";N;s:8:\"subtitle\";s:124:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";s:18:\"rgb(242, 247, 255)\";s:28:\"contact_page_contact_info_01\";a:3:{s:5:\"icon_\";a:6:{i:0;s:12:\"las la-tools\";i:1;s:16:\"las la-users-cog\";i:2;s:17:\"las la-shield-alt\";i:3;s:16:\"las la-stopwatch\";i:4;s:26:\"las la-file-invoice-dollar\";i:5;s:14:\"las la-headset\";}s:6:\"title_\";a:6:{i:0;s:18:\"Service Commitment\";i:1;s:16:\"Super Experience\";i:2;s:16:\"User Data Secure\";i:3;s:12:\"Fast Service\";i:4;s:14:\"Secure Payment\";i:5;s:17:\"Dedicated Support\";}s:12:\"description_\";a:6:{i:0;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:1;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:2;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:3;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:4;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:5;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";}}}', '2022-01-11 22:50:19', '2022-02-02 05:05:07'),
(153, 'BecomeSeller', 'update', 'App\\PageBuilder\\Addons\\BecomeSeller\\BecomeSeller', 'dynamic_page', 4, 31, 'dynamic_page', 'a:19:{s:2:\"id\";s:3:\"153\";s:10:\"addon_name\";s:12:\"BecomeSeller\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCZWNvbWVTZWxsZXJcQmVjb21lU2VsbGVy\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"4\";s:13:\"addon_page_id\";s:2:\"31\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:15:\"Start As Seller\";s:16:\"title_text_color\";N;s:8:\"subtitle\";s:249:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";s:10:\"section_bg\";s:18:\"rgb(242, 247, 255)\";s:9:\"btn_color\";N;s:8:\"btn_text\";s:13:\"Become Seller\";s:8:\"btn_link\";N;s:12:\"seller_image\";s:2:\"40\";s:28:\"contact_page_contact_info_01\";a:1:{s:9:\"benifits_\";a:3:{i:0;s:79:\"It is a long established fact that a reader will be distracted by the readable.\";i:1;s:79:\"It is a long established fact that a reader will be distracted by the readable.\";i:2;s:79:\"It is a long established fact that a reader will be distracted by the readable.\";}}s:11:\"padding_top\";s:2:\"70\";s:14:\"padding_bottom\";s:3:\"105\";}', '2022-01-11 22:50:23', '2022-02-02 05:49:59'),
(154, 'BrowseCategoryOne', 'update', 'App\\PageBuilder\\Addons\\BrowseCategory\\BrowseCategoryOne', 'dynamic_page', 3, 31, 'dynamic_page', 'a:17:{s:2:\"id\";s:3:\"154\";s:10:\"addon_name\";s:17:\"BrowseCategoryOne\";s:15:\"addon_namespace\";s:76:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCcm93c2VDYXRlZ29yeVxCcm93c2VDYXRlZ29yeU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"3\";s:13:\"addon_page_id\";s:2:\"31\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:17:\"Browse Categories\";s:16:\"title_text_color\";N;s:8:\"subtitle\";s:124:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";N;s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";s:18:\"rgb(255, 255, 255)\";}', '2022-01-11 23:12:21', '2022-02-02 05:47:33'),
(155, 'HeaderStyleOne', 'update', 'App\\PageBuilder\\Addons\\Header\\HeaderStyleOne', 'dynamic_page', 1, 16, 'dynamic_page', 'a:13:{s:2:\"id\";s:3:\"155\";s:10:\"addon_name\";s:14:\"HeaderStyleOne\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIZWFkZXJcSGVhZGVyU3R5bGVPbmU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"16\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:35:\"ONE-STOP SOLUTION FOR YOUR SERVICES\";s:8:\"subtitle\";s:40:\"Order any service, anytime from anywhere\";s:16:\"background_image\";s:1:\"4\";s:11:\"padding_top\";s:2:\"92\";s:14:\"padding_bottom\";s:2:\"87\";}', '2022-01-11 23:51:52', '2022-01-15 04:38:32'),
(158, 'HeaderStyleThree', 'update', 'App\\PageBuilder\\Addons\\Header\\HeaderStyleThree', 'dynamic_page', 1, 38, 'dynamic_page', 'a:18:{s:2:\"id\";s:3:\"158\";s:10:\"addon_name\";s:16:\"HeaderStyleThree\";s:15:\"addon_namespace\";s:64:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIZWFkZXJcSGVhZGVyU3R5bGVUaHJlZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"38\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:35:\"One-stop Solution for your Services\";s:8:\"subtitle\";s:40:\"Order any service, anytime from anywhere\";s:12:\"service_type\";s:15:\"Clening Service\";s:12:\"service_icon\";s:12:\"las la-broom\";s:12:\"service_link\";s:1:\"#\";s:9:\"dot_image\";s:2:\"42\";s:12:\"banner_image\";s:2:\"41\";s:5:\"image\";s:2:\"40\";s:11:\"padding_top\";s:3:\"106\";s:14:\"padding_bottom\";s:3:\"100\";}', '2022-01-12 00:22:33', '2022-01-12 01:16:41'),
(159, 'BrowseCategoryTwo', 'update', 'App\\PageBuilder\\Addons\\BrowseCategory\\BrowseCategoryTwo', 'dynamic_page', 2, 38, 'dynamic_page', 'a:17:{s:2:\"id\";s:3:\"159\";s:10:\"addon_name\";s:17:\"BrowseCategoryTwo\";s:15:\"addon_namespace\";s:76:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCcm93c2VDYXRlZ29yeVxCcm93c2VDYXRlZ29yeVR3bw==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";s:2:\"38\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:15:\"Browse Category\";s:11:\"explore_all\";s:11:\"Explore All\";s:12:\"explore_link\";N;s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"6\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:2:\"50\";s:10:\"section_bg\";N;}', '2022-01-12 03:40:35', '2022-02-09 06:27:03'),
(160, 'FeatureServiceTwo', 'update', 'App\\PageBuilder\\Addons\\FeatureService\\FeatureServiceTwo', 'dynamic_page', 3, 38, 'dynamic_page', 'a:17:{s:2:\"id\";s:3:\"160\";s:10:\"addon_name\";s:17:\"FeatureServiceTwo\";s:15:\"addon_namespace\";s:76:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xGZWF0dXJlU2VydmljZVxGZWF0dXJlU2VydmljZVR3bw==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"3\";s:13:\"addon_page_id\";s:2:\"38\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:17:\"Featured Services\";s:11:\"explore_all\";s:11:\"Explore All\";s:12:\"explore_link\";N;s:5:\"items\";s:1:\"4\";s:11:\"padding_top\";s:2:\"50\";s:14:\"padding_bottom\";s:2:\"95\";s:10:\"section_bg\";N;s:9:\"btn_color\";N;s:16:\"book_appointment\";s:8:\"Book Now\";}', '2022-01-12 04:25:22', '2022-10-28 12:08:27'),
(162, 'WhyOurMarketplaceTwo', 'update', 'App\\PageBuilder\\Addons\\WhyOurMarketplace\\WhyOurMarketplaceTwo', 'dynamic_page', 5, 38, 'dynamic_page', 'a:18:{s:2:\"id\";s:3:\"162\";s:10:\"addon_name\";s:20:\"WhyOurMarketplaceTwo\";s:15:\"addon_namespace\";s:84:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xXaHlPdXJNYXJrZXRwbGFjZVxXaHlPdXJNYXJrZXRwbGFjZVR3bw==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"5\";s:13:\"addon_page_id\";s:2:\"38\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:31:\"Why you ChooseThis Marketplace?\";s:8:\"subtitle\";s:298:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc in rutrum odio, a blandit leo. Mauris placerat vulputate lacus eu eleifend. Donec euismod, metus id consequat egestas, tellus dui fermentum est, id porttitor tellus tortor in tellus. Maecenas non facilisis tortor. Duis et euismod augue.\";s:16:\"background_image\";s:2:\"53\";s:11:\"padding_top\";s:2:\"99\";s:14:\"padding_bottom\";s:2:\"50\";s:10:\"section_bg\";N;s:9:\"btn_color\";N;s:8:\"btn_text\";s:15:\"Join as  Seller\";s:8:\"btn_link\";N;s:28:\"contact_page_contact_info_01\";a:3:{s:6:\"image_\";a:4:{i:0;s:2:\"49\";i:1;s:2:\"50\";i:2;s:2:\"51\";i:3;s:2:\"52\";}s:6:\"title_\";a:4:{i:0;s:18:\"Service Commitment\";i:1;s:16:\"Super Experience\";i:2;s:21:\"Secure Data & Payment\";i:3;s:17:\"Dedecated Support\";}s:12:\"description_\";a:4:{i:0;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:1;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:2;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:3;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";}}}', '2022-01-12 05:56:37', '2022-10-28 12:09:38'),
(163, 'PopularServiceTwo', 'update', 'App\\PageBuilder\\Addons\\PopularService\\PopularServiceTwo', 'dynamic_page', 6, 38, 'dynamic_page', 'a:15:{s:2:\"id\";s:3:\"163\";s:10:\"addon_name\";s:17:\"PopularServiceTwo\";s:15:\"addon_namespace\";s:76:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQb3B1bGFyU2VydmljZVxQb3B1bGFyU2VydmljZVR3bw==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"5\";s:13:\"addon_page_id\";s:2:\"38\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:16:\"Popular Services\";s:11:\"explore_all\";s:11:\"Explore All\";s:12:\"explore_link\";N;s:5:\"items\";s:1:\"4\";s:11:\"padding_top\";s:2:\"50\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;}', '2022-01-12 06:20:00', '2022-10-28 10:44:25'),
(164, 'BecomeSellerTwo', 'update', 'App\\PageBuilder\\Addons\\BecomeSeller\\BecomeSellerTwo', 'dynamic_page', 9, 38, 'dynamic_page', 'a:20:{s:2:\"id\";s:3:\"164\";s:10:\"addon_name\";s:15:\"BecomeSellerTwo\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCZWNvbWVTZWxsZXJcQmVjb21lU2VsbGVyVHdv\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"6\";s:13:\"addon_page_id\";s:2:\"38\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:58:\"Join with us to Sale your service & growth your Experience\";s:8:\"subtitle\";s:40:\"Order any service, anytime from anywhere\";s:9:\"btn_color\";s:17:\"rgb(255, 107, 43)\";s:8:\"btn_text\";s:15:\"Become A Seller\";s:8:\"btn_link\";N;s:8:\"circle_1\";s:3:\"115\";s:8:\"circle_2\";s:3:\"116\";s:10:\"dot_square\";s:3:\"117\";s:10:\"line_cross\";s:3:\"118\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;}', '2022-01-12 07:24:18', '2022-11-01 01:48:56'),
(165, 'RecentBlogTwo', 'update', 'App\\PageBuilder\\Addons\\Home\\RecentBlogTwo', 'dynamic_page', 10, 38, 'dynamic_page', 'a:17:{s:2:\"id\";s:3:\"165\";s:10:\"addon_name\";s:13:\"RecentBlogTwo\";s:15:\"addon_namespace\";s:56:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXFJlY2VudEJsb2dUd28=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"7\";s:13:\"addon_page_id\";s:2:\"38\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:15:\"Blog & Articles\";s:11:\"explore_all\";s:11:\"Explore All\";s:12:\"explore_link\";N;s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"4\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;}', '2022-01-12 08:11:41', '2022-11-01 01:48:56'),
(166, 'HeaderStyleFour', 'update', 'App\\PageBuilder\\Addons\\Header\\HeaderStyleFour', 'dynamic_page', 1, 39, 'dynamic_page', 'a:18:{s:2:\"id\";s:3:\"166\";s:10:\"addon_name\";s:15:\"HeaderStyleFour\";s:15:\"addon_namespace\";s:60:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIZWFkZXJcSGVhZGVyU3R5bGVGb3Vy\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"39\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:35:\"One-stop Solution for your Services\";s:8:\"subtitle\";s:40:\"Order any service, anytime from anywhere\";s:12:\"service_type\";s:16:\"Cleaning Service\";s:12:\"service_icon\";s:12:\"las la-broom\";s:12:\"service_link\";N;s:9:\"dot_image\";s:2:\"42\";s:12:\"banner_image\";s:2:\"41\";s:5:\"image\";s:2:\"58\";s:11:\"padding_top\";s:3:\"106\";s:14:\"padding_bottom\";s:2:\"99\";}', '2022-01-12 22:34:02', '2022-01-12 23:09:07'),
(167, 'BrowseCategoryTwo', 'update', 'App\\PageBuilder\\Addons\\BrowseCategory\\BrowseCategoryTwo', 'dynamic_page', 2, 39, 'dynamic_page', 'a:17:{s:2:\"id\";s:3:\"167\";s:10:\"addon_name\";s:17:\"BrowseCategoryTwo\";s:15:\"addon_namespace\";s:76:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCcm93c2VDYXRlZ29yeVxCcm93c2VDYXRlZ29yeVR3bw==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";s:2:\"39\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:15:\"Browse Category\";s:11:\"explore_all\";s:11:\"Explore All\";s:12:\"explore_link\";N;s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"6\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:2:\"50\";s:10:\"section_bg\";N;}', '2022-01-12 23:15:02', '2022-02-09 06:27:28'),
(168, 'FeatureServiceTwo', 'update', 'App\\PageBuilder\\Addons\\FeatureService\\FeatureServiceTwo', 'dynamic_page', 3, 39, 'dynamic_page', 'a:17:{s:2:\"id\";s:3:\"168\";s:10:\"addon_name\";s:17:\"FeatureServiceTwo\";s:15:\"addon_namespace\";s:76:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xGZWF0dXJlU2VydmljZVxGZWF0dXJlU2VydmljZVR3bw==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"3\";s:13:\"addon_page_id\";s:2:\"39\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:17:\"Featured Services\";s:11:\"explore_all\";s:11:\"Explore All\";s:12:\"explore_link\";N;s:5:\"items\";s:1:\"4\";s:11:\"padding_top\";s:2:\"50\";s:14:\"padding_bottom\";s:3:\"102\";s:10:\"section_bg\";N;s:9:\"btn_color\";N;s:16:\"book_appointment\";s:8:\"Book Now\";}', '2022-01-12 23:16:44', '2022-10-28 23:24:06'),
(169, 'BecomeSellerTwo', 'update', 'App\\PageBuilder\\Addons\\BecomeSeller\\BecomeSellerTwo', 'dynamic_page', 8, 39, 'dynamic_page', 'a:20:{s:2:\"id\";s:3:\"169\";s:10:\"addon_name\";s:15:\"BecomeSellerTwo\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xCZWNvbWVTZWxsZXJcQmVjb21lU2VsbGVyVHdv\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"6\";s:13:\"addon_page_id\";s:2:\"39\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:58:\"Join with us to Sale your service & growth your Experience\";s:8:\"subtitle\";s:40:\"Order any service, anytime from anywhere\";s:9:\"btn_color\";N;s:8:\"btn_text\";s:15:\"Become A Seller\";s:8:\"btn_link\";N;s:8:\"circle_1\";s:3:\"115\";s:8:\"circle_2\";s:3:\"116\";s:10:\"dot_square\";s:3:\"117\";s:10:\"line_cross\";s:3:\"118\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;}', '2022-01-12 23:22:26', '2022-10-28 23:22:32'),
(170, 'WhyOurMarketplaceTwo', 'update', 'App\\PageBuilder\\Addons\\WhyOurMarketplace\\WhyOurMarketplaceTwo', 'dynamic_page', 5, 39, 'dynamic_page', 'a:18:{s:2:\"id\";s:3:\"170\";s:10:\"addon_name\";s:20:\"WhyOurMarketplaceTwo\";s:15:\"addon_namespace\";s:84:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xXaHlPdXJNYXJrZXRwbGFjZVxXaHlPdXJNYXJrZXRwbGFjZVR3bw==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"5\";s:13:\"addon_page_id\";s:2:\"39\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:31:\"Why you ChooseThis Marketplace?\";s:8:\"subtitle\";s:298:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc in rutrum odio, a blandit leo. Mauris placerat vulputate lacus eu eleifend. Donec euismod, metus id consequat egestas, tellus dui fermentum est, id porttitor tellus tortor in tellus. Maecenas non facilisis tortor. Duis et euismod augue.\";s:16:\"background_image\";s:2:\"53\";s:11:\"padding_top\";s:3:\"101\";s:14:\"padding_bottom\";s:2:\"50\";s:10:\"section_bg\";N;s:9:\"btn_color\";N;s:8:\"btn_text\";s:15:\"Become A Seller\";s:8:\"btn_link\";N;s:28:\"contact_page_contact_info_01\";a:3:{s:6:\"image_\";a:4:{i:0;s:2:\"49\";i:1;s:2:\"50\";i:2;s:2:\"51\";i:3;s:2:\"52\";}s:6:\"title_\";a:4:{i:0;s:18:\"Service Commitment\";i:1;s:16:\"Super Experience\";i:2;s:21:\"Secure Data & Payment\";i:3;s:17:\"Dedecated Support\";}s:12:\"description_\";a:4:{i:0;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:1;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:2;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";i:3;s:124:\"It is a long established fact that a reader will be distracted by the readable. It is a long established fact that a reader.\";}}}', '2022-01-12 23:30:15', '2022-10-28 23:24:11'),
(171, 'PopularServiceTwo', 'update', 'App\\PageBuilder\\Addons\\PopularService\\PopularServiceTwo', 'dynamic_page', 6, 39, 'dynamic_page', 'a:15:{s:2:\"id\";s:3:\"171\";s:10:\"addon_name\";s:17:\"PopularServiceTwo\";s:15:\"addon_namespace\";s:76:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xQb3B1bGFyU2VydmljZVxQb3B1bGFyU2VydmljZVR3bw==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"5\";s:13:\"addon_page_id\";s:2:\"39\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:16:\"Popular Services\";s:11:\"explore_all\";s:11:\"Explore All\";s:12:\"explore_link\";N;s:5:\"items\";s:1:\"4\";s:11:\"padding_top\";s:2:\"50\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;}', '2022-01-12 23:34:38', '2022-10-28 23:22:32'),
(172, 'RecentBlogTwo', 'update', 'App\\PageBuilder\\Addons\\Home\\RecentBlogTwo', 'dynamic_page', 9, 39, 'dynamic_page', 'a:17:{s:2:\"id\";s:3:\"172\";s:10:\"addon_name\";s:13:\"RecentBlogTwo\";s:15:\"addon_namespace\";s:56:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lXFJlY2VudEJsb2dUd28=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"7\";s:13:\"addon_page_id\";s:2:\"39\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:15:\"Blog & Articles\";s:11:\"explore_all\";s:11:\"Explore All\";s:12:\"explore_link\";N;s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"4\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;}', '2022-01-12 23:36:46', '2022-10-28 23:22:32'),
(174, 'Faq', 'update', 'App\\PageBuilder\\Addons\\Faq\\Faq', 'dynamic_page', 1, 40, 'dynamic_page', 'a:12:{s:2:\"id\";s:3:\"174\";s:10:\"addon_name\";s:3:\"Faq\";s:15:\"addon_namespace\";s:40:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xGYXFcRmFx\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"40\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:11:\"padding_top\";s:2:\"70\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;s:28:\"contact_page_contact_info_01\";a:2:{s:6:\"title_\";a:4:{i:0;s:53:\"Why is this such an important problem for you to fix?\";i:1;s:32:\"What’s your very first memory?\";i:2;s:34:\"Why do you need this solution now?\";i:3;s:44:\"What are the main features that interest you\";}s:12:\"description_\";a:4:{i:0;s:216:\"Sportsman delighted improving dashwoods gay instantly happiness six. Ham now amounted absolute not mistaken way pleasant whatever. At an these still no dried folly stood thing. Rapid it on hours hills it seven years.\";i:1;s:216:\"Sportsman delighted improving dashwoods gay instantly happiness six. Ham now amounted absolute not mistaken way pleasant whatever. At an these still no dried folly stood thing. Rapid it on hours hills it seven years.\";i:2;s:216:\"Sportsman delighted improving dashwoods gay instantly happiness six. Ham now amounted absolute not mistaken way pleasant whatever. At an these still no dried folly stood thing. Rapid it on hours hills it seven years.\";i:3;s:216:\"Sportsman delighted improving dashwoods gay instantly happiness six. Ham now amounted absolute not mistaken way pleasant whatever. At an these still no dried folly stood thing. Rapid it on hours hills it seven years.\";}}}', '2022-01-13 07:23:00', '2022-02-02 05:52:37'),
(175, 'OnlineService', 'update', 'App\\PageBuilder\\Addons\\OnlineService\\OnlineService', 'dynamic_page', 5, 16, 'dynamic_page', 'a:18:{s:2:\"id\";s:3:\"175\";s:10:\"addon_name\";s:13:\"OnlineService\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xPbmxpbmVTZXJ2aWNlXE9ubGluZVNlcnZpY2U=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"5\";s:13:\"addon_page_id\";s:2:\"16\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:14:\"Online Service\";s:16:\"title_text_color\";s:17:\"rgb(29, 191, 115)\";s:8:\"subtitle\";s:98:\"Get online services at affordable price and take the best chance to grow your business and pthers.\";s:5:\"items\";s:1:\"6\";s:11:\"padding_top\";s:3:\"101\";s:14:\"padding_bottom\";s:2:\"97\";s:10:\"section_bg\";N;s:9:\"btn_color\";s:17:\"rgb(29, 191, 115)\";s:16:\"dot_color_slider\";s:12:\"dot-color-01\";s:16:\"book_appointment\";s:16:\"Book Appointment\";}', '2022-04-28 09:08:53', '2022-10-28 23:33:34'),
(176, 'OnlineService', 'update', 'App\\PageBuilder\\Addons\\OnlineService\\OnlineService', 'dynamic_page', 9, 22, 'dynamic_page', 'a:18:{s:2:\"id\";s:3:\"176\";s:10:\"addon_name\";s:13:\"OnlineService\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xPbmxpbmVTZXJ2aWNlXE9ubGluZVNlcnZpY2U=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"8\";s:13:\"addon_page_id\";s:2:\"22\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:14:\"Online Service\";s:16:\"title_text_color\";N;s:8:\"subtitle\";s:61:\"Get Our online services now at affordable price and benifits.\";s:5:\"items\";s:1:\"3\";s:11:\"padding_top\";s:2:\"66\";s:14:\"padding_bottom\";s:2:\"61\";s:10:\"section_bg\";N;s:9:\"btn_color\";s:17:\"rgb(70, 202, 235)\";s:16:\"dot_color_slider\";s:12:\"dot-color-01\";s:16:\"book_appointment\";s:16:\"Book Appointment\";}', '2022-04-28 03:29:26', '2022-10-28 23:30:41'),
(177, 'OnlineServiceTwo', 'update', 'App\\PageBuilder\\Addons\\OnlineService\\OnlineServiceTwo', 'dynamic_page', 7, 38, 'dynamic_page', 'a:14:{s:2:\"id\";s:3:\"177\";s:10:\"addon_name\";s:16:\"OnlineServiceTwo\";s:15:\"addon_namespace\";s:72:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xPbmxpbmVTZXJ2aWNlXE9ubGluZVNlcnZpY2VUd28=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"6\";s:13:\"addon_page_id\";s:2:\"38\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:14:\"Online Service\";s:5:\"items\";s:1:\"4\";s:11:\"padding_top\";s:2:\"95\";s:14:\"padding_bottom\";s:2:\"91\";s:10:\"section_bg\";N;s:16:\"book_appointment\";s:8:\"Book Now\";}', '2022-04-28 03:40:59', '2022-10-28 10:44:26'),
(178, 'OnlineServiceTwo', 'update', 'App\\PageBuilder\\Addons\\OnlineService\\OnlineServiceTwo', 'dynamic_page', 7, 39, 'dynamic_page', 'a:14:{s:2:\"id\";s:3:\"178\";s:10:\"addon_name\";s:16:\"OnlineServiceTwo\";s:15:\"addon_namespace\";s:72:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xPbmxpbmVTZXJ2aWNlXE9ubGluZVNlcnZpY2VUd28=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"6\";s:13:\"addon_page_id\";s:2:\"39\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:14:\"Online Service\";s:5:\"items\";s:1:\"4\";s:11:\"padding_top\";s:2:\"93\";s:14:\"padding_bottom\";s:2:\"88\";s:10:\"section_bg\";N;s:16:\"book_appointment\";s:8:\"Book Now\";}', '2022-04-28 03:49:25', '2022-10-28 23:22:32'),
(180, 'PricePlan', 'update', 'Modules\\Subscription\\PageBuilder\\Addons\\PricePlan', 'dynamic_page', 1, 44, 'dynamic_page', 'a:13:{s:2:\"id\";s:3:\"180\";s:10:\"addon_name\";s:9:\"PricePlan\";s:15:\"addon_namespace\";s:68:\"TW9kdWxlc1xTdWJzY3JpcHRpb25cUGFnZUJ1aWxkZXJcQWRkb25zXFByaWNlUGxhbg==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"44\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:10:\"Price Plan\";s:16:\"title_text_color\";s:17:\"rgb(29, 191, 115)\";s:8:\"subtitle\";s:94:\"Here are our plans. Choose the plan which is more suitable for you from our plans collections.\";s:11:\"padding_top\";s:3:\"158\";s:14:\"padding_bottom\";s:3:\"151\";}', '2022-09-03 05:06:59', '2022-09-03 05:17:51'),
(181, 'RawHTML', 'update', 'App\\PageBuilder\\Addons\\Common\\RawHTML', 'dynamic_page', 2, 40, 'dynamic_page', 'a:9:{s:2:\"id\";s:3:\"181\";s:10:\"addon_name\";s:7:\"RawHTML\";s:15:\"addon_namespace\";s:52:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xDb21tb25cUmF3SFRNTA==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";s:2:\"40\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:8:\"raw_html\";s:14:\"<h1>hello</h1>\";}', '2022-09-09 23:10:05', '2022-09-09 23:10:07'),
(183, 'Jobs', 'update', 'Modules\\JobPost\\PageBuilder\\Addons\\Jobs', 'dynamic_page', 1, 45, 'dynamic_page', 'a:18:{s:2:\"id\";s:3:\"183\";s:10:\"addon_name\";s:4:\"Jobs\";s:15:\"addon_namespace\";s:52:\"TW9kdWxlc1xKb2JQb3N0XFBhZ2VCdWlsZGVyXEFkZG9uc1xKb2Jz\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:2:\"45\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:4:\"desc\";s:5:\"items\";N;s:7:\"columns\";s:8:\"col-lg-4\";s:11:\"padding_top\";s:3:\"110\";s:14:\"padding_bottom\";s:3:\"110\";s:8:\"category\";N;s:11:\"subcategory\";N;s:8:\"book_now\";N;s:9:\"read_more\";N;}', '2022-10-11 23:46:57', '2022-10-19 02:19:40'),
(184, 'SellerProfile', 'update', 'App\\PageBuilder\\Addons\\SellerProfile\\SellerProfile', 'dynamic_page', 4, 38, 'dynamic_page', 'a:15:{s:2:\"id\";s:3:\"184\";s:10:\"addon_name\";s:13:\"SellerProfile\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xTZWxsZXJQcm9maWxlXFNlbGxlclByb2ZpbGU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"4\";s:13:\"addon_page_id\";s:2:\"38\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:30:\"Our Valuable Service Providers\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"4\";s:11:\"padding_top\";s:2:\"95\";s:14:\"padding_bottom\";s:2:\"72\";s:10:\"section_bg\";N;}', '2022-10-28 10:44:30', '2022-10-28 12:09:02'),
(185, 'SellerProfile', 'update', 'App\\PageBuilder\\Addons\\SellerProfile\\SellerProfile', 'dynamic_page', 4, 39, 'dynamic_page', 'a:15:{s:2:\"id\";s:3:\"185\";s:10:\"addon_name\";s:13:\"SellerProfile\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xTZWxsZXJQcm9maWxlXFNlbGxlclByb2ZpbGU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"4\";s:13:\"addon_page_id\";s:2:\"39\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:30:\"Our Valuable Service Providers\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"4\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;}', '2022-10-28 23:22:48', '2022-10-28 23:23:38'),
(186, 'SellerProfile', 'update', 'App\\PageBuilder\\Addons\\SellerProfile\\SellerProfile', 'dynamic_page', 4, 22, 'dynamic_page', 'a:15:{s:2:\"id\";s:3:\"186\";s:10:\"addon_name\";s:13:\"SellerProfile\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xTZWxsZXJQcm9maWxlXFNlbGxlclByb2ZpbGU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"4\";s:13:\"addon_page_id\";s:2:\"22\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:30:\"Our Valuable Service Providers\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"4\";s:11:\"padding_top\";s:1:\"2\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;}', '2022-10-28 23:30:53', '2022-10-28 23:31:14'),
(187, 'SellerProfile', 'new', 'App\\PageBuilder\\Addons\\SellerProfile\\SellerProfile', 'dynamic_page', 4, 16, 'dynamic_page', 'a:14:{s:10:\"addon_name\";s:13:\"SellerProfile\";s:15:\"addon_namespace\";s:68:\"QXBwXFBhZ2VCdWlsZGVyXEFkZG9uc1xTZWxsZXJQcm9maWxlXFNlbGxlclByb2ZpbGU=\";s:10:\"addon_type\";s:3:\"new\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"4\";s:13:\"addon_page_id\";s:2:\"16\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:30:\"Our Valuable Service Providers\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"4\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;}', '2022-10-28 23:33:15', '2022-10-28 23:33:15'),
(189, 'HomeJobs', 'update', 'Modules\\JobPost\\PageBuilder\\Addons\\HomeJobs', 'dynamic_page', 8, 38, 'dynamic_page', 'a:16:{s:2:\"id\";s:3:\"189\";s:10:\"addon_name\";s:8:\"HomeJobs\";s:15:\"addon_namespace\";s:60:\"TW9kdWxlc1xKb2JQb3N0XFBhZ2VCdWlsZGVyXEFkZG9uc1xIb21lSm9icw==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"8\";s:13:\"addon_page_id\";s:2:\"38\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";N;s:11:\"explore_all\";N;s:12:\"explore_link\";s:44:\"http://localhost/qixer-last-server-file/jobs\";s:5:\"items\";N;s:11:\"padding_top\";s:3:\"159\";s:14:\"padding_bottom\";s:3:\"156\";s:10:\"section_bg\";N;s:16:\"book_appointment\";s:8:\"Book Now\";}', '2022-11-01 02:31:22', '2022-11-01 02:37:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shawonrog@gmail.com', 'gt62syz8Z6ba5V7GTtnBIZchwHJvfZ', NULL),
('shawon9324@gmail.com', '7hAYG5ygkSjbarITWMFYFywmPolQzO', NULL),
('s-admin@gmail.com', 'JWroogxlgTkpLMGJ7e7czy8Geb9u4Q', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payout_requests`
--

CREATE TABLE `payout_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_receipt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_note` text COLLATE utf8mb4_unicode_ci,
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=pending 1=complete, 2=cancelled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user-list', 'admin', '2021-09-01 22:54:39', '2021-09-01 22:54:39'),
(2, 'user-create', 'admin', '2021-09-01 22:54:39', '2021-09-01 22:54:39'),
(3, 'user-edit', 'admin', '2021-09-01 22:54:40', '2021-09-01 22:54:40'),
(4, 'user-delete', 'admin', '2021-09-01 22:54:40', '2021-09-01 22:54:40'),
(53, 'blog-list', 'admin', '2021-09-01 23:13:54', '2021-09-01 23:13:54'),
(54, 'blog-create', 'admin', '2021-09-01 23:13:54', '2021-09-01 23:13:54'),
(55, 'blog-edit', 'admin', '2021-09-01 23:13:54', '2021-09-01 23:13:54'),
(56, 'blog-delete', 'admin', '2021-09-01 23:13:54', '2021-09-01 23:13:54'),
(57, 'category-list', 'admin', '2021-09-01 23:13:54', '2021-09-01 23:13:54'),
(58, 'category-create', 'admin', '2021-09-01 23:13:54', '2021-09-01 23:13:54'),
(59, 'category-edit', 'admin', '2021-09-01 23:13:55', '2021-09-01 23:13:55'),
(60, 'category-delete', 'admin', '2021-09-01 23:13:55', '2021-09-01 23:13:55'),
(62, 'pages-list', 'admin', '2021-09-01 23:16:49', '2021-09-01 23:16:49'),
(63, 'pages-create', 'admin', '2021-09-01 23:16:49', '2021-09-01 23:16:49'),
(64, 'pages-edit', 'admin', '2021-09-01 23:16:50', '2021-09-01 23:16:50'),
(65, 'pages-delete', 'admin', '2021-09-01 23:16:50', '2021-09-01 23:16:50'),
(74, 'form-builder', 'admin', '2021-09-01 23:21:54', '2021-09-01 23:21:54'),
(81, 'appearance-topbar-settings', 'admin', '2021-09-01 23:25:07', '2021-09-01 23:25:07'),
(82, 'appearance-menubar-settings', 'admin', '2021-09-01 23:25:07', '2021-09-01 23:25:07'),
(83, 'appearance-media-image-manage', 'admin', '2021-09-01 23:25:07', '2021-09-01 23:25:07'),
(85, 'appearance-widget-builder', 'admin', '2021-09-01 23:25:07', '2021-09-01 23:25:07'),
(86, 'appearance-menu-list', 'admin', '2021-09-01 23:25:08', '2021-09-01 23:25:08'),
(87, 'appearance-menu-edit', 'admin', '2021-09-01 23:25:08', '2021-09-01 23:25:08'),
(88, 'appearance-menu-delete', 'admin', '2021-09-01 23:25:08', '2021-09-01 23:25:08'),
(97, 'general-settings-site-identity', 'admin', '2021-09-01 23:37:59', '2021-09-01 23:37:59'),
(98, 'general-settings-basic-settings', 'admin', '2021-09-01 23:37:59', '2021-09-01 23:37:59'),
(99, 'general-settings-color-settings', 'admin', '2021-09-01 23:37:59', '2021-09-01 23:37:59'),
(100, 'general-settings-typography-settings', 'admin', '2021-09-01 23:37:59', '2021-09-01 23:37:59'),
(101, 'general-settings-seo-settings', 'admin', '2021-09-01 23:37:59', '2021-09-01 23:37:59'),
(102, 'general-settings-third-party-scripts', 'admin', '2021-09-01 23:37:59', '2021-09-01 23:37:59'),
(103, 'general-settings-email-template', 'admin', '2021-09-01 23:37:59', '2021-09-01 23:37:59'),
(104, 'general-settings-email-settings', 'admin', '2021-09-01 23:37:59', '2021-09-01 23:37:59'),
(105, 'general-settings-smtp-settings', 'admin', '2021-09-01 23:37:59', '2021-09-01 23:37:59'),
(108, 'general-settings-custom-css', 'admin', '2021-09-01 23:37:59', '2021-09-01 23:37:59'),
(109, 'general-settings-custom-js', 'admin', '2021-09-01 23:37:59', '2021-09-01 23:37:59'),
(110, 'general-settings-licence-settings', 'admin', '2021-09-01 23:38:00', '2021-09-01 23:38:00'),
(111, 'general-settings-cache-settings', 'admin', '2021-09-01 23:38:00', '2021-09-01 23:38:00'),
(112, 'language-list', 'admin', '2021-09-01 23:38:01', '2021-09-01 23:38:01'),
(113, 'language-create', 'admin', '2021-09-01 23:38:01', '2021-09-01 23:38:01'),
(114, 'language-edit', 'admin', '2021-09-01 23:38:01', '2021-09-01 23:38:01'),
(115, 'language-delete', 'admin', '2021-09-01 23:38:01', '2021-09-01 23:38:01'),
(119, 'appearance-menu-create', 'admin', '2021-09-05 05:15:19', '2021-09-05 05:15:19'),
(120, 'blog-tag-list', 'admin', NULL, NULL),
(121, 'blog-tag-create', 'admin', '2021-10-28 04:14:02', '2021-10-28 04:14:02'),
(122, 'blog-tag-edit', 'admin', '2021-10-28 04:14:02', '2021-10-28 04:14:02'),
(123, 'blog-tag-delete', 'admin', '2021-10-28 04:14:02', '2021-10-28 04:14:02'),
(124, 'blog-trashed-list', 'admin', '2021-10-28 04:14:02', '2021-10-28 04:14:02'),
(125, 'blog-trashed-restore', 'admin', '2021-10-28 04:14:02', '2021-10-28 04:14:02'),
(126, 'blog-trashed-delete', 'admin', '2021-10-28 04:14:02', '2021-10-28 04:14:02'),
(150, 'general-settings-reading-settings', 'admin', '2021-10-28 04:14:04', '2021-10-28 04:14:04'),
(151, 'general-settings-global-navbar-settings', 'admin', '2021-10-28 04:14:04', '2021-10-28 04:14:04'),
(152, 'general-settings-global-footer-settings', 'admin', '2021-10-28 04:14:04', '2021-10-28 04:14:04'),
(184, 'category-status', 'admin', '2022-01-16 02:46:33', '2022-01-16 02:46:33'),
(185, 'subcategory-list', 'admin', '2022-01-16 02:46:33', '2022-01-16 02:46:33'),
(186, 'subcategory-create', 'admin', '2022-01-16 02:46:33', '2022-01-16 02:46:33'),
(187, 'subcategory-edit', 'admin', '2022-01-16 02:46:33', '2022-01-16 02:46:33'),
(188, 'subcategory-delete', 'admin', '2022-01-16 02:46:33', '2022-01-16 02:46:33'),
(189, 'subcategory-status', 'admin', '2022-01-16 02:46:33', '2022-01-16 02:46:33'),
(190, 'brand-list', 'admin', '2022-01-16 02:46:33', '2022-01-16 02:46:33'),
(191, 'brand-create', 'admin', '2022-01-16 02:46:34', '2022-01-16 02:46:34'),
(192, 'brand-edit', 'admin', '2022-01-16 02:46:34', '2022-01-16 02:46:34'),
(193, 'brand-delete', 'admin', '2022-01-16 02:46:34', '2022-01-16 02:46:34'),
(194, 'country-list', 'admin', '2022-01-16 02:46:34', '2022-01-16 02:46:34'),
(195, 'country-create', 'admin', '2022-01-16 02:46:34', '2022-01-16 02:46:34'),
(196, 'country-edit', 'admin', '2022-01-16 02:46:34', '2022-01-16 02:46:34'),
(197, 'country-delete', 'admin', '2022-01-16 02:46:34', '2022-01-16 02:46:34'),
(198, 'country-status', 'admin', '2022-01-16 02:46:34', '2022-01-16 02:46:34'),
(199, 'city-list', 'admin', '2022-01-16 02:46:34', '2022-01-16 02:46:34'),
(200, 'city-create', 'admin', '2022-01-16 02:46:34', '2022-01-16 02:46:34'),
(201, 'city-edit', 'admin', '2022-01-16 02:46:34', '2022-01-16 02:46:34'),
(202, 'city-delete', 'admin', '2022-01-16 02:46:34', '2022-01-16 02:46:34'),
(203, 'city-status', 'admin', '2022-01-16 02:46:34', '2022-01-16 02:46:34'),
(204, 'area-list', 'admin', '2022-01-16 02:46:34', '2022-01-16 02:46:34'),
(205, 'area-create', 'admin', '2022-01-16 02:46:34', '2022-01-16 02:46:34'),
(206, 'area-edit', 'admin', '2022-01-16 02:46:34', '2022-01-16 02:46:34'),
(207, 'area-delete', 'admin', '2022-01-16 02:46:35', '2022-01-16 02:46:35'),
(208, 'area-status', 'admin', '2022-01-16 02:46:35', '2022-01-16 02:46:35'),
(209, 'service-list', 'admin', '2022-01-16 02:46:35', '2022-01-16 02:46:35'),
(210, 'service-delete', 'admin', '2022-01-16 02:46:35', '2022-01-16 02:46:35'),
(211, 'service-status', 'admin', '2022-01-16 02:46:35', '2022-01-16 02:46:35'),
(212, 'service-view', 'admin', '2022-01-16 02:46:35', '2022-01-16 02:46:35'),
(213, 'order-list', 'admin', '2022-01-16 02:46:35', '2022-01-16 02:46:35'),
(214, 'order-delete', 'admin', '2022-01-16 02:46:35', '2022-01-16 02:46:35'),
(216, 'order-view', 'admin', '2022-01-16 02:46:35', '2022-01-16 02:46:35'),
(227, 'payout-list', 'admin', '2022-02-08 04:21:08', '2022-02-08 04:21:08'),
(228, 'payout-edit', 'admin', '2022-02-08 04:21:08', '2022-02-08 04:21:08'),
(229, 'admin-commission', 'admin', '2022-02-08 04:21:08', '2022-02-08 04:21:08'),
(230, 'amount-settings', 'admin', '2022-02-08 04:21:08', '2022-02-08 04:21:08'),
(232, 'payout-delete', 'admin', '2022-02-08 04:36:26', '2022-02-08 04:36:26'),
(233, 'payout-view', 'admin', '2022-02-08 04:36:26', '2022-02-08 04:36:26'),
(234, 'blog-detail-setting', 'admin', '2022-02-12 23:36:27', '2022-02-12 23:36:27'),
(235, 'service-book-setting', 'admin', '2022-02-12 23:36:27', '2022-02-12 23:36:27'),
(236, 'service-detail-setting', 'admin', '2022-02-12 23:36:27', '2022-02-12 23:36:27'),
(237, 'ticket-list', 'admin', '2022-04-23 03:33:03', '2022-04-23 03:33:03'),
(238, 'ticket-view', 'admin', '2022-04-23 03:33:03', '2022-04-23 03:33:03'),
(239, 'ticket-delete', 'admin', '2022-04-23 03:33:03', '2022-04-23 03:33:03'),
(240, 'slider-list', 'admin', '2022-04-23 03:33:03', '2022-04-23 03:33:03'),
(241, 'slider-edit', 'admin', '2022-04-23 03:33:04', '2022-04-23 03:33:04'),
(242, 'slider-delete', 'admin', '2022-04-23 03:33:04', '2022-04-23 03:33:04'),
(243, 'subscription-list', 'admin', '2022-09-06 01:42:40', '2022-09-06 01:42:40'),
(244, 'seller-subscription-list', 'admin', '2022-09-06 01:42:40', '2022-09-06 01:42:40'),
(245, 'subscription-coupon-list', 'admin', '2022-09-06 01:42:40', '2022-09-06 01:42:40'),
(246, 'subscription-reminder', 'admin', '2022-09-06 01:42:40', '2022-09-06 01:42:40'),
(247, 'job-list', 'admin', '2022-10-18 06:12:45', '2022-10-18 06:12:45'),
(248, 'job-status', 'admin', '2022-10-18 06:12:45', '2022-10-18 06:12:45'),
(249, 'job-delete', 'admin', '2022-10-18 06:12:45', '2022-10-18 06:12:45'),
(250, 'wallet-list', 'admin', '2022-11-09 05:23:22', '2022-11-09 05:23:22'),
(251, 'wallet-history', 'admin', '2022-11-09 05:23:22', '2022-11-09 05:23:22');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(9, 'App\\User', 151, 'qixerapi_keys', 'aa5ec641cde79bb02f419518785d4c92c54cadacca08d15b6205a7472f0f5b70', '[\"*\"]', NULL, '2022-04-19 23:02:45', '2022-04-19 23:02:45'),
(18, 'App\\User', 250, 'qixerapi_keys', 'd621c860e64336c70d65150e3689133a89e1c7244e0ec959a44eed1485cf566c', '[\"*\"]', '2022-06-01 17:36:36', '2022-06-01 17:36:34', '2022-06-01 17:36:36'),
(19, 'App\\User', 251, 'qixerapi_keys', 'c1b9f26371709d0c6862ed3313434459cf1886cb9e48affa34253140e1a612ea', '[\"*\"]', '2022-06-01 17:39:44', '2022-06-01 17:39:15', '2022-06-01 17:39:44'),
(20, 'App\\User', 252, 'qixerapi_keys', '4e17f7eb1fe73e0760ba281af1d3953e5755c67db7a2e28d525a6fecf0ff7ea7', '[\"*\"]', NULL, '2022-06-01 18:12:25', '2022-06-01 18:12:25'),
(21, 'App\\User', 253, 'qixerapi_keys', 'bfebca92f5b0d1e8a052064235704850ada7701649739d98a924d42f156b5142', '[\"*\"]', NULL, '2022-06-01 18:16:53', '2022-06-01 18:16:53'),
(22, 'App\\User', 251, 'qixerapi_keys', '1e083584ed96f180a7a0bc8488f73c26074e2be063ee3e194651fc9b29224a97', '[\"*\"]', NULL, '2022-06-01 20:49:18', '2022-06-01 20:49:18'),
(81, 'App\\User', 256, 'qixerapi_keys', '7ca3dcd17ea3bfd57183ec3be8701e53630d4d6c587de20187c02d0cd249e2d6', '[\"*\"]', '2022-06-02 18:35:32', '2022-06-02 18:34:58', '2022-06-02 18:35:32'),
(82, 'App\\User', 256, 'qixerapi_keys', 'de789b9e250cb82956b9cd1be142156d2a6563c3a465a86465a52baf3342b408', '[\"*\"]', '2022-06-02 18:37:52', '2022-06-02 18:37:31', '2022-06-02 18:37:52'),
(83, 'App\\User', 256, 'qixerapi_keys', '4278499e36db422054bdcf43e9caebc930961e254361c8fb7a6d6a5e78d14e88', '[\"*\"]', '2022-06-02 18:39:21', '2022-06-02 18:38:57', '2022-06-02 18:39:21'),
(84, 'App\\User', 256, 'qixerapi_keys', '7ee09d82f3da6da16ddbef64bfd2006a80ce6ebd3bfbb841997c23e9aa0f4586', '[\"*\"]', '2022-06-02 18:40:03', '2022-06-02 18:39:44', '2022-06-02 18:40:03'),
(85, 'App\\User', 256, 'qixerapi_keys', 'd727967bb8f2647cb25f8ec042521d96c67b356a3d28cf9e93c03ffe9807ccd9', '[\"*\"]', '2022-06-02 18:40:59', '2022-06-02 18:40:46', '2022-06-02 18:40:59'),
(86, 'App\\User', 256, 'qixerapi_keys', '7919ac5afa98ed788955407b70fa26175ad1072128de49e7aacf5bb4ffc5650b', '[\"*\"]', '2022-06-02 18:41:33', '2022-06-02 18:41:32', '2022-06-02 18:41:33'),
(87, 'App\\User', 256, 'qixerapi_keys', '4a5895489dfda5421c8be3e49003ebcc6fda3f2885f3ba95a8eb81bc4bbbcecc', '[\"*\"]', '2022-06-02 18:46:56', '2022-06-02 18:42:47', '2022-06-02 18:46:56'),
(88, 'App\\User', 256, 'qixerapi_keys', '406224cddfdccc3a9fa79b95df75a4a3c3734a5384085372a364d74b647a330a', '[\"*\"]', '2022-06-02 18:49:45', '2022-06-02 18:49:44', '2022-06-02 18:49:45'),
(93, 'App\\User', 256, 'qixerapi_keys', '4127e2169eac4dc69d8c67dd40bfda69b69935aec945d79aa4d3ebe46b3136c7', '[\"*\"]', '2022-06-02 19:06:24', '2022-06-02 19:06:22', '2022-06-02 19:06:24'),
(94, 'App\\User', 256, 'qixerapi_keys', 'c88acaebec8e8427dfcc13a30fac8ff87e2089c1eb919e501d45ce42b638389a', '[\"*\"]', '2022-06-02 19:06:40', '2022-06-02 19:06:38', '2022-06-02 19:06:40'),
(95, 'App\\User', 256, 'qixerapi_keys', 'bef0a24a7a938665d76b3ff867dc5fcdbf68ccfe04b003c1c9b3d3a24cfb6604', '[\"*\"]', '2022-06-02 19:06:56', '2022-06-02 19:06:55', '2022-06-02 19:06:56'),
(96, 'App\\User', 256, 'qixerapi_keys', '96c708f48dac24925dc9d3d060d1bd5e3fe21cebf6505379b28e84d6cc32183b', '[\"*\"]', '2022-06-02 20:35:17', '2022-06-02 20:26:16', '2022-06-02 20:35:17'),
(98, 'App\\User', 256, 'qixerapi_keys', '60b14b625036cab461f9a1f7ce61d4389d04ab3b2672505af2c5fbe5e54118f4', '[\"*\"]', '2022-06-02 20:38:14', '2022-06-02 20:37:44', '2022-06-02 20:38:14'),
(99, 'App\\User', 256, 'qixerapi_keys', '7e4c5343abf56acf787e5a0fb8298985ce32919e714bce1dfda58653310d2b9a', '[\"*\"]', '2022-06-02 20:49:31', '2022-06-02 20:47:39', '2022-06-02 20:49:31'),
(100, 'App\\User', 256, 'qixerapi_keys', 'ce6c8ca873bc2f7f779cd9803a6ebda7e0a95caad925fceadce2bcb0cd0af3d5', '[\"*\"]', '2022-06-02 20:53:27', '2022-06-02 20:51:57', '2022-06-02 20:53:27'),
(109, 'App\\User', 256, 'qixerapi_keys', '9582b99d07779ce140bd949f9aa9e8446ac20e92c9a0add9e811c4a2679203bc', '[\"*\"]', '2022-06-02 21:01:17', '2022-06-02 21:01:15', '2022-06-02 21:01:17'),
(110, 'App\\User', 256, 'qixerapi_keys', '74c795772271a867560d19aac57a79b47fe71e856248c74aafc48d511015de06', '[\"*\"]', '2022-06-02 21:01:36', '2022-06-02 21:01:34', '2022-06-02 21:01:36'),
(118, 'App\\User', 258, 'qixerapi_keys', 'ce7a9b32a807bf9ace842be2f61e542c3d53b4bebd66fbee327a0c805514e71e', '[\"*\"]', '2022-06-03 04:05:43', '2022-06-03 04:01:46', '2022-06-03 04:05:43'),
(119, 'App\\User', 259, 'qixerapi_keys', 'a190d7a2f4afee634337d2fea9c428e5a67c5956947a15621646db8f5c4c2846', '[\"*\"]', NULL, '2022-06-03 08:51:16', '2022-06-03 08:51:16'),
(120, 'App\\User', 260, 'qixerapi_keys', '44b485404ab5114d947d938269091867c6309c618e4a49f0ef129328b1e7ba37', '[\"*\"]', NULL, '2022-06-03 08:52:37', '2022-06-03 08:52:37'),
(122, 'App\\User', 261, 'qixerapi_keys', '464685a264b554bc0bf3fb046521444ba50ee8ddb26d042eb0ac2f9a5ea2205a', '[\"*\"]', '2022-06-03 09:00:31', '2022-06-03 08:58:07', '2022-06-03 09:00:31'),
(131, 'App\\User', 258, 'qixerapi_keys', '08c486458e1e5e1d66797abdf46d2136c2434f9f27d4d4c054b087988913b4d3', '[\"*\"]', '2022-06-03 11:58:50', '2022-06-03 11:58:33', '2022-06-03 11:58:50'),
(132, 'App\\User', 261, 'qixerapi_keys', '84238b28b3ae15a1c846c447861abb76b46e91e3de7149ae342026724a548d0a', '[\"*\"]', '2022-06-03 14:30:06', '2022-06-03 14:28:56', '2022-06-03 14:30:06'),
(133, 'App\\User', 261, 'qixerapi_keys', '5dd7d2cf96bff7a8a6d3ab661f2b119594ad652f6f564c9693ce4cd9b3048d40', '[\"*\"]', '2022-06-03 14:31:03', '2022-06-03 14:30:37', '2022-06-03 14:31:03'),
(134, 'App\\User', 261, 'qixerapi_keys', '7a305a5d1f8f588c27dec9ae533fb753620ac135a2dd2cee2ada8414ef54646c', '[\"*\"]', '2022-06-03 14:31:29', '2022-06-03 14:31:27', '2022-06-03 14:31:29'),
(135, 'App\\User', 261, 'qixerapi_keys', '52278f4dfbd5909a1efe542185748eed8725c346029736fe477c3b336c79c552', '[\"*\"]', '2022-06-03 14:31:39', '2022-06-03 14:31:38', '2022-06-03 14:31:39'),
(136, 'App\\User', 261, 'qixerapi_keys', 'a551e1ef58ddef9f27e596da46b01e0ce1370c6dc75de1d8ff63ca5629233aac', '[\"*\"]', '2022-06-03 14:37:16', '2022-06-03 14:33:16', '2022-06-03 14:37:16'),
(137, 'App\\User', 261, 'qixerapi_keys', '22da3c95ed9287ddf476c01bd38be7292f452a37e4604f1fda4b03d44d1470fd', '[\"*\"]', '2022-06-03 14:58:01', '2022-06-03 14:58:00', '2022-06-03 14:58:01'),
(138, 'App\\User', 262, 'qixerapi_keys', '82018ebbe453e7a4386524b036d291fa1eb372aefb9450b1c4aff8c0f9d95790', '[\"*\"]', '2022-06-03 16:00:37', '2022-06-03 15:52:32', '2022-06-03 16:00:37'),
(139, 'App\\User', 261, 'qixerapi_keys', 'd731314126ede82f5df92ae3640af8f2cde60f92e39a79df25dfdee828e6e0d1', '[\"*\"]', '2022-06-03 16:28:37', '2022-06-03 16:25:16', '2022-06-03 16:28:37'),
(144, 'App\\User', 262, 'qixerapi_keys', '1379f1cef8affd2c81628431d36225a7479d9e1b304c13db5fa9d4317a0c3841', '[\"*\"]', '2022-06-03 18:06:30', '2022-06-03 18:06:29', '2022-06-03 18:06:30'),
(145, 'App\\User', 262, 'qixerapi_keys', 'fb2ff082c7f724fa7eff38c9ead9943b515533a293e84a16fcda2fcd00d8e7ef', '[\"*\"]', '2022-06-03 18:06:52', '2022-06-03 18:06:51', '2022-06-03 18:06:52'),
(146, 'App\\User', 262, 'qixerapi_keys', 'd882b64100df8d9027683fb51aac3973cd5378dbf5c3f829ff962948aabb5bdb', '[\"*\"]', '2022-06-03 18:30:03', '2022-06-03 18:30:02', '2022-06-03 18:30:03'),
(147, 'App\\User', 262, 'qixerapi_keys', 'e6743d300a469042339f0383333ccd86223c4df4f40e22d239874c9b9ffe8eca', '[\"*\"]', '2022-06-03 18:30:14', '2022-06-03 18:30:13', '2022-06-03 18:30:14'),
(148, 'App\\User', 262, 'qixerapi_keys', '0f38b09c1dc292763124b18192806e16e67ed13518e1765b76cb81d21c5a0e28', '[\"*\"]', '2022-06-03 18:31:12', '2022-06-03 18:31:11', '2022-06-03 18:31:12'),
(151, 'App\\User', 265, 'qixerapi_keys', 'e79e080661740c17c37b5d550ab5aa980ee1c2626057d7935556aae58c9278f7', '[\"*\"]', '2022-06-04 00:43:55', '2022-06-04 00:35:18', '2022-06-04 00:43:55'),
(152, 'App\\User', 265, 'qixerapi_keys', '45c7d8631657c6982fccf1b2e14ddacab0217b244f9d6966a75065efadd293f9', '[\"*\"]', '2022-06-04 02:41:55', '2022-06-04 02:40:05', '2022-06-04 02:41:55'),
(153, 'App\\User', 256, 'qixerapi_keys', '7906791f946fb6a2ea106594bbc67a17739ef2aaccc2499d0372a6b2a1a917c9', '[\"*\"]', '2022-06-04 04:01:17', '2022-06-04 04:01:09', '2022-06-04 04:01:17'),
(154, 'App\\User', 256, 'qixerapi_keys', '91ed9c0abb2abb9485a4e8cd79394510242c101b6cc4998e2125bbc9b85e8aeb', '[\"*\"]', '2022-06-04 07:41:56', '2022-06-04 07:41:55', '2022-06-04 07:41:56'),
(177, 'App\\User', 268, 'qixerapi_keys', '71f4bb8b12eb5955ce2c8ee4783616b8ee14da66108cca8a8da35eb5e9a7ffa2', '[\"*\"]', '2022-06-04 11:50:06', '2022-06-04 11:39:22', '2022-06-04 11:50:06'),
(199, 'App\\User', 272, 'qixerapi_keys', '4d13ff622d396de8faef823c3e006a15e0e1270332f9426811b3781f8c8c7b19', '[\"*\"]', '2022-06-04 15:14:22', '2022-06-04 15:13:33', '2022-06-04 15:14:22'),
(200, 'App\\User', 272, 'qixerapi_keys', '99594c43567aecf2ca90d4b5fec50a36d8f859c46ba695a0b434bef2f549d003', '[\"*\"]', '2022-06-04 15:46:47', '2022-06-04 15:46:45', '2022-06-04 15:46:47'),
(201, 'App\\User', 272, 'qixerapi_keys', 'a8238d823e1dd0db6eb95091d105f2c092d40555a3972b37ab050f7611e4aac8', '[\"*\"]', '2022-06-04 15:47:31', '2022-06-04 15:47:29', '2022-06-04 15:47:31'),
(204, 'App\\User', 274, 'qixerapi_keys', 'e08b2f0685d3eced5e33e1b3303361ce4a9e22af606f6600149c15ca4af40258', '[\"*\"]', '2022-06-04 17:09:03', '2022-06-04 17:09:02', '2022-06-04 17:09:03'),
(205, 'App\\User', 261, 'qixerapi_keys', 'b82b84d2bf93cf2eef4253824a784af76d02c6a560545d06afd75dc651438a58', '[\"*\"]', '2022-06-04 20:31:37', '2022-06-04 19:28:28', '2022-06-04 20:31:37'),
(208, 'App\\User', 257, 'qixerapi_keys', 'e2248beafde6bd945611cd870bcf898927db4c1e1e159e1d3b8bdba9ee515a58', '[\"*\"]', '2022-06-04 22:15:43', '2022-06-04 22:15:42', '2022-06-04 22:15:43'),
(209, 'App\\User', 257, 'qixerapi_keys', '7ac0c24a04855e02d86daa0c43a533f132a96c2cc9a0870583c7b9d9b3aaea58', '[\"*\"]', '2022-06-04 23:39:08', '2022-06-04 23:39:07', '2022-06-04 23:39:08'),
(210, 'App\\User', 257, 'qixerapi_keys', 'a65be9669c01cc08e50bc7c4b2654f7d8bbc357ba43a0edeaad00c59ee816492', '[\"*\"]', '2022-06-05 00:17:29', '2022-06-05 00:17:27', '2022-06-05 00:17:29'),
(211, 'App\\User', 257, 'qixerapi_keys', 'bae90ca2b8904e3fc8ca5818f2387b4fa9d0a31cb181614d258db8bacb919539', '[\"*\"]', '2022-06-05 00:17:41', '2022-06-05 00:17:40', '2022-06-05 00:17:41'),
(212, 'App\\User', 257, 'qixerapi_keys', '78963518e0d7c34ee056bc8f3bc821cedd7db500aeaabb8b4555a0dd47d7f9ec', '[\"*\"]', '2022-06-05 00:17:57', '2022-06-05 00:17:56', '2022-06-05 00:17:57'),
(213, 'App\\User', 257, 'qixerapi_keys', 'bb66494b1309a57430fedc3e14e0102a30b76131247ff2b57de4782687f6372c', '[\"*\"]', '2022-06-05 01:05:21', '2022-06-05 01:05:20', '2022-06-05 01:05:21'),
(214, 'App\\User', 257, 'qixerapi_keys', 'aef5a7502ac9a7ffeea532ba9f4529ba79b84eeeab2fc68cdcc77d60780fe1ba', '[\"*\"]', '2022-06-05 08:38:10', '2022-06-05 08:38:01', '2022-06-05 08:38:10'),
(215, 'App\\User', 265, 'qixerapi_keys', '113b823b2a950b9a6b20e516c9c50cc095a2138f553821c65caa6e7869673131', '[\"*\"]', '2022-06-05 10:41:56', '2022-06-05 09:49:08', '2022-06-05 10:41:56'),
(216, 'App\\User', 257, 'qixerapi_keys', '65c202efe954bb88415472cecd9088890853ebd9de2121a39b06b54d61100975', '[\"*\"]', '2022-06-05 17:34:16', '2022-06-05 17:34:15', '2022-06-05 17:34:16'),
(224, 'App\\User', 279, 'qixerapi_keys', '81ffc3df67b41182cf92a3656b7780be7099e573b453e8be489f24b578c7913b', '[\"*\"]', '2022-06-06 09:18:00', '2022-06-06 09:15:41', '2022-06-06 09:18:00'),
(242, 'App\\User', 280, 'qixerapi_keys', '5d2d928e853f53c99293dc0083a3cd3189a42490a19bce6fcec056a386129159', '[\"*\"]', '2022-06-06 12:39:55', '2022-06-06 12:37:13', '2022-06-06 12:39:55'),
(244, 'App\\User', 268, 'qixerapi_keys', '365133dd6c1597598d17dc5794f0e176b5cf92951b9b6f927a90e0feb7a4ba40', '[\"*\"]', '2022-06-06 14:04:38', '2022-06-06 14:03:15', '2022-06-06 14:04:38'),
(245, 'App\\User', 268, 'qixerapi_keys', '3ca6553676fd4f4bb00bd43d3fa7af0abb80f7943de0774b05ec584f7c5919fd', '[\"*\"]', '2022-06-06 15:34:00', '2022-06-06 14:12:26', '2022-06-06 15:34:00'),
(247, 'App\\User', 265, 'qixerapi_keys', 'dbdd1315a59cc32062b2d524e6d70b308bba83fc7dae5d27ccbb814b4f3b5e81', '[\"*\"]', '2022-06-06 14:49:56', '2022-06-06 14:49:02', '2022-06-06 14:49:56'),
(248, 'App\\User', 261, 'qixerapi_keys', 'f5919457982d4f1ce50d9db4eb2e743372ad734769c50217da74937eda82487e', '[\"*\"]', '2022-06-06 05:59:28', '2022-06-06 05:58:48', '2022-06-06 05:59:28'),
(249, 'App\\User', 257, 'qixerapi_keys', 'c250985ceb485097a4a4d63c27b33af9fa0fb96acd8072dd06a431871bca62ca', '[\"*\"]', '2022-06-06 07:39:50', '2022-06-06 07:39:49', '2022-06-06 07:39:50'),
(250, 'App\\User', 283, 'qixerapi_keys', '9603c98f17b277282f408947ca14d0e1d8c58f44b9b0da17233d73571d45d34e', '[\"*\"]', '2022-06-06 09:43:35', '2022-06-06 09:43:33', '2022-06-06 09:43:35'),
(251, 'App\\User', 283, 'qixerapi_keys', 'bed1b9850697b0fed534fbd287418425b5c79a74c82dba501b060d1f4caa01c3', '[\"*\"]', '2022-06-06 09:46:08', '2022-06-06 09:43:35', '2022-06-06 09:46:08'),
(252, 'App\\User', 258, 'qixerapi_keys', '6e023993d3348c3449fe006ee03ad5aad52e7743330714eee356aee04c6fa35f', '[\"*\"]', '2022-06-06 13:40:53', '2022-06-06 13:40:51', '2022-06-06 13:40:53'),
(253, 'App\\User', 257, 'qixerapi_keys', '42dedf87b4dc4075443aaa28f1f2e97754a9e8acba5f223bf148c2c9a1f59d16', '[\"*\"]', '2022-06-06 20:41:21', '2022-06-06 20:41:20', '2022-06-06 20:41:21'),
(254, 'App\\User', 265, 'qixerapi_keys', '25a774d1a667bea09dd6f7e74aead7d33aadbbb5411919e4f95bc45723aac769', '[\"*\"]', '2022-06-07 09:38:43', '2022-06-07 09:36:52', '2022-06-07 09:38:43'),
(257, 'App\\User', 286, 'qixerapi_keys', '1c171040b8348c4e39973ae60900862bf0d7e986f8632fab462c9113963dbe18', '[\"*\"]', '2022-06-07 21:01:16', '2022-06-07 20:56:25', '2022-06-07 21:01:16'),
(258, 'App\\User', 287, 'qixerapi_keys', 'c46eeefcafac1dcc9cc5ac3332a73b6be34cbb3eabb39227accf70d92730e3ac', '[\"*\"]', '2022-06-07 21:45:01', '2022-06-07 21:45:00', '2022-06-07 21:45:01'),
(261, 'App\\User', 289, 'qixerapi_keys', '9c7f45105aab6ea7a8ef05214718713002de89317c3c4dcff5886b9908112760', '[\"*\"]', '2022-06-07 23:59:11', '2022-06-07 23:56:37', '2022-06-07 23:59:11'),
(262, 'App\\User', 290, 'qixerapi_keys', 'f6d6c5dec1e4381921c2b44417ee343903bf7248ee020eaa31570096b5c3c769', '[\"*\"]', '2022-06-07 23:58:38', '2022-06-07 23:58:36', '2022-06-07 23:58:38'),
(266, 'App\\User', 292, 'qixerapi_keys', '45ecb076c70bc493cafd3eac4398b8300426d047b1cbeea9da127af37b8077ff', '[\"*\"]', NULL, '2022-06-08 00:55:40', '2022-06-08 00:55:40'),
(267, 'App\\User', 292, 'qixerapi_keys', '73beff148c592f40c1d358e71b47d99b7480efb16df479eb7320f5c98240d8dd', '[\"*\"]', '2022-06-08 01:10:18', '2022-06-08 01:05:58', '2022-06-08 01:10:18'),
(269, 'App\\User', 293, 'qixerapi_keys', 'c00920c3674ed8d3708dfdfaee3d527ce092250065b61587eff40d7de341c2ab', '[\"*\"]', '2022-06-08 01:40:39', '2022-06-08 01:40:38', '2022-06-08 01:40:39'),
(270, 'App\\User', 294, 'qixerapi_keys', 'ee73bc647d31fa80154c1be21899adde0404b1cd6a4c7f62883c9f6469133e31', '[\"*\"]', '2022-06-08 01:52:14', '2022-06-08 01:49:23', '2022-06-08 01:52:14'),
(271, 'App\\User', 295, 'qixerapi_keys', '12d404c021ebb65b1123de70dd8b09985c8a82122dde9ae1d93ce23505c234f9', '[\"*\"]', '2022-06-08 01:55:54', '2022-06-08 01:51:53', '2022-06-08 01:55:54'),
(272, 'App\\User', 265, 'qixerapi_keys', 'b8177a76c50d0b0b71af21bf85a7c15ff43551c363ab4e258ac583533fc2e9a8', '[\"*\"]', '2022-06-08 01:54:58', '2022-06-08 01:52:26', '2022-06-08 01:54:58'),
(274, 'App\\User', 297, 'qixerapi_keys', '16672866970a0fa47cae88858cbabd9c0caed995fc0d295ef3153735643c9069', '[\"*\"]', '2022-06-08 02:12:21', '2022-06-08 02:09:09', '2022-06-08 02:12:21'),
(275, 'App\\User', 218, 'qixerapi_keys', '12cdc905fc45690ebffb9eef24c4d9885ab2b4fa21eb349bc3191aa1d4fa4878', '[\"*\"]', '2022-06-08 02:22:47', '2022-06-08 02:20:28', '2022-06-08 02:22:47'),
(279, 'App\\User', 265, 'qixerapi_keys', '83b9c39f469313b64d3bf392e60d87e6c847223b4b2527c849ebbb0b27cb7606', '[\"*\"]', '2022-06-08 02:47:23', '2022-06-08 02:47:01', '2022-06-08 02:47:23'),
(280, 'App\\User', 300, 'qixerapi_keys', '829d3d9d938ac9f60c1bc5082ecfc6850994bdaa47406c67bd6526f6122a9f64', '[\"*\"]', NULL, '2022-06-08 02:53:59', '2022-06-08 02:53:59'),
(281, 'App\\User', 301, 'qixerapi_keys', '67ae555bda36cd373da21f694fde1d5cbed15acecda2fa0a2e85c0e417bb50fb', '[\"*\"]', NULL, '2022-06-08 02:59:48', '2022-06-08 02:59:48'),
(283, 'App\\User', 299, 'qixerapi_keys', 'b54cf0da054f486e1b4b6a6c2b130176cadf40ace2a6187856c1ceb1310c670b', '[\"*\"]', '2022-06-08 03:26:35', '2022-06-08 03:03:34', '2022-06-08 03:26:35'),
(294, 'App\\User', 303, 'qixerapi_keys', '6618414a1d4e75a005fad3e14f8b5eb43917b18043de397a2b3ea31c35e6aa14', '[\"*\"]', '2022-06-08 03:57:37', '2022-06-08 03:56:56', '2022-06-08 03:57:37'),
(296, 'App\\User', 257, 'qixerapi_keys', '0fa8c12cc58529844942d30ae66a281de4206bc02e6e5b7fe6e9dd933eccb7d3', '[\"*\"]', '2022-06-08 04:23:41', '2022-06-08 03:59:44', '2022-06-08 04:23:41'),
(297, 'App\\User', 304, 'qixerapi_keys', '5a2992d920a9d6e40ea93881381aa54ab82a61ae2b23bc0f09328725defa6d77', '[\"*\"]', '2022-06-08 04:17:29', '2022-06-08 04:14:44', '2022-06-08 04:17:29'),
(299, 'App\\User', 297, 'qixerapi_keys', 'eab0a6a206111b9e707ccd3dedcb8a4682d0573506aca81ae51f51c3f9a44051', '[\"*\"]', '2022-06-08 04:18:15', '2022-06-08 04:18:14', '2022-06-08 04:18:15'),
(304, 'App\\User', 304, 'qixerapi_keys', '564393c9b74b76d7c32b7bba434f7ec1c3d32a61fa9aca588b6c878fa9a188dd', '[\"*\"]', '2022-06-08 04:27:48', '2022-06-08 04:27:46', '2022-06-08 04:27:48'),
(305, 'App\\User', 305, 'qixerapi_keys', 'bcc2b8b15a5fa7220e2d0894ecd6f79403b57a1101537c83917145f9f90dc258', '[\"*\"]', '2022-06-08 04:47:37', '2022-06-08 04:45:20', '2022-06-08 04:47:37'),
(307, 'App\\User', 274, 'qixerapi_keys', '05fe8ff284325ae322c0517559db1d9987bdd18aedbad6caec5646b75d352ea3', '[\"*\"]', '2022-06-08 06:01:34', '2022-06-08 05:59:08', '2022-06-08 06:01:34'),
(309, 'App\\User', 307, 'qixerapi_keys', '199276342be3691d7be2198ea6e1f4488479e36da326a185cd702431cf53351c', '[\"*\"]', '2022-06-08 06:24:37', '2022-06-08 06:24:27', '2022-06-08 06:24:37'),
(310, 'App\\User', 218, 'qixerapi_keys', '03f82c63cdadbcd0701b7a43551a9e4ff2825d50e669aacd6f15d108e9f3ef6c', '[\"*\"]', '2022-06-08 07:09:06', '2022-06-08 07:09:05', '2022-06-08 07:09:06'),
(311, 'App\\User', 218, 'qixerapi_keys', '5195b62dd2a2434f9ab60974af0aa6edcf45f4ca38ff7957741e3a58c18dff1e', '[\"*\"]', '2022-06-08 07:09:19', '2022-06-08 07:09:19', '2022-06-08 07:09:19'),
(312, 'App\\User', 218, 'qixerapi_keys', '79bd51114e97f7a42cb9dd295455c273d8768daadfa6ab3fbefda2ec0e4462c2', '[\"*\"]', '2022-06-08 07:09:45', '2022-06-08 07:09:44', '2022-06-08 07:09:45'),
(314, 'App\\User', 294, 'qixerapi_keys', '999eb9a493d79f5033f54c46c2e43bf7aaff7d20082aab1524c42ed456c5eee2', '[\"*\"]', '2022-06-08 07:19:55', '2022-06-08 07:10:09', '2022-06-08 07:19:55'),
(315, 'App\\User', 218, 'qixerapi_keys', '9585e1a381fd983ea2c17f4a5b4105e9a5c5dee67a0d7b528ad0412f044d7764', '[\"*\"]', '2022-06-08 07:10:52', '2022-06-08 07:10:51', '2022-06-08 07:10:52'),
(316, 'App\\User', 218, 'qixerapi_keys', 'c893a9a0a65fa57d4c3c301c0db5b56a134145dff4920694b603e29ea991654a', '[\"*\"]', '2022-06-08 07:11:28', '2022-06-08 07:11:27', '2022-06-08 07:11:28'),
(317, 'App\\User', 218, 'qixerapi_keys', 'bad941a4abb6a7218924353fd2deb59ad291d5140bb68e7e7e07103327fc3208', '[\"*\"]', '2022-06-08 07:11:42', '2022-06-08 07:11:41', '2022-06-08 07:11:42'),
(318, 'App\\User', 308, 'qixerapi_keys', 'd63e582f5b39ded8e9bbcab9a4a17b8416c1266882594d0a18b5fb2ffdd3d333', '[\"*\"]', '2022-06-08 08:16:37', '2022-06-08 08:16:36', '2022-06-08 08:16:37'),
(319, 'App\\User', 309, 'qixerapi_keys', 'd7d862b8061f5712ba9adf1aebf70518e8032f975ba5c1aaeeaf0f253560ab75', '[\"*\"]', '2022-06-08 08:34:19', '2022-06-08 08:31:55', '2022-06-08 08:34:19'),
(320, 'App\\User', 218, 'qixerapi_keys', '784a4187f5303d56e514f037d41b4d72feeb2fbc149db73eb3a98f4d2c9dff16', '[\"*\"]', '2022-06-08 08:57:42', '2022-06-08 08:57:41', '2022-06-08 08:57:42'),
(321, 'App\\User', 310, 'qixerapi_keys', '7d031d6a91961a8f0cf54e8443648a96680d32dad833b0a5f09d7f75cc0044e7', '[\"*\"]', '2022-06-08 08:58:34', '2022-06-08 08:58:33', '2022-06-08 08:58:34'),
(322, 'App\\User', 310, 'qixerapi_keys', 'b4bc6bbc70ebcc7e5cd1f735cbe9d5b4f6500239acb7cef7fde4255b4ad987f2', '[\"*\"]', '2022-06-08 08:59:40', '2022-06-08 08:58:38', '2022-06-08 08:59:40'),
(324, 'App\\User', 309, 'qixerapi_keys', '0e5ea82c7b162768dd6af15a037d7f034013055979938cb3418382281ac7359b', '[\"*\"]', '2022-06-08 09:03:59', '2022-06-08 09:03:58', '2022-06-08 09:03:59'),
(327, 'App\\User', 265, 'qixerapi_keys', 'ff842eb7879b5cc9040cb3695b7414cd943976cbb251435006c046faf978741e', '[\"*\"]', '2022-06-08 10:57:22', '2022-06-08 10:57:21', '2022-06-08 10:57:22'),
(328, 'App\\User', 311, 'qixerapi_keys', 'ff197d9293bb99258c315ef01cb941733e370d1923843eac6bf1488c6c8bf29c', '[\"*\"]', '2022-06-08 11:46:41', '2022-06-08 11:46:39', '2022-06-08 11:46:41'),
(329, 'App\\User', 312, 'qixerapi_keys', '811c74e0b8ae73a2e59d87f430e1a85afb3d130b2b22572a7a697d1ec4d002f5', '[\"*\"]', NULL, '2022-06-08 12:26:56', '2022-06-08 12:26:56'),
(331, 'App\\User', 314, 'qixerapi_keys', 'ea16a061a0c89a3771ef63fcf2d29fd108e6908aaab12b6da97dd40dcc4f183e', '[\"*\"]', '2022-06-08 12:41:26', '2022-06-08 12:41:25', '2022-06-08 12:41:26'),
(332, 'App\\User', 311, 'qixerapi_keys', '9e4d251d18663327b35244548d08e7b3e033c3a856ee356f01ebc109a1d00539', '[\"*\"]', '2022-06-08 13:11:57', '2022-06-08 13:11:55', '2022-06-08 13:11:57'),
(333, 'App\\User', 315, 'qixerapi_keys', '7f0cc464fed6c43fa5dc73f352c5528fe1003cd3f3332b03f362f01186eb245a', '[\"*\"]', NULL, '2022-06-08 13:40:09', '2022-06-08 13:40:09'),
(334, 'App\\User', 316, 'qixerapi_keys', '6a64f24168ce7563c5f3f74f5d9398e06f13f8995e0ca9cdd7c53363c75d424f', '[\"*\"]', '2022-06-08 14:00:48', '2022-06-08 14:00:04', '2022-06-08 14:00:48'),
(336, 'App\\User', 317, 'qixerapi_keys', 'ed9de4b1abde25cff958521e7201ca6e3a2c079b3ee70924513e44e804d2faa2', '[\"*\"]', '2022-06-08 14:12:33', '2022-06-08 14:11:40', '2022-06-08 14:12:33'),
(337, 'App\\User', 265, 'qixerapi_keys', '6b2abb1d791cc04800ffb2d68a4fae5757021396766dc2baa08590f48682a638', '[\"*\"]', '2022-06-08 14:30:40', '2022-06-08 14:28:24', '2022-06-08 14:30:40'),
(338, 'App\\User', 265, 'qixerapi_keys', '1704755999eadeeec320ce67fe5812620442dd8c2ac25990884c9402784ae8ff', '[\"*\"]', '2022-06-08 14:47:21', '2022-06-08 14:47:20', '2022-06-08 14:47:21'),
(339, 'App\\User', 265, 'qixerapi_keys', '1f9613be70c1e8b1edefff87adcc5271cee6830448540265413a9aa2ba2aeeba', '[\"*\"]', '2022-06-08 15:01:16', '2022-06-08 15:01:14', '2022-06-08 15:01:16'),
(340, 'App\\User', 318, 'qixerapi_keys', '2aedd15c1fa3eb57469b894f356340b75c50b7db7db17b5f529d8786e1af7a04', '[\"*\"]', '2022-06-08 15:32:55', '2022-06-08 15:32:54', '2022-06-08 15:32:55'),
(341, 'App\\User', 319, 'qixerapi_keys', 'a6ddeb5185ad8f9aee3f83da8f3fe6c656b671deab3eaa96780397a8ff152529', '[\"*\"]', '2022-06-08 16:29:14', '2022-06-08 16:29:03', '2022-06-08 16:29:14'),
(343, 'App\\User', 283, 'qixerapi_keys', '4e52949f428d5607fd2d0cc559b9529b06a4cebd39f1cf3921220472e9953daa', '[\"*\"]', '2022-06-08 18:55:47', '2022-06-08 18:55:27', '2022-06-08 18:55:47'),
(345, 'App\\User', 321, 'qixerapi_keys', '7063dfc0fba17b6cd3a89aa7defc6bb26df568ae1443d6fd013f7d5243818d4e', '[\"*\"]', '2022-06-08 19:00:18', '2022-06-08 18:56:56', '2022-06-08 19:00:18'),
(347, 'App\\User', 320, 'qixerapi_keys', 'be173910142437f92c35816f57404f12df34c36f025f6d508c4e54a00d02c4ed', '[\"*\"]', '2022-06-08 19:03:09', '2022-06-08 19:01:58', '2022-06-08 19:03:09'),
(349, 'App\\User', 322, 'qixerapi_keys', 'de63f21df29ea01a200d51f3322477bd8a270716ca0623643c17c9fd26fa5cdb', '[\"*\"]', '2022-06-08 19:21:11', '2022-06-08 19:21:10', '2022-06-08 19:21:11'),
(353, 'App\\User', 323, 'qixerapi_keys', '45426df35fce1b74eed6dd1d8547271943a1041f7d4140a82dc2b7f992b0a173', '[\"*\"]', '2022-06-08 23:25:45', '2022-06-08 23:23:28', '2022-06-08 23:25:45'),
(355, 'App\\User', 323, 'qixerapi_keys', 'b9364b6110f8b374058517691d4c7548dd652c50a65fb3cde1a2bd20f38a6dfb', '[\"*\"]', '2022-06-09 01:33:24', '2022-06-09 01:13:19', '2022-06-09 01:33:24'),
(357, 'App\\User', 324, 'qixerapi_keys', '0f1f432dd27571fec3dca79949a2f83b4d6c7667b9be574ac7c2d3754b285647', '[\"*\"]', NULL, '2022-06-09 02:30:15', '2022-06-09 02:30:15'),
(361, 'App\\User', 325, 'qixerapi_keys', '22db2e709deaa3e021d9b712b44d507e9f263a4d4912ed18639b7e543520f1b9', '[\"*\"]', '2022-06-09 03:01:41', '2022-06-09 03:01:41', '2022-06-09 03:01:41'),
(362, 'App\\User', 326, 'qixerapi_keys', '130c63d7890b35d7b646aaf1d053e43f2b954518ef99c9216ffb76a9e77fbb6c', '[\"*\"]', '2022-06-09 03:51:51', '2022-06-09 03:49:16', '2022-06-09 03:51:51'),
(363, 'App\\User', 325, 'qixerapi_keys', '655e769f1cec68a44b897a28576422b7ef6083379af15aab335ef2e45744ba72', '[\"*\"]', '2022-06-09 03:53:59', '2022-06-09 03:53:57', '2022-06-09 03:53:59'),
(364, 'App\\User', 290, 'qixerapi_keys', '1b3d42c86d89fdde8c5279d411f9f84bf8614337334eadb7246cdcd9e901f37c', '[\"*\"]', '2022-06-09 04:03:12', '2022-06-09 04:03:11', '2022-06-09 04:03:12'),
(365, 'App\\User', 325, 'qixerapi_keys', '5cc104b3d482e810bdac1da0badf608cf94add19ffdeed83592586c7549c6b20', '[\"*\"]', '2022-06-09 04:52:02', '2022-06-09 04:52:01', '2022-06-09 04:52:02'),
(366, 'App\\User', 327, 'qixerapi_keys', '5b39dfb6c4d6498843371870b812f283927717d527efd8e27fcadb16eb088da9', '[\"*\"]', NULL, '2022-06-09 05:39:22', '2022-06-09 05:39:22'),
(369, 'App\\User', 328, 'qixerapi_keys', '19d17bcf05670cc86d2419d3e76b14cc41f0fdf4b5d7a444a25a686797dc507b', '[\"*\"]', '2022-06-09 06:38:53', '2022-06-09 06:36:20', '2022-06-09 06:38:53'),
(370, 'App\\User', 328, 'qixerapi_keys', '9107cbdf1c4ee13a65de5df0ce86344882ec3fc57202b32dd6b779037257a2ae', '[\"*\"]', '2022-06-09 06:43:59', '2022-06-09 06:42:53', '2022-06-09 06:43:59'),
(371, 'App\\User', 329, 'qixerapi_keys', '16d7ab7d2380dbed7a74bf577dbd52032828260a021ff8dfd3923c4b408ec562', '[\"*\"]', '2022-06-09 06:43:49', '2022-06-09 06:43:47', '2022-06-09 06:43:49'),
(372, 'App\\User', 328, 'qixerapi_keys', '722f6afdf7498a4cb9935b3d331d07e92e2729ae93814476f8c8bd24ae2d460f', '[\"*\"]', '2022-06-09 07:35:07', '2022-06-09 07:30:33', '2022-06-09 07:35:07'),
(374, 'App\\User', 330, 'qixerapi_keys', '2849350b844a1900eb06b8c29dbda2713578e97312a0da1596c3d5a10b15d8c2', '[\"*\"]', '2022-06-09 09:01:47', '2022-06-09 09:00:05', '2022-06-09 09:01:47'),
(375, 'App\\User', 331, 'qixerapi_keys', '5a3813c762bbfbe73d0dba0bf1b8ce19728fc49eba69d8995e9cdc027a9f69c0', '[\"*\"]', '2022-06-09 09:17:07', '2022-06-09 09:15:40', '2022-06-09 09:17:07'),
(376, 'App\\User', 218, 'qixerapi_keys', '897e91933fe3cbafe996b1c1d1a9894a887ab948c65144fc151ee0b0470ca56e', '[\"*\"]', '2022-06-09 09:46:31', '2022-06-09 09:46:30', '2022-06-09 09:46:31'),
(378, 'App\\User', 333, 'qixerapi_keys', '622df04d0b5b0046281a6bcaa1a075e3279bbd3612c2a82f557ee9362f9c2045', '[\"*\"]', NULL, '2022-06-09 11:30:47', '2022-06-09 11:30:47'),
(380, 'App\\User', 332, 'qixerapi_keys', 'dfd2be859fd80833303b8b452c4a6e02c0455175d8975e3ff348d8801f2d36b2', '[\"*\"]', '2022-06-09 11:48:20', '2022-06-09 11:47:39', '2022-06-09 11:48:20'),
(381, 'App\\User', 335, 'qixerapi_keys', '1e4d5a17fcabc87304e0f88fc3b4f6e0c9ab01d2e34df5d85b657e7858b34b83', '[\"*\"]', '2022-06-09 11:50:10', '2022-06-09 11:49:50', '2022-06-09 11:50:10'),
(382, 'App\\User', 335, 'qixerapi_keys', '2cc9a09f12240e180b3caefebc72d1235f2a69e30ad34f7027a58384b66cefb1', '[\"*\"]', '2022-06-09 11:53:13', '2022-06-09 11:52:11', '2022-06-09 11:53:13'),
(383, 'App\\User', 336, 'qixerapi_keys', 'd87053b18e6a2a05948cf8ea0e42ccbc2d72e1f3a87244ee7d5baf8a3bc19f73', '[\"*\"]', NULL, '2022-06-09 12:00:40', '2022-06-09 12:00:40'),
(384, 'App\\User', 337, 'qixerapi_keys', '47313a18183c2a3e5998d080a1138d76a1f4091ad46d2b2443532b26ff38636e', '[\"*\"]', NULL, '2022-06-09 12:01:37', '2022-06-09 12:01:37'),
(385, 'App\\User', 338, 'qixerapi_keys', '46a8cbe66d5c6edc70334afbd6efec70c0d4e3a595dee07637c1305a465be641', '[\"*\"]', NULL, '2022-06-09 12:03:33', '2022-06-09 12:03:33'),
(386, 'App\\User', 339, 'qixerapi_keys', '75c0e55c05edb82ec32b2498bafb3bbd0c0e4b89e512df8a8976565b561f4d43', '[\"*\"]', '2022-06-09 12:30:24', '2022-06-09 12:27:53', '2022-06-09 12:30:24'),
(387, 'App\\User', 265, 'qixerapi_keys', 'd6f601b39556fd4520091ea87d26391025d67a7e49bfb20fdb8830c744d34c0c', '[\"*\"]', '2022-06-09 13:22:51', '2022-06-09 13:20:36', '2022-06-09 13:22:51'),
(388, 'App\\User', 340, 'qixerapi_keys', '07be88755aacec55998e3c8fdea04dbb03661ffaa5b0acccd2bc039ec34a9fd5', '[\"*\"]', NULL, '2022-06-09 13:23:07', '2022-06-09 13:23:07'),
(390, 'App\\User', 329, 'qixerapi_keys', 'f8182dd64321152d1bfb8a2d0a965bfcde32beea555df8f55a1a4d837c985a24', '[\"*\"]', '2022-06-09 13:44:37', '2022-06-09 13:44:36', '2022-06-09 13:44:37'),
(394, 'App\\User', 341, 'qixerapi_keys', 'a2334437ba7487bacfe0305d9b221cf74d40b1c9d2e165ead0a2c2d261a842b4', '[\"*\"]', '2022-06-09 15:24:02', '2022-06-09 15:23:57', '2022-06-09 15:24:02'),
(395, 'App\\User', 341, 'qixerapi_keys', '325f9530a3bf2dac4749074163cba995ecaf0677c0f38695f58535d135fdef6c', '[\"*\"]', '2022-06-09 15:24:06', '2022-06-09 15:23:58', '2022-06-09 15:24:06'),
(396, 'App\\User', 341, 'qixerapi_keys', '9f501a99b850e0b68e9bbaeb32153d0529ed39f3d24772b58c18cc9025ebe619', '[\"*\"]', '2022-06-09 15:24:08', '2022-06-09 15:23:58', '2022-06-09 15:24:08'),
(399, 'App\\User', 218, 'qixerapi_keys', '878050b95b8f6b63c8e89c841d609b6b2c29797851a4c2b1b5d117a9543c2a6f', '[\"*\"]', '2022-06-09 15:57:39', '2022-06-09 15:53:00', '2022-06-09 15:57:39'),
(400, 'App\\User', 257, 'qixerapi_keys', '0063716ea42696495e656b8049734e9e10a9be6d89f35fb80c2794071db7681c', '[\"*\"]', '2022-06-09 16:25:06', '2022-06-09 16:25:05', '2022-06-09 16:25:06'),
(401, 'App\\User', 265, 'qixerapi_keys', 'ff541220d63da5893d5c072c936270659a255df9bb2294055b43843eb495adc7', '[\"*\"]', '2022-06-09 16:49:15', '2022-06-09 16:49:14', '2022-06-09 16:49:15'),
(402, 'App\\User', 343, 'qixerapi_keys', '2a1899e1e48a642b4bf1937ed916a64b878c6b392f2312f5c0adb5f5c651a9da', '[\"*\"]', NULL, '2022-06-09 16:51:22', '2022-06-09 16:51:22'),
(403, 'App\\User', 343, 'qixerapi_keys', '7f26fedf684a7d414b01dd06fd31a896a2ee4272866e7058d86fa443530ae164', '[\"*\"]', '2022-06-09 16:58:05', '2022-06-09 16:53:26', '2022-06-09 16:58:05'),
(404, 'App\\User', 288, 'qixerapi_keys', '9b428665d837611213cde756b00ad700bd815e5eb95fae75a5b0f731dc8973fb', '[\"*\"]', '2022-06-09 17:23:02', '2022-06-09 17:22:19', '2022-06-09 17:23:02'),
(405, 'App\\User', 344, 'qixerapi_keys', '12927603142e26b614cb60c418045694a6e7db4859d6a06f5e6ea9bd7349c8d7', '[\"*\"]', '2022-06-09 17:53:31', '2022-06-09 17:48:13', '2022-06-09 17:53:31'),
(406, 'App\\User', 344, 'qixerapi_keys', 'd9b884fe3735e9bebd04a943eb90d5692a2b259d2087ead1ea1231714e956003', '[\"*\"]', '2022-06-09 18:14:03', '2022-06-09 18:12:46', '2022-06-09 18:14:03'),
(407, 'App\\User', 345, 'qixerapi_keys', 'd5cb2b5836d0a71bbaea816cd5052ace8a1f3758d3fd7f28f2ad7a674771c009', '[\"*\"]', NULL, '2022-06-09 18:14:12', '2022-06-09 18:14:12'),
(408, 'App\\User', 346, 'qixerapi_keys', 'f0ad37a3205116f3d515af3b327f5fd377aba783d6c785c186d9f1e163c32ea5', '[\"*\"]', '2022-06-09 18:17:49', '2022-06-09 18:17:16', '2022-06-09 18:17:49'),
(409, 'App\\User', 346, 'qixerapi_keys', '3295d51bee840fe25a7192f584bb98695f635ed763d6018b14d29f9314766598', '[\"*\"]', '2022-06-09 18:18:41', '2022-06-09 18:18:31', '2022-06-09 18:18:41'),
(410, 'App\\User', 346, 'qixerapi_keys', 'b713c0da7f198b1822ba4d23bef8984ed4c6c4bfd9b2070d886009c2553a8e11', '[\"*\"]', '2022-06-09 18:32:36', '2022-06-09 18:31:49', '2022-06-09 18:32:36'),
(412, 'App\\User', 347, 'qixerapi_keys', 'b17587fe57f7cabdaff82863c2b4f7eae28adb312c401de9b901340d1c0fdf55', '[\"*\"]', '2022-06-09 20:20:37', '2022-06-09 20:20:25', '2022-06-09 20:20:37'),
(413, 'App\\User', 317, 'qixerapi_keys', '9a9bfd58d10f28323a03fbe0e0fe8a3ecb5846e1c093ff878c47a2574639890e', '[\"*\"]', '2022-06-10 11:41:23', '2022-06-09 22:36:30', '2022-06-10 11:41:23'),
(416, 'App\\User', 353, 'qixerapi_keys', 'af1a43a3371296f47eecaff0f0c81ee67dc691caad3240ddc03707d2cde4c6ff', '[\"*\"]', '2022-06-10 01:07:45', '2022-06-10 01:07:44', '2022-06-10 01:07:45'),
(417, 'App\\User', 218, 'qixerapi_keys', 'e7f5bc36d215d59eb114d8452a86b88a2c9d00e9087e41084e974784f0495e3e', '[\"*\"]', '2022-06-10 02:51:36', '2022-06-10 02:51:35', '2022-06-10 02:51:36'),
(418, 'App\\User', 354, 'qixerapi_keys', '44900031a18d089d05066845c68d4bf2d0524ce10622a3fcb1acdc7519547f04', '[\"*\"]', NULL, '2022-06-10 02:54:40', '2022-06-10 02:54:40'),
(421, 'App\\User', 265, 'qixerapi_keys', '30da4349dbd0d6efac4de6fd60c0a62905e329ba057f1fca1e356791e4649bba', '[\"*\"]', '2022-06-10 03:38:20', '2022-06-10 03:38:19', '2022-06-10 03:38:20'),
(422, 'App\\User', 330, 'qixerapi_keys', '7aa02e16850a61b913bb4bab280b877c93837655eb6daf9a774c6cf2c6b1017f', '[\"*\"]', '2022-06-10 03:47:06', '2022-06-10 03:47:05', '2022-06-10 03:47:06'),
(424, 'App\\User', 357, 'qixerapi_keys', 'ee5519cc4165f5e41937c7ef087e6a8cfe98e5f995c60e5eb0af6544386802c5', '[\"*\"]', '2022-06-10 04:55:36', '2022-06-10 04:51:31', '2022-06-10 04:55:36'),
(425, 'App\\User', 358, 'qixerapi_keys', '89bfe30f72e60d937889ebc9916f9987f9aa3b57db3333f0efe31b3cfa03795d', '[\"*\"]', '2022-06-10 05:37:19', '2022-06-10 05:27:22', '2022-06-10 05:37:19'),
(426, 'App\\User', 310, 'qixerapi_keys', 'e5dd75b0c65d43e76e22361cc1e2c1cb97cb096ae6a97718fe53120b60c698dc', '[\"*\"]', '2022-06-10 05:51:03', '2022-06-10 05:51:02', '2022-06-10 05:51:03'),
(427, 'App\\User', 358, 'qixerapi_keys', '215c64eff57f007d41272ca29705980e1438bfc3b4392e18012bac93cec7c939', '[\"*\"]', '2022-06-10 07:19:21', '2022-06-10 07:19:20', '2022-06-10 07:19:21'),
(428, 'App\\User', 359, 'qixerapi_keys', '0caf3577cc7356ade78a3b9a1d66ed850683bb8bbc2dc21085d27a9f5a904735', '[\"*\"]', '2022-06-10 07:59:12', '2022-06-10 07:53:30', '2022-06-10 07:59:12'),
(429, 'App\\User', 323, 'qixerapi_keys', '8d3ec0cb82f6461f7f796269b850473d7f4da07e266cfd61169db25c669851a5', '[\"*\"]', '2022-06-10 08:48:53', '2022-06-10 08:48:52', '2022-06-10 08:48:53'),
(430, 'App\\User', 323, 'qixerapi_keys', '88744ddd4ae11d5c52c610b89262725e40c7f9b7d071e27b74d228fd89c36452', '[\"*\"]', '2022-06-10 08:49:22', '2022-06-10 08:49:21', '2022-06-10 08:49:22'),
(431, 'App\\User', 323, 'qixerapi_keys', '0a12c71f87c0bf931bea710b0d99e3f76111a0581e97abc988070c003729476f', '[\"*\"]', '2022-06-10 08:49:45', '2022-06-10 08:49:44', '2022-06-10 08:49:45'),
(432, 'App\\User', 360, 'qixerapi_keys', '77101c03c5f21d084bef5014e440b140c1cd6054a30d2f7b024a6018be13c2f6', '[\"*\"]', NULL, '2022-06-10 09:33:20', '2022-06-10 09:33:20'),
(433, 'App\\User', 361, 'qixerapi_keys', '894617bee9e7a51c48762f79f0683eb8bc95a08d634e8324394065baebef3c1e', '[\"*\"]', '2022-06-10 09:38:48', '2022-06-10 09:35:34', '2022-06-10 09:38:48'),
(435, 'App\\User', 362, 'qixerapi_keys', 'c6bcef1136d7837103327be21addd1f05b53cc893311705fb543157052fcd605', '[\"*\"]', '2022-06-10 12:37:18', '2022-06-10 12:37:18', '2022-06-10 12:37:18'),
(436, 'App\\User', 357, 'qixerapi_keys', '8a8e7d2e33b70d4be44183d9fbdab62b5c4eb40415208c4e89fe928421f338f5', '[\"*\"]', '2022-06-10 13:41:45', '2022-06-10 13:41:44', '2022-06-10 13:41:45'),
(437, 'App\\User', 357, 'qixerapi_keys', '62f188508ff69dcfa77d9a51c14b1820ec1485275c5096bd6915a78a9b6d5b57', '[\"*\"]', '2022-06-10 13:42:28', '2022-06-10 13:42:22', '2022-06-10 13:42:28'),
(438, 'App\\User', 363, 'qixerapi_keys', '3b2481506bb931aefef9364fa4905cde8b37db7e2ef1095f62d8528a3cf5a37f', '[\"*\"]', '2022-06-10 14:05:18', '2022-06-10 14:05:17', '2022-06-10 14:05:18'),
(439, 'App\\User', 363, 'qixerapi_keys', '2d8e1f795959a402e2c393f0ea20527f986d391ed093a4879f3a5a8cc95d6496', '[\"*\"]', '2022-06-10 14:13:41', '2022-06-10 14:13:40', '2022-06-10 14:13:41'),
(443, 'App\\User', 364, 'qixerapi_keys', 'abf4480237b25ec340de8f285e2294f49f134143c58239a59541cd8f0ad1d039', '[\"*\"]', '2022-06-10 19:58:08', '2022-06-10 19:57:29', '2022-06-10 19:58:08'),
(446, 'App\\User', 370, 'qixerapi_keys', '2f19531154b00843c0a1571087c822c99637d8693b0b0d2b7c8543f6f8f7d2ad', '[\"*\"]', NULL, '2022-06-10 23:22:19', '2022-06-10 23:22:19'),
(447, 'App\\User', 371, 'qixerapi_keys', 'ef064295cc10962b8432934d2416de3bd067b39715215d3423ebf44500e46305', '[\"*\"]', '2022-06-10 23:23:59', '2022-06-10 23:23:16', '2022-06-10 23:23:59'),
(448, 'App\\User', 372, 'qixerapi_keys', '3efef07aa0f1abd510f28b59977cff0dabd709fce836d321983671dcf0180943', '[\"*\"]', '2022-06-11 00:12:46', '2022-06-11 00:12:44', '2022-06-11 00:12:46'),
(449, 'App\\User', 373, 'qixerapi_keys', '03c089a1b6af11f45b6dfb374e14c820c192525e68e7867da38f5727e6852cb6', '[\"*\"]', '2022-06-11 02:18:47', '2022-06-11 02:07:46', '2022-06-11 02:18:47'),
(450, 'App\\User', 373, 'qixerapi_keys', '610daf2769be8edecfca3d16e3ee4ac7dbb4c3cac44f7c507738a0afb7e357d8', '[\"*\"]', '2022-06-11 02:19:27', '2022-06-11 02:19:26', '2022-06-11 02:19:27'),
(451, 'App\\User', 374, 'qixerapi_keys', '2b9b9aa3a1f9cc407c4d20594553910a638f4702479746cfdccff9b96f205613', '[\"*\"]', '2022-06-11 02:24:13', '2022-06-11 02:19:37', '2022-06-11 02:24:13'),
(452, 'App\\User', 375, 'qixerapi_keys', '9617acb0489de863602ec32c828414f75cfcb4af7716f4c4867f911b8091f43d', '[\"*\"]', NULL, '2022-06-11 02:46:45', '2022-06-11 02:46:45'),
(453, 'App\\User', 375, 'qixerapi_keys', '824fc6d7befd8ba9fa6e69d13f4f6131d6d9d7e5dedb21897100cf019728fa9e', '[\"*\"]', '2022-06-11 02:52:43', '2022-06-11 02:47:56', '2022-06-11 02:52:43'),
(454, 'App\\User', 376, 'qixerapi_keys', '55a7240a1894b7277deb4da40c22d3442be98caeb76091a60b80b0a946cebce0', '[\"*\"]', '2022-06-11 02:59:32', '2022-06-11 02:58:26', '2022-06-11 02:59:32'),
(455, 'App\\User', 377, 'qixerapi_keys', '9d533971934430968b7eba20a935611fe7138ca51f8e9229a13a7147515cadfe', '[\"*\"]', '2022-06-11 05:30:24', '2022-06-11 05:14:56', '2022-06-11 05:30:24'),
(456, 'App\\User', 310, 'qixerapi_keys', '10eebd3860d75d972aa720a5368ea56c264cab50ccf5baea5c73eb5bd0a9a490', '[\"*\"]', '2022-06-11 05:21:44', '2022-06-11 05:20:13', '2022-06-11 05:21:44'),
(457, 'App\\User', 178, 'qixerapi_keys', 'fb300e477feedd2c5b6b37d51f15de9809d08efb6c1a6813fecfbfb56f280d97', '[\"*\"]', '2022-06-11 06:23:58', '2022-06-11 06:23:56', '2022-06-11 06:23:58'),
(458, 'App\\User', 178, 'qixerapi_keys', '78d5524fe90f07b9ea6c0aedbca674a392b653f7868903e42ed6d7c029522085', '[\"*\"]', NULL, '2022-06-11 06:23:56', '2022-06-11 06:23:56'),
(459, 'App\\User', 178, 'qixerapi_keys', '805e82f2abf40eb79e961b62581c4595f5a278a0b5450fa1f6b29a9120f1771e', '[\"*\"]', NULL, '2022-06-11 06:23:56', '2022-06-11 06:23:56'),
(460, 'App\\User', 178, 'qixerapi_keys', '5a64847c0a47d178a216161ddf08a1dbec4662d5055ab31c4175bd19f4f97619', '[\"*\"]', NULL, '2022-06-11 06:23:57', '2022-06-11 06:23:57'),
(461, 'App\\User', 373, 'qixerapi_keys', 'acd0f245de8fb50d22b09c6f5db8c1d948be79b71087b726cf63740885cce16c', '[\"*\"]', '2022-06-11 07:00:42', '2022-06-11 06:43:30', '2022-06-11 07:00:42'),
(463, 'App\\User', 378, 'qixerapi_keys', 'f63b14ce937384a18b911495670dafb86aab5f20e958932720667d4c09147cb9', '[\"*\"]', '2022-06-11 07:40:13', '2022-06-11 07:38:15', '2022-06-11 07:40:13'),
(466, 'App\\User', 380, 'qixerapi_keys', 'fd9ca526f652b9cdb9402fbc21901562841f56fdb646572d46e13336f1bb3c0d', '[\"*\"]', NULL, '2022-06-11 07:54:26', '2022-06-11 07:54:26'),
(467, 'App\\User', 381, 'qixerapi_keys', 'c14c094412fe9dfb189c42e453b35269e3327fe6b8a21c932a02c26502fdacc7', '[\"*\"]', '2022-06-11 08:57:43', '2022-06-11 08:55:48', '2022-06-11 08:57:43'),
(468, 'App\\User', 358, 'qixerapi_keys', '24adb528f30380c201af9b49b5740d5a883919783e3a645141e3d6ac025ea840', '[\"*\"]', '2022-06-11 09:05:57', '2022-06-11 09:05:06', '2022-06-11 09:05:57'),
(469, 'App\\User', 382, 'qixerapi_keys', '8696e48b60453bb41649dc84b71c25c790271b7ee6f9766b1620f474d6c7662f', '[\"*\"]', '2022-06-11 09:41:32', '2022-06-11 09:40:17', '2022-06-11 09:41:32'),
(471, 'App\\User', 375, 'qixerapi_keys', 'bb9379ad03df8be305dfb88bee214274b67dd2df91a4c34c6ca2129749fd29dd', '[\"*\"]', '2022-06-11 10:18:15', '2022-06-11 10:18:14', '2022-06-11 10:18:15'),
(472, 'App\\User', 375, 'qixerapi_keys', '9cd0f3f748b64d10e591e97b0125e398e517c4cb0e94d6e204b37971c876d5d0', '[\"*\"]', '2022-06-11 10:18:30', '2022-06-11 10:18:29', '2022-06-11 10:18:30'),
(473, 'App\\User', 375, 'qixerapi_keys', '572cf2e5f63bce88857f920cc4bf7b8804b807cefef11b79bc4b24491a0945cf', '[\"*\"]', '2022-06-11 10:19:21', '2022-06-11 10:19:21', '2022-06-11 10:19:21'),
(475, 'App\\User', 384, 'qixerapi_keys', 'b09109fc7f9bbcff4baef9353f2caaa1ce0a29abb7689fcdf134396852eec017', '[\"*\"]', '2022-06-11 11:03:09', '2022-06-11 11:02:09', '2022-06-11 11:03:09'),
(476, 'App\\User', 385, 'qixerapi_keys', 'ccd8c8092e7a6ceb3081e4ac95b065913eba66cf4a83e23dfcb4960351dbfc18', '[\"*\"]', '2022-06-11 11:10:31', '2022-06-11 11:08:13', '2022-06-11 11:10:31'),
(477, 'App\\User', 384, 'qixerapi_keys', '41b893a5f73e29adceb6b15fd4b4170ab95d3e99c49df295c12d8ae7f6c4ef0a', '[\"*\"]', '2022-06-11 11:11:48', '2022-06-11 11:11:05', '2022-06-11 11:11:48'),
(478, 'App\\User', 386, 'qixerapi_keys', 'e89c4d3181dda3b3ce7a1126e285a428564ac457f369e1aa70ad586950c9b81b', '[\"*\"]', '2022-06-11 12:39:40', '2022-06-11 12:39:27', '2022-06-11 12:39:40'),
(479, 'App\\User', 386, 'qixerapi_keys', '8e50c2994a017465a0319b8d637e4e93c764a508b815f9803506cbe24b27a485', '[\"*\"]', '2022-06-11 14:16:59', '2022-06-11 14:16:56', '2022-06-11 14:16:59'),
(480, 'App\\User', 387, 'qixerapi_keys', '3fda4202fb91d0a1db900d32874fefe63d54df759deb266d346ca6d1031a2b13', '[\"*\"]', '2022-06-11 14:22:29', '2022-06-11 14:21:31', '2022-06-11 14:22:29'),
(481, 'App\\User', 388, 'qixerapi_keys', '814159f469afab2fdbc79ee602ab286f475d1ffd44f053af9ad3fc4bc2fea089', '[\"*\"]', NULL, '2022-06-11 15:20:01', '2022-06-11 15:20:01'),
(484, 'App\\User', 307, 'qixerapi_keys', 'b0222819591b8e6179ec892a5642ca65b3ac48a8dc9b96982d52ce6e9f426f10', '[\"*\"]', '2022-06-11 21:06:15', '2022-06-11 21:06:14', '2022-06-11 21:06:15'),
(485, 'App\\User', 390, 'qixerapi_keys', 'fc55c9e8e3e48d570a3187f6d5eecfe65bb4bd46f6f89aaacd2db1176f95bb8e', '[\"*\"]', NULL, '2022-06-11 23:28:42', '2022-06-11 23:28:42'),
(486, 'App\\User', 390, 'qixerapi_keys', 'a4b601130ca247be09a3e3bab6df07706d79bf412f92f85600793bc6e6e2b366', '[\"*\"]', '2022-06-11 23:33:25', '2022-06-11 23:30:51', '2022-06-11 23:33:25'),
(487, 'App\\User', 391, 'qixerapi_keys', 'a2e1e93285805482b6376c1158aefc6f0072ec8515f1080948b07662184e4eab', '[\"*\"]', NULL, '2022-06-12 00:56:12', '2022-06-12 00:56:12'),
(488, 'App\\User', 391, 'qixerapi_keys', '66b34ac14180e1b0e312d7cc252668f00c94e7bed8011c248d997a175124867b', '[\"*\"]', '2022-06-12 01:03:48', '2022-06-12 00:59:56', '2022-06-12 01:03:48'),
(490, 'App\\User', 375, 'qixerapi_keys', 'fe6b62e21cff6623b938b1e940706c2f3e80f05b8ecebcf992f19765de21c91b', '[\"*\"]', '2022-06-12 01:58:05', '2022-06-12 01:58:04', '2022-06-12 01:58:05'),
(491, 'App\\User', 384, 'qixerapi_keys', '5f9d5216404d33aaa6c372b9b07e86c3f9b0ce4a568fc14f55ad802110baf132', '[\"*\"]', '2022-06-12 04:28:31', '2022-06-12 04:28:30', '2022-06-12 04:28:31'),
(492, 'App\\User', 392, 'qixerapi_keys', 'e41fa8e6cafd49bf0f48316902ffe8837d15d24a36a5a11f526bd09841e8d58a', '[\"*\"]', NULL, '2022-06-12 05:34:10', '2022-06-12 05:34:10'),
(493, 'App\\User', 393, 'qixerapi_keys', '320e0790a89ba3aa31b94bf8f232655331dd8219a2feb3d0fbd8ba945d61ad25', '[\"*\"]', NULL, '2022-06-12 05:36:12', '2022-06-12 05:36:12'),
(494, 'App\\User', 391, 'qixerapi_keys', 'ac716262bef4192ae30a8395ae50f529f1dacea1ee1f6a8e09c28f9f820af17b', '[\"*\"]', '2022-06-12 05:36:52', '2022-06-12 05:36:51', '2022-06-12 05:36:52'),
(497, 'App\\User', 350, 'qixerapi_keys', 'daa7d33e09c3c4e30640c6aa2b1c6e691b981d4120b39f9454c159842331bcdf', '[\"*\"]', '2022-06-12 05:47:20', '2022-06-12 05:45:45', '2022-06-12 05:47:20'),
(498, 'App\\User', 394, 'qixerapi_keys', '57ed4f76d2bacf318dc6e223f46eed840a41ef5cae2dc095caf3723394adf75e', '[\"*\"]', NULL, '2022-06-12 06:51:33', '2022-06-12 06:51:33'),
(499, 'App\\User', 394, 'qixerapi_keys', '3c2663fb4b7f8363ee31f66165dfb3be3341b5d1b54f1ae480ac30bd77314545', '[\"*\"]', '2022-06-12 06:55:16', '2022-06-12 06:53:44', '2022-06-12 06:55:16'),
(501, 'App\\User', 386, 'qixerapi_keys', 'f1d2641cd6b908ea506e233e158d72800a136922644bafc64cfbb12e2a7afff3', '[\"*\"]', '2022-06-12 07:59:20', '2022-06-12 07:59:07', '2022-06-12 07:59:20'),
(502, 'App\\User', 265, 'qixerapi_keys', 'ce753ebb433d5ef27bd07b9c7535b347cf59d425226e5cd7e40c3456827d369b', '[\"*\"]', '2022-06-12 08:12:23', '2022-06-12 08:11:57', '2022-06-12 08:12:23'),
(503, 'App\\User', 395, 'qixerapi_keys', 'e2b1d0b0a1b3bf9d2e204f65472de05763d9c461b9788de135df68aea068ad83', '[\"*\"]', '2022-06-12 08:46:30', '2022-06-12 08:40:58', '2022-06-12 08:46:30'),
(504, 'App\\User', 396, 'qixerapi_keys', '91c5110d4b725fca5d1a3e6a835f29d7908c3f5d68f7fe02343b6e7f7bcde0fb', '[\"*\"]', '2022-06-12 08:55:05', '2022-06-12 08:54:19', '2022-06-12 08:55:05'),
(508, 'App\\User', 397, 'qixerapi_keys', '19885b4e1f553489e727b8b596357b0660f105bab4169c98af0fccdf8cf47ea0', '[\"*\"]', '2022-06-12 09:32:21', '2022-06-12 09:27:58', '2022-06-12 09:32:21'),
(509, 'App\\User', 397, 'qixerapi_keys', '9f9a0c31c69867dc1eb5b144e856cc99f28f0db914dceb86b8c9a05e0c3bb43d', '[\"*\"]', '2022-06-12 09:53:58', '2022-06-12 09:33:43', '2022-06-12 09:53:58'),
(510, 'App\\User', 398, 'qixerapi_keys', 'e2e1678bf5d8e662170b23c75149860d1814a3e23d6690c98b7c1b9a37c471f1', '[\"*\"]', '2022-06-12 10:52:34', '2022-06-12 10:52:33', '2022-06-12 10:52:34'),
(511, 'App\\User', 399, 'qixerapi_keys', '7f28719b1bc080f46745151ae78d948edc75bca148be5ba5efea6de08597247e', '[\"*\"]', '2022-06-12 11:07:34', '2022-06-12 11:07:33', '2022-06-12 11:07:34'),
(512, 'App\\User', 397, 'qixerapi_keys', '23442302519ad5844d42e1ca92c0094d8c2029b87b003dbb9fdb59e150559a03', '[\"*\"]', '2022-06-12 13:47:39', '2022-06-12 11:23:12', '2022-06-12 13:47:39'),
(513, 'App\\User', 400, 'qixerapi_keys', '969616e39c5f199906fd5246d6619f40a0a4d645af7a49c6193a6730172d54cd', '[\"*\"]', '2022-06-12 12:04:43', '2022-06-12 12:03:56', '2022-06-12 12:04:43'),
(514, 'App\\User', 257, 'qixerapi_keys', '91756444e1fc5d4db1693eec2223726c0a0424974c9a5fb4186c4a7b3a3efff8', '[\"*\"]', '2022-06-12 13:20:33', '2022-06-12 13:19:59', '2022-06-12 13:20:33'),
(517, 'App\\User', 403, 'qixerapi_keys', '9d8ad6b4b74bd33a1a844b68ff5d2a740613c1a0bce1229790d90439c1ea6565', '[\"*\"]', '2022-06-12 14:43:34', '2022-06-12 13:37:40', '2022-06-12 14:43:34'),
(518, 'App\\User', 387, 'qixerapi_keys', '39ef11155b11f768470c6072c140a8681921d3e879e623bf6ae92f1cc29b09c8', '[\"*\"]', '2022-06-12 14:48:48', '2022-06-12 14:48:20', '2022-06-12 14:48:48'),
(519, 'App\\User', 404, 'qixerapi_keys', 'cd97ae5f76f4ebdf6ac04994c6236c61db430f66d54c47ae32300730b2b0adc4', '[\"*\"]', '2022-06-12 14:57:01', '2022-06-12 14:57:00', '2022-06-12 14:57:01'),
(520, 'App\\User', 158, 'qixerapi_keys', '29264476de71c7c5d022a58a6afe948bd8ecf1ded42db286158f0b2753d42104', '[\"*\"]', '2022-06-12 15:09:27', '2022-06-12 15:06:20', '2022-06-12 15:09:27'),
(521, 'App\\User', 405, 'qixerapi_keys', '4e25cd7670d7a79c5a7d1aa21f9184b0c0c0e193d0d9d73f0aaf1d899a365def', '[\"*\"]', '2022-06-12 15:32:28', '2022-06-12 15:31:52', '2022-06-12 15:32:28'),
(522, 'App\\User', 375, 'qixerapi_keys', '595b931c98ecb27b74bbdf8de64a0bd963d0d1e16c19cf6dfcaf5c2ddadbce7e', '[\"*\"]', '2022-06-12 16:26:20', '2022-06-12 16:26:19', '2022-06-12 16:26:20'),
(523, 'App\\User', 375, 'qixerapi_keys', 'aebd34f7f0ea6e7c44e487f1812ef26ad30f40a89b0968318ac4f8a6fe18d37c', '[\"*\"]', '2022-06-12 16:27:19', '2022-06-12 16:27:18', '2022-06-12 16:27:19'),
(524, 'App\\User', 406, 'qixerapi_keys', 'f637e4d4340994be356d237ce5def2da1e219f3e7bd53506f20f428bfc8aabfb', '[\"*\"]', '2022-06-12 19:57:21', '2022-06-12 16:41:15', '2022-06-12 19:57:21'),
(525, 'App\\User', 317, 'qixerapi_keys', 'a3d29f89fa4aa18ebc8737e742d7a5bc2e4e021c4445cb75f9baaba1aa562988', '[\"*\"]', '2022-06-12 16:51:03', '2022-06-12 16:51:02', '2022-06-12 16:51:03'),
(526, 'App\\User', 407, 'qixerapi_keys', 'e55cc81e4a5e5fd97bcd378e0a826a106252dd0cffdba404c82cdaf7a7e09f4a', '[\"*\"]', NULL, '2022-06-12 19:33:08', '2022-06-12 19:33:08'),
(527, 'App\\User', 408, 'qixerapi_keys', '6cfa9a3d78c4d3d6b25d2c9904cfe9e7a5863828a6013b103a63cf4002f01ab9', '[\"*\"]', '2022-06-12 19:33:47', '2022-06-12 19:33:46', '2022-06-12 19:33:47'),
(528, 'App\\User', 410, 'qixerapi_keys', '8c8b8dcd19debf76ed241e48c9e5ce93ed5bbc9708e605f450b0566249936c08', '[\"*\"]', '2022-06-12 20:12:45', '2022-06-12 20:10:54', '2022-06-12 20:12:45'),
(529, 'App\\User', 332, 'qixerapi_keys', '994b40f19257a62d674a5fa06f182aaec0612073eeebfbd2bf7efe089d89991b', '[\"*\"]', '2022-06-12 21:53:29', '2022-06-12 21:53:28', '2022-06-12 21:53:29'),
(530, 'App\\User', 411, 'qixerapi_keys', 'eb1508c95170983d8a773abf4343db44c1e9126ab66028a28e074e2f88e75ccb', '[\"*\"]', '2022-06-12 22:46:19', '2022-06-12 22:41:27', '2022-06-12 22:46:19'),
(531, 'App\\User', 412, 'qixerapi_keys', 'bddefd800e074699303f6e72f3bb2eea266f7e504f6db66f6beccab93e0afca9', '[\"*\"]', '2022-06-12 23:38:33', '2022-06-12 23:34:58', '2022-06-12 23:38:33'),
(532, 'App\\User', 413, 'qixerapi_keys', '18b9f06da4dc025d2076de0850479ddee7ab286b7b916b3bea4f14fd4fa9d856', '[\"*\"]', '2022-06-12 23:49:49', '2022-06-12 23:49:04', '2022-06-12 23:49:49'),
(533, 'App\\User', 414, 'qixerapi_keys', 'd24323fd8c74565c4892596480eee304d163fcf9fccc1a254bdddf94ac587182', '[\"*\"]', NULL, '2022-06-12 23:49:49', '2022-06-12 23:49:49'),
(534, 'App\\User', 414, 'qixerapi_keys', 'bb0d42609af01e424f3fc83efd10170fbf8f8c4aa7ac4e8913650ec176e06160', '[\"*\"]', '2022-06-12 23:53:42', '2022-06-12 23:50:27', '2022-06-12 23:53:42'),
(535, 'App\\User', 323, 'qixerapi_keys', '74a60eba9ba770ccd567204ffd85216b2dff141834c97313c7cdd921d165ed84', '[\"*\"]', '2022-06-12 23:54:59', '2022-06-12 23:53:55', '2022-06-12 23:54:59'),
(536, 'App\\User', 386, 'qixerapi_keys', 'f9c4ee9be77892cc8b86e965b076cdf6e673e9a299d9de370dfedef7e664c3d4', '[\"*\"]', '2022-06-13 01:50:40', '2022-06-13 01:50:35', '2022-06-13 01:50:40'),
(538, 'App\\User', 373, 'qixerapi_keys', 'dbe3f881ef986690636db0a52b6ad6a24f19187f67b66a1c9cefc8d929324c79', '[\"*\"]', '2022-06-13 04:00:35', '2022-06-13 03:50:32', '2022-06-13 04:00:35'),
(540, 'App\\User', 417, 'qixerapi_keys', 'a4134f810b30482020bf79ecca9a0e5f290b91fdd6a445857aff8b6b56231047', '[\"*\"]', '2022-06-13 05:02:41', '2022-06-13 05:00:57', '2022-06-13 05:02:41');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(542, 'App\\User', 418, 'qixerapi_keys', '643bd6204a433e1a2e70c13e440c87da2ea8eba2504415fd83a301861488d3ee', '[\"*\"]', NULL, '2022-06-13 05:41:36', '2022-06-13 05:41:36'),
(543, 'App\\User', 418, 'qixerapi_keys', '93ec130f319e010ff2199b5c886bdc2e156875e4c2661c810d17e143664c57f0', '[\"*\"]', '2022-06-13 05:52:55', '2022-06-13 05:42:02', '2022-06-13 05:52:55'),
(544, 'App\\User', 419, 'qixerapi_keys', 'e88d014131d9f7d214a2dd4ee0014b8c6db0423ae40b9421322e1608533f6a65', '[\"*\"]', '2022-06-13 05:47:05', '2022-06-13 05:47:04', '2022-06-13 05:47:05'),
(545, 'App\\User', 418, 'qixerapi_keys', '176179e866f08162dc3a078bafcae8a8b09b276eaeb3a1abcd6162f94cc5ceff', '[\"*\"]', '2022-06-13 05:57:40', '2022-06-13 05:57:07', '2022-06-13 05:57:40'),
(546, 'App\\User', 420, 'qixerapi_keys', 'b37abe74598d994fb9f895c4d8312e5d1db25f550e8b326ace118d79d6d730cf', '[\"*\"]', '2022-06-13 06:42:03', '2022-06-13 06:42:02', '2022-06-13 06:42:03'),
(547, 'App\\User', 421, 'qixerapi_keys', '6c83fa0daeee0e490e66bbb66b4e7b76daee298e10215e9851102f105799fc80', '[\"*\"]', '2022-06-13 06:54:38', '2022-06-13 06:54:37', '2022-06-13 06:54:38'),
(548, 'App\\User', 390, 'qixerapi_keys', 'e38be19da9a9008c22f7e86a122ff593e79e6c9be389199a26b963e8dffd7c38', '[\"*\"]', '2022-06-13 07:21:49', '2022-06-13 07:21:48', '2022-06-13 07:21:49'),
(549, 'App\\User', 422, 'qixerapi_keys', '45958287303bc5fbb75d2f152ca6695366aaac8f40247c4358e0cc3aca088911', '[\"*\"]', '2022-06-13 07:50:36', '2022-06-13 07:50:35', '2022-06-13 07:50:36'),
(550, 'App\\User', 323, 'qixerapi_keys', 'ab88310728581bede7282ca9414009f255f287b71eb6fcf9be6b5bd74d55a9ac', '[\"*\"]', '2022-06-13 08:34:35', '2022-06-13 08:33:47', '2022-06-13 08:34:35'),
(554, 'App\\User', 385, 'qixerapi_keys', '36e4628020e4f0d56856da43f72e06d694756cc1b48ea25c23c5084b213bec47', '[\"*\"]', '2022-06-13 10:51:51', '2022-06-13 10:51:50', '2022-06-13 10:51:51'),
(555, 'App\\User', 358, 'qixerapi_keys', '628e6b972b0e966d7095151a2a8eb18089afac1ac01bb6a1f5c92bd55ebb8ba5', '[\"*\"]', '2022-06-13 11:01:58', '2022-06-13 11:01:37', '2022-06-13 11:01:58'),
(556, 'App\\User', 378, 'qixerapi_keys', '098137b9d4401b66c372978cf4a0ab4abbd3adb06f9217b49ec8a8b75be20af3', '[\"*\"]', '2022-06-13 12:39:32', '2022-06-13 12:39:10', '2022-06-13 12:39:32'),
(557, 'App\\User', 426, 'qixerapi_keys', '175b5f45edef37b04ad70c0498e73f8c0cf7d2add0ae30b755b9b334d9343934', '[\"*\"]', '2022-06-13 13:32:30', '2022-06-13 13:32:29', '2022-06-13 13:32:30'),
(558, 'App\\User', 427, 'qixerapi_keys', '12a916c25622a3b4083ed447c90b1a3784a27cc4edadba56ef9220f8558948f2', '[\"*\"]', '2022-06-13 14:32:44', '2022-06-13 14:27:41', '2022-06-13 14:32:44'),
(559, 'App\\User', 430, 'qixerapi_keys', 'be0e24fa66f7a2b764932bf48e18f0c876671be70130505a82600c43bbd72a9b', '[\"*\"]', NULL, '2022-06-13 15:51:06', '2022-06-13 15:51:06'),
(560, 'App\\User', 431, 'qixerapi_keys', 'a790d1e976b2b4b90fe65fe4dc18415951dc7265dd6ed229298f529fd58ef4a7', '[\"*\"]', '2022-06-13 16:30:38', '2022-06-13 16:30:36', '2022-06-13 16:30:38'),
(561, 'App\\User', 432, 'qixerapi_keys', 'df05a0d9df0161f95ddbc49f9c851af36c755fa8c20a32909b34ad53829b7faa', '[\"*\"]', '2022-06-13 19:16:39', '2022-06-13 18:55:10', '2022-06-13 19:16:39'),
(562, 'App\\User', 433, 'qixerapi_keys', '7fd4ac66e971b474e452a8ff25e12b05213ae9823bc198eb03ee2f8911ca544c', '[\"*\"]', NULL, '2022-06-13 19:39:22', '2022-06-13 19:39:22'),
(563, 'App\\User', 433, 'qixerapi_keys', '42b2fc00220bf196b7f6348d187a43c6d5437e78a9f59d70f6a3c5a0fee930f7', '[\"*\"]', '2022-06-13 19:41:45', '2022-06-13 19:40:01', '2022-06-13 19:41:45'),
(564, 'App\\User', 433, 'qixerapi_keys', '0e9b642621cc34b7cbe63c7702dfefe4a2f8326572993beb616b901163a06a80', '[\"*\"]', '2022-06-13 19:44:29', '2022-06-13 19:44:29', '2022-06-13 19:44:29'),
(565, 'App\\User', 431, 'qixerapi_keys', 'fa96b00c7fbaae165eafc7ff50ac4fa1550d83ca77c7d5347ca132d5654bc877', '[\"*\"]', '2022-06-13 20:16:49', '2022-06-13 20:15:43', '2022-06-13 20:16:49'),
(566, 'App\\User', 385, 'qixerapi_keys', '266d0d2f9d5c9222df745b617f5415afcc24f36b5bd02b73def8829b0321d7c9', '[\"*\"]', '2022-06-13 20:30:37', '2022-06-13 20:30:36', '2022-06-13 20:30:37'),
(571, 'App\\User', 317, 'qixerapi_keys', '6c510d6a8d21954bdab9af543f4f42e66e7977a3eb53c0a99840c898062a8359', '[\"*\"]', '2022-06-13 22:26:24', '2022-06-13 22:26:24', '2022-06-13 22:26:24'),
(572, 'App\\User', 434, 'qixerapi_keys', '11ce47fcee681d2096ed8c342860fbf672f11c03b4bb9652edf609d6b2f798b4', '[\"*\"]', '2022-06-13 22:47:59', '2022-06-13 22:47:32', '2022-06-13 22:47:59'),
(573, 'App\\User', 434, 'qixerapi_keys', 'f56db48c27bb2b660a58aa9c6f13f569ed3390e7bf3b9a60baa4e852bab06218', '[\"*\"]', '2022-06-13 22:49:50', '2022-06-13 22:49:29', '2022-06-13 22:49:50'),
(574, 'App\\User', 434, 'qixerapi_keys', '64a2a2f4731fdfcd4cf0140cd3061d2864dacddf216e976ecd10f81bbdc28fad', '[\"*\"]', '2022-06-13 22:49:51', '2022-06-13 22:49:50', '2022-06-13 22:49:51'),
(578, 'App\\User', 418, 'qixerapi_keys', 'f8a5058c56724cc0d6971bf49e7485920560400589f0fef523de59c4eccc6627', '[\"*\"]', '2022-06-13 22:57:22', '2022-06-13 22:57:21', '2022-06-13 22:57:22'),
(581, 'App\\User', 435, 'qixerapi_keys', 'ec50af51823517e750909ceddff982e5a412741346f5310e99391d34df509583', '[\"*\"]', '2022-06-13 23:08:44', '2022-06-13 23:08:43', '2022-06-13 23:08:44'),
(587, 'App\\User', 436, 'qixerapi_keys', '045b93c218598105fb303a5d6a7998fc44fc99414ec3969632e1ebe5fe1ad87c', '[\"*\"]', '2022-06-14 00:10:25', '2022-06-14 00:09:50', '2022-06-14 00:10:25'),
(588, 'App\\User', 437, 'qixerapi_keys', '857a11d688e2bb128b9fbcaad95730c4a9fb1e9085eedb820e81681ceddf105d', '[\"*\"]', NULL, '2022-06-14 00:24:10', '2022-06-14 00:24:10'),
(589, 'App\\User', 438, 'qixerapi_keys', '8971d3ba011d7a6333619bb205e3e4aaff872bf77a73ed164c7a1ebcc95d1c0b', '[\"*\"]', '2022-06-14 00:35:48', '2022-06-14 00:35:46', '2022-06-14 00:35:48'),
(591, 'App\\User', 418, 'qixerapi_keys', 'bcde83681e35a7921dcca8f3dd2e5ece8874d8ef510b2b748d0ce7da2ba9a019', '[\"*\"]', '2022-06-14 01:49:32', '2022-06-14 01:49:30', '2022-06-14 01:49:32'),
(594, 'App\\User', 441, 'qixerapi_keys', 'af5035df5b7faece1a448041dbd78ef7a6ed52ceb4613d05a124e7ed69aba618', '[\"*\"]', '2022-06-14 04:15:22', '2022-06-14 04:14:23', '2022-06-14 04:15:22'),
(595, 'App\\User', 309, 'qixerapi_keys', 'ed21e5c7daf1f9480b2107fe1465e6ed9bd6783add0d470deaf99c91cc5fa649', '[\"*\"]', '2022-06-14 04:51:55', '2022-06-14 04:51:19', '2022-06-14 04:51:55'),
(596, 'App\\User', 443, 'qixerapi_keys', 'ebbff44e686dae87e8db9ddd64a4797f36dc4b8f225f6aa4c543a92077cd6a17', '[\"*\"]', '2022-06-14 05:35:37', '2022-06-14 05:32:37', '2022-06-14 05:35:37'),
(598, 'App\\User', 359, 'qixerapi_keys', '749d27643013a7f6bd974891af2f884ac54b0d846d471068e7f4a5ef405c8025', '[\"*\"]', '2022-06-14 06:59:34', '2022-06-14 06:59:33', '2022-06-14 06:59:34'),
(599, 'App\\User', 444, 'qixerapi_keys', '5d90555fac1b2ce58452cde28fbd586533371860d723d58ca44087a938cca11a', '[\"*\"]', '2022-06-14 07:49:49', '2022-06-14 07:45:15', '2022-06-14 07:49:49'),
(600, 'App\\User', 444, 'qixerapi_keys', 'aff21ef7d86c4188bde6d0a7f09dbc3cae2faaf8f106c204f1fda2f8eeae6dcb', '[\"*\"]', '2022-06-14 07:50:10', '2022-06-14 07:50:08', '2022-06-14 07:50:10'),
(601, 'App\\User', 444, 'qixerapi_keys', '5e932c8064317d6de85b95445f73608ef9155124766e53661e38f7d91bcd8a9e', '[\"*\"]', '2022-06-14 07:50:19', '2022-06-14 07:50:18', '2022-06-14 07:50:19'),
(602, 'App\\User', 430, 'qixerapi_keys', '37d9b71ce3cf09fd8e1144b97a65784ddc9d24fc1d028e74035b8f8528bb1ca8', '[\"*\"]', '2022-06-14 08:01:46', '2022-06-14 08:00:29', '2022-06-14 08:01:46'),
(603, 'App\\User', 445, 'qixerapi_keys', 'eb743d13c85309c1f212aac0296fe63cc366d08855dc1b087a7e24e798e90630', '[\"*\"]', '2022-06-14 08:13:57', '2022-06-14 08:10:00', '2022-06-14 08:13:57'),
(604, 'App\\User', 304, 'qixerapi_keys', 'd981a2665282073bf5ec64a71c51f3ac76ef2aa12c2d8429dee48574298ec907', '[\"*\"]', '2022-06-14 10:54:59', '2022-06-14 09:27:44', '2022-06-14 10:54:59'),
(605, 'App\\User', 446, 'qixerapi_keys', 'ca09c27bf6936797a1e60c1f144698de7066f24d39954f06f7ce2a07f38ec5ce', '[\"*\"]', '2022-06-14 11:04:30', '2022-06-14 11:01:42', '2022-06-14 11:04:30'),
(606, 'App\\User', 447, 'qixerapi_keys', '4a8a5f57807a5e57256055df4d9ddcec5d87dbfa44df6d2813a87b04ea7f098b', '[\"*\"]', NULL, '2022-06-14 11:25:13', '2022-06-14 11:25:13'),
(607, 'App\\User', 447, 'qixerapi_keys', '8aa05c5a3adefedde33e4885abb7611953796a1a76029197c0fc4b9f6eb89241', '[\"*\"]', '2022-06-14 11:25:26', '2022-06-14 11:25:13', '2022-06-14 11:25:26'),
(608, 'App\\User', 427, 'qixerapi_keys', 'a48c1ab217cc07bc5cb3257bfcac021d65986cdb362b1371e587f900989afa3d', '[\"*\"]', '2022-06-14 11:49:51', '2022-06-14 11:48:00', '2022-06-14 11:49:51'),
(609, 'App\\User', 307, 'qixerapi_keys', '7194df5fc9ace2eaabf082c9f3200a78d14bba8c6003e3080517f28375be44ce', '[\"*\"]', NULL, '2022-06-14 11:57:32', '2022-06-14 11:57:32'),
(610, 'App\\User', 257, 'qixerapi_keys', '3a9fcb3dccdcc28bbe51b0ae9eef9732dfcdcdad3327cf60f0ea122b60286f53', '[\"*\"]', '2022-06-14 12:56:49', '2022-06-14 12:56:48', '2022-06-14 12:56:49'),
(611, 'App\\User', 371, 'qixerapi_keys', '70cd91a15035e740cf8f97bd30e8f33d3e8b8f63790d789ddab6782680340edd', '[\"*\"]', '2022-06-14 12:58:45', '2022-06-14 12:58:37', '2022-06-14 12:58:45'),
(612, 'App\\User', 371, 'qixerapi_keys', 'f22419300b7837ea374ebec02260ef86ac706160076b1a2b55bb1dbf890d6228', '[\"*\"]', '2022-06-14 12:59:28', '2022-06-14 12:59:26', '2022-06-14 12:59:28'),
(613, 'App\\User', 257, 'qixerapi_keys', '1bfbde037c62f230a0df4fc52b38a28ed43e604be315e4e482909bd762b4a2ff', '[\"*\"]', '2022-06-14 13:16:14', '2022-06-14 13:16:13', '2022-06-14 13:16:14'),
(614, 'App\\User', 257, 'qixerapi_keys', 'cfb214faaddf5ddb5735fbe787bcec35e44e97c027b4e5a18b4e8286e99ae450', '[\"*\"]', '2022-06-14 13:41:47', '2022-06-14 13:41:46', '2022-06-14 13:41:47'),
(615, 'App\\User', 448, 'qixerapi_keys', '4482e0ed446c5d9e2f05c5d1bfd8e9bed7ed75bc3fc1933b33e35c707cbbcc7d', '[\"*\"]', '2022-06-14 13:55:39', '2022-06-14 13:50:30', '2022-06-14 13:55:39'),
(616, 'App\\User', 449, 'qixerapi_keys', '3e175d36cb8b8acbb3e5eb0b29b7834ab42a38bcc7178c1411c9cb82734993d2', '[\"*\"]', '2022-06-14 14:51:16', '2022-06-14 14:47:13', '2022-06-14 14:51:16'),
(617, 'App\\User', 427, 'qixerapi_keys', 'd22b846dd6f521a49265c79ade78711bd3a57c3dfbf98442d60626291aa93ca2', '[\"*\"]', '2022-06-14 14:59:00', '2022-06-14 14:58:59', '2022-06-14 14:59:00'),
(618, 'App\\User', 449, 'qixerapi_keys', 'cb6ce78255dc1ef55d573a14a2a4b04f17d918e2546404d1c31eed3598cc4b2a', '[\"*\"]', '2022-06-14 15:07:39', '2022-06-14 15:01:23', '2022-06-14 15:07:39'),
(619, 'App\\User', 450, 'qixerapi_keys', '21d4088cded848abd77b6865e6ea831e48a20a21b8f7698131aa049d8b13b715', '[\"*\"]', '2022-06-14 15:33:35', '2022-06-14 15:33:04', '2022-06-14 15:33:35'),
(620, 'App\\User', 449, 'qixerapi_keys', '2c84456f8eb4cd9d2b6393b667eb8c555bd41a21d8d0dbc222bf9058c9772c12', '[\"*\"]', '2022-06-14 15:33:51', '2022-06-14 15:33:35', '2022-06-14 15:33:51'),
(621, 'App\\User', 451, 'qixerapi_keys', '9852e3b036a408012362bc74ac8e402c953e547f9a4a5e6b4ed046a17fdf0ccb', '[\"*\"]', NULL, '2022-06-14 15:51:05', '2022-06-14 15:51:05'),
(622, 'App\\User', 451, 'qixerapi_keys', 'e2bec6b3e55cad152c156484cd46055a96e7f5f08bf76e2e60cc1a9b05415411', '[\"*\"]', '2022-06-14 15:53:24', '2022-06-14 15:52:03', '2022-06-14 15:53:24'),
(623, 'App\\User', 391, 'qixerapi_keys', 'c136020cdcc196d9184e85002f374c9c83496396d31000cce39ec19dbbd76924', '[\"*\"]', '2022-06-14 16:25:36', '2022-06-14 16:22:54', '2022-06-14 16:25:36'),
(624, 'App\\User', 433, 'qixerapi_keys', '80a1e37482ec4e7a4799a0366a135109e8b5792bc9eb88606c9b80bbcb3a85b1', '[\"*\"]', '2022-06-14 18:26:30', '2022-06-14 18:26:29', '2022-06-14 18:26:30'),
(625, 'App\\User', 406, 'qixerapi_keys', 'f1159c9e1c43911c7807f63d6c7ae9230a9abfd9011b3c0477b90a684f955e8e', '[\"*\"]', '2022-06-14 20:22:27', '2022-06-14 20:16:05', '2022-06-14 20:22:27'),
(626, 'App\\User', 452, 'qixerapi_keys', 'df01ee2cf397f757731f78ba14989cb5abe9e775f1f052fba1e6e93a722251a6', '[\"*\"]', '2022-06-14 21:28:29', '2022-06-14 21:14:33', '2022-06-14 21:28:29'),
(627, 'App\\User', 452, 'qixerapi_keys', '862afad06c2653b682e67d6bf3da3a129ae4026d2a5955e11ab7434c37f2509d', '[\"*\"]', '2022-06-14 21:45:51', '2022-06-14 21:44:50', '2022-06-14 21:45:51'),
(628, 'App\\User', 448, 'qixerapi_keys', 'ee6fbdd272f290f3dd91c410daaad553495a3b8f8b91224c2efa130f667687b3', '[\"*\"]', '2022-06-14 21:55:09', '2022-06-14 21:55:07', '2022-06-14 21:55:09'),
(629, 'App\\User', 448, 'qixerapi_keys', '4d406375e8f500d5c6be6dce88b495b1594a59a65c99cb9d094297d2ab64520f', '[\"*\"]', '2022-06-14 22:11:29', '2022-06-14 22:02:10', '2022-06-14 22:11:29'),
(631, 'App\\User', 448, 'qixerapi_keys', '189c3771af8808908b33fbc7e65708c96256736754fad3201aaf117f9fedd574', '[\"*\"]', '2022-06-14 23:00:42', '2022-06-14 22:54:19', '2022-06-14 23:00:42'),
(632, 'App\\User', 432, 'qixerapi_keys', 'cd43c07a54bf2c0f3c9e504c3189e1b2faa980b78bfc596e1cf9bf46db1d679b', '[\"*\"]', '2022-06-14 23:25:03', '2022-06-14 23:25:01', '2022-06-14 23:25:03'),
(633, 'App\\User', 448, 'qixerapi_keys', 'd7106c23bf5e9811a825022ac2f2f3429d0fef266a2284358d9f296a76950b43', '[\"*\"]', '2022-06-14 23:38:24', '2022-06-14 23:38:23', '2022-06-14 23:38:24'),
(634, 'App\\User', 454, 'qixerapi_keys', '200b56fb7318fd48fbfd3fc16075d9dc000e55d6dcc68189f01986a94dffbd72', '[\"*\"]', '2022-06-14 23:44:18', '2022-06-14 23:43:27', '2022-06-14 23:44:18'),
(635, 'App\\User', 448, 'qixerapi_keys', '754ad9905b65336838a11a2ddd749db338f08f4efd46acd4303473bc18b8bcd8', '[\"*\"]', '2022-06-14 23:53:00', '2022-06-14 23:46:02', '2022-06-14 23:53:00'),
(637, 'App\\User', 373, 'qixerapi_keys', 'f430a363d6ebe2bb4d492f55e20b3fcb60a7749a19a18e76aac350eec52927b1', '[\"*\"]', '2022-06-15 00:40:52', '2022-06-15 00:20:05', '2022-06-15 00:40:52'),
(638, 'App\\User', 454, 'qixerapi_keys', '26e0e8df3bbe7c055b047a9953dfb399130cb9d46a379a554725c1097f0b5c38', '[\"*\"]', '2022-06-15 00:44:30', '2022-06-15 00:44:29', '2022-06-15 00:44:30'),
(639, 'App\\User', 375, 'qixerapi_keys', 'a2ebf37cccba8b70382650938cde6d60148770b6e58a429154bcd414ba672c0b', '[\"*\"]', '2022-06-15 00:48:04', '2022-06-15 00:48:03', '2022-06-15 00:48:04'),
(640, 'App\\User', 432, 'qixerapi_keys', '42a27cb84755388ec373c4ea0a034dbf579b8af0e088faf22de0946c8a882cf6', '[\"*\"]', '2022-06-15 01:44:54', '2022-06-15 01:43:49', '2022-06-15 01:44:54'),
(643, 'App\\User', 427, 'qixerapi_keys', '6126a611c6929e1e7d327dcd9f79c7dee581a9d23c86dacb2174a643dbfe7208', '[\"*\"]', '2022-06-15 04:36:48', '2022-06-15 04:35:43', '2022-06-15 04:36:48'),
(644, 'App\\User', 297, 'qixerapi_keys', '60535fe4fd252ebae8ed6a4fd5904c8d06ea63ea9db10ee26252819cc5cd1d9f', '[\"*\"]', '2022-06-15 04:36:50', '2022-06-15 04:36:50', '2022-06-15 04:36:50'),
(645, 'App\\User', 427, 'qixerapi_keys', '6686ad6c5ea960b4908f2707fe28ae2c1bb3c6c3f38b3589ac0d270d941f738d', '[\"*\"]', '2022-06-15 04:37:39', '2022-06-15 04:37:38', '2022-06-15 04:37:39'),
(646, 'App\\User', 458, 'qixerapi_keys', '38007697e530ef9d4b1fffe3133ec621f78f2350ef7ecb5b8253209681c1dc77', '[\"*\"]', '2022-06-15 04:46:44', '2022-06-15 04:46:06', '2022-06-15 04:46:44'),
(647, 'App\\User', 460, 'qixerapi_keys', '7e3551e66dd1c562473f857fada49909a275d48ab0baeedad23140666d86709a', '[\"*\"]', '2022-06-15 05:52:14', '2022-06-15 05:50:51', '2022-06-15 05:52:14'),
(648, 'App\\User', 460, 'qixerapi_keys', 'a5bfd5f7cd78df0e5f6f1072929e8bbdbd98b8b757ea94c7d7f132dcb43501b4', '[\"*\"]', NULL, '2022-06-15 05:56:16', '2022-06-15 05:56:16'),
(649, 'App\\User', 446, 'qixerapi_keys', '0fa12faf7d3fddd91029026061d34a0637b14940ce44d2fba97243f8ee8c7264', '[\"*\"]', '2022-06-15 06:04:57', '2022-06-15 06:04:56', '2022-06-15 06:04:57'),
(652, 'App\\User', 461, 'qixerapi_keys', '1e2d4ec33e72ab892dfb93f1666e5e1308405de478095c7a155196e91e60ac08', '[\"*\"]', '2022-06-15 09:10:28', '2022-06-15 09:10:27', '2022-06-15 09:10:28'),
(654, 'App\\User', 463, 'qixerapi_keys', '00c7703fc11f479efe84f3ae08d80bfa32e425e3aace34d0ce2f702a893cacf0', '[\"*\"]', '2022-06-15 10:06:22', '2022-06-15 10:01:22', '2022-06-15 10:06:22'),
(655, 'App\\User', 441, 'qixerapi_keys', '6aaa0b801ebdc98560ad4bc74e233f67cc65ef805335ab436dc6458989e6b073', '[\"*\"]', '2022-06-15 10:56:27', '2022-06-15 10:54:07', '2022-06-15 10:56:27'),
(656, 'App\\User', 431, 'qixerapi_keys', '4243bc5278bfae7a4897fb9ed6ffffd7540899a03b912fd9201c6f4b917fee46', '[\"*\"]', '2022-06-15 11:00:23', '2022-06-15 11:00:22', '2022-06-15 11:00:23'),
(657, 'App\\User', 464, 'qixerapi_keys', '0b9df22f81b83403933bd5841c1730f37526fb8a2beb94f26119cfa7aa4ab4de', '[\"*\"]', '2022-06-15 11:36:25', '2022-06-15 11:36:24', '2022-06-15 11:36:25'),
(658, 'App\\User', 448, 'qixerapi_keys', 'd2430c96134be445e5ed3e4ccaf1b8bddcf253710468ecad9c069e0b9a970264', '[\"*\"]', '2022-06-15 11:41:44', '2022-06-15 11:38:59', '2022-06-15 11:41:44'),
(659, 'App\\User', 448, 'qixerapi_keys', '88030cd9abdd24485abb35bb2ac9fbc3a728b1f296419a78bcaa6b9e0dc469aa', '[\"*\"]', '2022-06-15 12:25:50', '2022-06-15 12:11:45', '2022-06-15 12:25:50'),
(660, 'App\\User', 448, 'qixerapi_keys', '9c63976ebfa1fe69dbf5daeb49a98d5f71ef56e6b94535bc3ca30225f2370ca2', '[\"*\"]', '2022-06-15 13:15:07', '2022-06-15 13:15:06', '2022-06-15 13:15:07'),
(661, 'App\\User', 448, 'qixerapi_keys', '0d6d7c8f4af21f1058d0cb742f84db2c216dec124185feb68dddf3d7e522004d', '[\"*\"]', '2022-06-15 13:46:16', '2022-06-15 13:46:15', '2022-06-15 13:46:16'),
(662, 'App\\User', 288, 'qixerapi_keys', 'e859f298b120cfbb7932306a4e6ba76b7f7107b431200ab7a6353e803d504518', '[\"*\"]', '2022-06-15 13:52:33', '2022-06-15 13:52:32', '2022-06-15 13:52:33'),
(663, 'App\\User', 465, 'qixerapi_keys', '42d075245dee0625ab7ccbb4b545b15eefb48a4b6a0e23d0dd4a4636f863a3f2', '[\"*\"]', '2022-06-15 14:35:13', '2022-06-15 14:35:12', '2022-06-15 14:35:13'),
(665, 'App\\User', 466, 'qixerapi_keys', '1be0c0be7c2a28438d04bb661d9ebad63e20bcebe5461d796420951a18d3ce5a', '[\"*\"]', '2022-06-15 15:40:28', '2022-06-15 15:19:34', '2022-06-15 15:40:28'),
(666, 'App\\User', 466, 'qixerapi_keys', 'e2c4b5c78004999b9289bebe9a0f8ce0a303a693990d3f1a8ca3d36e57e23514', '[\"*\"]', '2022-06-15 22:53:47', '2022-06-15 15:42:11', '2022-06-15 22:53:47'),
(667, 'App\\User', 398, 'qixerapi_keys', '7126495d26ff09ffd666d56da01ae258c40573fb04c89bb94055cc2f7be20a61', '[\"*\"]', '2022-06-15 17:32:59', '2022-06-15 17:32:58', '2022-06-15 17:32:59'),
(668, 'App\\User', 467, 'qixerapi_keys', 'f527d32a5e29f4751146c3aa56846eb49fb445c03b221d7df3cf8a57cb8a6778', '[\"*\"]', '2022-09-13 17:38:14', '2022-06-15 17:57:05', '2022-09-13 17:38:14'),
(669, 'App\\User', 448, 'qixerapi_keys', 'f2fdd11e08e003c38d809b6710dc92e218e99e6f124d525b7c1506ec1faf26ba', '[\"*\"]', '2022-06-15 18:09:21', '2022-06-15 18:09:20', '2022-06-15 18:09:21'),
(670, 'App\\User', 431, 'qixerapi_keys', '52c3d6b0c13d5505d55518fdaea4f9c83bf7d93ef603092833e9c60aab452424', '[\"*\"]', '2022-06-15 20:35:36', '2022-06-15 20:35:28', '2022-06-15 20:35:36'),
(671, 'App\\User', 468, 'qixerapi_keys', 'aeed3b12447de456b483d6f9a9a8186f69d3a236ec4c2b478cb3efc3bc42ac73', '[\"*\"]', '2022-06-15 21:10:18', '2022-06-15 21:07:17', '2022-06-15 21:10:18'),
(672, 'App\\User', 469, 'qixerapi_keys', 'a4f963541ad6f3208432f15246b3d257a1f11b18fd3296a073e132c0846a39c1', '[\"*\"]', '2022-06-15 21:44:41', '2022-06-15 21:44:40', '2022-06-15 21:44:41'),
(673, 'App\\User', 469, 'qixerapi_keys', 'f04b46d0eeec0baaf866fb7291b4c86f9a2dc01a3d67031433f30995a1b2fb65', '[\"*\"]', NULL, '2022-06-15 22:37:07', '2022-06-15 22:37:07'),
(674, 'App\\User', 466, 'qixerapi_keys', 'be9234472719c2f93fe14d1fe3d23f02684062832f0651cfa208c26475bd8285', '[\"*\"]', '2022-06-15 22:54:37', '2022-06-15 22:54:36', '2022-06-15 22:54:37'),
(676, 'App\\User', 471, 'qixerapi_keys', 'f5127694f50691bebd98cd1f6f2be138044854c39da3e8c7a1854d65faa364bd', '[\"*\"]', '2022-06-16 02:35:45', '2022-06-16 02:35:44', '2022-06-16 02:35:45'),
(678, 'App\\User', 448, 'qixerapi_keys', 'c1310b12343cc1ed389d2c6d7986d19f36b64b7688cd6c42f468b8e6e7a0e1c8', '[\"*\"]', '2022-06-16 03:53:24', '2022-06-16 03:49:59', '2022-06-16 03:53:24'),
(679, 'App\\User', 430, 'qixerapi_keys', 'f4dadb8cbaf9146beffb02b4193d51dfcbe2534b8bde4d8ed1a6e7909cdf2c22', '[\"*\"]', '2022-06-16 03:53:43', '2022-06-16 03:53:42', '2022-06-16 03:53:43'),
(682, 'App\\User', 473, 'qixerapi_keys', '070f0040fc1e4ac0b97833a91dea06c0a72715149deca1b4c38b1e1c274efe38', '[\"*\"]', '2022-06-16 05:47:30', '2022-06-16 05:47:09', '2022-06-16 05:47:30'),
(683, 'App\\User', 218, 'qixerapi_keys', '06fd0e1cbefcfa37609deb926984419043366de77299dfff3160555548c124c7', '[\"*\"]', '2022-06-16 06:05:11', '2022-06-16 06:05:11', '2022-06-16 06:05:11'),
(684, 'App\\User', 218, 'qixerapi_keys', '270ea24d636de801fcd4baa8333c8bb508cbf79fa165e62c5fdf2dd2bbca559f', '[\"*\"]', '2022-06-16 06:05:16', '2022-06-16 06:05:15', '2022-06-16 06:05:16'),
(685, 'App\\User', 448, 'qixerapi_keys', '92440c06ba31548d0e229e190f78b8a59b771d6c99c8a784c14b3348a0310b6e', '[\"*\"]', '2022-06-16 06:27:26', '2022-06-16 06:27:24', '2022-06-16 06:27:26'),
(686, 'App\\User', 452, 'qixerapi_keys', '56b952c5ee44eb9ad788052df01c2b8caaf29d294df2ef40419218861b6193cd', '[\"*\"]', '2022-06-16 06:46:58', '2022-06-16 06:46:57', '2022-06-16 06:46:58'),
(688, 'App\\User', 458, 'qixerapi_keys', '709cf6bb45e84aaeabae42bae62cf6f325eeac6ae83b1faaa909cfd69392f527', '[\"*\"]', '2022-06-16 09:05:45', '2022-06-16 09:05:44', '2022-06-16 09:05:45'),
(690, 'App\\User', 474, 'qixerapi_keys', '60a35061a76343a7cc49678e3704296506b87bebb681a7af19f2235f1bfe968d', '[\"*\"]', '2022-06-16 09:32:09', '2022-06-16 09:31:51', '2022-06-16 09:32:09'),
(691, 'App\\User', 475, 'qixerapi_keys', '7f822fc2a31e3228a2a1fa0884121409603c116c07f1225f3433aee66b999c26', '[\"*\"]', '2022-06-16 09:41:06', '2022-06-16 09:38:44', '2022-06-16 09:41:06'),
(692, 'App\\User', 384, 'qixerapi_keys', 'e9fe4c455b1896b70dd6745797004eb92189f7331bc9f8617fd1a3e73aebb010', '[\"*\"]', '2022-06-16 09:53:15', '2022-06-16 09:53:14', '2022-06-16 09:53:15'),
(693, 'App\\User', 448, 'qixerapi_keys', '1c8b79511262d1d1838dc71c8dd21b06be6d806cf3125cc9c50027c4aaf636c9', '[\"*\"]', '2022-06-16 10:32:17', '2022-06-16 10:32:16', '2022-06-16 10:32:17'),
(694, 'App\\User', 476, 'qixerapi_keys', '4c93d183ed4a4c7f587424c5906b72ebca9aed9949e0d9940e3f30d1f8163ab6', '[\"*\"]', '2022-06-16 10:45:44', '2022-06-16 10:42:40', '2022-06-16 10:45:44'),
(695, 'App\\User', 448, 'qixerapi_keys', '65ae94ee7a44250da7ba4cbeb6e03e9c658a652f5e60fe7411e9db92d6fb6b94', '[\"*\"]', NULL, '2022-06-16 11:00:18', '2022-06-16 11:00:18'),
(697, 'App\\User', 477, 'qixerapi_keys', '1b8dc1cf2190edd96d1988a849b34e2586fe2f6e28a831daf6870033e53d2a25', '[\"*\"]', '2022-06-16 11:44:43', '2022-06-16 11:44:41', '2022-06-16 11:44:43'),
(698, 'App\\User', 426, 'qixerapi_keys', '30cdbdd9a84d1b79e5f08e6f4300206a9185ca471c45238d86746956373db1f6', '[\"*\"]', '2022-06-16 12:02:11', '2022-06-16 12:02:10', '2022-06-16 12:02:11'),
(699, 'App\\User', 448, 'qixerapi_keys', 'ffe15b6280c1f3fa50f890d0d40a03a3f1a01235fe59b0ee2df968e2c6d2642a', '[\"*\"]', '2022-06-16 12:06:43', '2022-06-16 12:06:42', '2022-06-16 12:06:43'),
(700, 'App\\User', 448, 'qixerapi_keys', '38656f08eaaa885234b639a00c5865395bc052070c258f4d9c112f9de9f363b3', '[\"*\"]', '2022-06-16 12:47:42', '2022-06-16 12:47:41', '2022-06-16 12:47:42'),
(701, 'App\\User', 448, 'qixerapi_keys', 'd923e9370a256e34b168a57c30b6f3df57244bfaafc02108fb1d1fe84b8fa6b0', '[\"*\"]', NULL, '2022-06-16 13:04:48', '2022-06-16 13:04:48'),
(702, 'App\\User', 479, 'qixerapi_keys', '2182c1e9ee1fb655e49ee8bac6e67bcd212cb5467334d90fd45cb613d66cd396', '[\"*\"]', '2022-06-16 13:58:51', '2022-06-16 13:57:57', '2022-06-16 13:58:51'),
(703, 'App\\User', 479, 'qixerapi_keys', '84567cee100c5f164f117249ba5c14a08937c0d4ff2ef97f54578335de89a813', '[\"*\"]', '2022-06-16 14:29:59', '2022-06-16 14:29:58', '2022-06-16 14:29:59'),
(704, 'App\\User', 479, 'qixerapi_keys', '99a22990a3df2e0c2232b4c16241057928318711a3eb7c62cbe419ca529b5781', '[\"*\"]', '2022-06-16 14:31:43', '2022-06-16 14:31:43', '2022-06-16 14:31:43'),
(705, 'App\\User', 449, 'qixerapi_keys', 'f0a75078ae100c2fe92d741b42208725c717fc458d7639e191338c221aa1c143', '[\"*\"]', '2022-06-16 14:51:59', '2022-06-16 14:51:58', '2022-06-16 14:51:59'),
(706, 'App\\User', 480, 'qixerapi_keys', 'c042bf526743735572e1406e20584b5e45a79f53eba47374694fd4eed7e9c984', '[\"*\"]', '2022-06-16 14:53:53', '2022-06-16 14:53:52', '2022-06-16 14:53:53'),
(707, 'App\\User', 481, 'qixerapi_keys', '2101a67e4c1e8a11a06de8bd1eba35937459a714e6ec55a27dd453bd7824ed18', '[\"*\"]', '2022-06-16 15:06:06', '2022-06-16 15:05:01', '2022-06-16 15:06:06'),
(708, 'App\\User', 482, 'qixerapi_keys', 'e9252d23549bf2e98fa9f7f37aa552370b940bb2e5901a8e9e799d2c53786b96', '[\"*\"]', '2022-06-16 20:29:18', '2022-06-16 20:27:43', '2022-06-16 20:29:18'),
(709, 'App\\User', 483, 'qixerapi_keys', 'fdf880dea8c5d847758b043dc633675288b3d5d8b416b8488724cb492a4eafcb', '[\"*\"]', '2022-06-16 20:48:33', '2022-06-16 20:44:24', '2022-06-16 20:48:33'),
(710, 'App\\User', 484, 'qixerapi_keys', '6d02fa4518557c43a874ebb47db4f3ab6ecae8acd54c1252adf80768b24a9719', '[\"*\"]', '2022-06-16 21:18:16', '2022-06-16 21:14:56', '2022-06-16 21:18:16'),
(711, 'App\\User', 485, 'qixerapi_keys', '9d7500871c7f44b440c923603c4ad3792c7d8909f1a91e7ea346f7d3260ba728', '[\"*\"]', '2022-06-16 21:17:59', '2022-06-16 21:17:12', '2022-06-16 21:17:59'),
(712, 'App\\User', 486, 'qixerapi_keys', 'a743e210e64034f1de1bd171a4e3e78535d21ca1ed13a89aaca35a6ae8bde7c5', '[\"*\"]', NULL, '2022-06-16 21:29:23', '2022-06-16 21:29:23'),
(713, 'App\\User', 447, 'qixerapi_keys', 'd9f59ca560785ff79977a09371b81331dfdb78df62c055697f8fe781e6c7650f', '[\"*\"]', '2022-06-16 21:48:43', '2022-06-16 21:48:42', '2022-06-16 21:48:43'),
(714, 'App\\User', 448, 'qixerapi_keys', 'afcf3797968ee6109dd007c7fd790ef87093f7018d23fc8b25d8b4297d7de8cd', '[\"*\"]', '2022-06-16 22:39:05', '2022-06-16 22:39:04', '2022-06-16 22:39:05'),
(715, 'App\\User', 449, 'qixerapi_keys', '4fe0e693f900bfbc19731fd7b9e4d23ae2e653f636f4f707f34e4c5d23c3f3c4', '[\"*\"]', '2022-06-16 22:53:01', '2022-06-16 22:53:00', '2022-06-16 22:53:01'),
(716, 'App\\User', 487, 'qixerapi_keys', '1496c260735a7f062d0750f41f4f2e0f5e02f56c534b212a3413097ae12b267b', '[\"*\"]', '2022-06-17 03:57:34', '2022-06-16 23:01:48', '2022-06-17 03:57:34'),
(717, 'App\\User', 448, 'qixerapi_keys', 'a5077b574411ed792ddeb575957e7468e8310f2e0ab2b4bfc9ebd89769c533aa', '[\"*\"]', '2022-06-16 23:19:56', '2022-06-16 23:11:44', '2022-06-16 23:19:56'),
(718, 'App\\User', 477, 'qixerapi_keys', '95b451f8b59ebad4f8b7391f671e53537b5b29df2026c40682b9846055d8d056', '[\"*\"]', '2022-06-16 23:30:45', '2022-06-16 23:27:15', '2022-06-16 23:30:45'),
(719, 'App\\User', 488, 'qixerapi_keys', '4aec5f138f171521ee4281c332a588516126f122554ef5966dc39f76b894f8da', '[\"*\"]', '2022-06-16 23:40:00', '2022-06-16 23:37:56', '2022-06-16 23:40:00'),
(720, 'App\\User', 489, 'qixerapi_keys', '4d062b44798a32393eb24491f8b7189bdc89f18ce5f8588bc4f762dbfa26089f', '[\"*\"]', '2022-06-16 23:53:59', '2022-06-16 23:51:22', '2022-06-16 23:53:59'),
(721, 'App\\User', 413, 'qixerapi_keys', '9629f312f3eb864c8e09651d90fd2a0267597ce644802c8354e4d44bc652335e', '[\"*\"]', '2022-06-17 00:50:45', '2022-06-17 00:50:42', '2022-06-17 00:50:45'),
(722, 'App\\User', 479, 'qixerapi_keys', 'fd1ee9f802d436414ebd0e9b125fd3539e51dd99cf521af0b6ff05ed311b850c', '[\"*\"]', '2022-06-17 01:57:40', '2022-06-17 01:54:01', '2022-06-17 01:57:40'),
(724, 'App\\User', 448, 'qixerapi_keys', 'cd22d3fdcd5c020902424a654549a794414213e46c554c7978b167e0e142fcfd', '[\"*\"]', '2022-06-17 03:10:43', '2022-06-17 03:10:42', '2022-06-17 03:10:43'),
(725, 'App\\User', 482, 'qixerapi_keys', '4fda9c5e2fd62ba42cecfc9d4b6d6fe7d352060ddd83d59d7709c0eb1b7f6669', '[\"*\"]', '2022-06-17 03:24:16', '2022-06-17 03:23:44', '2022-06-17 03:24:16'),
(726, 'App\\User', 483, 'qixerapi_keys', '456271b9576178a883eb583f1fca3f262a8e3c00fd38b2a23c790861112b8751', '[\"*\"]', '2022-06-17 04:16:13', '2022-06-17 04:16:11', '2022-06-17 04:16:13'),
(727, 'App\\User', 448, 'qixerapi_keys', '167c0582dd5b467b30f5bb8a456769cfd065248d6002a40ecefffe4216a93f25', '[\"*\"]', '2022-06-17 04:16:14', '2022-06-17 04:16:13', '2022-06-17 04:16:14'),
(728, 'App\\User', 491, 'qixerapi_keys', '154ad9c80a1dabe21c7c09c57612a8181092dfd8b752ffdf3349089af441613d', '[\"*\"]', '2022-06-17 04:46:28', '2022-06-17 04:45:39', '2022-06-17 04:46:28'),
(731, 'App\\User', 479, 'qixerapi_keys', '708be960dd99d2e8eb1e8f5963f9cc1771f8d88f174ce585781d8de1c9b7f8fd', '[\"*\"]', '2022-06-17 05:44:27', '2022-06-17 05:44:26', '2022-06-17 05:44:27'),
(732, 'App\\User', 479, 'qixerapi_keys', '1598fc9e596269bb87298b85e992406bf57d7ec6cc1bf3f55221121742b84604', '[\"*\"]', '2022-06-17 05:49:33', '2022-06-17 05:48:37', '2022-06-17 05:49:33'),
(733, 'App\\User', 482, 'qixerapi_keys', 'd1451a5a79cdd36614a22ef21d63a4a1706a5cf198e7418f774c590c784bd60b', '[\"*\"]', '2022-06-17 06:04:03', '2022-06-17 06:04:02', '2022-06-17 06:04:03'),
(734, 'App\\User', 492, 'qixerapi_keys', 'de39b7fde4c9bc856fc3dd96357e0466f1adae1aa4582a1176064032655e58fb', '[\"*\"]', '2022-06-17 06:25:15', '2022-06-17 06:21:44', '2022-06-17 06:25:15'),
(735, 'App\\User', 448, 'qixerapi_keys', 'a129c6d5ea7675f65befcec1bc7c60f9e514b1f4e96ee8697e45f2d89b0b6698', '[\"*\"]', '2022-06-17 06:59:49', '2022-06-17 06:59:48', '2022-06-17 06:59:49'),
(736, 'App\\User', 397, 'qixerapi_keys', '9387da96ae5591d25b3185510e9257a0f12d28997f7cfce4939b896bc5043e5f', '[\"*\"]', '2022-06-17 08:16:41', '2022-06-17 08:16:40', '2022-06-17 08:16:41'),
(737, 'App\\User', 448, 'qixerapi_keys', '0c5c0081d44a34a3c8fa8a2ffd7ecfa870cdfbb9bda26f60a18f93c286530d7f', '[\"*\"]', '2022-06-17 08:26:06', '2022-06-17 08:25:59', '2022-06-17 08:26:06'),
(738, 'App\\User', 430, 'qixerapi_keys', '21503f1db3393ab1d4433e0b21efb8f090d76dc315b8a0f8e870d0717b693cde', '[\"*\"]', '2022-06-17 09:11:21', '2022-06-17 09:03:39', '2022-06-17 09:11:21'),
(739, 'App\\User', 493, 'qixerapi_keys', '2a9868ff84d97efcf9d7508617ed2d8e800a5f27070bce69e1cc09d4352da604', '[\"*\"]', NULL, '2022-06-17 09:11:18', '2022-06-17 09:11:18'),
(740, 'App\\User', 493, 'qixerapi_keys', 'b58f88287d3df09ad1cb243a2b649a0311612bd2d601f38bf2529b72422858c5', '[\"*\"]', '2022-06-17 09:23:47', '2022-06-17 09:21:07', '2022-06-17 09:23:47'),
(741, 'App\\User', 466, 'qixerapi_keys', 'ae59f3daac2a2cb7ade90f26604a466416090bfc6ce57d6af7cf871dd48fd434', '[\"*\"]', '2022-06-17 09:44:04', '2022-06-17 09:44:03', '2022-06-17 09:44:04'),
(742, 'App\\User', 483, 'qixerapi_keys', '62be991964edac4d7ddabfa5687a34b6343f49b2d6c2ef8f6011333235b44d16', '[\"*\"]', '2022-06-17 22:41:09', '2022-06-17 10:05:31', '2022-06-17 22:41:09'),
(743, 'App\\User', 485, 'qixerapi_keys', '10e4110b9e246db946e4f47cc00cd0293925b0e97e90a05bfdc6b811b3300c5f', '[\"*\"]', '2022-06-17 10:47:14', '2022-06-17 10:47:11', '2022-06-17 10:47:14'),
(744, 'App\\User', 448, 'qixerapi_keys', 'e4e1a54ade74e3627ae5e92c3f6403a45c63ff559dff5c6e9a55c5a2dc8ef415', '[\"*\"]', '2022-06-17 11:54:46', '2022-06-17 11:49:43', '2022-06-17 11:54:46'),
(745, 'App\\User', 495, 'qixerapi_keys', '48e87dc49ede83ded50c55df74e242782cf6052ebd378aa69b70f618b448b7ec', '[\"*\"]', '2022-06-17 12:20:11', '2022-06-17 12:15:58', '2022-06-17 12:20:11'),
(746, 'App\\User', 288, 'qixerapi_keys', '0589376b0d88ca50462a2be57fe1d7aa9d681e3012a7782d1338b9663e40718b', '[\"*\"]', '2022-06-17 14:54:30', '2022-06-17 14:54:07', '2022-06-17 14:54:30'),
(747, 'App\\User', 485, 'qixerapi_keys', 'd8f97503808d1667ff1aa5d929bb1973fe240f2b6f16a0f727b2a69229a5bc27', '[\"*\"]', '2022-06-17 16:41:48', '2022-06-17 16:41:48', '2022-06-17 16:41:48'),
(749, 'App\\User', 497, 'qixerapi_keys', '1e1964baedd3d9e3263bc00566cc44111b00dd5e5ee2de754366b51d21c097c4', '[\"*\"]', '2022-06-17 18:50:11', '2022-06-17 18:46:59', '2022-06-17 18:50:11'),
(750, 'App\\User', 497, 'qixerapi_keys', 'f9c315c9f207ce92708d852bd79f6ee757d53e9af4452657eaf43141e4694d4f', '[\"*\"]', '2022-06-17 18:51:09', '2022-06-17 18:51:08', '2022-06-17 18:51:09'),
(752, 'App\\User', 498, 'qixerapi_keys', '95317e45b74cc67a5b4c6c3b04d608757f7c3c52f31bbc7eed8ec24205547daf', '[\"*\"]', '2022-06-17 21:13:36', '2022-06-17 21:13:35', '2022-06-17 21:13:36'),
(755, 'App\\User', 317, 'qixerapi_keys', '5fccdf921afca34d2d248c878f0b2d861fc1eb6aa911e2cde4dc62b0b0f05ca8', '[\"*\"]', '2022-06-17 22:06:27', '2022-06-17 22:06:26', '2022-06-17 22:06:27'),
(756, 'App\\User', 464, 'qixerapi_keys', '890f86a5ff4388725ae4a837ac33d362fab36461c2cf9d96ea564df71067f387', '[\"*\"]', '2022-06-17 22:20:26', '2022-06-17 22:20:25', '2022-06-17 22:20:26'),
(757, 'App\\User', 499, 'qixerapi_keys', 'e0adacac41c34b57109414410e9980aa3c963013e3df1c7432afc8d062f8ae68', '[\"*\"]', '2022-06-17 22:52:11', '2022-06-17 22:45:19', '2022-06-17 22:52:11'),
(758, 'App\\User', 375, 'qixerapi_keys', 'f7fbb617bdaed01be7640eca95bc9e57bab624367f59e9131bec8d405fec6336', '[\"*\"]', '2022-06-18 00:37:32', '2022-06-18 00:37:31', '2022-06-18 00:37:32'),
(761, 'App\\User', 426, 'qixerapi_keys', '3da1f42cbc92bcf104ecdf0fa28596277033afc000d5c679dd263d7d09ec431a', '[\"*\"]', '2022-06-18 03:35:16', '2022-06-18 03:35:15', '2022-06-18 03:35:16'),
(763, 'App\\User', 426, 'qixerapi_keys', '810dfcf50618ea4ef1e366e9327eb1c41834429621b9410eeee06bb4308b0133', '[\"*\"]', '2022-06-18 04:05:10', '2022-06-18 04:01:46', '2022-06-18 04:05:10'),
(764, 'App\\User', 458, 'qixerapi_keys', '17df44001f3a0a0878d40997ac60e47d58b3db2f32ab09db2c7c460466943037', '[\"*\"]', '2022-06-18 05:10:47', '2022-06-18 05:10:47', '2022-06-18 05:10:47'),
(766, 'App\\User', 501, 'qixerapi_keys', '13366ca503ac358619e975f73c13b85e5a3a7fde222a3ea20a42a3389453188c', '[\"*\"]', '2022-06-18 05:38:22', '2022-06-18 05:38:21', '2022-06-18 05:38:22'),
(768, 'App\\User', 495, 'qixerapi_keys', '43e771cf4841e8b65c9543f919ed4d1334e7fb7ebadf22f1f3d80f2a610a7fce', '[\"*\"]', '2022-06-18 06:57:00', '2022-06-18 06:56:57', '2022-06-18 06:57:00'),
(769, 'App\\User', 493, 'qixerapi_keys', '5409a2fe4051bd1b2c99ca991fb61fea9ecaaf11f4e861f5eb428972937ab463', '[\"*\"]', NULL, '2022-06-18 08:35:22', '2022-06-18 08:35:22'),
(770, 'App\\User', 503, 'qixerapi_keys', 'ff8fd8758e19279bd8d4d6026dbe38f725a5642f953b280bc72d8b079f352978', '[\"*\"]', '2022-06-18 08:47:45', '2022-06-18 08:47:45', '2022-06-18 08:47:45'),
(771, 'App\\User', 469, 'qixerapi_keys', '210fe05dc815a7e352676219a187c78f5b2fc19833201b77848c54333a0f9fbe', '[\"*\"]', '2022-06-18 09:22:30', '2022-06-18 09:22:18', '2022-06-18 09:22:30'),
(772, 'App\\User', 504, 'qixerapi_keys', '2e0995734d44c73c3351c02acc50b92dccb8c96989896db272577e91bead41e7', '[\"*\"]', '2022-06-18 09:32:14', '2022-06-18 09:30:25', '2022-06-18 09:32:14'),
(773, 'App\\User', 308, 'qixerapi_keys', '444028b5af7af656d78d883f9c3c0e2cf01bdf4e4b1d499c6eec26aea82ad34b', '[\"*\"]', '2022-06-18 10:26:33', '2022-06-18 10:24:38', '2022-06-18 10:26:33'),
(774, 'App\\User', 308, 'qixerapi_keys', '15e541e86f0ed555478f02c12196f640d4b1c279d54def4bcc97a39b47fbdc21', '[\"*\"]', '2022-06-18 10:27:26', '2022-06-18 10:26:39', '2022-06-18 10:27:26'),
(775, 'App\\User', 505, 'qixerapi_keys', 'a12fd4a2e68fdf5ef1fe9789fb80877ba01ec3bbf46294d3811846181f010634', '[\"*\"]', NULL, '2022-06-18 10:45:10', '2022-06-18 10:45:10'),
(776, 'App\\User', 506, 'qixerapi_keys', 'dbc78838ec6780fe67c87a502868ecb39dc1ebde261488d0c93773e66b61eb40', '[\"*\"]', '2022-06-18 10:49:14', '2022-06-18 10:46:47', '2022-06-18 10:49:14'),
(778, 'App\\User', 507, 'qixerapi_keys', 'a54de35527ab794b6fe5f3e63f806ed26864b75821dbfaae111719d463208d67', '[\"*\"]', '2022-06-18 11:56:53', '2022-06-18 11:52:49', '2022-06-18 11:56:53'),
(780, 'App\\User', 288, 'qixerapi_keys', 'b8e5ad82ae468212dc94f17f0eaaef79cb3c9e85b54ddc91feefc883d55d4109', '[\"*\"]', '2022-06-18 13:12:04', '2022-06-18 13:12:03', '2022-06-18 13:12:04'),
(781, 'App\\User', 218, 'qixerapi_keys', 'e606e1d2c4d783f81cb9349a439b581466cecabead8470c48c8126798a37a378', '[\"*\"]', '2022-06-18 13:21:14', '2022-06-18 13:21:14', '2022-06-18 13:21:14'),
(782, 'App\\User', 218, 'qixerapi_keys', '8643f35ab6f0c84030833d69911e120f79e961da103ad2af694754c86c09ca42', '[\"*\"]', '2022-06-18 13:28:16', '2022-06-18 13:23:23', '2022-06-18 13:28:16'),
(785, 'App\\User', 509, 'qixerapi_keys', '9022fffcba73e28ef2b50379147ae7f4ec54a1638646d1642dfc34efd9275406', '[\"*\"]', '2022-06-18 13:58:40', '2022-06-18 13:58:21', '2022-06-18 13:58:40'),
(786, 'App\\User', 512, 'qixerapi_keys', 'dc0c8d24a14b671de69267623bd9172c6f35273d32c3c3fc3beb742ef1ad3418', '[\"*\"]', '2022-06-18 17:26:37', '2022-06-18 16:59:34', '2022-06-18 17:26:37'),
(787, 'App\\User', 487, 'qixerapi_keys', 'e2d48bfd43546360e4fbcb76e66f4c56c39e74f57903736443f53825e664c76e', '[\"*\"]', '2022-06-18 17:31:34', '2022-06-18 17:09:49', '2022-06-18 17:31:34'),
(788, 'App\\User', 514, 'qixerapi_keys', 'a2098f538c1bed5717c9f92d312e4cf578762eaabea9088d47b72980726d0c1c', '[\"*\"]', '2022-06-18 18:06:51', '2022-06-18 17:59:30', '2022-06-18 18:06:51'),
(789, 'App\\User', 515, 'qixerapi_keys', '387f8c61db35b48b7198da91368688b6eca511161aff46387357e4c463b0ca0d', '[\"*\"]', '2022-07-28 10:39:12', '2022-06-18 18:28:56', '2022-07-28 10:39:12'),
(790, 'App\\User', 512, 'qixerapi_keys', '3e5a5a0489d367401dc4b3f97873912339de5536431454121777f98feb711fd5', '[\"*\"]', '2022-06-18 18:35:21', '2022-06-18 18:35:04', '2022-06-18 18:35:21'),
(791, 'App\\User', 516, 'qixerapi_keys', 'a75d0da15e327c010998426feeab75838a4cef630c9a916b725572de10c14520', '[\"*\"]', '2022-06-18 18:41:01', '2022-06-18 18:36:32', '2022-06-18 18:41:01'),
(793, 'App\\User', 514, 'qixerapi_keys', '9cb493ee426d6e0416923aefae1cc9c2fc6a7ade6c9fd9c5829d72859b131e75', '[\"*\"]', '2022-06-18 19:42:06', '2022-06-18 19:32:06', '2022-06-18 19:42:06'),
(795, 'App\\User', 514, 'qixerapi_keys', '21e267e54b0a9c7583ce26b7d1f3ca9aa77b3f7e3b8dcd832ace2172fcb2a24b', '[\"*\"]', '2022-06-18 20:18:39', '2022-06-18 20:16:14', '2022-06-18 20:18:39'),
(796, 'App\\User', 514, 'qixerapi_keys', '5dd0cd795899e7692aa81a878de7c515a94dfd3d1c47476aa9b2ce169672f22b', '[\"*\"]', '2022-06-18 20:18:49', '2022-06-18 20:18:49', '2022-06-18 20:18:49'),
(797, 'App\\User', 514, 'qixerapi_keys', 'af1d93250f60739b56cc297f9863f81228d24a5c966e01fa1aa18737678e61e1', '[\"*\"]', '2022-06-18 20:54:23', '2022-06-18 20:54:22', '2022-06-18 20:54:23'),
(798, 'App\\User', 514, 'qixerapi_keys', 'c17c9ae4a8af824034f2591df6e5819b8a465187d0c00108976403f07e44516e', '[\"*\"]', NULL, '2022-06-18 20:54:45', '2022-06-18 20:54:45'),
(799, 'App\\User', 514, 'qixerapi_keys', '1af9166d5924dfe0f05c9c4a8683eb8f9f0d195538e53f83172b2691f4aac566', '[\"*\"]', '2022-06-18 21:44:20', '2022-06-18 21:44:19', '2022-06-18 21:44:20'),
(800, 'App\\User', 514, 'qixerapi_keys', '90a012ff19a572919285be885e9f28c6a2c018ddf76735f48dc6768019051e64', '[\"*\"]', '2022-06-18 21:49:00', '2022-06-18 21:48:25', '2022-06-18 21:49:00'),
(801, 'App\\User', 514, 'qixerapi_keys', 'bd85adee36a5d7ef8c68eedd784be0fa30c492b4b24f591e6842bbbe7c0793e1', '[\"*\"]', '2022-06-18 21:59:50', '2022-06-18 21:58:13', '2022-06-18 21:59:50'),
(802, 'App\\User', 519, 'qixerapi_keys', 'e8c30fa3dd48be94d150ad35227cc657b808fbba337bf2df94f6b2d2e16542a3', '[\"*\"]', '2022-06-18 22:06:43', '2022-06-18 22:02:39', '2022-06-18 22:06:43'),
(803, 'App\\User', 520, 'qixerapi_keys', 'fae66bb9b3e2a71802b8962ebf715e587577672de286b77bdedda5c4d573a3fe', '[\"*\"]', '2022-06-18 22:10:04', '2022-06-18 22:10:03', '2022-06-18 22:10:04'),
(804, 'App\\User', 485, 'qixerapi_keys', '283897bab1e871ed14a93f28ce87b9a2bef231c71bee4142eaf8608f1647b599', '[\"*\"]', '2022-06-18 22:12:43', '2022-06-18 22:12:43', '2022-06-18 22:12:43'),
(805, 'App\\User', 485, 'qixerapi_keys', '23e4bb397f38ba2a2200811973adec9e55465a2c792565c7219ee449aa01872d', '[\"*\"]', '2022-06-18 22:13:19', '2022-06-18 22:13:18', '2022-06-18 22:13:19'),
(806, 'App\\User', 485, 'qixerapi_keys', '8d12f28acdfc47fb2804135c403d55401628d468f237797c623b4cc813359817', '[\"*\"]', '2022-06-18 22:13:27', '2022-06-18 22:13:26', '2022-06-18 22:13:27'),
(807, 'App\\User', 485, 'qixerapi_keys', '139a06afa4f76da2310e02746e169e312df6cead8f944c328b8233f37a2382a0', '[\"*\"]', '2022-06-18 22:13:46', '2022-06-18 22:13:46', '2022-06-18 22:13:46'),
(808, 'App\\User', 514, 'qixerapi_keys', '8db66440a6c6dcea1890dfa8acb057f4f9fcc0c5cfe591d49562a58d812c032e', '[\"*\"]', '2022-06-18 22:25:59', '2022-06-18 22:19:40', '2022-06-18 22:25:59'),
(810, 'App\\User', 373, 'qixerapi_keys', '7ffadadf5237aeb6110e3effb8995f8eabe67f1017f6198e82d047478b9e0b77', '[\"*\"]', '2022-06-19 00:51:48', '2022-06-19 00:51:46', '2022-06-19 00:51:48'),
(811, 'App\\User', 487, 'qixerapi_keys', 'da454c2c6d9d789a678d3b8640928b50efa76f484c5efce4d2d2aa8623a326ee', '[\"*\"]', '2022-06-19 01:51:16', '2022-06-19 01:51:15', '2022-06-19 01:51:16'),
(812, 'App\\User', 503, 'qixerapi_keys', '550f9c843f1f6399b336c88c2aba016b51ba7b53f2e6f663a08b631930f43546', '[\"*\"]', '2022-06-19 02:17:22', '2022-06-19 02:17:21', '2022-06-19 02:17:22'),
(816, 'App\\User', 520, 'qixerapi_keys', '576e7a9f23bd49c5ad790054f5317c84be680f3599b0e8ed39c14069001233aa', '[\"*\"]', '2022-06-19 05:08:41', '2022-06-19 05:05:50', '2022-06-19 05:08:41'),
(817, 'App\\User', 258, 'qixerapi_keys', '7a6605ace62d1c0132c5d69400bd78ef13c9d1b3612c88b5df57cfc5458ec7ea', '[\"*\"]', '2022-06-19 05:13:52', '2022-06-19 05:13:50', '2022-06-19 05:13:52'),
(818, 'App\\User', 514, 'qixerapi_keys', 'd9f788c2f00ff4c87fdd00d786072b06d7e77675a52d54ebbaee2480985aa7b6', '[\"*\"]', '2022-06-19 06:05:53', '2022-06-19 05:40:49', '2022-06-19 06:05:53'),
(820, 'App\\User', 514, 'qixerapi_keys', 'a859a84b0d5f1ee66d2b7b06afe6fdb825d4da262f495f9f94f9d76bde9f199a', '[\"*\"]', '2022-06-19 06:32:06', '2022-06-19 06:31:40', '2022-06-19 06:32:06'),
(821, 'App\\User', 522, 'qixerapi_keys', '196bc1c9db6f07198ff887a0538992f141c5193eb090f13c86641da6e6ec1581', '[\"*\"]', NULL, '2022-06-19 07:06:43', '2022-06-19 07:06:43'),
(822, 'App\\User', 523, 'qixerapi_keys', 'cac1de6a404218c589e6293668cd429fd9f2a92c6c0312b15745afa98833935d', '[\"*\"]', '2022-06-19 08:00:09', '2022-06-19 07:58:17', '2022-06-19 08:00:09'),
(824, 'App\\User', 448, 'qixerapi_keys', '37a9a3d005788b7d48d93f3c86ccf53049c3fefa89f8cf44d64a42c9caf8a4f4', '[\"*\"]', '2022-06-19 09:53:00', '2022-06-19 09:52:56', '2022-06-19 09:53:00'),
(825, 'App\\User', 524, 'qixerapi_keys', 'edfc58a53a0f3bc39df9b0feb92d8af3b167363c02bc9658fd02c8ebd7193a99', '[\"*\"]', '2022-06-19 09:56:14', '2022-06-19 09:54:12', '2022-06-19 09:56:14'),
(826, 'App\\User', 427, 'qixerapi_keys', '50213248c0747d66949f592da468db08604a45b5fbdeef345050c9d31c4be338', '[\"*\"]', '2022-06-19 10:01:15', '2022-06-19 10:01:08', '2022-06-19 10:01:15'),
(827, 'App\\User', 323, 'qixerapi_keys', '1df148534335c4aa141d86babe7b2de11cfd227317a07156afeeae9ad88b6286', '[\"*\"]', '2022-06-19 10:30:37', '2022-06-19 10:30:36', '2022-06-19 10:30:37'),
(828, 'App\\User', 323, 'qixerapi_keys', 'ccbf47fc5614619af2938b289b28d440608a4e4cb6147af76c78577b2e8e84ff', '[\"*\"]', '2022-06-19 11:09:23', '2022-06-19 11:09:21', '2022-06-19 11:09:23'),
(829, 'App\\User', 448, 'qixerapi_keys', 'c37f444222ec431545825dc2d5a77965002ead9e0ee2581fbd5aca24fd6e341d', '[\"*\"]', '2022-06-19 12:15:00', '2022-06-19 12:14:58', '2022-06-19 12:15:00'),
(830, 'App\\User', 514, 'qixerapi_keys', '57b97165cc5ad3a2de19d01e0a02a05909821fe8787090b298fe54c2e541f240', '[\"*\"]', '2022-06-19 13:59:33', '2022-06-19 12:32:23', '2022-06-19 13:59:33'),
(831, 'App\\User', 304, 'qixerapi_keys', 'f1e5a1f02203aa98912590c099e98dafebd38e8e79318d56935f5e4357fb461c', '[\"*\"]', '2022-06-19 12:41:54', '2022-06-19 12:41:52', '2022-06-19 12:41:54'),
(832, 'App\\User', 493, 'qixerapi_keys', 'c63a788bb751885b8e6f13743e4a9e56f7fe623805bee3a5d7335e334e9ba4ff', '[\"*\"]', '2022-06-19 14:30:23', '2022-06-19 14:30:22', '2022-06-19 14:30:23'),
(835, 'App\\User', 526, 'qixerapi_keys', 'e26c48a37c9412931e96822f45f0efac002c53e5f29be599bd7ebc211971c1b0', '[\"*\"]', '2022-06-19 15:58:49', '2022-06-19 15:58:48', '2022-06-19 15:58:49'),
(836, 'App\\User', 527, 'qixerapi_keys', 'bddde32922dda4fe87f3d7b2bc8f19f9c5a21cadcb89d706f9b51b647d306e69', '[\"*\"]', '2022-06-19 17:37:56', '2022-06-19 17:04:17', '2022-06-19 17:37:56'),
(837, 'App\\User', 257, 'qixerapi_keys', '6b95bc89e71497ec0d3288ca7155ce43fa1e00ac0d56d1b5d7f0aeb8f38e83ab', '[\"*\"]', '2022-06-19 19:37:16', '2022-06-19 19:37:02', '2022-06-19 19:37:16'),
(838, 'App\\User', 528, 'qixerapi_keys', '61b3668d19a2d585f29512abe372167bb53e46a8cf4ad6805abb45fa76c2dc3b', '[\"*\"]', '2022-06-19 20:17:36', '2022-06-19 20:15:45', '2022-06-19 20:17:36'),
(840, 'App\\User', 375, 'qixerapi_keys', '6f1bbff61c1ce9d22292f9ff13e34ff83d5dc675d2026d2ad56eae37603c4419', '[\"*\"]', '2022-06-19 23:31:45', '2022-06-19 23:31:44', '2022-06-19 23:31:45'),
(848, 'App\\User', 531, 'qixerapi_keys', 'd51b06c637402815ab2d8ddae3557c12ff14cf441c87990e56f3295c88797939', '[\"*\"]', '2022-06-20 03:08:05', '2022-06-20 03:02:04', '2022-06-20 03:08:05'),
(850, 'App\\User', 414, 'qixerapi_keys', '25561cca906bdb744913f62e28781f407a6f13783d27d2ed9ed1c309fbd05f30', '[\"*\"]', '2022-06-20 23:36:23', '2022-06-20 04:49:15', '2022-06-20 23:36:23'),
(851, 'App\\User', 432, 'qixerapi_keys', '71f7ae27b4953af6cc7cf82dfdf8a18b367821119d37573e5d17729de5aea2ab', '[\"*\"]', '2022-06-20 05:55:22', '2022-06-20 05:54:55', '2022-06-20 05:55:22'),
(852, 'App\\User', 532, 'qixerapi_keys', '9fd6636e653cee5bf1e2ee776c9c164149bc7d816e8a53753eacfc4e1b77b2b6', '[\"*\"]', NULL, '2022-06-20 06:01:20', '2022-06-20 06:01:20'),
(853, 'App\\User', 532, 'qixerapi_keys', '6f810c9fb707d313f7f48f95b138e18839114553d5f8b9db71b944f35df49caa', '[\"*\"]', '2022-06-20 06:18:27', '2022-06-20 06:01:53', '2022-06-20 06:18:27'),
(854, 'App\\User', 533, 'qixerapi_keys', '50d278113fec6d9114eebc28e7ba366bab909b27d5d8b8e5a39983e64790c11a', '[\"*\"]', '2022-06-20 07:00:02', '2022-06-20 06:59:25', '2022-06-20 07:00:02'),
(855, 'App\\User', 534, 'qixerapi_keys', '48bf74f0d857403df45b054f29bb776b4e51278177846353401bc87a5971a185', '[\"*\"]', '2022-06-20 07:05:02', '2022-06-20 07:05:01', '2022-06-20 07:05:02'),
(857, 'App\\User', 458, 'qixerapi_keys', '41ef796575779961d8ef588786d1751e820ce7350ccccf5e502db35a210aaccc', '[\"*\"]', '2022-06-20 08:37:23', '2022-06-20 08:37:21', '2022-06-20 08:37:23'),
(858, 'App\\User', 533, 'qixerapi_keys', 'a1b4f013a72695e572f179e149de0192fc62c5d3031de4889c661248d0cc22b8', '[\"*\"]', '2022-06-20 09:47:37', '2022-06-20 09:47:36', '2022-06-20 09:47:37'),
(860, 'App\\User', 535, 'qixerapi_keys', '539ed804c879a3e6fcf1c7cf01cb15ef40e3aa3d552d6c6ad1d6ca22bd64e0a5', '[\"*\"]', '2022-06-20 10:12:48', '2022-06-20 10:12:47', '2022-06-20 10:12:48'),
(861, 'App\\User', 535, 'qixerapi_keys', 'a30f2f856be5d73052eb529a9eb69eb44081e67d4caa9b6e7acf2376b99ca81d', '[\"*\"]', '2022-06-20 10:37:48', '2022-06-20 10:37:28', '2022-06-20 10:37:48'),
(862, 'App\\User', 536, 'qixerapi_keys', '67f3e79484100a30ec46f1ff216687a8c1d7a5f54da60bc67a78102cc293b296', '[\"*\"]', '2022-06-20 11:31:30', '2022-06-20 11:26:29', '2022-06-20 11:31:30'),
(864, 'App\\User', 536, 'qixerapi_keys', '3f8429769777d160e96f3ae043b721ec68238d85f6ab62dcb5cb66d03254f990', '[\"*\"]', '2022-06-20 11:37:22', '2022-06-20 11:37:21', '2022-06-20 11:37:22'),
(865, 'App\\User', 537, 'qixerapi_keys', '249140145198c04e71e6aa7db5c024f5b9e37c2441ae0faa2b73e1c6906e616e', '[\"*\"]', '2022-06-20 12:12:05', '2022-06-20 12:05:43', '2022-06-20 12:12:05'),
(866, 'App\\User', 448, 'qixerapi_keys', '2a971acf178bf59922a36f8137eeed7d45522cfa456d1d50484187e6d352447d', '[\"*\"]', '2022-06-20 12:06:31', '2022-06-20 12:06:30', '2022-06-20 12:06:31'),
(867, 'App\\User', 537, 'qixerapi_keys', 'f13b86dcd2b063d64178e46394b4805ef67d73c3722cc02aabd0ece84a4e51db', '[\"*\"]', '2022-06-20 12:45:00', '2022-06-20 12:44:59', '2022-06-20 12:45:00'),
(868, 'App\\User', 308, 'qixerapi_keys', 'c1336f4e9038745b379e757d956aba545ba49b4bb9141381c5219c60a0d68bb9', '[\"*\"]', '2022-06-20 12:46:26', '2022-06-20 12:46:24', '2022-06-20 12:46:26'),
(869, 'App\\User', 218, 'qixerapi_keys', '171e266339bba76dcb9a34efa1a2d387cb7f497dce293fbe040593d6fff39732', '[\"*\"]', '2022-06-20 13:22:50', '2022-06-20 13:22:50', '2022-06-20 13:22:50'),
(870, 'App\\User', 218, 'qixerapi_keys', '4fdb5bf1cb76a3bf6daaf910c121767c3366d3eedc5f604cbdc7b7b18a3d53df', '[\"*\"]', '2022-06-20 13:33:45', '2022-06-20 13:24:26', '2022-06-20 13:33:45'),
(872, 'App\\User', 479, 'qixerapi_keys', 'b2b1705808d803a64daded382d891b84cf7dba28727ac6478547730297093d44', '[\"*\"]', '2022-06-20 13:58:45', '2022-06-20 13:39:44', '2022-06-20 13:58:45'),
(874, 'App\\User', 538, 'qixerapi_keys', '755d3466eba0f643ae4e02d55a092e1f8294eb131d2156530551a13a2134c24d', '[\"*\"]', NULL, '2022-06-20 14:31:35', '2022-06-20 14:31:35'),
(875, 'App\\User', 448, 'qixerapi_keys', '98070bd24b1cd491a7467d775604583dfa54423825ca5ec9e4332eec4779d7db', '[\"*\"]', '2022-06-20 14:48:50', '2022-06-20 14:48:48', '2022-06-20 14:48:50'),
(876, 'App\\User', 448, 'qixerapi_keys', '106b3af4e685e94189bfc220e8540dfdfb6186dcd1f1aac8331646477bffef2b', '[\"*\"]', '2022-06-20 14:56:27', '2022-06-20 14:56:26', '2022-06-20 14:56:27'),
(877, 'App\\User', 539, 'qixerapi_keys', '604010f6eb61a849a09c9d79d2acc05f1cd4521f8601f52a24dd680202d83839', '[\"*\"]', NULL, '2022-06-20 18:46:07', '2022-06-20 18:46:07'),
(879, 'App\\User', 541, 'qixerapi_keys', '6a713e973f7d5dad052dc34664987e3fac9a2b787343ca26b2ef0251dbd06851', '[\"*\"]', '2022-06-20 18:53:42', '2022-06-20 18:49:06', '2022-06-20 18:53:42'),
(880, 'App\\User', 541, 'qixerapi_keys', 'e33db4066d26598c62f663402447c8ed3084355add8756c22e5daa86fe66a038', '[\"*\"]', '2022-06-20 19:17:26', '2022-06-20 19:17:25', '2022-06-20 19:17:26'),
(883, 'App\\User', 542, 'qixerapi_keys', 'b5461db5b045dfc593cf4a4438241c6e8410cfe8956e736fe8dad0b22c80e78b', '[\"*\"]', '2022-06-20 21:22:10', '2022-06-20 21:22:09', '2022-06-20 21:22:10'),
(884, 'App\\User', 433, 'qixerapi_keys', '69ce6bd13e87dc9192ce032039f0445f148513d1734ad8087a360742085376a3', '[\"*\"]', '2022-06-20 21:28:35', '2022-06-20 21:28:34', '2022-06-20 21:28:35'),
(888, 'App\\User', 543, 'qixerapi_keys', '5a1a395bb876e176d88515d41668fc630ec8d9943c909da454cc21aa8fb42447', '[\"*\"]', '2022-06-20 23:08:08', '2022-06-20 23:05:22', '2022-06-20 23:08:08'),
(891, 'App\\User', 544, 'qixerapi_keys', '6dca80b4ac18cf91e6097ba63cf7cfd5f9d3dfa60f11975de68557dda6792b5f', '[\"*\"]', NULL, '2022-06-20 23:43:36', '2022-06-20 23:43:36'),
(892, 'App\\User', 247, 'qixerapi_keys', 'be64511311cac8ea04905bb51b043b5639eb786b87325b378bce803355833c44', '[\"*\"]', '2022-06-21 00:27:22', '2022-06-20 23:55:20', '2022-06-21 00:27:22');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(894, 'App\\User', 297, 'qixerapi_keys', 'cca664430ad0115142405b105c7e5dbb40cd7cc646c1981d524e6e69c69b72f7', '[\"*\"]', '2022-06-21 01:55:29', '2022-06-21 01:54:56', '2022-06-21 01:55:29'),
(895, 'App\\User', 545, 'qixerapi_keys', 'f31477d128fd3fb8663507c456c8a627e47d589233853b8efd75030ef4d9b393', '[\"*\"]', NULL, '2022-06-21 02:04:25', '2022-06-21 02:04:25'),
(898, 'App\\User', 304, 'qixerapi_keys', 'a97f0473541712aa65ee593c61c72d07f57d5f534050fa4cda92b4c09efc6b15', '[\"*\"]', '2022-06-21 02:36:05', '2022-06-21 02:36:03', '2022-06-21 02:36:05'),
(899, 'App\\User', 544, 'qixerapi_keys', 'f75f0b230234990225b9cc92bfa92a007e0d83636956401c323d290ebd7af345', '[\"*\"]', '2022-06-21 02:44:10', '2022-06-21 02:41:41', '2022-06-21 02:44:10'),
(900, 'App\\User', 493, 'qixerapi_keys', '3b6f894e17389736b1bdd9148a0f6769941c0c83f5a4fff6882639abfc08332d', '[\"*\"]', '2022-06-21 02:53:16', '2022-06-21 02:53:15', '2022-06-21 02:53:16'),
(920, 'App\\User', 549, 'qixerapi_keys', '53e335d17b325bd5bd4eb97d393276b112081d540587a2b8e3d44dbfd52a5f8e', '[\"*\"]', '2022-06-21 05:07:35', '2022-06-21 05:04:25', '2022-06-21 05:07:35'),
(924, 'App\\User', 550, 'qixerapi_keys', '72fb78c2e22563d9a4d75026120ac75356ed0b8bad5d11cd0d0c6d26e593273b', '[\"*\"]', NULL, '2022-06-21 05:41:13', '2022-06-21 05:41:13'),
(925, 'App\\User', 550, 'qixerapi_keys', 'a02e7a770c63cbf08ebac0fb20c0ba5642b9dcbfcb6672047601b47aa5653369', '[\"*\"]', NULL, '2022-06-21 05:41:24', '2022-06-21 05:41:24'),
(935, 'App\\User', 549, 'qixerapi_keys', 'ffcc3d7197b7fd88af955c644e09c31ba08c448645d084056f2169c47b1ed4f7', '[\"*\"]', '2022-06-21 06:35:21', '2022-06-21 06:35:20', '2022-06-21 06:35:21'),
(936, 'App\\User', 551, 'qixerapi_keys', '5a2c8a9a43e7d0f98ccfac5c3ca8b60b5944645cecaf05298f7736d0be830b1b', '[\"*\"]', '2022-06-21 06:46:22', '2022-06-21 06:40:44', '2022-06-21 06:46:22'),
(937, 'App\\User', 514, 'qixerapi_keys', 'ff1a8e1ad203557c8c601026d189a67e73e1055b72ed8fd4a387fd393213afd8', '[\"*\"]', '2022-06-21 06:47:19', '2022-06-21 06:47:11', '2022-06-21 06:47:19'),
(938, 'App\\User', 550, 'qixerapi_keys', 'e2d3839201b30786c9ca90199843cf3337ff16affab41cd2de1e847d257e8011', '[\"*\"]', NULL, '2022-06-21 06:57:17', '2022-06-21 06:57:17'),
(939, 'App\\User', 550, 'qixerapi_keys', 'e8b4d3fbc84acfc3eb66fcea0af8a90b5e9656a7bec3e918ae8ebc724842974b', '[\"*\"]', NULL, '2022-06-21 06:57:22', '2022-06-21 06:57:22'),
(940, 'App\\User', 550, 'qixerapi_keys', '9923e02126973a4e8da45b8a12e2ef4b99e718521efa1cd7f733ef77fc5f344f', '[\"*\"]', NULL, '2022-06-21 06:57:50', '2022-06-21 06:57:50'),
(941, 'App\\User', 550, 'qixerapi_keys', '2fe29867731c2603c89a284ebe1e98f5e1bb3b9d4eeeaf303092232f0b9e462e', '[\"*\"]', NULL, '2022-06-21 06:57:53', '2022-06-21 06:57:53'),
(942, 'App\\User', 550, 'qixerapi_keys', 'b2fd0447b6a0e00980f9ed7f2904e94d02f81db298640c29107bce17d2faef2f', '[\"*\"]', NULL, '2022-06-21 06:57:56', '2022-06-21 06:57:56'),
(943, 'App\\User', 550, 'qixerapi_keys', 'c398cbc674ad1b77ee727746ef1f103e939e351b901967704f9e0e7162c32297', '[\"*\"]', NULL, '2022-06-21 06:58:15', '2022-06-21 06:58:15'),
(944, 'App\\User', 550, 'qixerapi_keys', '1f43854ce785af46de7c3b48fb4ac7909e25d6c6676f5316db10d2b876e79dfb', '[\"*\"]', NULL, '2022-06-21 06:58:17', '2022-06-21 06:58:17'),
(945, 'App\\User', 550, 'qixerapi_keys', '8594c336b1a90d05912be39eecafc8e1750d74b8faa0b841de5c3c9e4a92f2d2', '[\"*\"]', NULL, '2022-06-21 06:58:19', '2022-06-21 06:58:19'),
(949, 'App\\User', 552, 'qixerapi_keys', '5ee06cd82974e7275bbcbc072d4b09be362b6483fdec40ea56620e3d3f248807', '[\"*\"]', '2022-06-21 07:21:21', '2022-06-21 07:19:57', '2022-06-21 07:21:21'),
(950, 'App\\User', 514, 'qixerapi_keys', '61e55afb8e88b7cd2493c47326015a215b4a25bf91163a427bf2c4c594fff401', '[\"*\"]', '2022-06-21 07:26:45', '2022-06-21 07:26:38', '2022-06-21 07:26:45'),
(951, 'App\\User', 553, 'qixerapi_keys', '303018133c65603f9f87abc1ab43fe64e1a3f30e12101f67e94e3139bda821c6', '[\"*\"]', '2022-06-21 08:08:33', '2022-06-21 08:08:22', '2022-06-21 08:08:33'),
(952, 'App\\User', 553, 'qixerapi_keys', '0f386e9532dd549e8e767fbfb858bf5aed9c298058b0488b465c52a0b101aaf8', '[\"*\"]', NULL, '2022-06-21 08:08:47', '2022-06-21 08:08:47'),
(953, 'App\\User', 553, 'qixerapi_keys', '8faf42fd75e751d4406979b8fea9872b289b67d8f108b8aea804aae8513ad37c', '[\"*\"]', NULL, '2022-06-21 08:08:47', '2022-06-21 08:08:47'),
(954, 'App\\User', 554, 'qixerapi_keys', '48e499fb13172ed10b4787b623630425c2a77057430355b629d346350879551b', '[\"*\"]', '2022-06-21 08:53:50', '2022-06-21 08:12:38', '2022-06-21 08:53:50'),
(956, 'App\\User', 448, 'qixerapi_keys', '3090ac1e3b980fef373cf4859811ae99522d88520e6e1f2fe18597f66ee942ce', '[\"*\"]', '2022-06-21 09:15:13', '2022-06-21 09:15:11', '2022-06-21 09:15:13'),
(957, 'App\\User', 307, 'qixerapi_keys', 'c383105b5d4c3437b4b0ea8486312b33f4785f083d8f837439a9addb1646a6a3', '[\"*\"]', '2022-06-21 09:44:26', '2022-06-21 09:44:25', '2022-06-21 09:44:26'),
(958, 'App\\User', 426, 'qixerapi_keys', '708ec1362c227345efe5c0e8e2393d8a615fd06c8924525d62571df8b7405166', '[\"*\"]', '2022-06-21 10:52:03', '2022-06-21 10:52:02', '2022-06-21 10:52:03'),
(959, 'App\\User', 218, 'qixerapi_keys', 'f57b951270cda4418fe7a5a93cc5eb1f4cb4a45ca383dc34d66b762536e103da', '[\"*\"]', '2022-06-21 11:05:48', '2022-06-21 11:05:48', '2022-06-21 11:05:48'),
(960, 'App\\User', 557, 'qixerapi_keys', '42471fef54ec9bdca45de210e0a45d2c897929072e9b818d0a5780f9489861b5', '[\"*\"]', NULL, '2022-06-21 12:12:33', '2022-06-21 12:12:33'),
(961, 'App\\User', 307, 'qixerapi_keys', '7302fc2041600c83d004fb07d84f5bbd9f36396d4007c372c1e65b7234f5a449', '[\"*\"]', '2022-06-21 12:13:52', '2022-06-21 12:13:51', '2022-06-21 12:13:52'),
(962, 'App\\User', 557, 'qixerapi_keys', '52082ccdfb520454a84d4ca6f465abd1b1c52bcb957817579f03eee510f53c0f', '[\"*\"]', '2022-06-21 12:15:59', '2022-06-21 12:14:38', '2022-06-21 12:15:59'),
(963, 'App\\User', 504, 'qixerapi_keys', 'e8a7495d73fc8d8cc0eb99085e933e5948381d532448db8cc12e53bdb283bb03', '[\"*\"]', '2022-06-21 12:40:05', '2022-06-21 12:38:43', '2022-06-21 12:40:05'),
(964, 'App\\User', 268, 'qixerapi_keys', '01881097b1b92a31a39a1bb2a3275905641c309f96f449a87eecc4d8759caaee', '[\"*\"]', '2022-06-21 12:50:17', '2022-06-21 12:47:49', '2022-06-21 12:50:17'),
(967, 'App\\User', 555, 'qixerapi_keys', 'abc173bd653b67cb3bad1984e02671c0df4bb61b6505168b513b033f724a3171', '[\"*\"]', '2022-06-21 13:05:25', '2022-06-21 13:05:24', '2022-06-21 13:05:25'),
(968, 'App\\User', 307, 'qixerapi_keys', '7f70c82ccc06ab969053da60c07de43ec3d3e4e23f37be310164043396a51325', '[\"*\"]', '2022-06-21 14:19:17', '2022-06-21 14:19:16', '2022-06-21 14:19:17'),
(969, 'App\\User', 533, 'qixerapi_keys', '8108af2e3e2510845eeb5a4023c80c9622d2783f14c39e46577794014c140218', '[\"*\"]', '2022-06-21 16:22:47', '2022-06-21 16:22:46', '2022-06-21 16:22:47'),
(970, 'App\\User', 533, 'qixerapi_keys', 'b2145729a24d19f4701dc441d967d3a83ac83625fcdf6a2ae46a3cc9fb0149ca', '[\"*\"]', '2022-06-21 16:23:25', '2022-06-21 16:23:25', '2022-06-21 16:23:25'),
(971, 'App\\User', 559, 'qixerapi_keys', '073cf0d24769b64c7f835103587a81daf69a1754d21876ff4bb0e2584167eea4', '[\"*\"]', '2022-06-21 16:40:14', '2022-06-21 16:33:41', '2022-06-21 16:40:14'),
(972, 'App\\User', 396, 'qixerapi_keys', '790b69466afa345ac593351e5594e399f109a0440154a2581f83c944d34be86f', '[\"*\"]', '2022-06-21 17:10:07', '2022-06-21 17:09:22', '2022-06-21 17:10:07'),
(973, 'App\\User', 509, 'qixerapi_keys', '8c3c28780f50f5114c508fd6d6f5279fce5163b3c80b27a3e8f43128bdf8240c', '[\"*\"]', '2022-06-21 17:50:12', '2022-06-21 17:50:10', '2022-06-21 17:50:12'),
(974, 'App\\User', 561, 'qixerapi_keys', 'f822ca3560e984f809df9aec88a6a36a728e38a002c2d2c9d532297821b0c596', '[\"*\"]', '2022-06-21 18:26:17', '2022-06-21 18:26:16', '2022-06-21 18:26:17'),
(975, 'App\\User', 562, 'qixerapi_keys', '7c57d29fff6cdbbaa0b6544eb76ad2da5860c3f896970bf0ec9e80d1c9226fcb', '[\"*\"]', '2022-06-21 19:46:53', '2022-06-21 19:41:29', '2022-06-21 19:46:53'),
(976, 'App\\User', 562, 'qixerapi_keys', '02bd2a873dbfb3fccbee7e61de38c0fc2a40e31b22ffd7284e326e50df49f696', '[\"*\"]', '2022-06-21 20:12:21', '2022-06-21 19:47:07', '2022-06-21 20:12:21'),
(977, 'App\\User', 562, 'qixerapi_keys', 'de2166b4797cf84dbb7ec50ec94588ac12fb3354e068278638a4b770ef2edafb', '[\"*\"]', '2022-06-21 20:22:45', '2022-06-21 20:12:28', '2022-06-21 20:22:45'),
(978, 'App\\User', 477, 'qixerapi_keys', 'fa4a772fd1be2be8010440d81fbd75dd1e80d3f54bd719c0a1ee19f828363820', '[\"*\"]', '2022-06-21 20:58:27', '2022-06-21 20:58:25', '2022-06-21 20:58:27'),
(979, 'App\\User', 414, 'qixerapi_keys', '73855fc31a53e0b241f59a337b4554c25b9fde7204b3ac6f5c0d43ceafd9bf02', '[\"*\"]', '2022-06-21 22:23:21', '2022-06-21 22:23:20', '2022-06-21 22:23:21'),
(985, 'App\\User', 564, 'qixerapi_keys', '9a9468ea053281464c577e4d79dff8e29f3104c63dfc58e38fd996d093adf0bf', '[\"*\"]', NULL, '2022-06-21 23:08:58', '2022-06-21 23:08:58'),
(987, 'App\\User', 566, 'qixerapi_keys', 'b4a3c2210d1e675e464d6be0d8db4953a98189534e50d530649124a126390cc4', '[\"*\"]', '2022-06-21 23:20:27', '2022-06-21 23:17:16', '2022-06-21 23:20:27'),
(988, 'App\\User', 567, 'qixerapi_keys', '6174f0d38588d68fcb5eac215cdf5cc2e80f4e3c8fe4a23d5261221bc132dbad', '[\"*\"]', NULL, '2022-06-21 23:38:17', '2022-06-21 23:38:17'),
(989, 'App\\User', 568, 'qixerapi_keys', '27db79f3b134dc6a6c0b880ea72997a7f66e96d3174777a2c1b0c20eccd5556c', '[\"*\"]', NULL, '2022-06-21 23:40:22', '2022-06-21 23:40:22'),
(991, 'App\\User', 532, 'qixerapi_keys', 'e8104f60150d871a6bd87f81d69ef67ab4ad2b4602c229f442ce06ece9996a38', '[\"*\"]', '2022-06-22 00:06:52', '2022-06-21 23:59:41', '2022-06-22 00:06:52'),
(992, 'App\\User', 317, 'qixerapi_keys', '7e2b936450c5d264e10c642e27de3ca9acd47a6e49a3ddb7ad2198d1165bf5d2', '[\"*\"]', '2022-06-22 00:02:32', '2022-06-22 00:02:31', '2022-06-22 00:02:32'),
(1005, 'App\\User', 570, 'qixerapi_keys', 'f0e81aad36228ea04e018238afe5828996097f4df4e30105ddceb769d4f1009a', '[\"*\"]', '2022-06-22 01:36:36', '2022-06-22 01:26:15', '2022-06-22 01:36:36'),
(1006, 'App\\User', 448, 'qixerapi_keys', 'a83d8c911d5d18f0863bd4aa8ffefa16aa5254f374a8a7ad3d84540392d2be8c', '[\"*\"]', '2022-06-22 02:04:38', '2022-06-22 02:04:37', '2022-06-22 02:04:38'),
(1008, 'App\\User', 448, 'qixerapi_keys', 'ac354ccbea3a1da0516ad97416fc99312b87c47be853521ff8d1628b7a567a7b', '[\"*\"]', '2022-06-22 02:23:14', '2022-06-22 02:22:35', '2022-06-22 02:23:14'),
(1010, 'App\\User', 571, 'qixerapi_keys', 'b1bf6eda4597203b13b58dbe71a2058fa676532d13ce7da37cfe0c31b0e6031c', '[\"*\"]', '2022-06-22 02:41:49', '2022-06-22 02:38:40', '2022-06-22 02:41:49'),
(1036, 'App\\User', 573, 'qixerapi_keys', 'c42cda91ea3bda949a1e0ca124cef6d7eb158bea2cdb8c0d9e14effe76ddd279', '[\"*\"]', '2022-06-22 05:36:33', '2022-06-22 05:35:50', '2022-06-22 05:36:33'),
(1037, 'App\\User', 573, 'qixerapi_keys', 'b3bee40cbd0b9e017b3998ed2fee646e965b526d7a19c305e43407a626adb23b', '[\"*\"]', '2022-06-22 05:42:34', '2022-06-22 05:42:33', '2022-06-22 05:42:34'),
(1050, 'App\\User', 448, 'qixerapi_keys', 'b3974f704050835b0489347d29e8d7fdd7b41fc7123f1afa79a5f84312b6e5f2', '[\"*\"]', '2022-06-22 06:12:24', '2022-06-22 06:12:22', '2022-06-22 06:12:24'),
(1054, 'App\\User', 461, 'qixerapi_keys', '7e63e237dad2085468c5399392d8ac758f0732fa1f4606220d0e56f5f11bd0be', '[\"*\"]', '2022-06-22 07:47:32', '2022-06-22 07:47:31', '2022-06-22 07:47:32'),
(1055, 'App\\User', 461, 'qixerapi_keys', '3568d7fc787e92fa0e64357408ac7140a33381530ef7620cdecefd185fc7c4df', '[\"*\"]', '2022-06-22 07:48:25', '2022-06-22 07:48:25', '2022-06-22 07:48:25'),
(1056, 'App\\User', 461, 'qixerapi_keys', 'ce52cd1a61c5fcfd60f7da00cc574b5b2780cb712c2add5fdd52a42d7b19efaf', '[\"*\"]', '2022-06-22 07:49:10', '2022-06-22 07:49:09', '2022-06-22 07:49:10'),
(1057, 'App\\User', 532, 'qixerapi_keys', '772c84baa23152064f7ed3f00622000a44a0da54acc0d493046ddc17a18fdfd5', '[\"*\"]', '2022-06-22 09:14:55', '2022-06-22 09:12:05', '2022-06-22 09:14:55'),
(1060, 'App\\User', 258, 'qixerapi_keys', '2c72e37059af240c2b835c03cb639cdd908984c1f3d67e7980f01e4f0e6059ef', '[\"*\"]', NULL, '2022-06-22 10:59:04', '2022-06-22 10:59:04'),
(1061, 'App\\User', 448, 'qixerapi_keys', 'f22fb7d0b04e1862ffbe0ecce0df645d665bfa7d7f6258526ac613dae65d6631', '[\"*\"]', '2022-06-22 11:01:19', '2022-06-22 11:01:18', '2022-06-22 11:01:19'),
(1063, 'App\\User', 526, 'qixerapi_keys', '41efad0259245c2513ebb170fc0452262a9c0156a3eb3fbe4a957f18781d9bd3', '[\"*\"]', '2022-06-22 13:41:13', '2022-06-22 13:41:12', '2022-06-22 13:41:13'),
(1064, 'App\\User', 373, 'qixerapi_keys', '892f19feba7b553ad0bc24e719945e8a62e160c9ba93fa6b7fa23c5d1ac1e9a4', '[\"*\"]', '2022-06-22 13:48:45', '2022-06-22 13:46:50', '2022-06-22 13:48:45'),
(1065, 'App\\User', 493, 'qixerapi_keys', 'bf9e0c9b13255d7afa78b5448e9c7c5155c53510d9b583fc687ff525a55d4a09', '[\"*\"]', '2022-06-22 13:57:24', '2022-06-22 13:57:23', '2022-06-22 13:57:24'),
(1066, 'App\\User', 576, 'qixerapi_keys', '206a4eb53ad1a1e8d62502ee16537d7d12215ebd38244e954336a3a6df2b0f75', '[\"*\"]', '2022-06-22 14:15:00', '2022-06-22 14:11:55', '2022-06-22 14:15:00'),
(1067, 'App\\User', 577, 'qixerapi_keys', 'ecf575c4e82642101d10a75f57791b2df253d96c13ce2961d5c43abdd322f7eb', '[\"*\"]', '2022-06-22 20:31:59', '2022-06-22 20:31:59', '2022-06-22 20:31:59'),
(1068, 'App\\User', 578, 'qixerapi_keys', '3593e0eaf19af68f316713c1ee95ca5226deecb289e8425b901659e1c29da137', '[\"*\"]', '2022-06-22 22:23:36', '2022-06-22 22:21:54', '2022-06-22 22:23:36'),
(1082, 'App\\User', 448, 'qixerapi_keys', '07c5bc313e20994a6176629c0db8769756cbd711f52ad99d6b6f4ed980bffbd1', '[\"*\"]', '2022-06-22 23:46:04', '2022-06-22 23:43:09', '2022-06-22 23:46:04'),
(1083, 'App\\User', 485, 'qixerapi_keys', 'b183b17e09573eef11a4fa95d570520fa8d595b98e477ff2d9334c4d6e1ed225', '[\"*\"]', '2022-06-22 23:54:56', '2022-06-22 23:54:55', '2022-06-22 23:54:56'),
(1084, 'App\\User', 485, 'qixerapi_keys', '31b6cec217845fa7b2a3214452ed7fc750d3fbefd0d9a314fa3213b2980d1f19', '[\"*\"]', '2022-06-22 23:55:14', '2022-06-22 23:55:13', '2022-06-22 23:55:14'),
(1086, 'App\\User', 579, 'qixerapi_keys', '2ae5278f69a0f46f3d9420dfe07d712297d7216bd4e9a5acbfdc9cc75b1091fe', '[\"*\"]', '2022-06-23 00:10:39', '2022-06-22 23:59:56', '2022-06-23 00:10:39'),
(1095, 'App\\User', 580, 'qixerapi_keys', 'a54546cc43b0e716f8c6b0eccaf27a6db687bd3b6a97e6a3c549adf9d227d614', '[\"*\"]', '2022-06-23 00:41:35', '2022-06-23 00:39:15', '2022-06-23 00:41:35'),
(1096, 'App\\User', 581, 'qixerapi_keys', '77368408f4e457ceb913f1962d7a2de0abcec434f2fbb15f8b6dae15e2240ddd', '[\"*\"]', '2022-06-23 01:04:25', '2022-06-23 01:00:57', '2022-06-23 01:04:25'),
(1097, 'App\\User', 373, 'qixerapi_keys', 'd39143f671d57993f745deaf9f08601ae0e8ddedf90d39436caf7ed5f37ee735', '[\"*\"]', '2022-06-23 02:58:52', '2022-06-23 01:20:26', '2022-06-23 02:58:52'),
(1098, 'App\\User', 582, 'qixerapi_keys', 'ef18af2a0de325fa6ca957ef4f1882dc32f120eb3f59b2f4fbe8bed765ae8023', '[\"*\"]', '2022-06-23 01:37:33', '2022-06-23 01:35:27', '2022-06-23 01:37:33'),
(1100, 'App\\User', 583, 'qixerapi_keys', 'c237673a2d3aaa9bf9b71d52c2992ea57d446a0a5cdceb8bd86ea10fc747156b', '[\"*\"]', NULL, '2022-06-23 02:34:46', '2022-06-23 02:34:46'),
(1101, 'App\\User', 583, 'qixerapi_keys', '275d394171e50d199f808261a383db9749126027336130dbcef0d528d3bf82a1', '[\"*\"]', '2022-06-23 02:47:20', '2022-06-23 02:38:57', '2022-06-23 02:47:20'),
(1102, 'App\\User', 430, 'qixerapi_keys', 'ef60c8d27a9c2b91d119fff4ddb336e95b960307075e761973743d6a1ef087b9', '[\"*\"]', '2022-06-23 05:18:17', '2022-06-23 02:54:55', '2022-06-23 05:18:17'),
(1104, 'App\\User', 573, 'qixerapi_keys', 'fee3fc8f97e38424b8b70a7f602a3f828d86bf0c8ce1fca362294f734db08a91', '[\"*\"]', '2022-06-23 04:05:08', '2022-06-23 04:05:06', '2022-06-23 04:05:08'),
(1105, 'App\\User', 579, 'qixerapi_keys', '522803e24197cd5112788532ac34c872a293f6ee63480e3e66827facef47cd48', '[\"*\"]', '2022-06-23 05:37:40', '2022-06-23 05:37:37', '2022-06-23 05:37:40'),
(1106, 'App\\User', 579, 'qixerapi_keys', '14e4b633be3ea845eaf7b450aaaf4fc314efd756cb1ef7ca88be7d271a936578', '[\"*\"]', '2022-06-23 05:56:32', '2022-06-23 05:56:29', '2022-06-23 05:56:32'),
(1107, 'App\\User', 493, 'qixerapi_keys', 'e0193c99ba1b9b1b93babb2e2444b06522168282f04471fa7331e01f9a0674c5', '[\"*\"]', NULL, '2022-06-23 06:23:29', '2022-06-23 06:23:29'),
(1109, 'App\\User', 584, 'qixerapi_keys', 'cba72179845332cb0a33e98a8f39f7e370edc7b27ae2b187c718252f925edbec', '[\"*\"]', '2022-06-23 06:38:17', '2022-06-23 06:36:02', '2022-06-23 06:38:17'),
(1110, 'App\\User', 584, 'qixerapi_keys', 'f5d425322467ff9f43c0f87e6e0d7b0b6e0f1a02a3749c1eb24c1505d206aa48', '[\"*\"]', '2022-06-23 06:40:13', '2022-06-23 06:40:11', '2022-06-23 06:40:13'),
(1111, 'App\\User', 579, 'qixerapi_keys', '48934da83a63878a6b637a25a6994351f6eebc3a2a06d604bbbe753733ce8244', '[\"*\"]', '2022-06-23 07:54:57', '2022-06-23 07:54:54', '2022-06-23 07:54:57'),
(1112, 'App\\User', 579, 'qixerapi_keys', '585d3ca379664ffd0d83824ebc8ca8a33a3ffa34f305bc1cd0f0db344d564c5e', '[\"*\"]', '2022-06-23 07:56:08', '2022-06-23 07:56:05', '2022-06-23 07:56:08'),
(1113, 'App\\User', 574, 'qixerapi_keys', 'b6c955ee1fcba9a206bbe668f07e2d7777df40fbc4dd360a8ff6a870fa29521b', '[\"*\"]', '2022-06-23 08:44:24', '2022-06-23 08:44:22', '2022-06-23 08:44:24'),
(1115, 'App\\User', 585, 'qixerapi_keys', '66f4bc79239e9c027cc426d602603ab5876acca2e112763000e3026940b96e97', '[\"*\"]', '2022-06-23 09:10:22', '2022-06-23 09:07:36', '2022-06-23 09:10:22'),
(1116, 'App\\User', 574, 'qixerapi_keys', 'ebd8c632d428350cb1aaafdc7ecb0b4fae71d669ac35f223cf2193d176adf153', '[\"*\"]', '2022-06-23 09:11:40', '2022-06-23 09:11:38', '2022-06-23 09:11:40'),
(1117, 'App\\User', 487, 'qixerapi_keys', '657d57915043f2adcb997d686edccb33587d18e130d670c8dc6a6d76aa2b4538', '[\"*\"]', '2022-06-23 09:20:09', '2022-06-23 09:14:19', '2022-06-23 09:20:09'),
(1118, 'App\\User', 566, 'qixerapi_keys', 'fe29debd62c9474bc517770c053ae97d96eed924d989a403d857f7198ab4ab87', '[\"*\"]', '2022-06-23 09:27:32', '2022-06-23 09:27:29', '2022-06-23 09:27:32'),
(1119, 'App\\User', 586, 'qixerapi_keys', 'e882bd34e1114a6d5e319ff30210bcdfb59d81684622e725c90e003675aace20', '[\"*\"]', '2022-06-23 10:02:05', '2022-06-23 09:59:41', '2022-06-23 10:02:05'),
(1121, 'App\\User', 586, 'qixerapi_keys', '64f82c7b3797eaeefcb16a6c2e1fe667a28c2a8fc0acb04baa2d40e96b90fae1', '[\"*\"]', NULL, '2022-06-23 10:17:02', '2022-06-23 10:17:02'),
(1122, 'App\\User', 580, 'qixerapi_keys', '62410e0bc8d05f458f6ab915123299a45f1e720312ffb5941a8bc5abd47fc6df', '[\"*\"]', '2022-06-23 10:49:54', '2022-06-23 10:45:23', '2022-06-23 10:49:54'),
(1123, 'App\\User', 444, 'qixerapi_keys', '51c825ffc3a8bb2bd5ca11dcfb791b0def863cfc9e73614af22027a3fb15a548', '[\"*\"]', '2022-06-23 11:13:04', '2022-06-23 11:12:41', '2022-06-23 11:13:04'),
(1124, 'App\\User', 580, 'qixerapi_keys', 'bfdfffeb67eb299c8646821de6b23744988c1610f96432d620837dd54a888c61', '[\"*\"]', '2022-06-23 11:29:34', '2022-06-23 11:24:08', '2022-06-23 11:29:34'),
(1125, 'App\\User', 448, 'qixerapi_keys', 'df2f3d70ceb05b0341c3cd035890d508d94c8b5149b8a36833b0209158fca29e', '[\"*\"]', '2022-06-23 11:36:18', '2022-06-23 11:36:17', '2022-06-23 11:36:18'),
(1126, 'App\\User', 580, 'qixerapi_keys', 'beb4ec95297574e6fc6f88c4ccabc9180302829f257e236a984f0d6d40ca0db6', '[\"*\"]', '2022-06-23 12:37:47', '2022-06-23 12:37:46', '2022-06-23 12:37:47'),
(1128, 'App\\User', 574, 'qixerapi_keys', 'a1516d3bfb6b3d3ffd2fb8f2662fe7d73cb5d20c39227d21c760e22fa2af3c21', '[\"*\"]', '2022-06-23 12:48:30', '2022-06-23 12:39:25', '2022-06-23 12:48:30'),
(1131, 'App\\User', 574, 'qixerapi_keys', 'f57704f5b5e6fa59ac0e5cdeb8e3a1c503787ea5c3e7d62e1b35c4d15494dba3', '[\"*\"]', '2022-06-23 12:49:05', '2022-06-23 12:49:01', '2022-06-23 12:49:05'),
(1132, 'App\\User', 574, 'qixerapi_keys', '547753748ad2e11b31e6afffae058b24606889edce91345f4853a07b9f97678f', '[\"*\"]', '2022-06-23 12:58:26', '2022-06-23 12:58:20', '2022-06-23 12:58:26'),
(1133, 'App\\User', 573, 'qixerapi_keys', '25b75888e79889680c5223087515f323cc19e73aa1497477e4f0d2bb578ed73d', '[\"*\"]', '2022-06-23 13:19:00', '2022-06-23 13:18:54', '2022-06-23 13:19:00'),
(1134, 'App\\User', 580, 'qixerapi_keys', '070b3816d5625954d96cc3649f034c7c5cb86a1efe41e6e604dcff55a1406ab5', '[\"*\"]', '2022-06-23 13:42:10', '2022-06-23 13:36:36', '2022-06-23 13:42:10'),
(1135, 'App\\User', 587, 'qixerapi_keys', '362de8fdce5db709c56714dbd4c3d76a94795d6dbfe365c7e102270c63757a1e', '[\"*\"]', '2022-06-23 13:46:18', '2022-06-23 13:46:02', '2022-06-23 13:46:18'),
(1136, 'App\\User', 588, 'qixerapi_keys', '957a7f762445643a0a26c0a0c09ea431b38c86e0b608f4ecee09cccaacf0245e', '[\"*\"]', '2022-06-23 13:47:09', '2022-06-23 13:46:34', '2022-06-23 13:47:09'),
(1137, 'App\\User', 588, 'qixerapi_keys', 'bb6d7da6a3e7c8716d1926df52bba7ea036fbbeb3db343803ae14823f711bcac', '[\"*\"]', '2022-06-23 13:48:19', '2022-06-23 13:48:18', '2022-06-23 13:48:19'),
(1138, 'App\\User', 588, 'qixerapi_keys', '5f22876f53516cacf61a57a2c34ca9a503804e41bf1ceafc84ddc0c28d2798b0', '[\"*\"]', '2022-06-23 13:48:40', '2022-06-23 13:48:39', '2022-06-23 13:48:40'),
(1139, 'App\\User', 588, 'qixerapi_keys', '3de2174dc4ad4eee9857dc666f094ce812609b8379ca146d71e8ec185ec8fcf2', '[\"*\"]', '2022-06-23 13:48:51', '2022-06-23 13:48:48', '2022-06-23 13:48:51'),
(1140, 'App\\User', 588, 'qixerapi_keys', '72052e1bf537ac0840d6cb42fa132f88ff1857b8dd564a31b01e408a86bfd124', '[\"*\"]', '2022-06-23 13:54:36', '2022-06-23 13:54:35', '2022-06-23 13:54:36'),
(1141, 'App\\User', 587, 'qixerapi_keys', '326eb359bc85388f7cc8f178059d69b1285e1362e468de75ab99a142177c3b5f', '[\"*\"]', '2022-06-23 14:09:54', '2022-06-23 14:09:52', '2022-06-23 14:09:54'),
(1142, 'App\\User', 292, 'qixerapi_keys', '69edb01bdef0bf292c2b32ad1d526be8cabd96b6a6d0a22727302053e091ffdc', '[\"*\"]', '2022-06-23 17:54:37', '2022-06-23 17:54:36', '2022-06-23 17:54:37'),
(1143, 'App\\User', 292, 'qixerapi_keys', '665cd2b86af11934fc2ba45502dfb6a3b28827e6dedb1272c69100a8e9a8a79a', '[\"*\"]', '2022-06-23 17:55:55', '2022-06-23 17:55:54', '2022-06-23 17:55:55'),
(1144, 'App\\User', 292, 'qixerapi_keys', '0c14474eaf46c596fb5a039fd3513a6ea4052f68b21bcaf15fa73c882c5a9f78', '[\"*\"]', '2022-06-23 17:56:16', '2022-06-23 17:56:16', '2022-06-23 17:56:16'),
(1145, 'App\\User', 292, 'qixerapi_keys', '83de3303b63bf8d30eb0713f4d6b634c21d7cfd619897cd39160b256a3069d9a', '[\"*\"]', '2022-06-23 17:57:08', '2022-06-23 17:57:07', '2022-06-23 17:57:08'),
(1146, 'App\\User', 292, 'qixerapi_keys', 'add2dd6d45ea35bc4a129d0e23e836361e37f895420362780bfeb6175c26bc92', '[\"*\"]', '2022-06-23 17:58:03', '2022-06-23 17:58:03', '2022-06-23 17:58:03'),
(1147, 'App\\User', 592, 'qixerapi_keys', '28cb98de58893502b6638830e3d18b4c2d79c11154162aaff98b949914e2718b', '[\"*\"]', '2022-06-23 18:17:49', '2022-06-23 18:16:32', '2022-06-23 18:17:49'),
(1150, 'App\\User', 373, 'qixerapi_keys', 'c8c66fae7bcb7e6cb4ebc7954eb0b5b4751ba8b378064c402b4c4521aae33d6c', '[\"*\"]', NULL, '2022-06-23 21:47:09', '2022-06-23 21:47:09'),
(1151, 'App\\User', 593, 'qixerapi_keys', '4ae19af61ec86a326c9b1414e0480af843f2f49c53da26520b144cd47110a9d4', '[\"*\"]', '2022-06-23 22:34:54', '2022-06-23 22:34:53', '2022-06-23 22:34:54'),
(1152, 'App\\User', 580, 'qixerapi_keys', '86aaebc08b5d7d16a22693f80eb0d52bb1b5bbd17d904878ca50127cb641e2c1', '[\"*\"]', '2022-06-24 00:28:57', '2022-06-24 00:28:42', '2022-06-24 00:28:57'),
(1153, 'App\\User', 596, 'qixerapi_keys', 'c178abe8c7631d24ac10e0d132192ec67a77e2181de1fb94b90b32b3df86ed00', '[\"*\"]', '2022-06-24 01:12:02', '2022-06-24 01:11:37', '2022-06-24 01:12:02'),
(1154, 'App\\User', 596, 'qixerapi_keys', '2573fc472e18adacfa3d1346d2b452a596d24ce3a0695892a726108da16d9bfc', '[\"*\"]', '2022-06-24 01:14:17', '2022-06-24 01:14:16', '2022-06-24 01:14:17'),
(1156, 'App\\User', 597, 'qixerapi_keys', '468035d192caef0a480fde2461b54c05ed4331db0529fd0be3ae6e5acf426d28', '[\"*\"]', NULL, '2022-06-24 02:17:48', '2022-06-24 02:17:48'),
(1160, 'App\\User', 599, 'qixerapi_keys', 'c73aab3485d972bba28ec2d923b04831edee05708f182b1dbd054d85a17744ea', '[\"*\"]', '2022-06-24 04:38:04', '2022-06-24 04:37:25', '2022-06-24 04:38:04'),
(1161, 'App\\User', 373, 'qixerapi_keys', '702e33b62b4576c04686da2b871a63dfd69743029bda7e6f85da1cdc1f805512', '[\"*\"]', '2022-06-24 05:11:50', '2022-06-24 05:11:48', '2022-06-24 05:11:50'),
(1162, 'App\\User', 566, 'qixerapi_keys', 'fe0fc0d80188b364336b32fbe2d971c6a1cedf2a1f51142976b2fb8aa6aa8a29', '[\"*\"]', '2022-06-24 06:10:35', '2022-06-24 06:07:52', '2022-06-24 06:10:35'),
(1163, 'App\\User', 431, 'qixerapi_keys', '1f75b059dcf6957afe3efa1ce26c6bba21468a3d145bfa4c6f5f7db09ace0b75', '[\"*\"]', '2022-06-24 07:29:56', '2022-06-24 07:29:13', '2022-06-24 07:29:56'),
(1164, 'App\\User', 600, 'qixerapi_keys', '8f0863ef15ffa5f3fb02324716c09c7a6c3bbf034be0964f0497e144a4136597', '[\"*\"]', NULL, '2022-06-24 07:58:01', '2022-06-24 07:58:01'),
(1165, 'App\\User', 588, 'qixerapi_keys', '9ca552223fbb22f5c4d072488f26b363b0b8b1ad2526a82d0c5cd088a1c0ee95', '[\"*\"]', '2022-06-24 08:14:02', '2022-06-24 08:14:01', '2022-06-24 08:14:02'),
(1166, 'App\\User', 448, 'qixerapi_keys', '3364eafbfcba529da6e543aab30bf852948abdb337f468b040b11c8e404ec0ad', '[\"*\"]', '2022-06-24 08:19:04', '2022-06-24 08:19:02', '2022-06-24 08:19:04'),
(1175, 'App\\User', 304, 'qixerapi_keys', '9a72f013b98a40d5ac220305b33451573d346879c5a13d28bd8c7d229eb131ae', '[\"*\"]', '2022-06-24 12:23:17', '2022-06-24 12:22:32', '2022-06-24 12:23:17'),
(1176, 'App\\User', 304, 'qixerapi_keys', 'd8efe380cdefa7036bf0bf5704542a75fec0be77c02965f0e1c4d64336b53558', '[\"*\"]', '2022-06-24 12:30:40', '2022-06-24 12:26:36', '2022-06-24 12:30:40'),
(1179, 'App\\User', 603, 'qixerapi_keys', 'a0a24764437b3a05b20e6fab7eaa074ffc6d1ac0f95c7bffcf2ec6bcbe83aa9f', '[\"*\"]', '2022-06-24 13:24:30', '2022-06-24 13:15:03', '2022-06-24 13:24:30'),
(1181, 'App\\User', 498, 'qixerapi_keys', '5af32dee4ed83c1352710dfdd7ec871de145ff9c696e1e51341030ea1a06c65f', '[\"*\"]', '2022-06-24 14:00:16', '2022-06-24 14:00:15', '2022-06-24 14:00:16'),
(1184, 'App\\User', 604, 'qixerapi_keys', 'a9133de66576f00cf82ff969aee24c9f56223faf8eb107e9c80e5dd00d90390b', '[\"*\"]', NULL, '2022-06-24 14:32:28', '2022-06-24 14:32:28'),
(1185, 'App\\User', 604, 'qixerapi_keys', 'd7f34cfd44864ff9970b3df6514509518af3db464a737301fb16e47a4d105f47', '[\"*\"]', '2022-07-23 12:42:06', '2022-06-24 14:33:14', '2022-07-23 12:42:06'),
(1186, 'App\\User', 605, 'qixerapi_keys', 'dc38d5202ba3231d37575e0bf961f9a47fea40afd6099898d014c232a0b742c5', '[\"*\"]', '2022-06-24 15:16:33', '2022-06-24 15:16:33', '2022-06-24 15:16:33'),
(1187, 'App\\User', 520, 'qixerapi_keys', '5aa421da94a6f8dc54172cf120cec66c7a74e82327a4d8bacb646c3e15a67a06', '[\"*\"]', '2022-06-24 18:32:11', '2022-06-24 18:32:10', '2022-06-24 18:32:11'),
(1191, 'App\\User', 596, 'qixerapi_keys', 'b85a2b8d8bca1fa5fddef886369662afa2d89918d01c9e5863d9679b650cf6fb', '[\"*\"]', '2022-06-24 20:05:30', '2022-06-24 20:05:28', '2022-06-24 20:05:30'),
(1192, 'App\\User', 499, 'qixerapi_keys', '5884cb1d73cb3fe559c0e12be8bf48e23b110341edecbd1e93b05f1ae5288638', '[\"*\"]', '2022-06-24 20:33:55', '2022-06-24 20:26:41', '2022-06-24 20:33:55'),
(1193, 'App\\User', 608, 'qixerapi_keys', 'c095afeac773d869f9727e535b9d5bc8f18821090022f3e4be7c462c396a5676', '[\"*\"]', '2022-06-24 21:20:59', '2022-06-24 21:20:58', '2022-06-24 21:20:59'),
(1194, 'App\\User', 583, 'qixerapi_keys', '775c5efa6505b5fa878ec0bf0607f300137c332350881f31b5237f355db8b888', '[\"*\"]', '2022-06-24 21:55:03', '2022-06-24 21:51:49', '2022-06-24 21:55:03'),
(1195, 'App\\User', 609, 'qixerapi_keys', '0151139d65e9cbb6d90975b6ce206eb07955a1f3170bbd18e79df970dbf7f37b', '[\"*\"]', '2022-06-24 22:17:31', '2022-06-24 22:15:16', '2022-06-24 22:17:31'),
(1196, 'App\\User', 610, 'qixerapi_keys', '303a194bd49a7ea02e91cd664954a923e049405a5a3f433e17da5f1f2c85debf', '[\"*\"]', '2022-06-24 23:52:11', '2022-06-24 23:50:40', '2022-06-24 23:52:11'),
(1198, 'App\\User', 448, 'qixerapi_keys', '9ca06303ef53289be0811a75679585d6067b74d90783f12740f26d1ac14be805', '[\"*\"]', '2022-06-25 03:13:35', '2022-06-25 03:13:33', '2022-06-25 03:13:35'),
(1199, 'App\\User', 497, 'qixerapi_keys', '2c44e0373c3857675aa749a677499f9030600349a84117f92c725c71f3e509d8', '[\"*\"]', '2022-06-25 03:32:46', '2022-06-25 03:32:28', '2022-06-25 03:32:46'),
(1200, 'App\\User', 448, 'qixerapi_keys', '7e9c9475f83234f291130664db6d7f8aaa06fa39a5257315bd16a9ef151d7ca8', '[\"*\"]', '2022-06-25 03:56:51', '2022-06-25 03:56:04', '2022-06-25 03:56:51'),
(1202, 'App\\User', 448, 'qixerapi_keys', 'c1bc89d4eec75950f520f3e573d15e6ad19fcde4f7c2204ab555eb56f6d965d4', '[\"*\"]', '2022-06-25 04:33:11', '2022-06-25 04:33:09', '2022-06-25 04:33:11'),
(1204, 'App\\User', 613, 'qixerapi_keys', 'fe8e47fc513173e916d067bf377d0a061ea483e473f05e3f65a343cc8c95cc45', '[\"*\"]', '2022-06-25 04:51:58', '2022-06-25 04:46:52', '2022-06-25 04:51:58'),
(1205, 'App\\User', 613, 'qixerapi_keys', 'f29e8a402f9675ed1d3a63282f3fc549e9b9e73ff292e9caf4d97805528840e6', '[\"*\"]', '2022-06-25 04:55:29', '2022-06-25 04:53:23', '2022-06-25 04:55:29'),
(1206, 'App\\User', 448, 'qixerapi_keys', '471c73275dbfaa74990fb1c58dadaff896bfd80884baa10648932c0996fc2722', '[\"*\"]', '2022-06-25 05:01:34', '2022-06-25 05:01:24', '2022-06-25 05:01:34'),
(1208, 'App\\User', 613, 'qixerapi_keys', '5b2ce31557d4d918720023e5f414f5ccbe8b7553e7973b42474bba9ba8dcea9c', '[\"*\"]', '2022-06-25 05:18:04', '2022-06-25 05:18:02', '2022-06-25 05:18:04'),
(1211, 'App\\User', 493, 'qixerapi_keys', '8281618cbeaa4c7f580f5248ec41e2bc520423a24441285d0867d5e3b224a9ef', '[\"*\"]', '2022-06-25 05:41:19', '2022-06-25 05:41:18', '2022-06-25 05:41:19'),
(1213, 'App\\User', 608, 'qixerapi_keys', '3e4a7215776719f4b25df81ba1efa11501616b25699f2e712ea5ee5f24f3bafa', '[\"*\"]', '2022-06-25 06:47:56', '2022-06-25 06:47:56', '2022-06-25 06:47:56'),
(1215, 'App\\User', 614, 'qixerapi_keys', '76e7b4e9cfebaab29d720f3692c2097b915211ad179dfe6acc361817fafdc4b6', '[\"*\"]', '2022-06-25 07:46:48', '2022-06-25 07:35:40', '2022-06-25 07:46:48'),
(1216, 'App\\User', 448, 'qixerapi_keys', 'e1b2ae9a8fc3d2dd68fa19a4df33eae65e8cab215dd0768f9e412a65ad15e66a', '[\"*\"]', '2022-06-25 07:54:50', '2022-06-25 07:54:17', '2022-06-25 07:54:50'),
(1220, 'App\\User', 304, 'qixerapi_keys', 'e6e6f30cb5c1d6e4675cc139aa7f45bf4085e759f616fb6337e434dad16ae9b9', '[\"*\"]', '2022-06-25 10:37:00', '2022-06-25 10:36:59', '2022-06-25 10:37:00'),
(1222, 'App\\User', 615, 'qixerapi_keys', '66f5c0ae34d264dd3812b6f0d946122c1f195e30335e2f624a8986dfb9a46af4', '[\"*\"]', '2022-06-25 11:07:34', '2022-06-25 11:05:24', '2022-06-25 11:07:34'),
(1224, 'App\\User', 616, 'qixerapi_keys', '8b17a5e8b336d6fefba5843ada32122176bbdca784687f15ea9d2a85fef7459f', '[\"*\"]', '2022-06-25 11:45:25', '2022-06-25 11:43:43', '2022-06-25 11:45:25'),
(1225, 'App\\User', 399, 'qixerapi_keys', '1dfc9f01c1209810b57c3d068a4e9cb498cd8bd91bf85f21b8822ea33facfe08', '[\"*\"]', '2022-06-25 12:23:51', '2022-06-25 12:23:50', '2022-06-25 12:23:51'),
(1230, 'App\\User', 618, 'qixerapi_keys', 'a326ebf081cd370798758e606da50820d5383c12a09574c154a3005551f3b0a6', '[\"*\"]', '2022-06-25 14:43:43', '2022-06-25 14:42:32', '2022-06-25 14:43:43'),
(1234, 'App\\User', 310, 'qixerapi_keys', '38ed540e09bf3249375658d8c49746f5deecf2e211e039564a5d583dcff05543', '[\"*\"]', '2022-06-25 22:27:51', '2022-06-25 22:27:25', '2022-06-25 22:27:51'),
(1235, 'App\\User', 519, 'qixerapi_keys', '54729205a115561563a5431f716d13a9d9602489bd6073cbf80b1b37ed945605', '[\"*\"]', '2022-06-25 23:39:24', '2022-06-25 23:38:44', '2022-06-25 23:39:24'),
(1236, 'App\\User', 458, 'qixerapi_keys', 'a8473f9e6f2b6f0f2be360df8f28007db32c0ec586621d0597f0a000077b8bef', '[\"*\"]', '2022-06-26 00:01:57', '2022-06-25 23:43:30', '2022-06-26 00:01:57'),
(1238, 'App\\User', 448, 'qixerapi_keys', '7b8e449a9dae88a4b90bc1d7bdb2af24710ff77282e9a83c62ceb57ced0e5d49', '[\"*\"]', '2022-06-26 01:35:25', '2022-06-26 01:35:24', '2022-06-26 01:35:25'),
(1239, 'App\\User', 528, 'qixerapi_keys', '719f5b81a8ca437c00b47eb7c4146cad36e972fda48872d57a3ace5be30f64fc', '[\"*\"]', '2022-06-26 02:04:14', '2022-06-26 02:03:56', '2022-06-26 02:04:14'),
(1240, 'App\\User', 448, 'qixerapi_keys', 'eb29ebfe6cf158a455d1ccc608f10a7fab7025b819ec8475719564769e7a605d', '[\"*\"]', '2022-06-26 02:38:23', '2022-06-26 02:38:01', '2022-06-26 02:38:23'),
(1241, 'App\\User', 519, 'qixerapi_keys', '334a985d0f5bb1934bdbd5e15027f5e7cb5aafd61518e05e18166f4dfba1339f', '[\"*\"]', '2022-06-26 02:46:51', '2022-06-26 02:45:14', '2022-06-26 02:46:51'),
(1242, 'App\\User', 519, 'qixerapi_keys', 'ca5ed6717f5cb6347a4363d9a40cb31fe0b219cad276609a8349f6a34eff83d7', '[\"*\"]', '2022-06-26 03:10:07', '2022-06-26 03:09:39', '2022-06-26 03:10:07'),
(1243, 'App\\User', 514, 'qixerapi_keys', '5cd6fbb1c887f2d01da380851b4889ac1c99f948ccb80d2f6c6534b1b302afbb', '[\"*\"]', '2022-06-26 03:54:00', '2022-06-26 03:53:18', '2022-06-26 03:54:00'),
(1244, 'App\\User', 610, 'qixerapi_keys', '0561e52055f04366342d3683297e5c02c66d6c2672a2cce0a1c369734234b3bb', '[\"*\"]', '2022-06-26 03:59:04', '2022-06-26 03:59:03', '2022-06-26 03:59:04'),
(1245, 'App\\User', 449, 'qixerapi_keys', '68024772abf9483c9f30c7f38ebf848f19e2d91417a9457ec2f3464e3fe88c4a', '[\"*\"]', '2022-06-26 04:51:54', '2022-06-26 04:51:30', '2022-06-26 04:51:54'),
(1251, 'App\\User', 620, 'qixerapi_keys', 'a5d848a6ba8cf1e1ef0ba450aed3ba8a3e6b0f54034beafb5dee60344f9c4e9a', '[\"*\"]', '2022-06-26 07:34:19', '2022-06-26 07:34:18', '2022-06-26 07:34:19'),
(1252, 'App\\User', 621, 'qixerapi_keys', 'e593dc0ec23fb020078ba145876fd953d16336229bacc435451eec4eb2a955b7', '[\"*\"]', '2022-06-26 07:49:12', '2022-06-26 07:47:08', '2022-06-26 07:49:12'),
(1253, 'App\\User', 448, 'qixerapi_keys', 'c94f6a9b3ccf42346316b696037d155b98363b88974715c60809604b15956f82', '[\"*\"]', '2022-06-26 07:55:30', '2022-06-26 07:55:28', '2022-06-26 07:55:30'),
(1256, 'App\\User', 465, 'qixerapi_keys', 'de0a5f2882a26eeebb66ae4a00d172b64508cd5644178adcb186c1f9443ae453', '[\"*\"]', '2022-06-26 09:02:43', '2022-06-26 09:02:42', '2022-06-26 09:02:43'),
(1258, 'App\\User', 605, 'qixerapi_keys', '69caa932410661b4e2960043108c890c39f31ede66a22c47c1916d89d9d356ec', '[\"*\"]', '2022-06-26 09:50:18', '2022-06-26 09:50:18', '2022-06-26 09:50:18'),
(1259, 'App\\User', 448, 'qixerapi_keys', 'f198a9c48557ff525f02fa167e4a1b69c27d7c5b4765c61ff779dacadf92a703', '[\"*\"]', '2022-06-26 10:12:28', '2022-06-26 10:11:33', '2022-06-26 10:12:28'),
(1261, 'App\\User', 592, 'qixerapi_keys', 'e18accb952438395d88135e8ba1ca4288033072f248d4d2928de03580f33c3d6', '[\"*\"]', '2022-06-26 10:48:20', '2022-06-26 10:48:19', '2022-06-26 10:48:20'),
(1263, 'App\\User', 444, 'qixerapi_keys', '50ca071126a8cb6c32ee227854dbe23d4fc853625cab0ee6688e3112a7f3858a', '[\"*\"]', '2022-06-26 11:09:52', '2022-06-26 11:09:51', '2022-06-26 11:09:52'),
(1264, 'App\\User', 621, 'qixerapi_keys', '6766dae8f46867cc005016def888e4b214e496d2dc3dcf07775e3c5d1946789b', '[\"*\"]', '2022-06-26 13:10:11', '2022-06-26 13:10:01', '2022-06-26 13:10:11'),
(1265, 'App\\User', 622, 'qixerapi_keys', '2a5f4d40f9279fb9c4581b3c4683f97d472cc4fe573f16552c073eb4767ebfd0', '[\"*\"]', '2022-06-26 13:13:33', '2022-06-26 13:13:24', '2022-06-26 13:13:33'),
(1266, 'App\\User', 509, 'qixerapi_keys', '54318ee274a87bfd77c3693053ff8e6757d7bc4857195c9a35c693a583b4f3e2', '[\"*\"]', '2022-06-26 13:37:44', '2022-06-26 13:37:24', '2022-06-26 13:37:44'),
(1267, 'App\\User', 316, 'qixerapi_keys', '9dc7aa31799a3f0819d979b87c7487a859b03aecd6747de45df07c0da8a014f2', '[\"*\"]', '2022-06-26 13:54:48', '2022-06-26 13:54:33', '2022-06-26 13:54:48'),
(1268, 'App\\User', 304, 'qixerapi_keys', 'c7fdb74ced89765197e7df794a34bfa16d08a3562d44d40281d0daf5c204139b', '[\"*\"]', '2022-06-26 18:52:18', '2022-06-26 18:50:33', '2022-06-26 18:52:18'),
(1269, 'App\\User', 509, 'qixerapi_keys', 'caafb5297715c3b15e759a2e171d7e488e0b63f61326f9334ceda1ffd343088f', '[\"*\"]', '2022-06-26 19:29:02', '2022-06-26 19:29:00', '2022-06-26 19:29:02'),
(1270, 'App\\User', 625, 'qixerapi_keys', '15c79618684ff8b70fc33581e74fec95f9f90f529c5bd72ba3f14401922535cb', '[\"*\"]', '2022-06-26 23:24:47', '2022-06-26 23:22:38', '2022-06-26 23:24:47'),
(1271, 'App\\User', 527, 'qixerapi_keys', '016e531b0ddb30264232f67cc23fbc3f85842a1b6c508c91518f27d916cf035b', '[\"*\"]', '2022-06-27 01:36:25', '2022-06-27 01:36:24', '2022-06-27 01:36:25'),
(1276, 'App\\User', 626, 'qixerapi_keys', '8b89bed7bbbb115513f4d16180636735093d8a113bd83ef26a8338ffce1d9f0e', '[\"*\"]', NULL, '2022-06-27 07:17:26', '2022-06-27 07:17:26'),
(1277, 'App\\User', 626, 'qixerapi_keys', 'ad2d28402fea04412fce7c7c8abcd4704b9fecba119d437393c85be98646d8b3', '[\"*\"]', '2022-06-27 07:18:05', '2022-06-27 07:18:03', '2022-06-27 07:18:05'),
(1286, 'App\\User', 621, 'qixerapi_keys', '891ece1499060b069b9419a0a56d62a6d7c40a0751f10c1c7e96b55ca2165591', '[\"*\"]', '2022-06-27 10:30:03', '2022-06-27 10:29:40', '2022-06-27 10:30:03'),
(1287, 'App\\User', 621, 'qixerapi_keys', '85fbaf6bbc978982fe53fb06e3101d26b4159649811ebd57c23915eb3a916533', '[\"*\"]', '2022-06-27 10:30:16', '2022-06-27 10:30:14', '2022-06-27 10:30:16'),
(1288, 'App\\User', 621, 'qixerapi_keys', '80bc9e835cfcb807ff0e32d5ce77be00ecfde0b93462a9928c857abf95d89e77', '[\"*\"]', NULL, '2022-06-27 10:30:17', '2022-06-27 10:30:17'),
(1290, 'App\\User', 555, 'qixerapi_keys', '4c15bcf291ecd6f4f9fd93a333d6b7cc64b868e3e6744a8dfe226dfdbb1766e2', '[\"*\"]', '2022-06-27 13:01:00', '2022-06-27 13:00:59', '2022-06-27 13:01:00'),
(1291, 'App\\User', 555, 'qixerapi_keys', '2c7700fcc7984aaf7876ab52e85c52d814a1d4e324dfdb84fbe3babbfc625694', '[\"*\"]', '2022-06-27 13:02:25', '2022-06-27 13:02:24', '2022-06-27 13:02:25'),
(1292, 'App\\User', 629, 'qixerapi_keys', '365876135eb5b4161f5cf237553876525125e4fcc0b449e468a37937c786f510', '[\"*\"]', '2022-06-27 14:06:04', '2022-06-27 14:02:44', '2022-06-27 14:06:04'),
(1294, 'App\\User', 286, 'qixerapi_keys', 'db48d65387bab69c1e5ea234cdeb5edac726c6912c7ebedb1ce04c245d109d6a', '[\"*\"]', '2022-06-27 15:48:10', '2022-06-27 15:48:09', '2022-06-27 15:48:10'),
(1295, 'App\\User', 621, 'qixerapi_keys', '3de3d447927320ef2f26548def8c678c4ced8bbd60aa44fc51100290d12c372b', '[\"*\"]', '2022-06-27 16:11:51', '2022-06-27 16:11:50', '2022-06-27 16:11:51'),
(1296, 'App\\User', 631, 'qixerapi_keys', '6de36bc0900d91160cb151ba48020530a38be9330299de27853137ac079e5f45', '[\"*\"]', '2022-06-27 16:27:13', '2022-06-27 16:24:03', '2022-06-27 16:27:13'),
(1302, 'App\\User', 448, 'qixerapi_keys', 'c4d03eeace928c9f582bfad60392fb87d14d252bb386847f104bb91126ac3eaa', '[\"*\"]', '2022-06-28 00:54:56', '2022-06-28 00:54:54', '2022-06-28 00:54:56'),
(1307, 'App\\User', 592, 'qixerapi_keys', '1468a665c9583e1d062a2d88d8768778714e9a18a354b5cafc0ccefab42a3be2', '[\"*\"]', NULL, '2022-06-28 06:05:33', '2022-06-28 06:05:33'),
(1308, 'App\\User', 399, 'qixerapi_keys', '317c9d92a2ca610cd5ad2063025b601063693015f7e44af0e7dbad3acd4414fa', '[\"*\"]', '2022-06-28 06:34:42', '2022-06-28 06:34:40', '2022-06-28 06:34:42'),
(1313, 'App\\User', 379, 'qixerapi_keys', '876ca56cac114770e96b75c64ed5a45bebaec4453b0603ba80fc7bd676456811', '[\"*\"]', '2022-06-28 11:05:32', '2022-06-28 11:05:31', '2022-06-28 11:05:32'),
(1314, 'App\\User', 621, 'qixerapi_keys', '55bd626608993c575d91e9d56d35052832457b3d6987f9d13d44eb0418b947df', '[\"*\"]', '2022-06-28 12:01:52', '2022-06-28 12:01:51', '2022-06-28 12:01:52'),
(1320, 'App\\User', 632, 'qixerapi_keys', '852a64025c1bf4a57fe71f09a74b898c9f1b780c76144252317cc68cdbb382b4', '[\"*\"]', '2022-06-28 15:24:16', '2022-06-28 15:22:21', '2022-06-28 15:24:16'),
(1323, 'App\\User', 264, 'qixerapi_keys', 'be0adf8f7eae09c9f3950dca5e2559513c73ccff8195df416397735d7f83eb1a', '[\"*\"]', '2022-06-28 17:06:23', '2022-06-28 17:05:33', '2022-06-28 17:06:23'),
(1329, 'App\\User', 634, 'qixerapi_keys', '0410847121bfe086a8b51d14fa50cbee99d8329c2671b1630af758809c984b72', '[\"*\"]', '2022-06-28 23:16:52', '2022-06-28 23:14:57', '2022-06-28 23:16:52'),
(1330, 'App\\User', 509, 'qixerapi_keys', 'a483c9f6022be0dbaf017dd0e8e252e21982524fbe824c942fd8e9ffb62b6c44', '[\"*\"]', '2022-06-28 23:43:24', '2022-06-28 23:43:23', '2022-06-28 23:43:24'),
(1331, 'App\\User', 634, 'qixerapi_keys', '0612ff40290c8278feee3e5dff7a053b3b825336d415fbf259d012770ddc066f', '[\"*\"]', '2022-06-28 23:51:38', '2022-06-28 23:51:28', '2022-06-28 23:51:38'),
(1332, 'App\\User', 634, 'qixerapi_keys', '24544082f9875e1b31b2190a773dd744fdcdae6b5f24a37ab111772facb4b900', '[\"*\"]', '2022-06-29 00:09:59', '2022-06-29 00:05:15', '2022-06-29 00:09:59'),
(1335, 'App\\User', 507, 'qixerapi_keys', '9840e0daad417c7c2378405305ca6cc3469cab999f39a251cd82cd2b04d6b3ab', '[\"*\"]', '2022-06-29 07:30:46', '2022-06-29 05:49:39', '2022-06-29 07:30:46'),
(1346, 'App\\User', 634, 'qixerapi_keys', '98550bf65f4d596959493dec1ac7925448892b75f2495353cbcbcdac96c7c021', '[\"*\"]', '2022-06-29 07:46:32', '2022-06-29 07:46:31', '2022-06-29 07:46:32'),
(1349, 'App\\User', 613, 'qixerapi_keys', '1668890d115cafcc53e700e93e9c1d3c8e74f6ac9ad338a9955c5f61f780d9de', '[\"*\"]', '2022-06-29 12:29:23', '2022-06-29 12:29:21', '2022-06-29 12:29:23'),
(1350, 'App\\User', 493, 'qixerapi_keys', 'e6f86519edd56e999e60a23ca67f3d8ea4df520a63e38a550a2ebc5b9fb94963', '[\"*\"]', '2022-06-29 13:05:39', '2022-06-29 13:05:38', '2022-06-29 13:05:39'),
(1357, 'App\\User', 507, 'qixerapi_keys', 'c3c4fda3914c0c2de521b26ab8d2d88cb1f95f97b2bf4210d5eddf2b6ed1a220', '[\"*\"]', '2022-06-29 19:18:34', '2022-06-29 19:18:33', '2022-06-29 19:18:34'),
(1365, 'App\\User', 641, 'qixerapi_keys', 'f3859b203c47a6f3ba61c0feb866c4900e86288ad3f6604038fd16afe58311b6', '[\"*\"]', '2022-06-29 23:39:22', '2022-06-29 23:36:18', '2022-06-29 23:39:22'),
(1367, 'App\\User', 642, 'qixerapi_keys', '772d70bc70b4e73cfca64d0bb8d3233587b372485eeb927aefdbd077b07fa7e1', '[\"*\"]', '2022-06-30 00:19:52', '2022-06-30 00:19:26', '2022-06-30 00:19:52'),
(1369, 'App\\User', 644, 'qixerapi_keys', 'fc4ad18f4199bde47088ce14c66ad08c5450d0460cdc4179845d901fd8244089', '[\"*\"]', '2022-06-30 05:03:20', '2022-06-30 05:01:05', '2022-06-30 05:03:20'),
(1370, 'App\\User', 493, 'qixerapi_keys', '8e2c817e1c1decff55c8093747e2441c393a2e3dea0e53c24f1bd105d1ff7eeb', '[\"*\"]', '2022-06-30 05:48:07', '2022-06-30 05:48:06', '2022-06-30 05:48:07'),
(1372, 'App\\User', 218, 'qixerapi_keys', '71e587d4715ef3fa97d6d2f2d7acc00fb518654cc58908bc98bf8c822677ed8c', '[\"*\"]', '2022-06-30 08:03:36', '2022-06-30 08:03:36', '2022-06-30 08:03:36'),
(1373, 'App\\User', 218, 'qixerapi_keys', 'aa18e7c17df3c4105c9495dab2b892258f5e6299c58b949e6daff44b5f4a5477', '[\"*\"]', '2022-07-24 09:00:14', '2022-06-30 08:06:14', '2022-07-24 09:00:14'),
(1374, 'App\\User', 343, 'qixerapi_keys', '4dd23f3ee5ed4c949fe93f1d494c66ffc16bc1ff0e1045ef35d49ade3ed022f5', '[\"*\"]', '2022-06-30 08:13:11', '2022-06-30 08:13:10', '2022-06-30 08:13:11'),
(1375, 'App\\User', 343, 'qixerapi_keys', '26a622f756400b14c6032c6a128beb70b11e8aec547e15798be8c96563ae1f9b', '[\"*\"]', '2022-06-30 08:45:37', '2022-06-30 08:43:53', '2022-06-30 08:45:37'),
(1378, 'App\\User', 580, 'qixerapi_keys', '43dd0a6732c1b3992da3c33e1a739c68d2ca6115909bc539bb99a8ac852a9132', '[\"*\"]', '2022-06-30 11:27:06', '2022-06-30 11:27:05', '2022-06-30 11:27:06'),
(1379, 'App\\User', 646, 'qixerapi_keys', '233d8f9c98ff772e9425cecf5e57ed7d47f758b3de65f1ca7b1f3f706f056aa3', '[\"*\"]', '2022-06-30 13:43:22', '2022-06-30 13:39:07', '2022-06-30 13:43:22'),
(1380, 'App\\User', 427, 'qixerapi_keys', 'fc32bed2324fce0cad0f6244517aa03a00be2990fcc66c7690713638844274b5', '[\"*\"]', '2022-06-30 13:56:02', '2022-06-30 13:52:48', '2022-06-30 13:56:02'),
(1381, 'App\\User', 427, 'qixerapi_keys', 'ff603d0fa7ca0cc1f653074fd8420ca0efcc31602c8407faf57299c0dd30c409', '[\"*\"]', '2022-06-30 13:56:57', '2022-06-30 13:56:56', '2022-06-30 13:56:57'),
(1383, 'App\\User', 448, 'qixerapi_keys', '536ac9ec7f16baaceadd13a3cae4c3887222f94dc80135e4b67525a86cc0c2c4', '[\"*\"]', '2022-06-30 14:43:07', '2022-06-30 14:43:06', '2022-06-30 14:43:07'),
(1387, 'App\\User', 426, 'qixerapi_keys', '5983db66025737dc50b0e3ae65879d74381f543adc734b42ef7a59d408c1b1d6', '[\"*\"]', '2022-07-01 02:11:32', '2022-07-01 02:11:31', '2022-07-01 02:11:32'),
(1388, 'App\\User', 648, 'qixerapi_keys', '3903bd4a08cb0242614b6bc754fb448c21499f5fa72121b9023a0406c09dc414', '[\"*\"]', '2022-07-01 05:25:05', '2022-07-01 05:25:04', '2022-07-01 05:25:05'),
(1389, 'App\\User', 258, 'qixerapi_keys', '55db7068ae7e23a53bd3c14d0ca55f3660fcf0dd01879095d54c9a56a6ecaba8', '[\"*\"]', '2022-07-01 05:56:00', '2022-07-01 05:55:46', '2022-07-01 05:56:00'),
(1390, 'App\\User', 649, 'qixerapi_keys', '9ed63141747f4353841ca1a67a16d35b030df2ab9244664e94dd4a6dfa262959', '[\"*\"]', '2022-07-01 06:51:42', '2022-07-01 06:50:25', '2022-07-01 06:51:42'),
(1391, 'App\\User', 316, 'qixerapi_keys', '6b37362ec0c7cb6d5d458745cb1ddd60c411ece42657610f6b8ff886c572ff3d', '[\"*\"]', '2022-07-01 10:44:32', '2022-07-01 10:44:29', '2022-07-01 10:44:32'),
(1394, 'App\\User', 427, 'qixerapi_keys', '9d144f20e472c8c5186964e26a5d466be5cb01b948addb5eeb08ac352d898dcb', '[\"*\"]', '2022-07-01 11:21:42', '2022-07-01 11:21:23', '2022-07-01 11:21:42'),
(1395, 'App\\User', 652, 'qixerapi_keys', 'c8b5551ee51a13393d2fd8d0c473c4d78ffe3a0fd4f1223e5e7d172e18d682a6', '[\"*\"]', '2022-07-01 11:38:22', '2022-07-01 11:38:04', '2022-07-01 11:38:22'),
(1396, 'App\\User', 339, 'qixerapi_keys', '131a3d80e50960a21bb380ed337e6c134686c9e1858491d2b78616bbb786c8f6', '[\"*\"]', '2022-07-01 12:06:17', '2022-07-01 12:06:16', '2022-07-01 12:06:17'),
(1397, 'App\\User', 339, 'qixerapi_keys', '5b8712b6807a3f4d966a9cb80a0bd6b3b4487784c8ab3706abd58601a62715cd', '[\"*\"]', '2022-07-01 12:10:58', '2022-07-01 12:10:57', '2022-07-01 12:10:58'),
(1399, 'App\\User', 652, 'qixerapi_keys', '9fa232bfd006e9eeeddb83667a6b2b66d4473f836f63533482aaab5807b95c16', '[\"*\"]', '2022-07-01 14:01:02', '2022-07-01 14:01:00', '2022-07-01 14:01:02'),
(1403, 'App\\User', 652, 'qixerapi_keys', '3c2715a321d6d78385b4f77ea2ac7bb31576f7b2ad950ca75a3d86190907dee7', '[\"*\"]', '2022-07-01 17:59:04', '2022-07-01 17:59:04', '2022-07-01 17:59:04'),
(1406, 'App\\User', 614, 'qixerapi_keys', 'c024f20851ec309bc48bf23c995d1ffbe3dfceb3a97079b28ee9c64d83626a12', '[\"*\"]', '2022-07-02 02:53:12', '2022-07-02 02:52:52', '2022-07-02 02:53:12'),
(1407, 'App\\User', 653, 'qixerapi_keys', '5b817d07b666fd5d065497675a6378405f5b13760be06caa26969aabceb298ea', '[\"*\"]', '2022-07-02 08:19:03', '2022-07-02 03:24:54', '2022-07-02 08:19:03'),
(1408, 'App\\User', 509, 'qixerapi_keys', '3cbd180656344fc52b14ecfc6cc972043c2bf02f63c3cab2994d31551f7af087', '[\"*\"]', '2022-07-02 04:10:23', '2022-07-02 04:10:22', '2022-07-02 04:10:23'),
(1409, 'App\\User', 509, 'qixerapi_keys', '3fa1689a5416bec298ea1871f408f25da2a69248bf6b7f0eba83c4421e070ab5', '[\"*\"]', '2022-07-02 04:29:00', '2022-07-02 04:28:59', '2022-07-02 04:29:00'),
(1414, 'App\\User', 509, 'qixerapi_keys', 'cb0d621d2846c535169239a074b9f9ef77df4bb431a5f8fecb296ba7b466ccf5', '[\"*\"]', '2022-07-02 06:35:03', '2022-07-02 06:35:02', '2022-07-02 06:35:03'),
(1415, 'App\\User', 631, 'qixerapi_keys', '1d1278a3d6cd1945561f412aa35557c06d14abb9ce2a48a84715b3405b78e39f', '[\"*\"]', '2022-07-02 08:25:25', '2022-07-02 08:23:27', '2022-07-02 08:25:25'),
(1416, 'App\\User', 654, 'qixerapi_keys', 'b61796386a7e78e75c139abd847d37322bae125f79c1a352c93d04eb271accae', '[\"*\"]', '2022-07-02 09:20:18', '2022-07-02 09:17:54', '2022-07-02 09:20:18'),
(1417, 'App\\User', 427, 'qixerapi_keys', 'dd23d8f087db5b79041434b3e72272f2d18f33ef586c1cb611e661774de54818', '[\"*\"]', '2022-07-02 11:37:17', '2022-07-02 11:37:16', '2022-07-02 11:37:17'),
(1420, 'App\\User', 427, 'qixerapi_keys', '8f0d0aed690dcda50cbe9a7785b03ea0a7c3102b3d7c8cbd6df59a0fa0c41291', '[\"*\"]', '2022-07-02 17:17:20', '2022-07-02 17:15:29', '2022-07-02 17:17:20'),
(1424, 'App\\User', 373, 'qixerapi_keys', 'aa7eb4ea8b81e75686af6626fcc6e75f55da49b5c7bf40558e48e28190aea63b', '[\"*\"]', '2022-07-02 23:57:56', '2022-07-02 23:54:18', '2022-07-02 23:57:56'),
(1425, 'App\\User', 432, 'qixerapi_keys', '30cad56b43680bce93c506065b9cc2fabcdeb16dc98be036a1f64ebae85fa656', '[\"*\"]', '2022-07-03 01:51:24', '2022-07-03 01:51:23', '2022-07-03 01:51:24'),
(1427, 'App\\User', 588, 'qixerapi_keys', '148457300405c94a8565811acf4ef7fdc7fb25dc6cae96333f8c3b69d08332a4', '[\"*\"]', '2022-07-03 02:04:29', '2022-07-03 02:04:28', '2022-07-03 02:04:29'),
(1431, 'App\\User', 458, 'qixerapi_keys', '2629d62f4c9300115a35baa8c2a91e7a6870639df3686ccd5d607eaf1bc60e76', '[\"*\"]', '2022-07-03 02:33:34', '2022-07-03 02:33:32', '2022-07-03 02:33:34'),
(1434, 'App\\User', 375, 'qixerapi_keys', '8529d2f239426106a5aa113367aaee9f8416adbe62f32abfbef746a7322796cf', '[\"*\"]', '2022-07-03 02:47:32', '2022-07-03 02:47:30', '2022-07-03 02:47:32'),
(1436, 'App\\User', 375, 'qixerapi_keys', '9694f4d263c4c8550ae71943e35f851c8374f9c58e362b34c105d7cf262801af', '[\"*\"]', '2022-07-03 03:48:05', '2022-07-03 03:48:04', '2022-07-03 03:48:05'),
(1437, 'App\\User', 375, 'qixerapi_keys', '5b90aef5ea860136f8c5b33273002fdb321f52a245539b17d9a0aefca1b374c6', '[\"*\"]', '2022-07-03 03:48:20', '2022-07-03 03:48:19', '2022-07-03 03:48:20'),
(1443, 'App\\User', 660, 'qixerapi_keys', 'aad9b7141227cbc03246b960f45003386b943d6b033302bb2d6d02b923ca9fb5', '[\"*\"]', NULL, '2022-07-03 07:55:43', '2022-07-03 07:55:43'),
(1445, 'App\\User', 659, 'qixerapi_keys', '59e2f6925c0caa7a3c07d360b15a0b9fbf91e93bd131838d3268ffa55cfd2654', '[\"*\"]', '2022-07-03 08:32:57', '2022-07-03 08:22:03', '2022-07-03 08:32:57'),
(1446, 'App\\User', 659, 'qixerapi_keys', '9b9cd9ebdf890363e6ff6eed642cb2106cdaa20f51d43ce73a3729a9389f6bd5', '[\"*\"]', '2022-07-03 08:41:43', '2022-07-03 08:41:41', '2022-07-03 08:41:43'),
(1447, 'App\\User', 659, 'qixerapi_keys', '22e39577e3e8aa6de6a87c6c018448da5143460988dcf08a5aa363ebecefe4dd', '[\"*\"]', '2022-07-03 09:21:18', '2022-07-03 09:18:16', '2022-07-03 09:21:18'),
(1449, 'App\\User', 659, 'qixerapi_keys', 'be569875eda441eb28b26521ffba526575c0672fe1f8d36a9d57e3a6566b16dd', '[\"*\"]', '2022-07-03 09:58:19', '2022-07-03 09:42:39', '2022-07-03 09:58:19'),
(1452, 'App\\User', 592, 'qixerapi_keys', '4c71f055d20b1a16e3316be1e8e5155015ae51e54211dbef03b5b5c48aeefd31', '[\"*\"]', '2022-07-03 10:25:57', '2022-07-03 10:25:55', '2022-07-03 10:25:57'),
(1454, 'App\\User', 659, 'qixerapi_keys', 'b5ba082f2de93e0276fb242ccb8c483302d0651f7291f2ff5db562d31a0798c6', '[\"*\"]', '2022-07-03 13:26:25', '2022-07-03 13:26:24', '2022-07-03 13:26:25');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1457, 'App\\User', 653, 'qixerapi_keys', '7de2c9039541870a71434d1e59f2374db31fe50f4a3ce9020bff8365c6a68729', '[\"*\"]', '2022-07-03 14:13:20', '2022-07-03 14:07:02', '2022-07-03 14:13:20'),
(1459, 'App\\User', 653, 'qixerapi_keys', 'e21e2ee5d42d40c3bee022619d5c0e11f384111ae6ed2a10f4d333d72e078078', '[\"*\"]', '2022-07-03 14:26:12', '2022-07-03 14:26:11', '2022-07-03 14:26:12'),
(1460, 'App\\User', 661, 'qixerapi_keys', '07640fce7c344ad8ef61de832787fe50516298beb402ef40296118ce4004f2e2', '[\"*\"]', '2022-07-03 15:28:58', '2022-07-03 15:28:57', '2022-07-03 15:28:58'),
(1463, 'App\\User', 630, 'qixerapi_keys', '7896affb3786c8ee9e7c85ee9cf81efd98ad39b7da6b857939b5c1753374fc0f', '[\"*\"]', '2022-07-03 19:56:12', '2022-07-03 19:52:34', '2022-07-03 19:56:12'),
(1464, 'App\\User', 662, 'qixerapi_keys', '45d69bea9a0b2014c40239f41bd0483446c712b4b0e4775481bad612b0305bec', '[\"*\"]', '2022-07-03 22:08:38', '2022-07-03 22:06:01', '2022-07-03 22:08:38'),
(1465, 'App\\User', 653, 'qixerapi_keys', 'e9742fc701764960c6619fa366b962c34a2c0850f6226c66c78a20a58c0bdb54', '[\"*\"]', '2022-07-03 22:45:42', '2022-07-03 22:42:38', '2022-07-03 22:45:42'),
(1466, 'App\\User', 653, 'qixerapi_keys', 'cff42d4f878b59c09f929447f72498a8ecb589e4b87b6a18d1afd5b474c98870', '[\"*\"]', '2022-07-03 22:48:02', '2022-07-03 22:47:55', '2022-07-03 22:48:02'),
(1469, 'App\\User', 631, 'qixerapi_keys', '2fa510bf25103a37e5b6d4a1c91f74b38513e6c3e2488a11fd950f69a6b219d3', '[\"*\"]', '2022-07-04 00:28:16', '2022-07-04 00:28:15', '2022-07-04 00:28:16'),
(1470, 'App\\User', 631, 'qixerapi_keys', '742695ceef0f8e9d24736ad321bc6be5f4e33b8ee66a0bbf14d0b68f35a15d27', '[\"*\"]', '2022-07-04 00:32:06', '2022-07-04 00:32:05', '2022-07-04 00:32:06'),
(1471, 'App\\User', 634, 'qixerapi_keys', '36eded5c93ee87983e102367d61c4f49152c2f0ac7de03a85ccc2e93ff7de3c6', '[\"*\"]', '2022-07-04 01:21:00', '2022-07-04 01:20:59', '2022-07-04 01:21:00'),
(1472, 'App\\User', 634, 'qixerapi_keys', '11bacca70833057b34eedd0beea16104916c08ce44bcb5f876a0b02c3ddce515', '[\"*\"]', '2022-07-04 01:39:29', '2022-07-04 01:39:27', '2022-07-04 01:39:29'),
(1475, 'App\\User', 427, 'qixerapi_keys', '71bb8c3faeb7f07af63eb344e7ce5edf2685230228af80d8d4a223fee084443c', '[\"*\"]', '2022-07-04 03:13:25', '2022-07-04 03:13:20', '2022-07-04 03:13:25'),
(1479, 'App\\User', 653, 'qixerapi_keys', '3f1702e9c9acd5b3235a28de3f21c3fd5e1b179a76244d964af879ee09d587b0', '[\"*\"]', '2022-07-04 07:09:04', '2022-07-04 07:07:13', '2022-07-04 07:09:04'),
(1480, 'App\\User', 653, 'qixerapi_keys', '15edf25a5add8abd1de221ffc22c11db79b366921647cf86a6e5f11c42f4ea3f', '[\"*\"]', '2022-07-04 07:28:15', '2022-07-04 07:24:33', '2022-07-04 07:28:15'),
(1481, 'App\\User', 653, 'qixerapi_keys', '4b208e3eeb1f122709f0aa41fdc34470d30f35fe010ec0a97f09fcb8ba00994e', '[\"*\"]', '2022-07-04 07:28:35', '2022-07-04 07:28:31', '2022-07-04 07:28:35'),
(1483, 'App\\User', 663, 'qixerapi_keys', '600d1739b00e9bb9cb16f26282f42fba9208b01aa75ebd555dcbb4781e5b29de', '[\"*\"]', '2022-07-04 11:23:35', '2022-07-04 11:23:34', '2022-07-04 11:23:35'),
(1484, 'App\\User', 431, 'qixerapi_keys', '5486e4ca5e18d69fc6e29e8e91b02995f9cf4d9fe04f91b7a030cbd20c70ce94', '[\"*\"]', '2022-07-04 12:10:49', '2022-07-04 12:10:48', '2022-07-04 12:10:49'),
(1485, 'App\\User', 664, 'qixerapi_keys', 'f0e8b24de77bb5c6a4db46ecb6c698f4a03013435bc2e4f054cefa5684d82892', '[\"*\"]', '2022-07-04 12:29:30', '2022-07-04 12:29:29', '2022-07-04 12:29:30'),
(1487, 'App\\User', 448, 'qixerapi_keys', '79899645981652d1a6004acd6f26885ad9338ce0ef3daab44ec5814ed5bd1c25', '[\"*\"]', '2022-07-04 14:03:34', '2022-07-04 14:03:31', '2022-07-04 14:03:34'),
(1489, 'App\\User', 665, 'qixerapi_keys', '21fd1b16812eb219acaba9055ba8744e10cae69939ed703b12f12edd8775a304', '[\"*\"]', '2022-07-05 02:28:58', '2022-07-05 02:27:48', '2022-07-05 02:28:58'),
(1492, 'App\\User', 659, 'qixerapi_keys', '372506a815947752436fae693ff1f637cb865d9912331e97108e4f71746b2c39', '[\"*\"]', '2022-07-05 11:04:45', '2022-07-05 11:04:43', '2022-07-05 11:04:45'),
(1493, 'App\\User', 659, 'qixerapi_keys', '1b05858a266b3b9a177a292fcca37e98aa2be0dc572fa4109f69fdeb85c27af9', '[\"*\"]', '2022-07-05 11:13:53', '2022-07-05 11:13:52', '2022-07-05 11:13:53'),
(1494, 'App\\User', 631, 'qixerapi_keys', '118113ffd0170a64b628f8beadc124eb9fb84c1d83fdccb93112b348ebdc776f', '[\"*\"]', '2022-07-05 11:21:26', '2022-07-05 11:20:36', '2022-07-05 11:21:26'),
(1495, 'App\\User', 631, 'qixerapi_keys', 'a9cc9337b02560d994422e0a87a08d480f4b8f184b6c7e7e0b9643eb31d953f4', '[\"*\"]', '2022-07-05 11:42:48', '2022-07-05 11:42:47', '2022-07-05 11:42:48'),
(1496, 'App\\User', 666, 'qixerapi_keys', '0ca9bb7e0bd4da872fe4291444db6b2e15b8673656ac977854cfd27c77cd64be', '[\"*\"]', '2022-07-05 12:15:17', '2022-07-05 12:15:16', '2022-07-05 12:15:17'),
(1497, 'App\\User', 458, 'qixerapi_keys', '3b440983e51847ea89b76cb79dbc5dac0d83d732fc17c4c7a25141b6de2382f6', '[\"*\"]', '2022-07-05 12:30:18', '2022-07-05 12:28:38', '2022-07-05 12:30:18'),
(1498, 'App\\User', 427, 'qixerapi_keys', '0ffce0fce6f22291d9505e221167fdfb007f4ffe3e2ceeb3bad234c009db0e14', '[\"*\"]', '2022-07-05 12:46:48', '2022-07-05 12:46:47', '2022-07-05 12:46:48'),
(1499, 'App\\User', 427, 'qixerapi_keys', '57203f4e4723dfc4e34d7431910ef3e099ffd9aa2c09724ad0da1e2170b8dfac', '[\"*\"]', '2022-07-05 12:52:47', '2022-07-05 12:52:32', '2022-07-05 12:52:47'),
(1501, 'App\\User', 662, 'qixerapi_keys', '247896b55cca51c19be6d3cbc56846c42fecb692b6b9f22f3ac5978c54b0612f', '[\"*\"]', '2022-07-05 21:36:49', '2022-07-05 21:36:47', '2022-07-05 21:36:49'),
(1503, 'App\\User', 668, 'qixerapi_keys', 'f988dae4395a6444b5eb32ab4cde0cac550305f91cbd2129ebfc15fc63bf5748', '[\"*\"]', NULL, '2022-07-05 22:22:13', '2022-07-05 22:22:13'),
(1504, 'App\\User', 466, 'qixerapi_keys', '86ac8e6f7dd60e1a8ca8fad98e874c847752eda74430c4d403e8dd1450bc2547', '[\"*\"]', '2022-07-05 22:25:07', '2022-07-05 22:24:58', '2022-07-05 22:25:07'),
(1505, 'App\\User', 668, 'qixerapi_keys', '287a1839704120d28fea9a2cd5404dcc8697486447007ad89b5785885be25f5d', '[\"*\"]', '2022-07-05 22:37:25', '2022-07-05 22:34:09', '2022-07-05 22:37:25'),
(1506, 'App\\User', 668, 'qixerapi_keys', 'f1bb9be54bcab41f2cfe4d1bf3417d18dc5ee2842574fac49b3ac545f43a07d5', '[\"*\"]', '2022-07-05 22:37:51', '2022-07-05 22:37:49', '2022-07-05 22:37:51'),
(1507, 'App\\User', 654, 'qixerapi_keys', '41d75c3a5ff029044aacb7095fec4680dda0009ff7c6b1ea8bf320fd4c392bce', '[\"*\"]', '2022-07-05 23:13:30', '2022-07-05 23:12:57', '2022-07-05 23:13:30'),
(1509, 'App\\User', 670, 'qixerapi_keys', 'fa9fe3b87ca337b77bce4bdb38312536cf049856be7d1dc95cd6fb31b3fb4bdd', '[\"*\"]', NULL, '2022-07-06 00:58:43', '2022-07-06 00:58:43'),
(1510, 'App\\User', 671, 'qixerapi_keys', 'da4786b2f0603d515e22f0f2e226142eda8050e6af103e5e9b43b8bd68e14a91', '[\"*\"]', NULL, '2022-07-06 01:00:02', '2022-07-06 01:00:02'),
(1511, 'App\\User', 671, 'qixerapi_keys', 'f2c6f5957f9639ae717701837c4d4fce112cf1ed88ed82ea7956698e14b94ea1', '[\"*\"]', '2022-07-06 01:06:14', '2022-07-06 01:00:21', '2022-07-06 01:06:14'),
(1512, 'App\\User', 671, 'qixerapi_keys', 'd10f64cd8d06a98cbc59d7f81ca59afdefe9905692e96e19cc797f16d243fb00', '[\"*\"]', '2022-07-06 01:09:20', '2022-07-06 01:09:18', '2022-07-06 01:09:20'),
(1513, 'App\\User', 671, 'qixerapi_keys', 'b215103da5a557c02fa2f3d38c1c79efd11900b35d043dcccb980db84206d2fc', '[\"*\"]', '2022-07-06 01:09:33', '2022-07-06 01:09:32', '2022-07-06 01:09:33'),
(1515, 'App\\User', 672, 'qixerapi_keys', 'd39c14e1cd9c011f486fbe376dad53750c10daf8a7807f1f9fc692b2d6a67c90', '[\"*\"]', '2022-07-06 01:26:13', '2022-07-06 01:25:34', '2022-07-06 01:26:13'),
(1517, 'App\\User', 644, 'qixerapi_keys', '43fb83abb299538875c0e60922b0c21c4013124d50ead6db6017b0ecfcf8f73d', '[\"*\"]', '2022-07-06 09:52:17', '2022-07-06 09:52:16', '2022-07-06 09:52:17'),
(1518, 'App\\User', 448, 'qixerapi_keys', 'cf3f379679dcf1fc7770aae467409364dc7ba2b7c48599f4492e4af7371e0f82', '[\"*\"]', '2022-07-06 11:11:52', '2022-07-06 11:11:51', '2022-07-06 11:11:52'),
(1519, 'App\\User', 448, 'qixerapi_keys', '2a1f76bee0de858b7f8e0e5192df39d67a7e4cf3b037462cbf6077989e83d674', '[\"*\"]', '2022-07-06 11:24:26', '2022-07-06 11:24:24', '2022-07-06 11:24:26'),
(1520, 'App\\User', 257, 'qixerapi_keys', '2928523fce139b2b19b62dd748cf94eb1d55fb32fca1f2f39ad106d3bcedb826', '[\"*\"]', NULL, '2022-07-06 12:00:22', '2022-07-06 12:00:22'),
(1521, 'App\\User', 605, 'qixerapi_keys', 'b463f7d2f18b8b64d75d073dae8f1b0eaf77e3688b0d729dc3686951f92a7842', '[\"*\"]', '2022-07-06 12:19:42', '2022-07-06 12:19:41', '2022-07-06 12:19:42'),
(1522, 'App\\User', 339, 'qixerapi_keys', '47da3c054f0bd5c3033b1fbac966de26daa7d2d91a335c6b7bf7370c8a4b2615', '[\"*\"]', '2022-07-06 13:35:08', '2022-07-06 13:35:07', '2022-07-06 13:35:08'),
(1523, 'App\\User', 358, 'qixerapi_keys', '5689a4cba393a9c2e2833f5ff828caaa5bcaca3029d20e82f97b3a46ab7425b9', '[\"*\"]', '2022-07-06 14:17:54', '2022-07-06 14:17:53', '2022-07-06 14:17:54'),
(1525, 'App\\User', 675, 'qixerapi_keys', '585c58e0a26d966b725a2348db1cf13bb0e2a155f9711959549c1efd9a1b95ba', '[\"*\"]', NULL, '2022-07-06 15:24:37', '2022-07-06 15:24:37'),
(1526, 'App\\User', 676, 'qixerapi_keys', '3978f84c77a671642cdbb9d2bb3249ca9cd784b718bef7d6e5f2c547d8aea796', '[\"*\"]', '2022-07-06 15:26:48', '2022-07-06 15:25:23', '2022-07-06 15:26:48'),
(1527, 'App\\User', 662, 'qixerapi_keys', '9baed5938e2489a67e88ceace1a1584052e12d2af584c121a5e445c1ed3d9e82', '[\"*\"]', '2022-07-06 18:11:27', '2022-07-06 18:10:34', '2022-07-06 18:11:27'),
(1528, 'App\\User', 653, 'qixerapi_keys', '20e689d659c21cebba1ecbe8f0c6a6d94eb2afd89c8fa208a9df6c3691b5ea7b', '[\"*\"]', '2022-07-06 20:20:21', '2022-07-06 20:10:27', '2022-07-06 20:20:21'),
(1531, 'App\\User', 677, 'qixerapi_keys', '0894f976976cf274acc309113d8023e1f918fdf41dfaeb1f39f18a725dea3c7b', '[\"*\"]', '2022-07-06 23:19:46', '2022-07-06 23:18:50', '2022-07-06 23:19:46'),
(1532, 'App\\User', 433, 'qixerapi_keys', 'b000f6b990b034f349aadef538c2510262dfc13e046f349fda96a377363696ba', '[\"*\"]', '2022-07-06 23:59:02', '2022-07-06 23:59:00', '2022-07-06 23:59:02'),
(1535, 'App\\User', 358, 'qixerapi_keys', '5d0ebaf827eb9f885ac1fe2df27e04854b4169cf729b8647a44a41c5e4ed09cc', '[\"*\"]', '2022-07-07 06:30:03', '2022-07-07 06:28:23', '2022-07-07 06:30:03'),
(1538, 'App\\User', 576, 'qixerapi_keys', '6df24275fb019a591102421dba48fcb8ba78eb36aacbfc591a0eebb3490ff4dc', '[\"*\"]', '2022-07-07 13:01:10', '2022-07-07 12:59:43', '2022-07-07 13:01:10'),
(1539, 'App\\User', 664, 'qixerapi_keys', 'ae10b95c647a31de19688308a4b5ca98833a62462d25d3f30daa154507488188', '[\"*\"]', NULL, '2022-07-07 13:30:30', '2022-07-07 13:30:30'),
(1540, 'App\\User', 448, 'qixerapi_keys', '1c8814b0181ba1bbb793e3968cee63a6e3c6010ffd343148ba43d9b91d48eda1', '[\"*\"]', '2022-07-07 13:49:58', '2022-07-07 13:49:57', '2022-07-07 13:49:58'),
(1541, 'App\\User', 431, 'qixerapi_keys', '8cf78e74902478297a658f38a82bee529701e053bb7e90e407c6b1612e1fa1e5', '[\"*\"]', '2022-07-07 14:54:36', '2022-07-07 14:54:34', '2022-07-07 14:54:36'),
(1544, 'App\\User', 680, 'qixerapi_keys', 'f610fc02acd02f5a3fb85c8ae340140cdb5c28068f0f646f3434c0fdf5c9167f', '[\"*\"]', '2022-07-07 21:12:46', '2022-07-07 21:06:59', '2022-07-07 21:12:46'),
(1545, 'App\\User', 681, 'qixerapi_keys', 'e4753176eb5be4110800d0a336c1e8d6b73d4cb5ef31b935792523a0c6933428', '[\"*\"]', '2022-07-08 01:34:14', '2022-07-08 01:33:43', '2022-07-08 01:34:14'),
(1546, 'App\\User', 682, 'qixerapi_keys', 'c5021c637d243939ca823c1dded3f9851571ba5bf2458605b5a1ccab72a98fe7', '[\"*\"]', '2022-07-08 03:16:15', '2022-07-08 03:16:04', '2022-07-08 03:16:15'),
(1547, 'App\\User', 448, 'qixerapi_keys', 'f51eacd73a198da0ee1e384c67e036c34bd13f456a591f3710c41e26357353de', '[\"*\"]', '2022-07-08 03:32:05', '2022-07-08 03:29:35', '2022-07-08 03:32:05'),
(1548, 'App\\User', 653, 'qixerapi_keys', 'c7abf7beca6757779081480de3e54cd00877d016266d7659e2279058e1f7b5dc', '[\"*\"]', '2022-07-08 04:29:44', '2022-07-08 04:29:43', '2022-07-08 04:29:44'),
(1549, 'App\\User', 493, 'qixerapi_keys', '1605b3e2436f3d261484a46db8fe97659ae78f2bba17b6f630baae12db4c43c8', '[\"*\"]', '2022-07-08 05:01:00', '2022-07-08 05:00:59', '2022-07-08 05:01:00'),
(1550, 'App\\User', 662, 'qixerapi_keys', '6386df3b53556bf433b276ef8293b9d72f83aec139edddd2b763246fc564f9c4', '[\"*\"]', '2022-07-08 07:09:03', '2022-07-08 07:09:02', '2022-07-08 07:09:03'),
(1551, 'App\\User', 684, 'qixerapi_keys', '8c71cf457dc6e2ac8641d041647ab75c3ec8d9d1dafb90e14e852a1c6285808f', '[\"*\"]', '2022-07-08 08:30:05', '2022-07-08 08:30:03', '2022-07-08 08:30:05'),
(1552, 'App\\User', 684, 'qixerapi_keys', '4c63ae63ca157cd0a65d18277da499c384ddba683bf02b03564b0d87eaea3ce7', '[\"*\"]', '2022-07-08 10:20:39', '2022-07-08 10:20:37', '2022-07-08 10:20:39'),
(1553, 'App\\User', 668, 'qixerapi_keys', '168f1a9b2f428f811508bae3a841a5c9f887d15b3e0b24b2e2d8f3ec2350b390', '[\"*\"]', '2022-07-08 11:41:29', '2022-07-08 11:41:24', '2022-07-08 11:41:29'),
(1554, 'App\\User', 310, 'qixerapi_keys', '28833ec1027f59f80fb9107d8b9acde67eecdb15f9c4b9b87e40ebbf588cde47', '[\"*\"]', '2022-07-08 13:09:26', '2022-07-08 13:09:25', '2022-07-08 13:09:26'),
(1559, 'App\\User', 652, 'qixerapi_keys', 'efacd8e4fb231191543b0ac6592e758c7be4214c30c82b127e4e6c67f65e7919', '[\"*\"]', '2022-07-09 02:30:05', '2022-07-09 02:30:04', '2022-07-09 02:30:05'),
(1560, 'App\\User', 427, 'qixerapi_keys', 'e1526799d77da36a9166d18af20777fdeafbc95b769a0d3a8d598a80ae0a04ab', '[\"*\"]', '2022-07-09 02:52:34', '2022-07-09 02:52:32', '2022-07-09 02:52:34'),
(1563, 'App\\User', 687, 'qixerapi_keys', '018369e0dbefa7127fabd6f7688fc7cda2bb936ece2521e1a37c37de2614aa22', '[\"*\"]', '2022-07-09 11:53:25', '2022-07-09 11:52:34', '2022-07-09 11:53:25'),
(1568, 'App\\User', 375, 'qixerapi_keys', '698efed556081e546b8be4f1611c5894999c2e2e80bd64e809ab854f33de778c', '[\"*\"]', '2022-07-10 00:10:02', '2022-07-10 00:08:26', '2022-07-10 00:10:02'),
(1569, 'App\\User', 631, 'qixerapi_keys', '2ab2d01aeb1f5f7f88ffc2074163e75e30740ded295f6185343e54b4e3d1a19d', '[\"*\"]', '2022-07-10 04:47:00', '2022-07-10 04:43:53', '2022-07-10 04:47:00'),
(1570, 'App\\User', 687, 'qixerapi_keys', '0f8657484da5baa99068724aab24c47b401d299f4e278447b7cac75c8f33ba7c', '[\"*\"]', '2022-07-10 06:03:51', '2022-07-10 06:03:37', '2022-07-10 06:03:51'),
(1572, 'App\\User', 688, 'qixerapi_keys', '2f87551c1bd7e2884e8c22da7fdb7db17f3b0e2aeecd5fee74ec7bcd7d3ae46a', '[\"*\"]', '2022-07-10 07:41:50', '2022-07-10 07:41:49', '2022-07-10 07:41:50'),
(1573, 'App\\User', 689, 'qixerapi_keys', '72c6372a2708806e1bfea98c09f2136dcd8e8823feea152bfe697b61c561e4c8', '[\"*\"]', '2022-07-10 08:27:35', '2022-07-10 08:26:01', '2022-07-10 08:27:35'),
(1574, 'App\\User', 689, 'qixerapi_keys', 'd4824d95188f5e2a11d20a7edd472cdeaf7e972aab06f8c4220aa27322b5703e', '[\"*\"]', '2022-07-10 08:31:43', '2022-07-10 08:31:43', '2022-07-10 08:31:43'),
(1575, 'App\\User', 689, 'qixerapi_keys', '888bd2b402f094af42330cd0fcf27cc049bb33ee3089402359965a1111d87530', '[\"*\"]', '2022-07-10 08:36:36', '2022-07-10 08:35:15', '2022-07-10 08:36:36'),
(1576, 'App\\User', 689, 'qixerapi_keys', '8f8918b7c214701eb05f55cdbc7e09800fb57f0568b8fd6b8194e8eb533e5a09', '[\"*\"]', '2022-07-10 10:01:18', '2022-07-10 10:01:07', '2022-07-10 10:01:18'),
(1577, 'App\\User', 690, 'qixerapi_keys', 'c205f5b75365346b8d91a14143003d0e22b5c057157b855169551630f065ec43', '[\"*\"]', '2022-07-10 10:45:01', '2022-07-10 10:42:26', '2022-07-10 10:45:01'),
(1578, 'App\\User', 610, 'qixerapi_keys', '74b8964cc615611a32bbcc9d60f0db3e58dd9f526663e4ab954230424380d7cc', '[\"*\"]', '2022-07-10 12:11:44', '2022-07-10 12:11:42', '2022-07-10 12:11:44'),
(1579, 'App\\User', 610, 'qixerapi_keys', '7400a03fd4307223131ca939423f7078791f106b3869b4d84493f2f5509a76b4', '[\"*\"]', '2022-07-10 12:15:51', '2022-07-10 12:15:40', '2022-07-10 12:15:51'),
(1581, 'App\\User', 692, 'qixerapi_keys', 'e6c8807ea0e43a5ee975035771f50ff0945eaeb1dd2d9098c63f2aaffae434e3', '[\"*\"]', NULL, '2022-07-10 13:36:50', '2022-07-10 13:36:50'),
(1582, 'App\\User', 316, 'qixerapi_keys', '2c516666a03ca0ce21d0ec8f301ad256a5865fe816a5cf8501d60c7c85913d7d', '[\"*\"]', '2022-07-10 14:02:52', '2022-07-10 14:02:37', '2022-07-10 14:02:52'),
(1583, 'App\\User', 648, 'qixerapi_keys', 'e5e4fb3669824a22b8fb51f349d6e93fdea8ea8edb4a4e2c3fba578b2764e589', '[\"*\"]', '2022-07-10 14:55:53', '2022-07-10 14:55:45', '2022-07-10 14:55:53'),
(1585, 'App\\User', 653, 'qixerapi_keys', 'ccda1ce7c39cd0731a14f663368d62fff8bfce44405938b977d39761546e80af', '[\"*\"]', '2022-07-10 19:27:35', '2022-07-10 19:27:34', '2022-07-10 19:27:35'),
(1586, 'App\\User', 614, 'qixerapi_keys', 'e1b84f02929149b3b1f07fdddb06f2a33e3b6172fb453c71b44e6e0afe0c3f65', '[\"*\"]', '2022-07-11 01:14:05', '2022-07-11 01:14:03', '2022-07-11 01:14:05'),
(1588, 'App\\User', 693, 'qixerapi_keys', '15eaffc2c783b7d71b02cd369377afb98de84a1fb07dd6e083d8358b3dada5e8', '[\"*\"]', '2022-07-11 04:31:30', '2022-07-11 04:27:45', '2022-07-11 04:31:30'),
(1589, 'App\\User', 613, 'qixerapi_keys', '209dab9fd19927faa4fdde602bfc0e8eeaa391e88ad6c5110c575efa87555af5', '[\"*\"]', '2022-07-11 04:28:43', '2022-07-11 04:28:42', '2022-07-11 04:28:43'),
(1590, 'App\\User', 693, 'qixerapi_keys', '02c77c4681e4001d3cc760b8bdccb764997c253cd32ac5afccfbfa58804adc9b', '[\"*\"]', '2022-07-11 08:17:23', '2022-07-11 07:53:11', '2022-07-11 08:17:23'),
(1591, 'App\\User', 257, 'qixerapi_keys', '282cb18847ddad68ba8e862a7906e3d0ca0174f3b847e8b815ddd637ad584594', '[\"*\"]', '2022-07-11 08:53:45', '2022-07-11 08:53:21', '2022-07-11 08:53:45'),
(1594, 'App\\User', 462, 'qixerapi_keys', 'cde2878c4c7257b964a79996caba8b5a23c1058191d49d4a61a710f97e9b94a2', '[\"*\"]', '2022-12-15 10:42:47', '2022-07-11 09:14:27', '2022-12-15 10:42:47'),
(1602, 'App\\User', 427, 'qixerapi_keys', '9be967c63bba923b82f4343cf059622862879e88490570ed5ea3c999a9a03466', '[\"*\"]', '2022-07-11 13:08:38', '2022-07-11 13:08:37', '2022-07-11 13:08:38'),
(1603, 'App\\User', 316, 'qixerapi_keys', '3f5a48d4dd7ab82ac57e0a28612b727d228dc9e136e3e0cdf1c536a6193a06e8', '[\"*\"]', NULL, '2022-07-11 14:46:55', '2022-07-11 14:46:55'),
(1607, 'App\\User', 694, 'qixerapi_keys', '595d2807b9ad51e5bd1c103c10b6d2ae012f161b12feb83038a289589c6ef9ea', '[\"*\"]', '2022-07-11 22:02:02', '2022-07-11 22:01:23', '2022-07-11 22:02:02'),
(1610, 'App\\User', 375, 'qixerapi_keys', '69987664f2f7377db9c452b59e6a80644dcf04e013ab28c276947d037f9caf61', '[\"*\"]', '2022-07-12 00:56:23', '2022-07-12 00:56:22', '2022-07-12 00:56:23'),
(1611, 'App\\User', 693, 'qixerapi_keys', '5d7c05bf787cbd4529191f1c7245dfb0b650b61380d3349d9f25c936ed560f4e', '[\"*\"]', '2022-07-12 01:46:49', '2022-07-12 01:46:44', '2022-07-12 01:46:49'),
(1612, 'App\\User', 662, 'qixerapi_keys', '2dd8146db78f000fe4cb31e173849c15f127d0370b6c24abf90d3a65b1c3dd20', '[\"*\"]', '2022-07-12 03:27:43', '2022-07-12 03:27:42', '2022-07-12 03:27:43'),
(1614, 'App\\User', 433, 'qixerapi_keys', '66d7b42db738f523f7837b013e9161c1fcbfca78acb65bdfc2a30bcdd3757257', '[\"*\"]', '2022-07-12 06:59:26', '2022-07-12 06:59:08', '2022-07-12 06:59:26'),
(1616, 'App\\User', 696, 'qixerapi_keys', '63049ae9c49289e1a5b9f7669ca3fbe803ae5f4b5224efd00f64c0eb519e70b4', '[\"*\"]', NULL, '2022-07-12 10:54:07', '2022-07-12 10:54:07'),
(1617, 'App\\User', 697, 'qixerapi_keys', '46bc789848400ec7ac83a4dc72b9a9032908e8cf7bdfeaf7ff0eb6a20805e876', '[\"*\"]', NULL, '2022-07-12 11:01:30', '2022-07-12 11:01:30'),
(1619, 'App\\User', 698, 'qixerapi_keys', '0b12e231546b6f45d4dca2ff4537610ec5798b4234be2dc669c37c079a70d939', '[\"*\"]', NULL, '2022-07-12 13:34:47', '2022-07-12 13:34:47'),
(1620, 'App\\User', 699, 'qixerapi_keys', '4b9bde28954cbf655eb161cbbbe58926c4a69069a3a10b52bf7b9f6207e10362', '[\"*\"]', '2022-07-12 13:48:50', '2022-07-12 13:36:33', '2022-07-12 13:48:50'),
(1621, 'App\\User', 700, 'qixerapi_keys', 'a3cafcd2d0bf5843c265adf7d296bc248dade02d64f365e34d44e2045f39925a', '[\"*\"]', '2022-07-12 15:45:42', '2022-07-12 15:43:48', '2022-07-12 15:45:42'),
(1622, 'App\\User', 586, 'qixerapi_keys', 'eb8dbd1705fdfb5f4b323862c721a1a1aaa96ac009f527d10b9259cc8106b545', '[\"*\"]', '2022-07-12 16:22:34', '2022-07-12 16:22:33', '2022-07-12 16:22:34'),
(1626, 'App\\User', 376, 'qixerapi_keys', '49606ea0fe0c922cb637f3cd170607bddc93867e5b43f9a73a9a6a4dbadd553c', '[\"*\"]', '2022-07-12 23:04:11', '2022-07-12 23:04:10', '2022-07-12 23:04:11'),
(1627, 'App\\User', 701, 'qixerapi_keys', '63713289319e42e4837b29744371c03dfd0f1722631db611fc4607cdbd2b9319', '[\"*\"]', '2022-07-13 04:14:23', '2022-07-13 04:14:14', '2022-07-13 04:14:23'),
(1632, 'App\\User', 592, 'qixerapi_keys', '9f3621586575d9a663395d546578a7ed2832f2f8435d1de73a64504b954ae610', '[\"*\"]', '2022-07-13 09:36:39', '2022-07-13 09:36:38', '2022-07-13 09:36:39'),
(1634, 'App\\User', 644, 'qixerapi_keys', 'b142a8806211f339c5a28e8737a113c65e2864771a894e9b7e101ebd3bce0bc4', '[\"*\"]', NULL, '2022-07-13 10:33:24', '2022-07-13 10:33:24'),
(1635, 'App\\User', 703, 'qixerapi_keys', '9861939082f6427ab0afad6e44aa25f2ae5c3cf69484aa5dcee4c859bf8f09f0', '[\"*\"]', '2022-07-13 22:41:59', '2022-07-13 22:41:35', '2022-07-13 22:41:59'),
(1636, 'App\\User', 703, 'qixerapi_keys', 'f028264323c8b078ba828210f45bf17ac9f9430745b23b4e31c0ed77d17e6c8f', '[\"*\"]', '2022-07-13 22:47:12', '2022-07-13 22:45:58', '2022-07-13 22:47:12'),
(1637, 'App\\User', 704, 'qixerapi_keys', 'a3fff56c72175f6dd55ade0d5765de64540a84132122d90df32a605501c7027a', '[\"*\"]', '2022-07-13 22:46:40', '2022-07-13 22:46:39', '2022-07-13 22:46:40'),
(1638, 'App\\User', 483, 'qixerapi_keys', 'd6c4d50bedce36d691c101e8caf10d8e389bf0e2feb34ad2f207859eb5eebcdb', '[\"*\"]', '2022-07-14 00:11:08', '2022-07-14 00:11:07', '2022-07-14 00:11:08'),
(1639, 'App\\User', 397, 'qixerapi_keys', 'aae8fd5872d0b5bcae6cac6e1d22387f518e4aa06999ea70a38e7f26cf1e4f92', '[\"*\"]', '2022-07-14 00:59:01', '2022-07-14 00:59:00', '2022-07-14 00:59:01'),
(1641, 'App\\User', 693, 'qixerapi_keys', '02abc77b27e2ab06832fd71ee9de045fa43d6bdd1a022e913aaee1cce0f7d62c', '[\"*\"]', NULL, '2022-07-14 03:22:27', '2022-07-14 03:22:27'),
(1647, 'App\\User', 634, 'qixerapi_keys', 'fed75c8eae4a4dc423d8f3961adf7eb45158077394d1f3a1ff351e5b3eb1078f', '[\"*\"]', '2022-07-14 10:25:37', '2022-07-14 10:25:36', '2022-07-14 10:25:37'),
(1649, 'App\\User', 427, 'qixerapi_keys', '29b5f580d27b84229b2c3cfea57a540316c802af53157593295cb37590bf6618', '[\"*\"]', '2022-07-14 11:24:16', '2022-07-14 11:23:37', '2022-07-14 11:24:16'),
(1651, 'App\\User', 703, 'qixerapi_keys', '251208a2bf4ebe454e901e64eef5e27784b878e5a9549373f43c8743f2e490b8', '[\"*\"]', '2022-07-14 12:06:45', '2022-07-14 12:06:44', '2022-07-14 12:06:45'),
(1652, 'App\\User', 703, 'qixerapi_keys', 'a6b53d8246088fb4ab82871bffacdf6f74ea39a420754522a8caf3cddbee5533', '[\"*\"]', '2022-07-14 12:24:09', '2022-07-14 12:22:50', '2022-07-14 12:24:09'),
(1653, 'App\\User', 613, 'qixerapi_keys', '95d9118eb78827cecd6fa7fe6057f30dd7506f4704f43b1a3459c3b07ec8d605', '[\"*\"]', '2022-07-14 13:49:44', '2022-07-14 13:49:18', '2022-07-14 13:49:44'),
(1654, 'App\\User', 706, 'qixerapi_keys', 'cf475332017af06106b4fa68b9751735c7505a0ce02ffc7c260330b3841154fa', '[\"*\"]', '2022-07-14 14:14:24', '2022-07-14 14:14:23', '2022-07-14 14:14:24'),
(1660, 'App\\User', 704, 'qixerapi_keys', '463264eaabb044140733c26810f9d53d5ec3b2ce5a966a4c687449b50feb7a69', '[\"*\"]', '2022-07-15 02:24:35', '2022-07-15 02:24:23', '2022-07-15 02:24:35'),
(1661, 'App\\User', 634, 'qixerapi_keys', '283fd1ba2956fe0498d0387aa4601da7ab53599b9ef6fcf35cc5aeebff177728', '[\"*\"]', '2022-07-15 04:43:48', '2022-07-15 04:43:46', '2022-07-15 04:43:48'),
(1666, 'App\\User', 709, 'qixerapi_keys', '056e250c238cec4bfc1830f15265cccb4c8d340c1b84517a677e44d239bde9dc', '[\"*\"]', '2022-07-15 09:18:51', '2022-07-15 09:18:49', '2022-07-15 09:18:51'),
(1668, 'App\\User', 507, 'qixerapi_keys', '3bc13d6a3cc6c7f0add7ffc2f06398279be1506d788244db9b4914d7d2d821ee', '[\"*\"]', '2022-07-15 11:12:40', '2022-07-15 11:11:23', '2022-07-15 11:12:40'),
(1669, 'App\\User', 710, 'qixerapi_keys', '8b60f6c884970749b892a9275655108e542c851e73bab3dcc327a47f5ca910d1', '[\"*\"]', '2022-07-15 12:44:23', '2022-07-15 12:39:30', '2022-07-15 12:44:23'),
(1670, 'App\\User', 711, 'qixerapi_keys', '616f43ad7e2d235067156fc5758fa9f0e6db559677f76698ff94fc12d520dc8a', '[\"*\"]', '2022-07-15 15:06:46', '2022-07-15 15:05:40', '2022-07-15 15:06:46'),
(1673, 'App\\User', 644, 'qixerapi_keys', 'a1b4474cbc170049a067cd8c18d27a44e8588587bfcc6f931045aef9666380aa', '[\"*\"]', NULL, '2022-07-15 21:25:48', '2022-07-15 21:25:48'),
(1674, 'App\\User', 418, 'qixerapi_keys', 'a79cba17323d38ecdabb78e5e20d123b81da39c0803dbd7760a601c5acf3707d', '[\"*\"]', '2022-07-15 21:55:04', '2022-07-15 21:55:03', '2022-07-15 21:55:04'),
(1681, 'App\\User', 704, 'qixerapi_keys', 'eab4b6ecbd42b0bc1769adb872873f2fa92ab6a7e0a031394b79d270efb5ab6e', '[\"*\"]', '2022-07-15 23:33:28', '2022-07-15 23:33:26', '2022-07-15 23:33:28'),
(1684, 'App\\User', 712, 'qixerapi_keys', 'c132a2fbbef19f108bb0cccfd4780a4880ce0f07584111022563386be1f8b92e', '[\"*\"]', '2022-07-16 01:36:00', '2022-07-16 01:35:57', '2022-07-16 01:36:00'),
(1692, 'App\\User', 427, 'qixerapi_keys', 'a0ab9644a31635dafd7bb7c123a2d31fe2423721cea653b64cba88f3cedea58e', '[\"*\"]', '2022-07-16 12:41:19', '2022-07-16 12:41:17', '2022-07-16 12:41:19'),
(1693, 'App\\User', 703, 'qixerapi_keys', '6dc3a5ca2b80dfb6ce5c000f707ee9c4abe98b1df421c390a2df8d40aa023580', '[\"*\"]', '2022-07-16 13:10:51', '2022-07-16 13:09:51', '2022-07-16 13:10:51'),
(1694, 'App\\User', 523, 'qixerapi_keys', '1190b8f8ae98770a353ecbec2b55f35e4059888510f30e04cd2133dd93676403', '[\"*\"]', '2022-07-16 15:47:48', '2022-07-16 15:47:47', '2022-07-16 15:47:48'),
(1696, 'App\\User', 714, 'qixerapi_keys', 'f15f4345c7ce143e2bb6b1e4e20802852d3cf0e3fa0aa893fe6c9482c3caa6d1', '[\"*\"]', '2022-07-16 19:18:37', '2022-07-16 19:18:35', '2022-07-16 19:18:37'),
(1698, 'App\\User', 305, 'qixerapi_keys', 'd099b86bd86e76a1a2d6a21b3c349f5a530fe0950104f24afa4af6bfaed9fbbd', '[\"*\"]', '2022-07-16 20:10:05', '2022-07-16 20:08:33', '2022-07-16 20:10:05'),
(1708, 'App\\User', 375, 'qixerapi_keys', 'cac95a6c8f4249ddd59eb711e16763fa6db3a65d6bfa62618bf5b5d965767943', '[\"*\"]', '2022-07-17 00:03:19', '2022-07-17 00:03:18', '2022-07-17 00:03:19'),
(1716, 'App\\User', 305, 'qixerapi_keys', '1ec095a8561e8a1c42a9e8c19898310234d056f16a070a20076f1b41131ee83f', '[\"*\"]', '2022-07-17 03:01:22', '2022-07-17 03:01:21', '2022-07-17 03:01:22'),
(1717, 'App\\User', 687, 'qixerapi_keys', 'e165b083aa523e4b2820e45b7a1bfd3eb36c25c9bf90ddda324d87e45e4e1614', '[\"*\"]', '2022-07-17 04:10:21', '2022-07-17 04:10:20', '2022-07-17 04:10:21'),
(1718, 'App\\User', 690, 'qixerapi_keys', '83431093d42b894d8e2cccfbfc022c29488a27203432b68f0258fdf932bf0b8d', '[\"*\"]', '2022-07-17 05:22:38', '2022-07-17 05:22:36', '2022-07-17 05:22:38'),
(1722, 'App\\User', 316, 'qixerapi_keys', '4d8e4df78c1b49f0b073d8811f9397ef6ee59f5eea83d122ff27e6b44d7634ad', '[\"*\"]', '2022-07-17 06:24:49', '2022-07-17 06:24:45', '2022-07-17 06:24:49'),
(1725, 'App\\User', 519, 'qixerapi_keys', '76160feb55ffff26e3da9bd9229091c1ea04388574307a7bbf2c5087dad9665f', '[\"*\"]', '2022-07-17 07:23:52', '2022-07-17 07:20:38', '2022-07-17 07:23:52'),
(1727, 'App\\User', 358, 'qixerapi_keys', 'd61ea4e5aa9669c86eacfa70a7f191c7f6e58d54ffd09e5d5c299d62012a3da2', '[\"*\"]', '2022-07-17 08:03:41', '2022-07-17 08:03:22', '2022-07-17 08:03:41'),
(1728, 'App\\User', 555, 'qixerapi_keys', '279385eeb37fbe88c35a56bab22f464ae1edca75b24eaf2c19f6316d5179ba6f', '[\"*\"]', '2022-07-17 08:54:44', '2022-07-17 08:51:23', '2022-07-17 08:54:44'),
(1729, 'App\\User', 701, 'qixerapi_keys', 'a616d30ee735fc127237301ebb7deb5d022d43dfd2d453ee1dc8ced070da6596', '[\"*\"]', '2022-07-17 09:02:48', '2022-07-17 09:02:47', '2022-07-17 09:02:48'),
(1732, 'App\\User', 427, 'qixerapi_keys', '1cfd7751267b34780f318dd29caa84f66d062bda4fb1f5d79e5eca4d1f0113c4', '[\"*\"]', '2022-07-17 11:11:06', '2022-07-17 11:11:05', '2022-07-17 11:11:06'),
(1733, 'App\\User', 710, 'qixerapi_keys', 'd6176d84d13e546eb040b351f55e8d57aca504dc38ce40c69afe64efe44dd17a', '[\"*\"]', NULL, '2022-07-17 11:56:30', '2022-07-17 11:56:30'),
(1735, 'App\\User', 586, 'qixerapi_keys', '8c8b378aca187fadf6c5778c0ef2a9156718cf4b0284e5d60187ff833fabd0ee', '[\"*\"]', '2022-07-17 12:41:05', '2022-07-17 12:41:03', '2022-07-17 12:41:05'),
(1752, 'App\\User', 710, 'qixerapi_keys', '139c7450e27d89cf09c3de2cd5226ea16980a4d5cf09857b494ce1135013faf6', '[\"*\"]', '2022-07-18 01:50:43', '2022-07-18 01:50:42', '2022-07-18 01:50:43'),
(1769, 'App\\User', 701, 'qixerapi_keys', '744e366f9e7b37c7480bb01bd6684e652301c3a017d11a9845a8fd2b99717ff5', '[\"*\"]', '2022-07-18 04:05:58', '2022-07-18 04:05:57', '2022-07-18 04:05:58'),
(1791, 'App\\User', 720, 'qixerapi_keys', 'f47eb39d4b3199011327142bc3e09a86ea48f26e6cba546a211de0ce4682df36', '[\"*\"]', '2022-07-18 07:04:46', '2022-07-18 07:04:44', '2022-07-18 07:04:46'),
(1792, 'App\\User', 703, 'qixerapi_keys', '11a1660b5d9c1ac4342784fc4a37c2723cb5cd5c197d5ce09a54787cc896fb71', '[\"*\"]', '2022-07-18 07:42:45', '2022-07-18 07:42:44', '2022-07-18 07:42:45'),
(1795, 'App\\User', 472, 'qixerapi_keys', '193aeba0a46dddd857f0a4f20dc11e2d5e0c6e73153ab94af2c644dde060ef3e', '[\"*\"]', '2022-07-18 11:51:08', '2022-07-18 11:44:27', '2022-07-18 11:51:08'),
(1801, 'App\\User', 653, 'qixerapi_keys', '783ac3d95162c0775442fe28ff18a5f6e70d6db2153491abad46dc13445dc7c3', '[\"*\"]', '2022-07-21 23:32:45', '2022-07-19 01:33:26', '2022-07-21 23:32:45'),
(1803, 'App\\User', 634, 'qixerapi_keys', '48858525038a59eaf85a0f8735d50321f8330c64be4b431c3a8c499361c7651b', '[\"*\"]', '2022-07-19 03:21:52', '2022-07-19 03:21:51', '2022-07-19 03:21:52'),
(1807, 'App\\User', 724, 'qixerapi_keys', 'c87d23a9d5de4b488d9b32707f0b7811cdd7e48525af239c8adc27ae29da036f', '[\"*\"]', '2022-07-19 06:45:35', '2022-07-19 06:45:17', '2022-07-19 06:45:35'),
(1812, 'App\\User', 634, 'qixerapi_keys', '3d176b43af3f0c84dc3aa5b5781397d2317f4b987acb0f5947efe94fd874c618', '[\"*\"]', '2022-07-19 09:55:18', '2022-07-19 09:55:17', '2022-07-19 09:55:18'),
(1813, 'App\\User', 725, 'qixerapi_keys', '81238faae844855a15d2e4050980091cee1f646743196ac7f638d362bb85a1b4', '[\"*\"]', '2022-07-19 10:21:08', '2022-07-19 10:06:27', '2022-07-19 10:21:08'),
(1819, 'App\\User', 264, 'qixerapi_keys', '9bf1ff734892f027df9b9e8f41ea9309f6f26923e70b91a02391111cac83ff01', '[\"*\"]', '2022-07-19 15:40:13', '2022-07-19 15:40:10', '2022-07-19 15:40:13'),
(1820, 'App\\User', 264, 'qixerapi_keys', '06042bea6eeb689b54fc9c449faeff82b51040839464515a3aed108da28f3c2d', '[\"*\"]', '2022-07-19 15:55:31', '2022-07-19 15:40:10', '2022-07-19 15:55:31'),
(1821, 'App\\User', 264, 'qixerapi_keys', 'e38bb988084e21f6bcf89f649c525d72d2f9c60c161fb3e8ae11947955ed199e', '[\"*\"]', '2022-07-22 05:43:52', '2022-07-19 15:55:32', '2022-07-22 05:43:52'),
(1835, 'App\\User', 664, 'qixerapi_keys', 'a83aa60759c4460cd94a466b39c90b5306b16e569a49b1912ddcc1ae8ceec0ef', '[\"*\"]', '2022-07-20 03:44:14', '2022-07-20 03:37:46', '2022-07-20 03:44:14'),
(1836, 'App\\User', 664, 'qixerapi_keys', '244c5225a87a035871ff4e4208ff0e75eae12a188076366d2035109ded837fd3', '[\"*\"]', '2022-07-20 03:44:39', '2022-07-20 03:44:38', '2022-07-20 03:44:39'),
(1837, 'App\\User', 664, 'qixerapi_keys', '1b31239b7605f900725f4b72801428166ff95698718b7a6d9c50585c53220fb0', '[\"*\"]', '2022-07-20 04:19:46', '2022-07-20 04:19:43', '2022-07-20 04:19:46'),
(1838, 'App\\User', 726, 'qixerapi_keys', 'b8470951cec980e0ddd75d8be7d3da78edb8e7217f8c33b38cb10bd3b31a38ca', '[\"*\"]', '2022-07-20 08:25:33', '2022-07-20 05:07:25', '2022-07-20 08:25:33'),
(1841, 'App\\User', 725, 'qixerapi_keys', '768a23542a65e4e7ec6ece7cb65183ddbe331615e95c8d00869cc6ba7c4e625d', '[\"*\"]', '2022-07-20 08:42:22', '2022-07-20 08:01:17', '2022-07-20 08:42:22'),
(1843, 'App\\User', 726, 'qixerapi_keys', 'a05fdd3678448a862b4d25a3eb75d6594543dfb41f6b50ab3c906a95e6755b91', '[\"*\"]', '2022-07-20 08:26:23', '2022-07-20 08:25:34', '2022-07-20 08:26:23'),
(1850, 'App\\User', 570, 'qixerapi_keys', 'e331f315cc1708e7b89e446157dbfb3d588a844ecb3bdc901b2759bd2e5e957b', '[\"*\"]', '2022-07-20 11:12:40', '2022-07-20 11:05:46', '2022-07-20 11:12:40'),
(1851, 'App\\User', 570, 'qixerapi_keys', '3c97f2dcfdad826e4c8f1a3cf19dd88351db4d8c0248cbec2b2db669c23c51c9', '[\"*\"]', '2022-07-20 12:10:40', '2022-07-20 12:10:39', '2022-07-20 12:10:40'),
(1852, 'App\\User', 570, 'qixerapi_keys', 'ac7dd2f157ea81da93e16b1a426834bfa5fe371abaee857b5ad9c97fc4ee20b7', '[\"*\"]', '2022-07-20 13:11:15', '2022-07-20 13:11:14', '2022-07-20 13:11:15'),
(1858, 'App\\User', 358, 'qixerapi_keys', '49368cb0a460a3d05ba876290da6dd36d928693f3f932606c4f0a7618cefd1ad', '[\"*\"]', '2022-07-20 23:05:07', '2022-07-20 23:05:06', '2022-07-20 23:05:07'),
(1861, 'App\\User', 476, 'qixerapi_keys', 'c46b8e826fb15a05e01f72652496cb68453323f61745ec8ba9b2e4e247ee26e1', '[\"*\"]', '2022-07-21 03:11:57', '2022-07-21 03:11:56', '2022-07-21 03:11:57'),
(1866, 'App\\User', 317, 'qixerapi_keys', '818e9b22a57c17b314520cb26ab7cde497b1029890f380fe3870bf47451eb6bd', '[\"*\"]', '2022-07-21 11:14:10', '2022-07-21 11:14:10', '2022-07-21 11:14:10'),
(1870, 'App\\User', 653, 'qixerapi_keys', '4c0afe410361d245eff9dcb9d5aa02d8da66ef4b63d54aa5a2527470679c8bea', '[\"*\"]', '2022-08-02 21:15:29', '2022-07-21 23:32:46', '2022-08-02 21:15:29'),
(1871, 'App\\User', 734, 'qixerapi_keys', '6b568514eaffd7633d7b88fa9a7f6dded96b0cad19d2d66bbecb0cf5a9512b5d', '[\"*\"]', '2022-07-22 01:46:40', '2022-07-22 00:05:30', '2022-07-22 01:46:40'),
(1874, 'App\\User', 433, 'qixerapi_keys', '2d0bdd56c28590de9a6070199c8a0f2b983a77975955389ddc7e2a7b53c642d9', '[\"*\"]', '2022-07-22 01:14:14', '2022-07-22 01:10:32', '2022-07-22 01:14:14'),
(1875, 'App\\User', 734, 'qixerapi_keys', '9d315d80aa0706c2537f399a65767b62c3a56ad17ca153cba9a8cf6a54f3daf1', '[\"*\"]', '2022-07-26 01:33:11', '2022-07-22 01:46:41', '2022-07-26 01:33:11'),
(1876, 'App\\User', 735, 'qixerapi_keys', '190c66e4bbf8898dcef32ed54e6b3d9fdd907232fcc58153733eff7912276374', '[\"*\"]', '2022-07-23 00:59:56', '2022-07-22 03:09:39', '2022-07-23 00:59:56'),
(1878, 'App\\User', 736, 'qixerapi_keys', 'd335310c8293634b2ad4aca8147320ba11759b3988b2e339c7e10a4e009d0d82', '[\"*\"]', '2022-07-22 06:35:59', '2022-07-22 05:16:38', '2022-07-22 06:35:59'),
(1879, 'App\\User', 264, 'qixerapi_keys', '7db99c64f0c32826cc8a2e7a6312532fc508d99809b66879127bc0f3b8014d26', '[\"*\"]', '2022-07-28 06:08:24', '2022-07-22 05:43:53', '2022-07-28 06:08:24'),
(1880, 'App\\User', 737, 'qixerapi_keys', 'eeaa11d202fe125bf5bb8f395f8055241844882a5ad904513bee3c42d41454b0', '[\"*\"]', '2022-08-11 08:43:47', '2022-07-22 06:03:20', '2022-08-11 08:43:47'),
(1881, 'App\\User', 257, 'qixerapi_keys', '219531256cd0ca8892165c10e8e6afc2346a9da283036480a2ebdf5ccf2cb66a', '[\"*\"]', NULL, '2022-07-22 06:22:10', '2022-07-22 06:22:10'),
(1882, 'App\\User', 736, 'qixerapi_keys', 'bf82cb9ec9decb91812376c36e1f3c9284e7782f47c1c31975c6591ded46f352', '[\"*\"]', '2022-08-15 02:05:46', '2022-07-22 06:36:00', '2022-08-15 02:05:46'),
(1885, 'App\\User', 652, 'qixerapi_keys', '01f36de7fc2eb50c73a762fc16b2229a9d26be614003eddcb6f2b6df59d68768', '[\"*\"]', '2022-09-27 14:47:40', '2022-07-22 10:40:52', '2022-09-27 14:47:40'),
(1886, 'App\\User', 739, 'qixerapi_keys', '714b9974e556d9e7de57168545b1639f067124de31ab462243623f4101df73b5', '[\"*\"]', '2022-07-31 11:48:47', '2022-07-22 11:42:47', '2022-07-31 11:48:47'),
(1887, 'App\\User', 372, 'qixerapi_keys', '175134ab0bfa021ed226c573e5dc11fc7ade38cbf6d93d59fb4e7a6bae6cd4e1', '[\"*\"]', '2022-07-22 13:32:10', '2022-07-22 13:32:08', '2022-07-22 13:32:10'),
(1888, 'App\\User', 358, 'qixerapi_keys', 'cc2620c33073ca355d2ca54fd86537dba87b963580f05232de39fb89ab6b2e14', '[\"*\"]', '2022-07-22 13:32:41', '2022-07-22 13:32:40', '2022-07-22 13:32:41'),
(1892, 'App\\User', 664, 'qixerapi_keys', 'bf910a1556440633f79bd13cc10cc516b1cb17440a45c64364cb8eb7af52d45e', '[\"*\"]', '2022-07-22 16:09:33', '2022-07-22 16:09:32', '2022-07-22 16:09:33'),
(1898, 'App\\User', 735, 'qixerapi_keys', 'cd02261fa8bdbd5118e8423ec0495081b063bcade2b0cce5e9f46d7f624660ca', '[\"*\"]', '2022-07-25 04:19:23', '2022-07-23 00:59:58', '2022-07-25 04:19:23'),
(1899, 'App\\User', 427, 'qixerapi_keys', '4d8379bd082f9e3b51880471f89943d7dbf9c49de64801fb930620564514f15e', '[\"*\"]', '2022-07-23 02:29:16', '2022-07-23 02:29:11', '2022-07-23 02:29:16'),
(1900, 'App\\User', 384, 'qixerapi_keys', 'e4ec976bab61f6f76c3138b1c1ddba4116313b595b559723a7ee2700700c4c5c', '[\"*\"]', '2022-07-23 04:16:01', '2022-07-23 04:15:47', '2022-07-23 04:16:01'),
(1903, 'App\\User', 431, 'qixerapi_keys', 'de4504d408e844de6bf5359d84e5f7f838e2d209926d73fdecf2cdac714c8c64', '[\"*\"]', '2022-07-23 06:22:57', '2022-07-23 06:22:56', '2022-07-23 06:22:57'),
(1905, 'App\\User', 709, 'qixerapi_keys', 'd0ba82eba25c706556cadbeee860ed1d5d295f10ef46fd3e923e6f4f7969a784', '[\"*\"]', '2022-07-23 06:38:17', '2022-07-23 06:38:15', '2022-07-23 06:38:17'),
(1910, 'App\\User', 604, 'qixerapi_keys', 'f24061de7212880eda1fdd5e722bfb2042432538cc46dc8f52767d6fdae1ca04', '[\"*\"]', '2022-07-23 12:43:47', '2022-07-23 12:42:08', '2022-07-23 12:43:47'),
(1911, 'App\\User', 742, 'qixerapi_keys', 'cf7bfb809adba801d85d5d1acd116c33d9975671b56adafed58d652f16923966', '[\"*\"]', '2022-07-23 13:43:14', '2022-07-23 13:34:31', '2022-07-23 13:43:14'),
(1913, 'App\\User', 743, 'qixerapi_keys', '662cecfaacb608d4aa760ea2c6957db4dc8c760343a5f436f557bb3b2c35033d', '[\"*\"]', '2022-07-23 20:40:30', '2022-07-23 20:39:38', '2022-07-23 20:40:30'),
(1914, 'App\\User', 703, 'qixerapi_keys', '27105ae1c86c3a39337e385d553acb0e5ea1b165e34e73854540db524c11200b', '[\"*\"]', '2022-07-23 20:40:00', '2022-07-23 20:39:59', '2022-07-23 20:40:00'),
(1926, 'App\\User', 744, 'qixerapi_keys', '7f87239e24dade4a98b88a5c4e1512cf402abd9a80b7618edf7165c83e977a38', '[\"*\"]', '2022-07-24 07:57:12', '2022-07-24 02:52:30', '2022-07-24 07:57:12'),
(1928, 'App\\User', 493, 'qixerapi_keys', 'c70ef47939fed13348c8829609986239f14882979f5b4200ff21b8ca6385a411', '[\"*\"]', '2022-07-24 03:13:29', '2022-07-24 03:13:28', '2022-07-24 03:13:29'),
(1929, 'App\\User', 745, 'qixerapi_keys', 'd44e46903f0b64d86deb5869685e13c4b9b5e235adaa38c1fe87e2c366c9fc00', '[\"*\"]', '2022-07-24 03:18:02', '2022-07-24 03:16:23', '2022-07-24 03:18:02'),
(1931, 'App\\User', 746, 'qixerapi_keys', '759af7d99e91db6623a09a10ca34cd44145c7d29975dc4c9a956e8d6eb88d01f', '[\"*\"]', '2022-07-24 06:09:32', '2022-07-24 06:04:08', '2022-07-24 06:09:32'),
(1940, 'App\\User', 493, 'qixerapi_keys', '14f0cf1983eef0084a2e2875f14237b288c2b3732d0d88adadefa28eee43cb8d', '[\"*\"]', '2022-07-24 06:57:31', '2022-07-24 06:57:29', '2022-07-24 06:57:31'),
(1941, 'App\\User', 744, 'qixerapi_keys', 'ff26e92aade0ce3414a4a5d58203807534277b23e1e144bd00657032f8130c20', '[\"*\"]', '2022-07-24 07:57:14', '2022-07-24 07:57:13', '2022-07-24 07:57:14'),
(1942, 'App\\User', 218, 'qixerapi_keys', '49a83a173c45156eb66c93d4125d1df2d27c8484e1272b15bbb7347c05e4d248', '[\"*\"]', '2022-07-31 09:48:00', '2022-07-24 09:00:15', '2022-07-31 09:48:00'),
(1946, 'App\\User', 747, 'qixerapi_keys', 'aea30affe82c7ccac742a7f3200a0646bedc3ab6ec1172b3cb11d05a14e782da', '[\"*\"]', '2022-07-26 09:53:24', '2022-07-24 11:23:11', '2022-07-26 09:53:24'),
(1947, 'App\\User', 748, 'qixerapi_keys', 'f8a656f05b64f38631d25add4b18980448c49e466f5f3000e59f78a9196460e1', '[\"*\"]', '2022-07-24 12:27:20', '2022-07-24 12:25:30', '2022-07-24 12:27:20'),
(1948, 'App\\User', 701, 'qixerapi_keys', '2fa5e275892d34e0206b87b8f68c641be3b3606852858c69ddbccbfc796e3fe7', '[\"*\"]', NULL, '2022-07-24 13:04:29', '2022-07-24 13:04:29'),
(1950, 'App\\User', 427, 'qixerapi_keys', 'b82fc0695bc171649ebbe38041dea7916c7885af34f1653f0f4e05a3ad92c6ad', '[\"*\"]', '2022-07-24 16:53:46', '2022-07-24 16:53:45', '2022-07-24 16:53:46'),
(1951, 'App\\User', 749, 'qixerapi_keys', 'c0e4c91be9d56cb3e429d59d0aa7f3b551c1057f8183a093aac51d325e49c6af', '[\"*\"]', '2022-07-26 19:24:18', '2022-07-24 17:48:00', '2022-07-26 19:24:18'),
(1952, 'App\\User', 750, 'qixerapi_keys', 'd5efe9975702fed9464a57d1a96994b2772ce5efb9f26326729a1ae4fc1b518c', '[\"*\"]', '2022-07-26 04:48:40', '2022-07-24 19:21:48', '2022-07-26 04:48:40'),
(1956, 'App\\User', 751, 'qixerapi_keys', '6cf955c712be83c690b28aad489f33036df94581e2d3420fbce520c29c2a9c24', '[\"*\"]', '2022-07-26 07:31:20', '2022-07-24 21:16:51', '2022-07-26 07:31:20'),
(1957, 'App\\User', 752, 'qixerapi_keys', 'f64e9f3ccbfb7466163bc4d9a384cc5bf4c9508cd3cb3a3d275b1819f407102e', '[\"*\"]', NULL, '2022-07-24 23:28:39', '2022-07-24 23:28:39'),
(1958, 'App\\User', 753, 'qixerapi_keys', 'b17e6a5d232c4c46b90276c4cf3af3a06168717695a4c25b56131119177921b2', '[\"*\"]', '2022-07-24 23:33:10', '2022-07-24 23:32:31', '2022-07-24 23:33:10'),
(1959, 'App\\User', 754, 'qixerapi_keys', '7b2250a582c5f1523938c630be863a5994693153107070ef3dce6ebc48771a2c', '[\"*\"]', '2022-07-24 23:35:25', '2022-07-24 23:35:16', '2022-07-24 23:35:25'),
(1960, 'App\\User', 755, 'qixerapi_keys', 'e2a48c938f665157e14203dd312b28fcbc2a1df783c133707b598c6f09195551', '[\"*\"]', '2022-07-25 00:03:12', '2022-07-24 23:36:28', '2022-07-25 00:03:12'),
(1961, 'App\\User', 756, 'qixerapi_keys', 'e8e9e7e2c80392be35d1d87f1400d71ba758b1bfe213f42a886ba69ac380689b', '[\"*\"]', '2022-07-25 03:32:55', '2022-07-25 00:37:47', '2022-07-25 03:32:55'),
(1962, 'App\\User', 757, 'qixerapi_keys', '70e750c795f8344b8387d9063c318129763a505195801d2983772d55ca45d8fe', '[\"*\"]', NULL, '2022-07-25 00:39:25', '2022-07-25 00:39:25'),
(1963, 'App\\User', 758, 'qixerapi_keys', '11ffef5cbaa60a438f11e925fcecefd7c23341f2dc77133e0640831853846e50', '[\"*\"]', NULL, '2022-07-25 01:45:36', '2022-07-25 01:45:36'),
(1964, 'App\\User', 759, 'qixerapi_keys', 'fd066c538c2dce608d1b3ba832b31afa67456b5e0af74b02bdc5d063725c6e63', '[\"*\"]', '2022-07-25 02:44:54', '2022-07-25 02:43:13', '2022-07-25 02:44:54'),
(1966, 'App\\User', 760, 'qixerapi_keys', 'e809dc5432506a2f5e4c0a3fe9163bf362219b1461d599b0f95aff153781bb82', '[\"*\"]', '2022-07-25 04:10:13', '2022-07-25 04:10:00', '2022-07-25 04:10:13'),
(1967, 'App\\User', 760, 'qixerapi_keys', 'd86bf834ad86e31d24f31e53e18e601086e9219c31ba52d6151df1aff65a7523', '[\"*\"]', '2022-07-25 04:10:40', '2022-07-25 04:10:20', '2022-07-25 04:10:40'),
(1970, 'App\\User', 735, 'qixerapi_keys', 'dc0362f643d4c0dee623f27a706a9a25828d656612399661846f7db14826fd74', '[\"*\"]', '2022-07-25 11:10:31', '2022-07-25 04:19:24', '2022-07-25 11:10:31'),
(1993, 'App\\User', 735, 'qixerapi_keys', 'aeb4d9a7b93b7f02400493e68a9ce1b2ad612be3fe78055c141bd06f5e9f3fed', '[\"*\"]', '2022-07-25 22:35:27', '2022-07-25 11:10:32', '2022-07-25 22:35:27'),
(1994, 'App\\User', 375, 'qixerapi_keys', '4183e0e951bb97fb3baf1d695c05679c39868cafcbf827fe62385bba90d4425b', '[\"*\"]', '2022-07-25 12:53:27', '2022-07-25 12:53:27', '2022-07-25 12:53:27'),
(2000, 'App\\User', 431, 'qixerapi_keys', '7a149577df6f193188013ffbe0e0620b67a3a42b1beb570cb09244bc365bd314', '[\"*\"]', '2022-07-25 16:55:47', '2022-07-25 16:55:45', '2022-07-25 16:55:47'),
(2005, 'App\\User', 735, 'qixerapi_keys', '214519ee35cb93f8e91d34efdfb43ff0e3b2cc5354f2289856f863c71cae630f', '[\"*\"]', '2022-07-26 21:31:35', '2022-07-25 22:35:28', '2022-07-26 21:31:35'),
(2006, 'App\\User', 761, 'qixerapi_keys', '3eba1d89b2bc1f6874e9b895aec58583fe6110ae4e7f631105cdf451b213d930', '[\"*\"]', NULL, '2022-07-25 23:43:36', '2022-07-25 23:43:36'),
(2007, 'App\\User', 761, 'qixerapi_keys', 'de52afc764fb76bacce306bc726bd4ebdfa9e4bbbea3dff44d8a99df6e9c3c98', '[\"*\"]', NULL, '2022-07-25 23:43:58', '2022-07-25 23:43:58'),
(2008, 'App\\User', 761, 'qixerapi_keys', '0bb8e5d53f1a0c2541ea74b37a9d26fcf6581f1f49daf78fdd69c2036c7ac559', '[\"*\"]', '2022-07-25 23:44:15', '2022-07-25 23:44:14', '2022-07-25 23:44:15'),
(2013, 'App\\User', 734, 'qixerapi_keys', '919dbeeedb290a31bc37bf8bc914c5a2a92e1c548df77e430fef8bc7b98df612', '[\"*\"]', '2022-07-26 01:33:13', '2022-07-26 01:33:12', '2022-07-26 01:33:13'),
(2015, 'App\\User', 762, 'qixerapi_keys', 'dfb83965fc002d4b722c1e984c9613559dc7c73e9f2ae7b791e70914dd5f71bb', '[\"*\"]', NULL, '2022-07-26 03:58:19', '2022-07-26 03:58:19'),
(2016, 'App\\User', 763, 'qixerapi_keys', '73cac069d2736e1b1bfaa2c30ad36a9ed18c26d67cd5f0174c050983083ddad0', '[\"*\"]', '2022-07-30 12:50:45', '2022-07-26 03:58:49', '2022-07-30 12:50:45'),
(2017, 'App\\User', 750, 'qixerapi_keys', '9d394e5cab4ca72931ff6c88515b226594c13ee6e164366ca5ecacadf57e79f0', '[\"*\"]', '2022-08-01 10:42:33', '2022-07-26 04:48:41', '2022-08-01 10:42:33'),
(2019, 'App\\User', 751, 'qixerapi_keys', 'c0cfa527f88095796fc669c8f87cfda8c72809b8b37d53b80959e58196a0e476', '[\"*\"]', '2022-07-26 07:33:19', '2022-07-26 07:31:21', '2022-07-26 07:33:19'),
(2020, 'App\\User', 751, 'qixerapi_keys', '647257e71a8499229a95613261c30510398ab839f3ecb50e942c7b1970373bdb', '[\"*\"]', '2022-08-08 04:05:24', '2022-07-26 07:33:20', '2022-08-08 04:05:24'),
(2022, 'App\\User', 299, 'qixerapi_keys', 'e4a78b5dfc0704007073481b00df579f8b875a890cc4127da23df831fc59cb17', '[\"*\"]', '2022-07-26 07:57:51', '2022-07-26 07:57:50', '2022-07-26 07:57:51'),
(2023, 'App\\User', 764, 'qixerapi_keys', 'a878040b47156a4fcb841f0985248f6f7dffc9a5adec72a6bc839e8df9b46917', '[\"*\"]', '2022-07-28 20:12:00', '2022-07-26 08:21:40', '2022-07-28 20:12:00'),
(2025, 'App\\User', 747, 'qixerapi_keys', 'cb46f9e59c374d6d3e440b4aac08b932e26cba2ebcd5a65e665c061e9c1e3d4c', '[\"*\"]', '2022-08-30 14:17:05', '2022-07-26 09:53:25', '2022-08-30 14:17:05'),
(2027, 'App\\User', 765, 'qixerapi_keys', '108995d9f28281e24e477441a16a9b87eb257699e670e02dc7efa7f18f935f7f', '[\"*\"]', '2022-07-27 03:01:10', '2022-07-26 13:01:04', '2022-07-27 03:01:10'),
(2031, 'App\\User', 749, 'qixerapi_keys', '979b944fe7b79239a5d73d3ecdc1c310dd7fefbe9dbbdbb777662ca679ee8753', '[\"*\"]', '2022-07-30 00:02:15', '2022-07-26 19:24:19', '2022-07-30 00:02:15'),
(2035, 'App\\User', 735, 'qixerapi_keys', '470723425e96d631a44ab8148f50ac74c237d7c98891669020d52b145e2d2751', '[\"*\"]', '2022-07-27 19:55:36', '2022-07-26 21:31:35', '2022-07-27 19:55:36'),
(2051, 'App\\User', 765, 'qixerapi_keys', '4bb915e76424d32777d2a40f9cc7f8991037416ee9987de238326563de54e6dc', '[\"*\"]', '2022-07-28 14:18:33', '2022-07-27 03:01:11', '2022-07-28 14:18:33'),
(2053, 'App\\User', 427, 'qixerapi_keys', '94df3b5de3ce5b21b5a9a224383238f0528d08cfa90ae44f8e51e76bc4b3cc54', '[\"*\"]', '2022-07-27 04:26:11', '2022-07-27 04:25:55', '2022-07-27 04:26:11'),
(2060, 'App\\User', 701, 'qixerapi_keys', '2e0d0377291197fe24937e04a71ee2afd5f0b1c99c440246b7c135623e9256c2', '[\"*\"]', '2022-07-27 09:10:31', '2022-07-27 09:10:19', '2022-07-27 09:10:31'),
(2061, 'App\\User', 701, 'qixerapi_keys', '7d38ecd6bcafa3daf3fdf8bf599c0bcd6ecbcaff43a8050398b33d86dab031c8', '[\"*\"]', '2022-07-27 09:10:41', '2022-07-27 09:10:40', '2022-07-27 09:10:41'),
(2062, 'App\\User', 767, 'qixerapi_keys', '01ee3c0c125293e9816e42ac2e6fffccbffb4146662224d6c36fb28370514609', '[\"*\"]', '2022-07-27 17:50:10', '2022-07-27 11:45:35', '2022-07-27 17:50:10'),
(2064, 'App\\User', 768, 'qixerapi_keys', 'd886daf03c8e93b6bb24476ae7c770adbe4d0c755840f6d07731ba73678fea98', '[\"*\"]', '2022-08-10 10:52:04', '2022-07-27 15:11:47', '2022-08-10 10:52:04'),
(2065, 'App\\User', 769, 'qixerapi_keys', '153dbe27db9ad31605d1364acece71f5ad255a26229b57e2aa1c474204d94eea', '[\"*\"]', '2022-07-27 15:13:47', '2022-07-27 15:13:35', '2022-07-27 15:13:47'),
(2069, 'App\\User', 767, 'qixerapi_keys', '82df3d8ea5020d8192007f22f81c4b4af9e49fc79708847d93741f7adeee8f05', '[\"*\"]', '2022-07-28 08:47:06', '2022-07-27 17:50:11', '2022-07-28 08:47:06'),
(2072, 'App\\User', 735, 'qixerapi_keys', '89722a4f7b245b3e378f0d8223b857f61af166bfd47eca3bc210c3e8c3f49223', '[\"*\"]', '2022-07-28 17:22:35', '2022-07-27 19:55:38', '2022-07-28 17:22:35'),
(2073, 'App\\User', 770, 'qixerapi_keys', '441afe083e68dbf7aecb15d6528a30a156c36a8b5905e50f4709aaecae2f96d6', '[\"*\"]', '2022-08-07 22:05:46', '2022-07-27 20:28:21', '2022-08-07 22:05:46'),
(2092, 'App\\User', 771, 'qixerapi_keys', '974aee0afc01dbfabc872f454a3178e5a1fee84035d3b2d46a09e752694840c2', '[\"*\"]', '2022-07-28 00:30:26', '2022-07-28 00:28:17', '2022-07-28 00:30:26'),
(2103, 'App\\User', 772, 'qixerapi_keys', 'a4ba1c9fd9a21426fa2d1bf11ba97e7686b5043159f0c004af7f9a04ead3855c', '[\"*\"]', '2022-09-10 02:31:39', '2022-07-28 01:41:31', '2022-09-10 02:31:39'),
(2129, 'App\\User', 773, 'qixerapi_keys', '3e9e5530c182b3f4b9a973a06a9bbadc6df41a96a9e9b11b9df48cb49ba37f57', '[\"*\"]', NULL, '2022-07-28 04:48:55', '2022-07-28 04:48:55'),
(2132, 'App\\User', 774, 'qixerapi_keys', 'f1a73f46249809c3b58569e739faa629eda4b27a39a252ed119ce9ddc3453fc3', '[\"*\"]', NULL, '2022-07-28 05:14:56', '2022-07-28 05:14:56'),
(2151, 'App\\User', 767, 'qixerapi_keys', 'fc9fe58979e31bdbea69c60a8377674bea3cecc98fa33868e7e482f9da6d7281', '[\"*\"]', '2022-07-29 06:22:26', '2022-07-28 08:47:20', '2022-07-29 06:22:26'),
(2153, 'App\\User', 433, 'qixerapi_keys', '286547a0204efd172453144da934e4ac1be112f8205ff4c623128dbb1e62fbcf', '[\"*\"]', '2022-07-28 10:21:35', '2022-07-28 10:21:34', '2022-07-28 10:21:35'),
(2154, 'App\\User', 515, 'qixerapi_keys', '15322fa3274f13fd90d7a317c0c9f7d1bdba9c03589e61e4276b9f1a8455476f', '[\"*\"]', '2022-07-28 10:40:45', '2022-07-28 10:39:13', '2022-07-28 10:40:45'),
(2156, 'App\\User', 775, 'qixerapi_keys', 'a0d14eb8fd28c90090a9fed90487051adae45104aedb378b473ace1c254a71b1', '[\"*\"]', '2022-07-28 11:48:43', '2022-07-28 11:47:55', '2022-07-28 11:48:43'),
(2159, 'App\\User', 765, 'qixerapi_keys', 'ca3c299e88aa77ae3a471d4469a015fe71b95e88a21bac1d38e8b7fd712f4362', '[\"*\"]', '2022-07-28 14:19:00', '2022-07-28 14:18:43', '2022-07-28 14:19:00'),
(2162, 'App\\User', 776, 'qixerapi_keys', '6181ded29689af41e5d62ecbc0160ee4516208a52b63353207175da4f2be735f', '[\"*\"]', NULL, '2022-07-28 17:04:56', '2022-07-28 17:04:56'),
(2163, 'App\\User', 777, 'qixerapi_keys', '445b52d5d215e3f902ce55bc2a7b271bf72648c6ca3e625734b7a5e062b5d68a', '[\"*\"]', '2022-07-28 17:12:29', '2022-07-28 17:06:15', '2022-07-28 17:12:29'),
(2164, 'App\\User', 735, 'qixerapi_keys', 'bee33dc4072d18d38e2fa1719f824004f9422320a67bb7ad2160354c1c6bc935', '[\"*\"]', '2022-07-29 06:40:31', '2022-07-28 17:22:36', '2022-07-29 06:40:31'),
(2166, 'App\\User', 778, 'qixerapi_keys', 'd9572c06e5c08245c3376a35908b3c0c689bf9983c345f17b75682c44fd821f9', '[\"*\"]', '2022-07-29 07:23:59', '2022-07-28 19:44:08', '2022-07-29 07:23:59'),
(2168, 'App\\User', 764, 'qixerapi_keys', '0eca0158b30a2c80955f0b42ead6bcfdf2a809d14394b4848b517cd7ee1066b0', '[\"*\"]', '2022-07-28 20:12:03', '2022-07-28 20:12:01', '2022-07-28 20:12:03');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(2176, 'App\\User', 570, 'qixerapi_keys', '40c33549a2dfde6d73aca4531a163dbfce511cb44a8f657863f98080faa42c38', '[\"*\"]', '2022-07-29 06:21:37', '2022-07-29 06:18:44', '2022-07-29 06:21:37'),
(2177, 'App\\User', 767, 'qixerapi_keys', '05961606a7c8439f68d89f52189eceee1048dc4b3fc264a583fcfc478ef785ba', '[\"*\"]', '2022-08-08 15:52:08', '2022-07-29 06:22:27', '2022-08-08 15:52:08'),
(2178, 'App\\User', 735, 'qixerapi_keys', '7ba60c6bb47adf3983fc392aad9a656d822da463be0bad1e6a32f5ad718afeca', '[\"*\"]', '2022-07-31 08:35:47', '2022-07-29 06:40:32', '2022-07-31 08:35:47'),
(2180, 'App\\User', 778, 'qixerapi_keys', 'f1409b5864aebe9d028e9f06a688b1ed59fd21d1672fe34455678b0c691c31fc', '[\"*\"]', '2022-08-14 23:54:57', '2022-07-29 07:24:00', '2022-08-14 23:54:57'),
(2185, 'App\\User', 780, 'qixerapi_keys', 'a7c041e49fdd6bb75065f89389db795420e38eb6fb6e9f05134e0e9353992738', '[\"*\"]', '2022-07-30 02:54:39', '2022-07-29 10:50:34', '2022-07-30 02:54:39'),
(2186, 'App\\User', 634, 'qixerapi_keys', '8619e91d99eaadea68b38193d75a4b8a12215cdc14110d60e066c76a1d069bd6', '[\"*\"]', '2022-07-29 11:17:38', '2022-07-29 11:17:25', '2022-07-29 11:17:38'),
(2193, 'App\\User', 310, 'qixerapi_keys', '413c539eddb6999ad44a7e07312e8e91f8a9bb8b60b36cfc7604fa32069f249d', '[\"*\"]', '2022-07-29 18:05:14', '2022-07-29 18:05:11', '2022-07-29 18:05:14'),
(2199, 'App\\User', 782, 'qixerapi_keys', '1761fb3eb11fc5cc158ba2e3e81379d65dbf8d6a084633c8d5da88247025dffb', '[\"*\"]', '2022-07-30 04:15:13', '2022-07-29 23:11:46', '2022-07-30 04:15:13'),
(2205, 'App\\User', 749, 'qixerapi_keys', '8a2b75d58bcb59c21c47c2ee4c567886e25e23764073cc74d7a641f23ac9f72a', '[\"*\"]', '2022-09-01 00:53:16', '2022-07-30 00:02:16', '2022-09-01 00:53:16'),
(2214, 'App\\User', 610, 'qixerapi_keys', '6076d25771eaccd523360bb385f92dd04c7708b2caeea715da269851ea2d3c6e', '[\"*\"]', '2022-07-30 01:56:24', '2022-07-30 01:56:23', '2022-07-30 01:56:24'),
(2215, 'App\\User', 375, 'qixerapi_keys', '8d2d4c47026da8c440142e2559b8497d0198c389c208684bad18b21e16344552', '[\"*\"]', '2022-07-30 02:00:06', '2022-07-30 02:00:05', '2022-07-30 02:00:06'),
(2216, 'App\\User', 780, 'qixerapi_keys', 'b9fe1ba44274c4ac3ebe9cb3b6f976a0b75f0aee16e0e07dd9109ed52016bdc0', '[\"*\"]', '2022-07-30 12:07:34', '2022-07-30 02:54:41', '2022-07-30 12:07:34'),
(2238, 'App\\User', 782, 'qixerapi_keys', '761aff62a4f07144e9bda92415f751399b472331827d42adc31f9ed044b8fa84', '[\"*\"]', '2022-07-30 04:15:33', '2022-07-30 04:15:15', '2022-07-30 04:15:33'),
(2240, 'App\\User', 634, 'qixerapi_keys', '6defa2616b214f3f824971a45f19f77079e2c4ea6821398e19eaece03f4a5ad8', '[\"*\"]', '2022-07-30 06:11:51', '2022-07-30 04:41:36', '2022-07-30 06:11:51'),
(2243, 'App\\User', 634, 'qixerapi_keys', '6b18b3544a3714ca554342774552516b61af2399d0ad60903e6a2aa069252fa3', '[\"*\"]', NULL, '2022-07-30 06:11:52', '2022-07-30 06:11:52'),
(2245, 'App\\User', 427, 'qixerapi_keys', 'e00bdcc3c6c7f8ec194c2d9fcea863aef93e4be47b319262e8d4a92b8dddceb0', '[\"*\"]', '2022-07-30 06:44:57', '2022-07-30 06:44:46', '2022-07-30 06:44:57'),
(2250, 'App\\User', 780, 'qixerapi_keys', '2b19826515c33040be70ae6ade6988c04779ecf03dbee7452a4ba9fc291fab16', '[\"*\"]', '2022-08-04 10:56:50', '2022-07-30 12:07:35', '2022-08-04 10:56:50'),
(2251, 'App\\User', 763, 'qixerapi_keys', '1a9c07fee16904b3574b9af14991578bfc5595b2b8aaef31119d7f46b5e044a9', '[\"*\"]', '2022-07-30 12:51:16', '2022-07-30 12:50:47', '2022-07-30 12:51:16'),
(2253, 'App\\User', 783, 'qixerapi_keys', 'a5ec93dd148554fbebbfb879e4aa26e448789d7f2f9ddd27829aa399bcce6e2e', '[\"*\"]', '2022-08-01 06:46:26', '2022-07-30 13:07:11', '2022-08-01 06:46:26'),
(2273, 'App\\User', 427, 'qixerapi_keys', 'd5d37841f688e0ee9ac721a45b6f5158ff72430be9d21aa66b5244ce5361c8df', '[\"*\"]', '2022-07-31 01:49:25', '2022-07-31 01:49:23', '2022-07-31 01:49:25'),
(2285, 'App\\User', 784, 'qixerapi_keys', '807f7eef6bec7cc5a485efbe702701526db3d64180d730d05bc6a29f4c4c3cc2', '[\"*\"]', '2022-07-31 04:10:19', '2022-07-31 04:09:51', '2022-07-31 04:10:19'),
(2287, 'App\\User', 735, 'qixerapi_keys', '55ab15e473ece9cf9565914a75d6e9fd6e51bda6c35f78b90701950c6d46b7cc', '[\"*\"]', '2022-08-05 19:18:09', '2022-07-31 08:35:48', '2022-08-05 19:18:09'),
(2289, 'App\\User', 785, 'qixerapi_keys', '839058aa056d495ba7082480f7b3a91d341e0feadeb1852a8d50d77db06420b0', '[\"*\"]', NULL, '2022-07-31 09:39:11', '2022-07-31 09:39:11'),
(2290, 'App\\User', 218, 'qixerapi_keys', '229e8164b7878c6d5f35a666970d1bd147c35a33b24eb4742370493c4d05c179', '[\"*\"]', '2022-07-31 11:58:49', '2022-07-31 09:48:01', '2022-07-31 11:58:49'),
(2292, 'App\\User', 787, 'qixerapi_keys', 'ee85233ca4712b166815599b88d08776404e5f4a8ec130e0a62764e54daa5a84', '[\"*\"]', '2022-07-31 10:50:41', '2022-07-31 10:25:46', '2022-07-31 10:50:41'),
(2293, 'App\\User', 787, 'qixerapi_keys', '4c54d4c9f8089f400282ff4957d65bda9e736d9142b52431e0c712a64a1f8d42', '[\"*\"]', '2022-07-31 10:51:04', '2022-07-31 10:50:43', '2022-07-31 10:51:04'),
(2294, 'App\\User', 739, 'qixerapi_keys', 'd97f1cb0b474c1666038a9fe6ea297a599a30e7d5b2c98887a6eac61621a14af', '[\"*\"]', '2022-07-31 11:48:50', '2022-07-31 11:48:49', '2022-07-31 11:48:50'),
(2295, 'App\\User', 218, 'qixerapi_keys', '201caf46a3df63d49bda0617ad5b725d07e65f442d434cf1ed92d663440cf909', '[\"*\"]', '2022-08-16 07:57:53', '2022-07-31 11:58:50', '2022-08-16 07:57:53'),
(2298, 'App\\User', 788, 'qixerapi_keys', '8651e63e819ec487c6993e97928883d5fb87644279aafff1962abaf6cde4cfcb', '[\"*\"]', '2022-08-03 07:49:05', '2022-07-31 13:58:14', '2022-08-03 07:49:05'),
(2299, 'App\\User', 789, 'qixerapi_keys', '55ffc1c852cf0bf031b6dc211dc6681c4536689af9d9127c38c10c5097cff187', '[\"*\"]', '2022-08-01 09:49:42', '2022-07-31 14:29:36', '2022-08-01 09:49:42'),
(2300, 'App\\User', 479, 'qixerapi_keys', '0a6416f412d2d8bab44320207f61809ad670db76f9fad74652faedf24e989c94', '[\"*\"]', '2022-10-07 13:18:54', '2022-07-31 14:47:53', '2022-10-07 13:18:54'),
(2303, 'App\\User', 279, 'qixerapi_keys', '169bf8642bcc28a4e0004b3b792be0d58d652dde95343cb322d3c57e72237812', '[\"*\"]', '2022-07-31 21:28:29', '2022-07-31 21:28:27', '2022-07-31 21:28:29'),
(2309, 'App\\User', 783, 'qixerapi_keys', '97f1a0964a0b903407ac02b95f9daa880f8cbca1d9b6dc48a891d9c93dc08bbf', '[\"*\"]', '2022-08-01 12:29:50', '2022-08-01 06:46:28', '2022-08-01 12:29:50'),
(2311, 'App\\User', 789, 'qixerapi_keys', '35b02e0ddf1d5613d8859a4a857fa541c0d178c805aa6eae85aac0cb95c72ade', '[\"*\"]', '2022-08-19 12:54:42', '2022-08-01 09:49:43', '2022-08-19 12:54:42'),
(2313, 'App\\User', 750, 'qixerapi_keys', '635011fbec7698d1270e0281decd97d8554b4ce1f10ae96a42e5bd2027a46a57', '[\"*\"]', '2022-08-14 08:15:48', '2022-08-01 10:42:34', '2022-08-14 08:15:48'),
(2315, 'App\\User', 786, 'qixerapi_keys', '70c247f4c8dd15f119ee5459fb59f3af1567593d2e7603fc82e73c3e79a99ce8', '[\"*\"]', '2022-08-01 22:57:05', '2022-08-01 11:27:28', '2022-08-01 22:57:05'),
(2316, 'App\\User', 783, 'qixerapi_keys', '0d18f542dbdea455170896f550f945a91ac2fb444f622ffd38295bd63b99521b', '[\"*\"]', '2022-08-01 14:41:34', '2022-08-01 12:29:52', '2022-08-01 14:41:34'),
(2317, 'App\\User', 791, 'qixerapi_keys', '4002585e4ec9acce30286b15f630fea586a455f8e7bea9c7c8499f127d63f051', '[\"*\"]', '2022-08-01 17:08:42', '2022-08-01 17:04:59', '2022-08-01 17:08:42'),
(2326, 'App\\User', 786, 'qixerapi_keys', '2cd9c6d8fc422688bb5dd2bc4e121c461991848cde1af939cc5d3fb9e3887a71', '[\"*\"]', '2022-08-02 03:13:39', '2022-08-01 22:57:10', '2022-08-02 03:13:39'),
(2327, 'App\\User', 647, 'qixerapi_keys', '8caf384d1e563ad8d9edb34653d0dbc9def290daed0605a18e91d8f04c5d3a1a', '[\"*\"]', '2022-08-02 02:33:45', '2022-08-01 23:51:24', '2022-08-02 02:33:45'),
(2328, 'App\\User', 786, 'qixerapi_keys', 'dab5887a7ba77512083653d8a00ab21b88a1805d8c4f5cac5fbb93bbc2d0f4f1', '[\"*\"]', '2022-08-04 01:06:11', '2022-08-02 03:13:43', '2022-08-04 01:06:11'),
(2330, 'App\\User', 701, 'qixerapi_keys', 'c16641e0c370899e6877c347b72992fd403234bac551af6b706eeb5881b420c7', '[\"*\"]', '2022-08-02 04:05:44', '2022-08-02 04:05:33', '2022-08-02 04:05:44'),
(2341, 'App\\User', 304, 'qixerapi_keys', '13dbc17439a1b06a892fedc2baeccf17b3c392fdf4d6b601f0550bd6b1aa14b5', '[\"*\"]', '2022-08-20 09:00:47', '2022-08-02 11:20:53', '2022-08-20 09:00:47'),
(2342, 'App\\User', 793, 'qixerapi_keys', 'ebc76780133122dd29fdd3b3f3350911fe0f1c474b7d8476c915534685ab8dcc', '[\"*\"]', '2022-08-02 11:21:28', '2022-08-02 11:21:11', '2022-08-02 11:21:28'),
(2343, 'App\\User', 795, 'qixerapi_keys', '5132688bed0b3abb6209035fd69652965a3677073fc8a0d024751028da76e272', '[\"*\"]', '2022-08-05 08:06:37', '2022-08-02 14:17:02', '2022-08-05 08:06:37'),
(2344, 'App\\User', 796, 'qixerapi_keys', 'c89440c6ad4ac09c1f66c9c47f448ebe8727ef9b4d33ff79105ec8882b551138', '[\"*\"]', '2022-08-03 13:41:31', '2022-08-02 14:35:54', '2022-08-03 13:41:31'),
(2347, 'App\\User', 797, 'qixerapi_keys', '9dc165348840caa7067a2e600eda23cc32604aee718785cf25b9eff1dcc88e01', '[\"*\"]', '2022-08-02 19:13:38', '2022-08-02 17:19:05', '2022-08-02 19:13:38'),
(2348, 'App\\User', 798, 'qixerapi_keys', '3fd686ece6a09f26bad65ac3a612c1628f91f3863861027bd66645bf0788cfeb', '[\"*\"]', '2022-08-10 14:52:26', '2022-08-02 18:27:19', '2022-08-10 14:52:26'),
(2349, 'App\\User', 797, 'qixerapi_keys', '41f06a1eb1fd3ed5eb4cd7dc088acb9e0eac415834cc4ca130398374cc8f81aa', '[\"*\"]', '2022-08-02 23:20:26', '2022-08-02 19:13:39', '2022-08-02 23:20:26'),
(2352, 'App\\User', 653, 'qixerapi_keys', '3902597d18b889693b306699ede24734c0940e135d72ea403f85d076dfc33f89', '[\"*\"]', '2022-09-24 07:14:02', '2022-08-02 21:15:30', '2022-09-24 07:14:02'),
(2356, 'App\\User', 799, 'qixerapi_keys', '726c461e9c4e1fb0540108583b493a991d93889e4f8ee0e8f5b36c3b469537f0', '[\"*\"]', '2022-08-03 02:41:54', '2022-08-02 23:05:48', '2022-08-03 02:41:54'),
(2357, 'App\\User', 797, 'qixerapi_keys', 'b469af2b9ad94d011ebd6ff18335b12e686d0cd46c9116c353e923903391206c', '[\"*\"]', '2022-08-03 05:31:11', '2022-08-02 23:20:27', '2022-08-03 05:31:11'),
(2377, 'App\\User', 725, 'qixerapi_keys', '759337a5a20129d9c753691479f2cf1b90a16322439fb79adf2739c09bff091c', '[\"*\"]', '2022-08-03 00:54:04', '2022-08-03 00:54:01', '2022-08-03 00:54:04'),
(2422, 'App\\User', 799, 'qixerapi_keys', 'fc1b47f70706ba6c0d45d2d62237fac8be75d24d9536020bcd18f56f4dab5822', '[\"*\"]', '2022-08-15 20:23:27', '2022-08-03 02:41:55', '2022-08-15 20:23:27'),
(2450, 'App\\User', 797, 'qixerapi_keys', 'efc848705929ce33af304ea384283a488bcbf7c7b7d008f4e35eaf7fea509e70', '[\"*\"]', '2022-08-06 07:45:47', '2022-08-03 05:31:12', '2022-08-06 07:45:47'),
(2464, 'App\\User', 788, 'qixerapi_keys', '1eec96b2db50344cfbb2dd6157b271d98d2fcd7510ca5acbf485a2d63dbb6abf', '[\"*\"]', '2022-08-03 07:49:07', '2022-08-03 07:49:06', '2022-08-03 07:49:07'),
(2465, 'App\\User', 802, 'qixerapi_keys', 'dcdaccae216fec2339a31f779642975032b3a012522c09cc0a38f40e54779066', '[\"*\"]', '2022-08-03 09:09:25', '2022-08-03 08:58:08', '2022-08-03 09:09:25'),
(2467, 'App\\User', 290, 'qixerapi_keys', '518a0bc17eff36aa6426a56795eaf8495708743ff01c76a2415f6f009aaa27ff', '[\"*\"]', '2022-08-03 19:02:55', '2022-08-03 10:27:23', '2022-08-03 19:02:55'),
(2473, 'App\\User', 796, 'qixerapi_keys', '21505a0ac959885426d0bd614680f59efc39aab769f8a2ac359ab79abc0065d8', '[\"*\"]', '2022-08-03 13:41:34', '2022-08-03 13:41:33', '2022-08-03 13:41:34'),
(2475, 'App\\User', 804, 'qixerapi_keys', 'd00339669f60d2045ce4b868862c135a327c416c9960b6070e43f80bc6ffc10c', '[\"*\"]', NULL, '2022-08-03 15:36:02', '2022-08-03 15:36:02'),
(2479, 'App\\User', 280, 'qixerapi_keys', 'a8eee3961040021bd389cfac27f693eedf52a029b048002205c7a877675787db', '[\"*\"]', '2022-08-03 20:21:13', '2022-08-03 20:21:12', '2022-08-03 20:21:13'),
(2489, 'App\\User', 786, 'qixerapi_keys', '509b7afa3734b603abe012f7ffd34038a40fce3884be8ba707d1b77987aff7b2', '[\"*\"]', '2022-08-04 01:07:57', '2022-08-04 01:06:14', '2022-08-04 01:07:57'),
(2490, 'App\\User', 786, 'qixerapi_keys', 'c295196f8f71a996dff72f67c40d466a9f2f6d3f53f97fb7f6ac034766cf5b72', '[\"*\"]', '2022-08-04 04:54:48', '2022-08-04 01:08:00', '2022-08-04 04:54:48'),
(2493, 'App\\User', 805, 'qixerapi_keys', 'c106ff6cbeef1d4003c2c3467df560f2c66db7cd66a1c349afa41de23453b161', '[\"*\"]', '2022-08-04 05:47:57', '2022-08-04 03:29:32', '2022-08-04 05:47:57'),
(2498, 'App\\User', 786, 'qixerapi_keys', '7a426b407aa4fdf565f449e5d394da62390f4ded6cfb35aac43f073c829eb4d2', '[\"*\"]', '2022-08-11 13:31:33', '2022-08-04 04:54:51', '2022-08-11 13:31:33'),
(2499, 'App\\User', 805, 'qixerapi_keys', '2f83c33e0d5a531080050663bf3b97cd4d39d380cb940d958c441118d0546e38', '[\"*\"]', '2022-08-04 06:52:49', '2022-08-04 05:47:59', '2022-08-04 06:52:49'),
(2501, 'App\\User', 805, 'qixerapi_keys', 'ef0651d962a1cfdc4baaf3f2f81d6d9f90040621d2dde1cfde84eaf0a901e8c1', '[\"*\"]', '2022-08-05 05:04:01', '2022-08-04 06:52:51', '2022-08-05 05:04:01'),
(2502, 'App\\User', 310, 'qixerapi_keys', '36935fee536e52b6c3f9ab2cec38a323d0d76773ed0926a76a3aadc1fbd2f53f', '[\"*\"]', '2022-08-04 07:17:15', '2022-08-04 07:16:09', '2022-08-04 07:17:15'),
(2505, 'App\\User', 780, 'qixerapi_keys', '07c2e2633151ab5dc0d8af05c6915a123eec773b68a710c74a603d6ca1553ec8', '[\"*\"]', '2022-08-04 11:02:50', '2022-08-04 10:56:51', '2022-08-04 11:02:50'),
(2507, 'App\\User', 358, 'qixerapi_keys', 'a454e1cfaf2aaadcee3eb4ecf20150c81d65831e7e56b988086292a97eb54448', '[\"*\"]', '2022-08-04 11:45:59', '2022-08-04 11:45:58', '2022-08-04 11:45:59'),
(2511, 'App\\User', 806, 'qixerapi_keys', '2715352416afab42fe18ae672c54cee05ee1027f0203f55c1906bce7cc471306', '[\"*\"]', '2022-08-04 13:58:37', '2022-08-04 12:52:17', '2022-08-04 13:58:37'),
(2513, 'App\\User', 806, 'qixerapi_keys', '5325ae23c55f52a871719e508c14d1201a174e35fa494053aee051f3536dc139', '[\"*\"]', '2022-08-04 14:27:47', '2022-08-04 13:58:39', '2022-08-04 14:27:47'),
(2514, 'App\\User', 806, 'qixerapi_keys', '9c8e38797547abf98bb3bf20f555cdd3cd6ea930998b92d3709719ef2b02b0f4', '[\"*\"]', '2022-08-11 01:09:48', '2022-08-04 14:27:49', '2022-08-11 01:09:48'),
(2517, 'App\\User', 807, 'qixerapi_keys', 'bae96c23a9152f25817e9bd177d50a82a648ab47ca769eca147442a4d357ce2b', '[\"*\"]', NULL, '2022-08-04 16:46:17', '2022-08-04 16:46:17'),
(2530, 'App\\User', 809, 'qixerapi_keys', '6bbc6cdd38cc2b03372da114998373f85871fb0c48c8c3ee2748a4cec33a7320', '[\"*\"]', '2022-08-05 02:17:20', '2022-08-05 02:17:19', '2022-08-05 02:17:20'),
(2534, 'App\\User', 800, 'qixerapi_keys', 'b16819eafbf24c80367ec2d26bd818d2d6d047e94f6143da0ab99a5751013ab2', '[\"*\"]', '2022-08-08 00:08:21', '2022-08-05 04:51:50', '2022-08-08 00:08:21'),
(2535, 'App\\User', 805, 'qixerapi_keys', 'e235812d91958643c29a822d895ba0de73ec6343ba7d148cfeef2d4ff5becb96', '[\"*\"]', '2022-08-06 03:50:31', '2022-08-05 05:04:03', '2022-08-06 03:50:31'),
(2539, 'App\\User', 795, 'qixerapi_keys', 'b3a60c2a68f3ec869631b88b12f85c0835588aaf7cfbdd775137b4bdbc9479d6', '[\"*\"]', '2022-09-19 08:17:39', '2022-08-05 08:06:38', '2022-09-19 08:17:39'),
(2550, 'App\\User', 813, 'qixerapi_keys', '9a021914fdff5ea1d496f219e84964eb94cd51473e4622f0c1b8d25d2f8e60d4', '[\"*\"]', '2022-08-05 18:23:38', '2022-08-05 18:18:41', '2022-08-05 18:23:38'),
(2551, 'App\\User', 813, 'qixerapi_keys', '373081d32a303bea575af19f3c56366db8dd1806797e725e664ddc039faa5ab1', '[\"*\"]', '2022-08-06 11:50:26', '2022-08-05 18:23:39', '2022-08-06 11:50:26'),
(2552, 'App\\User', 735, 'qixerapi_keys', '487e18b5994764f4dcf1f06c736cf4d6f600318f43ff242118413064c68ec15e', '[\"*\"]', '2022-08-07 07:13:05', '2022-08-05 19:18:10', '2022-08-07 07:13:05'),
(2553, 'App\\User', 814, 'qixerapi_keys', '6f29a1206ac73013e800a31b431758ce21de2d590a62330c85c262f20aa31108', '[\"*\"]', '2022-08-05 21:47:46', '2022-08-05 21:47:42', '2022-08-05 21:47:46'),
(2558, 'App\\User', 375, 'qixerapi_keys', '92dd14fb70eaa40b705a5a8cf9c8528a6740f063ebed1105346936acac5f199d', '[\"*\"]', '2022-08-05 23:49:06', '2022-08-05 23:49:05', '2022-08-05 23:49:06'),
(2565, 'App\\User', 805, 'qixerapi_keys', 'fd969cdd88ef160ef515927b6230f198a11faed0c2e33eb4ad12e5b2f4b31d23', '[\"*\"]', '2022-08-06 07:09:01', '2022-08-06 03:50:32', '2022-08-06 07:09:01'),
(2573, 'App\\User', 816, 'qixerapi_keys', '143a1c51adb094dedad01b851d06b9e1f4f2d36a6f6d3bfa7728d7713c3291cb', '[\"*\"]', '2022-08-06 05:08:38', '2022-08-06 05:07:03', '2022-08-06 05:08:38'),
(2576, 'App\\User', 805, 'qixerapi_keys', 'd39b33a6ccaad95c58eb2da8d411800d4f04e7ba4aa858bb7cc7c4b7027c1e5b', '[\"*\"]', '2022-08-06 23:06:57', '2022-08-06 07:09:04', '2022-08-06 23:06:57'),
(2577, 'App\\User', 797, 'qixerapi_keys', 'b1269fec9b4c155ba01554d75f202b3d7b2be59f76762276a743c74ed3f05d69', '[\"*\"]', '2022-08-07 02:28:05', '2022-08-06 07:45:48', '2022-08-07 02:28:05'),
(2579, 'App\\User', 817, 'qixerapi_keys', '457acf67fb1cd3518ee434472b6602e08a3c68621e542221dcca5b1c7c5c940e', '[\"*\"]', NULL, '2022-08-06 11:17:53', '2022-08-06 11:17:53'),
(2581, 'App\\User', 813, 'qixerapi_keys', '445ffe72546bf2e24341bdbc6102774963f36f3c73f5099cf2ece94700aebdc7', '[\"*\"]', '2022-08-07 07:26:51', '2022-08-06 11:50:33', '2022-08-07 07:26:51'),
(2585, 'App\\User', 818, 'qixerapi_keys', '089f2be72881d51ce09c27addeb5b3c00bd977188370dc79e1c3800d84a79093', '[\"*\"]', '2022-08-06 13:25:51', '2022-08-06 13:24:20', '2022-08-06 13:25:51'),
(2586, 'App\\User', 819, 'qixerapi_keys', '7f31bb9cd014770f078a1231f9e57418a2a60f7d914d8cf6f6b2f80a28cc2b70', '[\"*\"]', '2022-08-06 13:33:52', '2022-08-06 13:32:28', '2022-08-06 13:33:52'),
(2587, 'App\\User', 818, 'qixerapi_keys', 'ea39018dcd123d832e7109f58433d92a05d17805de1c78539c8721c6fca6ddfc', '[\"*\"]', '2022-08-06 13:33:45', '2022-08-06 13:33:44', '2022-08-06 13:33:45'),
(2588, 'App\\User', 819, 'qixerapi_keys', 'd72df5bb3b4b2ec9d4e58cc598781994889b09895f06823852e6ce8f692591a5', '[\"*\"]', '2022-08-15 04:43:01', '2022-08-06 13:33:54', '2022-08-15 04:43:01'),
(2595, 'App\\User', 820, 'qixerapi_keys', '0097ab6a6050fe439fb3bc610c9d95a9ae00cd0114e420f254b90478d70a6073', '[\"*\"]', NULL, '2022-08-06 20:29:34', '2022-08-06 20:29:34'),
(2600, 'App\\User', 805, 'qixerapi_keys', 'bbf69865bf4b3aa800376180b6ddddeb0b0e5055ece5b9a720eb795f4b17bda6', '[\"*\"]', '2022-08-07 22:56:35', '2022-08-06 23:06:58', '2022-08-07 22:56:35'),
(2602, 'App\\User', 823, 'qixerapi_keys', '18d84540f49b8d47beaa748cd7b00cb385650e5fbba2280f678e2407da490b3f', '[\"*\"]', '2022-08-07 01:30:10', '2022-08-07 01:29:26', '2022-08-07 01:30:10'),
(2605, 'App\\User', 797, 'qixerapi_keys', 'a81eb79053a70fdc853122b01eb9c7155e88fef89d3fc53cbce8e588aa6fcb92', '[\"*\"]', '2022-08-07 02:28:07', '2022-08-07 02:28:06', '2022-08-07 02:28:07'),
(2608, 'App\\User', 466, 'qixerapi_keys', '0d11e2cc4da3949891bf81fe5487ff5a2c98100ee751c689487ee21f8805c99a', '[\"*\"]', '2022-08-07 07:25:44', '2022-08-07 05:44:22', '2022-08-07 07:25:44'),
(2613, 'App\\User', 735, 'qixerapi_keys', 'd5a21f807c7ed7d5eacf23e4e8f756abfac09c5bc94fe176600d64e7e1859868', '[\"*\"]', '2022-08-07 12:10:15', '2022-08-07 07:13:06', '2022-08-07 12:10:15'),
(2614, 'App\\User', 466, 'qixerapi_keys', '3ea5bb86053d7ee2ca5efcbe3e4a8705e8dcd3c32e706b8c8b8bd4d6123aca3d', '[\"*\"]', '2022-08-11 05:19:07', '2022-08-07 07:25:45', '2022-08-11 05:19:07'),
(2615, 'App\\User', 813, 'qixerapi_keys', '1e8d7d12a04c9720138c4decb5ff559f05f1e6aa08355f59457cfe3040ef75cc', '[\"*\"]', '2022-08-07 07:35:23', '2022-08-07 07:26:52', '2022-08-07 07:35:23'),
(2616, 'App\\User', 827, 'qixerapi_keys', '8d731af54d59063dcb5152822128666385167eb05a78644bab759e1ec0e962e5', '[\"*\"]', '2022-08-07 08:13:08', '2022-08-07 08:13:07', '2022-08-07 08:13:08'),
(2620, 'App\\User', 828, 'qixerapi_keys', 'e7a5923f56446b797ce4486c467473bbdb2724ac25cb4aee6b25b64424116c44', '[\"*\"]', '2022-08-07 11:23:31', '2022-08-07 11:21:34', '2022-08-07 11:23:31'),
(2626, 'App\\User', 818, 'qixerapi_keys', '2f1d5b25f5a028de96a85341ac2d078c7892c5ffe1607958622e381535f9aa46', '[\"*\"]', '2022-08-07 21:37:09', '2022-08-07 21:37:07', '2022-08-07 21:37:09'),
(2627, 'App\\User', 829, 'qixerapi_keys', '948d64f540f9fa98cc191a6713a4269f5df8e4393a33e443219758a15dea79f9', '[\"*\"]', '2022-08-11 10:27:08', '2022-08-07 21:44:54', '2022-08-11 10:27:08'),
(2628, 'App\\User', 830, 'qixerapi_keys', '47281015d2b613c17d153eb61a9d4bc7ee48aee67c6cd10777559c12d20bf78c', '[\"*\"]', NULL, '2022-08-07 21:54:11', '2022-08-07 21:54:11'),
(2629, 'App\\User', 770, 'qixerapi_keys', 'bcaf59c4ca9bf4b985008feb776ede7aabd491f59416bb324c318cc5486e52ca', '[\"*\"]', '2022-08-07 22:07:02', '2022-08-07 22:05:47', '2022-08-07 22:07:02'),
(2630, 'App\\User', 805, 'qixerapi_keys', '6890357dbbc43514e235cc5e908bd13a51fe3f5d087f0d047daa29372db1084f', '[\"*\"]', '2022-08-07 23:27:51', '2022-08-07 22:56:37', '2022-08-07 23:27:51'),
(2631, 'App\\User', 805, 'qixerapi_keys', '0a5336693030aff94894e38f6fa71ddff2d5afb785f5b5c038c5506c07f5b0bc', '[\"*\"]', '2022-08-07 23:29:01', '2022-08-07 23:27:52', '2022-08-07 23:29:01'),
(2632, 'App\\User', 805, 'qixerapi_keys', 'bf5112bb07baef190189cd2a177074b3d97368af28dd87ec04283843e45bd322', '[\"*\"]', '2022-08-07 23:39:30', '2022-08-07 23:29:02', '2022-08-07 23:39:30'),
(2633, 'App\\User', 805, 'qixerapi_keys', 'da5a6bfc039bd8111686eeeeccf767a5ab2b4e2248bd94f445c5dc43a9726029', '[\"*\"]', '2022-08-08 00:44:02', '2022-08-07 23:39:31', '2022-08-08 00:44:02'),
(2634, 'App\\User', 800, 'qixerapi_keys', 'c828b75012cfda4a4412b7d06ac43aa4a586beb6fca5ea2f7050b7efe7488577', '[\"*\"]', '2022-08-08 00:13:48', '2022-08-08 00:08:22', '2022-08-08 00:13:48'),
(2635, 'App\\User', 800, 'qixerapi_keys', '0ce4673699bfd8f89b83604cc86d037a1eb9fae083aeba2b69be0bc13061fd45', '[\"*\"]', '2022-08-08 04:05:49', '2022-08-08 00:13:49', '2022-08-08 04:05:49'),
(2636, 'App\\User', 805, 'qixerapi_keys', '26f14a1c18ac0518b422d98c913955728bcd2379fb430b190bd4e5a424b1fd4c', '[\"*\"]', '2022-08-08 04:02:13', '2022-08-08 00:44:04', '2022-08-08 04:02:13'),
(2640, 'App\\User', 831, 'qixerapi_keys', 'b640e35a37e4c23902598c0a18cf0967fd63f20fbf687a0c259910233dbad848', '[\"*\"]', '2022-08-08 02:11:34', '2022-08-08 02:11:33', '2022-08-08 02:11:34'),
(2645, 'App\\User', 805, 'qixerapi_keys', 'feda6b6c9829bc270005020e71fd3578cf20338a6e0c28d8c65fd7324d1582c5', '[\"*\"]', '2022-08-13 04:57:08', '2022-08-08 04:02:14', '2022-08-13 04:57:08'),
(2646, 'App\\User', 751, 'qixerapi_keys', '4843c1eeea1b4f24349dd24e2610c8bbe1be7fb4e9fb688300e639c2b882c962', '[\"*\"]', '2022-08-08 04:05:27', '2022-08-08 04:05:25', '2022-08-08 04:05:27'),
(2647, 'App\\User', 800, 'qixerapi_keys', '5c68bc2145ffb1c9e4db466404e1b88f7f69e81a74cc3b94fc9a3d6b2aeac017', '[\"*\"]', '2022-08-08 05:09:40', '2022-08-08 04:05:50', '2022-08-08 05:09:40'),
(2649, 'App\\User', 800, 'qixerapi_keys', '9ada89545eaeb5492bb6e1f2cfdc224f550075050035a51e0dbc5fa2c472074c', '[\"*\"]', '2022-08-10 03:47:34', '2022-08-08 05:09:41', '2022-08-10 03:47:34'),
(2653, 'App\\User', 833, 'qixerapi_keys', '406c5e36a37b54edd6597132d5218460ecb6f496aaf88fc98250aba72356b877', '[\"*\"]', '2022-08-08 08:01:15', '2022-08-08 08:00:40', '2022-08-08 08:01:15'),
(2660, 'App\\User', 484, 'qixerapi_keys', '1329636cbff303ef27e6dfe8d81db165743ff3476a6517e2dc60d985eebce8ad', '[\"*\"]', '2022-08-08 12:23:10', '2022-08-08 12:22:25', '2022-08-08 12:23:10'),
(2665, 'App\\User', 433, 'qixerapi_keys', 'aef12516629651c3f79b1c15bf9c59d0976d729392da38ed06f75b29746d33c5', '[\"*\"]', '2022-08-08 15:20:47', '2022-08-08 15:20:19', '2022-08-08 15:20:47'),
(2666, 'App\\User', 767, 'qixerapi_keys', '09cdad79817cf659640e96ca52aeb3a3670ff5b45023d3b031b3790272fc33c0', '[\"*\"]', '2022-08-11 18:43:11', '2022-08-08 15:52:09', '2022-08-11 18:43:11'),
(2672, 'App\\User', 837, 'qixerapi_keys', '830abe630b2414e9a80902cea153ba6e1efd549fd39b833bf3b6a2e7ff9a8c94', '[\"*\"]', NULL, '2022-08-08 21:20:59', '2022-08-08 21:20:59'),
(2691, 'App\\User', 358, 'qixerapi_keys', '3c6aeb67908a953450d743e9a262110214bad4440125952ed92b5637a101c4d9', '[\"*\"]', '2022-08-09 10:05:04', '2022-08-09 10:05:03', '2022-08-09 10:05:04'),
(2697, 'App\\User', 262, 'qixerapi_keys', 'bf2c347df42b3a07d24aeb7cfb094d21f309ae1487b735484bdf105c2c8f889e', '[\"*\"]', '2022-08-10 17:07:55', '2022-08-09 16:09:20', '2022-08-10 17:07:55'),
(2699, 'App\\User', 384, 'qixerapi_keys', 'f9779f71e49f94c45d021157b43a405709c9a6a98e5a7f4088197e324d9d0d24', '[\"*\"]', '2022-08-09 18:30:51', '2022-08-09 18:30:50', '2022-08-09 18:30:51'),
(2705, 'App\\User', 779, 'qixerapi_keys', '0a3aeadfc59953fd943e09067d3fc05ebc6ef1bd7815f1c838ee7d23baab3176', '[\"*\"]', '2022-08-10 02:09:59', '2022-08-10 02:09:58', '2022-08-10 02:09:59'),
(2706, 'App\\User', 800, 'qixerapi_keys', 'd76b31c00b9ac7b7a2e5dc72fa8717936afde34561ecf322695aa26eb32c457a', '[\"*\"]', '2022-08-10 04:46:17', '2022-08-10 03:47:35', '2022-08-10 04:46:17'),
(2709, 'App\\User', 800, 'qixerapi_keys', '7e03b018d8bf654efe85310843e8eee994f860f42b8b968de7c78ab046109ad9', '[\"*\"]', '2022-08-11 23:13:26', '2022-08-10 04:46:18', '2022-08-11 23:13:26'),
(2711, 'App\\User', 840, 'qixerapi_keys', '05b516a4d7fa1081961b45004ecabd6e3c124ab6749611695f38b9ebae743631', '[\"*\"]', NULL, '2022-08-10 09:21:20', '2022-08-10 09:21:20'),
(2718, 'App\\User', 768, 'qixerapi_keys', '95a9845fead4ec156abea3bfc2cf79ccdcb35431d5450ebeab3e8159b6f87e3f', '[\"*\"]', '2022-09-01 14:39:37', '2022-08-10 10:52:05', '2022-09-01 14:39:37'),
(2723, 'App\\User', 798, 'qixerapi_keys', '918d6524555cf5f6b761af726a1846e7c91e75069fe05e7d4fa7f27d45426f8e', '[\"*\"]', '2022-08-10 14:52:28', '2022-08-10 14:52:27', '2022-08-10 14:52:28'),
(2724, 'App\\User', 262, 'qixerapi_keys', '33b32d1ad76937710322e32e0d03a8d59acfd680ce64da18beee4b2e250a7b70', '[\"*\"]', '2022-08-10 17:08:30', '2022-08-10 17:07:56', '2022-08-10 17:08:30'),
(2725, 'App\\User', 693, 'qixerapi_keys', '0f52894683fafcc27fbd88fc500b735503933d69b8b8b51c32e826f6a483f621', '[\"*\"]', NULL, '2022-08-10 17:49:01', '2022-08-10 17:49:01'),
(2726, 'App\\User', 831, 'qixerapi_keys', 'c0654d68a878be244af8333854494b5b191d29e051e45fa64596893ba8c42586', '[\"*\"]', NULL, '2022-08-10 21:31:07', '2022-08-10 21:31:07'),
(2727, 'App\\User', 831, 'qixerapi_keys', '8233a628d46e29a2836e4e0293c2cd18dcca2dcf5ca3935827b422a33cf653ed', '[\"*\"]', '2022-08-10 21:31:29', '2022-08-10 21:31:12', '2022-08-10 21:31:29'),
(2728, 'App\\User', 806, 'qixerapi_keys', 'aae057972f59620230fcc863f9804060653a4ccad9d6d5e24750d20e64d72137', '[\"*\"]', '2022-09-26 14:39:06', '2022-08-11 01:09:49', '2022-09-26 14:39:06'),
(2731, 'App\\User', 466, 'qixerapi_keys', '28d1dab7f0ec6a49e0b54a0332b0b207dc5b05ea7a699e04dabe744054537b05', '[\"*\"]', '2022-08-11 05:19:09', '2022-08-11 05:19:08', '2022-08-11 05:19:09'),
(2735, 'App\\User', 737, 'qixerapi_keys', '679492e9bf43c586ae623c8e84b494bab01157b2e2e75d456c9a5d2b79f4c9b2', '[\"*\"]', '2022-08-11 08:43:50', '2022-08-11 08:43:48', '2022-08-11 08:43:50'),
(2736, 'App\\User', 493, 'qixerapi_keys', '315d5ba090c8385b558a11d315effee63bcd22221247136818af3a8de726c933', '[\"*\"]', '2022-08-11 09:00:40', '2022-08-11 09:00:39', '2022-08-11 09:00:40'),
(2737, 'App\\User', 844, 'qixerapi_keys', '27ab381e53835a1a409597539089c85e5b6a41955beb407e3cf399a2c1934fff', '[\"*\"]', '2022-08-11 10:03:46', '2022-08-11 10:03:06', '2022-08-11 10:03:46'),
(2738, 'App\\User', 829, 'qixerapi_keys', '503322b9162633a15580ce40e5ba3f7f12fa8827733a145dcf6d991af2b1d1e8', '[\"*\"]', '2022-08-19 19:12:31', '2022-08-11 10:27:10', '2022-08-19 19:12:31'),
(2739, 'App\\User', 845, 'qixerapi_keys', '58bc3e96eec76e322c19f22419faf833363b18d79e5794f62c4c38525cd72aa0', '[\"*\"]', NULL, '2022-08-11 10:32:00', '2022-08-11 10:32:00'),
(2740, 'App\\User', 845, 'qixerapi_keys', '7389257fe97a3e5dc09569c0bb6e3404b30cd5ab95a7c883bbf0e85c0c15e21b', '[\"*\"]', '2022-08-11 10:42:36', '2022-08-11 10:34:08', '2022-08-11 10:42:36'),
(2741, 'App\\User', 493, 'qixerapi_keys', 'f4c18f452f6f7ba443093d231d6210d70406f9dcecac180e3abfd3bb351f39ff', '[\"*\"]', NULL, '2022-08-11 11:05:44', '2022-08-11 11:05:44'),
(2742, 'App\\User', 497, 'qixerapi_keys', '06c5b68d6b581fae99f019ccf3ffafbb777407f1324577eca140fda0a13f69ab', '[\"*\"]', '2022-08-11 11:19:57', '2022-08-11 11:19:56', '2022-08-11 11:19:57'),
(2744, 'App\\User', 786, 'qixerapi_keys', '76500becd8f3f51cf2c701aab72c683077b21bdb8af60cbdf38764a907a5cc9d', '[\"*\"]', '2022-08-22 03:25:31', '2022-08-11 13:31:37', '2022-08-22 03:25:31'),
(2749, 'App\\User', 767, 'qixerapi_keys', '0928ae02a714593f6028b540e8e9dac893e80e3df0fc41a7dc2f5e46c70add35', '[\"*\"]', '2022-08-13 08:25:34', '2022-08-11 18:43:12', '2022-08-13 08:25:34'),
(2750, 'App\\User', 800, 'qixerapi_keys', 'd5b7410d19c94a3bee0f6638ddd4f18b50e2edbcc2df956d6fab6632120ef89e', '[\"*\"]', '2022-08-11 23:13:28', '2022-08-11 23:13:27', '2022-08-11 23:13:28'),
(2754, 'App\\User', 848, 'qixerapi_keys', '9ab90c7741235a858365f79a2be08cbe1a543883271936a526524f2c16f320f5', '[\"*\"]', NULL, '2022-08-12 04:10:55', '2022-08-12 04:10:55'),
(2769, 'App\\User', 295, 'qixerapi_keys', '8aed6a1b05f9e6a9db0bb9c23cb7a07775e12f512532f6708f4460395ecb7b4d', '[\"*\"]', '2022-08-12 10:07:45', '2022-08-12 10:02:48', '2022-08-12 10:07:45'),
(2770, 'App\\User', 850, 'qixerapi_keys', 'e89c8115c096f77ea720e7908f3ba7d2b4f58e9701ef4176df3c1deaf52de907', '[\"*\"]', '2022-08-12 11:30:56', '2022-08-12 11:18:54', '2022-08-12 11:30:56'),
(2771, 'App\\User', 850, 'qixerapi_keys', '1821a1f13b535cbae182dd8d2267941c02664ea418de5498e68cd153406630d4', '[\"*\"]', '2022-08-12 11:30:58', '2022-08-12 11:30:57', '2022-08-12 11:30:58'),
(2780, 'App\\User', 852, 'qixerapi_keys', 'c200526d8d00137392fb4307bfc5a32aa3384123a397e0b77d413f054838b2d8', '[\"*\"]', '2022-08-13 05:59:41', '2022-08-13 04:08:27', '2022-08-13 05:59:41'),
(2781, 'App\\User', 805, 'qixerapi_keys', '549e03f9c36a5ed8b722f5e57daf0fd9280ce8d5c588aad522aedf0cc06c7c4b', '[\"*\"]', '2022-08-14 00:56:37', '2022-08-13 04:57:10', '2022-08-14 00:56:37'),
(2782, 'App\\User', 852, 'qixerapi_keys', 'a9ca74401a2f4ee014df7c2f7898f3d7458c4f84769cc6a5c6d96604fcbb51ae', '[\"*\"]', '2022-08-17 17:37:24', '2022-08-13 05:59:43', '2022-08-17 17:37:24'),
(2788, 'App\\User', 767, 'qixerapi_keys', '4435caa487a50cfacee7fece74237f151725a881f7d2245d0e86d21ee3120533', '[\"*\"]', '2022-08-13 08:54:18', '2022-08-13 08:25:36', '2022-08-13 08:54:18'),
(2808, 'App\\User', 767, 'qixerapi_keys', '524803b9e9abeb7f875d80bb0317908eae8ed56130443483c4d8e8f497a18a83', '[\"*\"]', '2022-08-13 20:49:24', '2022-08-13 08:54:19', '2022-08-13 20:49:24'),
(2811, 'App\\User', 855, 'qixerapi_keys', 'e0051818294e3070a6cdf39caee54ffea843637506bbd95201243bf11cba0289', '[\"*\"]', NULL, '2022-08-13 09:09:56', '2022-08-13 09:09:56'),
(2812, 'App\\User', 855, 'qixerapi_keys', 'dd673ea1466cd817d81f3af06d6d242883f4676d8443f2e9594eea020881f475', '[\"*\"]', NULL, '2022-08-13 09:11:41', '2022-08-13 09:11:41'),
(2813, 'App\\User', 855, 'qixerapi_keys', '0002a620d355abdcb86d12c97f0281a090d2543b49761d42dce4b8c7e21a5dd3', '[\"*\"]', '2022-08-13 09:13:20', '2022-08-13 09:11:53', '2022-08-13 09:13:20'),
(2814, 'App\\User', 855, 'qixerapi_keys', '09dee97553e9352ebf9eff2c382aad6d8ce9588547c604932ac92d0c04a40464', '[\"*\"]', '2022-08-13 09:11:56', '2022-08-13 09:11:53', '2022-08-13 09:11:56'),
(2816, 'App\\User', 855, 'qixerapi_keys', '68b294d251ad9122efa0073746543314820cd449def0f3fc20698db1f9a2b414', '[\"*\"]', '2022-08-13 09:13:59', '2022-08-13 09:13:56', '2022-08-13 09:13:59'),
(2817, 'App\\User', 855, 'qixerapi_keys', '3063604e24cf081f1cfbc890c38b3d1825d2100342eab7bb195988e4673ee599', '[\"*\"]', '2022-08-13 09:18:08', '2022-08-13 09:13:56', '2022-08-13 09:18:08'),
(2827, 'App\\User', 856, 'qixerapi_keys', '13182363eaab4fe22b774f5484bb8400bae1eaf8c7581e73da9d52ab6f0f9102', '[\"*\"]', '2022-08-13 15:35:23', '2022-08-13 15:32:00', '2022-08-13 15:35:23'),
(2831, 'App\\User', 767, 'qixerapi_keys', '834fec0ab999906f5e21a101c72722a836720cbc7997e17013a562ed1839d40e', '[\"*\"]', '2022-08-14 10:14:34', '2022-08-13 20:49:26', '2022-08-14 10:14:34'),
(2834, 'App\\User', 831, 'qixerapi_keys', 'b6b93bcb84d229a137a7833b9585df33fac41cb5483a1867298e6a322b992d62', '[\"*\"]', '2022-08-13 22:42:52', '2022-08-13 22:42:50', '2022-08-13 22:42:52'),
(2836, 'App\\User', 857, 'qixerapi_keys', '07209f274a902323dcfa53d9e7223a0c96b9499fc22070b6ed809f30cfaa112f', '[\"*\"]', NULL, '2022-08-13 23:32:23', '2022-08-13 23:32:23'),
(2837, 'App\\User', 858, 'qixerapi_keys', '02703f1599c5afaae55ae4f5adece36807f78f0920f3361ed2634f522af6a1ac', '[\"*\"]', '2022-08-13 23:34:17', '2022-08-13 23:33:26', '2022-08-13 23:34:17'),
(2838, 'App\\User', 858, 'qixerapi_keys', '6e7acbea7ff03a7e796c609ad37a9c30decf93b29abc847e76ddd5f52e917d9a', '[\"*\"]', NULL, '2022-08-14 00:18:09', '2022-08-14 00:18:09'),
(2844, 'App\\User', 805, 'qixerapi_keys', '44f30686ab2b70f6cd120b0675366dff2466047f6dd892a208d826e2b0d3fa37', '[\"*\"]', '2022-08-30 03:42:19', '2022-08-14 00:56:38', '2022-08-30 03:42:19'),
(2847, 'App\\User', 859, 'qixerapi_keys', '983ff1cf1524a75742f63373f9999e137495e729545a63dcdfdbd6f63261655b', '[\"*\"]', '2022-08-14 05:38:25', '2022-08-14 05:36:39', '2022-08-14 05:38:25'),
(2858, 'App\\User', 750, 'qixerapi_keys', '291ffbf7d0c8c2c26eb85190c49207d6549e83399ae4e4ef9de205372abf61f2', '[\"*\"]', NULL, '2022-08-14 08:15:51', '2022-08-14 08:15:51'),
(2860, 'App\\User', 860, 'qixerapi_keys', 'e04974e0a2e582d872107dc643801823a06a8ff65c4402dfd1f6150f4008f77e', '[\"*\"]', '2022-08-14 09:07:59', '2022-08-14 09:07:13', '2022-08-14 09:07:59'),
(2861, 'App\\User', 375, 'qixerapi_keys', '2b6968771452da515eb33b58a3d8154255fc0be9a731f901efd6340952d85932', '[\"*\"]', '2022-08-14 09:29:53', '2022-08-14 09:29:52', '2022-08-14 09:29:53'),
(2862, 'App\\User', 767, 'qixerapi_keys', '47015d81a45f8c3160a58cf1a699a36a21a31cff36b86c0d7ea8cb0d22fb51e8', '[\"*\"]', '2022-08-14 15:46:06', '2022-08-14 10:14:35', '2022-08-14 15:46:06'),
(2868, 'App\\User', 861, 'qixerapi_keys', '341cb5ee66e21fb63b319226482417e2bad41a98dfc5f6dd6c65c0151d10c9e5', '[\"*\"]', NULL, '2022-08-14 13:00:34', '2022-08-14 13:00:34'),
(2872, 'App\\User', 767, 'qixerapi_keys', 'aab981e338be19d6c13d59daa04c93c85868efc7c84e17639fb1a3b96c2f7372', '[\"*\"]', '2022-08-21 12:09:52', '2022-08-14 15:46:08', '2022-08-21 12:09:52'),
(2880, 'App\\User', 778, 'qixerapi_keys', '7addf41cf484a58e362b81e904887a7e76aeb9add84dace77c73969a6e76d234', '[\"*\"]', '2022-08-22 14:02:21', '2022-08-14 23:54:58', '2022-08-22 14:02:21'),
(2882, 'App\\User', 736, 'qixerapi_keys', '2c1a2359ad8f472bb24f58ca74e93bb32c92257b60cfe43e8239388c20a82ec2', '[\"*\"]', '2022-12-08 13:31:39', '2022-08-15 02:05:47', '2022-12-08 13:31:39'),
(2884, 'App\\User', 818, 'qixerapi_keys', '69c6591f3ef0f93fa6c76593251eb747039c1cbb0e84a5d97f1896210c5a1a1b', '[\"*\"]', '2022-08-15 04:42:50', '2022-08-15 04:42:39', '2022-08-15 04:42:50'),
(2885, 'App\\User', 819, 'qixerapi_keys', '4311ca3f25578ed96d01b26a2babddea7d61fcc611b5d11f6c85586a858942ef', '[\"*\"]', '2022-08-15 04:43:04', '2022-08-15 04:43:02', '2022-08-15 04:43:04'),
(2886, 'App\\User', 863, 'qixerapi_keys', '6a84f30ca1b10c39358fdd502c07f0996722733c979bff8a9eecbdbaf6933a65', '[\"*\"]', '2022-08-15 06:40:19', '2022-08-15 06:38:40', '2022-08-15 06:40:19'),
(2896, 'App\\User', 799, 'qixerapi_keys', '19f7b522e178490726043db3cc2bfbedeb38699692a8d5ee4a29efae61e203ba', '[\"*\"]', '2022-08-15 20:23:31', '2022-08-15 20:23:29', '2022-08-15 20:23:31'),
(2903, 'App\\User', 865, 'qixerapi_keys', 'f5c0c2032c1d5b50c6e6b31dc0509424eb35923b5e18591329012d65968927f0', '[\"*\"]', '2022-08-16 03:41:17', '2022-08-16 01:24:07', '2022-08-16 03:41:17'),
(2909, 'App\\User', 865, 'qixerapi_keys', 'a47e95b0460587075f78b9d37a030c70454490c9718f82b31fa5662721139523', '[\"*\"]', '2022-08-16 05:03:23', '2022-08-16 03:41:18', '2022-08-16 05:03:23'),
(2910, 'App\\User', 866, 'qixerapi_keys', '10561ec1eefbd492999c278b7351791ea55e5ad002a0298381d45b43fe2b02da', '[\"*\"]', '2022-08-22 09:47:30', '2022-08-16 03:44:35', '2022-08-22 09:47:30'),
(2912, 'App\\User', 867, 'qixerapi_keys', '7fcf6edc14e2c7bdcd3259c517ccbaf214dede2906f04af2441ca6fc05eb03e0', '[\"*\"]', '2022-08-16 04:07:45', '2022-08-16 03:50:08', '2022-08-16 04:07:45'),
(2914, 'App\\User', 865, 'qixerapi_keys', 'f13bfec72034d4e3fd106ca036919ee4d9860fc0f84e5cc35582580ce783c08f', '[\"*\"]', '2022-08-29 06:46:04', '2022-08-16 05:03:24', '2022-08-29 06:46:04'),
(2915, 'App\\User', 870, 'qixerapi_keys', '0f5df525c1ef7bfb0b2ab4ca94379eb4e881927f68f945bfcbc69f989c1312e8', '[\"*\"]', '2022-08-16 06:53:41', '2022-08-16 06:53:10', '2022-08-16 06:53:41'),
(2916, 'App\\User', 871, 'qixerapi_keys', '71e639b0257e43060c5d42837f94cfb1a7b1cd2575188345c73c0d1ac170bb20', '[\"*\"]', '2022-08-16 06:57:19', '2022-08-16 06:57:18', '2022-08-16 06:57:19'),
(2917, 'App\\User', 218, 'qixerapi_keys', 'a6820dddd8de3515637e22f1f31d4c938aca5e3148fe229b934d2d13405cd4a7', '[\"*\"]', '2022-10-03 03:00:28', '2022-08-16 07:57:54', '2022-10-03 03:00:28'),
(2920, 'App\\User', 309, 'qixerapi_keys', '165caa31ae64985b8e5dfd3592523f4821e779dbc1cbee9b1f15c03b4033959d', '[\"*\"]', '2022-08-16 14:32:30', '2022-08-16 14:32:19', '2022-08-16 14:32:30'),
(2940, 'App\\User', 872, 'qixerapi_keys', 'dcd41f1aa534d4a74254d195e3b5cfcbd6ec1f13e400ab6680f8df4743a70354', '[\"*\"]', '2022-08-17 10:03:22', '2022-08-17 09:48:33', '2022-08-17 10:03:22'),
(2941, 'App\\User', 872, 'qixerapi_keys', 'ffd22684f7290c1d20591e090a33eba6bfd1070b750e90da0f98bcae5a02e4d7', '[\"*\"]', '2022-08-24 22:05:05', '2022-08-17 10:03:23', '2022-08-24 22:05:05'),
(2949, 'App\\User', 873, 'qixerapi_keys', '8d0db403ac87d6d2864a24f9bdb72e61c376d9e720ba54c9d9fc1f377d4b4e48', '[\"*\"]', '2022-08-17 14:55:01', '2022-08-17 14:51:05', '2022-08-17 14:55:01'),
(2952, 'App\\User', 874, 'qixerapi_keys', 'd0578c280f5a2f865eec603fc0a7ca24495986df42e8d1907635a973a4927aad', '[\"*\"]', '2022-08-17 19:14:44', '2022-08-17 19:14:43', '2022-08-17 19:14:44'),
(2953, 'App\\User', 875, 'qixerapi_keys', 'e3f89a324e59a9e00c192935b1c2c7fa553118beeadb74faa26490620773dfbf', '[\"*\"]', '2022-08-17 23:29:43', '2022-08-17 23:27:10', '2022-08-17 23:29:43'),
(2958, 'App\\User', 427, 'qixerapi_keys', 'c5c71e81dba5ef039852e0b3e4ede64d4d05bc61846d92e192ec9da4dcdaee23', '[\"*\"]', '2022-08-18 01:32:02', '2022-08-18 01:31:41', '2022-08-18 01:32:02'),
(2959, 'App\\User', 614, 'qixerapi_keys', 'e070109d49b78736fb11f915b476615c4530abd321d2e7688e4e5e3bc8d0e890', '[\"*\"]', '2022-08-18 01:58:07', '2022-08-18 01:57:58', '2022-08-18 01:58:07'),
(2968, 'App\\User', 877, 'qixerapi_keys', 'd1bff1198388e25328806dc57cbc24416bb84603d25d3bd6621764ae4460997e', '[\"*\"]', '2022-08-18 15:49:39', '2022-08-18 15:48:26', '2022-08-18 15:49:39'),
(2984, 'App\\User', 880, 'qixerapi_keys', '88f353fd83713b3e92c9d228bdf48bd4efcff33de412d76517136bbb9198748f', '[\"*\"]', NULL, '2022-08-19 03:26:48', '2022-08-19 03:26:48'),
(2986, 'App\\User', 882, 'qixerapi_keys', '3ba7a3b2d85cbd4d151c1ea1d90b4cb82d6727ed18529104ff605c2fc91bcc75', '[\"*\"]', NULL, '2022-08-19 04:14:58', '2022-08-19 04:14:58'),
(2987, 'App\\User', 882, 'qixerapi_keys', '5faf4496967cc223040196567a54fb766e1b6d956acdac5f1c31b37a478c176c', '[\"*\"]', '2022-08-19 04:15:45', '2022-08-19 04:15:44', '2022-08-19 04:15:45'),
(2988, 'App\\User', 883, 'qixerapi_keys', '4141ed4b5c9f3c57f6b496cc27a130013a861e7b9304ab5962547f298635c74a', '[\"*\"]', NULL, '2022-08-19 04:19:57', '2022-08-19 04:19:57'),
(2989, 'App\\User', 884, 'qixerapi_keys', 'ef106090ba32691ec3952075649cd5ab208d7f8f556965839848bd4dad6a2a78', '[\"*\"]', NULL, '2022-08-19 04:20:58', '2022-08-19 04:20:58'),
(2990, 'App\\User', 885, 'qixerapi_keys', '2f03762be11f1994f854c784701f8a964d2e240a9b98c208716f26c68249d375', '[\"*\"]', '2022-08-19 04:22:58', '2022-08-19 04:21:50', '2022-08-19 04:22:58'),
(2991, 'App\\User', 357, 'qixerapi_keys', 'e2e954a387e4e8e609502fd948176d6c4a29e16dd932f46b65ae88dbf4ed31b3', '[\"*\"]', '2022-08-19 04:43:47', '2022-08-19 04:43:14', '2022-08-19 04:43:47'),
(2999, 'App\\User', 886, 'qixerapi_keys', '52ce4d392e9df271d5b21aae4202116eea584f61dbdf0a9cc9cf0ba47ab7e4e1', '[\"*\"]', '2022-08-19 20:21:17', '2022-08-19 10:16:16', '2022-08-19 20:21:17'),
(3008, 'App\\User', 882, 'qixerapi_keys', 'e29d57789bfd926825d97885f4554aca332907b890e5115341b69c52f3aaa95f', '[\"*\"]', '2022-08-19 11:44:28', '2022-08-19 11:44:26', '2022-08-19 11:44:28'),
(3011, 'App\\User', 887, 'qixerapi_keys', '9b9e7a5e628feb7544b109ff5ffc1eb5fc738f25811da0e5d9ddc8d4ce7e4f93', '[\"*\"]', NULL, '2022-08-19 12:33:55', '2022-08-19 12:33:55'),
(3012, 'App\\User', 888, 'qixerapi_keys', '98029b2fb0cb1c9bbb484406997da40082e853736671bee6b85c8e49fd48d38b', '[\"*\"]', NULL, '2022-08-19 12:36:20', '2022-08-19 12:36:20'),
(3013, 'App\\User', 889, 'qixerapi_keys', 'c556b21c5d817b1e5592234c8c4c14e3a4dbd735fbb8d190027b423eae85175b', '[\"*\"]', NULL, '2022-08-19 12:37:57', '2022-08-19 12:37:57'),
(3014, 'App\\User', 888, 'qixerapi_keys', 'b860e5717e9d7bf1c92982ed9ed65d1d07d01a725bcf8c920d11ca3821b84e3f', '[\"*\"]', '2022-08-22 06:31:56', '2022-08-19 12:38:34', '2022-08-22 06:31:56'),
(3015, 'App\\User', 789, 'qixerapi_keys', '0cea961e4d3485ba14e35e0a49d44e05a19150425dc50006f8b793e764fd903f', '[\"*\"]', '2022-08-26 13:12:06', '2022-08-19 12:54:42', '2022-08-26 13:12:06'),
(3016, 'App\\User', 890, 'qixerapi_keys', 'e07f636a8831524e81d3429f0fb667fd9a86f63162ee3963b04f3addcaad95b3', '[\"*\"]', '2022-11-24 21:10:32', '2022-08-19 13:23:21', '2022-11-24 21:10:32'),
(3024, 'App\\User', 882, 'qixerapi_keys', 'd649c635f268c4a2185a35e6bb4b0f56afc3af46beacc1523913ba468a0f5b5e', '[\"*\"]', '2022-08-19 14:12:05', '2022-08-19 14:11:45', '2022-08-19 14:12:05'),
(3025, 'App\\User', 891, 'qixerapi_keys', '75daee5265878be50b9cb320e2d2c5faf7c32603529fcb68a906935250a1d357', '[\"*\"]', '2022-08-19 14:56:46', '2022-08-19 14:56:09', '2022-08-19 14:56:46'),
(3027, 'App\\User', 892, 'qixerapi_keys', 'ad29173b4215c67ac07e7da17824f7ceaeb349311be807fa59af44df6c60923d', '[\"*\"]', '2022-08-20 05:20:34', '2022-08-19 15:09:47', '2022-08-20 05:20:34'),
(3032, 'App\\User', 829, 'qixerapi_keys', '3baba50dfd220164112a79e9ccdb9fc687052dc6afe0beaef6e0e12b396f214f', '[\"*\"]', '2022-08-24 04:11:43', '2022-08-19 19:12:33', '2022-08-24 04:11:43'),
(3033, 'App\\User', 886, 'qixerapi_keys', 'e164770ac392f39193fd99dc0c079d84666ed726057ee9f9eb850b9f3c0c443c', '[\"*\"]', '2022-08-20 13:33:55', '2022-08-19 20:21:18', '2022-08-20 13:33:55'),
(3034, 'App\\User', 893, 'qixerapi_keys', '881cb5a707a27e539b540bc74c1b71a6c30e3d4915e5189a58e526cbe1067f4f', '[\"*\"]', NULL, '2022-08-19 20:31:50', '2022-08-19 20:31:50'),
(3047, 'App\\User', 876, 'qixerapi_keys', '0a2f9884cdb253e41e725efde7af9f7b579bd0d59cb36fe9242725d77cb0fb5d', '[\"*\"]', '2022-08-19 23:29:00', '2022-08-19 22:39:25', '2022-08-19 23:29:00'),
(3049, 'App\\User', 876, 'qixerapi_keys', '3146184061bbebbcf20bd30ff43455b1f95534d5a06943b95011e37436b00853', '[\"*\"]', '2022-08-20 21:06:07', '2022-08-19 23:29:02', '2022-08-20 21:06:07'),
(3050, 'App\\User', 427, 'qixerapi_keys', '2984ca5ab8920846dcaf4e077deeee9a234319085131d16dba0011f449dffb22', '[\"*\"]', '2022-08-20 00:45:31', '2022-08-20 00:45:16', '2022-08-20 00:45:31'),
(3051, 'App\\User', 895, 'qixerapi_keys', '433e79d8b4e9238c5c57e00189092165fa4934ed95fa11100106ff95a86fc8a2', '[\"*\"]', '2022-08-20 02:04:32', '2022-08-20 02:04:31', '2022-08-20 02:04:32'),
(3052, 'App\\User', 892, 'qixerapi_keys', '42cc9fd51c8271b3efc51d093a2a9597c55d0a69b1ef1a9efaee06a11a11bf3c', '[\"*\"]', '2022-08-20 05:20:36', '2022-08-20 05:20:35', '2022-08-20 05:20:36'),
(3056, 'App\\User', 310, 'qixerapi_keys', '9e1e6a985db381122ac5c2d651bc9215c565317a04612656d7c2a45b3974dd00', '[\"*\"]', '2022-08-20 07:49:36', '2022-08-20 07:49:33', '2022-08-20 07:49:36'),
(3059, 'App\\User', 304, 'qixerapi_keys', '2ad4e3e6231b0d304a655dffcc24124f527e9058e823c8602efd690730a153e6', '[\"*\"]', '2022-08-20 09:01:04', '2022-08-20 09:00:50', '2022-08-20 09:01:04'),
(3062, 'App\\User', 886, 'qixerapi_keys', 'e84da74ae1c10e62198aca6a6a35d3041e7aff51730b5dc64f8afe4d6c3fb587', '[\"*\"]', '2022-08-20 13:33:57', '2022-08-20 13:33:56', '2022-08-20 13:33:57'),
(3064, 'App\\User', 876, 'qixerapi_keys', '24c3b36b68edd869dae13359d1f8e3c04ffb05d6d81d575f7a2a68092d625284', '[\"*\"]', '2022-08-20 23:00:19', '2022-08-20 21:06:09', '2022-08-20 23:00:19'),
(3066, 'App\\User', 876, 'qixerapi_keys', 'a5faaa25ca473f74d88ee7831ce213aa7c975a67b7be197af5fedd5478a93bc6', '[\"*\"]', '2022-08-21 22:15:26', '2022-08-20 23:00:20', '2022-08-21 22:15:26'),
(3076, 'App\\User', 897, 'qixerapi_keys', '829f5037f393340c895c61e854c938dd4d237c6777a0babafaa74bc202ceb247', '[\"*\"]', '2022-08-21 07:03:19', '2022-08-21 05:58:49', '2022-08-21 07:03:19'),
(3077, 'App\\User', 897, 'qixerapi_keys', '452574e9cf357994af20063883f7435f1e3173c1912ad9356ab62a1b636b7aa3', '[\"*\"]', '2022-08-27 01:16:52', '2022-08-21 07:03:21', '2022-08-27 01:16:52'),
(3079, 'App\\User', 898, 'qixerapi_keys', '0354301f4a1d32f18d771dcc5f580a6a6dd910123b3c955f2a36b2ef4578f839', '[\"*\"]', '2022-08-21 08:43:40', '2022-08-21 08:42:32', '2022-08-21 08:43:40'),
(3080, 'App\\User', 899, 'qixerapi_keys', 'e5b70e4d6f5d8f2834a0bd01cfafa3d8b0592786a252c17ded118e5198b270f8', '[\"*\"]', '2022-08-21 10:20:16', '2022-08-21 10:18:18', '2022-08-21 10:20:16'),
(3081, 'App\\User', 900, 'qixerapi_keys', 'd2268816216a2767db7fc364ad5111814f53977a7dd7b62b1069e74e8c57345f', '[\"*\"]', '2022-08-30 12:28:58', '2022-08-21 10:28:44', '2022-08-30 12:28:58'),
(3082, 'App\\User', 519, 'qixerapi_keys', '4982e4167746dc827649d40993b47420de0b2b241ca8043deed7d6268043f603', '[\"*\"]', '2022-08-21 11:22:36', '2022-08-21 11:21:38', '2022-08-21 11:22:36'),
(3084, 'App\\User', 767, 'qixerapi_keys', 'fb7b822bbba982111c53a74e1d3ce14e945ca5ed6a325b21929d08f47ba50694', '[\"*\"]', '2022-08-21 14:01:36', '2022-08-21 12:09:53', '2022-08-21 14:01:36'),
(3086, 'App\\User', 767, 'qixerapi_keys', 'ac1433aeb6617921d8c1d123a050d9fb7146496935d49d0a5c9820f6538d8e00', '[\"*\"]', '2022-08-21 18:36:24', '2022-08-21 14:01:37', '2022-08-21 18:36:24'),
(3087, 'App\\User', 519, 'qixerapi_keys', 'b4a91727af9e44583ff0ba835917686cea7b3bdc86f7b0b243c934eb2d443d78', '[\"*\"]', '2022-08-21 15:52:45', '2022-08-21 15:49:58', '2022-08-21 15:52:45'),
(3090, 'App\\User', 767, 'qixerapi_keys', '72b8315fae7113cd3ba04a4768f7513c10448b997899d3b7c6ccc5cbcb3f8e06', '[\"*\"]', '2022-09-01 11:36:39', '2022-08-21 18:36:25', '2022-09-01 11:36:39'),
(3092, 'App\\User', 876, 'qixerapi_keys', 'e1ccb6c97780b7841b89621339d02f6461b6662c5b89fb2fe5bdabad0ebd2090', '[\"*\"]', '2022-08-22 22:23:17', '2022-08-21 22:15:28', '2022-08-22 22:23:17'),
(3094, 'App\\User', 902, 'qixerapi_keys', '30b96e9ef881ca829b939aed258ea0a8dcb9fa3dbda47ff883cee832945505cd', '[\"*\"]', '2022-08-22 03:13:58', '2022-08-22 02:55:04', '2022-08-22 03:13:58'),
(3098, 'App\\User', 786, 'qixerapi_keys', '887bb577c3b03b065e79d2f9eb5a14bb7035c324aba83304e5d2cc90d3940bb4', '[\"*\"]', '2022-08-22 03:25:40', '2022-08-22 03:25:36', '2022-08-22 03:25:40'),
(3099, 'App\\User', 375, 'qixerapi_keys', '9d448a4580ea31ce2bc8f1dc09e5f7ee7ffa086da8e650ef903e82f49291443f', '[\"*\"]', '2022-08-22 04:44:08', '2022-08-22 04:42:46', '2022-08-22 04:44:08'),
(3100, 'App\\User', 519, 'qixerapi_keys', 'bbf47dc372b55d5b9be2770fb05b8d5f6e1d6da2805aaf099f06749a72e76bf9', '[\"*\"]', '2022-08-22 05:09:30', '2022-08-22 05:09:29', '2022-08-22 05:09:30'),
(3101, 'App\\User', 888, 'qixerapi_keys', 'c4ee91db264680c81e1ed5aa16ff269e9867b07cbbaa660940940e1947b2d2c1', '[\"*\"]', '2022-08-22 09:46:28', '2022-08-22 06:31:57', '2022-08-22 09:46:28'),
(3102, 'App\\User', 613, 'qixerapi_keys', '703198a32dadb305b1553d099108b65a6d85270909c85769acb1e3f118d0a13f', '[\"*\"]', '2022-08-22 08:19:06', '2022-08-22 08:19:05', '2022-08-22 08:19:06'),
(3103, 'App\\User', 664, 'qixerapi_keys', '485db2ba27c8491dc5ddcede6c3a69981704f840fdd6ec058abcc02b4a87a45b', '[\"*\"]', NULL, '2022-08-22 08:49:15', '2022-08-22 08:49:15'),
(3105, 'App\\User', 888, 'qixerapi_keys', '5b46861c2fb094e12910b82187a1ef0930d611b55f8b8e96f4b8337e8525452b', '[\"*\"]', '2022-08-22 10:45:09', '2022-08-22 09:46:30', '2022-08-22 10:45:09'),
(3106, 'App\\User', 866, 'qixerapi_keys', 'c4480430a3069ba0835f86b7cb7dc412129999060d54f580437921892a8cc1bb', '[\"*\"]', '2022-08-22 09:47:31', '2022-08-22 09:47:31', '2022-08-22 09:47:31'),
(3109, 'App\\User', 888, 'qixerapi_keys', '2f493a1a17f6d17df78d2e6a27711e0793c5fdc3a3fd536b7883796493e63614', '[\"*\"]', '2022-08-22 20:02:40', '2022-08-22 10:45:10', '2022-08-22 20:02:40'),
(3113, 'App\\User', 778, 'qixerapi_keys', 'b65a1e15dc470d9c5d5d5af2d3f53b62756bb4d1b96d638878d3cfd86337adf7', '[\"*\"]', '2022-08-23 00:18:59', '2022-08-22 14:02:22', '2022-08-23 00:18:59'),
(3114, 'App\\User', 519, 'qixerapi_keys', '9e66788e2305d85b4bbef690f4fe0a628e0433c8709cd1a993551e286ae83c64', '[\"*\"]', '2022-08-22 14:26:08', '2022-08-22 14:25:39', '2022-08-22 14:26:08'),
(3115, 'App\\User', 888, 'qixerapi_keys', '725d92ab5a638297435507c857c0b4e71a7f34af40f7e21bcc81afcd0f6ac5d5', '[\"*\"]', '2022-08-22 21:43:11', '2022-08-22 20:02:41', '2022-08-22 21:43:11'),
(3119, 'App\\User', 888, 'qixerapi_keys', 'a855c81c755225b4b512d31692a3c2acce889dc3e1d26e7cf5c44af1b2d38da0', '[\"*\"]', '2022-08-23 01:44:24', '2022-08-22 21:43:12', '2022-08-23 01:44:24'),
(3121, 'App\\User', 876, 'qixerapi_keys', 'a8fcc0b779b2f9deaa3aaeb70dfa9693f31d774dce8526af41ea08d2de574863', '[\"*\"]', '2022-08-22 22:24:43', '2022-08-22 22:23:18', '2022-08-22 22:24:43'),
(3122, 'App\\User', 876, 'qixerapi_keys', '450857a95360a06adbe770a6d09f008a3fbd068c613031a5ce70b4f7ccb0ac4a', '[\"*\"]', '2022-09-14 04:33:23', '2022-08-22 22:24:44', '2022-09-14 04:33:23'),
(3124, 'App\\User', 519, 'qixerapi_keys', '445fdafece94341974beac6096cee276ca34d435a2d54984613c124cb5de1b79', '[\"*\"]', '2022-08-22 23:12:51', '2022-08-22 23:12:50', '2022-08-22 23:12:51'),
(3126, 'App\\User', 778, 'qixerapi_keys', '843529ae108b21103a76885bb1aff9fb680a6d3de9a57c802cba42daff1ca3de', '[\"*\"]', '2022-08-23 00:24:27', '2022-08-23 00:19:00', '2022-08-23 00:24:27'),
(3127, 'App\\User', 888, 'qixerapi_keys', '2baa9056dd64e4639273fb79967e39505f8708fe21604427349ccde30fe23d0b', '[\"*\"]', '2022-08-30 03:06:34', '2022-08-23 01:44:27', '2022-08-30 03:06:34'),
(3133, 'App\\User', 433, 'qixerapi_keys', 'e9c66fb5867ff3defc85ec344662bb6ecefaf0719256f4c60ccbeff299dd84bb', '[\"*\"]', '2022-08-23 05:29:29', '2022-08-23 05:01:03', '2022-08-23 05:29:29'),
(3135, 'App\\User', 904, 'qixerapi_keys', '287b2febb261038b5ca50d885462bc6ee1d733b4ab2a3702e2a656fc6b864c90', '[\"*\"]', NULL, '2022-08-23 05:16:34', '2022-08-23 05:16:34'),
(3136, 'App\\User', 905, 'qixerapi_keys', 'a0b23bd93e144beba0946cebc6eae409ff619c817ce6d03ab60d80209ad16503', '[\"*\"]', '2022-08-23 05:18:59', '2022-08-23 05:17:54', '2022-08-23 05:18:59');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(3145, 'App\\User', 906, 'qixerapi_keys', '48e84f94f9b8d50d61b073cf3f2e6fe49721021bcea72bfb1f8735a722ab60e1', '[\"*\"]', NULL, '2022-08-23 12:27:59', '2022-08-23 12:27:59'),
(3149, 'App\\User', 433, 'qixerapi_keys', '32678b6c980e6fa4b2b17557097f9f785b8f3a0dc0a03b7ca7eaeacd249b956c', '[\"*\"]', '2022-08-23 16:33:02', '2022-08-23 16:22:13', '2022-08-23 16:33:02'),
(3151, 'App\\User', 433, 'qixerapi_keys', '351a7b17004d1e1d60441c3f9ed98e2386449f054354fa80a2a0c58afb997a57', '[\"*\"]', '2022-08-23 16:39:36', '2022-08-23 16:39:35', '2022-08-23 16:39:36'),
(3152, 'App\\User', 433, 'qixerapi_keys', 'e87ff1f9d3c56a0ada81dc926a37ed4a9ee15efc2165adbcc5bd26446581399d', '[\"*\"]', '2022-08-23 16:55:05', '2022-08-23 16:53:57', '2022-08-23 16:55:05'),
(3163, 'App\\User', 829, 'qixerapi_keys', '64f17d2d9869e818ef762e2897ea422560cb5c2957ca674dfc2a9c10d6d1e80b', '[\"*\"]', NULL, '2022-08-24 04:11:44', '2022-08-24 04:11:44'),
(3167, 'App\\User', 911, 'qixerapi_keys', '0e9e0adf1fdcae7070f2719c5b7cfee25b30c22ce9ef718d7441fe503c59f252', '[\"*\"]', NULL, '2022-08-24 08:21:07', '2022-08-24 08:21:07'),
(3168, 'App\\User', 912, 'qixerapi_keys', '7ebb6d9dd62f71e9bcf3a5329c42785d3885eded22e4f4900d52ddebee5a975c', '[\"*\"]', '2022-08-24 08:31:36', '2022-08-24 08:22:53', '2022-08-24 08:31:36'),
(3169, 'App\\User', 913, 'qixerapi_keys', '0ad5ca1fb354148df7dfe9c719d8dd975027face28878fe986c1cb7db71cf42b', '[\"*\"]', NULL, '2022-08-24 09:55:29', '2022-08-24 09:55:29'),
(3170, 'App\\User', 913, 'qixerapi_keys', 'eb3d896e85a168db078c4c28215f6cc0ad7114ae995b9af26ef5af2ae85046c2', '[\"*\"]', NULL, '2022-08-24 09:56:51', '2022-08-24 09:56:51'),
(3174, 'App\\User', 749, 'qixerapi_keys', '2c28d5823775fb741276d7e96fe6f1beeeb7c057786302030f8f6b419c3e1725', '[\"*\"]', NULL, '2022-08-24 13:03:43', '2022-08-24 13:03:43'),
(3176, 'App\\User', 914, 'qixerapi_keys', 'f7e08e8da5023bb3491085fabfe27e12d6a3ba83bf90f7d5a1641d51d3ce1fd0', '[\"*\"]', NULL, '2022-08-24 19:22:58', '2022-08-24 19:22:58'),
(3177, 'App\\User', 914, 'qixerapi_keys', '67d2edd49dc8243192a484a96f135a8c15ac301b2163fb4d7541be5dbfdd13a6', '[\"*\"]', NULL, '2022-08-24 19:23:02', '2022-08-24 19:23:02'),
(3178, 'App\\User', 914, 'qixerapi_keys', '56877d01eb2229d417e714015ac05d0c2eb7c7220607e394ae567c200a49aab2', '[\"*\"]', NULL, '2022-08-24 19:23:05', '2022-08-24 19:23:05'),
(3179, 'App\\User', 914, 'qixerapi_keys', '38336c1e6d3a9788e5351fbdeefecc5932de0021b06dc4ba8169c977fd8d00ce', '[\"*\"]', NULL, '2022-08-24 19:23:32', '2022-08-24 19:23:32'),
(3180, 'App\\User', 914, 'qixerapi_keys', 'a9fcafaf1405f2bf2198add299a25c100e895d40c894cdb2360633e51fe3509e', '[\"*\"]', NULL, '2022-08-24 19:26:55', '2022-08-24 19:26:55'),
(3181, 'App\\User', 915, 'qixerapi_keys', '5ca96d2abc493ca4def9277f6b13f944ac75c46cf042025fefc3f63db6ad723e', '[\"*\"]', NULL, '2022-08-24 19:37:56', '2022-08-24 19:37:56'),
(3183, 'App\\User', 872, 'qixerapi_keys', '81399fd5875fa8ac9099d5e3cf34307525a523fde631c822bc96310b6a299187', '[\"*\"]', '2022-08-24 22:17:34', '2022-08-24 22:05:07', '2022-08-24 22:17:34'),
(3184, 'App\\User', 872, 'qixerapi_keys', '72f8690012b35e76faa000274d687747d3f2256e65a0b00ce84db178ad158bb4', '[\"*\"]', '2022-08-24 22:22:06', '2022-08-24 22:17:35', '2022-08-24 22:22:06'),
(3186, 'App\\User', 876, 'qixerapi_keys', 'c5139facb8b39a3374fd96f6c3860a45d1ba8252f2585f0e3bbe31f9c65fa332', '[\"*\"]', NULL, '2022-08-24 22:25:15', '2022-08-24 22:25:15'),
(3187, 'App\\User', 876, 'qixerapi_keys', 'e2d4f9b03a4d1bd95759040b1f240367615c12f85ba01ccd22dc0db6da3930e9', '[\"*\"]', NULL, '2022-08-24 22:26:00', '2022-08-24 22:26:00'),
(3188, 'App\\User', 876, 'qixerapi_keys', 'a0ab7454b7b5faffb201dcec617adb7df4284635a8d2d7d14e3e6c45cbb665e1', '[\"*\"]', NULL, '2022-08-24 22:27:46', '2022-08-24 22:27:46'),
(3189, 'App\\User', 876, 'qixerapi_keys', '756629fa6aee0117759c05664676d5c197ad83f303371126e5abfc3c17726a49', '[\"*\"]', NULL, '2022-08-24 22:32:09', '2022-08-24 22:32:09'),
(3190, 'App\\User', 876, 'qixerapi_keys', '5224dc27649bbedc96caf11ce432e1dc5b23fc8f09dbcd778ae5dd10c8fb59c0', '[\"*\"]', NULL, '2022-08-24 22:32:37', '2022-08-24 22:32:37'),
(3191, 'App\\User', 916, 'qixerapi_keys', 'b75c503348945c58e6d690bdc55d94ce73713f146a3c2023b14a85b3545d9ffc', '[\"*\"]', NULL, '2022-08-24 22:39:33', '2022-08-24 22:39:33'),
(3192, 'App\\User', 916, 'qixerapi_keys', 'c04b312e43385f2f84c8808160e0f911fc0bcd6908023448c90584dbb3b2ee5c', '[\"*\"]', NULL, '2022-08-24 22:39:52', '2022-08-24 22:39:52'),
(3193, 'App\\User', 916, 'qixerapi_keys', '60ab52c64bb450f3381ee00a2c45c816c5efe66c89db8e387473e6aaed33c26f', '[\"*\"]', NULL, '2022-08-24 22:39:58', '2022-08-24 22:39:58'),
(3194, 'App\\User', 916, 'qixerapi_keys', 'f74aa6d24db19f9ceb58e2a69079c2e974a7a8d51e120f7f146d7e19bb0dfeff', '[\"*\"]', NULL, '2022-08-24 22:40:33', '2022-08-24 22:40:33'),
(3195, 'App\\User', 916, 'qixerapi_keys', '7e1b50f8a18e1a4f535df25d33ddf0eadd414ac0c96e101120b6a726b3c224ec', '[\"*\"]', NULL, '2022-08-24 22:41:43', '2022-08-24 22:41:43'),
(3196, 'App\\User', 916, 'qixerapi_keys', 'a388a4dc7b4203f7fde6f6b121791a9825b7f49670278087140ba0b6e20ea1f7', '[\"*\"]', NULL, '2022-08-24 22:42:13', '2022-08-24 22:42:13'),
(3197, 'App\\User', 916, 'qixerapi_keys', '13cb565b4ba3671f590368bd51e99b83763dd1c491279e0c4b762cf6266589b4', '[\"*\"]', NULL, '2022-08-24 22:42:17', '2022-08-24 22:42:17'),
(3198, 'App\\User', 917, 'qixerapi_keys', 'cb698b14d6dc847948aded7dfddb64e0fdaf91789c6cb4fd519e712d85d96fff', '[\"*\"]', '2022-08-24 22:50:57', '2022-08-24 22:44:24', '2022-08-24 22:50:57'),
(3201, 'App\\User', 918, 'qixerapi_keys', '84d1081d0354a1965a713baef2654b83a21051cceaa2b6068eb2217de162757e', '[\"*\"]', NULL, '2022-08-25 03:12:19', '2022-08-25 03:12:19'),
(3202, 'App\\User', 918, 'qixerapi_keys', 'a26775ae216b6f1cc02c524de36f9cde475e53c984ca13b5cc9dff71d304a586', '[\"*\"]', NULL, '2022-08-25 03:12:29', '2022-08-25 03:12:29'),
(3203, 'App\\User', 918, 'qixerapi_keys', '4e6d16aee7670a92614d1089a7856f8fb0f14fd569c1ac1ca83c98f187da5c5b', '[\"*\"]', NULL, '2022-08-25 03:14:39', '2022-08-25 03:14:39'),
(3204, 'App\\User', 918, 'qixerapi_keys', '81cfe874f88ffd1ebfd0ef6c9b53e5008b331b0124f0251df4a7e4ee11d8e1bd', '[\"*\"]', NULL, '2022-08-25 03:14:42', '2022-08-25 03:14:42'),
(3205, 'App\\User', 918, 'qixerapi_keys', '5bf5563f1fa3e580b90c922559fd31f52bfbb446241c355d48f101d965241748', '[\"*\"]', NULL, '2022-08-25 03:15:08', '2022-08-25 03:15:08'),
(3206, 'App\\User', 918, 'qixerapi_keys', '49aa6073ebd91a5638f61a5ca00f29ddfa8423de6778b30f211a114952f8cd50', '[\"*\"]', NULL, '2022-08-25 03:16:20', '2022-08-25 03:16:20'),
(3207, 'App\\User', 918, 'qixerapi_keys', '3a7c0ae081f887343a76f50cf4bbdd356759d0742d5f8b33831c9525c5429f2c', '[\"*\"]', NULL, '2022-08-25 03:26:23', '2022-08-25 03:26:23'),
(3216, 'App\\User', 920, 'qixerapi_keys', 'adc6b9477a3ba2b8ef7318094a7666611f0f177c98ba27193b4c05f5fcb06a01', '[\"*\"]', '2022-08-25 12:04:06', '2022-08-25 10:45:08', '2022-08-25 12:04:06'),
(3220, 'App\\User', 920, 'qixerapi_keys', '3788fa27fcbf181c680415e15e39c72ae993136671c592b79abf2bf3b28307f7', '[\"*\"]', '2022-08-25 12:04:13', '2022-08-25 12:04:07', '2022-08-25 12:04:13'),
(3222, 'App\\User', 433, 'qixerapi_keys', '5a6e72044409813b0546e826379b2a8fc003dc9e2882ab46341189f0c1baead5', '[\"*\"]', '2022-08-25 13:47:05', '2022-08-25 13:47:03', '2022-08-25 13:47:05'),
(3223, 'App\\User', 923, 'qixerapi_keys', '9625a4159cc859798b70cc43afa8a86ef47d8346a8bbedd6a43a9d008ac560b6', '[\"*\"]', NULL, '2022-08-25 15:45:07', '2022-08-25 15:45:07'),
(3224, 'App\\User', 924, 'qixerapi_keys', '91506bc653566febd3bf82c3d1db1ac61bd2d700532a323dae2598c749d14223', '[\"*\"]', '2022-08-25 15:49:06', '2022-08-25 15:46:22', '2022-08-25 15:49:06'),
(3228, 'App\\User', 925, 'qixerapi_keys', 'f8a69bd5f4eacecbe2f8d6c80b93237d6f36507aaef70cb716cd0a7b34038c42', '[\"*\"]', NULL, '2022-08-25 16:25:30', '2022-08-25 16:25:30'),
(3232, 'App\\User', 926, 'qixerapi_keys', '141b7c6b40194c5a9262f2f523df927b155100500dcf5de50cccd4d9598c41fa', '[\"*\"]', NULL, '2022-08-25 22:05:24', '2022-08-25 22:05:24'),
(3233, 'App\\User', 865, 'qixerapi_keys', '654dc44d3f5a84daebf937246b000802a33074718905a85780315aabde302ebc', '[\"*\"]', NULL, '2022-08-25 20:14:26', '2022-08-25 20:14:26'),
(3235, 'App\\User', 928, 'qixerapi_keys', '1dce7a60cb53654f17bcd46fa2e61909d082a6f6f634e0cf386ecc1004365c29', '[\"*\"]', NULL, '2022-08-25 21:40:13', '2022-08-25 21:40:13'),
(3236, 'App\\User', 928, 'qixerapi_keys', '864364270173444e0ccabf0a45493114e3bbc22d3d2059a4454eeb77b35db352', '[\"*\"]', NULL, '2022-08-25 21:41:16', '2022-08-25 21:41:16'),
(3237, 'App\\User', 555, 'qixerapi_keys', '894334fab25b90c0c84ba34958871c6bb4141e3a3356926ab46b625452d24a12', '[\"*\"]', NULL, '2022-08-25 22:02:39', '2022-08-25 22:02:39'),
(3238, 'App\\User', 555, 'qixerapi_keys', '162c559c016dd0cb8a4f56970f72e0cec555740818acf7d9fae05ceb78bbc7fa', '[\"*\"]', NULL, '2022-08-25 22:03:28', '2022-08-25 22:03:28'),
(3240, 'App\\User', 795, 'qixerapi_keys', '7d5919c6c7ee059b7ef71fffa6dc63143b7010ef13ec903a64609ebe394530bc', '[\"*\"]', NULL, '2022-08-26 01:13:15', '2022-08-26 01:13:15'),
(3241, 'App\\User', 795, 'qixerapi_keys', 'c9c8702fc236d03d6d67584d0ced9bd7b98ea8f9238d16134890e75d6d8eed87', '[\"*\"]', NULL, '2022-08-26 01:13:32', '2022-08-26 01:13:32'),
(3243, 'App\\User', 930, 'qixerapi_keys', '76cfcf680d33f599175e55a39fdaae5eee34bb5966d9f2f4d8c0e30f2528eb55', '[\"*\"]', NULL, '2022-08-26 07:06:50', '2022-08-26 07:06:50'),
(3244, 'App\\User', 930, 'qixerapi_keys', '91d110dcf70a6bd1a2fff8f3e78c1439bb80c8101e35c10d910e4f05cd7a7b57', '[\"*\"]', '2022-08-26 07:07:15', '2022-08-26 07:07:14', '2022-08-26 07:07:15'),
(3246, 'App\\User', 789, 'qixerapi_keys', 'b9ce759da425442ced9c275ac891d04e7a616a4d10b3c4a98433c2f6666dae33', '[\"*\"]', NULL, '2022-08-26 13:12:06', '2022-08-26 13:12:06'),
(3249, 'App\\User', 900, 'qixerapi_keys', 'e0ef02de4f990f36102cc92c70d41c94ac6b4050d03949ce6a4825de32adc768', '[\"*\"]', NULL, '2022-08-26 14:30:42', '2022-08-26 14:30:42'),
(3260, 'App\\User', 897, 'qixerapi_keys', '23f67db8cb254288de7027840990490a236690bab2dda06ca181fabd5a322594', '[\"*\"]', NULL, '2022-08-27 00:28:37', '2022-08-27 00:28:37'),
(3261, 'App\\User', 897, 'qixerapi_keys', '29b929caf15abe12fdfecd104666887506ae9169b9cd694b4504dd97511adcc6', '[\"*\"]', NULL, '2022-08-27 00:29:08', '2022-08-27 00:29:08'),
(3262, 'App\\User', 897, 'qixerapi_keys', '5c4ffdb238ce7c94c2ff035f4805fa28acf63a7fff98e6ca414356a91060b8e4', '[\"*\"]', NULL, '2022-08-27 01:10:14', '2022-08-27 01:10:14'),
(3263, 'App\\User', 897, 'qixerapi_keys', 'ec02d22da8e6e7390536998c4160797c0a95c00c482772bcb080b794cc5f0c73', '[\"*\"]', NULL, '2022-08-27 01:16:54', '2022-08-27 01:16:54'),
(3265, 'App\\User', 932, 'qixerapi_keys', '7b25cdb53ab41068577dcf4a6dc7acb4e517a890c5cbdebb00450e896dfb1587', '[\"*\"]', NULL, '2022-08-27 01:34:14', '2022-08-27 01:34:14'),
(3266, 'App\\User', 932, 'qixerapi_keys', 'e5228ed6a4362e769b08917f10c55e7a610f61192372412229bfb93f2d2bb5b2', '[\"*\"]', NULL, '2022-08-27 01:37:03', '2022-08-27 01:37:03'),
(3267, 'App\\User', 932, 'qixerapi_keys', '2ff90c050acfb2f9c55064a0e14036dbb2987cb12a31e2c1b679a79efe34dda8', '[\"*\"]', NULL, '2022-08-27 01:37:08', '2022-08-27 01:37:08'),
(3268, 'App\\User', 932, 'qixerapi_keys', '9ab086d5ff39241ef93735965d3daf9fa88a9e6e31e52c797f510cb63b181f60', '[\"*\"]', NULL, '2022-08-27 01:43:25', '2022-08-27 01:43:25'),
(3271, 'App\\User', 932, 'qixerapi_keys', 'cedf5d86dc0242b3ed451309492a05f527c6033e13e8f155c7d4587dcd3f529e', '[\"*\"]', NULL, '2022-08-27 02:44:53', '2022-08-27 02:44:53'),
(3272, 'App\\User', 493, 'qixerapi_keys', '520efb017ab9ed55108d497e7439fef2886db4aba1ca926e68a9efa5f87eab1e', '[\"*\"]', NULL, '2022-08-27 02:45:48', '2022-08-27 02:45:48'),
(3273, 'App\\User', 933, 'qixerapi_keys', 'c65387bded3eab7b5df6f86128ea0e0d1925b1df1f2dee73cf96dc7712fbeddf', '[\"*\"]', NULL, '2022-08-27 02:47:12', '2022-08-27 02:47:12'),
(3274, 'App\\User', 934, 'qixerapi_keys', '3a2eaafb3bbefc644c9ac919f82db8a0b0e37bad609fab5d3be91db74f8d430c', '[\"*\"]', NULL, '2022-08-27 04:37:24', '2022-08-27 04:37:24'),
(3275, 'App\\User', 934, 'qixerapi_keys', 'cc2d988e3469e7e08917b2efb918f15c38af8b132c4f38e5c5dcf3dfa2b80c23', '[\"*\"]', '2022-08-27 04:38:20', '2022-08-27 04:37:42', '2022-08-27 04:38:20'),
(3276, 'App\\User', 934, 'qixerapi_keys', '76a372db86887c44f34a7a27350650c7c4b54cd50a569f9a5a1661ebe582c114', '[\"*\"]', '2022-08-27 04:43:09', '2022-08-27 04:43:08', '2022-08-27 04:43:09'),
(3278, 'App\\User', 932, 'qixerapi_keys', 'aa825640cead72cf3a145ea7fd798ac547467458d654fd9d2daa5181dd42d3a6', '[\"*\"]', NULL, '2022-08-27 05:36:30', '2022-08-27 05:36:30'),
(3281, 'App\\User', 935, 'qixerapi_keys', 'e5cba7e10da76fafc42b6ff8a46cb1f49c21f3e1932a185c8cb958fdb88ea592', '[\"*\"]', NULL, '2022-08-27 06:17:40', '2022-08-27 06:17:40'),
(3282, 'App\\User', 935, 'qixerapi_keys', '598d9fd8575bc4dc770b69501c7e10ab31ebcab15f940aeff94254459fa64817', '[\"*\"]', '2022-08-27 06:18:02', '2022-08-27 06:18:01', '2022-08-27 06:18:02'),
(3283, 'App\\User', 932, 'qixerapi_keys', '20e6c795d00295f502fa1f255c28b51d08d245c437b80a20cff5fe6f9243e837', '[\"*\"]', NULL, '2022-08-27 06:37:49', '2022-08-27 06:37:49'),
(3284, 'App\\User', 932, 'qixerapi_keys', 'e390acb24cf46b4177d0d6f4b08187595c36e4a5680f02e05eecca4485a10387', '[\"*\"]', NULL, '2022-08-27 06:54:06', '2022-08-27 06:54:06'),
(3285, 'App\\User', 936, 'qixerapi_keys', 'f9b336c0a74113621053e44d2dea64d1ed5b1b12a6c284966a531297c758c3d8', '[\"*\"]', '2022-08-27 06:59:44', '2022-08-27 06:56:22', '2022-08-27 06:59:44'),
(3286, 'App\\User', 936, 'qixerapi_keys', '54460a901b8d9d131e49f90ea3b21afd8db2227981ebc9506d9feaa42dca2597', '[\"*\"]', '2022-08-27 07:47:54', '2022-08-27 06:59:45', '2022-08-27 07:47:54'),
(3288, 'App\\User', 936, 'qixerapi_keys', '6663fc7a225c28eeffacf102ceb8089c0833dd604fae740b9e9ede6b6c78c1b5', '[\"*\"]', '2022-08-28 03:10:14', '2022-08-27 07:47:56', '2022-08-28 03:10:14'),
(3289, 'App\\User', 818, 'qixerapi_keys', 'e0017345af97053f5cb5c23f5cf59b1c8f5dca48cd8d26e8e5b2009e0faab726', '[\"*\"]', NULL, '2022-08-27 08:59:04', '2022-08-27 08:59:04'),
(3290, 'App\\User', 818, 'qixerapi_keys', '2565fb4322fb4c0e1ab7c4a1d763bbc34d135fa6bd131c66b27fd6e6f9a3c8cc', '[\"*\"]', NULL, '2022-08-27 08:59:11', '2022-08-27 08:59:11'),
(3292, 'App\\User', 938, 'qixerapi_keys', '3af396c65621198b045241bbb4768437d9d7bdbf2f1b5504c5f8d07cf747d391', '[\"*\"]', NULL, '2022-08-27 12:34:35', '2022-08-27 12:34:35'),
(3294, 'App\\User', 939, 'qixerapi_keys', '339bc2e7e4119884affff79d858ba78c4cc118a6c68b91e99cc98ab948318ee9', '[\"*\"]', NULL, '2022-08-27 13:13:12', '2022-08-27 13:13:12'),
(3295, 'App\\User', 940, 'qixerapi_keys', '883d134748ae3b12b5f12598e378ecbbb3cecfc8d36fc8b4415fd2fe368aeda1', '[\"*\"]', NULL, '2022-08-27 13:16:39', '2022-08-27 13:16:39'),
(3296, 'App\\User', 940, 'qixerapi_keys', '7741ec84cd1b0fa48aaaf1601ca7f08a800629060afda9286933b791a1d44449', '[\"*\"]', '2022-08-27 13:23:46', '2022-08-27 13:22:29', '2022-08-27 13:23:46'),
(3297, 'App\\User', 767, 'qixerapi_keys', 'aea8601723460f9ff103c1e76acb2be5a9044d2cc46ef4dd4887af502646806d', '[\"*\"]', NULL, '2022-08-27 15:26:03', '2022-08-27 15:26:03'),
(3298, 'App\\User', 941, 'qixerapi_keys', 'fcfc7bc54045893c7a4ffcf9cd90856c931216c6b977bb0c68d41e6dde023de1', '[\"*\"]', NULL, '2022-08-27 16:43:13', '2022-08-27 16:43:13'),
(3309, 'App\\User', 818, 'qixerapi_keys', '03c61710efb84940f7f04cfadc87c7950dd21c779dd71921e48b73ea50f906ee', '[\"*\"]', NULL, '2022-08-28 01:01:39', '2022-08-28 01:01:39'),
(3313, 'App\\User', 936, 'qixerapi_keys', 'd441749c24616c1b00a07c2c3623442489061b7e8c095bda223d89f34100b2d4', '[\"*\"]', '2022-08-28 11:18:36', '2022-08-28 03:10:15', '2022-08-28 11:18:36'),
(3315, 'App\\User', 943, 'qixerapi_keys', '2a36c9d8964ab44208117dce5915536a319e09d75a11c985c806fe5bee3f4364', '[\"*\"]', NULL, '2022-08-28 06:38:41', '2022-08-28 06:38:41'),
(3318, 'App\\User', 944, 'qixerapi_keys', 'bd6c04f0b78af3f7021c1bc8ce31597901e74ff00f1d7f1509a51210691b6217', '[\"*\"]', NULL, '2022-08-28 07:21:41', '2022-08-28 07:21:41'),
(3319, 'App\\User', 944, 'qixerapi_keys', '6425209d091c70cfa57f6a8af185bbe43bdad02375a01e3db1cd09993269f7fa', '[\"*\"]', NULL, '2022-08-28 07:25:43', '2022-08-28 07:25:43'),
(3320, 'App\\User', 945, 'qixerapi_keys', '18046779672cfd8f234fc7e40e3f624465bfc6dad9d61e1cd0470f46498e1fd1', '[\"*\"]', '2022-08-28 07:27:10', '2022-08-28 07:26:35', '2022-08-28 07:27:10'),
(3326, 'App\\User', 936, 'qixerapi_keys', '6baf7294cba5c28f4903f971adc6432fbf8e5d3f8c58abcf3179b9168ddbf6a8', '[\"*\"]', '2022-08-28 13:46:15', '2022-08-28 11:18:37', '2022-08-28 13:46:15'),
(3327, 'App\\User', 946, 'qixerapi_keys', '5ee673285fb7d9265ac26e21bfee0bbd05bce807636dd785bf279b1ed04f911a', '[\"*\"]', NULL, '2022-08-28 11:33:34', '2022-08-28 11:33:34'),
(3328, 'App\\User', 946, 'qixerapi_keys', 'f85a801008122e968a175b706a1306fe42ccd01c097eeb29f88937351b3d0f03', '[\"*\"]', '2022-08-28 11:34:48', '2022-08-28 11:34:33', '2022-08-28 11:34:48'),
(3329, 'App\\User', 936, 'qixerapi_keys', 'a880a6783c08d47f3bbe783b8e5549fac7737f0560ae05956c071da491b9a2be', '[\"*\"]', '2022-08-30 12:20:53', '2022-08-28 13:46:16', '2022-08-30 12:20:53'),
(3332, 'App\\User', 888, 'qixerapi_keys', 'da193543ec7676da8e792d0d77b373a0075af0817c52ca6ca408b01c33ce262c', '[\"*\"]', NULL, '2022-08-28 23:02:21', '2022-08-28 23:02:21'),
(3336, 'App\\User', 865, 'qixerapi_keys', '064dd69ac029ae6a28cfe1a6e875bef6e85d822e32df06ba5398bb571c139d79', '[\"*\"]', '2022-08-29 06:46:42', '2022-08-29 06:46:06', '2022-08-29 06:46:42'),
(3339, 'App\\User', 949, 'qixerapi_keys', '232e317c6733c41cdf182b8bc53600e293bfd85a55ca7f99ffce19833bf295ae', '[\"*\"]', '2022-08-29 09:50:06', '2022-08-29 09:48:58', '2022-08-29 09:50:06'),
(3340, 'App\\User', 613, 'qixerapi_keys', '2b5ef3424222af62472b8aed2574711316a67f7c4ab839611166f2a6e8d3ed58', '[\"*\"]', '2022-08-29 14:06:36', '2022-08-29 14:06:13', '2022-08-29 14:06:36'),
(3342, 'App\\User', 375, 'qixerapi_keys', '4120a86c4cdbdfa03f4951925610c567052c4fee04cee12e87976d92790d02ba', '[\"*\"]', '2022-08-29 14:28:05', '2022-08-29 14:28:04', '2022-08-29 14:28:05'),
(3343, 'App\\User', 950, 'qixerapi_keys', '7df1ce56a68ec91c8c49b3738fc7cfc9dac0e9c985a4e73f4ac0799e504d30bf', '[\"*\"]', NULL, '2022-08-29 16:58:57', '2022-08-29 16:58:57'),
(3344, 'App\\User', 829, 'qixerapi_keys', '382620c210ef71a5b9478dd304caefde5deae16e9ec455adbc640ad2d86aac2e', '[\"*\"]', '2022-08-31 23:03:08', '2022-08-29 18:52:36', '2022-08-31 23:03:08'),
(3346, 'App\\User', 888, 'qixerapi_keys', '6e543384f02b2f2aee7eed07c131eec0aa4542629ddd61cbecd9aeda1bc2ef6d', '[\"*\"]', '2022-08-30 03:06:45', '2022-08-30 03:06:35', '2022-08-30 03:06:45'),
(3347, 'App\\User', 805, 'qixerapi_keys', '2f77be13050dbc07f9bac7369c92d9decca0044d586ed534b590b6326802c899', '[\"*\"]', '2022-08-30 03:46:38', '2022-08-30 03:42:21', '2022-08-30 03:46:38'),
(3348, 'App\\User', 805, 'qixerapi_keys', '747fac5b7ade19ceea7299189fd11961b66c84545b0921957299837d1c38abaf', '[\"*\"]', '2022-08-30 03:51:09', '2022-08-30 03:46:39', '2022-08-30 03:51:09'),
(3349, 'App\\User', 951, 'qixerapi_keys', '4972f0ad2c284ed065587518240d40ef8e86b3fad720f440b8b3f6364d2763fb', '[\"*\"]', NULL, '2022-08-30 04:25:24', '2022-08-30 04:25:24'),
(3351, 'App\\User', 952, 'qixerapi_keys', 'b7f37c4b883d64292b1161f4d736124becfbd2aea42bd012480ae454193e8627', '[\"*\"]', NULL, '2022-08-30 05:01:11', '2022-08-30 05:01:11'),
(3352, 'App\\User', 954, 'qixerapi_keys', '491ad99b935767ecc7f01432f6f7c6dada29f08ae4e9af8188d76f817c40eb42', '[\"*\"]', '2022-08-31 05:54:28', '2022-08-30 05:54:01', '2022-08-31 05:54:28'),
(3354, 'App\\User', 955, 'qixerapi_keys', '42d84699861e90ae8cb84195462ede8be81787821950eeb65bee087cf5651715', '[\"*\"]', '2022-08-30 06:41:03', '2022-08-30 06:36:26', '2022-08-30 06:41:03'),
(3356, 'App\\User', 956, 'qixerapi_keys', '00903b6733f6d3266ee1980453efcd513150a135d606b948a03bee2ec7befe3f', '[\"*\"]', '2022-11-30 09:44:25', '2022-08-30 07:59:55', '2022-11-30 09:44:25'),
(3358, 'App\\User', 433, 'qixerapi_keys', '524500df2f871e61a63dbe68ef743d01732c52a1bd4b035aed499b7f6b381af5', '[\"*\"]', '2022-08-30 09:04:42', '2022-08-30 09:02:51', '2022-08-30 09:04:42'),
(3359, 'App\\User', 433, 'qixerapi_keys', '08c238b0ad17fc76bbd61165aea02a0b4d51772b28cf15271b15278267a2f081', '[\"*\"]', '2022-08-30 11:04:29', '2022-08-30 11:04:28', '2022-08-30 11:04:29'),
(3360, 'App\\User', 936, 'qixerapi_keys', '7a847df50dbf3ade4007a29a30d9a03b56c61ad2e9209217a55a3ca74940fc07', '[\"*\"]', '2022-08-30 12:20:57', '2022-08-30 12:20:55', '2022-08-30 12:20:57'),
(3361, 'App\\User', 900, 'qixerapi_keys', '52c516a95bd33745a471443ddbb21b1281999c19fa8cf9c3ec5a95f5e70aadad', '[\"*\"]', '2022-08-30 12:29:00', '2022-08-30 12:28:59', '2022-08-30 12:29:00'),
(3362, 'App\\User', 548, 'qixerapi_keys', 'a11ecd498967fa9ac9f22b34362553d1df71efd4c645490cf37e90797b9cd19f', '[\"*\"]', '2022-08-30 14:04:39', '2022-08-30 14:04:29', '2022-08-30 14:04:39'),
(3363, 'App\\User', 548, 'qixerapi_keys', 'da9c8aab5abfa5bf4841f423b9bf4c366f9e1f6d3bee9a5c08214afd9ee315e5', '[\"*\"]', '2022-08-30 14:06:07', '2022-08-30 14:05:36', '2022-08-30 14:06:07'),
(3364, 'App\\User', 747, 'qixerapi_keys', '5a0dc9a16f8eb8c0a2302eb5dc8c30a7d6dcec5292e4d4d704956cfe8ef366ec', '[\"*\"]', '2022-08-30 14:17:58', '2022-08-30 14:17:05', '2022-08-30 14:17:58'),
(3366, 'App\\User', 959, 'qixerapi_keys', 'db26dd087f6bd291b45c809aa1a67754e35f515b360bcbf3d6958f69036861cd', '[\"*\"]', '2022-08-30 20:59:35', '2022-08-30 20:58:50', '2022-08-30 20:59:35'),
(3367, 'App\\User', 960, 'qixerapi_keys', '6994031531caa934aa0ac401f579a3d79d524ad27cb5ae74d7e8217ea40fa05b', '[\"*\"]', NULL, '2022-08-30 22:22:57', '2022-08-30 22:22:57'),
(3371, 'App\\User', 954, 'qixerapi_keys', 'b44c87408117228b543f48806b1324512fada36f43d170af9c228aa67eab838f', '[\"*\"]', '2022-08-31 05:54:30', '2022-08-31 05:54:29', '2022-08-31 05:54:30'),
(3373, 'App\\User', 614, 'qixerapi_keys', 'e166c317cded9a9b23d1fa032527481501c90e4116634e5dacc9274bf68575ec', '[\"*\"]', NULL, '2022-08-31 10:29:36', '2022-08-31 10:29:36'),
(3378, 'App\\User', 548, 'qixerapi_keys', 'fc389c1806369816c975bccbd92543c642dc9f5e6c3ff72b1424fff53d811611', '[\"*\"]', '2022-08-31 13:52:21', '2022-08-31 13:51:57', '2022-08-31 13:52:21'),
(3386, 'App\\User', 829, 'qixerapi_keys', '85501a9e93ea51ca04deda5e6aa335d8798ae636ceefa159f16cd154e77116a6', '[\"*\"]', '2022-09-12 07:31:59', '2022-08-31 23:03:10', '2022-09-12 07:31:59'),
(3388, 'App\\User', 965, 'qixerapi_keys', '9ba2c0e0274b491538fbedfc160a44a4ac0ff00b13dc9aaa8ad8da3ec77e590d', '[\"*\"]', NULL, '2022-08-31 23:32:11', '2022-08-31 23:32:11'),
(3390, 'App\\User', 749, 'qixerapi_keys', '760a2cfecab6bc15e79f04dda4c88c7137e0d65c788cadffffa0e1b5f57b638f', '[\"*\"]', '2022-10-29 18:02:51', '2022-09-01 00:53:17', '2022-10-29 18:02:51'),
(3391, 'App\\User', 767, 'qixerapi_keys', '070440503cee19a866f56ece249cebafcd996170e7488f41158e12ad7f6da2e8', '[\"*\"]', '2022-09-01 20:56:01', '2022-09-01 11:36:40', '2022-09-01 20:56:01'),
(3392, 'App\\User', 967, 'qixerapi_keys', 'ed751cd5bf31919da359ed0217f8ccb3f6a30c1bc397c1c061160c9794d299f0', '[\"*\"]', '2022-09-01 12:34:39', '2022-09-01 12:33:05', '2022-09-01 12:34:39'),
(3397, 'App\\User', 768, 'qixerapi_keys', '4545841e11118301d239ad4eabfe531282c716c00955af477e1e6d334bfb5efa', '[\"*\"]', '2022-09-01 14:41:28', '2022-09-01 14:39:38', '2022-09-01 14:41:28'),
(3398, 'App\\User', 767, 'qixerapi_keys', '89df15680b1f41d328838498dc48f0744d3ec7095acf4a296991b3bef1e6a240', '[\"*\"]', '2022-09-02 05:28:32', '2022-09-01 20:56:02', '2022-09-02 05:28:32'),
(3403, 'App\\User', 969, 'qixerapi_keys', 'c7476ad02b9a4dcbd6ce17609e39b3033ed98d6f9b68ff3ac79ffbeadc95938b', '[\"*\"]', '2022-09-02 03:44:16', '2022-09-02 03:40:50', '2022-09-02 03:44:16'),
(3404, 'App\\User', 767, 'qixerapi_keys', '239ae5a4467fd7a64c31780776177b6ca53bd309e4d2b7f7bb8d0201767fa557', '[\"*\"]', '2022-09-02 19:39:49', '2022-09-02 05:28:33', '2022-09-02 19:39:49'),
(3410, 'App\\User', 483, 'qixerapi_keys', '8a96cfc8f73298cb2649509cc7c66a63f28687939da797b62073e0d99bd449e2', '[\"*\"]', '2022-09-02 10:16:28', '2022-09-02 10:16:27', '2022-09-02 10:16:28'),
(3416, 'App\\User', 972, 'qixerapi_keys', 'e1a089943b09cb209d92a916f064304943f6c290f954de4c8da277e4b681dc1f', '[\"*\"]', '2022-09-17 11:11:55', '2022-09-02 13:32:10', '2022-09-17 11:11:55'),
(3419, 'App\\User', 767, 'qixerapi_keys', '056cad019ebbf64d9e7e78c4d7f1ed357923031979dce6c4898d3b7a8801ec2a', '[\"*\"]', '2022-09-13 16:48:18', '2022-09-02 19:39:50', '2022-09-13 16:48:18'),
(3424, 'App\\User', 964, 'qixerapi_keys', 'e198d2f7de553fbf09089a92218fbfa67b3382850ebee12d440e89320bc54da1', '[\"*\"]', '2022-09-02 21:55:10', '2022-09-02 21:52:10', '2022-09-02 21:55:10'),
(3425, 'App\\User', 772, 'qixerapi_keys', 'd46e3dbb6c6322c1972c4284405fbf8e5be7cb62eefbe74db2e179edd630000e', '[\"*\"]', '2022-09-10 02:32:44', '2022-09-10 02:31:41', '2022-09-10 02:32:44'),
(3426, 'App\\User', 772, 'qixerapi_keys', '1d06f6b77bd446ae5536a06e6debb0edf19604bd3c93dcfd36df52b8d70cf19e', '[\"*\"]', '2022-09-10 02:43:53', '2022-09-10 02:32:45', '2022-09-10 02:43:53'),
(3428, 'App\\User', 976, 'qixerapi_keys', '5f20aea126851f5e495eef09c1ff985cebdbac86f7d62f023a427e8dcee37bfd', '[\"*\"]', '2022-09-11 02:19:46', '2022-09-10 05:48:04', '2022-09-11 02:19:46'),
(3431, 'App\\User', 368, 'qixerapi_keys', 'd2c68376c5805fa4eeda76a0bcacef77c22d321dccbfa249332067bc76461e89', '[\"*\"]', '2022-09-10 12:09:54', '2022-09-10 12:09:52', '2022-09-10 12:09:54'),
(3433, 'App\\User', 978, 'qixerapi_keys', '83506994e3017c34e0bf35e1e009fb8a8b058ce7f30fcf7fe30b12eb823475b3', '[\"*\"]', NULL, '2022-09-10 15:04:49', '2022-09-10 15:04:49'),
(3437, 'App\\User', 979, 'qixerapi_keys', '5aed47e8fa23c0aa6453386e9f38fc0ac6ee77e600634031389fa27e70be173d', '[\"*\"]', '2022-10-07 20:49:34', '2022-09-10 17:51:20', '2022-10-07 20:49:34'),
(3438, 'App\\User', 427, 'qixerapi_keys', 'fc35b5f2de2073786d7741fe788a5a26086149b332b1c385b7e3aad6db55c5bd', '[\"*\"]', '2022-09-10 21:17:55', '2022-09-10 21:17:43', '2022-09-10 21:17:55'),
(3439, 'App\\User', 310, 'qixerapi_keys', 'd82ea8a4013a248b377ddf6cd7445c7bd0cbae1136e86e8d3b8174d242198c2d', '[\"*\"]', '2022-09-10 22:25:38', '2022-09-10 22:25:16', '2022-09-10 22:25:38'),
(3440, 'App\\User', 976, 'qixerapi_keys', '7380caac70c4cd40cf657315d86f514accbb2e4fc5a3648c3e43bf8abed321fe', '[\"*\"]', '2022-09-11 23:14:14', '2022-09-11 02:19:48', '2022-09-11 23:14:14'),
(3446, 'App\\User', 982, 'qixerapi_keys', '35ac524af2f00e69173dcd3e774be99220da24e581a40d218fb2232f283e5261', '[\"*\"]', '2022-09-12 04:47:17', '2022-09-11 13:18:10', '2022-09-12 04:47:17'),
(3448, 'App\\User', 566, 'qixerapi_keys', '58fd5611c661c9fb96ea7c02bdd905a3afaae7e629213d67d7c7f7c33775a530', '[\"*\"]', '2022-09-11 16:14:14', '2022-09-11 16:12:44', '2022-09-11 16:14:14'),
(3449, 'App\\User', 566, 'qixerapi_keys', '6f4e7b160d59870879ba8b7c1c85b0597856336bec1d4389999c55a0e37ee3f6', '[\"*\"]', '2022-09-11 16:14:52', '2022-09-11 16:14:51', '2022-09-11 16:14:52'),
(3450, 'App\\User', 433, 'qixerapi_keys', '85fbb33f7c4c0a1a649cf4249b56662ca9d85302fec065590a305004bc0533e2', '[\"*\"]', NULL, '2022-09-11 17:47:51', '2022-09-11 17:47:51'),
(3453, 'App\\User', 983, 'qixerapi_keys', 'a1c565c34ab2e47e3cbae8de389d4690daf2cb3cf602958abdcbf708bae8b708', '[\"*\"]', '2022-09-11 23:14:53', '2022-09-11 22:49:01', '2022-09-11 23:14:53'),
(3454, 'App\\User', 976, 'qixerapi_keys', 'c3351e3ea3a2ee529b22b4b820bd377e7a95db11498115fe85f416589a11ff0b', '[\"*\"]', '2022-09-25 04:16:14', '2022-09-11 23:14:14', '2022-09-25 04:16:14'),
(3455, 'App\\User', 983, 'qixerapi_keys', '8c3ac42615713fe18c41f6fcc4c7147da8c1364d972cdeeb6cd78fba8072ccd8', '[\"*\"]', '2022-09-11 23:39:53', '2022-09-11 23:39:52', '2022-09-11 23:39:53'),
(3458, 'App\\User', 982, 'qixerapi_keys', '710d9fd36e7cdff1c8fbaa302c8d6bbf7537fc904dcb96e2a1c51f4d4a92e766', '[\"*\"]', '2022-09-12 04:47:21', '2022-09-12 04:47:19', '2022-09-12 04:47:21'),
(3460, 'App\\User', 985, 'qixerapi_keys', 'a27964137ad611da10f47c09d08c9f44454b3e0eeca1d9738a2f6c963e68910f', '[\"*\"]', '2022-09-12 07:13:17', '2022-09-12 07:11:56', '2022-09-12 07:13:17'),
(3461, 'App\\User', 829, 'qixerapi_keys', 'daf8a600946ffd262a620d72cdbdf33f748a7b6e18b3572d9719757ea9b9d8bd', '[\"*\"]', '2022-09-17 05:27:23', '2022-09-12 07:32:01', '2022-09-17 05:27:23'),
(3463, 'App\\User', 427, 'qixerapi_keys', '4429392ca78c03fa61a3712bd4bdf023f241d5372fa02eacc4a238b9af17096c', '[\"*\"]', '2022-09-12 09:06:00', '2022-09-12 09:05:29', '2022-09-12 09:06:00'),
(3466, 'App\\User', 986, 'qixerapi_keys', '379edd029977137b9d6f96f2db2be74857ab147dd099ed51b2ddd49c46ea1467', '[\"*\"]', '2022-09-12 13:29:48', '2022-09-12 13:29:47', '2022-09-12 13:29:48'),
(3468, 'App\\User', 427, 'qixerapi_keys', '20cbff7349e372ab99f2fc7b57a25b82819c33b1c6af1bbf021d82d592933605', '[\"*\"]', '2022-09-12 21:32:35', '2022-09-12 21:32:12', '2022-09-12 21:32:35'),
(3472, 'App\\User', 988, 'qixerapi_keys', '80de6e717c12e590cdb9ffc46a6f84f81e7383f61d2e905b97ff61b95c4fbd96', '[\"*\"]', NULL, '2022-09-13 05:28:56', '2022-09-13 05:28:56'),
(3473, 'App\\User', 988, 'qixerapi_keys', 'e8e43fc449129a25d29fcf16b4f3fd8158794b61fef8e0ba88ea1fbf9a51cc5a', '[\"*\"]', '2022-09-13 05:29:30', '2022-09-13 05:29:23', '2022-09-13 05:29:30'),
(3474, 'App\\User', 989, 'qixerapi_keys', '5f257daba25b32ecf22b401ac4d9c5d161ece2e95de6a1d076a76f71b1174e89', '[\"*\"]', '2022-09-13 05:48:49', '2022-09-13 05:46:43', '2022-09-13 05:48:49'),
(3477, 'App\\User', 483, 'qixerapi_keys', '6fae5dbd6fe58aa4ea13c93dcc2deb2d22dac31c99aa036d4336a83cfb9a0173', '[\"*\"]', '2022-09-13 08:53:52', '2022-09-13 08:47:28', '2022-09-13 08:53:52'),
(3478, 'App\\User', 430, 'qixerapi_keys', 'c6ac9e1003feb57d557148d58444416111daf30c4797693ebb8cdedd645c36c8', '[\"*\"]', '2022-09-13 11:23:06', '2022-09-13 11:23:05', '2022-09-13 11:23:06'),
(3480, 'App\\User', 991, 'qixerapi_keys', 'aed2c0f1300007b4ae336bcfd0ec3cb9b1e2f283312f69663524fcd09ef830a4', '[\"*\"]', '2022-09-27 08:42:11', '2022-09-13 14:43:29', '2022-09-27 08:42:11'),
(3481, 'App\\User', 767, 'qixerapi_keys', 'f258c654b953148cf6ed28264648b6e8550d04add4dcab212aa9195921277052', '[\"*\"]', '2022-09-13 19:52:43', '2022-09-13 16:48:19', '2022-09-13 19:52:43'),
(3482, 'App\\User', 992, 'qixerapi_keys', '476f2447d52ac069ebffb80075ca26428e7e5d87a0d20096fd3ec32586e56c55', '[\"*\"]', '2022-09-13 17:27:03', '2022-09-13 17:20:20', '2022-09-13 17:27:03'),
(3483, 'App\\User', 467, 'qixerapi_keys', '665ee591e76abad4b3575831afb11864e3e5e8bff5b043bb47d6e67b4e6747e7', '[\"*\"]', '2022-09-13 17:38:16', '2022-09-13 17:38:15', '2022-09-13 17:38:16'),
(3484, 'App\\User', 767, 'qixerapi_keys', '51a8cc4a3f2f8892fb3cabbb74c102b87952a30bf9a24c66e4169b62881307ce', '[\"*\"]', '2022-09-21 14:25:14', '2022-09-13 19:52:44', '2022-09-21 14:25:14'),
(3491, 'App\\User', 995, 'qixerapi_keys', '1979257251d264eac0bbd05f380a5878f052016fca9d51ba64431981799b9322', '[\"*\"]', '2022-09-14 00:27:10', '2022-09-14 00:23:32', '2022-09-14 00:27:10'),
(3492, 'App\\User', 995, 'qixerapi_keys', '77041160d2dacf8cdf33c904585d473a5a1319d2cd61d8769943bc45c1f3c1ea', '[\"*\"]', '2022-09-26 00:57:52', '2022-09-14 00:27:12', '2022-09-26 00:57:52'),
(3493, 'App\\User', 995, 'qixerapi_keys', '328274d7acb96f033725ab430b62e96b44cf2c5471dafdac27004e524384c907', '[\"*\"]', '2022-09-14 02:03:07', '2022-09-14 02:00:31', '2022-09-14 02:03:07'),
(3494, 'App\\User', 995, 'qixerapi_keys', '3b26fac90298365b1d3df2165e8f76d79065cd6a86a76a46dc334b8743fd35a5', '[\"*\"]', '2022-09-14 05:25:50', '2022-09-14 02:03:08', '2022-09-14 05:25:50'),
(3495, 'App\\User', 876, 'qixerapi_keys', '5cfc39eaca941bf11765ca693df3bb87eb8e51e6f113419549552c524d82b651', '[\"*\"]', '2022-09-20 00:17:52', '2022-09-14 04:33:24', '2022-09-20 00:17:52'),
(3496, 'App\\User', 995, 'qixerapi_keys', '212d8b4958e4e27c3b8fb0bae0d9c5a5db77aaee93c403d726e258965c2d990f', '[\"*\"]', '2022-09-14 06:24:40', '2022-09-14 05:25:52', '2022-09-14 06:24:40'),
(3497, 'App\\User', 995, 'qixerapi_keys', 'd48a08c332d18126c8119d4db1ed94dbb15850590498c9f35c1531bc9f955fe8', '[\"*\"]', '2022-09-14 06:28:22', '2022-09-14 06:24:42', '2022-09-14 06:28:22'),
(3498, 'App\\User', 995, 'qixerapi_keys', 'd21f13953fd3bd18c892c6b1f810c3b5165e37c7efb7f30ecfe9e07828bcf7be', '[\"*\"]', '2022-09-14 06:59:12', '2022-09-14 06:28:23', '2022-09-14 06:59:12'),
(3499, 'App\\User', 995, 'qixerapi_keys', '1c3d26e3c3fbc2d46d3e58efc9fc28de6d285711ee8fb2a8d2cfe0951b3a90af', '[\"*\"]', '2022-09-14 06:59:25', '2022-09-14 06:59:14', '2022-09-14 06:59:25'),
(3501, 'App\\User', 983, 'qixerapi_keys', '812c64eb47348f3fba5bd4967d0e245a106a3fa69dcdbe2eb1344f0746a28a00', '[\"*\"]', '2022-09-14 10:00:38', '2022-09-14 10:00:37', '2022-09-14 10:00:38'),
(3510, 'App\\User', 1000, 'qixerapi_keys', '7592f2e6a9456d106ba50f4595e9c05274c61d32bbec3b1dd50d7a4a22a35520', '[\"*\"]', '2022-09-14 14:27:47', '2022-09-14 14:26:04', '2022-09-14 14:27:47'),
(3515, 'App\\User', 308, 'qixerapi_keys', '7418ec5894f7acc037fb4281f9d2205fa3844129e57f71d122e7b44eddf23b7d', '[\"*\"]', '2022-09-15 00:04:21', '2022-09-15 00:04:20', '2022-09-15 00:04:21'),
(3522, 'App\\User', 1004, 'qixerapi_keys', '2a1a82bae2128efe636bb2686aff568df22a440b96c945f82681d1e5887613c5', '[\"*\"]', '2022-10-07 22:34:39', '2022-09-15 07:10:45', '2022-10-07 22:34:39'),
(3523, 'App\\User', 1005, 'qixerapi_keys', '3f414375af0e6e2bc792eda6d7f36a3832db021754be7ca31314f2b934fd1f2d', '[\"*\"]', '2022-09-15 10:40:07', '2022-09-15 10:34:04', '2022-09-15 10:40:07'),
(3524, 'App\\User', 1005, 'qixerapi_keys', '78ce955de8833abba181674063f56d1aba9f3049651c33a0cb82e156f8981d56', '[\"*\"]', '2022-09-15 10:40:10', '2022-09-15 10:40:09', '2022-09-15 10:40:10'),
(3526, 'App\\User', 1006, 'qixerapi_keys', '7a4f49453e7024c5f92e759202758f14600892445dc20f3bd6f0bbf84c05f937', '[\"*\"]', '2022-09-15 22:30:30', '2022-09-15 21:04:13', '2022-09-15 22:30:30'),
(3527, 'App\\User', 1007, 'qixerapi_keys', 'ab976994b153142f61d9c2379f51c3291babae0d488795b50cb9ca00b5c65b11', '[\"*\"]', NULL, '2022-09-15 21:12:42', '2022-09-15 21:12:42'),
(3528, 'App\\User', 1007, 'qixerapi_keys', 'a075469b7b106b8881e40f7b2e7d036bff8f71222b59eea41955f161ea1124c4', '[\"*\"]', '2022-09-15 21:52:22', '2022-09-15 21:16:23', '2022-09-15 21:52:22'),
(3534, 'App\\User', 427, 'qixerapi_keys', '3d6a71c76c99f2d34a0e6ec7ede06d1f34be329c30701eed7120597f28ca8f1b', '[\"*\"]', '2022-09-16 01:39:47', '2022-09-16 01:39:46', '2022-09-16 01:39:47'),
(3542, 'App\\User', 1008, 'qixerapi_keys', '50b9944fde849a8da7afce8f7ec7da2e99a62cf97d66f4cf74a2add51aa93853', '[\"*\"]', '2022-09-16 07:07:52', '2022-09-16 07:03:30', '2022-09-16 07:07:52'),
(3546, 'App\\User', 1010, 'qixerapi_keys', '73ffde1accde87704d87a9e530c1e0856c71b31653933e115090bac05d1c9fcc', '[\"*\"]', '2022-09-16 12:00:01', '2022-09-16 11:57:36', '2022-09-16 12:00:01'),
(3548, 'App\\User', 1011, 'qixerapi_keys', '437603d68a0cac04aaa64044f552daafa9f8e01cccc12565a8d6b893c0e0efc5', '[\"*\"]', '2022-09-16 13:37:27', '2022-09-16 13:25:29', '2022-09-16 13:37:27'),
(3549, 'App\\User', 1012, 'qixerapi_keys', 'e4b48ae1bfda873d10c19c5f07272369b7cc5f1d7125311c1e216c5cc386ad9f', '[\"*\"]', NULL, '2022-09-16 16:10:24', '2022-09-16 16:10:24'),
(3550, 'App\\User', 768, 'qixerapi_keys', '4d582ed1f3e93bec7c1028acc39d3d37e7bd73a0033a4728349f3b58c0ef2286', '[\"*\"]', '2022-09-16 19:22:43', '2022-09-16 19:22:37', '2022-09-16 19:22:43'),
(3555, 'App\\User', 1013, 'qixerapi_keys', '567aa4948df2c2370b1c296de6f557e6caed380295f9d753a4d202cc02e21786', '[\"*\"]', '2022-09-17 01:37:51', '2022-09-17 01:37:33', '2022-09-17 01:37:51'),
(3556, 'App\\User', 1013, 'qixerapi_keys', '50fe8e433bbe98bae62d063da14431fc7f60c59adf24edb8b89ec4c65263a2b2', '[\"*\"]', '2022-09-17 01:40:44', '2022-09-17 01:37:51', '2022-09-17 01:40:44'),
(3557, 'App\\User', 1013, 'qixerapi_keys', 'a9f4e0ce4da66f770a18ada18c8ec349bb4a5cc3c485c276dd99037ff6ea7aad', '[\"*\"]', '2022-09-17 01:42:30', '2022-09-17 01:40:44', '2022-09-17 01:42:30'),
(3558, 'App\\User', 1013, 'qixerapi_keys', 'd894586398761901e68d39522527a559af8339c593a1a235b74d09dc34e26595', '[\"*\"]', '2022-09-17 14:27:15', '2022-09-17 01:42:30', '2022-09-17 14:27:15'),
(3560, 'App\\User', 1014, 'qixerapi_keys', 'da03e6a5797d09c8982d3dce7921ffaf563b6d183657e9255c50cdc17b0075a1', '[\"*\"]', '2022-09-17 04:25:13', '2022-09-17 04:25:12', '2022-09-17 04:25:13'),
(3561, 'App\\User', 829, 'qixerapi_keys', 'fe5f44748fab443bfc0dcdb85d330bbf5c4e6fc9c3dd37470e7e3fdf7b7ae3d2', '[\"*\"]', '2022-09-17 05:27:35', '2022-09-17 05:27:24', '2022-09-17 05:27:35'),
(3564, 'App\\User', 335, 'qixerapi_keys', '8b3dd89c3c696c8941a9f839d773cdc3a603e999bfdfaa6f0d1ed6bd18ff4435', '[\"*\"]', '2022-09-17 09:39:32', '2022-09-17 07:17:18', '2022-09-17 09:39:32'),
(3565, 'App\\User', 1016, 'qixerapi_keys', 'dbe6744cc000c6a5aef8c65d9815b5aadfa7672234149d056aa72fded8f83a1f', '[\"*\"]', '2022-09-17 08:14:10', '2022-09-17 08:12:53', '2022-09-17 08:14:10'),
(3568, 'App\\User', 1018, 'qixerapi_keys', '50c5b3c85717994b28871e135b4f68557be03fdf20f96831883e451022d78be1', '[\"*\"]', '2022-09-17 09:11:10', '2022-09-17 09:06:12', '2022-09-17 09:11:10'),
(3573, 'App\\User', 427, 'qixerapi_keys', 'ed8305d8d154d3e931e4373f88503afe171587cac3c31996cb30049230fab250', '[\"*\"]', '2022-09-17 10:06:53', '2022-09-17 10:06:52', '2022-09-17 10:06:53'),
(3574, 'App\\User', 1019, 'qixerapi_keys', 'bac0805606d2a9314373f8a88dd13e626b0095fee0245ac0d861af6bcaa64a93', '[\"*\"]', '2022-09-19 11:59:18', '2022-09-17 10:22:29', '2022-09-19 11:59:18'),
(3576, 'App\\User', 972, 'qixerapi_keys', '0169d1ca44a3622e3cea954cdd80afc742059f9f9cfcf65ea9c3e3c2480628ed', '[\"*\"]', '2022-09-17 11:12:53', '2022-09-17 11:11:56', '2022-09-17 11:12:53'),
(3578, 'App\\User', 1021, 'qixerapi_keys', 'c0e3a3418a4646ec7f097ecea07666ba1d5ee83575cca212a04bbf5a8ab286a8', '[\"*\"]', '2022-09-17 13:53:33', '2022-09-17 13:53:32', '2022-09-17 13:53:33'),
(3580, 'App\\User', 313, 'qixerapi_keys', '519c87a3f1f42d7310d75412723b1b620f4c45ee85b74373b1e18e8ecd1ccf72', '[\"*\"]', '2022-09-17 14:18:33', '2022-09-17 14:18:19', '2022-09-17 14:18:33'),
(3581, 'App\\User', 1013, 'qixerapi_keys', 'ec55101b65d40fb028b400d36f4411f6c174ad61b3c788b9d0bb7113a6ff78e1', '[\"*\"]', '2022-09-17 19:01:29', '2022-09-17 14:27:15', '2022-09-17 19:01:29'),
(3582, 'App\\User', 1013, 'qixerapi_keys', 'c35c93592a5b468f6d88cbc48c274f4c0f6781690892241999c2af057d660a6c', '[\"*\"]', '2022-09-17 19:01:30', '2022-09-17 19:01:30', '2022-09-17 19:01:30'),
(3591, 'App\\User', 483, 'qixerapi_keys', '0f8d6e2f409ba01fb44d873d61bcb0f5e807c308bd9cf046c9163813362d8e90', '[\"*\"]', '2022-09-18 04:28:30', '2022-09-18 04:28:28', '2022-09-18 04:28:30'),
(3597, 'App\\User', 795, 'qixerapi_keys', '81daafc4b88117dc58dfc054e570fbd9d05e19ca2ef04d5d91f15a589a892b49', '[\"*\"]', '2022-09-19 08:17:41', '2022-09-19 08:17:40', '2022-09-19 08:17:41'),
(3598, 'App\\User', 1019, 'qixerapi_keys', '2c96fa6cf897ca8dc08915a7fc43b44ee688020a6a7c3ede9eea25e4363307a6', '[\"*\"]', '2022-09-19 12:34:39', '2022-09-19 11:59:19', '2022-09-19 12:34:39'),
(3599, 'App\\User', 1019, 'qixerapi_keys', '0cc6e0c9cdac0d17a60b3532f50937284d89b5b437ceea7acdff611566eece83', '[\"*\"]', '2022-09-20 08:35:28', '2022-09-19 12:34:41', '2022-09-20 08:35:28'),
(3621, 'App\\User', 876, 'qixerapi_keys', 'e1aa34502886c9e4177e394335ec4645979a66987c49237ff9be1888cd979032', '[\"*\"]', '2022-09-28 23:35:06', '2022-09-20 00:17:54', '2022-09-28 23:35:06'),
(3656, 'App\\User', 310, 'qixerapi_keys', '4753cdd5529ec971a6bbf80fe61b333a218113e2a069b2bd39c66ac3e817061b', '[\"*\"]', '2022-09-24 08:03:28', '2022-09-20 07:41:42', '2022-09-24 08:03:28'),
(3667, 'App\\User', 1025, 'qixerapi_keys', 'd09ec044d182f1fb02805ad7f184aa43c18da812f96025e3c093dc8967bb74ea', '[\"*\"]', '2022-09-20 08:17:27', '2022-09-20 08:03:53', '2022-09-20 08:17:27'),
(3669, 'App\\User', 1025, 'qixerapi_keys', '16337039eb2c6d264ece4c0f6540921922dd777f2c5e10534220e2928fc39919', '[\"*\"]', '2022-09-20 08:17:30', '2022-09-20 08:17:29', '2022-09-20 08:17:30'),
(3671, 'App\\User', 1019, 'qixerapi_keys', '656eb07e4cc78f7b8bb8ef8658fcb217d14c1daf4d3042bbfee24ddfb4740074', '[\"*\"]', '2022-09-20 13:13:13', '2022-09-20 08:35:29', '2022-09-20 13:13:13'),
(3673, 'App\\User', 1026, 'qixerapi_keys', 'b7c69f01094a733a21eef98d525b01651c75ec7b0a0287601ab70dd25260b04f', '[\"*\"]', '2022-09-20 10:48:00', '2022-09-20 10:47:59', '2022-09-20 10:48:00'),
(3674, 'App\\User', 1019, 'qixerapi_keys', '0e93753e8d79528f56411a04644d8e1d54a4e7528d85642544f73b92f34c6dfb', '[\"*\"]', '2022-09-20 13:15:30', '2022-09-20 13:13:15', '2022-09-20 13:15:30'),
(3676, 'App\\User', 1030, 'qixerapi_keys', '3f0a665fe4edab8978b9bd16786c3b79b0230ce90d81aa956c0885c9c4c8f480', '[\"*\"]', '2022-09-20 23:52:32', '2022-09-20 23:49:00', '2022-09-20 23:52:32'),
(3677, 'App\\User', 1031, 'qixerapi_keys', '63f52a4ac5972b6f6a41b95b20e92ec949a90fa391d6d390f030fddb1ecbde4f', '[\"*\"]', '2022-09-21 00:50:06', '2022-09-21 00:46:50', '2022-09-21 00:50:06'),
(3680, 'App\\User', 1034, 'qixerapi_keys', 'bab65a54bcdedea3ee2b0436037ecdd2024ff9c567fc9c3b438dd807b3667068', '[\"*\"]', '2022-09-28 00:30:17', '2022-09-21 04:27:23', '2022-09-28 00:30:17'),
(3682, 'App\\User', 1035, 'qixerapi_keys', '02ec8061eb61870beeb9253d7a85747fee0e35d28b8a8f67d2be4b137445c7bb', '[\"*\"]', '2022-09-21 07:07:43', '2022-09-21 07:04:59', '2022-09-21 07:07:43'),
(3683, 'App\\User', 1036, 'qixerapi_keys', 'f1a897990d2dc07abe1bc6f0b54d26993c56264aaf3b2e5c7f972ee1622b14a1', '[\"*\"]', '2022-09-21 07:08:21', '2022-09-21 07:07:42', '2022-09-21 07:08:21'),
(3684, 'App\\User', 1035, 'qixerapi_keys', 'd4556268c8c1558c582230fc2bc51c5e959823bf5cf6358a56deca8d8c831b8f', '[\"*\"]', '2022-09-21 07:10:15', '2022-09-21 07:07:44', '2022-09-21 07:10:15'),
(3685, 'App\\User', 1035, 'qixerapi_keys', '6c9001b962522a65b5170b5f908fe4faefeea63f563e3e8312cecf2c7bb0fbb1', '[\"*\"]', '2022-09-21 07:10:18', '2022-09-21 07:10:17', '2022-09-21 07:10:18'),
(3690, 'App\\User', 767, 'qixerapi_keys', 'af778b035f7c6490800456c700967652ca00efca850553a40fca1802a31cc9b6', '[\"*\"]', '2022-09-21 16:05:37', '2022-09-21 14:25:17', '2022-09-21 16:05:37'),
(3693, 'App\\User', 767, 'qixerapi_keys', 'c12afe4d5ae3ebd89cf7fbe12bf1bc94afa285cd9973ced4d51a15545d3472d6', '[\"*\"]', '2022-09-23 20:38:50', '2022-09-21 16:05:39', '2022-09-23 20:38:50'),
(3695, 'App\\User', 304, 'qixerapi_keys', 'f5d96745555feef21ff01448211a9963b8bfe65bc5c5035b0be827d1527c2daa', '[\"*\"]', '2022-09-21 23:48:11', '2022-09-21 23:48:10', '2022-09-21 23:48:11'),
(3696, 'App\\User', 1038, 'qixerapi_keys', 'bd7fbf5dcb59901d0246b84f63cb546de69ddfdd1d1927649f81bcd241db5b90', '[\"*\"]', NULL, '2022-09-22 00:53:48', '2022-09-22 00:53:48'),
(3697, 'App\\User', 1039, 'qixerapi_keys', '5e7511e0c223b70b9f63d12807d254d4ed26c1a7163763bb8c8c960207fd74da', '[\"*\"]', '2022-09-28 03:06:32', '2022-09-22 02:53:57', '2022-09-28 03:06:32'),
(3700, 'App\\User', 1042, 'qixerapi_keys', 'df70f78cefb5cf41cda04b4460fc5a8d0321d26e7998d8b860a9e953b6a4e79f', '[\"*\"]', '2022-09-22 14:16:02', '2022-09-22 06:06:54', '2022-09-22 14:16:02'),
(3701, 'App\\User', 1043, 'qixerapi_keys', 'fe115f0ffce44f707df50623a98df0c66204cdccb3fc54a36511b74b6eab6817', '[\"*\"]', '2022-09-22 06:32:02', '2022-09-22 06:29:01', '2022-09-22 06:32:02'),
(3702, 'App\\User', 1043, 'qixerapi_keys', '05f3a641ecba91aab42c59e730bede08182c2f0a0335ad7c42b5a9abb7a3248c', '[\"*\"]', '2022-09-22 06:32:04', '2022-09-22 06:32:03', '2022-09-22 06:32:04'),
(3703, 'App\\User', 1044, 'qixerapi_keys', '2726c28c418fb0db451dfcfaca9b65599613e8729cff663a250dad44eed05516', '[\"*\"]', '2022-09-22 11:10:18', '2022-09-22 10:48:35', '2022-09-22 11:10:18'),
(3704, 'App\\User', 1044, 'qixerapi_keys', 'ff74f12f0af4a1d2520eb56a693b6b9095a4ad644a818ba845bdca554f99bbd2', '[\"*\"]', '2022-09-22 11:12:44', '2022-09-22 11:10:20', '2022-09-22 11:12:44'),
(3705, 'App\\User', 1042, 'qixerapi_keys', 'df4c224b55adcf0432141556af57cb9deac02075019434470caf7672198d0672', '[\"*\"]', '2022-09-23 08:06:29', '2022-09-22 14:16:04', '2022-09-23 08:06:29'),
(3708, 'App\\User', 427, 'qixerapi_keys', '9cdd7682602619a9a412d10d298b39e6c9b479aa6c224a024ba8aed6b1b2ad50', '[\"*\"]', '2022-09-22 20:57:56', '2022-09-22 20:57:44', '2022-09-22 20:57:56'),
(3710, 'App\\User', 1046, 'qixerapi_keys', '0991b023731000d4d01ab78ac91e76f25c92fa302bb5cbf5eeb703078129c4b9', '[\"*\"]', '2022-09-23 06:05:41', '2022-09-22 22:55:20', '2022-09-23 06:05:41'),
(3711, 'App\\User', 1047, 'qixerapi_keys', 'dd98954e1cfda17858f7bcdce985bc5c67cbd25a2ab61b64b198db68198fb59c', '[\"*\"]', '2022-09-23 02:53:52', '2022-09-23 02:48:59', '2022-09-23 02:53:52'),
(3716, 'App\\User', 1050, 'qixerapi_keys', 'e398d2770dbc496edda0a6850fad0e25e3b727e0fedf0486039061d8f711054e', '[\"*\"]', '2022-09-23 04:40:43', '2022-09-23 04:29:15', '2022-09-23 04:40:43'),
(3717, 'App\\User', 1050, 'qixerapi_keys', '68f133f703e1c0d15cd73345f33094ecf5396d85b42474bfea4b8256743bbed9', '[\"*\"]', '2022-09-23 04:40:48', '2022-09-23 04:40:44', '2022-09-23 04:40:48'),
(3719, 'App\\User', 1046, 'qixerapi_keys', '498e05987ada87d337b2494870be0e7a6594854c088302a9e94c5c444b76511f', '[\"*\"]', '2022-09-23 06:05:44', '2022-09-23 06:05:42', '2022-09-23 06:05:44'),
(3720, 'App\\User', 1051, 'qixerapi_keys', '3ecfa761ba1cd27c647925ef134de7e51600f3bc780c3ad604c440a62bcffa85', '[\"*\"]', '2022-09-25 03:31:23', '2022-09-23 06:51:54', '2022-09-25 03:31:23'),
(3721, 'App\\User', 1053, 'qixerapi_keys', 'fbf7c09758afe04235b752bb46929d9b460ac7014fc95c4b7bcb80742dac1d3f', '[\"*\"]', '2022-09-23 07:31:57', '2022-09-23 07:31:55', '2022-09-23 07:31:57'),
(3722, 'App\\User', 1054, 'qixerapi_keys', 'b6194f9acedb54ecfb7a3f3165e01cd73aa266b7005516b512bf1f3492b733ef', '[\"*\"]', '2022-09-23 07:33:08', '2022-09-23 07:33:07', '2022-09-23 07:33:08'),
(3724, 'App\\User', 1042, 'qixerapi_keys', '2690713f033552c824fc1d885cd8feba1b16f756b279c893cb83821472fb4934', '[\"*\"]', '2022-10-01 12:55:23', '2022-09-23 08:06:31', '2022-10-01 12:55:23'),
(3728, 'App\\User', 1057, 'qixerapi_keys', '962909fc05d8cb79212f2a6b58ed01752759bb335adb56f5d65b56abc1220e70', '[\"*\"]', '2022-09-23 11:17:22', '2022-09-23 11:07:53', '2022-09-23 11:17:22'),
(3729, 'App\\User', 1057, 'qixerapi_keys', '5eeb86e83a39fcd7ab995594a6e80c2a981ec2108e0f5bd93163fe8488a04c6e', '[\"*\"]', '2022-09-26 07:07:41', '2022-09-23 11:17:23', '2022-09-26 07:07:41'),
(3730, 'App\\User', 1058, 'qixerapi_keys', '01d98b86aa649bc0b08e4e656c11c3d3ea8b7baefcb0a2200adc6c39cf265350', '[\"*\"]', '2022-09-23 12:07:39', '2022-09-23 12:06:42', '2022-09-23 12:07:39'),
(3731, 'App\\User', 432, 'qixerapi_keys', 'bd55687661502ea4da79ae2cad15296557cbf5b8024236281d861f6e3ee243fa', '[\"*\"]', '2022-09-23 12:09:52', '2022-09-23 12:08:15', '2022-09-23 12:09:52'),
(3732, 'App\\User', 1059, 'qixerapi_keys', '86b00317d55c19f3d49e9b7909fd4e263c81c8ddffef9a779446fe29781e35e8', '[\"*\"]', '2022-09-23 12:17:11', '2022-09-23 12:16:20', '2022-09-23 12:17:11'),
(3734, 'App\\User', 767, 'qixerapi_keys', '612c190a8bde54f5c7f3357027b67189c2fd0f704aab81f8aee8229c8f88488e', '[\"*\"]', '2022-09-23 20:43:21', '2022-09-23 20:38:51', '2022-09-23 20:43:21'),
(3738, 'App\\User', 1062, 'qixerapi_keys', '0cda3b00451bcf6b25a54cc35e4b52c74fce228465ee7b10199cf494e4549a85', '[\"*\"]', '2022-09-24 03:25:27', '2022-09-24 03:25:26', '2022-09-24 03:25:27'),
(3741, 'App\\User', 1064, 'qixerapi_keys', 'ccd81b3b6cd38d62b6466cbef0e723fd1ef5884374af434b43448de4df5b90b6', '[\"*\"]', '2022-09-24 05:34:12', '2022-09-24 05:34:10', '2022-09-24 05:34:12'),
(3743, 'App\\User', 653, 'qixerapi_keys', 'a6d212959bd01fbb429f921be7235c0d37eab4921ddef14dea7067755a8e071e', '[\"*\"]', '2022-09-24 08:17:00', '2022-09-24 07:14:03', '2022-09-24 08:17:00'),
(3744, 'App\\User', 310, 'qixerapi_keys', 'd2bfe034adae3c02873736cfff393e23a9e2cf05bf15688aa11b7a9e2e730390', '[\"*\"]', '2022-09-24 08:03:31', '2022-09-24 08:03:30', '2022-09-24 08:03:31'),
(3745, 'App\\User', 653, 'qixerapi_keys', 'cec1144f0b065233b1d42b54786b66c55a79c0effdd8faa8992be529fab76f0b', '[\"*\"]', '2022-12-28 17:17:25', '2022-09-24 08:17:01', '2022-12-28 17:17:25'),
(3747, 'App\\User', 1067, 'qixerapi_keys', 'cd8f74ec6f88cb4dc25b9232a6d41c7cf11ee91188dbe081e4aecaeb409a0d41', '[\"*\"]', NULL, '2022-09-24 09:25:15', '2022-09-24 09:25:15'),
(3748, 'App\\User', 1066, 'qixerapi_keys', '2732eba62507932d0ecb093f929fcaf186d2679ff0f1e78d0e1729c9e24328e3', '[\"*\"]', '2022-09-26 19:26:30', '2022-09-24 09:25:27', '2022-09-26 19:26:30'),
(3752, 'App\\User', 1068, 'qixerapi_keys', '98139db257a0084c399c3b77f1b9c7eca025a09be06a1e7879268a86006f93db', '[\"*\"]', '2022-09-24 13:44:56', '2022-09-24 13:44:54', '2022-09-24 13:44:56'),
(3754, 'App\\User', 1069, 'qixerapi_keys', '55a8e0e5e50922b795ac2029d80e2253787add5cb5aeaa5bd55812f96d174710', '[\"*\"]', NULL, '2022-09-24 15:59:25', '2022-09-24 15:59:25'),
(3755, 'App\\User', 1070, 'qixerapi_keys', '4c271855e45885c701ed7823dfd7b2ef8c2e292d66d6280910dc90e82b5bd220', '[\"*\"]', NULL, '2022-09-24 16:01:42', '2022-09-24 16:01:42'),
(3756, 'App\\User', 1071, 'qixerapi_keys', 'e6ced91a962f3bab3fcdcddd2e455c50f845bb4b11a5d956fa6c477092f62d2e', '[\"*\"]', '2022-09-26 04:49:07', '2022-09-24 16:42:07', '2022-09-26 04:49:07'),
(3757, 'App\\User', 1072, 'qixerapi_keys', '53a21c17312cbfe9c898fdd35076768a9bd6f9c14b06110a62a0d1791a02f74a', '[\"*\"]', '2022-09-24 16:58:09', '2022-09-24 16:58:08', '2022-09-24 16:58:09'),
(3758, 'App\\User', 1073, 'qixerapi_keys', 'ad47a1c82b492aa66a84dff8610698752ea1350d87ea95fc8d94201b47f69ad9', '[\"*\"]', '2022-09-24 18:56:04', '2022-09-24 18:54:41', '2022-09-24 18:56:04'),
(3771, 'App\\User', 1051, 'qixerapi_keys', '9e9e8ba94466c7b8779db58294427bcefc911a0306a4470d720a6106f0ce9c8c', '[\"*\"]', '2022-09-25 03:32:06', '2022-09-25 03:31:25', '2022-09-25 03:32:06'),
(3772, 'App\\User', 983, 'qixerapi_keys', '0982d8cc5e70b92db4d8e41e83911f210ce98d617d51da9927c9fa8fe5e09694', '[\"*\"]', '2022-09-25 04:15:43', '2022-09-25 04:14:18', '2022-09-25 04:15:43'),
(3773, 'App\\User', 976, 'qixerapi_keys', '3400a2b69ba233d58859c0ce17a455280c683e724cd518a69cc658af0af857b0', '[\"*\"]', '2022-09-25 04:16:18', '2022-09-25 04:16:16', '2022-09-25 04:16:18'),
(3774, 'App\\User', 290, 'qixerapi_keys', 'f6a768a5616e7deabb4491bffe6719d67c7602460f9aa73618ff789fcaad340b', '[\"*\"]', '2022-09-25 06:01:00', '2022-09-25 06:00:58', '2022-09-25 06:01:00'),
(3778, 'App\\User', 566, 'qixerapi_keys', '33344e47fa48cf47a92b4339af26a0177ac7f06b1118ded9697a88a8ca4551cd', '[\"*\"]', '2022-09-25 15:16:50', '2022-09-25 15:14:50', '2022-09-25 15:16:50');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(3779, 'App\\User', 566, 'qixerapi_keys', '20cbf19ce48fb6d5096a52c38e2231bcfcf8188712ff6713c5e208cc7269bb1f', '[\"*\"]', '2022-09-25 15:30:20', '2022-09-25 15:30:19', '2022-09-25 15:30:20'),
(3781, 'App\\User', 329, 'qixerapi_keys', 'c788add8e462e192bd14c4c51966e9fce9e25606ec5ea3029a87332b405dfa82', '[\"*\"]', '2022-09-25 22:48:16', '2022-09-25 22:43:16', '2022-09-25 22:48:16'),
(3783, 'App\\User', 1076, 'qixerapi_keys', '9beee853666b36d87f53b1cdfed58eb9427d201f100008c32644a01c096c9b0d', '[\"*\"]', NULL, '2022-09-25 22:49:35', '2022-09-25 22:49:35'),
(3784, 'App\\User', 1077, 'qixerapi_keys', '9c326daf7bfc7448c44a0f6ede9283943688e57b4c0303d90992279a6aba30f2', '[\"*\"]', '2022-09-25 22:52:38', '2022-09-25 22:51:09', '2022-09-25 22:52:38'),
(3786, 'App\\User', 1078, 'qixerapi_keys', '0314f85c30d64d628e27b0106e81ec51f1a2d2a810ab87737621d16c6e6faa19', '[\"*\"]', '2022-09-26 01:16:32', '2022-09-26 01:12:20', '2022-09-26 01:16:32'),
(3787, 'App\\User', 290, 'qixerapi_keys', 'ddf97763192c5e8c4af0ccb991001386dcd21571c913d705ec64e7c6de6b9772', '[\"*\"]', '2022-09-26 02:11:15', '2022-09-26 02:11:03', '2022-09-26 02:11:15'),
(3790, 'App\\User', 1071, 'qixerapi_keys', 'a8fe92bb4db48215d258aaf10d5c66f81898712626053e5dad48aff1f88c7223', '[\"*\"]', '2022-09-26 04:49:18', '2022-09-26 04:49:10', '2022-09-26 04:49:18'),
(3792, 'App\\User', 1057, 'qixerapi_keys', 'e96edc17bff786d370491966cf4ac6446fe0967532e51f4d846483e537efe096', '[\"*\"]', '2022-09-26 07:11:25', '2022-09-26 07:07:42', '2022-09-26 07:11:25'),
(3793, 'App\\User', 1074, 'qixerapi_keys', '745e33f82c98d9555d72ea7d3ed712f310630a85868a432509f5910e427d2044', '[\"*\"]', '2022-09-27 13:05:43', '2022-09-26 08:51:07', '2022-09-27 13:05:43'),
(3797, 'App\\User', 1079, 'qixerapi_keys', '7d8c73a9c0fc7c742ade6dcbe33af38e39fca73385f77a70e3966d77a5c12c2a', '[\"*\"]', '2022-10-05 08:39:12', '2022-09-26 10:43:10', '2022-10-05 08:39:12'),
(3799, 'App\\User', 806, 'qixerapi_keys', 'ad28e9293809dd9eeae933b6054a033d94c70d80f4d5ffd3ee40cf4d76c364a6', '[\"*\"]', '2022-09-26 14:39:08', '2022-09-26 14:39:07', '2022-09-26 14:39:08'),
(3801, 'App\\User', 1081, 'qixerapi_keys', 'ee7a2089518f11256f7ac1690285b2590906e89d6f002c400af8a97384954e51', '[\"*\"]', NULL, '2022-09-26 15:25:44', '2022-09-26 15:25:44'),
(3802, 'App\\User', 1082, 'qixerapi_keys', 'fb0f4960c95557835356d205c6cf27d55df5c462485c8adf807a6c5e7da97ee5', '[\"*\"]', '2022-09-26 15:36:13', '2022-09-26 15:27:47', '2022-09-26 15:36:13'),
(3803, 'App\\User', 1066, 'qixerapi_keys', 'd35862ff2592b93f251be697cdbf4a059220cbd1fff8d31c2791fcca939fd55a', '[\"*\"]', '2022-09-27 00:04:17', '2022-09-26 19:26:31', '2022-09-27 00:04:17'),
(3804, 'App\\User', 427, 'qixerapi_keys', '3effce6984e48deed22e4adbc028590e353983886944b5e6fd082ac5875d2ef7', '[\"*\"]', '2022-09-26 21:27:53', '2022-09-26 21:27:10', '2022-09-26 21:27:53'),
(3809, 'App\\User', 1084, 'qixerapi_keys', 'd2f92d215005f25951a8de1115942931a66fe35b58562ca7a790390ba607d13b', '[\"*\"]', '2022-09-26 23:00:55', '2022-09-26 22:54:09', '2022-09-26 23:00:55'),
(3810, 'App\\User', 1084, 'qixerapi_keys', 'f3ac2281f11c07059b75d572209676afff689fe40f599935ca5f287c11399a7e', '[\"*\"]', '2022-09-26 23:01:45', '2022-09-26 23:00:57', '2022-09-26 23:01:45'),
(3811, 'App\\User', 1084, 'qixerapi_keys', 'f78821417a0c457254970f0ed288c7ed7784efb9afdbf4f5d2378c9563ca134a', '[\"*\"]', '2022-09-26 23:03:40', '2022-09-26 23:01:46', '2022-09-26 23:03:40'),
(3812, 'App\\User', 1084, 'qixerapi_keys', '8f7d800cddd0207aa3961c6e057d72490be8e0828865337e1d2646d2aaa20ef0', '[\"*\"]', '2022-09-26 23:03:59', '2022-09-26 23:03:41', '2022-09-26 23:03:59'),
(3813, 'App\\User', 1084, 'qixerapi_keys', '1a0494727bd6d1e1346918cebd8f51d86b0269561145f8f52d19fea38e621321', '[\"*\"]', '2022-09-26 23:10:35', '2022-09-26 23:04:00', '2022-09-26 23:10:35'),
(3814, 'App\\User', 1084, 'qixerapi_keys', '95b4b7670315fbcc8e196cbb73e381c8012d1fa9d22c437488c96bdd338e40f0', '[\"*\"]', '2022-09-26 23:11:22', '2022-09-26 23:10:37', '2022-09-26 23:11:22'),
(3815, 'App\\User', 1084, 'qixerapi_keys', '057b0b75f8b2ec1faa9ad906797245aefe877840034a1cd4b989041dee63b47c', '[\"*\"]', '2022-09-26 23:48:58', '2022-09-26 23:11:23', '2022-09-26 23:48:58'),
(3816, 'App\\User', 1066, 'qixerapi_keys', '10f89b4d8c2c2a95776cfc9cb00f6b2c6607b0a487fde3f0762097c6458569c1', '[\"*\"]', '2022-09-27 00:04:27', '2022-09-27 00:04:20', '2022-09-27 00:04:27'),
(3832, 'App\\User', 427, 'qixerapi_keys', '9c3640063f7871bab314481e8b4d63b5e0bb4bec6b8c429b537feca2a764e6c1', '[\"*\"]', '2022-09-27 04:44:34', '2022-09-27 04:43:52', '2022-09-27 04:44:34'),
(3835, 'App\\User', 1087, 'qixerapi_keys', '0ee31d88476d5c0f78f8a02b7b2557d3c4269a5f101ff69a7688ed1d4e472b7b', '[\"*\"]', '2022-09-27 07:27:07', '2022-09-27 07:25:40', '2022-09-27 07:27:07'),
(3836, 'App\\User', 1088, 'qixerapi_keys', 'dbd843d2558a82b0fc9a460bafd91795e4adf8d741b44ccbed4a40faa5746c26', '[\"*\"]', '2022-10-06 09:39:54', '2022-09-27 07:38:07', '2022-10-06 09:39:54'),
(3837, 'App\\User', 991, 'qixerapi_keys', 'ebdc90e8ec5bd4a898d38b425606a4a6190c07e568a5d4cb75f9e85d8cf1fb58', '[\"*\"]', '2022-10-03 07:37:31', '2022-09-27 08:42:12', '2022-10-03 07:37:31'),
(3841, 'App\\User', 766, 'qixerapi_keys', '09c03c1ccb691039b0456144541a760b492adb8678e504c940091cd46f4be22c', '[\"*\"]', '2022-09-27 11:24:36', '2022-09-27 11:24:34', '2022-09-27 11:24:36'),
(3842, 'App\\User', 1074, 'qixerapi_keys', 'e9c8baff59fc2ec8d227aaf21265f419655b759e3c7d83237cc9095de75dfe55', '[\"*\"]', '2022-10-01 07:55:33', '2022-09-27 13:05:44', '2022-10-01 07:55:33'),
(3844, 'App\\User', 1068, 'qixerapi_keys', '0edbe2501f363e3f40be9583163025deaf74b7d1dc722d0806d23029a564356a', '[\"*\"]', '2022-09-27 13:48:16', '2022-09-27 13:48:14', '2022-09-27 13:48:16'),
(3845, 'App\\User', 1090, 'qixerapi_keys', '8515b81f10f3621ec040b55535b15d7ef49371ef8616a992f5c0bb95b66d9140', '[\"*\"]', '2022-09-27 13:55:39', '2022-09-27 13:53:17', '2022-09-27 13:55:39'),
(3846, 'App\\User', 652, 'qixerapi_keys', '30ae13c96d6926ef764519903cf8caec774c02884c99bcf6a0836cf9ead39735', '[\"*\"]', '2022-09-27 14:48:50', '2022-09-27 14:47:42', '2022-09-27 14:48:50'),
(3848, 'App\\User', 1092, 'qixerapi_keys', '0cbb5fd6a34bfe021fb29a6216f1c52993f7ad609acd6efa4bbc34e3b104d833', '[\"*\"]', '2022-09-27 19:12:49', '2022-09-27 19:09:36', '2022-09-27 19:12:49'),
(3849, 'App\\User', 1092, 'qixerapi_keys', '8bfa1522549a34dd8550a0cb7f0006c89b9576c9283baf661b77f1b0497ee4e2', '[\"*\"]', '2022-09-27 19:16:26', '2022-09-27 19:12:51', '2022-09-27 19:16:26'),
(3852, 'App\\User', 427, 'qixerapi_keys', '644cf1afcbeba8a9d5b4d91980a87ac5d4922aed28112b5766f516cb236c3044', '[\"*\"]', '2022-09-27 20:58:20', '2022-09-27 20:58:05', '2022-09-27 20:58:20'),
(3854, 'App\\User', 1034, 'qixerapi_keys', '4ed4102828ac7c878b5ce892ac51bf51c7861bf89012160f476907b445c89593', '[\"*\"]', '2022-09-28 00:30:19', '2022-09-28 00:30:18', '2022-09-28 00:30:19'),
(3859, 'App\\User', 1039, 'qixerapi_keys', '98eaedf781a4cc793f7c3d82fdb070a05d227b2d5f4be7623bb7c59950cf13c6', '[\"*\"]', '2022-09-28 03:06:35', '2022-09-28 03:06:33', '2022-09-28 03:06:35'),
(3862, 'App\\User', 1094, 'qixerapi_keys', '2e7a6054ad022d08b70328a28b8933bb714f8a25e5e95ae109c936398037dbcb', '[\"*\"]', NULL, '2022-09-28 04:29:17', '2022-09-28 04:29:17'),
(3863, 'App\\User', 1095, 'qixerapi_keys', 'e23b255ca3fcfca02f3ed8bc28515886d04ce97185799f70a16cf7682bca8657', '[\"*\"]', '2022-10-01 06:32:59', '2022-09-28 04:34:41', '2022-10-01 06:32:59'),
(3864, 'App\\User', 1096, 'qixerapi_keys', '9a81191eeeee6392419bd1bb1c61f2f642ef8e895eabb0e4b7ce91a61d28b417', '[\"*\"]', '2022-09-28 06:53:43', '2022-09-28 06:49:37', '2022-09-28 06:53:43'),
(3865, 'App\\User', 1097, 'qixerapi_keys', '1ec855ff4464b52e16457525fb3e91eff4ddc16687691716e3888cb052175a23', '[\"*\"]', '2022-09-28 07:04:40', '2022-09-28 07:03:38', '2022-09-28 07:04:40'),
(3866, 'App\\User', 1097, 'qixerapi_keys', '8c4bd14775713c34d214a20c7a174bfd1d08542ffba585e8a8f55c5f3f0aebf9', '[\"*\"]', '2022-09-28 07:17:05', '2022-09-28 07:04:41', '2022-09-28 07:17:05'),
(3873, 'App\\User', 1100, 'qixerapi_keys', 'd9a4bd34f88a391a9844d168fffb063e961fa7eea4d1bcae0fbb6b8670733a77', '[\"*\"]', '2022-09-28 19:00:47', '2022-09-28 18:59:38', '2022-09-28 19:00:47'),
(3874, 'App\\User', 1100, 'qixerapi_keys', '715d846ebb974e3989fc892dbededb4e77803f0affe393ed4d02214542bcd002', '[\"*\"]', '2022-09-28 19:01:01', '2022-09-28 19:00:54', '2022-09-28 19:01:01'),
(3875, 'App\\User', 876, 'qixerapi_keys', '63201833240289a11213903bba6cc9fd7b37d462a1cb9bfa8408b617d440d229', '[\"*\"]', '2022-09-28 23:35:09', '2022-09-28 23:35:08', '2022-09-28 23:35:09'),
(3876, 'App\\User', 1101, 'qixerapi_keys', 'd775ea3e7bfe1d65a0042acf339a0f8375773b283e2014e49495cbf46c8115a9', '[\"*\"]', '2022-09-29 08:17:26', '2022-09-29 00:42:50', '2022-09-29 08:17:26'),
(3877, 'App\\User', 1102, 'qixerapi_keys', 'b59ebcaf413e96eeba8a3e454f82098ef98a2bba14de1938b95802eec99e7d4e', '[\"*\"]', '2022-09-30 21:04:55', '2022-09-29 01:21:16', '2022-09-30 21:04:55'),
(3878, 'App\\User', 427, 'qixerapi_keys', '0838ed99cff4b5d85be97fc1f3ff3735fc69537cf7e533b9135e055bb8c8c48b', '[\"*\"]', '2022-09-29 05:26:10', '2022-09-29 05:24:58', '2022-09-29 05:26:10'),
(3879, 'App\\User', 1101, 'qixerapi_keys', '9e2a2d133dd24d980a8647fd3d61b6af8378d9b6361fcdbd977155e99f71185f', '[\"*\"]', '2022-09-29 08:18:42', '2022-09-29 08:17:28', '2022-09-29 08:18:42'),
(3881, 'App\\User', 1098, 'qixerapi_keys', '15e8f697fde03c18e7f7d28cd18c285a32a9cff7816a709b8dfb87f9d08f8dd4', '[\"*\"]', '2022-10-01 10:14:13', '2022-09-29 08:44:02', '2022-10-01 10:14:13'),
(3886, 'App\\User', 1104, 'qixerapi_keys', '662bb2cdc979c2b4bcd05214b2588a7b51adef1d44e0c42371251334a5f6d826', '[\"*\"]', '2022-09-30 12:56:01', '2022-09-29 19:18:26', '2022-09-30 12:56:01'),
(3889, 'App\\User', 427, 'qixerapi_keys', 'f62f7a9def7b189ddd2b37aa8ebb8ddeca519648b4e7ac5aee9d6fe8e492fc71', '[\"*\"]', '2022-09-30 00:14:11', '2022-09-30 00:14:09', '2022-09-30 00:14:11'),
(3891, 'App\\User', 427, 'qixerapi_keys', '91fe7a95c44e8c8da43f01763f91b6461e7899d81a4a59f90a3c5692960ed785', '[\"*\"]', '2022-09-30 01:33:56', '2022-09-30 01:33:54', '2022-09-30 01:33:56'),
(3893, 'App\\User', 1105, 'qixerapi_keys', '11eda4646af5b9b7985dfe16dbb6bc8d5ad4ab86d2a8d1dd7a3dcbb77959ca1d', '[\"*\"]', '2022-09-30 04:20:41', '2022-09-30 04:16:27', '2022-09-30 04:20:41'),
(3894, 'App\\User', 1105, 'qixerapi_keys', '50fdcd2362c42ca57e91ea4124e0f0b1e1a8d3108f0cc6a8dac283453cbf163b', '[\"*\"]', '2022-10-01 11:04:52', '2022-09-30 04:20:42', '2022-10-01 11:04:52'),
(3896, 'App\\User', 1106, 'qixerapi_keys', '6ff355ffed84fea59535f9d8f14d0d146711bdfe039d9b795490c05bcbd04c28', '[\"*\"]', NULL, '2022-09-30 04:27:24', '2022-09-30 04:27:24'),
(3898, 'App\\User', 615, 'qixerapi_keys', '2ae536cf29dd9cd85e07735406f76c4f946ee2833ad1e05caf56e1ec7640f871', '[\"*\"]', '2022-09-30 05:39:17', '2022-09-30 05:38:45', '2022-09-30 05:39:17'),
(3900, 'App\\User', 819, 'qixerapi_keys', 'f295f458fc85c276a2cb16aea34ff922fc928d932361de6e7034e4e5573c96ff', '[\"*\"]', '2022-09-30 11:58:23', '2022-09-30 11:56:45', '2022-09-30 11:58:23'),
(3901, 'App\\User', 819, 'qixerapi_keys', '3d67092d29e04b0157535788dc3de96f460ad56c0e9b357ed6b37ede010e1d4e', '[\"*\"]', '2022-09-30 11:58:53', '2022-09-30 11:58:25', '2022-09-30 11:58:53'),
(3902, 'App\\User', 1110, 'qixerapi_keys', '9281c9286606700b186f54170c6d3e1f1f88e8ed335a036c6457f374587f47f7', '[\"*\"]', '2022-09-30 12:07:59', '2022-09-30 12:04:09', '2022-09-30 12:07:59'),
(3903, 'App\\User', 1111, 'qixerapi_keys', '9d3272ee6ef2f8159044669dbf4667e16d99a49dec984e7ecbd1490b03737a45', '[\"*\"]', '2022-09-30 12:42:34', '2022-09-30 12:40:50', '2022-09-30 12:42:34'),
(3904, 'App\\User', 1111, 'qixerapi_keys', '84dfd33bcb9b48b681261602eaabcf476eb979b586f26e0212e175483881a040', '[\"*\"]', '2022-09-30 12:46:24', '2022-09-30 12:42:35', '2022-09-30 12:46:24'),
(3905, 'App\\User', 1111, 'qixerapi_keys', 'bed83de1a1441ccf967d95b3548706756ce4c75e1deca07f8d6518d782c583aa', '[\"*\"]', '2022-10-01 09:45:22', '2022-09-30 12:46:25', '2022-10-01 09:45:22'),
(3906, 'App\\User', 1104, 'qixerapi_keys', '0cfa948cdef70a7953704cf246ad16e6ddd1d66b1044843703f368768e94213e', '[\"*\"]', '2022-10-03 22:30:09', '2022-09-30 12:56:02', '2022-10-03 22:30:09'),
(3907, 'App\\User', 1112, 'qixerapi_keys', '41c2b5ba3da4f1c403a82f360ef0dbd6bee90063a17055302b5ec5d972467b5e', '[\"*\"]', '2022-09-30 14:39:25', '2022-09-30 14:06:08', '2022-09-30 14:39:25'),
(3908, 'App\\User', 1112, 'qixerapi_keys', 'fd0f90177a6cdbf4eb7d1c8600b0f976364d89a67df82afeabb88444e95dcf7e', '[\"*\"]', '2022-09-30 14:39:29', '2022-09-30 14:39:27', '2022-09-30 14:39:29'),
(3910, 'App\\User', 1102, 'qixerapi_keys', '8dd9421e0a492bbcaa1d4686995b64c160babc9e852dd75c9a5809a67f6076a6', '[\"*\"]', '2022-09-30 21:43:02', '2022-09-30 21:04:56', '2022-09-30 21:43:02'),
(3912, 'App\\User', 1102, 'qixerapi_keys', 'b5266dead980d5da466652dd243340c3c1160356f81e7bc350e74d746e316840', '[\"*\"]', '2022-10-01 20:15:45', '2022-09-30 21:43:03', '2022-10-01 20:15:45'),
(3914, 'App\\User', 1113, 'qixerapi_keys', 'cd12172137ae08e42d205bb333056153aadae5b414c6d987f1040bf9fbc4ddb3', '[\"*\"]', NULL, '2022-10-01 01:24:32', '2022-10-01 01:24:32'),
(3915, 'App\\User', 1113, 'qixerapi_keys', '5523659ecd3b1d31e089aff8e4e232509129ad3d3dcdd034821d163ab8d4b6f5', '[\"*\"]', '2022-10-01 01:25:48', '2022-10-01 01:25:30', '2022-10-01 01:25:48'),
(3917, 'App\\User', 1095, 'qixerapi_keys', '115e9a3d6d5f2bcd9798e60ff84bb72c93695bf11e417a80e8329fd2a458ca4b', '[\"*\"]', '2022-10-01 06:33:06', '2022-10-01 06:33:00', '2022-10-01 06:33:06'),
(3920, 'App\\User', 1074, 'qixerapi_keys', 'def6cac43a4c7ddab83a886c8880437d14127c66f4656bc3fd3c4fb02fed74db', '[\"*\"]', '2022-10-31 02:51:16', '2022-10-01 07:55:34', '2022-10-31 02:51:16'),
(3921, 'App\\User', 1114, 'qixerapi_keys', 'cec0a57a31f5e533aa3ed6922baa017838ce5f76fa9d1bb4aae97fe450672c14', '[\"*\"]', '2022-10-01 08:09:11', '2022-10-01 08:09:09', '2022-10-01 08:09:11'),
(3922, 'App\\User', 1111, 'qixerapi_keys', '75686937a9a42fb8a2d3b242580f4d839daf05400222478202ce88061fd80dec', '[\"*\"]', '2022-10-01 09:47:22', '2022-10-01 09:45:23', '2022-10-01 09:47:22'),
(3923, 'App\\User', 1111, 'qixerapi_keys', '1727e8afbf52116182091215a94c0ac3d307f726e625d00038aebe963f8936ea', '[\"*\"]', '2022-10-01 10:15:29', '2022-10-01 09:47:23', '2022-10-01 10:15:29'),
(3924, 'App\\User', 1098, 'qixerapi_keys', 'd89f4627990b93a3175228e5f4bedf3b191826677103606e56f771d8eb6798d3', '[\"*\"]', '2022-10-01 16:30:10', '2022-10-01 10:14:19', '2022-10-01 16:30:10'),
(3925, 'App\\User', 1111, 'qixerapi_keys', '1e0b1307a8b5fe20c0e780b36d1a6461d737b5f38201183cd8db62ceb73b2f48', '[\"*\"]', '2022-10-01 10:25:17', '2022-10-01 10:15:30', '2022-10-01 10:25:17'),
(3927, 'App\\User', 1111, 'qixerapi_keys', 'ef50fc707089e0cbb4058c0386d77af584569b9ac7a09aaf0b6287aceb8984af', '[\"*\"]', '2022-10-01 10:25:32', '2022-10-01 10:25:19', '2022-10-01 10:25:32'),
(3928, 'App\\User', 1111, 'qixerapi_keys', '2122af7d4bf44ad6ef516c31063179d8d0054f496f938fc12c1a674b9016862c', '[\"*\"]', '2022-10-01 12:45:21', '2022-10-01 10:25:33', '2022-10-01 12:45:21'),
(3930, 'App\\User', 1105, 'qixerapi_keys', 'd6f78977e358de511c961b218c213146a6b4c10fe321a0df492f9df193c218f8', '[\"*\"]', '2022-10-05 01:52:01', '2022-10-01 11:04:53', '2022-10-05 01:52:01'),
(3931, 'App\\User', 1111, 'qixerapi_keys', 'ec16f5b1bccb243d81e8d703b85935472b40f415f5bcedc3d9d78f7e4f9e4ca9', '[\"*\"]', '2022-12-04 10:06:02', '2022-10-01 12:45:23', '2022-12-04 10:06:02'),
(3932, 'App\\User', 1042, 'qixerapi_keys', '368288b30e17c35b75b59f9ceef5b4ec3acb7599b320a4adae5ab3bee1fec3d6', '[\"*\"]', '2022-10-02 05:19:18', '2022-10-01 12:55:24', '2022-10-02 05:19:18'),
(3933, 'App\\User', 1117, 'qixerapi_keys', '485491c9299b8ffa01954d26c81216ff7773a6f31c47bc00e09fb52b82e28a4a', '[\"*\"]', '2022-10-01 13:34:00', '2022-10-01 13:30:55', '2022-10-01 13:34:00'),
(3934, 'App\\User', 1118, 'qixerapi_keys', 'c077fc593299dc42f7b5ad30958dcdacb82608368e9ecb94097ba58e778388ad', '[\"*\"]', '2022-10-01 13:54:53', '2022-10-01 13:54:52', '2022-10-01 13:54:53'),
(3935, 'App\\User', 1098, 'qixerapi_keys', '80d7cbb468b93bec902e914110a7b28f7e06f38e25a3a93cc7d334ab32c25014', '[\"*\"]', '2022-10-02 07:34:20', '2022-10-01 16:30:12', '2022-10-02 07:34:20'),
(3937, 'App\\User', 1102, 'qixerapi_keys', 'e276470360581320171e55389bedf51c9facb8fb64f7a6008fb324060f7a49c5', '[\"*\"]', '2022-10-01 20:25:36', '2022-10-01 20:15:46', '2022-10-01 20:25:36'),
(3938, 'App\\User', 1102, 'qixerapi_keys', '8f90d53050fcfff2dd16d96534f587ab92809d4071267106a2bd8e5600427a4e', '[\"*\"]', '2022-10-01 20:38:45', '2022-10-01 20:25:37', '2022-10-01 20:38:45'),
(3939, 'App\\User', 1102, 'qixerapi_keys', 'aa461b4183e16ef506c431617ec54220163533f0780b28b262b6428a39ca1d1d', '[\"*\"]', '2022-10-01 20:38:48', '2022-10-01 20:38:47', '2022-10-01 20:38:48'),
(3940, 'App\\User', 483, 'qixerapi_keys', '7d82a7781d943e18162dd5a6ddeea6593651fdf9d0b6d6dddf397cd0c6d626df', '[\"*\"]', '2022-10-01 22:06:18', '2022-10-01 22:06:12', '2022-10-01 22:06:18'),
(3944, 'App\\User', 1042, 'qixerapi_keys', 'fc2691c8a1286720e42635ed438299b076477de11062235eba134ee2bdfc47b5', '[\"*\"]', '2022-10-02 08:04:41', '2022-10-02 05:19:20', '2022-10-02 08:04:41'),
(3946, 'App\\User', 1098, 'qixerapi_keys', 'b97ae3183b0b2c099e095c6ba395d5d2c95e34ab157465fd4a15632894405fc0', '[\"*\"]', '2022-10-02 13:01:17', '2022-10-02 07:34:22', '2022-10-02 13:01:17'),
(3948, 'App\\User', 1119, 'qixerapi_keys', 'eb9e9e7ae907cfb7a76b61f5ea5d84497e681a960cd87be6d60375f3b21411f9', '[\"*\"]', '2022-10-03 00:36:41', '2022-10-02 07:58:53', '2022-10-03 00:36:41'),
(3950, 'App\\User', 1042, 'qixerapi_keys', 'dabe4026f56715c2918c177f866a93ebb3686f2a028c8dcb56f7e43fb01ca0c2', '[\"*\"]', '2022-10-02 08:05:03', '2022-10-02 08:04:42', '2022-10-02 08:05:03'),
(3953, 'App\\User', 1120, 'qixerapi_keys', 'ed85daea1ef2b9ff01aabc34c200b12c8c17cd5676e006fb36fc9983b9ecc63a', '[\"*\"]', '2022-10-02 14:00:02', '2022-10-02 09:20:46', '2022-10-02 14:00:02'),
(3954, 'App\\User', 1098, 'qixerapi_keys', '056cd18638afea2d718bf7bb92c8f69230f7c0ff6b38ba69bb9cf7d58be9d21a', '[\"*\"]', '2022-10-07 15:31:18', '2022-10-02 13:01:18', '2022-10-07 15:31:18'),
(3955, 'App\\User', 1120, 'qixerapi_keys', '3f6bb164d6dbe090e6adb930d1ed5528762bf0116d9ca1f7f29a1a7dc88dc604', '[\"*\"]', '2022-10-03 02:16:12', '2022-10-02 14:00:03', '2022-10-03 02:16:12'),
(3956, 'App\\User', 1121, 'qixerapi_keys', 'b442754f9b225a18a797acfa7227e6f057c4ab8b500a3a7f0d259a82708a2563', '[\"*\"]', '2022-10-02 14:53:51', '2022-10-02 14:53:49', '2022-10-02 14:53:51'),
(3959, 'App\\User', 1122, 'qixerapi_keys', '5a0fbe4807505a940a00fe455cb2a7a73ded78dfafe7911b6f21db64f56c89c5', '[\"*\"]', '2022-10-02 21:55:06', '2022-10-02 18:08:48', '2022-10-02 21:55:06'),
(3961, 'App\\User', 1123, 'qixerapi_keys', '776550f744a0862d953b5e65f461d41c9b33b447b3011ef172367cda79c1d106', '[\"*\"]', NULL, '2022-10-02 19:45:41', '2022-10-02 19:45:41'),
(3962, 'App\\User', 1124, 'qixerapi_keys', 'dcbaa738d6b191889dd54ba7ee4630346f43d13768430af10ea0fb62addd3fd7', '[\"*\"]', '2022-10-02 19:48:18', '2022-10-02 19:48:17', '2022-10-02 19:48:18'),
(3964, 'App\\User', 1125, 'qixerapi_keys', 'c77e61c033bcb529f1891e2d1329f9e7094bd558f758d4a5f5b85f860ee48581', '[\"*\"]', NULL, '2022-10-02 21:47:16', '2022-10-02 21:47:16'),
(3965, 'App\\User', 1122, 'qixerapi_keys', '445c8f9052260169db755f843905e09b0262ba2dc65dcc1b47e36ff2c6d911bc', '[\"*\"]', '2022-10-02 21:55:09', '2022-10-02 21:55:07', '2022-10-02 21:55:09'),
(3970, 'App\\User', 1119, 'qixerapi_keys', 'fe66898490ef33bbecf6d750ec0bd31b89c29b76162f059ff35ec75b056c22a3', '[\"*\"]', '2022-10-03 00:39:32', '2022-10-03 00:36:43', '2022-10-03 00:39:32'),
(3973, 'App\\User', 1126, 'qixerapi_keys', 'f5ccaf4b66aa83e859d4c0f5e05fe7a804f52fc989b72789335a023908d0c3af', '[\"*\"]', '2022-12-23 08:25:15', '2022-10-03 01:46:06', '2022-12-23 08:25:15'),
(3974, 'App\\User', 1120, 'qixerapi_keys', 'fb3ac95805ad3726f134aabe70445612d675f3c18eaa871e6449b098ebcf1f3c', '[\"*\"]', '2022-10-03 02:20:37', '2022-10-03 02:16:13', '2022-10-03 02:20:37'),
(3975, 'App\\User', 218, 'qixerapi_keys', 'a124df59792856bb591258d84d0c91c23450a7a971935c2d97cfb79387efe0ea', '[\"*\"]', '2022-10-05 17:58:57', '2022-10-03 03:00:30', '2022-10-05 17:58:57'),
(3985, 'App\\User', 991, 'qixerapi_keys', '051896fcab5dab15884215b305551c47980a5935636eaf8957c942ceeb778198', '[\"*\"]', '2022-10-03 07:37:34', '2022-10-03 07:37:32', '2022-10-03 07:37:34'),
(3998, 'App\\User', 1104, 'qixerapi_keys', '7486015b2707f42c4f782c2f048d8a4c81902827a253065077f5a4fd23d9e714', '[\"*\"]', '2022-10-07 19:54:17', '2022-10-03 22:30:10', '2022-10-07 19:54:17'),
(4001, 'App\\User', 1128, 'qixerapi_keys', '63431635f8366b5754c98f47f50236288505107a7ab1733dc76c2f9910b228f7', '[\"*\"]', '2022-10-04 03:56:05', '2022-10-04 03:40:58', '2022-10-04 03:56:05'),
(4003, 'App\\User', 1128, 'qixerapi_keys', 'eea411b8642f09d2198c334396c55f3d5f91f1d96987d66186b78d11e964ad3a', '[\"*\"]', '2022-10-04 06:20:22', '2022-10-04 03:56:07', '2022-10-04 06:20:22'),
(4004, 'App\\User', 1129, 'qixerapi_keys', 'd8fe0242f9c45cbbcdcff52d434f8ba33e4187f01280c5c0e2618429cf3b5042', '[\"*\"]', '2022-10-04 03:56:29', '2022-10-04 03:56:27', '2022-10-04 03:56:29'),
(4007, 'App\\User', 1131, 'qixerapi_keys', '8cf6ed348e92e8859238602a7355e132838d23d0f511dd6fa6d89a1d1ede7396', '[\"*\"]', '2022-10-04 04:34:09', '2022-10-04 04:25:05', '2022-10-04 04:34:09'),
(4008, 'App\\User', 1128, 'qixerapi_keys', 'bb067e925fefef6d819f1d5d6b90d4300288afb1f8bd2c514e4b1f018c63f010', '[\"*\"]', '2022-10-04 12:18:48', '2022-10-04 06:20:24', '2022-10-04 12:18:48'),
(4009, 'App\\User', 1133, 'qixerapi_keys', '648e1ecc8e94178e32c83dd3e55cbe9360d20451aa05c65aeee067c1abda9339', '[\"*\"]', '2022-10-06 01:51:53', '2022-10-04 07:55:08', '2022-10-06 01:51:53'),
(4012, 'App\\User', 1134, 'qixerapi_keys', 'da15195c2e3749b325fe07dc9f7b215768e94c0cc0dc6c5d12b50c81e2582837', '[\"*\"]', '2022-10-29 13:20:58', '2022-10-04 10:59:57', '2022-10-29 13:20:58'),
(4014, 'App\\User', 1128, 'qixerapi_keys', '8962033fe533f4fdd2ce5f91e90b9dfc893ebfa0218b460514839f4d610218fb', '[\"*\"]', '2022-10-06 07:23:35', '2022-10-04 12:18:52', '2022-10-06 07:23:35'),
(4019, 'App\\User', 285, 'qixerapi_keys', '326b33acbc7dbbef063e3f1262b3242e19e713708c75f54541a6f7b5144191e5', '[\"*\"]', '2022-10-04 15:14:57', '2022-10-04 15:14:56', '2022-10-04 15:14:57'),
(4021, 'App\\User', 1135, 'qixerapi_keys', '9863ae6db45ccfd4185437ddb4bcd8e0ee6298d251b8a996f42af819ea9dee14', '[\"*\"]', '2022-10-04 18:56:05', '2022-10-04 17:44:56', '2022-10-04 18:56:05'),
(4022, 'App\\User', 1135, 'qixerapi_keys', 'f064b1ac691d14321c2a997f28162aec4fbfb3fb6e2a02609b8de538b1c3d8fb', '[\"*\"]', '2022-10-05 08:34:49', '2022-10-04 18:56:06', '2022-10-05 08:34:49'),
(4023, 'App\\User', 1136, 'qixerapi_keys', 'f928ca90d525ae16ebe300448dcb7eb258e24757d01e9ea153a3b76fb4b37814', '[\"*\"]', '2022-11-25 10:37:17', '2022-10-04 23:55:52', '2022-11-25 10:37:17'),
(4024, 'App\\User', 1105, 'qixerapi_keys', '89098771708dfd34aebf55ee306821b47b6b40fbca3e3bd54e17953fc6b5a6b3', '[\"*\"]', '2022-10-07 03:04:49', '2022-10-05 01:52:02', '2022-10-07 03:04:49'),
(4025, 'App\\User', 1137, 'qixerapi_keys', 'aa3c51cd6687386faf2c031a737145a711a1dd963652fa6d9ba72ab2bcef988f', '[\"*\"]', '2022-10-05 02:38:51', '2022-10-05 02:38:01', '2022-10-05 02:38:51'),
(4026, 'App\\User', 430, 'qixerapi_keys', '1772be6758bdede9387f18ece4b0b8028bebbd4f3fd95494cdcd1c3e30539728', '[\"*\"]', '2022-10-05 05:14:05', '2022-10-05 05:14:04', '2022-10-05 05:14:05'),
(4027, 'App\\User', 1135, 'qixerapi_keys', '4e531bee2b56ae3327f85dffd2c0582281c22c53a966f2eb9078b4aadfbd0e33', '[\"*\"]', '2022-10-05 08:54:06', '2022-10-05 08:34:51', '2022-10-05 08:54:06'),
(4028, 'App\\User', 1079, 'qixerapi_keys', '49666cbf1a51afe11ec1ac78938eda207091b93d438e866bdb50168dc8d05b2f', '[\"*\"]', '2022-10-05 08:39:16', '2022-10-05 08:39:15', '2022-10-05 08:39:16'),
(4032, 'App\\User', 1138, 'qixerapi_keys', 'fc2b9c9d0d1bedf73dd8f35b90aabfd7a0c610f9150eac3556b5c307286ef744', '[\"*\"]', '2022-10-06 21:02:45', '2022-10-05 12:24:51', '2022-10-06 21:02:45'),
(4033, 'App\\User', 1139, 'qixerapi_keys', '7fdaec0ad17df7c5f56d391be030a622ade805ffb9c6e058c23e74fd48c0f0b5', '[\"*\"]', '2022-10-05 14:50:26', '2022-10-05 14:47:14', '2022-10-05 14:50:26'),
(4034, 'App\\User', 1140, 'qixerapi_keys', 'a4f7cd837bd601a31b870907df473e6e7a7419a885d8e772f4146c58e9a48978', '[\"*\"]', '2022-10-05 15:45:47', '2022-10-05 15:44:11', '2022-10-05 15:45:47'),
(4037, 'App\\User', 218, 'qixerapi_keys', '0577f5823222f239cf6ed10ae0d9ffd9996e624d19bfc2fcffa3f5c1e903df9e', '[\"*\"]', '2022-10-05 17:59:06', '2022-10-05 17:58:59', '2022-10-05 17:59:06'),
(4039, 'App\\User', 309, 'qixerapi_keys', '8e3f6485880a3b2871991c2856ff3fc93cf33c017ad84b8c7d42f703f42cad81', '[\"*\"]', '2022-10-05 23:25:58', '2022-10-05 23:25:57', '2022-10-05 23:25:58'),
(4041, 'App\\User', 1141, 'qixerapi_keys', '7a15033262d2991155dddfe462ba17196e186a4d7d8ae62a23c3644c99f015ad', '[\"*\"]', '2022-10-05 23:48:44', '2022-10-05 23:48:43', '2022-10-05 23:48:44'),
(4042, 'App\\User', 1133, 'qixerapi_keys', '0da9b4af6b8818080144683be7a82c9c226be28c599789e581e32e7bb5333866', '[\"*\"]', '2022-10-06 01:52:46', '2022-10-06 01:51:54', '2022-10-06 01:52:46'),
(4043, 'App\\User', 1133, 'qixerapi_keys', 'e6c408a503ea9c8a52aa8b08a8f02204a73eacd08daa6ccc0608bea49867cfb8', '[\"*\"]', '2022-10-06 01:52:48', '2022-10-06 01:52:47', '2022-10-06 01:52:48'),
(4045, 'App\\User', 1142, 'qixerapi_keys', '56e1a4326831457106be50706764e8dabfd75458876a158267fac0ec1da8e91a', '[\"*\"]', '2022-10-06 06:36:52', '2022-10-06 02:53:45', '2022-10-06 06:36:52'),
(4048, 'App\\User', 1144, 'qixerapi_keys', '37c7bae2f7cd708ca69d4653b0ad7176110c2d81c64edcae9e4c9e9db669292e', '[\"*\"]', '2022-10-06 06:16:15', '2022-10-06 06:15:19', '2022-10-06 06:16:15'),
(4050, 'App\\User', 1142, 'qixerapi_keys', 'a80c731c75f0e09f334fa18b0825eab369fe1f81ff9ae95da03bd80275450976', '[\"*\"]', '2022-10-06 06:38:40', '2022-10-06 06:36:54', '2022-10-06 06:38:40'),
(4053, 'App\\User', 1128, 'qixerapi_keys', 'e264ec5d6c795036d150ce38b9ff50f761d5a38ad9ec5b820d054c8c304dd4d4', '[\"*\"]', '2022-10-06 07:23:57', '2022-10-06 07:23:36', '2022-10-06 07:23:57'),
(4056, 'App\\User', 1088, 'qixerapi_keys', '3ac4c0b7c4aa6f2bc836087c7a78d6d4172bb16a2eed4b2c38857d8dc6a74a60', '[\"*\"]', '2022-10-31 08:45:17', '2022-10-06 09:39:55', '2022-10-31 08:45:17'),
(4058, 'App\\User', 852, 'qixerapi_keys', 'c0dc8228e64ca5f0f6ce1163f3633d7aedf614f93206dd8b6374a9f66a3ab1bc', '[\"*\"]', '2022-10-06 12:39:47', '2022-10-06 12:30:41', '2022-10-06 12:39:47'),
(4059, 'App\\User', 1147, 'qixerapi_keys', '235ab6be47f9933e761e334d43e9f5c96a1fd8941194b0ba69933ec57d2ff188', '[\"*\"]', '2022-10-06 12:32:53', '2022-10-06 12:32:52', '2022-10-06 12:32:53'),
(4065, 'App\\User', 1149, 'qixerapi_keys', '61c6ee5fdaae0c5b066983fb75598618aaec47c80d2f059780b9ed70df428b41', '[\"*\"]', '2022-10-06 17:03:11', '2022-10-06 17:01:10', '2022-10-06 17:03:11'),
(4066, 'App\\User', 1138, 'qixerapi_keys', 'e80464b620b9f96f613b2844fc1e1a65a9ccd83b9d6384cb847d7690046b3bc7', '[\"*\"]', '2022-10-07 01:55:47', '2022-10-06 21:02:46', '2022-10-07 01:55:47'),
(4067, 'App\\User', 507, 'qixerapi_keys', 'aada35a41407e390e77d8a5736276215da8608a62fbcbed8df03646bb90ca5c5', '[\"*\"]', '2022-10-07 00:44:30', '2022-10-07 00:44:29', '2022-10-07 00:44:30'),
(4068, 'App\\User', 1150, 'qixerapi_keys', 'f25ebc4a8ec1649b9a7e01b4d4a30319f6151894de199e7fd39869d0f909b758', '[\"*\"]', '2022-10-07 01:03:47', '2022-10-07 01:01:29', '2022-10-07 01:03:47'),
(4069, 'App\\User', 1150, 'qixerapi_keys', '2226ee06435eec37b6641b1867cd6e248e7efc3be46f97cc8cf0d2b6f9b02567', '[\"*\"]', '2022-10-07 01:06:07', '2022-10-07 01:03:49', '2022-10-07 01:06:07'),
(4070, 'App\\User', 1138, 'qixerapi_keys', '030fd9e2eb271a24130cc7113273f322316d20f27649a72fcfe6fb80565ba325', '[\"*\"]', '2022-10-07 19:58:19', '2022-10-07 01:55:49', '2022-10-07 19:58:19'),
(4072, 'App\\User', 1105, 'qixerapi_keys', 'a2b585b369d1b8002142ac3a5b94b0977cdb93295f5694a9f2f4bfb7409b17fd', '[\"*\"]', '2022-10-07 03:05:55', '2022-10-07 03:04:51', '2022-10-07 03:05:55'),
(4074, 'App\\User', 1127, 'qixerapi_keys', 'd691cafa4188fcee17c4a6aa4f36c4354bb8b8bbb43c9f244a17f7a79a90b6bf', '[\"*\"]', '2022-10-07 06:16:28', '2022-10-07 03:40:09', '2022-10-07 06:16:28'),
(4082, 'App\\User', 507, 'qixerapi_keys', 'da79ee65f2db1e67941bde7da09242f98ddc5935d48b1f3c4e37ebac5cc144b7', '[\"*\"]', '2022-10-07 07:20:25', '2022-10-07 07:20:22', '2022-10-07 07:20:25'),
(4085, 'App\\User', 1152, 'qixerapi_keys', '49bba15b9d2af2efbb38201640aaaab69487c3d47a61404f61d77577b30abe0c', '[\"*\"]', '2022-10-07 12:41:43', '2022-10-07 12:41:41', '2022-10-07 12:41:43'),
(4086, 'App\\User', 479, 'qixerapi_keys', 'e57342d72232e92f93c24855bacb60810ecd834951d0eb583216c55c9ac2558d', '[\"*\"]', '2022-10-07 13:18:57', '2022-10-07 13:18:56', '2022-10-07 13:18:57'),
(4087, 'App\\User', 1098, 'qixerapi_keys', '15a27b8937acc52497d0e3a8162854106e905f55100526c80b9535e380b00360', '[\"*\"]', '2022-10-07 15:33:42', '2022-10-07 15:31:20', '2022-10-07 15:33:42'),
(4088, 'App\\User', 1098, 'qixerapi_keys', '9fe802db9a242b156ad1abb51ef468d18280f479d7b6f4270e82c8fb446dcb7c', '[\"*\"]', '2022-10-07 15:33:44', '2022-10-07 15:33:43', '2022-10-07 15:33:44'),
(4089, 'App\\User', 1104, 'qixerapi_keys', '6c8fcbf12c17d8949ac418758c72623ffde93b4953d0e77f1712c2c15bdb47ae', '[\"*\"]', '2022-10-30 13:53:10', '2022-10-07 19:54:18', '2022-10-30 13:53:10'),
(4090, 'App\\User', 1138, 'qixerapi_keys', 'fff50b2e631483412d463a046b73d23600132b2064853df5c5d188676f800a4d', '[\"*\"]', '2022-10-07 20:04:28', '2022-10-07 19:58:21', '2022-10-07 20:04:28'),
(4091, 'App\\User', 1138, 'qixerapi_keys', '0e8c02e6d4e8d857c4ca34f960bd57a446c7d309de49a6af9ca80be5189cf8d9', '[\"*\"]', '2022-10-07 20:45:21', '2022-10-07 20:04:30', '2022-10-07 20:45:21'),
(4092, 'App\\User', 1138, 'qixerapi_keys', '2ba9b6d9ecb603bdaa0e3c3f2fbc07173fe8cff4cc87453d952d345d6975bf16', '[\"*\"]', '2022-10-07 20:45:24', '2022-10-07 20:45:23', '2022-10-07 20:45:24'),
(4093, 'App\\User', 979, 'qixerapi_keys', 'b4d422e2e4107a3534b9db313ebf3a381feccfde157f818f936d0b6e22a5fa4f', '[\"*\"]', '2022-10-07 20:50:27', '2022-10-07 20:49:35', '2022-10-07 20:50:27'),
(4094, 'App\\User', 1004, 'qixerapi_keys', '7684bb12c71dadab2a040dc6f06761c49c487a939cffe1f7c19873aa6cf24982', '[\"*\"]', '2022-10-07 22:34:43', '2022-10-07 22:34:41', '2022-10-07 22:34:43'),
(4097, 'App\\User', 1153, 'qixerapi_keys', '36554b71642b4fbe23bff18f22e4183463c50f03918b31ff93dc06fbf6a27a05', '[\"*\"]', NULL, '2022-10-07 23:52:26', '2022-10-07 23:52:26'),
(4098, 'App\\User', 1154, 'qixerapi_keys', '5b58758ac62ff3ea9f0ba3c6e1bef26f4270fc1632927570897b13ce5cdbd92c', '[\"*\"]', NULL, '2022-10-08 01:22:12', '2022-10-08 01:22:12'),
(4099, 'App\\User', 1155, 'qixerapi_keys', 'df8d3387b45e13bc5d9b97f17bc94da391f5c374e0694ad49ea8faac175803fc', '[\"*\"]', NULL, '2022-10-08 02:52:19', '2022-10-08 02:52:19'),
(4100, 'App\\User', 1098, 'qixerapi_keys', '24fb06c63e055da83566e70db5daf98b575999545f78f5cc3de4cb90116d5e8b', '[\"*\"]', NULL, '2022-10-08 06:15:31', '2022-10-08 06:15:31'),
(4101, 'App\\User', 1156, 'qixerapi_keys', '3d6fb5d762542e2f2b180f4fb4debbcd635d4acd5e65f3e77bc0b75687334350', '[\"*\"]', NULL, '2022-10-08 06:19:14', '2022-10-08 06:19:14'),
(4102, 'App\\User', 1157, 'qixerapi_keys', '3af5dd62569520c5efc2150919ba88ec395adacd5c8bb3bbcf8112130d68983d', '[\"*\"]', NULL, '2022-10-08 06:25:53', '2022-10-08 06:25:53'),
(4103, 'App\\User', 1158, 'qixerapi_keys', 'a472254999f737348a4b4d1ba4e482a4c34e65ea0965ff5b7bc5d117395992c6', '[\"*\"]', NULL, '2022-10-08 06:28:45', '2022-10-08 06:28:45'),
(4104, 'App\\User', 1159, 'qixerapi_keys', '99814818c1078165a10f043ac803f33a974aa8f5afd6e570cbb887af697d681c', '[\"*\"]', NULL, '2022-10-08 09:16:49', '2022-10-08 09:16:49'),
(4105, 'App\\User', 1159, 'qixerapi_keys', '34f7fb6e63c179d98572902f8c9aa017de99346566d99ddbff0f91033b4747d9', '[\"*\"]', NULL, '2022-10-08 09:18:43', '2022-10-08 09:18:43'),
(4106, 'App\\User', 1159, 'qixerapi_keys', 'deb79805c54831b5716c5eeaf8d8e53aa390c7d62fa6db4b6a0596bdae73777d', '[\"*\"]', NULL, '2022-10-08 09:27:50', '2022-10-08 09:27:50'),
(4110, 'App\\User', 1149, 'qixerapi_keys', '5d401f4c5c277e523b7be359bc8e1573f8875a87e4b59f1ba27fbb6c4e195723', '[\"*\"]', NULL, '2022-10-08 09:51:25', '2022-10-08 09:51:25'),
(4112, 'App\\User', 1160, 'qixerapi_keys', 'a6668a155cae93379584af6f48872cc0b8bc7d32bdb2082e92e8abfb1b2eea9c', '[\"*\"]', NULL, '2022-10-08 10:43:57', '2022-10-08 10:43:57'),
(4113, 'App\\User', 158, 'qixerapi_keys', '79e02623be3e7c981f8655baa99c0fbd68605f0b8bd3d6144baaafe320324ffb', '[\"*\"]', NULL, '2022-10-08 14:36:52', '2022-10-08 14:36:52'),
(4116, 'App\\User', 1160, 'qixerapi_keys', '0309cb2a32f3c608744bc9677a4149f705777ad5770b5ef3463b982e0ec3b738', '[\"*\"]', NULL, '2022-10-08 16:07:36', '2022-10-08 16:07:36'),
(4117, 'App\\User', 1162, 'qixerapi_keys', 'd7577c4324b50a952349b0756ce02c25300f329cdcaa469d81db38a786fd891d', '[\"*\"]', NULL, '2022-10-08 16:08:21', '2022-10-08 16:08:21'),
(4123, 'App\\User', 1062, 'qixerapi_keys', 'e10b5a5f99f3c7e5b09559824aea0015b4bea81d4a8bc70d931b92b6bf833f45', '[\"*\"]', NULL, '2022-10-09 02:34:51', '2022-10-09 02:34:51'),
(4124, 'App\\User', 1051, 'qixerapi_keys', '0e090fee0ba69c9ebe48bd4b6be15e29b5472165e9f9d8cf6fc10d3d25f886fc', '[\"*\"]', NULL, '2022-10-09 02:53:20', '2022-10-09 02:53:20'),
(4125, 'App\\User', 1131, 'qixerapi_keys', 'ba9f0a113e6c746267d72f6997eb78785eb2e8c9e9ece5f53f9f21f29b854321', '[\"*\"]', NULL, '2022-10-09 03:35:28', '2022-10-09 03:35:28'),
(4126, 'App\\User', 1139, 'qixerapi_keys', '96e3136df1e6c57888afaf3f47f2d8088ffa489dcecd8bc761eef9545d2e7dd8', '[\"*\"]', NULL, '2022-10-09 04:43:53', '2022-10-09 04:43:53'),
(4128, 'App\\User', 463, 'qixerapi_keys', 'cca49a0c6534cbfec8fe65104206ec7aac6d28f4698d0bb179b013a20aa10d9e', '[\"*\"]', NULL, '2022-10-09 05:09:42', '2022-10-09 05:09:42'),
(4129, 'App\\User', 1049, 'qixerapi_keys', 'aa142368b930379b6ec687486d53333917eb738ff272352f493a1246555baa38', '[\"*\"]', NULL, '2022-10-09 06:27:23', '2022-10-09 06:27:23'),
(4130, 'App\\User', 1098, 'qixerapi_keys', '38db9b8ba8fdee10e3d5306a633be8b4b150a2bbcff8843944cff059df582993', '[\"*\"]', NULL, '2022-10-09 13:05:42', '2022-10-09 13:05:42'),
(4134, 'App\\User', 1160, 'qixerapi_keys', 'cb82256e74e2dbe52cfbe41b54823893776f1f703218c3262cdb84e1ba8350fc', '[\"*\"]', '2022-12-12 07:51:22', '2022-10-09 15:20:56', '2022-12-12 07:51:22'),
(4140, 'App\\User', 1163, 'qixerapi_keys', '02742401de9d2cb4ee7fa2fc1cd899787d997987b5c63850d69d2583f5ab9852', '[\"*\"]', NULL, '2022-10-12 01:53:31', '2022-10-12 01:53:31'),
(4142, 'App\\User', 1163, 'qixerapi_keys', 'ee3a8cad2fc7e7cb64b3dd785bda81016cf90497d5762c1286ec24d47a68abae', '[\"*\"]', NULL, '2022-10-12 02:31:05', '2022-10-12 02:31:05'),
(4143, 'App\\User', 1163, 'qixerapi_keys', 'c393de3435f580dd7e05b4d632d1aa003804ba9ab4114d55cff094818d1fc106', '[\"*\"]', NULL, '2022-10-12 02:36:13', '2022-10-12 02:36:13'),
(4144, 'App\\User', 1163, 'qixerapi_keys', 'ec4fcf5122dae9310e3c522b4bd3f017873a56bb275ea49d6789a585b9d75c9d', '[\"*\"]', NULL, '2022-10-12 02:41:58', '2022-10-12 02:41:58'),
(4145, 'App\\User', 1163, 'qixerapi_keys', 'c85dfbb03e03e6089bfe6aee211f9fa2d87c79973f68f64ed04eefe69d08a1d0', '[\"*\"]', NULL, '2022-10-12 02:44:04', '2022-10-12 02:44:04'),
(4146, 'App\\User', 1163, 'qixerapi_keys', '6f9ad314c73ed39d34119f863af026ac6d508f4a0bebc9571bbaa876ccd6788d', '[\"*\"]', NULL, '2022-10-12 02:49:40', '2022-10-12 02:49:40'),
(4147, 'App\\User', 1163, 'qixerapi_keys', '824d9bceb012ce5020448e2d35c0d90531d5bc082429479a62781acff354ec7a', '[\"*\"]', NULL, '2022-10-12 02:51:32', '2022-10-12 02:51:32'),
(4148, 'App\\User', 1163, 'qixerapi_keys', 'c9431c24a292fcaf721b2a4a3311265df05c3ad0b25852a46b0fbf7a766a21eb', '[\"*\"]', NULL, '2022-10-12 02:51:42', '2022-10-12 02:51:42'),
(4149, 'App\\User', 1163, 'qixerapi_keys', '0f1c0d10b6260bd0febf36ab15f465fade705c3193314af4be151638a6c03788', '[\"*\"]', NULL, '2022-10-12 02:57:42', '2022-10-12 02:57:42'),
(4150, 'App\\User', 1163, 'qixerapi_keys', '84636eb4bf5d1313eab2647b03d0c04de7317782d65e43996e8aa7ecc8ab1a2d', '[\"*\"]', NULL, '2022-10-12 02:58:49', '2022-10-12 02:58:49'),
(4172, 'App\\User', 1163, 'qixerapi_keys', 'fa43d0e4c1b980b6206cc5a7aea12ccd886557d46be64238045fb2aa438ee620', '[\"*\"]', NULL, '2022-10-19 06:08:08', '2022-10-19 06:08:08'),
(4187, 'App\\User', 1164, 'qixerapi_keys', '7e1bf41258a3571195db5d0c87addc1bb3deee8232c6d7e1e89c38f9bbe00b16', '[\"*\"]', NULL, '2022-10-29 11:12:18', '2022-10-29 11:12:18'),
(4188, 'App\\User', 1164, 'qixerapi_keys', '46b552ec9aa25ffcce54f290eef5b828fb3ee09a415f2cc992d9d8815d7c23d0', '[\"*\"]', '2022-10-29 11:16:22', '2022-10-29 11:15:15', '2022-10-29 11:16:22'),
(4189, 'App\\User', 1049, 'qixerapi_keys', '3572ee42fa9de93357d99dd27acb26c405820e0cfd565d469eacd7a64aa61bcd', '[\"*\"]', '2022-10-29 12:56:59', '2022-10-29 12:33:49', '2022-10-29 12:56:59'),
(4190, 'App\\User', 1134, 'qixerapi_keys', '7a30afd451d04a7d0a9e2d70d8db2b7a4a1146b5d47c4d4fda403722102525fb', '[\"*\"]', '2022-10-29 13:21:00', '2022-10-29 13:20:59', '2022-10-29 13:21:00'),
(4192, 'App\\User', 1165, 'qixerapi_keys', 'a649d2766cc646a61702f57eca53aeac7291aea85243285bd8cb87ba6241d40d', '[\"*\"]', '2022-10-31 23:34:41', '2022-10-29 14:36:01', '2022-10-31 23:34:41'),
(4197, 'App\\User', 863, 'qixerapi_keys', '97587953a2ddf9638939287f7996eba7ec72daa6979b69e82d3ef695180555da', '[\"*\"]', '2022-10-29 17:46:02', '2022-10-29 17:21:45', '2022-10-29 17:46:02'),
(4198, 'App\\User', 749, 'qixerapi_keys', 'd1ebcc63e6327fc75f5abdea78296112502fd9f943e275b1a8d6be382b2dd8aa', '[\"*\"]', '2022-10-29 18:02:54', '2022-10-29 18:02:52', '2022-10-29 18:02:54'),
(4199, 'App\\User', 1039, 'qixerapi_keys', 'c37466e56b3a9429bb63d214b91f68fc9345607e29bb5c3bf0b085494aeafd6e', '[\"*\"]', '2022-10-29 22:13:21', '2022-10-29 22:13:21', '2022-10-29 22:13:21'),
(4200, 'App\\User', 1166, 'qixerapi_keys', '4ab3bf0d5c9f0cb071336dac4553bb9f3114daad6f66a150588c0dd466dfe7d8', '[\"*\"]', '2022-10-29 22:48:22', '2022-10-29 22:48:21', '2022-10-29 22:48:22'),
(4201, 'App\\User', 1167, 'qixerapi_keys', '5fd72131186821d93770a4d07352781228a1c128edf814035934a1e19887a1f1', '[\"*\"]', '2022-10-30 01:16:38', '2022-10-30 01:16:37', '2022-10-30 01:16:38'),
(4210, 'App\\User', 677, 'qixerapi_keys', '514ceeae089b3781b53536cfe9a0b8609e85d126f7a86223128ae11e78754e34', '[\"*\"]', '2022-10-30 07:37:10', '2022-10-30 07:37:08', '2022-10-30 07:37:10'),
(4212, 'App\\User', 1138, 'qixerapi_keys', '582b1aab6dbd8aa643eae6a3b8a63be2083c955f053f4d80715fb4cbf3b43f8e', '[\"*\"]', '2022-10-30 10:05:13', '2022-10-30 10:03:21', '2022-10-30 10:05:13'),
(4213, 'App\\User', 1138, 'qixerapi_keys', 'eb1b4151890039bd66cdd1f84fdb21cbecbf9b75b9173b3ac9e9ce91d1dbb441', '[\"*\"]', '2022-10-30 10:44:03', '2022-10-30 10:05:15', '2022-10-30 10:44:03'),
(4214, 'App\\User', 1138, 'qixerapi_keys', 'deb56e0ecfe8de46dc25a70bcdfa77ba4e8a08957b47295060bc673b737b2767', '[\"*\"]', '2022-10-30 11:02:38', '2022-10-30 10:44:05', '2022-10-30 11:02:38'),
(4216, 'App\\User', 1168, 'qixerapi_keys', 'a82ad3084e26931b6fe9d6177742f84fa427a26a713fd3f430d4453310982988', '[\"*\"]', '2022-10-30 11:00:02', '2022-10-30 10:56:48', '2022-10-30 11:00:02'),
(4218, 'App\\User', 1138, 'qixerapi_keys', 'f1898c2d5762abeecd1ff593d8703164be91d12de8cea3d29ac444be2fb8dfa1', '[\"*\"]', '2022-10-30 11:04:09', '2022-10-30 11:02:39', '2022-10-30 11:04:09'),
(4219, 'App\\User', 1138, 'qixerapi_keys', 'de3dbe87bd2b9b7e54795c534dd99c6ad1795bd571a21d6c682a202cb5583fd6', '[\"*\"]', '2022-10-30 12:10:46', '2022-10-30 11:04:10', '2022-10-30 12:10:46'),
(4221, 'App\\User', 1138, 'qixerapi_keys', 'e44b2c98dfc29cd63a22fccd97bb770901501bf0e6f06828110f973be44f53fc', '[\"*\"]', '2022-10-30 12:16:56', '2022-10-30 12:10:48', '2022-10-30 12:16:56'),
(4224, 'App\\User', 1138, 'qixerapi_keys', '9537571b2c5a55411b80aae7ab408e2600ff64dbb85d6a931267088f016bec9a', '[\"*\"]', '2022-10-31 01:14:02', '2022-10-30 12:16:57', '2022-10-31 01:14:02'),
(4225, 'App\\User', 1104, 'qixerapi_keys', '0de3c30f219725828284f58f11d77a8b218d5ec8ec9620a683ba70fd02a1b66f', '[\"*\"]', '2022-10-30 13:53:32', '2022-10-30 13:53:11', '2022-10-30 13:53:32'),
(4241, 'App\\User', 1138, 'qixerapi_keys', 'd0eed284a92c7756cccdbda96a8cb61b9219f5111069ee1fa795a36f4a41cc7d', '[\"*\"]', '2022-10-31 05:37:00', '2022-10-31 01:14:03', '2022-10-31 05:37:00'),
(4242, 'App\\User', 761, 'qixerapi_keys', '039210bf8bf7a4b8988fa4c79dafdbb924a7a32936e4104848ceba726fc854ce', '[\"*\"]', NULL, '2022-10-31 01:14:46', '2022-10-31 01:14:46'),
(4243, 'App\\User', 761, 'qixerapi_keys', '4f5f725f2961aa9305750475d7c32d2e4bcbdd35fb0eea4b0d726bb43f2b43e0', '[\"*\"]', '2022-10-31 01:15:40', '2022-10-31 01:14:58', '2022-10-31 01:15:40'),
(4244, 'App\\User', 598, 'qixerapi_keys', 'b23204f7850b439c8da4abc5500e0e3265d3f2010616c47393d38ca61483251b', '[\"*\"]', '2022-10-31 02:25:08', '2022-10-31 02:12:30', '2022-10-31 02:25:08'),
(4245, 'App\\User', 1074, 'qixerapi_keys', '0d0f0901b02a96f44c2f02ba21fe50b00aed0b1d0a1336f0729b26e2ef16b08e', '[\"*\"]', '2022-10-31 13:15:05', '2022-10-31 02:51:17', '2022-10-31 13:15:05'),
(4246, 'App\\User', 598, 'qixerapi_keys', 'dfaf5bcd35f085ff34e8f8b917054b2a4c8eea7a4fcc49bdfd8c589c73c7b386', '[\"*\"]', '2022-10-31 03:12:40', '2022-10-31 03:12:40', '2022-10-31 03:12:40'),
(4247, 'App\\User', 1170, 'qixerapi_keys', '4d1a875671c4544dcf7a595cf71c7f198131b7d597b32f8e84e160d3d600f187', '[\"*\"]', '2022-10-31 03:45:46', '2022-10-31 03:45:44', '2022-10-31 03:45:46'),
(4248, 'App\\User', 761, 'qixerapi_keys', '590def2e55237de47d13fb8e9bf6624019b38d2de194d74f88205641de2a142b', '[\"*\"]', '2022-10-31 03:58:34', '2022-10-31 03:58:29', '2022-10-31 03:58:34'),
(4249, 'App\\User', 1171, 'qixerapi_keys', 'd13627b346b6384a1275221d91a760d2675a278267167f9503ce5d3d4715d3c3', '[\"*\"]', '2022-10-31 10:49:07', '2022-10-31 04:17:18', '2022-10-31 10:49:07'),
(4250, 'App\\User', 761, 'qixerapi_keys', '3496c9bc3ffe0673ed873d6046ad87eda250447ec3e5c50de7d3bcdf7686bff3', '[\"*\"]', '2022-10-31 04:53:39', '2022-10-31 04:53:32', '2022-10-31 04:53:39'),
(4251, 'App\\User', 1138, 'qixerapi_keys', '74f6c43cbae7adf16e1642bd02853033fb34f310cf111a6dc17cbe3a9496d117', '[\"*\"]', '2022-10-31 06:19:53', '2022-10-31 05:37:02', '2022-10-31 06:19:53'),
(4252, 'App\\User', 1138, 'qixerapi_keys', 'dfa06a9818069f74e577602d6cb8a49ccff1087f9b8d9a5eb5e9c020a4fa52f7', '[\"*\"]', '2022-10-31 06:29:27', '2022-10-31 06:19:55', '2022-10-31 06:29:27'),
(4253, 'App\\User', 1138, 'qixerapi_keys', 'caf5b24a0c187dfd40eb88fddea51a72b85d10411cc1ffa1ed6218216335eadb', '[\"*\"]', '2022-10-31 10:15:39', '2022-10-31 06:29:29', '2022-10-31 10:15:39'),
(4255, 'App\\User', 761, 'qixerapi_keys', '27451c41d1e698687fd728ca95cae80b637156df34bda95a4843c85faaecdd4f', '[\"*\"]', '2022-10-31 06:36:11', '2022-10-31 06:36:09', '2022-10-31 06:36:11'),
(4256, 'App\\User', 761, 'qixerapi_keys', 'b07550fa8ca7618ce334d996d9358205c006e19beaae0228e2c1abe163ad7971', '[\"*\"]', '2022-10-31 06:39:43', '2022-10-31 06:39:41', '2022-10-31 06:39:43'),
(4257, 'App\\User', 1088, 'qixerapi_keys', '48f4df4e8885b6535ccb7d8310c614b1efe0cbebac0cde83f92b2017e109530b', '[\"*\"]', '2022-10-31 08:45:19', '2022-10-31 08:45:18', '2022-10-31 08:45:19'),
(4258, 'App\\User', 761, 'qixerapi_keys', '5c924586213b2817a43ecbdec2e458b468d3d037f58a0171b6d90904bbc6cbe1', '[\"*\"]', '2022-10-31 09:54:32', '2022-10-31 09:54:30', '2022-10-31 09:54:32'),
(4259, 'App\\User', 1138, 'qixerapi_keys', '4db18e4adf33908a03fd8a76b8c006de38640b11657e3e74a8395bcc0179b7d4', '[\"*\"]', '2022-10-31 21:19:33', '2022-10-31 10:15:40', '2022-10-31 21:19:33'),
(4260, 'App\\User', 1171, 'qixerapi_keys', 'c8e3ca0e5a23b90d0f880c511a53287d4bd34525ab42cddc9a064efce1ce78a0', '[\"*\"]', '2022-10-31 20:38:40', '2022-10-31 10:49:08', '2022-10-31 20:38:40'),
(4261, 'App\\User', 1172, 'qixerapi_keys', '318929851185b26319d23279c7c561fd50f018fbc83ed619aaa935c1499112a2', '[\"*\"]', '2022-10-31 10:54:11', '2022-10-31 10:52:25', '2022-10-31 10:54:11'),
(4262, 'App\\User', 598, 'qixerapi_keys', 'e6fc4dd540f22f49d0184c78cc8bcf1fadc56c2ace6cd322d38bb26ecfb0448e', '[\"*\"]', '2022-10-31 12:09:05', '2022-10-31 12:09:04', '2022-10-31 12:09:05'),
(4263, 'App\\User', 1138, 'qixerapi_keys', 'f0ed71a97009c9e768c97c32ca11522e0800efd65a221f8fd9082180668d6dfe', '[\"*\"]', '2022-10-31 12:39:50', '2022-10-31 12:32:48', '2022-10-31 12:39:50'),
(4264, 'App\\User', 1138, 'qixerapi_keys', '00045892df5e8a07e9ef5e1d3bd286e11bf2bbcd31cdf53e0cb0656d8652512d', '[\"*\"]', '2022-10-31 21:12:13', '2022-10-31 12:39:51', '2022-10-31 21:12:13'),
(4265, 'App\\User', 1074, 'qixerapi_keys', '084a08d033feb9233a843c446230a36f78c5433f47f933e51819710dd625ace5', '[\"*\"]', '2022-10-31 13:15:08', '2022-10-31 13:15:07', '2022-10-31 13:15:08'),
(4266, 'App\\User', 1173, 'qixerapi_keys', '26298e0fa1a0e1bbe0a50ec271d71d4f45a26418b79b4a27ac6376ac768b43d8', '[\"*\"]', '2022-10-31 19:12:57', '2022-10-31 19:12:56', '2022-10-31 19:12:57'),
(4267, 'App\\User', 1171, 'qixerapi_keys', '5e70e4600819052372954fabcdcb0ab0fdc08858b64167e3d4646b38a456c8ef', '[\"*\"]', '2022-10-31 21:26:45', '2022-10-31 20:38:41', '2022-10-31 21:26:45'),
(4268, 'App\\User', 1138, 'qixerapi_keys', '8795f33ca0f110e0d237118b9c3ef7d1523c6481658b831576655667c92fe1d9', '[\"*\"]', '2022-10-31 21:19:36', '2022-10-31 21:19:34', '2022-10-31 21:19:36'),
(4269, 'App\\User', 1171, 'qixerapi_keys', '1a29ad519230feee4358d4b4abe1c65fe3392d00afad5d420722eba10211cd18', '[\"*\"]', '2022-10-31 21:26:48', '2022-10-31 21:26:46', '2022-10-31 21:26:48'),
(4273, 'App\\User', 598, 'qixerapi_keys', '26ee01e0f37d64da154c60ecba02abb81c8ca566c5e007942f65cf82ce2667c4', '[\"*\"]', '2022-10-31 22:19:44', '2022-10-31 22:19:17', '2022-10-31 22:19:44'),
(4275, 'App\\User', 1165, 'qixerapi_keys', '4da1f0fb0be342d955d2ba274c6ee2bfa98f5fb61391fc1da0e7619068f6d05d', '[\"*\"]', '2022-10-31 23:44:27', '2022-10-31 23:34:43', '2022-10-31 23:44:27'),
(4276, 'App\\User', 1165, 'qixerapi_keys', '4c7dd80a21b49a4be563444fc42dded8604f48c2b2e9795912a97b21743dd655', '[\"*\"]', '2022-11-26 13:44:47', '2022-10-31 23:44:28', '2022-11-26 13:44:47'),
(4295, 'App\\User', 1186, 'qixerapi_keys', '16110d8db26643786915f9ac2f86295d53ad76ab292c451104fdfa8d7609a6f6', '[\"*\"]', NULL, '2022-11-22 08:18:31', '2022-11-22 08:18:31'),
(4296, 'App\\User', 1186, 'qixerapi_keys', '86bea9a1e85c518a790095f4cd38d0881d3c5363a649bb0c12345230bc0063cd', '[\"*\"]', '2022-11-22 08:19:41', '2022-11-22 08:19:02', '2022-11-22 08:19:41'),
(4301, 'App\\User', 1190, 'qixerapi_keys', '3af197b9bde9877baa0a48e7bbc10983de49a3aeed33861c9bd8016ced200f6e', '[\"*\"]', NULL, '2022-11-22 10:21:15', '2022-11-22 10:21:15'),
(4302, 'App\\User', 1190, 'qixerapi_keys', 'b80650b36f279db0145d4eb6a6a5a5e82fe35e9c1e1d97507064d45baef51cc2', '[\"*\"]', '2022-11-22 18:07:46', '2022-11-22 10:21:48', '2022-11-22 18:07:46'),
(4303, 'App\\User', 598, 'qixerapi_keys', '0b400f0ec6eb12b07f5d55d536b6d0730ef55012f8ff133d26d94734aa762c1c', '[\"*\"]', '2022-11-22 10:43:04', '2022-11-22 10:42:20', '2022-11-22 10:43:04'),
(4305, 'App\\User', 1191, 'qixerapi_keys', '605780980bdb9d7b0580119f4c0bb2d81df0f2b5f16d6c299b0c899f953ce5b3', '[\"*\"]', '2022-12-09 10:52:53', '2022-11-22 11:17:46', '2022-12-09 10:52:53'),
(4307, 'App\\User', 1192, 'qixerapi_keys', '24defc81374027ce77899b44b55b156f8852c3c8cab015a78abeb8d7151a0a13', '[\"*\"]', '2022-11-22 13:17:31', '2022-11-22 13:17:30', '2022-11-22 13:17:31'),
(4308, 'App\\User', 1193, 'qixerapi_keys', '2fab3bafe9666631f659a61ca382e0d5fac1fa2394f4307bc435d8661e51ce32', '[\"*\"]', '2022-11-22 13:22:10', '2022-11-22 13:20:19', '2022-11-22 13:22:10'),
(4313, 'App\\User', 1190, 'qixerapi_keys', '902e9910fc516c5708e712f7e38eb18281dd41e9f05c57ab901db67c00c3a2f8', '[\"*\"]', '2022-11-22 18:18:23', '2022-11-22 18:07:49', '2022-11-22 18:18:23'),
(4314, 'App\\User', 1190, 'qixerapi_keys', '9224ba224c1de6c3dab635a067d08e48457fab9a4055542430fd09f6a2875a20', '[\"*\"]', '2022-11-22 19:14:48', '2022-11-22 18:18:25', '2022-11-22 19:14:48'),
(4315, 'App\\User', 1190, 'qixerapi_keys', '82c8d20df1d4c8bce305e88b997a106ab8d84ae19f17b08e82d22622196bc488', '[\"*\"]', '2022-11-22 19:26:54', '2022-11-22 19:14:50', '2022-11-22 19:26:54'),
(4317, 'App\\User', 1190, 'qixerapi_keys', 'ab6dac298e666fa4c7701f9a92a3a64a0f03aa77944d4b3b48bc8201bdb23c77', '[\"*\"]', '2022-11-23 03:23:09', '2022-11-22 19:26:56', '2022-11-23 03:23:09'),
(4331, 'App\\User', 1197, 'qixerapi_keys', 'c73b69425b815bb705f6b02e05a1e143a0694541e20e3066759879cb996650fd', '[\"*\"]', NULL, '2022-11-22 22:35:57', '2022-11-22 22:35:57'),
(4358, 'App\\User', 1198, 'qixerapi_keys', '631cf0666dee29d66ceeb8cd8d41a27e625873f120ba6ad5c322c12d4071de5a', '[\"*\"]', NULL, '2022-11-23 01:16:16', '2022-11-23 01:16:16'),
(4359, 'App\\User', 1198, 'qixerapi_keys', 'b73c12433713afc78368e012cd620bc311891b1a5c7a90219b6a6f7dd910a640', '[\"*\"]', '2022-11-23 01:16:36', '2022-11-23 01:16:32', '2022-11-23 01:16:36'),
(4370, 'App\\User', 598, 'qixerapi_keys', 'd238019837bb6e3959816da9e6aa4118ee0eaac15f70cfc9c529b4b4e712cd36', '[\"*\"]', '2022-12-28 04:31:08', '2022-11-23 02:38:52', '2022-12-28 04:31:08'),
(4371, 'App\\User', 1190, 'qixerapi_keys', 'a781f156b4ae785f27fb0ad2d2e0d004cbe4de310f7d58649273c6c5b45b4b90', '[\"*\"]', '2022-11-23 04:19:41', '2022-11-23 03:23:12', '2022-11-23 04:19:41'),
(4380, 'App\\User', 1190, 'qixerapi_keys', '0c4d8a34635ac96d80c93bdeea96c8ffa2a4e9f12f0c653517b6481319e1cb5f', '[\"*\"]', '2022-11-24 02:14:13', '2022-11-23 04:19:44', '2022-11-24 02:14:13'),
(4394, 'App\\User', 1074, 'qixerapi_keys', '5ac2f75c9f06dea7af98cbe5a9fbf259122a1c13c2d07fe58ef7cae2133ceaf8', '[\"*\"]', '2022-11-23 06:21:40', '2022-11-23 06:01:45', '2022-11-23 06:21:40'),
(4401, 'App\\User', 1199, 'qixerapi_keys', '6e8e29d1c5e5e23b525cb949f96d26e2004a9b430880c90510119d72869eeff3', '[\"*\"]', NULL, '2022-11-23 07:58:49', '2022-11-23 07:58:49'),
(4402, 'App\\User', 1200, 'qixerapi_keys', '1ebee7c727cadba67ec4cff662569108e7c7efadf07e8e2c3751eaf3f8ecbdcc', '[\"*\"]', '2022-11-24 08:22:48', '2022-11-23 07:59:27', '2022-11-24 08:22:48'),
(4411, 'App\\User', 1201, 'qixerapi_keys', '8ecf7feeb94d55b9cf9b53e41c90f0a58efd1801255083c44311964964404449', '[\"*\"]', '2022-12-01 02:10:01', '2022-11-23 15:35:11', '2022-12-01 02:10:01');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(4440, 'App\\User', 1190, 'qixerapi_keys', 'd3d88f6bd8607823bbdc2c7f50b7415fb1db4f45bfd6913731ac792f53312fee', '[\"*\"]', '2022-11-24 02:14:17', '2022-11-24 02:14:15', '2022-11-24 02:14:17'),
(4446, 'App\\User', 1204, 'qixerapi_keys', 'e0e8e6636dab003e6fcb3d17cd86cb7502b6b97126c2c6e1c01404f7e255caee', '[\"*\"]', NULL, '2022-11-24 04:41:58', '2022-11-24 04:41:58'),
(4447, 'App\\User', 1204, 'qixerapi_keys', '3e5afa62a9096c4ded0d622f48dc2b97b6f458a265af49008552180cd1867afc', '[\"*\"]', '2022-11-24 06:33:15', '2022-11-24 04:42:48', '2022-11-24 06:33:15'),
(4448, 'App\\User', 1205, 'qixerapi_keys', '462944a5954396e9758712a831afb801557534c52be77ea18576ad4c87b34f1e', '[\"*\"]', '2022-12-04 05:40:19', '2022-11-24 04:45:53', '2022-12-04 05:40:19'),
(4452, 'App\\User', 1206, 'qixerapi_keys', '0516872443acccf206dcfab1741c488d9cc569c8f7e721b6730a685ccbc13976', '[\"*\"]', NULL, '2022-11-24 05:49:37', '2022-11-24 05:49:37'),
(4453, 'App\\User', 1207, 'qixerapi_keys', 'd8566df3a265a64825ee8fa0a6355cc306d49918b01fe1a7ec072c4852a02066', '[\"*\"]', '2022-11-24 05:51:40', '2022-11-24 05:50:41', '2022-11-24 05:51:40'),
(4457, 'App\\User', 1204, 'qixerapi_keys', 'fee18eece022854dcf72bade822a2c9580ad3bc3d54fe0d02886c74631b4b741', '[\"*\"]', '2022-11-25 14:07:45', '2022-11-24 06:33:18', '2022-11-25 14:07:45'),
(4462, 'App\\User', 1200, 'qixerapi_keys', '88c7637d6b315432e7e6c157cf0e3e3fbb0e337eb28fc7482e56110a4e161c1a', '[\"*\"]', '2022-12-17 05:13:58', '2022-11-24 08:22:51', '2022-12-17 05:13:58'),
(4463, 'App\\User', 1208, 'qixerapi_keys', 'd07518d0b1e00e789958bac86d8a98e63ef615081dd907492fbc1d77423fd48b', '[\"*\"]', '2022-11-24 08:52:04', '2022-11-24 08:48:42', '2022-11-24 08:52:04'),
(4464, 'App\\User', 1208, 'qixerapi_keys', '2f8bfcd1651d5f4d54259bdbc49e308b31591e95beb7b5a38dc1849d217e1fae', '[\"*\"]', '2022-11-24 08:52:07', '2022-11-24 08:52:06', '2022-11-24 08:52:07'),
(4466, 'App\\User', 1209, 'qixerapi_keys', '0e27eeac06852f394a92caa2a035ebecaab09424e9664922e41869b5f82d9599', '[\"*\"]', NULL, '2022-11-24 09:46:43', '2022-11-24 09:46:43'),
(4473, 'App\\User', 1210, 'qixerapi_keys', 'a516bea7a918299ae0f5a4300a2a3d77802ed83b26f6c4fa80b006ea9a4e3b1b', '[\"*\"]', NULL, '2022-11-24 14:33:32', '2022-11-24 14:33:32'),
(4474, 'App\\User', 1210, 'qixerapi_keys', 'b10d18d9a025bd2919780a57caf73d49ccb7b6c5b054d6829225d98b0dbc3aa0', '[\"*\"]', '2022-11-24 14:34:50', '2022-11-24 14:34:02', '2022-11-24 14:34:50'),
(4476, 'App\\User', 1138, 'qixerapi_keys', '580a93f53e451f2d33ac0899cdf7a79f2d766f9dfadc8dc878840841807a1936', '[\"*\"]', '2022-11-25 00:46:34', '2022-11-24 21:05:43', '2022-11-25 00:46:34'),
(4477, 'App\\User', 890, 'qixerapi_keys', 'a5cd450d62be464a87a1e12ae138c93b8e0a678a86259077aeffd9332a1d4087', '[\"*\"]', '2022-11-24 21:11:09', '2022-11-24 21:10:33', '2022-11-24 21:11:09'),
(4479, 'App\\User', 1138, 'qixerapi_keys', 'cc1a70d892fda1d876a15d059d003b726617ce79e2a59be666c4c963ebfc10d9', '[\"*\"]', '2022-11-25 19:13:55', '2022-11-25 00:46:36', '2022-11-25 19:13:55'),
(4481, 'App\\User', 1212, 'qixerapi_keys', 'c4257ad07502aa55dbaf673f86aabb546f6a279253fe32891f0d13d21e764a4b', '[\"*\"]', NULL, '2022-11-25 03:11:00', '2022-11-25 03:11:00'),
(4482, 'App\\User', 1213, 'qixerapi_keys', '21ddad16117cf2b9c6b8292a71da2c49e2ae050106e46c80d0575a2492cc3079', '[\"*\"]', '2022-11-25 03:51:47', '2022-11-25 03:51:42', '2022-11-25 03:51:47'),
(4485, 'App\\User', 749, 'qixerapi_keys', 'dc6df636fcf55a93694e4e0c226d7c56c0534b20c7a751919a22308bb5cb5669', '[\"*\"]', '2022-11-25 22:23:50', '2022-11-25 07:19:46', '2022-11-25 22:23:50'),
(4486, 'App\\User', 1214, 'qixerapi_keys', '70acc65d559f7e95e903c93b4c5537ea869f3ac33c872e4a47bdd29f62350ec8', '[\"*\"]', '2022-11-25 10:00:52', '2022-11-25 10:00:51', '2022-11-25 10:00:52'),
(4487, 'App\\User', 1046, 'qixerapi_keys', '9450183a3470d9433ad09f429ec3617c25cf030303a2f09c4c8620a3f9f8f160', '[\"*\"]', '2022-11-29 22:16:05', '2022-11-25 10:34:59', '2022-11-29 22:16:05'),
(4488, 'App\\User', 1136, 'qixerapi_keys', 'a245f5ffcc75fb9c68424cf676546c67d509e266d82a1395b74919ede49ef040', '[\"*\"]', '2022-11-25 10:37:22', '2022-11-25 10:37:20', '2022-11-25 10:37:22'),
(4493, 'App\\User', 1204, 'qixerapi_keys', '9f5081407e6358d518c55e3ba408a2229fe534c7c1569142429b9612ea266ccd', '[\"*\"]', '2022-11-25 14:07:48', '2022-11-25 14:07:47', '2022-11-25 14:07:48'),
(4495, 'App\\User', 1215, 'qixerapi_keys', '01057f4cea513a6f1cfabbf30bf1ea2f4f16d0e7f30de274643d84867674d19b', '[\"*\"]', '2022-11-25 16:16:11', '2022-11-25 16:16:02', '2022-11-25 16:16:11'),
(4496, 'App\\User', 1138, 'qixerapi_keys', '84aaaf4894462fec1e69233df6fe52a663efa1e5423339c561dc512f10eb7f82', '[\"*\"]', '2022-11-26 01:45:50', '2022-11-25 19:13:57', '2022-11-26 01:45:50'),
(4497, 'App\\User', 1216, 'qixerapi_keys', 'cc770997b47dd5e517b684de9ca8f30bf1b5e9ca9120315b238f2082a4415075', '[\"*\"]', '2022-11-25 20:29:21', '2022-11-25 19:31:20', '2022-11-25 20:29:21'),
(4498, 'App\\User', 1216, 'qixerapi_keys', '67ff7720afbe3d874fcf7ed042377d77f84d16643db0e98e7030a3b51fe55063', '[\"*\"]', '2022-11-27 22:41:21', '2022-11-25 20:29:22', '2022-11-27 22:41:21'),
(4499, 'App\\User', 1217, 'qixerapi_keys', 'cd3db3643f4ddbb4132dc921897037d94c4cafcb99976be847217f7ba5545b15', '[\"*\"]', NULL, '2022-11-25 20:33:13', '2022-11-25 20:33:13'),
(4500, 'App\\User', 1217, 'qixerapi_keys', 'bd49cf004376c40613b6f78c8289cd07e4f6c638357760176c267f18527847b2', '[\"*\"]', '2022-11-26 10:26:40', '2022-11-25 20:34:05', '2022-11-26 10:26:40'),
(4501, 'App\\User', 1218, 'qixerapi_keys', '6c469a0c6c2e173bda3f95925a4354f5c0b0a713e262f59d4850ef1109632fd5', '[\"*\"]', NULL, '2022-11-25 20:43:50', '2022-11-25 20:43:50'),
(4502, 'App\\User', 1218, 'qixerapi_keys', 'a35c29d63f8b4a5510acdfb9f4dd49c47bf32e3aff6c83978f5dc6e73b086ab3', '[\"*\"]', '2022-11-25 20:46:37', '2022-11-25 20:45:29', '2022-11-25 20:46:37'),
(4503, 'App\\User', 1219, 'qixerapi_keys', '5ba728128ac6e817352fbb0d224d90145d85de0f151ab5a1c344b3b49495bdd3', '[\"*\"]', '2022-11-25 22:24:01', '2022-11-25 22:23:51', '2022-11-25 22:24:01'),
(4505, 'App\\User', 598, 'qixerapi_keys', 'bbb75ac44cd93fa6734ea6e7d812c5b11526b4269c54f1acf534f9889bf8e0e9', '[\"*\"]', '2022-11-25 23:06:01', '2022-11-25 23:06:01', '2022-11-25 23:06:01'),
(4506, 'App\\User', 1220, 'qixerapi_keys', '736b5f4f8370c968bc66d94ceaaeb55d3667db5b4c659e2807d0c767df3e028a', '[\"*\"]', '2022-11-29 19:13:44', '2022-11-26 00:38:14', '2022-11-29 19:13:44'),
(4508, 'App\\User', 1138, 'qixerapi_keys', '27ea9b6eebf9d476c50b412cab1408e62882fb7d4c2cea0350a02430d183af03', '[\"*\"]', '2022-11-26 10:15:53', '2022-11-26 01:45:52', '2022-11-26 10:15:53'),
(4521, 'App\\User', 822, 'qixerapi_keys', 'eb0f42683da4022655a1969708bec2acfd19c41dc8f83be23929d603b37289f7', '[\"*\"]', '2022-11-26 07:28:47', '2022-11-26 07:26:41', '2022-11-26 07:28:47'),
(4530, 'App\\User', 1223, 'qixerapi_keys', 'e7848e0bbe8a58f9eb55037bf0bd2f0354c295f97d845bd606448ad969be2e52', '[\"*\"]', '2022-11-26 08:15:47', '2022-11-26 08:15:45', '2022-11-26 08:15:47'),
(4537, 'App\\User', 1138, 'qixerapi_keys', '98ca28034e1cf92b580ebe41dfcc3a717fe3b5af741b03c611cd23b628513673', '[\"*\"]', '2022-11-29 11:03:05', '2022-11-26 10:15:55', '2022-11-29 11:03:05'),
(4538, 'App\\User', 1217, 'qixerapi_keys', 'a4da98fd124e1b415ba4d2fde7e3bbd0e5ed914f52ba0ef29f8a3a20f74bad2a', '[\"*\"]', '2022-11-27 09:53:58', '2022-11-26 10:26:41', '2022-11-27 09:53:58'),
(4539, 'App\\User', 1226, 'qixerapi_keys', '6cd0fa7fdd84b134935aa5f40b7078c71467dfb7f434362f036c072449ab86e2', '[\"*\"]', '2022-11-26 10:39:04', '2022-11-26 10:34:03', '2022-11-26 10:39:04'),
(4540, 'App\\User', 598, 'qixerapi_keys', 'aa63c94dcebca729e61a9506326d1bcad05e233dcea734d3f37af1cb92541351', '[\"*\"]', '2022-12-23 02:26:43', '2022-11-26 11:11:25', '2022-12-23 02:26:43'),
(4542, 'App\\User', 1159, 'qixerapi_keys', '651504e8bf4e32bfaaa14ec5012006d2b1224776ebdfe36d7aee6fac311fde1b', '[\"*\"]', '2022-11-30 01:45:57', '2022-11-26 13:11:21', '2022-11-30 01:45:57'),
(4549, 'App\\User', 1165, 'qixerapi_keys', '37b3636afc39d21b79348671a86853b0a6b12e7ad548355c5c3bb02a1d437141', '[\"*\"]', '2022-11-27 07:29:45', '2022-11-26 13:44:48', '2022-11-27 07:29:45'),
(4551, 'App\\User', 1228, 'qixerapi_keys', '9fdcb41f6b34a79ef1439215369ec9b31c1fdda1a5a4337c8119ae245d0f50a5', '[\"*\"]', '2022-11-26 15:43:47', '2022-11-26 15:43:46', '2022-11-26 15:43:47'),
(4568, 'App\\User', 1232, 'qixerapi_keys', 'ec09c315726bc20c0ad2a59e16809ab4c6bcb82a6e6e61dc807b5cf33ead56e1', '[\"*\"]', '2022-11-27 03:21:16', '2022-11-27 03:19:53', '2022-11-27 03:21:16'),
(4569, 'App\\User', 1232, 'qixerapi_keys', 'd31bda8281f1500103020c9f45803f198a9c79a3e726ee774fc2543eed976f56', '[\"*\"]', '2022-11-28 05:23:47', '2022-11-27 03:21:17', '2022-11-28 05:23:47'),
(4573, 'App\\User', 1233, 'qixerapi_keys', 'f3b1d85b1e461706a07297709340b84102769f86965db09fcf423991c80468ac', '[\"*\"]', '2022-11-27 05:33:17', '2022-11-27 05:33:17', '2022-11-27 05:33:17'),
(4576, 'App\\User', 598, 'qixerapi_keys', '0b302225c26a403e7bfa91d7b2e4a3b725d2be368dd106f30d1f4089e5c1d2e1', '[\"*\"]', '2022-11-27 06:13:49', '2022-11-27 06:13:13', '2022-11-27 06:13:49'),
(4581, 'App\\User', 1165, 'qixerapi_keys', '158fd34450f86234b6d6d74377ba7676340056937a84536767f99288670e8b4a', '[\"*\"]', '2022-11-27 07:30:23', '2022-11-27 07:29:46', '2022-11-27 07:30:23'),
(4585, 'App\\User', 1187, 'qixerapi_keys', '83662c8da780706c651f500a04ce4bbfecf57341bd47e80173c175c53ca25a79', '[\"*\"]', '2022-11-27 08:10:37', '2022-11-27 08:10:35', '2022-11-27 08:10:37'),
(4586, 'App\\User', 1187, 'qixerapi_keys', '574cfcc11b692f1d5c50fe879d1d35bf15a0cd252680eb7c69b6a3893fa31bfa', '[\"*\"]', '2022-11-27 10:22:12', '2022-11-27 08:21:03', '2022-11-27 10:22:12'),
(4587, 'App\\User', 1235, 'qixerapi_keys', '013a57f130b191e16c57d68ada26cdb8cbc5339ea3a1a825909fdcc308478a6b', '[\"*\"]', '2022-11-28 15:01:40', '2022-11-27 09:13:24', '2022-11-28 15:01:40'),
(4589, 'App\\User', 1217, 'qixerapi_keys', 'c4d52635b10ed8e6e1e774cef45e4917c4dd74c68fc1a665968b0440bca4daef', '[\"*\"]', '2022-11-27 18:38:26', '2022-11-27 09:53:59', '2022-11-27 18:38:26'),
(4590, 'App\\User', 1187, 'qixerapi_keys', 'efcd76bd52c9802d45014d4d09c0af03b0942f1d5d8b5b6ec3d1c5a36a87ee5f', '[\"*\"]', '2022-11-29 01:08:34', '2022-11-27 10:22:13', '2022-11-29 01:08:34'),
(4596, 'App\\User', 1236, 'qixerapi_keys', '8879bc208542235c58dd8e85b6ab192e11170d0f20d9123631140fc6a1ac856d', '[\"*\"]', '2022-11-27 14:09:39', '2022-11-27 14:09:38', '2022-11-27 14:09:39'),
(4597, 'App\\User', 1237, 'qixerapi_keys', '65eaba5691fa9e9bb60698b07dc9cae0bc60bfe3b8b4d2c89c0d35616d4cec75', '[\"*\"]', '2022-12-04 03:01:28', '2022-11-27 14:15:30', '2022-12-04 03:01:28'),
(4604, 'App\\User', 1238, 'qixerapi_keys', '3db0e9b6640ffdc51860e327d2d9db8f09ed48ba42a94c2f3c8042d67418ae8e', '[\"*\"]', '2022-11-27 15:02:26', '2022-11-27 15:01:38', '2022-11-27 15:02:26'),
(4605, 'App\\User', 363, 'qixerapi_keys', '31583e98fab569250493368e5cc9b11b82871bfde70745908af30133c957c7e9', '[\"*\"]', '2022-12-01 14:59:10', '2022-11-27 15:32:04', '2022-12-01 14:59:10'),
(4608, 'App\\User', 1217, 'qixerapi_keys', '48686fb51a1a7e105b6ff2b5923c1a35d7f7c3a3232e47c27edb0c9c33bed8a6', '[\"*\"]', '2022-11-27 18:55:24', '2022-11-27 18:38:27', '2022-11-27 18:55:24'),
(4611, 'App\\User', 1217, 'qixerapi_keys', '2131f80c8207d3270ef948c2546ff1559fd6c63284a7af6021bdffd989ace999', '[\"*\"]', '2022-11-27 19:00:52', '2022-11-27 18:55:25', '2022-11-27 19:00:52'),
(4612, 'App\\User', 1218, 'qixerapi_keys', '6181007af1b249e917fc7359744911eab1838698570d4d63541d9d674401cb63', '[\"*\"]', '2022-11-27 18:59:25', '2022-11-27 18:58:10', '2022-11-27 18:59:25'),
(4613, 'App\\User', 1217, 'qixerapi_keys', 'cb82f4c001886c70e8d49fcc6450e1cb9017b3f7af5d64e32354bead4b342b44', '[\"*\"]', '2022-11-27 19:07:38', '2022-11-27 19:00:53', '2022-11-27 19:07:38'),
(4614, 'App\\User', 1218, 'qixerapi_keys', 'a5938a703898f9cae06b77752d89c7452f7996c80baa8b70078e3969e993a5f0', '[\"*\"]', '2022-11-27 19:06:48', '2022-11-27 19:01:13', '2022-11-27 19:06:48'),
(4615, 'App\\User', 1217, 'qixerapi_keys', '0f0490702413398d9390a8329532e9d0da195fb417da924a7d4217b52f047b96', '[\"*\"]', '2022-12-04 19:29:57', '2022-11-27 19:07:39', '2022-12-04 19:29:57'),
(4616, 'App\\User', 310, 'qixerapi_keys', 'c9a48ba016d7f2c0fe2aaf46cf97c87096495c83a1d894a12cba03c48ffbc5dc', '[\"*\"]', '2022-11-27 20:18:25', '2022-11-27 20:18:19', '2022-11-27 20:18:25'),
(4617, 'App\\User', 1240, 'qixerapi_keys', 'dea8558e89d1353210eb556aa04e06889132844d69834c008f8ad97f58c1603b', '[\"*\"]', '2022-11-28 07:22:07', '2022-11-27 21:40:31', '2022-11-28 07:22:07'),
(4619, 'App\\User', 308, 'qixerapi_keys', '64a628a65670384fe0c9434abff9ef1eb4e110a592588e0f78e886bfa011c854', '[\"*\"]', '2022-11-27 22:17:40', '2022-11-27 22:16:19', '2022-11-27 22:17:40'),
(4621, 'App\\User', 1216, 'qixerapi_keys', '53d79440e36cd2d435922a425540d7ac74d673de5e1907fe374252e2ad33650f', '[\"*\"]', '2022-12-01 22:05:36', '2022-11-27 22:41:22', '2022-12-01 22:05:36'),
(4628, 'App\\User', 1244, 'qixerapi_keys', 'bb5a1855bfd5364e170276a02b945ea5db8cbb5e501492745d350e528d5f6149', '[\"*\"]', NULL, '2022-11-28 00:39:38', '2022-11-28 00:39:38'),
(4633, 'App\\User', 954, 'qixerapi_keys', '011c5f0c6e2872eb638c9b31f04e5e159d8eba622b5011641d3115ab81ec0858', '[\"*\"]', '2022-11-28 05:23:33', '2022-11-28 05:23:31', '2022-11-28 05:23:33'),
(4634, 'App\\User', 1232, 'qixerapi_keys', 'aacc432186252623bea905f871386c17b677a62cfb8c9afa0f782fc3b60a92e7', '[\"*\"]', '2022-12-31 08:02:04', '2022-11-28 05:23:48', '2022-12-31 08:02:04'),
(4641, 'App\\User', 1240, 'qixerapi_keys', '6b09651484856107c05b92ac40e4a45e24ca0d022fc14c8658f42c6df060982e', '[\"*\"]', '2022-11-28 07:22:09', '2022-11-28 07:22:08', '2022-11-28 07:22:09'),
(4654, 'App\\User', 1235, 'qixerapi_keys', 'cea60de578cbb209ebb21f21ea05a6ed6ba2e3ab8a2de72754a7be350df4b695', '[\"*\"]', '2022-12-07 00:22:32', '2022-11-28 15:02:13', '2022-12-07 00:22:32'),
(4662, 'App\\User', 1245, 'qixerapi_keys', 'c1101a04de3d984bbc89b5863a08258b65eda42728a590d25319d1fd4c2b9f9c', '[\"*\"]', NULL, '2022-11-28 19:23:41', '2022-11-28 19:23:41'),
(4668, 'App\\User', 1187, 'qixerapi_keys', 'f2568ef244343a7a6a50a6b8c4ce85713b42935317a218f542c87298b2e89581', '[\"*\"]', '2022-12-01 09:06:58', '2022-11-29 01:08:35', '2022-12-01 09:06:58'),
(4671, 'App\\User', 598, 'qixerapi_keys', '92a49608c58c6b36a9ea74912918204af4d301344c8e8ef8be16ffea316f0496', '[\"*\"]', '2022-12-11 04:15:19', '2022-11-29 02:58:12', '2022-12-11 04:15:19'),
(4673, 'App\\User', 1242, 'qixerapi_keys', 'acbe315a359d4c0761660445a1ccdb8ea9afbfd40cf75c63168358834071a51a', '[\"*\"]', '2022-12-05 23:42:38', '2022-11-29 03:41:40', '2022-12-05 23:42:38'),
(4681, 'App\\User', 1248, 'qixerapi_keys', '51d1b139353a876c236e720166b4dccf3ecc1e19ed575282e3d14fcb39dc9793', '[\"*\"]', '2022-11-29 15:27:42', '2022-11-29 05:43:35', '2022-11-29 15:27:42'),
(4688, 'App\\User', 1249, 'qixerapi_keys', '7e5cd8acb8336b50d30554678f4ee02b7b38300e51015ef1470c33be20b59384', '[\"*\"]', '2022-11-29 07:21:32', '2022-11-29 07:19:02', '2022-11-29 07:21:32'),
(4692, 'App\\User', 1138, 'qixerapi_keys', '0343a4f43402ed4fd5fdbfe4f73423fb67f379a2249c83274ddc481075448cc1', '[\"*\"]', '2022-11-30 10:08:04', '2022-11-29 11:03:07', '2022-11-30 10:08:04'),
(4694, 'App\\User', 1250, 'qixerapi_keys', '2eb1137868a7e30b6a45387e6e7da2555cd9a78a17047355b47c8ceb376667fa', '[\"*\"]', '2022-12-10 02:24:03', '2022-11-29 11:28:33', '2022-12-10 02:24:03'),
(4701, 'App\\User', 1252, 'qixerapi_keys', '2b09dd0bd11daddea0c7b544f438e4c2c16fb92b899522d2b98f5d45bb47a6ba', '[\"*\"]', '2022-11-29 20:38:01', '2022-11-29 14:39:03', '2022-11-29 20:38:01'),
(4704, 'App\\User', 1248, 'qixerapi_keys', '7ec224b231f5593a3e869cded1ce7113253ede3a7ec53f6ca75fd9086acfabb7', '[\"*\"]', '2022-12-09 13:45:11', '2022-11-29 15:27:46', '2022-12-09 13:45:11'),
(4705, 'App\\User', 1220, 'qixerapi_keys', '349d2ef2030c42c930052aad4f939866e9ae69280e47d9348b4ab82d93e27fe6', '[\"*\"]', '2022-11-29 19:13:47', '2022-11-29 19:13:46', '2022-11-29 19:13:47'),
(4706, 'App\\User', 1252, 'qixerapi_keys', 'c7639dbf5471eb7063ec6c781be741a4e658c7967fd06e241f92bda4c6d1c1d0', '[\"*\"]', '2022-11-29 20:43:31', '2022-11-29 20:38:02', '2022-11-29 20:43:31'),
(4707, 'App\\User', 1252, 'qixerapi_keys', '6856a04b717f70687a71c73c97804192b4bf55eb0af88d07d5fc95333fa21446', '[\"*\"]', '2022-11-30 00:18:52', '2022-11-29 20:43:33', '2022-11-30 00:18:52'),
(4708, 'App\\User', 1046, 'qixerapi_keys', 'faf1c03d371b73cd40a20908a72a7acd781aa09882536f575d2407b6a6e2df03', '[\"*\"]', '2022-11-29 22:49:47', '2022-11-29 22:16:07', '2022-11-29 22:49:47'),
(4710, 'App\\User', 1253, 'qixerapi_keys', 'f3959a36e5fad36f0603349a2681d4a4ab2d4d3e0c2bd75e68f8e1be2dedab08', '[\"*\"]', '2022-12-01 08:23:14', '2022-11-29 23:00:16', '2022-12-01 08:23:14'),
(4712, 'App\\User', 1252, 'qixerapi_keys', '0da87e3fcb942a73be39b0305f5425e313ee633b0a5454524dfeafb0d8de2263', '[\"*\"]', '2022-11-30 00:18:55', '2022-11-30 00:18:54', '2022-11-30 00:18:55'),
(4719, 'App\\User', 1159, 'qixerapi_keys', '305294c22c5bc52ed52ee46ac44a99e800f9633e4786912bd068d88c8a0b96d2', '[\"*\"]', '2022-12-25 16:31:06', '2022-11-30 01:45:59', '2022-12-25 16:31:06'),
(4722, 'App\\User', 598, 'qixerapi_keys', '535764f1cd31410ae752f208ac9abadfa6040bde3dded5fb32fe92d5290f20db', '[\"*\"]', '2022-11-30 03:18:57', '2022-11-30 03:12:53', '2022-11-30 03:18:57'),
(4725, 'App\\User', 514, 'qixerapi_keys', '456b8f64765b0c87ce5ddfabe557e2eb613583604049ccbd1467fc5ab7d9e2f3', '[\"*\"]', '2022-11-30 04:45:50', '2022-11-30 03:40:28', '2022-11-30 04:45:50'),
(4727, 'App\\User', 514, 'qixerapi_keys', '1cc976b2c4dec3e2c145d5ea409d0521fee921fe7ca902d9db88249dda0da79f', '[\"*\"]', '2022-12-04 05:40:46', '2022-11-30 04:45:51', '2022-12-04 05:40:46'),
(4728, 'App\\User', 1256, 'qixerapi_keys', 'bd80eae369d3813f69d67a21b0d54ef225400ea209236217a3850e946874a7f8', '[\"*\"]', NULL, '2022-11-30 06:25:59', '2022-11-30 06:25:59'),
(4729, 'App\\User', 1257, 'qixerapi_keys', '99b091fd680180a514bdacfdeb233da5b6eea5719b2dc8e774f9748ba423aae7', '[\"*\"]', '2022-11-30 07:35:13', '2022-11-30 07:26:52', '2022-11-30 07:35:13'),
(4732, 'App\\User', 956, 'qixerapi_keys', '5829796e41cc43ec25b086b0cc375e8a0cf540553353724187337289942c4505', '[\"*\"]', '2022-11-30 09:44:27', '2022-11-30 09:44:26', '2022-11-30 09:44:27'),
(4733, 'App\\User', 1138, 'qixerapi_keys', '360b8b4270133fbace7558141a905ad6be5c57a7596c1c0b94871c43b6073c04', '[\"*\"]', '2022-11-30 23:14:59', '2022-11-30 10:08:07', '2022-11-30 23:14:59'),
(4743, 'App\\User', 1138, 'qixerapi_keys', '07afdff9d11a2f8bf5bc07b3b1f2d0fd6354db5f0521c9f515f3c302d4f0d563', '[\"*\"]', '2022-12-01 00:51:57', '2022-11-30 23:15:00', '2022-12-01 00:51:57'),
(4747, 'App\\User', 1258, 'qixerapi_keys', '7b1a1f87e3b3b0936ac22c3a32a9ac5d7a5d37959aabd7c974d919b52a0773ee', '[\"*\"]', '2022-11-30 23:56:07', '2022-11-30 23:56:05', '2022-11-30 23:56:07'),
(4754, 'App\\User', 1138, 'qixerapi_keys', 'eedf6470c9e72a579dfb809232326107b3ecfefd13c326212ca4cb16e2f93ebc', '[\"*\"]', '2022-12-02 09:03:29', '2022-12-01 00:51:59', '2022-12-02 09:03:29'),
(4757, 'App\\User', 1201, 'qixerapi_keys', '7d64d71ed8d609ed520d355a4e8dd339c2ab0cd113b1027eafebb9c0fafed21a', '[\"*\"]', '2022-12-01 02:10:04', '2022-12-01 02:10:03', '2022-12-01 02:10:04'),
(4763, 'App\\User', 1253, 'qixerapi_keys', '70f2d6507c33c91abbf24c3d4f604f65c79e63368709de213ed7d20b5f6e5b14', '[\"*\"]', '2022-12-01 08:25:34', '2022-12-01 08:23:16', '2022-12-01 08:25:34'),
(4766, 'App\\User', 1187, 'qixerapi_keys', '10175d193c2b842cd58a5af57068c7e3658d499871198bddc4480a84e99a9827', '[\"*\"]', '2022-12-02 04:35:01', '2022-12-01 09:06:59', '2022-12-02 04:35:01'),
(4769, 'App\\User', 363, 'qixerapi_keys', 'b069b8142f9f191dacefd0c951b3918c60d9ac22de6c0231fa1b66285684c5ab', '[\"*\"]', '2022-12-23 15:39:51', '2022-12-01 14:59:12', '2022-12-23 15:39:51'),
(4770, 'App\\User', 1264, 'qixerapi_keys', '404bd98c1c0ce89049a57e02ee6dd06b579ff123032114c914ab92e78665afcb', '[\"*\"]', '2022-12-01 20:00:54', '2022-12-01 19:57:39', '2022-12-01 20:00:54'),
(4772, 'App\\User', 1216, 'qixerapi_keys', '837634861859571a4d5497bfa5070cd77e42e95506e114c5f422bbc0ee22d1bf', '[\"*\"]', '2022-12-04 16:25:57', '2022-12-01 22:05:38', '2022-12-04 16:25:57'),
(4781, 'App\\User', 1187, 'qixerapi_keys', '3841319cddbd7ce95bf24cf3c8fac508546861b30af9b0b1204a9d203e61ce60', '[\"*\"]', '2022-12-02 04:41:05', '2022-12-02 04:35:03', '2022-12-02 04:41:05'),
(4784, 'App\\User', 1266, 'qixerapi_keys', '2b0c6ba3ad0d51da07d0816e158c241b37d94360273967f81946e74a338d1a5b', '[\"*\"]', '2022-12-02 05:42:30', '2022-12-02 05:41:16', '2022-12-02 05:42:30'),
(4787, 'App\\User', 1138, 'qixerapi_keys', '4def5f7f3b21fa92fd3ad8ecd6aa9ab6bd5965d05d0bb67b8fb0dd23279dd260', '[\"*\"]', '2022-12-03 05:16:38', '2022-12-02 09:03:31', '2022-12-03 05:16:38'),
(4796, 'App\\User', 1268, 'qixerapi_keys', '1d7cb360e059b3e1f8bd6da31d503dd475b8459864f5e40cf3e7997e71731881', '[\"*\"]', '2022-12-06 10:06:10', '2022-12-02 15:28:29', '2022-12-06 10:06:10'),
(4797, 'App\\User', 1227, 'qixerapi_keys', '6560d3c82b899486f30101a99ebf8db8b79cbfc6a49e8e79730aa5c29b58e029', '[\"*\"]', '2022-12-03 03:45:27', '2022-12-02 17:23:22', '2022-12-03 03:45:27'),
(4817, 'App\\User', 1119, 'qixerapi_keys', 'fcae34fb7ac9499904558def9902698b2acc88d034f4a021a31dd6598fa58496', '[\"*\"]', '2022-12-03 07:03:31', '2022-12-03 00:38:03', '2022-12-03 07:03:31'),
(4820, 'App\\User', 1269, 'qixerapi_keys', '9dfbe3cfed1896f0e84948695ec93fcc6951ee3c0fbb5ca50a348dfee11750a4', '[\"*\"]', NULL, '2022-12-03 01:29:17', '2022-12-03 01:29:17'),
(4821, 'App\\User', 1269, 'qixerapi_keys', '764f9b977f9621cff290463943bd77cc049b893696f16403936ba2fae924e8c2', '[\"*\"]', '2022-12-03 01:29:39', '2022-12-03 01:29:37', '2022-12-03 01:29:39'),
(4828, 'App\\User', 1227, 'qixerapi_keys', 'b345e567e23bfd0b6e1478935a8bdd0f6af32d2e89f03a87a8c2292b581ada18', '[\"*\"]', '2022-12-04 08:54:28', '2022-12-03 03:45:29', '2022-12-04 08:54:28'),
(4830, 'App\\User', 1138, 'qixerapi_keys', '017e7796379056013b75fa8b5018b5402d76bfa20811812b3b1d42a0550661f0', '[\"*\"]', '2022-12-07 23:39:52', '2022-12-03 05:16:39', '2022-12-07 23:39:52'),
(4834, 'App\\User', 1119, 'qixerapi_keys', '25a6ebb17760eb5e2d36e9e4c1129d58c7485b4017381ac52270d327fc23c3b0', '[\"*\"]', '2022-12-03 07:20:56', '2022-12-03 07:03:32', '2022-12-03 07:20:56'),
(4847, 'App\\User', 852, 'qixerapi_keys', 'f12d147c36e067db5bd9c31dd4f6d2c4b888e192920a355d19bfaee4a7f4d77d', '[\"*\"]', '2022-12-03 08:40:49', '2022-12-03 08:40:48', '2022-12-03 08:40:49'),
(4850, 'App\\User', 1269, 'qixerapi_keys', '2365c8227bffb51e59db6325591dfc46ebede2597daaedb299c828f7126e099f', '[\"*\"]', '2022-12-03 09:14:22', '2022-12-03 09:14:21', '2022-12-03 09:14:22'),
(4853, 'App\\User', 1272, 'qixerapi_keys', '4c857ce35f128da3a212aada5e620def4bd71dc637d301c320f6653d1466caf6', '[\"*\"]', '2022-12-03 13:02:04', '2022-12-03 12:58:22', '2022-12-03 13:02:04'),
(4854, 'App\\User', 1272, 'qixerapi_keys', 'd9bc2ade784e7951711937d20105dff115e5b34d8817fbba45de40f309c7ef1c', '[\"*\"]', NULL, '2022-12-03 13:02:05', '2022-12-03 13:02:05'),
(4863, 'App\\User', 1237, 'qixerapi_keys', '361db42e2ab8f2d5cd57849c3970607eabbb0b559719212efa421dc4a0fc4e40', '[\"*\"]', '2022-12-04 03:40:42', '2022-12-04 03:01:29', '2022-12-04 03:40:42'),
(4864, 'App\\User', 1237, 'qixerapi_keys', '211006a28996523a7c0b6dab3510e8cf265238ef8602b669b94cfcc12cdc73e3', '[\"*\"]', '2022-12-04 03:48:00', '2022-12-04 03:40:43', '2022-12-04 03:48:00'),
(4866, 'App\\User', 1205, 'qixerapi_keys', 'e091a91d5e353b4baf5ee601b9367bcd76b18d52500eb6ad64314ef5f2e6c8c5', '[\"*\"]', '2022-12-12 06:43:54', '2022-12-04 05:40:20', '2022-12-12 06:43:54'),
(4867, 'App\\User', 514, 'qixerapi_keys', 'd7a6539857778a305da1581ddbb040093eb614f8837fd469418b7a634cd698ea', '[\"*\"]', '2022-12-07 09:11:05', '2022-12-04 05:40:48', '2022-12-07 09:11:05'),
(4868, 'App\\User', 1227, 'qixerapi_keys', '49dfea991b7ec87a98b53541322b13a749b94d776e30bb50dfb42a89d5a15000', '[\"*\"]', '2022-12-04 15:33:01', '2022-12-04 08:54:30', '2022-12-04 15:33:01'),
(4870, 'App\\User', 1111, 'qixerapi_keys', '123c203f4c36862e5a25c0c19fc5f1aba2fde4b4f9ea2f81f363ad2d44dce8be', '[\"*\"]', '2022-12-04 10:11:59', '2022-12-04 10:06:03', '2022-12-04 10:11:59'),
(4871, 'App\\User', 1111, 'qixerapi_keys', 'ab403633eb8087d68847b168ce581becd3f4f6e95f95c8400a0d4d36fe019235', '[\"*\"]', '2022-12-04 10:16:17', '2022-12-04 10:12:00', '2022-12-04 10:16:17'),
(4872, 'App\\User', 1111, 'qixerapi_keys', 'a025ef746c37cfe570df692a78fced25eb0039f800d82b52ad9b986b8bfa1987', '[\"*\"]', '2022-12-04 10:17:31', '2022-12-04 10:16:18', '2022-12-04 10:17:31'),
(4873, 'App\\User', 1111, 'qixerapi_keys', '67efc69e02fc7a20331669f3fcbed2922fc55368f78662357e5eac3b64834856', '[\"*\"]', '2022-12-04 10:35:04', '2022-12-04 10:17:33', '2022-12-04 10:35:04'),
(4874, 'App\\User', 1111, 'qixerapi_keys', 'fbfe19cfbab3efb1811d5f72a987d1af0c07304af9f85bffe3ca37af7d56d84c', '[\"*\"]', '2022-12-18 08:04:35', '2022-12-04 10:35:06', '2022-12-18 08:04:35'),
(4876, 'App\\User', 1228, 'qixerapi_keys', '65bc58e47d3895ae0b8a73f30e645eac4d4d2e8a71710765a12a40a448f9c969', '[\"*\"]', '2022-12-04 10:51:29', '2022-12-04 10:47:42', '2022-12-04 10:51:29'),
(4882, 'App\\User', 1227, 'qixerapi_keys', 'fc83a532a84e557b34c285432062dc3a8b1c45753511328eca778c9694d146a6', '[\"*\"]', '2022-12-04 15:33:05', '2022-12-04 15:33:03', '2022-12-04 15:33:05'),
(4883, 'App\\User', 1168, 'qixerapi_keys', 'a5afd0b71d415c725b8217e175f26d1c8f9f9ca490e9e0776c812d55a229aacb', '[\"*\"]', '2022-12-26 13:55:45', '2022-12-04 16:07:03', '2022-12-26 13:55:45'),
(4884, 'App\\User', 1216, 'qixerapi_keys', 'f1c34dd93a97d78b153e08180a91f199463650a84b90f54e3bc0021019b72b0b', '[\"*\"]', '2022-12-06 01:14:38', '2022-12-04 16:25:58', '2022-12-06 01:14:38'),
(4885, 'App\\User', 1217, 'qixerapi_keys', '8fcf4b34c756f5013f0421bf007b380ec85cbb9829ffe3dba94b800219256c49', '[\"*\"]', '2022-12-29 11:45:48', '2022-12-04 19:29:58', '2022-12-29 11:45:48'),
(4887, 'App\\User', 1278, 'qixerapi_keys', 'c2116fb9da5803def2c27ef037abf4d1c8ac52a79568d2d51a00c9e35cea0b86', '[\"*\"]', '2022-12-04 22:28:25', '2022-12-04 22:18:03', '2022-12-04 22:28:25'),
(4888, 'App\\User', 1278, 'qixerapi_keys', '3baeab3a9b359fb37a9dd744d60964d8cbecaf70758302c764615feb8f507764', '[\"*\"]', '2022-12-04 22:30:49', '2022-12-04 22:28:25', '2022-12-04 22:30:49'),
(4893, 'App\\User', 1279, 'qixerapi_keys', '8d050d13ea829255824352dc23b0e766eba5cbfa9f2db8c1c1c0d28960fbd8f5', '[\"*\"]', NULL, '2022-12-05 03:05:31', '2022-12-05 03:05:31'),
(4902, 'App\\User', 1049, 'qixerapi_keys', '23ce7eb5ae46a800cd78b43cc568b12af41a496450b63c827e01502c4ae44936', '[\"*\"]', '2022-12-16 07:01:45', '2022-12-05 08:04:55', '2022-12-16 07:01:45'),
(4904, 'App\\User', 1280, 'qixerapi_keys', '11ed3d8e77e8916a3287be3d38d15a086ab0aac824c2974e09a2aec86a9b3d6d', '[\"*\"]', '2022-12-05 09:09:39', '2022-12-05 09:09:06', '2022-12-05 09:09:39'),
(4906, 'App\\User', 598, 'qixerapi_keys', '8275f520c832412211e963a1748b14cb9c80779009b074942907c02c8d325d8e', '[\"*\"]', '2022-12-05 12:58:01', '2022-12-05 12:58:00', '2022-12-05 12:58:01'),
(4910, 'App\\User', 1281, 'qixerapi_keys', 'b625d3fffbbcc15cb9effcfbc301e7c86e6a479d91dd2ade996f8aa2e2b1d878', '[\"*\"]', NULL, '2022-12-05 14:52:16', '2022-12-05 14:52:16'),
(4911, 'App\\User', 1281, 'qixerapi_keys', 'cbf0dad1b949f624e4a5b921bfd8f282581ec9b13b9b72d55ecbb114a443f80a', '[\"*\"]', '2022-12-06 09:30:42', '2022-12-05 14:52:47', '2022-12-06 09:30:42'),
(4926, 'App\\User', 1242, 'qixerapi_keys', '6e27f52181eeace20d2c09b8e0e794ac43f197db8ba5eee326c14f595a304bad', '[\"*\"]', '2022-12-06 23:19:52', '2022-12-05 23:42:39', '2022-12-06 23:19:52'),
(4928, 'App\\User', 598, 'qixerapi_keys', '65aa04d703178f506d0aaa929920ccb5f0189633686a017cf01a56dbd49e53e9', '[\"*\"]', '2022-12-06 00:39:26', '2022-12-06 00:02:14', '2022-12-06 00:39:26'),
(4933, 'App\\User', 598, 'qixerapi_keys', 'b26fce58bb4da20328e51e5726db25cdb614ae73beb5f282e51f155d390455f7', '[\"*\"]', '2022-12-15 11:37:47', '2022-12-06 00:39:27', '2022-12-15 11:37:47'),
(4936, 'App\\User', 1216, 'qixerapi_keys', 'f461eea6cae8224d297baa5b75fb43f942f5bd34fcca72f46cab82f172e0d0d2', '[\"*\"]', '2022-12-07 00:20:54', '2022-12-06 01:14:39', '2022-12-07 00:20:54'),
(4947, 'App\\User', 1283, 'qixerapi_keys', 'eb44f2bb3af1208b83edea0e222f17185042c8c46ee58c2e81ba1fcb1ba319a7', '[\"*\"]', '2022-12-06 04:30:02', '2022-12-06 04:28:57', '2022-12-06 04:30:02'),
(4954, 'App\\User', 1284, 'qixerapi_keys', 'd1e03872c86ac55f0260ede6e46274caa6787c3af9ba00ef61354e5230f6b50d', '[\"*\"]', '2022-12-15 02:10:30', '2022-12-06 07:33:07', '2022-12-15 02:10:30'),
(4960, 'App\\User', 1286, 'qixerapi_keys', '75709b9a23c479c63dfb7113c1c039e94767ddf3874e2ea42aa5eace9e5e0093', '[\"*\"]', NULL, '2022-12-06 07:47:58', '2022-12-06 07:47:58'),
(4961, 'App\\User', 1286, 'qixerapi_keys', 'd85332fbc017adb63d6b214afb0e703bdcf813138c165c006cf5248a796d2c60', '[\"*\"]', '2022-12-13 03:52:13', '2022-12-06 07:48:24', '2022-12-13 03:52:13'),
(4962, 'App\\User', 1287, 'qixerapi_keys', '6a364727ffad152b6594c195d50727ba98b381fa471fdf67b2d80c60095909bd', '[\"*\"]', NULL, '2022-12-06 07:51:06', '2022-12-06 07:51:06'),
(4963, 'App\\User', 1118, 'qixerapi_keys', '5d5861b9364e4b992340972a62c06ddcc56741be17b0ad7306202906f3be2485', '[\"*\"]', '2022-12-06 10:26:13', '2022-12-06 08:31:39', '2022-12-06 10:26:13'),
(4964, 'App\\User', 1281, 'qixerapi_keys', '3f7298e7171e5d576b2853e111cf896bfd0105bca8f2f29018b02905c8c166cd', '[\"*\"]', '2022-12-06 09:30:44', '2022-12-06 09:30:43', '2022-12-06 09:30:44'),
(4966, 'App\\User', 1268, 'qixerapi_keys', '55839f3be8ac2897cc93f0edd16c4527a31f5e6ea95e0ec3ba3cb0853c5180f2', '[\"*\"]', '2022-12-06 10:06:12', '2022-12-06 10:06:11', '2022-12-06 10:06:12'),
(4968, 'App\\User', 1118, 'qixerapi_keys', '49ca09c112734a124a8d5cd502dabe78c71147cbe70e62b7eb0e6e7e870454ee', '[\"*\"]', '2022-12-07 02:03:20', '2022-12-06 10:26:15', '2022-12-07 02:03:20'),
(4970, 'App\\User', 1288, 'qixerapi_keys', '34ae1b622e2aa778902f09ecc351620cded2fe34d67bfb77f485ce637e9fc4d1', '[\"*\"]', NULL, '2022-12-06 18:59:43', '2022-12-06 18:59:43'),
(4971, 'App\\User', 1288, 'qixerapi_keys', 'e55a6ec05178a03c024f5513536665184460fb8b8c6e4b18726e1f5f4f1b05f6', '[\"*\"]', '2022-12-06 19:00:32', '2022-12-06 19:00:05', '2022-12-06 19:00:32'),
(4972, 'App\\User', 598, 'qixerapi_keys', 'ed5d2e1b0cb8fce165e0d968185421d48852c2093ac056e952a4c09ebf1852d6', '[\"*\"]', '2022-12-06 19:42:04', '2022-12-06 19:42:03', '2022-12-06 19:42:04'),
(4977, 'App\\User', 1289, 'qixerapi_keys', '7dbddab88dd506874578c7bff7d9c363d5a06b0efc0d961e5d7b0b0a02a881e2', '[\"*\"]', '2022-12-07 02:25:17', '2022-12-06 22:29:23', '2022-12-07 02:25:17'),
(4981, 'App\\User', 1242, 'qixerapi_keys', 'b70ba787902dbb1b624e971b0fd783b088dac880e1f21ce8e47cfeb7de321932', '[\"*\"]', '2022-12-07 04:01:03', '2022-12-06 23:19:54', '2022-12-07 04:01:03'),
(4984, 'App\\User', 455, 'qixerapi_keys', 'a8e2cab14d7b65e62674dca3fcd77ca8b601bbdf8c03b887e5780db50da0f477', '[\"*\"]', '2022-12-06 23:55:54', '2022-12-06 23:49:19', '2022-12-06 23:55:54'),
(4985, 'App\\User', 455, 'qixerapi_keys', 'bfb4f291c1ff98c0685645d2c1ae1da4a4a2f9971a91826460d9a9f18087a1fd', '[\"*\"]', '2022-12-07 00:00:10', '2022-12-07 00:00:07', '2022-12-07 00:00:10'),
(4986, 'App\\User', 455, 'qixerapi_keys', '43f33156f13449c4bd7a4d8271271812fc16824bd5acc3aa6970695f8b74878a', '[\"*\"]', '2022-12-07 00:01:09', '2022-12-07 00:01:07', '2022-12-07 00:01:09'),
(4987, 'App\\User', 455, 'qixerapi_keys', '1312f1dea1325d7a3af86ef3d6bbef0c0620450f486cafd29848a6a0412db613', '[\"*\"]', '2022-12-07 00:04:37', '2022-12-07 00:04:35', '2022-12-07 00:04:37'),
(4988, 'App\\User', 455, 'qixerapi_keys', '6d7bc531d138cdc1492d50768c39f7188e0d4bd8e2571ebae2d37afd5599e542', '[\"*\"]', '2022-12-07 00:04:54', '2022-12-07 00:04:52', '2022-12-07 00:04:54'),
(4989, 'App\\User', 455, 'qixerapi_keys', '70cc434e8b1e8ac9e4fc12fdbb7ba7674c1b2000b89ce12e02b9d64f8035d8f1', '[\"*\"]', '2022-12-07 00:05:28', '2022-12-07 00:05:11', '2022-12-07 00:05:28'),
(4990, 'App\\User', 455, 'qixerapi_keys', '765660c98c03bc7764985b3856da4e6ecd6aade2028c32cb0e58f0b76d5e2279', '[\"*\"]', '2022-12-07 00:11:27', '2022-12-07 00:11:25', '2022-12-07 00:11:27'),
(4991, 'App\\User', 455, 'qixerapi_keys', '12d74a964bd80a4566c5504315614476c73528035a2db2db602ba1e3482a83d0', '[\"*\"]', '2022-12-07 00:12:28', '2022-12-07 00:12:10', '2022-12-07 00:12:28'),
(4992, 'App\\User', 455, 'qixerapi_keys', '7ddb03a1b46af2d28f9cd6c85bfa5d25703562260e447651919449f5e23d97ea', '[\"*\"]', '2022-12-07 00:12:51', '2022-12-07 00:12:48', '2022-12-07 00:12:51'),
(4993, 'App\\User', 455, 'qixerapi_keys', '27e3b37208fbb335656973cc7275c9e523b3e85fcbcc806cf804b4210c609e54', '[\"*\"]', '2022-12-07 00:13:48', '2022-12-07 00:13:43', '2022-12-07 00:13:48'),
(4994, 'App\\User', 455, 'qixerapi_keys', '4336eef760afd26fe6fc457edb9549483d23bf4506608f846b301da69c7f23fb', '[\"*\"]', '2022-12-07 00:14:24', '2022-12-07 00:14:12', '2022-12-07 00:14:24'),
(4995, 'App\\User', 455, 'qixerapi_keys', 'd10a7efbfcc198e18fbbf43fb3422b37681cf520c356c771a3a1afc13eb6011c', '[\"*\"]', '2022-12-07 00:15:41', '2022-12-07 00:15:31', '2022-12-07 00:15:41'),
(4996, 'App\\User', 1216, 'qixerapi_keys', 'b9ced9ef57eea572040fe742c291c03b5226694f101b5862e18dc860c5bb17e5', '[\"*\"]', '2022-12-09 21:32:24', '2022-12-07 00:20:56', '2022-12-09 21:32:24'),
(4997, 'App\\User', 1235, 'qixerapi_keys', 'b85ddd42c80c0a9788df1bf9b8ef2b48e45315fe7502872eab80574750fb5f69', '[\"*\"]', '2022-12-07 00:35:49', '2022-12-07 00:22:34', '2022-12-07 00:35:49'),
(5000, 'App\\User', 1290, 'qixerapi_keys', '38296887254748003a30951aaad3fad9d9b0def7d6383a025aa5a58aea39310e', '[\"*\"]', '2022-12-07 01:18:13', '2022-12-07 01:18:12', '2022-12-07 01:18:13'),
(5002, 'App\\User', 1118, 'qixerapi_keys', '39d161c596c960a1ccba4426ea6f9a14ead716ebee3cf6212818794a7d2b3662', '[\"*\"]', '2022-12-07 02:11:43', '2022-12-07 02:03:22', '2022-12-07 02:11:43'),
(5004, 'App\\User', 1118, 'qixerapi_keys', 'a7a87ec779ee96aaa943ee7f0eb20cb629ce3b1c3fc447b18a4e5ab9e3c52f5a', '[\"*\"]', '2022-12-07 02:11:46', '2022-12-07 02:11:44', '2022-12-07 02:11:46'),
(5005, 'App\\User', 1291, 'qixerapi_keys', 'ba95aca1558d6a05a459be9361d020f6dd8526ecfef6f00d51990fa9c2ef6050', '[\"*\"]', NULL, '2022-12-07 02:20:39', '2022-12-07 02:20:39'),
(5006, 'App\\User', 1291, 'qixerapi_keys', '03c39d034431d0003c56fc03bf84801fc90975b0a2ed2c09772eb5d90bb17c02', '[\"*\"]', '2022-12-07 02:21:39', '2022-12-07 02:20:59', '2022-12-07 02:21:39'),
(5007, 'App\\User', 1289, 'qixerapi_keys', '274f037285f102f24a7ad8b7891adcb0741d918ad9c6db04a6f6d23293d1a969', '[\"*\"]', '2022-12-07 02:37:29', '2022-12-07 02:25:18', '2022-12-07 02:37:29'),
(5011, 'App\\User', 1292, 'qixerapi_keys', 'adcd07991b7096970f5e27a2ab50051e754bd9af16fa4f582e392e851142ad8c', '[\"*\"]', NULL, '2022-12-07 04:23:36', '2022-12-07 04:23:36'),
(5012, 'App\\User', 1292, 'qixerapi_keys', '5a7ef6d1a7455dacf7cae6e4981b14a692f1e635e0452f14cce0175419d9a178', '[\"*\"]', '2022-12-07 04:27:25', '2022-12-07 04:24:27', '2022-12-07 04:27:25'),
(5013, 'App\\User', 1293, 'qixerapi_keys', '84be9610880a019a3542ed2f0506b4f5278116a6959d130f5bb3a8bc01f8102e', '[\"*\"]', NULL, '2022-12-07 06:13:59', '2022-12-07 06:13:59'),
(5015, 'App\\User', 1294, 'qixerapi_keys', '5d6371a0f0fc1d7a66294dee26d0e4eaf295f66cbb0eb536ba19c9b10d43cef1', '[\"*\"]', NULL, '2022-12-07 08:42:44', '2022-12-07 08:42:44'),
(5016, 'App\\User', 1294, 'qixerapi_keys', '2c6eafbef9e9d8dbd3972e84b67f4b8c370eccd471e645bb1ca540d7252f106e', '[\"*\"]', '2022-12-07 09:19:26', '2022-12-07 08:43:08', '2022-12-07 09:19:26'),
(5017, 'App\\User', 514, 'qixerapi_keys', 'da2292d5c356430808b441f8a0e050caf7eba50973b6bdf975f8281dac6266d0', '[\"*\"]', '2022-12-20 04:12:38', '2022-12-07 09:11:05', '2022-12-20 04:12:38'),
(5019, 'App\\User', 1294, 'qixerapi_keys', 'b4315772a5bae807d43d9028022d31dd4dfafd5848e9f7f58078542e21a08fe4', '[\"*\"]', '2022-12-08 02:48:34', '2022-12-07 09:19:28', '2022-12-08 02:48:34'),
(5022, 'App\\User', 1295, 'qixerapi_keys', '69476772d9257915cde727f4ca553136b94f2508091d6eafe391365bdc75ad16', '[\"*\"]', NULL, '2022-12-07 10:10:19', '2022-12-07 10:10:19'),
(5023, 'App\\User', 1295, 'qixerapi_keys', '9ff5b5736a0c069afca8fb8b46da79ab7ce9395c7aee48f340a3901279d44e9f', '[\"*\"]', '2022-12-07 10:11:50', '2022-12-07 10:11:00', '2022-12-07 10:11:50'),
(5024, 'App\\User', 1295, 'qixerapi_keys', '2c719734a18c316c4efd5fc8595aaf691657b72b177429f14300c5ee9035db88', '[\"*\"]', '2022-12-07 18:39:19', '2022-12-07 10:53:08', '2022-12-07 18:39:19'),
(5036, 'App\\User', 1295, 'qixerapi_keys', '4cc03c51e2dda7278887169cfe65eb828106ace793e9a2e43de99841f6f3e9cd', '[\"*\"]', '2022-12-10 11:46:16', '2022-12-07 18:39:22', '2022-12-10 11:46:16'),
(5037, 'App\\User', 455, 'qixerapi_keys', 'ca1f679284e1d8870206bd1cab37045c2426b5de7feefbb08ec8e1e1811c5d4f', '[\"*\"]', '2022-12-07 23:04:10', '2022-12-07 23:01:33', '2022-12-07 23:04:10'),
(5038, 'App\\User', 455, 'qixerapi_keys', '63c94ce0ef27253aca44d449ff8a9278f43c63b4c392a3157792bfa53676f0f5', '[\"*\"]', '2022-12-07 23:14:58', '2022-12-07 23:07:15', '2022-12-07 23:14:58'),
(5039, 'App\\User', 455, 'qixerapi_keys', 'ac33313a6046de0640ecd609a0f295f20d2c82db600d3d1c3af8b6f1dfaaa2d3', '[\"*\"]', '2022-12-08 00:08:36', '2022-12-07 23:16:53', '2022-12-08 00:08:36'),
(5040, 'App\\User', 1138, 'qixerapi_keys', '7c98403059f8cd157b8626118a834768a5a97eb02bbf44af357968358b38f7bd', '[\"*\"]', '2022-12-14 20:10:49', '2022-12-07 23:39:54', '2022-12-14 20:10:49'),
(5045, 'App\\User', 455, 'qixerapi_keys', '38f0e40ef803d031c32378f0d159bf6081069934be257321654457e3dec359dc', '[\"*\"]', '2022-12-08 00:17:44', '2022-12-08 00:17:18', '2022-12-08 00:17:44'),
(5046, 'App\\User', 455, 'qixerapi_keys', '94981c8ab6f6ab76edd6ebc9758f6dd74fe8ebd52bf039eef053b32d63f64a7d', '[\"*\"]', '2022-12-08 00:24:05', '2022-12-08 00:21:59', '2022-12-08 00:24:05'),
(5047, 'App\\User', 455, 'qixerapi_keys', 'a5012251e873c685d19ec8a993566816291a43d9fc2a7e8244e6bd1fd7a4b190', '[\"*\"]', '2022-12-08 00:30:11', '2022-12-08 00:24:24', '2022-12-08 00:30:11'),
(5048, 'App\\User', 455, 'qixerapi_keys', '72dc66d1a2d06043ebb78e71446372d5fae5d92876e91ed7beb42a8ece820934', '[\"*\"]', '2022-12-08 02:29:13', '2022-12-08 00:30:14', '2022-12-08 02:29:13'),
(5055, 'App\\User', 455, 'qixerapi_keys', '7ff469ce727eb8b52fe0aef9254ed47203485e937ff5f53d0f08da8b86db2cc5', '[\"*\"]', NULL, '2022-12-08 02:29:11', '2022-12-08 02:29:11'),
(5056, 'App\\User', 455, 'qixerapi_keys', '241e6f2072e0a2e759de447b6a588eea9e0e4137ef4a67629bf7715976895ef2', '[\"*\"]', '2022-12-08 02:37:07', '2022-12-08 02:29:15', '2022-12-08 02:37:07'),
(5057, 'App\\User', 455, 'qixerapi_keys', '16831feb908269a6ea2348dffcdc97470303c9e34bff68da93a6191e70024685', '[\"*\"]', '2022-12-08 02:40:27', '2022-12-08 02:37:09', '2022-12-08 02:40:27'),
(5058, 'App\\User', 455, 'qixerapi_keys', 'd56933e9051fc00c8af19a6552018f500016c3e6477aff6efc1a88d90ea44bc1', '[\"*\"]', '2022-12-08 02:47:57', '2022-12-08 02:40:29', '2022-12-08 02:47:57'),
(5059, 'App\\User', 455, 'qixerapi_keys', '08970f622c91d26b7935e3d1e91d1478e9c7946833def99108fd6afaa1b35ff1', '[\"*\"]', '2022-12-08 05:11:13', '2022-12-08 02:48:00', '2022-12-08 05:11:13'),
(5060, 'App\\User', 1294, 'qixerapi_keys', '078dd68917b9464400dc8c24ec87ece244aa8040a65f5b8a5ac6be66996188c4', '[\"*\"]', '2022-12-08 08:38:04', '2022-12-08 02:48:36', '2022-12-08 08:38:04'),
(5061, 'App\\User', 455, 'qixerapi_keys', 'f9553758625feac9a68eb352fe4286503f0c4fbee06cad0ae925ef9924277879', '[\"*\"]', '2022-12-08 05:11:27', '2022-12-08 05:11:16', '2022-12-08 05:11:27'),
(5069, 'App\\User', 1298, 'qixerapi_keys', '9e2beb382b925dc1ac83c173fd5c55e6918a61a90cb2019d3cfe6a00c9340293', '[\"*\"]', NULL, '2022-12-08 07:30:39', '2022-12-08 07:30:39'),
(5073, 'App\\User', 1294, 'qixerapi_keys', '4af83c8e5e902ca210546d62f44c8670639a75e73a0349ed98c623a85b8de8e9', '[\"*\"]', '2022-12-10 06:31:23', '2022-12-08 08:38:06', '2022-12-10 06:31:23'),
(5081, 'App\\User', 1299, 'qixerapi_keys', '085422d831b7ce32a1ff5fb873f3bac69801548ac6abb9dfe8bccee5e15f63f5', '[\"*\"]', '2022-12-20 02:57:02', '2022-12-08 11:37:59', '2022-12-20 02:57:02'),
(5082, 'App\\User', 736, 'qixerapi_keys', 'de405f2ba6075f5a087ee76796f9949d4bce8f00d8425520d7703249bc44c91f', '[\"*\"]', '2022-12-08 13:31:41', '2022-12-08 13:31:40', '2022-12-08 13:31:41'),
(5084, 'App\\User', 563, 'qixerapi_keys', '97da30b9259589e31d28758b98351d17345f19d191b4e12496198097087d1fd1', '[\"*\"]', '2022-12-18 05:33:47', '2022-12-08 21:14:00', '2022-12-18 05:33:47'),
(5092, 'App\\User', 1301, 'qixerapi_keys', 'bdea57a6e1672eda4b34ae5339ea99d462d6a35d6d40ce31eddfe005334ad965', '[\"*\"]', '2022-12-09 08:53:42', '2022-12-09 08:50:51', '2022-12-09 08:53:42'),
(5109, 'App\\User', 1191, 'qixerapi_keys', '621d4811a811d1b01a235cb662e01fe6cd2a236cd21de560dc828d6263c905d3', '[\"*\"]', '2022-12-09 10:52:56', '2022-12-09 10:52:55', '2022-12-09 10:52:56'),
(5111, 'App\\User', 1248, 'qixerapi_keys', '77b67c61b994ebb93e420ea62974e0f72c5279fc4db5cd34249b79c8c7a795d1', '[\"*\"]', '2022-12-09 13:45:13', '2022-12-09 13:45:12', '2022-12-09 13:45:13'),
(5114, 'App\\User', 806, 'qixerapi_keys', '5f9d6778c9f94f5b06998e53113a8b95104db11b754c7dd54c97ed980705b7dd', '[\"*\"]', '2022-12-12 05:35:03', '2022-12-09 16:54:02', '2022-12-12 05:35:03'),
(5115, 'App\\User', 1216, 'qixerapi_keys', '9683466969709835ec2a1ee68cdd6b47e69d499624cb8b7c3006143331599f0a', '[\"*\"]', '2022-12-11 23:41:34', '2022-12-09 21:32:26', '2022-12-11 23:41:34'),
(5132, 'App\\User', 1250, 'qixerapi_keys', '003fe8edab3fa8bca3e3e62049a5379c610347036fe6c97da3b71528bd39c68f', '[\"*\"]', '2022-12-10 02:24:40', '2022-12-10 02:24:04', '2022-12-10 02:24:40'),
(5133, 'App\\User', 1250, 'qixerapi_keys', '9541da2536eee9151475a1e4cf6f6f593f11839721663b7df8e5df78811f0019', '[\"*\"]', '2022-12-19 23:49:40', '2022-12-10 02:24:41', '2022-12-19 23:49:40'),
(5137, 'App\\User', 598, 'qixerapi_keys', '05aae6070bab6e11a88843c33b3ae793a95114544cfb60f5da9b45ed2a535363', '[\"*\"]', '2022-12-10 03:19:01', '2022-12-10 03:18:46', '2022-12-10 03:19:01'),
(5142, 'App\\User', 1294, 'qixerapi_keys', '9798a8fd18cb924e34aeb396ab1ea25cd9ba12725d060cc7e1b2088e8cef5a6d', '[\"*\"]', '2022-12-17 08:34:21', '2022-12-10 06:31:24', '2022-12-17 08:34:21'),
(5147, 'App\\User', 1295, 'qixerapi_keys', '071b0f46691402d75b02b8b00e2584e63f1e36985e128f132ad88315266a26cb', '[\"*\"]', '2022-12-12 01:57:27', '2022-12-10 11:46:19', '2022-12-12 01:57:27'),
(5166, 'App\\User', 1304, 'qixerapi_keys', '44cc7d84b41afb450f5d31fbe9a01fa6e57a3a7c94b260639ee29f503711cfe1', '[\"*\"]', NULL, '2022-12-11 02:50:50', '2022-12-11 02:50:50'),
(5170, 'App\\User', 598, 'qixerapi_keys', '5de235ac9bba33f6c1680dee165b0eb169b4809508d8f753ee7201c79dcb3ab7', '[\"*\"]', '2022-12-11 04:15:20', '2022-12-11 04:15:19', '2022-12-11 04:15:20'),
(5177, 'App\\User', 1051, 'qixerapi_keys', '50dc67cd2ec9567d77da2d21ba2e9485dd3cc300a184a8d83dc9db65e75c0988', '[\"*\"]', '2022-12-13 05:20:24', '2022-12-11 06:45:45', '2022-12-13 05:20:24'),
(5179, 'App\\User', 1305, 'qixerapi_keys', '2cf59d12ce9bac6ebc2b3cefeeb9dcb2ad50c495c58f8853285caa9cf78b7275', '[\"*\"]', NULL, '2022-12-11 09:37:03', '2022-12-11 09:37:03'),
(5197, 'App\\User', 1216, 'qixerapi_keys', '8bdc824f75a74e48d9ada12651bb97754167652e9f2e48246a8b88260e9b7c48', '[\"*\"]', '2022-12-14 01:18:22', '2022-12-11 23:41:36', '2022-12-14 01:18:22'),
(5204, 'App\\User', 1295, 'qixerapi_keys', '51ab2cd12f88ef9181d6a513c7fcedb894357c389e9b1428a552c70a3bfc047a', '[\"*\"]', '2022-12-12 01:57:31', '2022-12-12 01:57:30', '2022-12-12 01:57:31'),
(5210, 'App\\User', 806, 'qixerapi_keys', 'bdce2154d3e9032265a16c8cc1448cc8098d594f914cb589b0f013db34a6045f', '[\"*\"]', '2022-12-12 05:38:21', '2022-12-12 05:35:05', '2022-12-12 05:38:21'),
(5213, 'App\\User', 1205, 'qixerapi_keys', '79baf3c6be20762f2126760f4d6acc0803150639867fdc7f21aabef5908a66e0', '[\"*\"]', '2022-12-13 05:49:46', '2022-12-12 06:43:55', '2022-12-13 05:49:46'),
(5223, 'App\\User', 1160, 'qixerapi_keys', 'aa88805138008b474fbab6950af39a34a824ad8fce8f47932356fe11e1102450', '[\"*\"]', '2022-12-18 17:06:53', '2022-12-12 07:51:22', '2022-12-18 17:06:53'),
(5243, 'App\\User', 990, 'qixerapi_keys', '2c2b96786ace925201e5f6b5fa4a97a3ae7a8ab530c160a8ba1ee0133b7f8588', '[\"*\"]', '2022-12-13 00:56:43', '2022-12-12 23:44:48', '2022-12-13 00:56:43'),
(5249, 'App\\User', 990, 'qixerapi_keys', '30f1cba5d7fa21255d929f44b71eaee769fc5e42a7e299a559383ba95205e942', '[\"*\"]', '2022-12-13 02:24:53', '2022-12-13 00:56:45', '2022-12-13 02:24:53'),
(5250, 'App\\User', 990, 'qixerapi_keys', 'c9709e091f58b07f90e2d141a4db727e3cc683062353bcac39a5d573c8db8f30', '[\"*\"]', '2022-12-13 03:02:40', '2022-12-13 02:24:54', '2022-12-13 03:02:40'),
(5252, 'App\\User', 990, 'qixerapi_keys', 'badfd295b8d97098b45843d19687851717239ec0fb3d517b3d71587d4a237995', '[\"*\"]', '2022-12-20 03:30:14', '2022-12-13 03:02:41', '2022-12-20 03:30:14'),
(5255, 'App\\User', 1306, 'qixerapi_keys', 'c0a28ad0694948e249ce4aaf653d5bdc5054f61a70231ed4f57ff185e91a69da', '[\"*\"]', '2022-12-18 02:53:39', '2022-12-13 03:45:07', '2022-12-18 02:53:39'),
(5256, 'App\\User', 1307, 'qixerapi_keys', 'e194b573ee21049d6afba32ace29b56e405ab2d77be259f6cd1172e8b2921872', '[\"*\"]', NULL, '2022-12-13 03:50:07', '2022-12-13 03:50:07'),
(5257, 'App\\User', 1286, 'qixerapi_keys', 'ec41302331de04bbcb1b208d02af61e9d5ccca00389e0d0f7e472ed3043bfa8d', '[\"*\"]', '2023-01-01 04:24:15', '2022-12-13 03:52:14', '2023-01-01 04:24:15'),
(5259, 'App\\User', 1308, 'qixerapi_keys', '883e003c95c1f347a9cce335d472ae5b041c9a223c7a5a4ba3d895c438b3501f', '[\"*\"]', '2022-12-13 03:56:53', '2022-12-13 03:53:59', '2022-12-13 03:56:53'),
(5260, 'App\\User', 1309, 'qixerapi_keys', '69b0420be95fb71a259d99018d121836f1a2060a3f8636adbfd1ad90c41d4b5c', '[\"*\"]', NULL, '2022-12-13 03:55:27', '2022-12-13 03:55:27'),
(5261, 'App\\User', 1310, 'qixerapi_keys', '6a0f55027432e960d836595ba23a8f7e9e43531e02c7469a2d5c90efbc2c15af', '[\"*\"]', NULL, '2022-12-13 03:56:58', '2022-12-13 03:56:58'),
(5263, 'App\\User', 1051, 'qixerapi_keys', '17ee43921dd0517db4781b67eac27b20cc01c326fbe6fe5066dad85d41fe17f4', '[\"*\"]', '2022-12-13 05:29:22', '2022-12-13 05:20:26', '2022-12-13 05:29:22'),
(5264, 'App\\User', 1205, 'qixerapi_keys', '8cb03f34119ccf56bfefb7624bce5594290bea9c42d5aa080d456eea0b88d8f3', '[\"*\"]', '2022-12-13 05:49:47', '2022-12-13 05:49:47', '2022-12-13 05:49:47'),
(5269, 'App\\User', 313, 'qixerapi_keys', '59709f7f230cfd8ea263badea0de89074a28b717a73d5cafc1b954b0e9c7ddc1', '[\"*\"]', '2022-12-13 15:18:03', '2022-12-13 15:18:02', '2022-12-13 15:18:03'),
(5270, 'App\\User', 1313, 'qixerapi_keys', '51f420214b24cb26feb187358fdc4b53846d1f6faba0a15fa96fa2902e5e733b', '[\"*\"]', '2022-12-13 20:43:40', '2022-12-13 20:43:18', '2022-12-13 20:43:40'),
(5272, 'App\\User', 1216, 'qixerapi_keys', '9b2b56b828b034a3adcec145eccd2f2beab3044c4eb99e46f410f1d693b3cb14', '[\"*\"]', '2022-12-14 23:22:08', '2022-12-14 01:18:23', '2022-12-14 23:22:08'),
(5286, 'App\\User', 1138, 'qixerapi_keys', '0f30a860294d5d5b60805065bfcb09f18f7f266d51494a1a67f68f168dfe9d46', '[\"*\"]', '2022-12-14 21:53:35', '2022-12-14 20:10:52', '2022-12-14 21:53:35'),
(5290, 'App\\User', 1138, 'qixerapi_keys', '8593a6c89a4d4c90418e6b809be7c61ae965cd6d83ca251f48116343cdf6cc6f', '[\"*\"]', '2022-12-19 12:23:14', '2022-12-14 21:53:36', '2022-12-19 12:23:14'),
(5292, 'App\\User', 1216, 'qixerapi_keys', '51ac3bfcdc6012e82785f82c93206df8bf701ce6d84be7fd1588f8c6f7d2e7c3', '[\"*\"]', '2022-12-14 23:22:10', '2022-12-14 23:22:09', '2022-12-14 23:22:10'),
(5308, 'App\\User', 1284, 'qixerapi_keys', '5a036ff4687849637aea361fe8d04013d9fa8dcd306add9cdca5ec65a7259c26', '[\"*\"]', '2022-12-16 05:27:57', '2022-12-15 02:10:31', '2022-12-16 05:27:57'),
(5320, 'App\\User', 462, 'qixerapi_keys', 'f161ec335fee91cc893f0ef18b5d617f365daa501bbaaefad2dca00bd8efc47e', '[\"*\"]', '2022-12-15 10:42:50', '2022-12-15 10:42:48', '2022-12-15 10:42:50'),
(5322, 'App\\User', 598, 'qixerapi_keys', '31c6d916dc26b7829906e048834bce14a718bf7451accdacaa8a540e721a4cd6', '[\"*\"]', '2022-12-20 00:47:43', '2022-12-15 11:37:48', '2022-12-20 00:47:43'),
(5323, 'App\\User', 767, 'qixerapi_keys', '1c66e72cb23b731728d73c2668df9532f6c3d71bd2954bf71903e0fbdcff705b', '[\"*\"]', '2022-12-15 13:19:58', '2022-12-15 13:19:57', '2022-12-15 13:19:58'),
(5325, 'App\\User', 555, 'qixerapi_keys', '3feb9a8154f019cab5d4d59976c40a881d36114da318ff5ae7d39e74b228ec8f', '[\"*\"]', '2022-12-15 14:03:12', '2022-12-15 13:59:24', '2022-12-15 14:03:12'),
(5328, 'App\\User', 1314, 'qixerapi_keys', 'dc7fe9cf49ed2a2ff1ffab32094e1bd3e23b52cb2cfb5efb1139b1b4ded77401', '[\"*\"]', '2022-12-15 23:03:29', '2022-12-15 20:46:08', '2022-12-15 23:03:29'),
(5330, 'App\\User', 462, 'qixerapi_keys', 'a8922adc720868425fd6e32465a804d6a7f9dcb8d9953c34cce0d9ee5635e9cd', '[\"*\"]', '2022-12-16 01:23:45', '2022-12-15 21:51:57', '2022-12-16 01:23:45'),
(5331, 'App\\User', 1314, 'qixerapi_keys', 'd4df01b0efd20175fa68af005d7f94c90663d98b197862cbafa1765a3baf9918', '[\"*\"]', '2022-12-15 23:10:14', '2022-12-15 23:03:31', '2022-12-15 23:10:14'),
(5334, 'App\\User', 462, 'qixerapi_keys', '89aef4ad8a1c41946b83c76c7a6d532680e00f8373e69d9b76cd860027d283e7', '[\"*\"]', '2022-12-18 17:57:11', '2022-12-16 01:23:46', '2022-12-18 17:57:11'),
(5335, 'App\\User', 1284, 'qixerapi_keys', '95609679fa07760dfa442ee982e42202ffb5c9628e4c362d1550915256329802', '[\"*\"]', '2022-12-16 05:44:16', '2022-12-16 05:27:58', '2022-12-16 05:44:16'),
(5336, 'App\\User', 1049, 'qixerapi_keys', 'd2fffa26c1cd0857a60b5c0971f09692184645c74bf16354a88b91893ee526b1', '[\"*\"]', '2022-12-16 07:01:47', '2022-12-16 07:01:46', '2022-12-16 07:01:47'),
(5342, 'App\\User', 1315, 'qixerapi_keys', '64ae2f6606ded62bde83e62e70cd70531babe336cd7dfa2962838a5f307a7324', '[\"*\"]', '2022-12-16 18:02:18', '2022-12-16 17:02:25', '2022-12-16 18:02:18'),
(5344, 'App\\User', 1315, 'qixerapi_keys', '17b48f0a6a5c0013ec0ccb47f1c150363acad1753ccaa8adbed3b5bb1f61a42a', '[\"*\"]', '2022-12-16 18:49:33', '2022-12-16 18:02:20', '2022-12-16 18:49:33'),
(5346, 'App\\User', 1315, 'qixerapi_keys', 'eaa5dbf4e3157d58aa73e16ae26d74c055e145b1bf8733722c5d4ff178a6b452', '[\"*\"]', '2022-12-22 17:40:49', '2022-12-16 18:49:34', '2022-12-22 17:40:49'),
(5388, 'App\\User', 1200, 'qixerapi_keys', '8594cdbfbaaa333b26df76f03307dc6c9f9b1fa890067541e25dccf22c8aa057', '[\"*\"]', '2022-12-17 07:55:11', '2022-12-17 05:13:59', '2022-12-17 07:55:11');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(5390, 'App\\User', 1200, 'qixerapi_keys', 'bd0d49bae8fd127f150aa69111731bd5055d1868709de5cf9c9e0932afaf9c60', '[\"*\"]', '2022-12-17 08:02:32', '2022-12-17 07:55:12', '2022-12-17 08:02:32'),
(5394, 'App\\User', 1294, 'qixerapi_keys', 'f02bda61d64da9425a2ea8640fbcb11c68819ecc69e252630f92753daa827f2d', '[\"*\"]', '2022-12-17 08:34:25', '2022-12-17 08:34:23', '2022-12-17 08:34:25'),
(5415, 'App\\User', 1319, 'qixerapi_keys', '439724cf1a8187ecc666a949c43a95948e9344fbaad3a9c835e808b92ba43cb5', '[\"*\"]', '2022-12-22 05:38:47', '2022-12-18 02:45:46', '2022-12-22 05:38:47'),
(5417, 'App\\User', 1306, 'qixerapi_keys', 'bbee6f77899bea0872169f8ad3981697e5f1053743c69b6d143adc9668e4d2a4', '[\"*\"]', '2022-12-18 02:53:42', '2022-12-18 02:53:40', '2022-12-18 02:53:42'),
(5441, 'App\\User', 563, 'qixerapi_keys', '462d267c88cd883dbcbe43c5e617f0238adbe8fac19b81566747eafddc763bc3', '[\"*\"]', NULL, '2022-12-18 05:33:48', '2022-12-18 05:33:48'),
(5442, 'App\\User', 598, 'qixerapi_keys', '9e3dfde60b1ab1bfea8cbb4c40cd943f387391b84d64cc2a0d82f32dc5264eac', '[\"*\"]', '2022-12-18 07:12:00', '2022-12-18 07:03:13', '2022-12-18 07:12:00'),
(5443, 'App\\User', 598, 'qixerapi_keys', '57127e477d22291bbf8c8e6d7d36798f4b769dd41a947c6e780767853c0fd5db', '[\"*\"]', '2022-12-22 22:52:26', '2022-12-18 07:12:02', '2022-12-22 22:52:26'),
(5446, 'App\\User', 1111, 'qixerapi_keys', '6fe8072173b842735a27074d7c28afb380f40ef787cea7e8a5d4c1d66b71749d', '[\"*\"]', '2022-12-18 08:04:39', '2022-12-18 08:04:38', '2022-12-18 08:04:39'),
(5448, 'App\\User', 1160, 'qixerapi_keys', 'ae7558422fb42e098a7583ac27714f87a2f00cf1a14f005ccdbd2748336bdbf5', '[\"*\"]', '2022-12-18 17:52:45', '2022-12-18 17:06:54', '2022-12-18 17:52:45'),
(5449, 'App\\User', 462, 'qixerapi_keys', '65fc7256df1da44b997ef39e4331f6bd879a3adb97fe32bc68ea2a189e451d7f', '[\"*\"]', '2022-12-19 23:24:01', '2022-12-18 17:57:12', '2022-12-19 23:24:01'),
(5466, 'App\\User', 598, 'qixerapi_keys', 'b5936be70c7bc7ec7d0a2e2228758fd73fc796c43bdb2920efe3baaf29e52a45', '[\"*\"]', '2022-12-19 07:29:29', '2022-12-19 07:29:27', '2022-12-19 07:29:29'),
(5469, 'App\\User', 1138, 'qixerapi_keys', '5b2c0b5a5694f914b62414f34865e8f16c6c9576f5c83062609dc079366ec10c', '[\"*\"]', '2022-12-23 02:22:47', '2022-12-19 12:23:16', '2022-12-23 02:22:47'),
(5481, 'App\\User', 462, 'qixerapi_keys', 'd0ec03e09ad3544703dce1b463008c32ee8583eb2503617d8b133d677ea29684', '[\"*\"]', '2022-12-26 07:13:42', '2022-12-19 23:24:02', '2022-12-26 07:13:42'),
(5483, 'App\\User', 1250, 'qixerapi_keys', '184a667fb793d04d92254076a813a1c0e06e7da6db08195ec500f29045d6d713', '[\"*\"]', '2022-12-20 10:48:39', '2022-12-19 23:49:41', '2022-12-20 10:48:39'),
(5489, 'App\\User', 598, 'qixerapi_keys', 'd1b2f54d9d47015a3690b6e2f407060e580327eeb0ab106c979cb44dbbb0a5d4', '[\"*\"]', '2022-12-22 08:06:39', '2022-12-20 00:47:45', '2022-12-22 08:06:39'),
(5501, 'App\\User', 1299, 'qixerapi_keys', '59cc7d8e0c7dae0d8c68d9091bb600634a9f8bcd9adaf12df228c771fbe0716c', '[\"*\"]', '2022-12-26 15:42:32', '2022-12-20 02:57:04', '2022-12-26 15:42:32'),
(5502, 'App\\User', 990, 'qixerapi_keys', '5e949fe745d8a1b3397861b584d04efe1e5bf9ccf257893d268a1c3cbe10edf9', '[\"*\"]', '2022-12-27 01:19:13', '2022-12-20 03:30:16', '2022-12-27 01:19:13'),
(5503, 'App\\User', 514, 'qixerapi_keys', '7adc1aea4f5ceba96e2a191d703542fa7954e5e9e398d42392c67ad06dbd9410', '[\"*\"]', '2022-12-23 09:29:47', '2022-12-20 04:12:39', '2022-12-23 09:29:47'),
(5505, 'App\\User', 1322, 'qixerapi_keys', '1b127fbe260db20bf9451c9991ca5731c977f0ae73eb5a9c5338630cd62480ad', '[\"*\"]', '2022-12-20 10:05:29', '2022-12-20 05:17:42', '2022-12-20 10:05:29'),
(5510, 'App\\User', 1323, 'qixerapi_keys', '9fd75fff9cf6fcde475f5f8fa148acd29077bb5ea7235b8c09782f0ac99e2e08', '[\"*\"]', '2022-12-20 07:51:03', '2022-12-20 06:49:14', '2022-12-20 07:51:03'),
(5514, 'App\\User', 1323, 'qixerapi_keys', 'b97bf892c8b5b04911879456360fbd0fa0e97e88f3c531f1fbae8e79388548fd', '[\"*\"]', '2022-12-20 10:03:51', '2022-12-20 07:51:05', '2022-12-20 10:03:51'),
(5519, 'App\\User', 598, 'qixerapi_keys', 'ae4b0795ffa5305085df0dd39f99effd514c59751f119af3650ef7ecfb626dc6', '[\"*\"]', '2022-12-20 09:45:57', '2022-12-20 09:45:18', '2022-12-20 09:45:57'),
(5520, 'App\\User', 1323, 'qixerapi_keys', 'bc92a0d5c4ff159ad49e9d0f99853343d0d05df240cd59525d69f51bcf43b051', '[\"*\"]', '2022-12-21 00:58:28', '2022-12-20 10:03:53', '2022-12-21 00:58:28'),
(5522, 'App\\User', 1322, 'qixerapi_keys', '3c0978cfef19c320d3d424241f511e8d584793c7f7a8ae202e962713b925988f', '[\"*\"]', '2022-12-20 11:09:11', '2022-12-20 10:05:29', '2022-12-20 11:09:11'),
(5523, 'App\\User', 1250, 'qixerapi_keys', '423d4b9198992882905a15eafa182892f9318585108e9ec8c9bb6b5e8bccf627', '[\"*\"]', '2022-12-20 10:49:17', '2022-12-20 10:48:42', '2022-12-20 10:49:17'),
(5525, 'App\\User', 1322, 'qixerapi_keys', '928b5e27e1c599abb58c38a2058cfd3715ca65854a49cd116625c08431a2f650', '[\"*\"]', '2022-12-21 09:08:24', '2022-12-20 11:09:12', '2022-12-21 09:08:24'),
(5529, 'App\\User', 1325, 'qixerapi_keys', 'e4e122510c5bcdd9765b526bcc9733a55700c3d5039db8bb87cba4c1f48c2150', '[\"*\"]', '2022-12-20 12:19:30', '2022-12-20 11:58:12', '2022-12-20 12:19:30'),
(5531, 'App\\User', 1325, 'qixerapi_keys', 'cd14d2c78d40924ab3f98738ecc2600a3538b6b69e8e4dbbb5db44a10c48847e', '[\"*\"]', '2022-12-21 15:34:31', '2022-12-20 12:19:31', '2022-12-21 15:34:31'),
(5535, 'App\\User', 1268, 'qixerapi_keys', 'bcf9e6e98943e83413491e32fabb47b748de741c6e2bef29da6e61356cd02856', '[\"*\"]', '2022-12-20 12:46:53', '2022-12-20 12:46:52', '2022-12-20 12:46:53'),
(5536, 'App\\User', 1326, 'qixerapi_keys', '35e11ebbc3b46c6fe253ee78a8412a5615adcff3f656da87d2dacb9f6de9c21f', '[\"*\"]', '2022-12-29 23:58:47', '2022-12-20 13:12:48', '2022-12-29 23:58:47'),
(5547, 'App\\User', 1323, 'qixerapi_keys', '9fc46ff07fc4a984b487ef5977529c924cb3ed04971db2cbc97386559a744a3d', '[\"*\"]', '2022-12-21 02:56:39', '2022-12-21 00:58:29', '2022-12-21 02:56:39'),
(5552, 'App\\User', 1323, 'qixerapi_keys', 'ee07b753747ae2f4db93d60c13a055dc4ceff3f1c7b63dcb32e74856f56a80a9', '[\"*\"]', '2022-12-21 02:57:47', '2022-12-21 02:56:40', '2022-12-21 02:57:47'),
(5554, 'App\\User', 1323, 'qixerapi_keys', 'b5392fb3f68ddcaeaadfb791ec5f067e2734dc4d0debc6539ce305351e51e859', '[\"*\"]', '2022-12-21 06:39:26', '2022-12-21 04:59:03', '2022-12-21 06:39:26'),
(5559, 'App\\User', 1323, 'qixerapi_keys', '0d9570852735077e0a89aeff2f936b9131cebca85e88305364afc9b2de4c8181', '[\"*\"]', '2022-12-22 00:31:15', '2022-12-21 06:39:28', '2022-12-22 00:31:15'),
(5566, 'App\\User', 1328, 'qixerapi_keys', 'a0c986a8912280e9f16696833dc48b16dbc110664c62ecca70c9f33e82f95149', '[\"*\"]', '2022-12-21 08:39:12', '2022-12-21 08:32:14', '2022-12-21 08:39:12'),
(5567, 'App\\User', 1322, 'qixerapi_keys', '65dc26f2d32725ff8e1bc72e9087fb2b7d6337909019a0283a0b671c91897575', '[\"*\"]', '2022-12-21 12:50:22', '2022-12-21 09:08:25', '2022-12-21 12:50:22'),
(5569, 'App\\User', 1329, 'qixerapi_keys', '3da5ee4246cba4a31cc799b95948ae6d1a00b172c1471e35de74e5483c6ca38e', '[\"*\"]', NULL, '2022-12-21 12:47:12', '2022-12-21 12:47:12'),
(5570, 'App\\User', 1322, 'qixerapi_keys', 'fda1a952fa26083711f42df35a2da01eb9dcd233a81e3994f0981fbdce2d713b', '[\"*\"]', '2022-12-22 00:49:22', '2022-12-21 12:50:23', '2022-12-22 00:49:22'),
(5571, 'App\\User', 1325, 'qixerapi_keys', '8dc99589d8b98d9ad0c1fc77fb98012e646c86dee0d2ce1d29cec7be3b21028b', '[\"*\"]', '2022-12-21 15:38:33', '2022-12-21 15:34:32', '2022-12-21 15:38:33'),
(5587, 'App\\User', 1192, 'qixerapi_keys', '1781e884731d859d02c3c74f995f53c860370168b1ce2b32776fdde5489e06cc', '[\"*\"]', '2022-12-26 02:19:50', '2022-12-21 23:32:50', '2022-12-26 02:19:50'),
(5589, 'App\\User', 1323, 'qixerapi_keys', '3cb94e48701037f98edd48b4bafb1417aa2165c7587f2a2b21714ad3d3ac2562', '[\"*\"]', '2022-12-22 07:22:53', '2022-12-22 00:31:17', '2022-12-22 07:22:53'),
(5590, 'App\\User', 1322, 'qixerapi_keys', '4bfd810ab49db10095fe8350ccea75786fb493a485e599812a2a36a8cb2eaa52', '[\"*\"]', '2022-12-22 00:50:52', '2022-12-22 00:49:23', '2022-12-22 00:50:52'),
(5592, 'App\\User', 1330, 'qixerapi_keys', 'ed59a642c4cf37a0f3c020e73d8a15309ba7708011050ef0538a6a10c5758f6e', '[\"*\"]', '2022-12-22 01:42:03', '2022-12-22 01:40:34', '2022-12-22 01:42:03'),
(5602, 'App\\User', 1319, 'qixerapi_keys', '446d90ce5846eea8be8a453c2616a7202bd6d0304d66808721705b8289de86ec', '[\"*\"]', '2022-12-29 04:17:56', '2022-12-22 05:38:49', '2022-12-29 04:17:56'),
(5606, 'App\\User', 1323, 'qixerapi_keys', '3c8fb63ca6715bbd3825ff4313ad071fd1dd959c09dbfced5815be092e6a42d4', '[\"*\"]', '2022-12-22 14:30:05', '2022-12-22 07:22:55', '2022-12-22 14:30:05'),
(5609, 'App\\User', 598, 'qixerapi_keys', '0e174f80f72584218a8f51db7f3f9d6d4a0e1d5fc54840bfb61691af9271fcc8', '[\"*\"]', '2022-12-22 08:06:42', '2022-12-22 08:06:41', '2022-12-22 08:06:42'),
(5612, 'App\\User', 1323, 'qixerapi_keys', '12ae1c6135cf761cd34da0e26ef1773150abd11ba83f08db0f4ad2a1697f59e7', '[\"*\"]', '2022-12-22 14:31:58', '2022-12-22 14:30:10', '2022-12-22 14:31:58'),
(5613, 'App\\User', 598, 'qixerapi_keys', '396b461869f03bcbdc7c23f2722422c4b6a7d46bf5a06a0731fd2a1149823039', '[\"*\"]', '2022-12-22 17:39:29', '2022-12-22 17:39:28', '2022-12-22 17:39:29'),
(5614, 'App\\User', 1315, 'qixerapi_keys', '3385ed7767067a6e0ef81bb466a957efcfb7e64b1e5d7cfb0ad0d0bf4fe7e83e', '[\"*\"]', '2022-12-23 18:42:03', '2022-12-22 17:40:50', '2022-12-23 18:42:03'),
(5618, 'App\\User', 598, 'qixerapi_keys', '4954a03c6b8b62ebdae02c3dcf7ef2ef5ab929a9df034dab575a32073fa7a734', '[\"*\"]', '2022-12-26 10:14:17', '2022-12-22 22:52:29', '2022-12-26 10:14:17'),
(5621, 'App\\User', 1138, 'qixerapi_keys', '0716618d6bc78ee3c414378d6879c5822e37b6a300a79cc23d26d3b294da832c', '[\"*\"]', '2022-12-23 07:44:20', '2022-12-23 02:22:48', '2022-12-23 07:44:20'),
(5622, 'App\\User', 598, 'qixerapi_keys', 'bdf1ef11ae050b4a642cc7086f1d221ae6a68235d753c51d3f8962447a492622', '[\"*\"]', '2022-12-25 03:26:33', '2022-12-23 02:26:45', '2022-12-25 03:26:33'),
(5623, 'App\\User', 1331, 'qixerapi_keys', '8a8918781f1e3c43183591e9938bea718e0724cc4ac7de468138697bfec1ea1b', '[\"*\"]', NULL, '2022-12-23 06:40:52', '2022-12-23 06:40:52'),
(5624, 'App\\User', 1332, 'qixerapi_keys', 'adb92878c9c3c1db80ce014f47845db4ef574b80889c9ffcce45f0e5f8b499f2', '[\"*\"]', '2022-12-23 06:51:56', '2022-12-23 06:41:20', '2022-12-23 06:51:56'),
(5626, 'App\\User', 1332, 'qixerapi_keys', 'dadb614b894a75bfe8a3cbe41d89f8a6cef0c089ca69a5a9b59ae8caf74c7871', '[\"*\"]', '2022-12-23 06:54:53', '2022-12-23 06:52:40', '2022-12-23 06:54:53'),
(5627, 'App\\User', 1138, 'qixerapi_keys', '44b8e0f0133f38d1feda96ae1806d0726695bce0ce9516f58b6aee994583e52e', '[\"*\"]', '2022-12-24 09:58:05', '2022-12-23 07:44:22', '2022-12-24 09:58:05'),
(5628, 'App\\User', 1126, 'qixerapi_keys', '0925adccd8a8622dd1dfb60eb590612ffbf6448d1f017b389b1753508e2f4c8d', '[\"*\"]', '2022-12-23 08:25:17', '2022-12-23 08:25:16', '2022-12-23 08:25:17'),
(5629, 'App\\User', 514, 'qixerapi_keys', '69a32700a87067011cc5df84328fa127495700947f1e98c23975d0e5cf18ff36', '[\"*\"]', '2022-12-23 09:29:49', '2022-12-23 09:29:48', '2022-12-23 09:29:49'),
(5635, 'App\\User', 284, 'qixerapi_keys', 'c7161e0849a2b92284069966d13f65542b2b1f9959ef85e013873e836aa1802d', '[\"*\"]', '2022-12-24 23:37:53', '2022-12-23 14:32:17', '2022-12-24 23:37:53'),
(5636, 'App\\User', 363, 'qixerapi_keys', '6e02d9bbc85f0b2303d8dcb35795260e205f7c166bfeae23b82bcd3252dc4e2c', '[\"*\"]', '2022-12-28 10:23:45', '2022-12-23 15:39:52', '2022-12-28 10:23:45'),
(5637, 'App\\User', 1315, 'qixerapi_keys', 'cbf0c8c856a919fe0397c8d2e797e55886d8fbf4d92769a1510d2c8e044b9527', '[\"*\"]', '2022-12-23 18:42:04', '2022-12-23 18:42:03', '2022-12-23 18:42:04'),
(5638, 'App\\User', 1333, 'qixerapi_keys', 'e81d39e7db955b0e43dcf64147d168ad4184233c63fc110c349c369220c9893b', '[\"*\"]', NULL, '2022-12-23 19:01:00', '2022-12-23 19:01:00'),
(5640, 'App\\User', 1334, 'qixerapi_keys', '07a11db68d3da8289d9765a34b634dc04336f572cbfa450f8473bbe9c8438583', '[\"*\"]', '2022-12-23 20:09:03', '2022-12-23 20:01:14', '2022-12-23 20:09:03'),
(5641, 'App\\User', 1335, 'qixerapi_keys', '89b8154902be065fc9e7a95d60fe3ca25b43f7a501aa87029b031c08d7da4b10', '[\"*\"]', NULL, '2022-12-23 20:05:41', '2022-12-23 20:05:41'),
(5642, 'App\\User', 1335, 'qixerapi_keys', 'b561731e7675463aa6f6ae59c4db2272f8056b0cfb7fafde77de1f8274880e6b', '[\"*\"]', '2022-12-23 20:10:16', '2022-12-23 20:08:01', '2022-12-23 20:10:16'),
(5647, 'App\\User', 1337, 'qixerapi_keys', 'c430468b69942eeefb58bd28ff757e80886509b6ff80928d3feff049a1c62528', '[\"*\"]', NULL, '2022-12-23 23:30:06', '2022-12-23 23:30:06'),
(5650, 'App\\User', 1336, 'qixerapi_keys', '6fc5a28d3e0739ad53bf934df404463b0a996f49e64f1212f4e3b7fae96964f2', '[\"*\"]', '2022-12-24 01:19:27', '2022-12-23 23:51:24', '2022-12-24 01:19:27'),
(5652, 'App\\User', 1336, 'qixerapi_keys', '7d47e78b16656890eb871d933621d0ce1bdeebcdfd2a5d8a432105326f4ffb0a', '[\"*\"]', '2022-12-24 01:27:39', '2022-12-24 01:19:28', '2022-12-24 01:27:39'),
(5653, 'App\\User', 1336, 'qixerapi_keys', '39d7b59a61e9b9ef002c2452383bed9f6a9f268aed3c13eebc9643c627656ae0', '[\"*\"]', '2022-12-24 02:57:58', '2022-12-24 01:27:40', '2022-12-24 02:57:58'),
(5654, 'App\\User', 1336, 'qixerapi_keys', '20c91493bc36051b5e98dd7703da796c184b0e0354e1816474bd585e96675e79', '[\"*\"]', '2022-12-24 03:57:10', '2022-12-24 02:57:59', '2022-12-24 03:57:10'),
(5655, 'App\\User', 1336, 'qixerapi_keys', 'cf8e96549cf5354a66ef2d5f55d579d31d5de59d9fa17add636d18e2e97306ea', '[\"*\"]', '2022-12-24 04:35:51', '2022-12-24 03:57:11', '2022-12-24 04:35:51'),
(5656, 'App\\User', 1336, 'qixerapi_keys', 'c4c0bc60276d93b55f9e181ea32a106af567275b3a76d34b89eb1db3a32f64d4', '[\"*\"]', '2022-12-24 09:02:14', '2022-12-24 04:35:52', '2022-12-24 09:02:14'),
(5657, 'App\\User', 1336, 'qixerapi_keys', '48ee57dfd7050fe54c0447e755e2994219ed3b0bebf05f8b45f3ffde6b7a2daa', '[\"*\"]', '2022-12-24 09:24:02', '2022-12-24 09:02:15', '2022-12-24 09:24:02'),
(5658, 'App\\User', 1336, 'qixerapi_keys', '43b968d789cfebbe2b666addd27e20fafea471516c7859526d8f344b8dded4c8', '[\"*\"]', '2022-12-24 10:22:09', '2022-12-24 09:24:03', '2022-12-24 10:22:09'),
(5659, 'App\\User', 1138, 'qixerapi_keys', '0c5be9d1fd9899284a5ae0ac81c8046f883906528ec272b647fd5fa6f222c7be', '[\"*\"]', '2022-12-24 09:58:08', '2022-12-24 09:58:06', '2022-12-24 09:58:08'),
(5660, 'App\\User', 1336, 'qixerapi_keys', '3c4514e6c3a02befde7eac7c7491c9689f7ffc300d52c2ede6a4d5cedfa9d001', '[\"*\"]', '2022-12-26 22:56:52', '2022-12-24 10:22:10', '2022-12-26 22:56:52'),
(5667, 'App\\User', 1338, 'qixerapi_keys', 'fe941cee9ae7674fe7be81e4aaeceb83a3ee03b05d3f20796fa170e9f0e6da49', '[\"*\"]', NULL, '2022-12-24 12:14:10', '2022-12-24 12:14:10'),
(5679, 'App\\User', 1339, 'qixerapi_keys', 'b5139051b4012987c9fff34311b7417c477477d41baba8da3777a852d27894e6', '[\"*\"]', '2022-12-25 16:58:53', '2022-12-24 23:37:53', '2022-12-25 16:58:53'),
(5682, 'App\\User', 1253, 'qixerapi_keys', '5b21be8bbdbd27ee9264bcdcb8ea77da681f0e24305ded2c0cdf33fdf0bb4164', '[\"*\"]', '2022-12-25 02:10:39', '2022-12-25 02:09:21', '2022-12-25 02:10:39'),
(5686, 'App\\User', 598, 'qixerapi_keys', '9f8be73ba81a9454ad567cbd80bca46abd4f1f057fc46d7a46feab9073c2109d', '[\"*\"]', '2022-12-25 03:26:35', '2022-12-25 03:26:34', '2022-12-25 03:26:35'),
(5688, 'App\\User', 1340, 'qixerapi_keys', '99f6f113c76958eebd12666ec1e482c5a7c495fc324ae9be08f2226343b40407', '[\"*\"]', NULL, '2022-12-25 03:49:10', '2022-12-25 03:49:10'),
(5699, 'App\\User', 1341, 'qixerapi_keys', 'c9a7311b3c67a8b207fef750b12216c3f02408af690a44e30a6add12e3256029', '[\"*\"]', '2022-12-25 11:52:14', '2022-12-25 11:50:30', '2022-12-25 11:52:14'),
(5703, 'App\\User', 308, 'qixerapi_keys', 'ef8c350c4dbcd0acd520adb688169138892ac8eb123f5a30e18cf58157c22518', '[\"*\"]', '2022-12-25 15:06:28', '2022-12-25 15:02:24', '2022-12-25 15:06:28'),
(5705, 'App\\User', 308, 'qixerapi_keys', '5c95eea7e89ef2e99a2076e2bba67650ac73292654c477cd7600bd6177babdcd', '[\"*\"]', '2022-12-25 15:07:15', '2022-12-25 15:06:29', '2022-12-25 15:07:15'),
(5707, 'App\\User', 1342, 'qixerapi_keys', '68350a722447b3ae8b8e00e3d8d1f7cbb0b29e170bd55c399a4892524340384f', '[\"*\"]', NULL, '2022-12-25 15:12:31', '2022-12-25 15:12:31'),
(5708, 'App\\User', 1342, 'qixerapi_keys', '0f159ceaefd2f4893eef5f5fc1c8ed7889f46d252c1b255e3fccc4001cfc72e3', '[\"*\"]', '2022-12-25 18:03:08', '2022-12-25 15:14:20', '2022-12-25 18:03:08'),
(5709, 'App\\User', 1159, 'qixerapi_keys', 'eab0b8abdde2014a7f6d253c90f5921ae5eb868de07e59821962b6978b692c06', '[\"*\"]', '2022-12-28 16:25:47', '2022-12-25 16:31:08', '2022-12-28 16:25:47'),
(5710, 'App\\User', 1339, 'qixerapi_keys', 'ac1b574dfc904fdf5b960af1d73a9c587e79842fcf5189def8c539c0ebc4d18a', '[\"*\"]', '2022-12-25 17:38:43', '2022-12-25 16:58:55', '2022-12-25 17:38:43'),
(5711, 'App\\User', 1339, 'qixerapi_keys', 'd2bee9317fd2ef25c475983967184e96eb33cfc4723e30cd09ed5789f810ea10', '[\"*\"]', NULL, '2022-12-25 17:38:45', '2022-12-25 17:38:45'),
(5712, 'App\\User', 1342, 'qixerapi_keys', 'ec68f4982e04d284024ad897db8d2b7e6cff5fdc1b07680e3c90537a9049f496', '[\"*\"]', '2022-12-25 19:03:17', '2022-12-25 18:03:09', '2022-12-25 19:03:17'),
(5713, 'App\\User', 1342, 'qixerapi_keys', 'f2c8a4554eb1bc05a2f499cd5e670a340ca15b664beb800edc8190cd7664e1e1', '[\"*\"]', '2022-12-26 00:47:52', '2022-12-25 19:03:18', '2022-12-26 00:47:52'),
(5727, 'App\\User', 1342, 'qixerapi_keys', '0b960db75253dd6aeb62cfdf18abac5a942da915bc4b33f327075a73929e67a3', '[\"*\"]', '2022-12-26 05:26:29', '2022-12-26 00:47:53', '2022-12-26 05:26:29'),
(5731, 'App\\User', 472, 'qixerapi_keys', '658b6d0901fbefda8c139bd6a37a849ab1c4b9b6aa686d62b63129fabca21314', '[\"*\"]', '2022-12-26 02:19:57', '2022-12-26 02:17:37', '2022-12-26 02:19:57'),
(5733, 'App\\User', 1192, 'qixerapi_keys', 'e4b189ffa4172edea87df2962e9b8b766c643fbbb2fc059b1947dd95422e712b', '[\"*\"]', '2022-12-26 02:19:52', '2022-12-26 02:19:51', '2022-12-26 02:19:52'),
(5738, 'App\\User', 1343, 'qixerapi_keys', 'a911e9ec7914038ef3053574992e0951a5d7a444af03bddd4d6b6649d8f455d3', '[\"*\"]', '2022-12-26 04:19:59', '2022-12-26 04:19:57', '2022-12-26 04:19:59'),
(5740, 'App\\User', 1344, 'qixerapi_keys', '8107e95bdbc7662527207679f6dbcbcd2dd6584b0ccfa7d09ba8d4bbc977609d', '[\"*\"]', '2022-12-26 05:13:05', '2022-12-26 05:11:08', '2022-12-26 05:13:05'),
(5741, 'App\\User', 1342, 'qixerapi_keys', '985dc5f64ca073803dd59140fe35fb97d0c0b0933e5a6be5657f2ab11277093e', '[\"*\"]', '2022-12-26 22:54:25', '2022-12-26 05:26:31', '2022-12-26 22:54:25'),
(5749, 'App\\User', 462, 'qixerapi_keys', 'f6117bf8bd6161786de8e7b00485d65d9263af0397038692500e2e03289b6de5', '[\"*\"]', '2022-12-26 07:13:45', '2022-12-26 07:13:44', '2022-12-26 07:13:45'),
(5759, 'App\\User', 598, 'qixerapi_keys', 'c562bb05004213d464b70912eef25b9a0c32420b78356ec8fab06d10814a55e4', '[\"*\"]', '2022-12-26 10:14:19', '2022-12-26 10:14:18', '2022-12-26 10:14:19'),
(5760, 'App\\User', 1168, 'qixerapi_keys', '0b3cf0ec57e043fb4da93783ecd2769fc481ecf22304d6a48742a316baa92e6a', '[\"*\"]', '2022-12-26 13:59:41', '2022-12-26 13:55:46', '2022-12-26 13:59:41'),
(5762, 'App\\User', 1345, 'qixerapi_keys', '3c112519880f2ee0f0332a5646f64bfe56d83c1b6b044ea8d70f2c60ee0fd5f2', '[\"*\"]', NULL, '2022-12-26 14:41:55', '2022-12-26 14:41:55'),
(5763, 'App\\User', 1299, 'qixerapi_keys', '8d4c73c385815d46cb0d1ca17f458977c44ba6b6fa219755f1d6768723c8730e', '[\"*\"]', '2022-12-26 15:48:13', '2022-12-26 15:42:34', '2022-12-26 15:48:13'),
(5764, 'App\\User', 405, 'qixerapi_keys', 'e133942349e983f4539619024144d6a7b08e32af7e75976fd0827c9251e9b95b', '[\"*\"]', '2022-12-26 16:09:30', '2022-12-26 16:09:13', '2022-12-26 16:09:30'),
(5765, 'App\\User', 1346, 'qixerapi_keys', '5278398d51711b690ac9e8c8824230c1361708a2d6d5a5944e27a8a38a6bfb4d', '[\"*\"]', '2022-12-26 16:23:10', '2022-12-26 16:19:58', '2022-12-26 16:23:10'),
(5768, 'App\\User', 1347, 'qixerapi_keys', '341755884bdc1f1801fb6dfd07cf38af496dcd23bd4a3f19bdd887400edcf5fb', '[\"*\"]', '2022-12-26 21:36:44', '2022-12-26 21:36:43', '2022-12-26 21:36:44'),
(5769, 'App\\User', 1342, 'qixerapi_keys', 'eb205682e1cbb43999ebbe5aaaa7f2aed589ec91c37f3931c69c5cde2e99d0c1', '[\"*\"]', '2022-12-27 23:19:51', '2022-12-26 22:54:27', '2022-12-27 23:19:51'),
(5771, 'App\\User', 1336, 'qixerapi_keys', '805d4f9463432bf9600f63c7f14512747cd1b7ec180dd8c0d2c8943d08edb5ec', '[\"*\"]', '2022-12-27 04:28:44', '2022-12-26 22:56:53', '2022-12-27 04:28:44'),
(5778, 'App\\User', 990, 'qixerapi_keys', '05a6e01a42e7ca43906e74e346d5b5b8cbdcddff818b8d8c7e1c112bfb080c0f', '[\"*\"]', '2022-12-27 01:19:16', '2022-12-27 01:19:15', '2022-12-27 01:19:16'),
(5779, 'App\\User', 3, 'qixerapi_keys', '1a8e0614fe2eb4cbe921f771158ed6b24a7846b87c7a12f004df80bd7c15de19', '[\"*\"]', '2022-12-27 02:18:28', '2022-12-27 02:18:27', '2022-12-27 02:18:28'),
(5785, 'App\\User', 598, 'qixerapi_keys', 'fd2cc141af03b410af7d754731639ec7c2672f5e63c2fbc7fe39a2102250d782', '[\"*\"]', '2022-12-27 03:24:03', '2022-12-27 03:24:03', '2022-12-27 03:24:03'),
(5789, 'App\\User', 1336, 'qixerapi_keys', 'ebbbfb60fad1bff8cb618fa8c01983d5caba379745b8e8551215c987e9ad3896', '[\"*\"]', '2022-12-27 04:28:46', '2022-12-27 04:28:45', '2022-12-27 04:28:46'),
(5805, 'App\\User', 1348, 'qixerapi_keys', '99bd09bcddcbf143006bc65c932b909e1b06f489bfe1b41581e1d3358031aee2', '[\"*\"]', NULL, '2022-12-27 06:28:51', '2022-12-27 06:28:51'),
(5811, 'App\\User', 1327, 'qixerapi_keys', '0610231c99f09425f5791144f56eac3882f766004dcf19da157abc310e4102f5', '[\"*\"]', '2022-12-27 06:51:17', '2022-12-27 06:51:05', '2022-12-27 06:51:17'),
(5813, 'App\\User', 1327, 'qixerapi_keys', '6a4e1c8c6396fe6ab3b000dfb8f456c25c6b3420a3f7429382ecd8b1320cc019', '[\"*\"]', '2022-12-27 07:17:58', '2022-12-27 07:01:23', '2022-12-27 07:17:58'),
(5816, 'App\\User', 1349, 'qixerapi_keys', 'ab677c34b94f49bae5cdb90979d36afc1d305352a129f876fd46cd52c322ab30', '[\"*\"]', NULL, '2022-12-27 08:05:14', '2022-12-27 08:05:14'),
(5834, 'App\\User', 1350, 'qixerapi_keys', '88ce412cf6afbd63a558493bd176811eb74917cc1781be24c844583fb0bb2df6', '[\"*\"]', NULL, '2022-12-27 11:51:45', '2022-12-27 11:51:45'),
(5835, 'App\\User', 1350, 'qixerapi_keys', '5d3fc994dceef64ddd7dfe51d48640fed9a45470c82ef485a30a86c2dbd72418', '[\"*\"]', '2022-12-27 11:52:46', '2022-12-27 11:52:12', '2022-12-27 11:52:46'),
(5836, 'App\\User', 1351, 'qixerapi_keys', 'e7469752e8ce1c900dfe8fb9ccbd29fe92e7a2a1c1bb4ae3086a21366c26a447', '[\"*\"]', NULL, '2022-12-27 12:31:25', '2022-12-27 12:31:25'),
(5837, 'App\\User', 1352, 'qixerapi_keys', '42fe1af38c9af198603191090647fb4fa975639bd5f144936c4a806c0538c739', '[\"*\"]', NULL, '2022-12-27 12:32:06', '2022-12-27 12:32:06'),
(5838, 'App\\User', 1353, 'qixerapi_keys', '4c5dba0b03c563de3d2db3b5cb52a0a7a3c506db819e4c4cddbef462d4e1c1b7', '[\"*\"]', NULL, '2022-12-27 12:33:39', '2022-12-27 12:33:39'),
(5854, 'App\\User', 1356, 'qixerapi_keys', '9b3c6cd8bb351980658e550f10a9f3d3e02e91a52fb59a096235d115e7c0a664', '[\"*\"]', '2022-12-27 22:55:33', '2022-12-27 22:54:48', '2022-12-27 22:55:33'),
(5857, 'App\\User', 1342, 'qixerapi_keys', 'f4d73c308e5764a294d2b6d942b44dfc923ea73cbbc06161c9387160df86a8da', '[\"*\"]', '2022-12-27 23:27:35', '2022-12-27 23:19:53', '2022-12-27 23:27:35'),
(5859, 'App\\User', 1342, 'qixerapi_keys', '26586de8221084e84a3555416cbde13aa08bbf02f1f2b5465e8649c06cffd4bb', '[\"*\"]', '2022-12-28 01:09:30', '2022-12-27 23:27:36', '2022-12-28 01:09:30'),
(5861, 'App\\User', 1342, 'qixerapi_keys', 'd2d355925fcaddcc42cbf154d901c0a278954082d60d643f3eafb733566a6186', '[\"*\"]', '2022-12-28 01:11:45', '2022-12-28 01:09:32', '2022-12-28 01:11:45'),
(5865, 'App\\User', 517, 'qixerapi_keys', 'ceb967f4eaf38c802c2eb735b02e72ac504310579d9143cb261b5b2f555c7256', '[\"*\"]', '2022-12-28 02:24:49', '2022-12-28 02:23:47', '2022-12-28 02:24:49'),
(5872, 'App\\User', 1357, 'qixerapi_keys', 'd188f970feef52092451d31e3d0260306cba5a9a6a125c1ba6a3e06471ea84ca', '[\"*\"]', '2022-12-28 09:18:44', '2022-12-28 09:17:01', '2022-12-28 09:18:44'),
(5878, 'App\\User', 363, 'qixerapi_keys', '3cdfcda8980ada8d5cfca667151e8e010485cbbc8defc5061f37f35d84735686', '[\"*\"]', '2022-12-28 10:25:35', '2022-12-28 10:23:46', '2022-12-28 10:25:35'),
(5887, 'App\\User', 1358, 'qixerapi_keys', 'f4e5fdbb7061ed903195dc6050c758561ff853280afc374381ca28db58ce3a1e', '[\"*\"]', NULL, '2022-12-28 13:32:10', '2022-12-28 13:32:10'),
(5888, 'App\\User', 1, 'qixerapi_keys', '28bb82dd534870512b946069a6a9174a8c7f079aa3d9b19081aac14462c97404', '[\"*\"]', '2022-12-28 13:39:44', '2022-12-28 13:36:16', '2022-12-28 13:39:44'),
(5890, 'App\\User', 1359, 'qixerapi_keys', '3a67c6f85c72cde94aec137eab1fba20c28b5b53761437064af6bd2e978a052f', '[\"*\"]', NULL, '2022-12-28 15:55:00', '2022-12-28 15:55:00'),
(5892, 'App\\User', 1159, 'qixerapi_keys', 'f4e488ec102bcbb58d5624bc3b770d0c9be1f86075822982e79bad34847a006b', '[\"*\"]', '2022-12-28 16:25:50', '2022-12-28 16:25:49', '2022-12-28 16:25:50'),
(5893, 'App\\User', 653, 'qixerapi_keys', '358d08b3b0eff46ef00a08466fa910bd710dfd5a4939bcc0ed9b08bb3d3bc4e0', '[\"*\"]', '2022-12-28 17:18:34', '2022-12-28 17:17:27', '2022-12-28 17:18:34'),
(5894, 'App\\User', 1360, 'qixerapi_keys', 'b11aeb1368d91c3f1250ce5501ed270aedb42a3ac319f8ecbcd8a7bad362f288', '[\"*\"]', NULL, '2022-12-28 19:10:04', '2022-12-28 19:10:04'),
(5895, 'App\\User', 798, 'qixerapi_keys', 'b7ba046c360945d1385557502b6f1d9c3de8aea5dd629ae519f5069f2ab66034', '[\"*\"]', '2022-12-28 19:43:27', '2022-12-28 19:39:29', '2022-12-28 19:43:27'),
(5896, 'App\\User', 1, 'qixerapi_keys', '12d27880db69333d555a24ce663a45602104186f71802b694cd11bdfaea9e3e0', '[\"*\"]', '2022-12-28 21:45:51', '2022-12-28 21:36:34', '2022-12-28 21:45:51'),
(5897, 'App\\User', 1361, 'qixerapi_keys', '7a6aca819ab526c0c001274c49575864261529b9104e49bbb7ba19919033bf9f', '[\"*\"]', '2022-12-28 22:12:25', '2022-12-28 22:12:23', '2022-12-28 22:12:25'),
(5898, 'App\\User', 1, 'qixerapi_keys', 'bd95cc322e8fcb8c9c1de2ba17b1bf724801aff4d6349884a9cddce93b51bba3', '[\"*\"]', '2022-12-28 23:40:07', '2022-12-28 23:15:58', '2022-12-28 23:40:07'),
(5899, 'App\\User', 1, 'qixerapi_keys', '5cecef12e7e955e426fdf993c79ee892e062c7897be2e558df7c11702e0f3bc5', '[\"*\"]', '2022-12-28 23:43:39', '2022-12-28 23:42:15', '2022-12-28 23:43:39'),
(5901, 'App\\User', 1, 'qixerapi_keys', '261d37c984520838a4006030fe9822e9c7c855e39d4d0d90beb6ada6ccb2ea27', '[\"*\"]', '2022-12-29 00:21:18', '2022-12-28 23:47:21', '2022-12-29 00:21:18'),
(5902, 'App\\User', 1, 'qixerapi_keys', '21382f9cbdf6c0e4ced269273a014a92206f8944908c6bed531df7d59e58c59c', '[\"*\"]', '2022-12-29 00:32:49', '2022-12-29 00:32:36', '2022-12-29 00:32:49'),
(5903, 'App\\User', 1, 'qixerapi_keys', '5da23b4d60e94e20356bc66450ba7dc3abd5e3cb2bee8bd3777b42304246ccb8', '[\"*\"]', '2022-12-29 02:53:59', '2022-12-29 02:38:50', '2022-12-29 02:53:59'),
(5908, 'App\\User', 1319, 'qixerapi_keys', '18c98fca92b19b8e1d1a118aa496a6368751c6ae637becfcf8fc10757f8818ce', '[\"*\"]', '2022-12-29 04:18:00', '2022-12-29 04:17:58', '2022-12-29 04:18:00'),
(5911, 'App\\User', 1, 'qixerapi_keys', '71eba4710ee9fcfe33b08ee3abef34eaa5fef80dfcb1d1e9e1c134ce988d5f87', '[\"*\"]', '2022-12-29 07:59:10', '2022-12-29 07:54:34', '2022-12-29 07:59:10'),
(5914, 'App\\User', 1362, 'qixerapi_keys', 'a02222de27b0ee5af44548a507813344cdfac066e600ee827e4d6c6b5f26cc18', '[\"*\"]', '2022-12-29 10:44:16', '2022-12-29 10:44:15', '2022-12-29 10:44:16'),
(5915, 'App\\User', 1054, 'qixerapi_keys', '1a97344660ce306d5f58081e25d945e9dde2937e649ae6e917f39257002aef12', '[\"*\"]', '2022-12-29 10:58:37', '2022-12-29 10:58:36', '2022-12-29 10:58:37'),
(5917, 'App\\User', 1328, 'qixerapi_keys', 'cfa80c9290d69489ff9aeef7c917e5be6e7f94bd1ee34466ec44cd9e7968fea0', '[\"*\"]', '2022-12-29 11:40:22', '2022-12-29 11:35:19', '2022-12-29 11:40:22'),
(5918, 'App\\User', 1328, 'qixerapi_keys', 'be9a967089f12952ea239311ef28e786317fd8eac55493895cccbf027bd1eadb', '[\"*\"]', '2022-12-29 11:41:18', '2022-12-29 11:40:24', '2022-12-29 11:41:18'),
(5919, 'App\\User', 1328, 'qixerapi_keys', '727c561d97f0684adc6975726b3cb5c0f679c53305164b296b90e299fdebe6c1', '[\"*\"]', '2022-12-29 17:28:46', '2022-12-29 11:41:20', '2022-12-29 17:28:46'),
(5921, 'App\\User', 1217, 'qixerapi_keys', 'fc5022234add9ae98c20c2df538e65959b9d56084a3a71bb3ed6194e586087db', '[\"*\"]', '2022-12-29 11:45:50', '2022-12-29 11:45:49', '2022-12-29 11:45:50'),
(5923, 'App\\User', 1328, 'qixerapi_keys', '6d314dc9e4f0ce0b0644eeaf1930af7c606a44d55bef143c3d08899353a6bd6f', '[\"*\"]', '2022-12-30 03:34:48', '2022-12-29 17:28:48', '2022-12-30 03:34:48'),
(5926, 'App\\User', 1363, 'qixerapi_keys', '7b736f32ec04bdd7bd03786bd2ccde3c6c775857aa98d46df33c7320c8037290', '[\"*\"]', '2022-12-29 20:11:55', '2022-12-29 20:07:38', '2022-12-29 20:11:55'),
(5928, 'App\\User', 1, 'qixerapi_keys', '1b5efc0a6fc2af1b3255507533a3d0f487cfd07000fbf384cb1a6e54213b8f5b', '[\"*\"]', '2022-12-29 22:09:38', '2022-12-29 22:09:28', '2022-12-29 22:09:38'),
(5929, 'App\\User', 1326, 'qixerapi_keys', 'cc84e813ceba3db06710d7e820aee7d2a8673b603795496772468690fab711cd', '[\"*\"]', NULL, '2022-12-29 23:58:48', '2022-12-29 23:58:48'),
(5930, 'App\\User', 1328, 'qixerapi_keys', '00c5abb922c1978523cad86044c6a85e89cc4f38dd4b970b8bddf4dd0172f1d8', '[\"*\"]', '2022-12-30 03:34:52', '2022-12-30 03:34:51', '2022-12-30 03:34:52'),
(5931, 'App\\User', 1, 'qixerapi_keys', '17fa96b6581f115d3e2fc3b469b93420ed85ab4874e4ff2596616c3909881aa6', '[\"*\"]', '2022-12-30 04:06:19', '2022-12-30 03:59:09', '2022-12-30 04:06:19'),
(5934, 'App\\User', 1364, 'qixerapi_keys', 'ae82677e51449aa63766b5fb03ab3d94a92762cc17f39adf873fc84e4544217c', '[\"*\"]', NULL, '2022-12-30 05:22:13', '2022-12-30 05:22:13'),
(5935, 'App\\User', 598, 'qixerapi_keys', 'c37035ccb9d56c6c837e3ccc65e2228bbb08d4a19fe39f62b7ab7bf86be1f944', '[\"*\"]', '2022-12-30 07:00:26', '2022-12-30 07:00:25', '2022-12-30 07:00:26'),
(5938, 'App\\User', 1, 'qixerapi_keys', 'd2973bb18bc661be0d92ca2e255f496a1db09f61907cab24cd6c4c383b099af9', '[\"*\"]', '2022-12-30 10:53:09', '2022-12-30 10:51:48', '2022-12-30 10:53:09'),
(5940, 'App\\User', 1, 'qixerapi_keys', '7412225c8373a8be86adf79ae6fb38c91e42766a1ee56550806db5f0e9b9b43e', '[\"*\"]', '2022-12-30 14:54:59', '2022-12-30 14:54:58', '2022-12-30 14:54:59'),
(5941, 'App\\User', 1365, 'qixerapi_keys', '1477531b9742221a57887a60374327680c6fc8ab441e7d88f2f2724dec2e8391', '[\"*\"]', NULL, '2022-12-30 20:55:17', '2022-12-30 20:55:17'),
(5944, 'App\\User', 1366, 'qixerapi_keys', '13fdd6e06973af701fc6a6ee6c9ea2ce9c3ad181b448e9dfc900dfda2aeb5155', '[\"*\"]', NULL, '2022-12-31 02:13:10', '2022-12-31 02:13:10'),
(5945, 'App\\User', 1367, 'qixerapi_keys', '39d0b10a6ef0ca19fdfa9667ff348aa5e55e8a1b48f53b02baeb2097b43681d5', '[\"*\"]', NULL, '2022-12-31 02:14:28', '2022-12-31 02:14:28'),
(5947, 'App\\User', 1, 'qixerapi_keys', '667385381349f8c505147694c0c95df1d9d17662a44bc30c30413977d897557b', '[\"*\"]', '2022-12-31 02:24:26', '2022-12-31 02:24:24', '2022-12-31 02:24:26'),
(5950, 'App\\User', 1369, 'qixerapi_keys', 'a9e6002fdd18b714ed5ddef3bde0ec2c1b8f1c53abf7d23cc3df347b0d4683d6', '[\"*\"]', NULL, '2022-12-31 05:55:30', '2022-12-31 05:55:30'),
(5952, 'App\\User', 1, 'qixerapi_keys', 'dbb12420110588ac9c3a838cece7e1752cdd7804bd9bf4bbeb2ea53ce613314d', '[\"*\"]', '2022-12-31 06:01:55', '2022-12-31 06:01:12', '2022-12-31 06:01:55'),
(5953, 'App\\User', 1, 'qixerapi_keys', 'fb9c4b2fccb2fedb93382ccedbba03cd47432430ddd69942b358b52ec82e66e7', '[\"*\"]', '2022-12-31 08:01:39', '2022-12-31 08:01:00', '2022-12-31 08:01:39'),
(5954, 'App\\User', 1232, 'qixerapi_keys', 'cc32d79f6814cea0afbbfe704eb57f820b44256d03a858ec34da79e6b0319e33', '[\"*\"]', '2022-12-31 08:02:07', '2022-12-31 08:02:06', '2022-12-31 08:02:07'),
(5957, 'App\\User', 1, 'qixerapi_keys', '33a46e23a0d84f06fbe377451fd658b36e2ccc4d2c763707d8a2c693cb776fab', '[\"*\"]', '2022-12-31 09:47:41', '2022-12-31 09:47:40', '2022-12-31 09:47:41'),
(5958, 'App\\User', 5, 'qixerapi_keys', '9c4f0d8dcf822936d781651d4f661c78986f6bd5b590a094f91461eb8b28809a', '[\"*\"]', '2022-12-31 10:57:02', '2022-12-31 10:57:00', '2022-12-31 10:57:02'),
(5959, 'App\\User', 5, 'qixerapi_keys', '6f95f844dfa915429a7047b97aae05a25c17088d7f9767fb5c8be4f83fcb3f88', '[\"*\"]', '2022-12-31 13:40:42', '2022-12-31 13:37:39', '2022-12-31 13:40:42'),
(5960, 'App\\User', 5, 'qixerapi_keys', '9b33bb990c93fe12f0b3a53647516e0cfcc98de7cbe7f5e835002cf0ad51a694', '[\"*\"]', '2022-12-31 15:03:34', '2022-12-31 15:03:33', '2022-12-31 15:03:34'),
(5961, 'App\\User', 1, 'qixerapi_keys', '50b911138c60169a4a9c8418a33d42cc1c0afdbf91368c8f170667a8a380e131', '[\"*\"]', '2022-12-31 16:41:25', '2022-12-31 16:39:00', '2022-12-31 16:41:25'),
(5962, 'App\\User', 5, 'qixerapi_keys', '3d377d35cdf7bc93bb2662defdd0b134eab209cae8ce16f8198d936e46e0de53', '[\"*\"]', '2022-12-31 16:49:05', '2022-12-31 16:43:46', '2022-12-31 16:49:05'),
(5963, 'App\\User', 1218, 'qixerapi_keys', '07f819c1d86ab0ef7b8981fc61d43dec81102db1fa5ac2ff81d9cd9106934424', '[\"*\"]', '2022-12-31 19:28:18', '2022-12-31 19:28:17', '2022-12-31 19:28:18'),
(5964, 'App\\User', 5, 'qixerapi_keys', '93b080ecdb9cd73602ce6b55bfcab397821fbe6d2b6028e30b0122e11c34e06b', '[\"*\"]', '2023-01-01 01:44:17', '2022-12-31 20:42:31', '2023-01-01 01:44:17'),
(5965, 'App\\User', 5, 'qixerapi_keys', '17def6047debf729d5471fe7cf9899e023c9a0661bcb78c53ccb26075d25db1c', '[\"*\"]', '2022-12-31 21:01:18', '2022-12-31 21:01:07', '2022-12-31 21:01:18'),
(5966, 'App\\User', 249, 'qixerapi_keys', '7194107e9f390986ec81fdbc6037e103cd9d7e742561948aa92334591f695b3c', '[\"*\"]', '2022-12-31 21:59:09', '2022-12-31 21:58:54', '2022-12-31 21:59:09'),
(5967, 'App\\User', 1, 'qixerapi_keys', 'e135c7b28d3fe6ca0c8a6e9c00e2db4f078500261f686ab3e35f83f272458cd1', '[\"*\"]', '2022-12-31 22:04:22', '2022-12-31 22:04:18', '2022-12-31 22:04:22'),
(5968, 'App\\User', 5, 'qixerapi_keys', '3b8ccbe5c7a0bf7f7b48d3eb41817cdfa380696bdf7ea1e8e45e2efb7dc1e03b', '[\"*\"]', '2023-01-01 10:53:54', '2022-12-31 22:15:35', '2023-01-01 10:53:54'),
(5969, 'App\\User', 1, 'qixerapi_keys', '867293f222a63a0e567e993ca4bc96a500504a9db1f942d52a2b273552493bb0', '[\"*\"]', '2022-12-31 22:33:18', '2022-12-31 22:33:13', '2022-12-31 22:33:18'),
(5970, 'App\\User', 1, 'qixerapi_keys', '33bbc1857b1e34afe7f7786f21e917e72c04a06c53dfc191d264ed8db1a1af67', '[\"*\"]', '2022-12-31 22:34:58', '2022-12-31 22:34:53', '2022-12-31 22:34:58'),
(5971, 'App\\User', 1, 'qixerapi_keys', '40407adc3416bebc2815aacb18b843d8f5c3a8f79f5ba6d64bdc69bf57790b0f', '[\"*\"]', '2022-12-31 22:35:47', '2022-12-31 22:35:43', '2022-12-31 22:35:47'),
(5972, 'App\\User', 1, 'qixerapi_keys', '5c529d42d4aa5fbe5903bb1dc6a50307188187b92df2fef3ec0118c8b8043b02', '[\"*\"]', '2022-12-31 22:45:26', '2022-12-31 22:45:21', '2022-12-31 22:45:26'),
(5973, 'App\\User', 1, 'qixerapi_keys', '4ccaddb58bcc75e207542f5dab96dea7618fc0699ad6f66521c61ed9fa8e93fd', '[\"*\"]', '2022-12-31 22:48:07', '2022-12-31 22:48:02', '2022-12-31 22:48:07'),
(5974, 'App\\User', 1, 'qixerapi_keys', 'e42942af3f69f3360f31f25c1efdd54552ccefd847e76f83aded095db5f42a18', '[\"*\"]', '2023-01-01 00:41:19', '2023-01-01 00:09:06', '2023-01-01 00:41:19'),
(5975, 'App\\User', 5, 'qixerapi_keys', '343d6b673e52eef2685a09f115fa0290aa0b9e8a386493f2f88a4c34c732583e', '[\"*\"]', '2023-01-01 01:44:20', '2023-01-01 01:44:18', '2023-01-01 01:44:20'),
(5976, 'App\\User', 1, 'qixerapi_keys', '70acd0441786a40a9aa3a3a8d2705d0b5849bc66a1969ac039a6a73659090d13', '[\"*\"]', '2023-01-01 02:01:56', '2023-01-01 02:01:53', '2023-01-01 02:01:56'),
(5977, 'App\\User', 1, 'qixerapi_keys', '634d943016ac672f0f4f32c718661a7a7511512c2ee8d75045d6f1e49cafa531', '[\"*\"]', '2023-01-01 02:31:23', '2023-01-01 02:31:18', '2023-01-01 02:31:23'),
(5978, 'App\\User', 1, 'qixerapi_keys', 'd024ffceed116539066ea7810f3f406d0a56a92c39c9bcc1d5a5025143b3c2ee', '[\"*\"]', '2023-01-01 02:32:40', '2023-01-01 02:32:35', '2023-01-01 02:32:40'),
(5979, 'App\\User', 1, 'qixerapi_keys', '204ef2e4fcc2bba97fc3794d0bd1ce2b5f6fab9527fb69125f0096ceccde6648', '[\"*\"]', '2023-01-01 03:37:16', '2023-01-01 03:37:08', '2023-01-01 03:37:16'),
(5980, 'App\\User', 1286, 'qixerapi_keys', '968a79f975b582ed6715a5781713c6408eccb1bdfd248caa667028ff8238b6e2', '[\"*\"]', '2023-01-01 04:25:19', '2023-01-01 04:24:17', '2023-01-01 04:25:19'),
(5981, 'App\\User', 5, 'qixerapi_keys', 'c1182ad132fe21723bc856086c42b15bfe7e6b88a5994b69a1826e4267698bf8', '[\"*\"]', '2023-01-01 04:48:44', '2023-01-01 04:48:37', '2023-01-01 04:48:44'),
(5982, 'App\\User', 1, 'qixerapi_keys', '86e12e5499013f9606e52e3bd183fc67d2b71592c1f5e9f0930707a4f6a0e216', '[\"*\"]', '2023-01-01 06:04:12', '2023-01-01 06:04:10', '2023-01-01 06:04:12'),
(5983, 'App\\User', 1, 'qixerapi_keys', '22ddff31d7d8a243bea5482a332070215982fb76c18d2e4e5f365c0b39a672a1', '[\"*\"]', '2023-01-01 07:49:21', '2023-01-01 07:48:18', '2023-01-01 07:49:21'),
(5986, 'App\\User', 1372, 'qixerapi_keys', 'e54151927510af1f5f2027aa4927b9f95197e2627b60c8e96934b0745c3feebc', '[\"*\"]', '2023-01-01 10:36:46', '2023-01-01 10:36:12', '2023-01-01 10:36:46'),
(5987, 'App\\User', 5, 'qixerapi_keys', '36c067e351abc9aa10f87cbeec6018819c932244e71ad5dac67a71398e643749', '[\"*\"]', '2023-01-01 10:55:48', '2023-01-01 10:53:55', '2023-01-01 10:55:48'),
(5988, 'App\\User', 1, 'qixerapi_keys', '8725fc642922fd731c2b5c6416760823fb162f0b5d268db5a167547600bb52ea', '[\"*\"]', '2023-01-01 19:25:24', '2023-01-01 17:06:39', '2023-01-01 19:25:24'),
(5989, 'App\\User', 5, 'qixerapi_keys', '994aa015153bca3689df5865ff29c871ecb42a6499ae368161e6d75919478e87', '[\"*\"]', '2023-01-01 18:10:15', '2023-01-01 17:09:20', '2023-01-01 18:10:15'),
(5990, 'App\\User', 5, 'qixerapi_keys', 'c707add112a055dd9b3bc60439a21e54b56c2d31b5db86aaafcbb0f2ae3ec241', '[\"*\"]', '2023-01-01 18:10:19', '2023-01-01 18:10:17', '2023-01-01 18:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `service_id` bigint(20) DEFAULT NULL,
  `seller_id` bigint(20) NOT NULL,
  `buyer_id` bigint(20) NOT NULL,
  `report_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `report` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_chat_messages`
--

CREATE TABLE `report_chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `report_id` bigint(20) NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `buyer_id` bigint(20) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notify` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `rating` double NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `service_id`, `seller_id`, `buyer_id`, `rating`, `name`, `email`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 5, 5, 'Md Riyad', 'riyad777hossain@gmail.com', 'This Seller is Awesome. I just put my order and this guy do the job immediately as my requirement. This Seller is Awesome. I just put my order and this guy do the job immediately as my requirement.', 1, '2022-02-17 17:57:30', '2022-02-17 17:57:30'),
(2, 2, 1, 3, 4, 'Md Riyad', 'riyad777hossain@gmail.com', 'This Seller is Awesome. I just put my order and this guy do the job immediately as my requirement. This Seller is Awesome. I just put my order and this guy do the job immediately as my requirement.', 1, '2022-02-17 17:58:24', '2022-02-17 17:58:24'),
(3, 3, 1, 5, 5, 'Md Riyad', 'riyad777hossain@gmail.com', 'Got his services just awesome', 1, '2022-02-17 18:02:13', '2022-02-17 18:02:13'),
(4, 3, 1, 5, 5, 'Md Riyad', 'riyad777hossain@gmail.com', 'Cool Seller', 1, '2022-02-17 18:03:15', '2022-02-17 18:03:15'),
(5, 2, 1, 5, 5, 'Md Riyad', 'riyad777hossain@gmail.com', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', 1, '2022-02-17 17:57:30', '2022-02-17 17:57:30'),
(6, 2, 1, 5, 5, 'Md Riyad', 'riyad777hossain@gmail.com', 'This Seller is Awesome. I just put my order and this guy do the job immediately as my requirement. This Seller is Awesome. I just put my order and this guy do the job immediately as my requirement.', 1, '2022-02-17 17:57:30', '2022-02-17 17:57:30'),
(7, 2, 1, 3, 5, 'Md Riyad', 'riyad777hossain@gmail.com', 'This Seller is Awesome. I just put my order and this guy do the job immediately as my requirement. This Seller is Awesome. I just put my order and this guy do the job immediately as my requirement.', 1, '2022-02-21 17:57:30', '2022-02-21 17:57:30'),
(8, 2, 1, 3, 5, 'Md Riyad', 'riyad777hossain@gmail.com', 'This Seller is Awesome. I just put my order and this guy do the job immediately as my requirement. This Seller is Awesome. I just put my order and this guy do the job immediately as my requirement.', 1, '2022-02-17 17:57:30', '2022-02-17 17:57:30'),
(9, 14, 2, 5, 5, 'Md Riyadaaaa', 'riyad@gmail.comsd', 'good job', 1, '2022-03-12 03:16:25', '2022-03-12 03:16:25'),
(10, 2, 1, 1, 1, 'Nazmul Hoque', 'demo@bytesed.com', 'This Seller is Awesome. I just put my order and this guy do the job immediately as my requirement. This Seller is Awesome. I just put my order and this guy do the job immediately as my requirement.', 1, '2022-03-21 17:46:44', '2022-03-21 17:46:44'),
(11, 2, 1, 1, 1, 'Nazmul Hoque', 'demo@bytesed.com', 'furun ru rurur5u r', 1, '2022-03-21 17:47:14', '2022-03-21 17:47:14'),
(12, 2, 1, 1, 5, 'Nazmul Hoque', 'demo@bytesed.com', 'y5u rru rujr6ujr6uj6rj66r', 1, '2022-03-21 17:47:38', '2022-03-21 17:47:38'),
(13, 6, 1, 5, 3, 'Md Riyad', 'riyad@gmail.com', 'ioi', 1, '2022-03-21 20:13:04', '2022-03-21 20:13:04'),
(14, 1, 1, 5, 0, 'Md Riyad', 'riyad@gmail.com', 'asfasfsafa', 1, '2022-03-22 19:40:07', '2022-03-22 19:40:07'),
(15, 1, 1, 5, 5, 'Md Riyad', 'riyad@gmail.com', 'klkl', 1, '2022-03-30 21:00:09', '2022-03-30 21:00:09'),
(16, 36, 1, 5, 4, 'Md Riyad', 'riyad@gmail.com', 'good', 1, '2022-04-05 13:06:14', '2022-04-05 13:06:14'),
(17, 36, 1, 5, 5, 'Md Riyad', 'riyad@gmail.com', 'test', 1, '2022-04-05 13:06:26', '2022-04-05 13:06:26'),
(18, 2, 1, 1, 5, 'Nazmul Hoque', 'demo@bytesed.com', 'llnkn,n,n', 1, '2022-04-11 18:57:10', '2022-04-11 18:57:10'),
(19, 4, 1, 5, 5, 'Md Riyad', 'riyad@gmail.com', 'Awesome Seller.....', 1, '2022-04-17 23:35:35', '2022-04-17 23:35:35'),
(20, 4, 1, 5, 3, 'Md Riyad', 'riyad@gmail.com', 'vxvxvxcv', 1, '2022-04-17 23:40:35', '2022-04-17 23:40:35'),
(21, 3, 1, 5, 5, 'Md Riyad', 'riyad@gmail.com', 'Awesome Seller', 1, '2022-04-17 23:45:12', '2022-04-17 23:45:12'),
(22, 3, 1, 5, 4, 'Md Riyad', 'riyad@gmail.com', 'asdasdaas asdasdasdasd', 1, '2022-04-17 23:46:22', '2022-04-17 23:46:22'),
(23, 4, 1, 5, 3, 'Md Riyad', 'riyad@gmail.com', './;', 1, '2022-04-18 01:25:13', '2022-04-18 01:25:13'),
(24, 4, 1, 5, 5, 'Md Riyad', 'riyad@gmail.com', 'hiijjklk', 1, '2022-04-18 01:25:24', '2022-04-18 01:25:24'),
(25, 7, 1, 5, 5, 'Md Riyad', 'riyad@gmail.com', 'dfdf', 1, '2022-04-18 01:53:38', '2022-04-18 01:53:38'),
(26, 1, 1, 5, 5, 'Riyad', 'riyad@gmail.com', 'okkk', 1, '2022-04-23 23:14:08', '2022-04-23 23:14:08'),
(27, 1, 1, 256, 5, 'sharifur', 'dvrobin4@gmail.com', 'very good service', 1, '2022-06-02 20:52:40', '2022-06-02 20:52:40'),
(28, 1, 1, 256, 5, 'sharifur', 'dvrobin4@gmail.com', 'good service', 1, '2022-06-02 20:53:27', '2022-06-02 20:53:27'),
(29, 5, 1, 5, 5, 'Md Riyad2', 'riyad@gmail.com', 'dadfadsf', 1, '2022-06-02 21:44:31', '2022-06-02 21:44:31'),
(30, 5, 1, 5, 5, 'Md Riyad2', 'riyad@gmail.com', 'zxfasdfsd', 1, '2022-06-02 21:44:59', '2022-06-02 21:44:59'),
(31, 6, 1, 261, 1, 'Bhattaram', 'wedel71646@game4hr.com', '??', 1, '2022-06-03 16:28:21', '2022-06-03 16:28:21'),
(32, 6, 1, 261, 1, 'Bhattaram', 'wedel71646@game4hr.com', 'osm bro osm', 1, '2022-06-03 16:28:37', '2022-06-03 16:28:37'),
(33, 1, 1, 249, 1, 'test', 'smsaleheen2@gmail.com', 'kgigo', 1, '2022-06-04 13:13:21', '2022-06-04 13:13:21'),
(34, 6, 1, 249, 1, 'test', 'smsaleheen2@gmail.com', 'ifvkbllbblkb', 1, '2022-06-04 13:17:55', '2022-06-04 13:17:55'),
(35, 17, 4, 249, 1, 'test', 'smsaleheen2@gmail.com', 'n vkvkkhkhlj', 1, '2022-06-04 13:18:29', '2022-06-04 13:18:29'),
(36, 15, 2, 249, 1, 'test', 'smsaleheen2@gmail.com', 'gghjgj', 1, '2022-06-04 13:20:12', '2022-06-04 13:20:12'),
(37, 1, 1, 271, 1, 'cggygu', 'gbh10088@jiooq.com', 'xuigkgh', 1, '2022-06-04 13:29:37', '2022-06-04 13:29:37'),
(38, 2, 1, 271, 1, 'cggygu', 'gbh10088@jiooq.com', 'cjvkkbk', 1, '2022-06-04 13:32:57', '2022-06-04 13:32:57'),
(39, 2, 1, 249, 5, 'Md Riyad', 'riyad@gmail.com', 'okkkk', 1, '2022-06-04 14:37:53', '2022-06-04 14:37:53'),
(40, 1, 1, 317, 5, 'SEO Tools', 'seotools411@gmail.com', 'hgufhh', 1, '2022-06-09 23:57:22', '2022-06-09 23:57:22'),
(41, 1, 1, 530, 5, 'Vishwa Dharsan', 'vishwadharsan8@gmail.com', 'ksks', 1, '2022-06-19 23:22:53', '2022-06-19 23:22:53'),
(42, 17, 4, 598, 5, 'test', 'test123@gmail.com', 'опмош8', 1, '2022-06-25 13:19:08', '2022-06-25 13:19:08'),
(43, 1, 1, 598, 4, 'test', 'test123@gmail.com', 'krnnrnr', 1, '2022-06-30 00:03:14', '2022-06-30 00:03:14'),
(44, 12, 2, 598, 4, 'test', 'test123@gmail.com', 'jffhi', 1, '2022-07-03 07:52:02', '2022-07-03 07:52:02'),
(45, 1, 1, 653, 1, 'Gabriel Inya-Agha', 'gabeyy@gmail.com', 'Bnkkk', 1, '2022-07-04 07:25:23', '2022-07-04 07:25:23'),
(46, 41, 1, 1, 5, 'Nazmul Hoque', 'demo@bytesed.com', 'kjj', 1, '2022-07-11 13:26:28', '2022-07-11 13:26:28'),
(47, 1, 1, 472, 4, 'Rohan Gaurat', 'rohangaurat@gmail.com', 'test', 1, '2022-07-18 11:44:54', '2022-07-18 11:44:54'),
(48, 56, 1, 598, 4, 'test', 'test123@gmail.com', 'good night', 1, '2022-07-26 09:04:01', '2022-07-26 09:04:01'),
(49, 56, 1, 735, 5, 'Trinh Thanh', 'exviet@gmail.com', 'ok', 1, '2022-07-27 06:25:43', '2022-07-27 06:25:43'),
(50, 6, 1, 783, 5, 'mostakim hasan emon', 'mostakime5@gmail.com', 'hi', 1, '2022-07-30 06:11:48', '2022-07-30 06:11:48'),
(51, 6, 1, 598, 1, 'test', 'test123@gmail.com', 'review with out even booking the item ??', 1, '2022-08-05 06:04:02', '2022-08-05 06:04:02'),
(52, 9, 2, 598, 1, 'test', 'test123@gmail.com', 'tt', 1, '2022-08-06 17:33:15', '2022-08-06 17:33:15'),
(53, 56, 1, 1, 3, 'Test Seller', 'demo@bytesed.com', 'dfsdf', 1, '2022-09-09 21:24:09', '2022-09-09 21:24:09'),
(54, 6, 1, 1057, 5, 'Carmine Vittiglio', 'carminevittiglio@gmail.com', 'hjhhjjhjjjhhii ji 😃😀', 1, '2022-09-23 11:10:51', '2022-09-23 11:10:51'),
(55, 7, 1, 1, 2, 'Test Seller', 'demo@bytesed.com', 'Bad', 1, '2022-10-02 00:20:23', '2022-10-02 00:20:23'),
(56, 4, 1, 1120, 5, 'Faaz Thame', 'antiviruscooler@gmail.com', 'nice', 1, '2022-10-03 02:20:15', '2022-10-03 02:20:15'),
(57, 56, 1, 1049, 2, 'VANIS Kaptué', 'vaniskaptue@yahoo.fr', 'ttt', 1, '2022-10-04 17:25:04', '2022-10-04 17:25:04'),
(58, 49, 1, 5, 1, 'Test Buyer', 'test@gmail.com', 'ff', 1, '2022-12-05 06:36:22', '2022-12-05 06:36:22'),
(59, 50, 1, 1, 5, 'Test Seller', 'demo@bytesed.com', 'hekko', 1, '2022-12-08 01:30:13', '2022-12-08 01:30:13'),
(60, 56, 1, 249, 1, 'saleheen', 'smsaleheen2@gmail.com', 's', 1, '2022-12-21 23:21:10', '2022-12-21 23:21:10'),
(61, 53, 1, 5, 1, 'Test Buyer', 'test@gmail.com', 'ok', 1, '2022-12-24 12:44:05', '2022-12-24 12:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin', '2021-09-01 23:42:51', '2021-09-01 23:42:51'),
(2, 'Admin', 'admin', '2021-09-01 23:45:03', '2021-09-01 23:45:03'),
(3, 'Editor', 'admin', '2021-09-01 23:45:48', '2021-09-02 00:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(74, 1),
(81, 1),
(82, 1),
(83, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(119, 1),
(1, 2),
(2, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(74, 2),
(81, 2),
(82, 2),
(83, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(101, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(108, 2),
(109, 2),
(110, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(125, 2),
(126, 2),
(184, 2),
(185, 2),
(186, 2),
(187, 2),
(188, 2),
(189, 2),
(190, 2),
(191, 2),
(192, 2),
(193, 2),
(194, 2),
(196, 2),
(198, 2),
(199, 2),
(200, 2),
(201, 2),
(203, 2),
(204, 2),
(206, 2),
(208, 2),
(209, 2),
(210, 2),
(211, 2),
(212, 2),
(213, 2),
(216, 2),
(227, 2),
(228, 2),
(229, 2),
(230, 2),
(233, 2),
(235, 2),
(236, 2),
(112, 3),
(113, 3),
(114, 3),
(115, 3);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `schedule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `allow_multiple_schedule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `day_id`, `seller_id`, `schedule`, `status`, `created_at`, `updated_at`, `allow_multiple_schedule`) VALUES
(1, 1, 1, '10.00AM-11.00AM', 0, '2021-12-14 00:15:14', '2022-10-23 07:58:34', 'yes'),
(2, 1, 1, '12.00AM-01.00PM', 0, '2021-12-14 00:18:34', '2022-10-23 07:58:34', 'yes'),
(9, 7, 1, '10.00AM-11.00AM', 0, '2021-12-14 03:52:49', '2022-10-23 07:58:34', 'yes'),
(10, 7, 1, '12.00AM-01.00PM', 0, '2021-12-14 03:53:03', '2022-10-23 07:58:34', 'yes'),
(11, 8, 1, '04.00AM-05.00AM', 0, '2021-12-14 05:29:30', '2022-10-23 07:58:34', 'yes'),
(12, 9, 1, '12.00AM-01.00PM', 0, '2021-12-14 05:29:54', '2022-10-23 07:58:34', 'yes'),
(13, 14, 2, '12.00AM-01.00PM', 0, '2022-01-17 08:27:31', '2022-01-17 08:27:31', 'no'),
(14, 27, 5, '10.00AM-11.00AM', 0, '2022-02-07 02:33:30', '2022-02-07 02:33:30', 'no'),
(15, 15, 1, '12.00AM-01.00PM', 0, '2022-02-09 00:34:36', '2022-10-23 07:58:34', 'yes'),
(16, 16, 1, '12.00AM-01.00PM', 0, '2022-02-09 00:34:48', '2022-10-23 07:58:34', 'yes'),
(17, 17, 1, '12.00AM-01.00PM', 0, '2022-02-09 00:34:57', '2022-10-23 07:58:34', 'yes'),
(18, 19, 2, '10.00AM-11.00PM', 0, '2022-02-09 00:39:31', '2022-02-09 00:39:31', 'no'),
(19, 20, 2, '12.00AM-01.00PM', 0, '2022-02-09 00:39:44', '2022-02-09 00:39:44', 'no'),
(20, 21, 2, '10.00AM-11.00PM', 0, '2022-02-09 00:39:57', '2022-02-09 00:39:57', 'no'),
(21, 22, 2, '4.00AM-6.00PM', 0, '2022-02-09 00:40:19', '2022-02-09 00:40:19', 'no'),
(22, 23, 2, '10.00AM-11.00PM', 0, '2022-02-09 00:40:33', '2022-02-09 00:40:33', 'no'),
(24, 27, 4, '12.00AM-01.00PM', 0, '2022-02-09 00:45:45', '2022-02-09 00:45:45', 'no'),
(25, 28, 4, '10.00AM-11.00PM', 0, '2022-02-09 00:45:54', '2022-02-09 00:45:54', 'no'),
(26, 29, 4, '4.00AM-6.00PM', 0, '2022-02-09 00:46:05', '2022-02-09 00:46:05', 'no'),
(27, 19, 2, '4.00AM-6.00PM', 0, '2022-02-14 00:46:35', '2022-02-14 00:46:35', 'no'),
(28, 20, 2, '10.00AM-11.00PM', 0, '2022-02-14 00:46:59', '2022-02-14 00:46:59', 'no'),
(29, 7, 1, '04.00AM-05.00PM', 0, '2022-02-27 01:38:54', '2022-10-23 07:58:34', 'yes'),
(30, 8, 1, '12.00AM-01.00PM', 0, '2022-02-27 01:39:16', '2022-10-23 07:58:34', 'yes'),
(31, 8, 1, '10.00AM-11.00PM', 0, '2022-02-27 01:39:28', '2022-10-23 07:58:34', 'yes'),
(32, 9, 1, '10.00AM-11.00PM', 0, '2022-02-27 01:40:14', '2022-10-23 07:58:34', 'yes'),
(33, 9, 1, '04.00AM-05.00PM', 0, '2022-02-27 01:40:30', '2022-10-23 07:58:34', 'yes'),
(34, 15, 1, '03.00AM-04.00PM', 0, '2022-02-27 01:41:05', '2022-10-23 07:58:34', 'yes'),
(35, 15, 1, '09.00AM-10.00PM', 0, '2022-02-27 01:41:27', '2022-10-23 07:58:34', 'yes'),
(36, 7, 1, '07.00AM-08.00PM', 0, '2022-02-27 01:46:25', '2022-10-23 07:58:34', 'yes'),
(37, 27, 4, '10.00AM-11.00PM', 0, '2022-02-27 01:47:21', '2022-02-27 01:47:21', 'no'),
(38, 27, 4, '4.00AM-6.00PM', 0, '2022-02-27 01:47:32', '2022-02-27 01:47:32', 'no'),
(39, 28, 4, '4.00AM-6.00PM', 0, '2022-02-27 01:47:50', '2022-02-27 01:47:50', 'no'),
(40, 29, 4, '10.00AM-11.00PM', 0, '2022-02-27 01:48:17', '2022-02-27 01:48:17', 'no'),
(41, 29, 4, '1.00AM-2.00PM', 0, '2022-02-27 01:50:56', '2022-02-27 01:50:56', 'no'),
(42, 14, 2, '10.00AM-11.00PM', 0, '2022-02-27 01:51:49', '2022-02-27 01:51:49', 'no'),
(43, 19, 2, '11.00AM-12.00PM', 0, '2022-02-27 01:52:05', '2022-02-27 01:52:05', 'no'),
(44, 21, 2, '10.00AM-11.00PM', 0, '2022-02-27 01:52:24', '2022-02-27 01:52:24', 'no'),
(45, 20, 2, '10.00AM-11.00PM', 0, '2022-02-27 01:52:36', '2022-02-27 01:52:36', 'no'),
(46, 22, 2, '10.00AM-11.00PM', 0, '2022-02-27 01:53:30', '2022-02-27 01:53:30', 'no'),
(47, 23, 2, '11.00AM-12.00PM', 0, '2022-02-27 01:53:38', '2022-02-27 01:53:51', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `seller_subscriptions`
--

CREATE TABLE `seller_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) NOT NULL,
  `seller_id` bigint(20) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connect` bigint(20) NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `initial_connect` bigint(20) NOT NULL DEFAULT '0',
  `initial_price` double NOT NULL DEFAULT '0',
  `total` double NOT NULL DEFAULT '0',
  `status` bigint(20) NOT NULL DEFAULT '0',
  `expire_date` timestamp NULL DEFAULT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manual_payment_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_verifies`
--

CREATE TABLE `seller_verifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` bigint(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_view_jobs`
--

CREATE TABLE `seller_view_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_post_id` bigint(20) NOT NULL,
  `seller_id` bigint(20) NOT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serviceadditionals`
--

CREATE TABLE `serviceadditionals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(11) DEFAULT NULL,
  `seller_id` bigint(11) DEFAULT NULL,
  `additional_service_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_service_price` double DEFAULT NULL,
  `additional_service_quantity` int(11) DEFAULT NULL,
  `additional_service_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serviceadditionals`
--

INSERT INTO `serviceadditionals` (`id`, `service_id`, `seller_id`, `additional_service_title`, `additional_service_price`, `additional_service_quantity`, `additional_service_image`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Kitchen', 20, 2, '137', NULL, '2022-06-02 16:18:43'),
(2, 1, 1, 'Fridge', 10, 1, '136', NULL, '2022-06-02 16:18:43'),
(3, 2, 1, 'Ac Service', 5, 1, '139', NULL, '2022-02-13 03:07:52'),
(4, 3, 1, 'Facial', 5, 1, '140', NULL, '2022-02-13 04:09:55'),
(5, 4, 1, 'Table Moving', 5, 2, '141', NULL, '2022-02-13 03:12:39'),
(6, 5, 1, 'Kitchen Cleaning', 5, 1, '137', NULL, '2022-02-13 03:13:57'),
(7, 5, 1, 'Door Cleaning', 10, 1, '142', NULL, '2022-02-13 03:13:57'),
(8, 6, 1, 'AC Dry Wash', 4, 1, '139', NULL, '2022-02-13 06:00:52'),
(9, 7, 1, 'Kitchen Painting 10x10', 90, 1, '137', NULL, '2022-02-13 03:14:46'),
(10, 8, 2, 'Back Massage', 3, 1, '145', NULL, '2022-02-13 03:33:22'),
(11, 1, 1, 'TV', 11, 1, '138', NULL, '2022-06-02 16:18:43'),
(12, 1, 1, 'Wall2', 12, 1, '135', NULL, '2022-06-02 16:18:43'),
(13, 9, 2, 'Boys Beard Shave', 3, 1, '146', NULL, '2022-02-13 03:35:56'),
(14, 9, 2, 'Cool Cutting Style', 2, 1, '147', NULL, '2022-02-13 03:35:56'),
(18, 12, 2, 'Car Dry Wash', 10, 1, '148', NULL, '2022-02-13 04:00:09'),
(19, 13, 2, 'Sofa Cover Cloth Clean', 3, 1, '150', NULL, '2022-02-13 03:40:47'),
(20, 13, 2, '2 Seater Sofa Dry Wash', 10, 1, '150', NULL, '2022-02-13 03:40:47'),
(21, 14, 2, 'Wire Change', 2, 1, '151', NULL, '2022-02-13 03:42:58'),
(22, 14, 2, 'Circuit Board', 3, 1, '152', NULL, '2022-02-13 03:42:58'),
(23, 15, 2, 'Furniture Set', 30, 1, '153', NULL, '2022-02-13 03:43:28'),
(24, 16, 1, 'Drying Car', 3, 1, '143', NULL, '2022-02-13 03:15:51'),
(25, 12, 2, 'Car Full Service', 50, 1, '149', NULL, '2022-02-13 04:00:09'),
(26, 17, 5, 'Hair Color', 5, 1, '154', NULL, '2022-02-13 03:45:24'),
(27, 18, 5, 'TV Cleaning Service', 10, 1, '155', NULL, '2022-02-13 03:58:02'),
(28, 19, 5, '5 Switch Board Repair', 5, 1, '156', NULL, '2022-02-13 03:47:17'),
(29, 20, 5, 'Only Face Makeup', 5, 1, '157', NULL, '2022-02-13 03:48:46'),
(56, 36, 1, 'Kitchen Cleaning', 20, 1, '137', NULL, '2022-02-13 03:29:25'),
(57, 36, 1, 'Window Clean', 20, 1, '144', NULL, '2022-02-13 03:29:25'),
(58, 36, 1, 'Table', 10, 1, '141', NULL, '2022-02-13 03:29:25'),
(62, 12, 2, 'Tire Change', NULL, 1, '158', NULL, '2022-02-13 04:00:10'),
(63, 8, 2, 'Hand Massage', NULL, 1, '159', NULL, NULL),
(64, 2, 1, 'Ac Clean', 5, 1, '160', NULL, NULL),
(65, 3, 1, 'Hair Color', 5, 1, '162', NULL, '2022-02-13 04:09:55'),
(66, 4, 1, 'Door Moving', 5, 1, '163', NULL, NULL),
(71, 41, 1, 'Get business plan', 10, 1, '139', NULL, '2022-04-28 03:06:56'),
(72, 41, 1, 'Business Idea', 10, 1, '144', NULL, '2022-04-28 03:06:56'),
(82, 49, 1, 'werwer', 10, 1, '168', NULL, NULL),
(83, 49, 1, '1asasd asdas', 20, 1, '170', NULL, NULL),
(84, 56, 1, 'Profile Build', 10, 1, NULL, NULL, '2022-09-09 21:13:54'),
(85, 56, 1, 'Profile Brand', 20, 1, NULL, NULL, '2022-09-09 21:13:54'),
(86, 53, 1, 'Service One', 10, 1, '187', NULL, '2022-04-28 03:02:09'),
(87, 53, 1, 'Service Two', 12, 1, '186', NULL, '2022-04-28 03:02:09'),
(88, 53, 1, 'Service Three', 15, 1, '185', NULL, '2022-04-28 03:02:09'),
(89, 50, 1, 'Business scerrt', 10, 1, '186', NULL, '2022-04-28 03:03:07'),
(90, 50, 1, 'Business plan', 10, 1, '183', NULL, '2022-04-28 03:03:07'),
(91, 50, 1, 'Business idea', NULL, 1, '184', NULL, '2022-04-28 03:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `servicebenifits`
--

CREATE TABLE `servicebenifits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(11) DEFAULT NULL,
  `seller_id` bigint(11) DEFAULT NULL,
  `benifits` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `servicebenifits`
--

INSERT INTO `servicebenifits` (`id`, `service_id`, `seller_id`, `benifits`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Service Gurantee2', NULL, '2022-06-02 16:18:43'),
(2, 1, 1, 'Quality Service2', NULL, '2022-06-02 16:18:43'),
(3, 1, 1, 'Timely Work2', NULL, '2022-06-02 16:18:43'),
(4, 2, 1, 'Service Gurantee', NULL, '2022-02-13 03:07:52'),
(5, 2, 1, 'Quality Service', NULL, '2022-02-13 03:07:52'),
(6, 3, 1, 'Service From Home', NULL, '2022-02-13 04:09:55'),
(7, 3, 1, 'Quality Service', NULL, '2022-02-13 04:09:55'),
(8, 3, 1, 'Timely Service', NULL, '2022-02-13 04:09:55'),
(9, 4, 1, 'Service Gurantee', NULL, '2022-02-13 03:12:39'),
(10, 4, 1, 'Quality Service', NULL, '2022-02-13 03:12:39'),
(11, 5, 1, 'Quality Service', NULL, '2022-02-13 03:13:57'),
(12, 5, 1, 'Service Gurantee', NULL, '2022-02-13 03:13:57'),
(13, 5, 1, 'Timely work', NULL, '2022-02-13 03:13:57'),
(14, 6, 1, 'Home Service', NULL, '2022-02-13 06:00:52'),
(15, 6, 1, 'Service Gurantee', NULL, '2022-02-13 06:00:52'),
(16, 6, 1, 'Quality Service', NULL, '2022-02-13 06:00:52'),
(17, 7, 1, 'Home Service', NULL, '2022-02-13 03:14:46'),
(18, 7, 1, 'Service Gurantee', NULL, '2022-02-13 03:14:46'),
(19, 7, 1, 'Work In Time', NULL, '2022-02-13 03:14:47'),
(20, 8, 2, 'Ouality Service', NULL, '2022-02-13 03:33:22'),
(21, 8, 2, 'Service Guaranty', NULL, '2022-02-13 03:33:22'),
(22, 8, 2, 'Service in Home', NULL, '2022-02-13 03:33:23'),
(23, 1, 1, 'Friendly Service Provider', NULL, '2022-06-02 16:18:43'),
(24, 1, 1, 'customizable', NULL, '2022-06-02 16:18:43'),
(25, 9, 2, 'Service Guaranty', NULL, '2022-02-13 03:35:56'),
(26, 9, 2, 'Quality Service', NULL, '2022-02-13 03:35:56'),
(27, 9, 2, 'Coffee Offer', NULL, '2022-02-13 03:35:56'),
(31, 12, 2, 'Service Guaranty', NULL, '2022-02-13 04:00:10'),
(32, 13, 2, 'Service Guaranty', NULL, '2022-02-13 03:40:47'),
(33, 13, 2, 'Quality Service', NULL, '2022-02-13 03:40:47'),
(34, 13, 2, 'Timely Work', NULL, '2022-02-13 03:40:47'),
(35, 14, 2, 'Service Guaranty', NULL, '2022-02-13 03:42:58'),
(36, 14, 2, 'Quality Service', NULL, '2022-02-13 03:42:58'),
(37, 14, 2, 'Timely Work', NULL, '2022-02-13 03:42:58'),
(38, 15, 2, 'Service Guaranty', NULL, '2022-02-13 03:43:28'),
(39, 15, 2, 'Quality Service', NULL, '2022-02-13 03:43:28'),
(40, 15, 2, 'Timely Work', NULL, '2022-02-13 03:43:28'),
(41, 16, 1, 'Service Gurantee', NULL, '2022-02-13 03:15:51'),
(42, 16, 1, 'Timely Work', NULL, '2022-02-13 03:15:51'),
(43, 16, 1, 'Quality Service', NULL, '2022-02-13 03:15:51'),
(44, 12, 2, 'Quality Service', NULL, '2022-02-13 04:00:10'),
(45, 12, 2, 'Timely Work', NULL, '2022-02-13 04:00:10'),
(46, 17, 5, 'Quality Service', NULL, '2022-02-13 03:45:24'),
(47, 17, 5, 'Service Gurantee', NULL, '2022-02-13 03:45:24'),
(48, 17, 5, 'Schedule Maintain', NULL, '2022-02-13 03:45:24'),
(49, 18, 5, 'Quality Service', NULL, '2022-02-13 03:58:02'),
(50, 18, 5, 'Service Gurantee', NULL, '2022-02-13 03:58:02'),
(51, 18, 5, 'Home Service Available', NULL, '2022-02-13 03:58:02'),
(52, 19, 5, 'Quality Service', NULL, '2022-02-13 03:47:17'),
(53, 19, 5, 'Service Gurantee', NULL, '2022-02-13 03:47:18'),
(54, 19, 5, 'Professional Service', NULL, '2022-02-13 03:47:18'),
(55, 19, 5, 'Home Service', NULL, '2022-02-13 03:47:18'),
(56, 20, 5, 'High Quality Products', NULL, '2022-02-13 03:48:46'),
(57, 20, 5, 'Quality Service', NULL, '2022-02-13 03:48:46'),
(58, 20, 5, 'Home Service Available', NULL, '2022-02-13 03:48:46'),
(76, 36, 1, 'Service Gurantee', NULL, '2022-02-13 03:29:25'),
(86, 36, 1, 'Quality Service', NULL, '2022-02-13 03:29:25'),
(87, 36, 1, 'Timely Work', NULL, '2022-02-13 03:29:25'),
(92, 41, 1, 'Timely work', NULL, '2022-04-28 03:06:56'),
(93, 41, 1, 'Professional work', NULL, '2022-04-28 03:06:56'),
(103, 49, 1, 'wqeqwe qw eqw', NULL, NULL),
(104, 49, 1, 'werwe wer', NULL, NULL),
(105, 56, 1, 'get servie at low cost', NULL, '2022-09-09 21:13:54'),
(106, 56, 1, 'service your needs', NULL, '2022-09-09 21:13:54'),
(107, 56, 1, 'revisions opportunity', NULL, '2022-09-09 21:13:54'),
(108, 53, 1, 'Timely Worked', NULL, '2022-04-28 03:02:09'),
(109, 53, 1, 'Professional Work', NULL, '2022-04-28 03:02:09'),
(110, 53, 1, 'Work Gurenty', NULL, '2022-04-28 03:02:09'),
(111, 50, 1, 'Timely Work', NULL, '2022-04-28 03:03:07'),
(112, 50, 1, 'Professional work', NULL, '2022-04-28 03:03:07'),
(113, 50, 1, 'Task gurentee', NULL, '2022-04-28 03:03:07'),
(114, 50, 1, 'Profitable work get', NULL, '2022-04-28 03:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `serviceincludes`
--

CREATE TABLE `serviceincludes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(11) DEFAULT NULL,
  `seller_id` bigint(11) DEFAULT NULL,
  `include_service_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `include_service_price` double NOT NULL,
  `include_service_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serviceincludes`
--

INSERT INTO `serviceincludes` (`id`, `service_id`, `seller_id`, `include_service_title`, `include_service_price`, `include_service_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '3 Bed Room', 30, 1, NULL, '2022-06-02 16:18:43'),
(2, 1, 1, '2 Bath Room', 20, 1, NULL, '2022-06-02 16:18:43'),
(3, 2, 1, 'AC Change', 10, 1, NULL, '2022-02-13 03:07:52'),
(4, 2, 1, 'Ac Repair', 30, 1, NULL, '2022-02-13 03:07:52'),
(5, 3, 1, 'Beard Cutting By Machine', 5, 1, NULL, '2022-02-13 04:09:55'),
(6, 3, 1, 'Beard Shave', 5, 1, NULL, '2022-02-13 04:09:55'),
(7, 4, 1, '5 Seater Sofa', 5, 1, NULL, '2022-02-13 03:12:38'),
(8, 4, 1, '3 Seater Sofa', 4, 1, NULL, '2022-02-13 03:12:38'),
(9, 5, 1, 'Table Cleaning', 3.4, 1, NULL, '2022-02-13 03:13:57'),
(10, 5, 1, 'Floor Cleaning (1)', 20, 1, NULL, '2022-02-13 03:13:57'),
(11, 6, 1, 'One Ton AC', 10, 1, NULL, '2022-02-13 06:00:52'),
(12, 6, 1, 'Two Ton AC', 15, 1, NULL, '2022-02-13 06:00:52'),
(13, 7, 1, 'Wall Painting 12x12', 100, 1, NULL, '2022-02-13 03:14:46'),
(14, 8, 2, 'Full Body Massage', 10, 1, NULL, '2022-02-13 03:33:22'),
(15, 8, 2, 'Partial Body Massage', 5, 1, NULL, '2022-02-13 03:33:22'),
(16, 1, 1, '2 Child Room', 50, 1, NULL, '2022-06-02 16:18:43'),
(17, 1, 1, '2 Guest Room', 41, 1, NULL, '2022-06-02 16:18:43'),
(18, 9, 2, 'Hair Cutting Boys', 5, 1, NULL, '2022-02-13 03:35:56'),
(19, 9, 2, 'Hair Cutting Girls', 5, 1, NULL, '2022-02-13 03:35:56'),
(26, 12, 2, 'Car Wash', 10, 1, NULL, '2022-02-13 04:00:09'),
(27, 13, 2, '2 Seater Sofa', 15, 1, NULL, '2022-02-13 03:40:46'),
(28, 13, 2, '3 Seater Sofa', 17, 1, NULL, '2022-02-13 03:40:47'),
(29, 13, 2, '4 Seater Sofa', 18, 1, NULL, '2022-02-13 03:40:47'),
(30, 14, 2, 'Switch Change', 1, 1, NULL, '2022-02-13 03:42:58'),
(31, 14, 2, 'Selling Fan Repair', 5, 1, NULL, '2022-02-13 03:42:58'),
(32, 14, 2, 'Lighting', 1, 1, NULL, '2022-02-13 03:42:58'),
(33, 15, 2, 'Fridge', 5, 1, NULL, '2022-02-13 03:43:27'),
(34, 15, 2, 'TV', 5, 1, NULL, '2022-02-13 03:43:28'),
(35, 15, 2, 'Single Bed', 5, 1, NULL, '2022-02-13 03:43:28'),
(36, 15, 2, 'Double Bed', 6, 1, NULL, '2022-02-13 03:43:28'),
(37, 16, 1, 'Car Cleaning', 12, 1, NULL, '2022-02-13 03:15:51'),
(38, 16, 1, 'Car Washing', 5, 1, NULL, '2022-02-13 03:15:51'),
(39, 12, 2, 'Car inner Dry Wash', 20, 1, NULL, '2022-02-13 04:00:09'),
(40, 17, 5, 'Hair Cutting and Style', 10, 1, NULL, '2022-02-13 03:45:24'),
(41, 17, 5, 'Dry Wash', 5, 1, NULL, '2022-02-13 03:45:24'),
(42, 18, 5, 'LCD/LED TV Repair Services', 10, 1, NULL, '2022-02-13 03:58:01'),
(43, 18, 5, 'TV Wall Mount Installation', 10, 1, NULL, '2022-02-13 03:58:01'),
(44, 19, 5, '10 Switch Repair', 10, 1, NULL, '2022-02-13 03:47:17'),
(45, 19, 5, '3 Switch Board Repair', 15, 1, NULL, '2022-02-13 03:47:17'),
(46, 20, 5, 'Weeding soft  layer makeup', 100, 1, NULL, '2022-02-13 03:48:45'),
(47, 20, 5, 'Hair Bonding', 10, 1, NULL, '2022-02-13 03:48:46'),
(48, 18, 5, 'TV Full Service', 34, 1, NULL, '2022-02-13 03:58:01'),
(65, 36, 1, 'Room Cleaning 15 sf', 15, 1, NULL, '2022-02-13 03:29:25'),
(73, 36, 1, 'Roof Clean', 20, 1, NULL, '2022-02-13 03:29:25'),
(79, 41, 1, 'Branding your company', 0, 0, NULL, '2022-04-28 03:06:56'),
(80, 41, 1, 'Key scereet of success', 0, 0, NULL, '2022-04-28 03:06:56'),
(81, 41, 1, 'Business plans', 0, 0, NULL, '2022-04-28 03:06:56'),
(93, 49, 1, 'test', 0, 0, NULL, NULL),
(94, 49, 1, 'test2', 0, 0, NULL, NULL),
(95, 49, 1, 'test3', 0, 0, NULL, NULL),
(96, 56, 1, 'Get Quality Service', 0, 0, NULL, '2022-09-09 21:13:54'),
(97, 56, 1, 'Highly Professional Service', 0, 0, NULL, '2022-09-09 21:13:54'),
(98, 56, 1, 'Service Gurentee', 0, 0, NULL, '2022-09-09 21:13:54'),
(99, 56, 1, 'Get Minimum Profit', 0, 0, NULL, '2022-09-09 21:13:54'),
(100, 53, 1, 'Digital Merketing', 0, 0, NULL, '2022-04-28 03:02:09'),
(101, 53, 1, 'Company Profile Build', 0, 0, NULL, '2022-04-28 03:02:09'),
(102, 53, 1, 'Business Growing', 0, 0, NULL, '2022-04-28 03:02:09'),
(103, 53, 1, 'How to Profit', 0, 0, NULL, '2022-04-28 03:02:09'),
(104, 50, 1, 'Business Module Build', 0, 0, NULL, '2022-04-28 03:03:07'),
(105, 50, 1, 'Reach Your Customer', 0, 0, NULL, '2022-04-28 03:03:07'),
(106, 50, 1, 'Branding Your Business', 0, 0, NULL, '2022-04-28 03:03:07'),
(107, 50, 1, 'Get Business Logic', 0, 0, NULL, '2022-04-28 03:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(11) DEFAULT NULL,
  `subcategory_id` bigint(11) DEFAULT NULL,
  `child_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seller_id` bigint(11) DEFAULT NULL,
  `service_city_id` bigint(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_gallery` text COLLATE utf8mb4_unicode_ci,
  `video` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL,
  `is_service_on` tinyint(4) NOT NULL DEFAULT '1',
  `price` double NOT NULL DEFAULT '0',
  `online_service_price` double NOT NULL DEFAULT '0',
  `delivery_days` bigint(20) NOT NULL DEFAULT '0',
  `revision` bigint(20) NOT NULL DEFAULT '0',
  `is_service_online` tinyint(4) NOT NULL DEFAULT '0',
  `is_service_all_cities` tinyint(4) NOT NULL DEFAULT '0',
  `tax` double DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `sold_count` bigint(20) NOT NULL DEFAULT '0',
  `featured` tinyint(4) DEFAULT '0',
  `admin_id` int(11) DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `category_id`, `subcategory_id`, `child_category_id`, `seller_id`, `service_city_id`, `title`, `slug`, `description`, `image`, `image_gallery`, `video`, `status`, `is_service_on`, `price`, `online_service_price`, `delivery_days`, `revision`, `is_service_online`, `is_service_all_cities`, `tax`, `view`, `sold_count`, `featured`, `admin_id`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, NULL, 1, 1, 'Painting & Renovation Service From Us At Affordable Price', 'painting-&-renovation-service-from-us-at-affordable-price', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.</p><p><br></p><p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.</span></p><p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.</span><span style=\"color: rgb(0, 0, 0);\"><br></span><br></p>', '79', '179|178', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Uc5i1AKaSTs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 1, 141, 0, 0, 0, 0, 0, 7, 3305, 342, 1, NULL, NULL, '2022-01-22 03:34:30', '2023-01-01 17:37:41'),
(2, 1, 3, NULL, 1, 1, 'AC Repair Service By Expert AC Repair Machenic', 'ac-repair-service-by-expert-ac-repair-machenic', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '80', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Uc5i1AKaSTs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 1, 40, 0, 0, 0, 0, 0, 5, 3280, 117, NULL, NULL, NULL, '2021-12-07 04:19:58', '2023-01-01 14:11:51'),
(3, 5, 10, NULL, 1, 1, 'Get Beard Shaving Service At Low Price', 'get-beard-shaving-service-at-low-price', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '81', NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Uc5i1AKaSTs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 1, 10, 0, 0, 0, 0, 0, 6, 1290, 106, NULL, NULL, NULL, '2021-12-07 06:11:11', '2023-01-01 16:52:57'),
(4, 3, 2, NULL, 1, 1, 'Moving Service From One Place to Another', 'moving-service-from-one-place-to-another', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '85', NULL, NULL, 1, 1, 9, 0, 0, 0, 0, 0, 10, 2145, 116, 1, NULL, NULL, '2021-12-07 06:17:46', '2023-01-01 17:38:14'),
(5, 2, 11, NULL, 1, 1, 'Cleaning & Renovation Service By Our Expert Cleaner', 'cleaning-renovation-service-by-our-expert-cleaner', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '86', NULL, NULL, 1, 1, 23.4, 0, 0, 0, 0, 0, 10, 2966, 160, 1, NULL, NULL, '2021-12-07 06:22:44', '2023-01-01 18:38:15'),
(6, 1, 3, NULL, 1, 1, 'AC Cleaning Service ! Get ASAP And Take The Best Benifits', 'ac-cleaning-service-get-asap-and-take-the-best-benifits', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '87', NULL, NULL, 1, 1, 25, 0, 0, 0, 0, 0, 5, 2185, 128, 1, NULL, NULL, '2021-12-07 06:30:16', '2023-01-01 17:38:21'),
(7, 4, NULL, NULL, 1, 1, 'Our Cool Painting Service Only For You', 'our-cool-painting-service-only-for-you', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '88', NULL, NULL, 1, 1, 100, 0, 0, 0, 0, 0, 10, 808, 41, NULL, NULL, NULL, '2021-12-07 06:35:13', '2023-01-01 17:37:49'),
(8, 5, 7, NULL, 2, 1, 'Now Get Massage Service From Mr Mahmud', 'now-get-massage-service-from-mr-mahmud', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '89', NULL, NULL, 1, 1, 15, 0, 0, 0, 0, 0, 10, 730, 27, 0, NULL, NULL, '2021-12-08 00:59:37', '2023-01-01 17:59:58'),
(9, 5, 7, NULL, 2, 1, 'Hair Cutting Service At Reasonable Price', 'hair-cutting-service-at-reasonable-price', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '90', NULL, NULL, 1, 1, 10, 0, 0, 0, 0, 0, 2, 593, 23, NULL, NULL, NULL, '2021-12-09 04:05:07', '2023-01-01 17:37:58'),
(12, 2, 9, NULL, 2, 1, 'Car Cleaning Service From Best Cleaner', 'car-cleaning-service-from-best-cleaner', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '91', NULL, NULL, 1, 1, 30, 0, 0, 0, 0, 0, 3, 1724, 110, 1, NULL, NULL, '2021-12-12 23:06:51', '2023-01-01 17:37:48'),
(13, 2, NULL, NULL, 2, 3, 'Get Furniture Cleaning Service At Reasonable Price', 'get-furniture-cleaning-service-at-reasonable-price', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '92', NULL, NULL, 1, 1, 50, 0, 0, 0, 0, 0, 7.5, 531, 11, 0, NULL, NULL, '2022-01-18 01:05:46', '2023-01-01 13:33:21'),
(14, 1, 8, NULL, 2, 3, 'Get Our Electrice Service For Home and Office', 'get-our-electrice-service-for-home-and-office', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '94', NULL, NULL, 1, 1, 7, 0, 0, 0, 0, 0, 5, 388, 32, NULL, NULL, NULL, '2022-02-01 00:16:55', '2023-01-01 06:38:46'),
(15, 3, 2, NULL, 2, 3, 'Home Move Service From One City to Another City', 'home-move-service-from-one-city-to-another-city', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '95', NULL, NULL, 1, 1, 21, 0, 0, 0, 0, 0, 7, 1571, 57, 1, NULL, NULL, '2022-02-01 01:24:40', '2023-01-01 16:52:47'),
(16, 2, 9, NULL, 1, 1, 'Car Washing And Cleaning Service At Home or Office', 'car-washing-and-cleaning-service-at-home-or-office', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '96', NULL, NULL, 1, 1, 17, 0, 0, 0, 0, 0, 5, 757, 88, 0, NULL, NULL, '2022-02-01 01:40:52', '2023-01-01 16:53:16'),
(17, 5, 10, NULL, 4, 1, 'Do Stylish Hair Style From Our Experts', 'do-stylish-hair-style-from-our-experts', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '98', NULL, NULL, 1, 1, 15, 0, 0, 0, 0, 0, 8, 264, 31, NULL, NULL, NULL, '2022-02-01 04:00:20', '2022-12-31 00:57:25'),
(18, 1, 8, NULL, 4, 1, 'Get Our TV Repair Service At Reasonable Price', 'get-our-tv-repair-service-at-reasonable-price', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '99', NULL, NULL, 1, 1, 54, 0, 0, 0, 0, 0, 6, 1097, 58, 1, NULL, NULL, '2022-02-01 04:11:01', '2023-01-01 13:47:20'),
(19, 1, 8, NULL, 4, 1, 'Switch and Board Repair Service at Low Price', 'switch-and-board-repair-service-at-low-price', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '100', NULL, NULL, 1, 1, 25, 0, 0, 0, 0, 0, 7, 564, 95, NULL, NULL, NULL, '2022-02-01 04:20:10', '2023-01-01 17:34:51'),
(20, 5, 12, NULL, 4, 1, 'Women Beauty Care Service with Expert Beautisian', 'women-beauty-care-service-with-expert-beautisian', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '102', NULL, NULL, 1, 1, 110, 0, 0, 0, 0, 0, 7, 1224, 77, 1, NULL, NULL, '2022-02-01 04:30:11', '2023-01-01 17:38:17'),
(36, 2, 11, NULL, 1, 1, 'Cleaning Your Old House From Our Expert Cleaner Team at Low Cost', 'cleaning-your-old-house-from-our-expert-cleaner-team-at-low-cost', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.</p><p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.</span><br></p>', '130', NULL, NULL, 1, 1, 35, 0, 0, 0, 0, 0, 6.6, 964, 33, 0, NULL, NULL, '2022-02-12 00:40:56', '2023-01-01 10:59:36'),
(41, 7, 13, NULL, 1, 1, 'Branding your company with us at reasonable price.', 'branding-your-company-with-us-at-reasonable-price-', 'I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.<br><br>Top Cat! The most effectual Top Cat! Who’s intellectual close friends get to call him T.C., providing it’s with dignity. Top Cat! The indisputable leader of the gang. He’s the boss, he’s a pip, he’s the championship. He’s the most tip top, Top Cat.<br><br>Ulysses, Ulysses — Soaring through all the galaxies. In search of Earth, flying in to the night. Ulysses, Ulysses — Fighting evil and tyranny, with all his power, and with all of his might. Ulysses — no-one else can do the things you do. Ulysses — like a bolt of thunder from the blue. Ulysses — always fighting all the evil forces bringing peace and justice to all.<br><br>This is my boss, Jonathan Hart, a self-made millionaire, he’s quite a guy. This is Mrs H., she’s gorgeous, she’s one lady who knows how to take care of herself. By the way, my name is Max. I take care of both of them, which ain’t easy, ’cause when they met it was MURDER!<br><br>Children of the sun, see your time has just begun, searching for your ways, through adventures every day. Every day and night, with the condor in flight, with all your friends in tow, you search for the Cities of Gold. Ah-ah-ah-ah-ah… wishing for The Cities of Gold. Ah-ah-ah-ah-ah… some day we will find The Cities of Gold. Do-do-do-do ah-ah-ah, do-do-do-do, Cities of Gold. Do-do-do-do, Cities of Gold. Ah-ah-ah-ah-ah… some day we will find The Cities of Gold. <br>', '183', NULL, NULL, 1, 1, 120, 120, 10, 10, 1, 0, 10, 960, 80, 0, NULL, NULL, '2022-04-24 04:12:18', '2023-01-01 17:37:48'),
(49, 7, 13, NULL, 1, 1, 'Build your Profile in  twitter with us', 'build-your-profile-in--twitter-with-us', '<p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\">It\r\n is a long established fact that a reader will be distracted by the \r\nreadable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less.</span></p><p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\">It\r\n is a long established fact that a reader will be distracted by the \r\nreadable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less.</span></p><p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\"><br></span></p><p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\">It\r\n is a long established fact that a reader will be distracted by the \r\nreadable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less.</span></p><p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\">It\r\n is a long established fact that a reader will be distracted by the \r\nreadable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less.</span></p><p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\"></span></p><p></p>', '186', '181|180|179', 'https://youtu.be/Uc5i1AKaSTs', 1, 1, 144, 0, 10, 10, 1, 0, 10, 620, 29, 0, NULL, NULL, '2022-04-27 02:57:48', '2023-01-01 17:38:04'),
(50, 7, 13, NULL, 1, 1, 'Grow your business at low cost from us.', 'grow-your-business-at-low-cost-from-us-', '<p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\">It\r\n is a long established fact that a reader will be distracted by the \r\nreadable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less.</span></p><p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\">It\r\n is a long established fact that a reader will be distracted by the \r\nreadable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less.</span></p><p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\"><br></span></p><p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\">It\r\n is a long established fact that a reader will be distracted by the \r\nreadable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less.</span></p><p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\">It\r\n is a long established fact that a reader will be distracted by the \r\nreadable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less.</span></p><p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\"></span></p>', '185', NULL, NULL, 1, 1, 150, 0, 5, 3, 1, 0, 10, 667, 48, 0, NULL, NULL, '2022-04-28 07:57:51', '2023-01-01 10:31:04'),
(53, 7, 13, NULL, 1, 1, 'Be first to take our online services.', 'sdasdjahgha-ashdasjhda-asdahsdasd', '<p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\">It\r\n is a long established fact that a reader will be distracted by the \r\nreadable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less.</span></p><p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\">It\r\n is a long established fact that a reader will be distracted by the \r\nreadable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less.</span></p><p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><br style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased;\"></p><p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.</span></p><p style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; color: rgb(153, 153, 153); hyphens: auto; line-height: 24px; font-size: 14px; font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.</span></p><p></p>', '184', NULL, NULL, 1, 1, 140, 0, 10, 7, 1, 0, 0, 1241, 119, 0, NULL, NULL, '2022-04-28 08:31:38', '2023-01-01 09:35:52'),
(56, 7, 13, NULL, 1, 1, 'Are you looking some who able to rich you business', 'are-you-looking-some-who-able-to-rich-you-business', '<p><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.</span><br style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><br style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Top Cat! The most effectual Top Cat! Who’s intellectual close friends get to call him T.C., providing it’s with dignity. Top Cat! The indisputable leader of the gang. He’s the boss, he’s a pip, he’s the championship. He’s the most tip top, Top Cat.</span><br style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><br style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Ulysses, Ulysses — Soaring through all the galaxies. In search of Earth, flying in to the night. Ulysses, Ulysses — Fighting evil and tyranny, with all his power, and with all of his might. Ulysses — no-one else can do the things you do. Ulysses — like a bolt of thunder from the blue. Ulysses — always fighting all the evil forces bringing peace and justice to all.</span><br style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><br style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">This is my boss, Jonathan Hart, a self-made millionaire, he’s quite a guy. This is Mrs H., she’s gorgeous, she’s one lady who knows how to take care of herself. By the way, my name is Max. I take care of both of them, which ain’t easy, ’cause when they met it was MURDER!</span><br style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><br style=\"box-sizing: border-box; outline: none; -webkit-font-smoothing: antialiased; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Children of the sun, see your time has just begun, searching for your ways, through adventures every day. Every day and night, with the condor in flight, with all your friends in tow, you search for the Cities of Gold. Ah-ah-ah-ah-ah… wishing for The Cities of Gold. Ah-ah-ah-ah-ah… some day we will find The Cities of Gold. Do-do-do-do ah-ah-ah, do-do-do-do, Cities of Gold. Do-do-do-do, Cities of Gold. Ah-ah-ah-ah-ah… some day we will find The Cities of Gold.</span></p>', '187', '186|180|179|178', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/QC8iQqtG0hg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1, 1, 50, 0, 5, 6, 1, 0, 0, 1434, 608, 0, NULL, NULL, '2022-04-28 08:47:42', '2023-01-01 17:38:10'),
(62, 2, 9, NULL, 4, 1, 'wsd df sdf sdf sdf sd', 'wsd-df-sdf-sdf-sdf-sd', '<p>sd fsdf sdfsdf sdf sdf sdfsdfsdfsd fsdf sdfsd fwerwewewe wewerwe wer werwe we wewe wewe&nbsp; sd fsdf sdfsdf sdf sdf sdfsdfsdfsd fsdf sdfsd fwerwewewe wewerwe wer werwe we wewe wewe sd fsdf sdfsdf sdf sdf sdfsdfsdfsd fsdf sdfsd fwerwewewe wewerwe wer werwe we wewe wewe sd fsdf sdfsdf sdf sdf sdfsdfsdfsd fsdf sdfsd fwerwewewe wewerwe wer werwe we wewe wewe&nbsp;</p>', '296', NULL, 'sdf sdf sdew we w', 1, 1, 0, 0, 0, 0, 0, 0, 7, 11, 1, 0, 22, 'admin', '2022-11-14 03:03:13', '2023-01-01 17:34:47');

-- --------------------------------------------------------

--
-- Table structure for table `service_areas`
--

CREATE TABLE `service_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_city_id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_areas`
--

INSERT INTO `service_areas` (`id`, `service_area`, `service_city_id`, `country_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhanmondi', 1, 1, 1, '2021-12-05 03:59:13', '2021-12-07 00:11:54'),
(2, 'FarmGate New', 1, 1, 1, '2021-12-05 04:15:40', '2021-12-11 00:36:10'),
(6, 'Southdarm', 3, 3, 1, '2021-12-05 05:47:12', '2021-12-07 00:11:05'),
(7, 'Wales & Seea', 2, 2, 1, '2021-12-07 00:28:08', '2021-12-07 00:28:08'),
(8, 'Jenerio Street', 2, 2, 1, '2022-02-16 10:18:24', '2022-02-16 10:18:24'),
(9, 'Floda Kings', 2, 2, 1, '2022-02-16 10:18:51', '2022-02-16 10:18:51'),
(10, 'DC Town', 3, 3, 1, '2022-02-16 10:19:12', '2022-02-16 10:19:12'),
(11, 'Anthenio Caderis', 3, 3, 1, '2022-02-16 10:19:42', '2022-02-16 10:19:42'),
(12, 'Mirpur', 1, 1, 1, '2022-02-16 10:20:02', '2022-02-16 10:20:02'),
(13, 'Kazi Para', 1, 1, 1, '2022-02-16 10:20:38', '2022-02-16 10:20:38'),
(14, 'Mosi Mosi', 9, 4, 1, '2022-02-16 10:22:43', '2022-02-16 10:22:43'),
(15, 'Nemeosmo Street', 9, 4, 1, '2022-02-16 10:23:10', '2022-02-16 10:23:10'),
(16, 'Alderio 44/2 North', 9, 4, 1, '2022-02-16 10:23:48', '2022-02-16 10:23:48'),
(17, 'Kings Star 55 Road', 8, 5, 1, '2022-02-16 10:24:58', '2022-02-16 10:24:58'),
(18, 'New Ketlin Park', 8, 5, 1, '2022-02-16 10:25:25', '2022-02-16 10:25:25'),
(19, 'West Dumpin', 8, 5, 1, '2022-02-16 10:26:01', '2022-02-16 10:26:01'),
(20, 'Serinjith Road', 7, 6, 1, '2022-02-16 10:26:42', '2022-02-16 10:26:42'),
(21, 'Super Shop  Town Road', 7, 6, 1, '2022-02-16 10:27:25', '2022-02-16 10:27:25'),
(22, 'Belochi', 7, 6, 1, '2022-02-16 10:27:36', '2022-02-16 10:27:36'),
(23, 'Lerio De Beeks 69', 12, 7, 1, '2022-02-16 10:28:24', '2022-02-16 10:28:24'),
(24, 'Serjio Lipo Eskaton', 12, 7, 1, '2022-02-16 10:29:02', '2022-02-16 10:29:02'),
(25, 'Kaka Del Road', 12, 7, 1, '2022-02-16 10:29:45', '2022-02-16 10:29:45'),
(26, 'Kandy House', 11, 8, 1, '2022-02-16 10:30:22', '2022-02-16 10:30:22'),
(27, 'National Park 44/3', 11, 8, 1, '2022-02-16 10:30:45', '2022-02-16 10:30:45'),
(28, 'New Street Jersy', 11, 8, 1, '2022-02-16 10:31:08', '2022-02-16 10:31:08'),
(29, 'Dilkotech  Area', 10, 9, 1, '2022-02-16 10:31:43', '2022-02-16 10:31:43'),
(30, 'Jela Sultanpur', 10, 9, 1, '2022-02-16 10:33:22', '2022-02-16 10:33:22'),
(31, 'Karinabath', 10, 9, 1, '2022-02-16 10:33:44', '2022-02-16 10:33:44'),
(32, 'Mohammadpur', 1, 1, 1, '2022-02-16 10:35:07', '2022-02-16 10:35:07'),
(33, 'Sheowrapara', 1, 1, 1, '2022-02-16 10:35:40', '2022-02-16 10:35:40'),
(34, 'Andheri East', 15, 6, 1, '2022-02-27 02:51:47', '2022-02-27 02:51:47'),
(35, 'Andheri West', 15, 6, 1, '2022-02-27 02:52:14', '2022-02-27 02:52:14'),
(36, 'Band Stand', 15, 6, 1, '2022-02-27 02:53:25', '2022-02-27 02:53:25'),
(37, 'Agrabad', 14, 1, 1, '2022-02-27 02:54:14', '2022-02-27 02:54:14'),
(38, 'Pahartoli', 14, 1, 1, '2022-02-27 02:54:37', '2022-02-27 02:54:37'),
(39, 'Olongkar', 14, 1, 1, '2022-02-27 02:55:21', '2022-02-27 02:55:21'),
(40, 'Chaina Town', 16, 2, 1, '2022-02-27 02:57:25', '2022-02-27 02:57:25'),
(41, 'Penn Quarter', 16, 2, 1, '2022-02-27 02:58:01', '2022-02-27 02:58:01'),
(42, 'Moston', 17, 3, 1, '2022-02-27 03:00:01', '2022-02-27 03:00:01'),
(43, 'Gorton', 17, 3, 1, '2022-02-27 03:00:24', '2022-02-27 03:00:24'),
(44, 'Eastern Beaches', 18, 5, 1, '2022-02-27 03:08:44', '2022-02-27 03:08:44'),
(45, 'Randwick', 18, 5, 1, '2022-02-27 03:09:32', '2022-02-27 03:09:32'),
(46, 'Pendik', 19, 10, 1, '2022-02-27 03:11:02', '2022-02-27 03:11:02'),
(47, 'Umraniya', 19, 10, 1, '2022-02-27 03:11:16', '2022-02-27 03:11:16'),
(48, 'Uskudar', 19, 10, 1, '2022-02-27 03:12:28', '2022-02-27 03:12:28'),
(49, 'Afsar', 20, 10, 1, '2022-02-27 03:14:17', '2022-02-27 03:14:17'),
(50, 'Ayas', 20, 10, 1, '2022-02-27 03:14:42', '2022-02-27 03:14:42'),
(51, 'Elbatho North', 20, 10, 1, '2022-02-27 03:15:17', '2022-02-27 03:15:17'),
(52, 'City Center', 21, 10, 1, '2022-02-27 03:16:31', '2022-02-27 03:16:31'),
(53, 'Edirne', 21, 10, 1, '2022-02-27 03:17:14', '2022-02-27 03:17:14'),
(54, 'Konya', 20, 10, 1, '2022-02-27 03:17:38', '2022-02-27 03:17:38'),
(55, 'Berjio Leren', 22, 11, 1, '2022-02-27 03:19:25', '2022-02-27 03:19:25'),
(56, 'City West 39', 22, 11, 1, '2022-02-27 03:19:53', '2022-02-27 03:19:53'),
(57, 'Neuenhagen', 23, 11, 1, '2022-02-27 03:22:07', '2022-02-27 03:22:07'),
(58, 'Floda Kings', 23, 11, 1, '2022-02-27 03:25:58', '2022-02-27 03:25:58'),
(59, 'Kazi Para', 23, 11, 1, '2022-02-27 03:26:33', '2022-02-27 03:26:33'),
(60, 'Bavaria', 24, 11, 1, '2022-02-27 03:31:01', '2022-02-27 03:31:01'),
(61, 'Anthenio Caderis', 24, 11, 1, '2022-02-27 03:31:21', '2022-02-27 03:31:21'),
(62, 'City North', 25, 12, 1, '2022-02-27 03:33:43', '2022-02-27 03:33:43'),
(63, 'Partholi Sana', 25, 12, 1, '2022-02-27 03:34:14', '2022-02-27 03:34:14'),
(64, 'Paris Square', 25, 12, 1, '2022-02-27 03:34:38', '2022-02-27 03:34:38'),
(65, 'Lyon East', 26, 12, 1, '2022-02-27 03:35:43', '2022-02-27 03:35:43'),
(66, 'Jenerio Street', 26, 12, 1, '2022-02-27 03:36:06', '2022-02-27 03:36:06'),
(67, 'Auvergne', 27, 12, 1, '2022-02-27 03:36:50', '2022-02-27 03:36:50'),
(68, 'Languedoc', 27, 12, 1, '2022-02-27 03:37:22', '2022-02-27 03:37:22'),
(69, 'Brittany', 27, 12, 1, '2022-02-27 03:37:46', '2022-02-27 03:37:46'),
(70, 'Begoma', 28, 13, 1, '2022-02-27 03:38:19', '2022-02-27 03:38:19'),
(71, 'Corso Del Popolu', 28, 13, 1, '2022-02-27 03:38:58', '2022-02-27 03:38:58'),
(72, 'Anthenio Caderis', 28, 13, 1, '2022-02-27 03:39:13', '2022-02-27 03:39:13'),
(73, 'Palermo', 29, 13, 1, '2022-02-27 03:39:36', '2022-02-27 03:39:36'),
(74, 'Kelaro Do  Penki', 29, 13, 1, '2022-02-27 03:40:11', '2022-02-27 03:40:11'),
(75, 'Florance', 30, 13, 1, '2022-02-27 03:40:35', '2022-02-27 03:40:35'),
(76, 'Grandhe', 30, 13, 1, '2022-02-27 03:40:53', '2022-02-27 03:40:53'),
(77, 'Kiambu', 31, 14, 1, '2022-02-27 03:42:25', '2022-02-27 03:42:25'),
(78, 'Kasarani', 31, 14, 1, '2022-02-27 03:43:06', '2022-02-27 03:43:06'),
(79, 'Kabete', 31, 14, 1, '2022-02-27 03:43:43', '2022-02-27 03:43:43'),
(80, 'Kisanu', 32, 14, 1, '2022-02-27 03:48:03', '2022-02-27 03:48:03'),
(81, 'Nyali', 32, 14, 1, '2022-02-27 03:48:30', '2022-02-27 03:48:30'),
(82, 'Likoni', 32, 14, 1, '2022-02-27 03:49:22', '2022-02-27 03:49:22'),
(83, 'Wilson', 33, 14, 1, '2022-02-27 03:51:16', '2022-02-27 03:51:16'),
(84, 'Aerodrome', 33, 14, 1, '2022-02-27 03:51:53', '2022-02-27 03:51:53'),
(85, 'Zayed City', 34, 15, 1, '2022-02-27 03:58:17', '2022-02-27 03:58:17'),
(86, 'Al Danah', 34, 15, 1, '2022-02-27 03:58:42', '2022-02-27 03:58:42'),
(87, 'Sheikha Fatima Park', 34, 15, 1, '2022-02-27 04:00:27', '2022-02-27 04:00:27'),
(88, 'Abu Dhabi Mall', 34, 15, 1, '2022-02-27 04:01:56', '2022-02-27 04:01:56'),
(89, 'Al Qasba', 35, 15, 1, '2022-02-27 04:03:19', '2022-02-27 04:03:19'),
(90, 'Blue Souk', 35, 15, 1, '2022-02-27 04:03:38', '2022-02-27 04:03:38'),
(91, 'Sharjah Aquarium', 35, 15, 1, '2022-02-27 04:04:10', '2022-02-27 04:04:10'),
(92, 'Global Village Dubai', 36, 15, 1, '2022-02-27 04:06:58', '2022-02-27 04:06:58'),
(93, 'Palm Jumeirah', 36, 15, 1, '2022-02-27 04:08:10', '2022-02-27 04:08:10'),
(94, 'Dubai Marina', 36, 15, 1, '2022-02-27 04:08:47', '2022-02-27 04:08:47'),
(95, 'Dhow Cruise', 36, 15, 1, '2022-02-27 04:09:33', '2022-02-27 04:09:33'),
(96, 'Ankara Castle', 20, 10, 1, '2022-02-27 04:11:24', '2022-02-27 04:11:24'),
(97, '   Panthapath', 3, 1, 1, '2022-10-24 07:31:19', '2022-10-24 07:31:19'),
(98, '   Dhanmondi', 3, 1, 1, '2022-10-24 07:31:19', '2022-10-24 07:31:19'),
(99, '   Kalabagan', 3, 1, 1, '2022-10-24 07:31:19', '2022-10-24 07:31:19'),
(100, '   Nilkhet', 3, 1, 1, '2022-10-24 07:31:19', '2022-10-24 07:31:19'),
(101, '   Panthapath', 11, 4, 1, '2022-10-24 07:34:20', '2022-10-24 07:34:20'),
(102, '   Dhanmondi', 11, 4, 1, '2022-10-24 07:34:21', '2022-10-24 07:34:21'),
(103, '   Kalabagan', 11, 4, 1, '2022-10-24 07:34:21', '2022-10-24 07:34:21'),
(104, '   Nilkhet', 11, 4, 1, '2022-10-24 07:34:21', '2022-10-24 07:34:21'),
(105, '   Panthapath', 30, 13, 1, '2022-10-24 07:57:13', '2022-10-24 07:57:13'),
(106, '   Dhanmondi', 30, 13, 1, '2022-10-24 07:57:13', '2022-10-24 07:57:13'),
(107, '   Kalabagan', 30, 13, 1, '2022-10-24 07:57:13', '2022-10-24 07:57:13'),
(108, '   Nilkhet', 30, 13, 1, '2022-10-24 07:57:13', '2022-10-24 07:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `service_cities`
--

CREATE TABLE `service_cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_cities`
--

INSERT INTO `service_cities` (`id`, `service_city`, `country_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, 1, '2021-12-05 01:13:48', '2022-02-27 00:35:40'),
(2, 'New York', 2, 1, '2021-12-05 01:16:07', '2022-02-27 00:35:34'),
(3, 'London', 3, 1, '2021-12-05 01:16:33', '2022-02-27 00:35:20'),
(7, 'Delhi', 6, 1, '2021-12-05 05:29:11', '2022-02-27 00:35:03'),
(8, 'Melbourne', 5, 1, '2022-02-16 10:12:47', '2022-02-27 00:34:54'),
(9, 'Tokyo', 4, 1, '2022-02-16 10:13:23', '2022-02-27 00:34:46'),
(10, 'Lahore', 9, 1, '2022-02-16 10:13:48', '2022-02-27 00:34:31'),
(11, 'Ottawa', 8, 1, '2022-02-16 10:14:25', '2022-02-27 00:34:23'),
(12, 'Rio de Janeiro', 7, 1, '2022-02-16 10:16:36', '2022-02-16 10:16:36'),
(14, 'Chittagong', 1, 1, '2022-02-27 00:36:12', '2022-02-27 00:36:12'),
(15, 'Mumbai', 6, 1, '2022-02-27 00:36:29', '2022-02-27 00:36:29'),
(16, 'Washington', 2, 1, '2022-02-27 00:36:43', '2022-02-27 00:36:43'),
(17, 'Manchester', 3, 1, '2022-02-27 00:37:00', '2022-02-27 00:37:00'),
(18, 'Sydney', 5, 1, '2022-02-27 00:37:23', '2022-02-27 03:04:15'),
(19, 'Istanbul', 10, 1, '2022-02-27 02:05:49', '2022-02-27 02:05:49'),
(20, 'Ankara', 10, 1, '2022-02-27 02:06:39', '2022-02-27 02:06:39'),
(21, 'Bursa', 10, 1, '2022-02-27 02:06:58', '2022-02-27 02:06:58'),
(22, 'Hamburg', 11, 1, '2022-02-27 02:07:33', '2022-02-27 02:07:33'),
(23, 'Berlin', 11, 1, '2022-02-27 02:07:44', '2022-02-27 02:07:44'),
(24, 'Munich', 11, 1, '2022-02-27 02:08:10', '2022-02-27 02:08:10'),
(25, 'Paris', 12, 1, '2022-02-27 02:08:22', '2022-02-27 02:08:22'),
(26, 'Lyon', 12, 1, '2022-02-27 02:08:48', '2022-02-27 02:08:48'),
(27, 'Toulouse', 12, 1, '2022-02-27 02:08:59', '2022-02-27 02:08:59'),
(28, 'Rome', 13, 1, '2022-02-27 02:09:28', '2022-02-27 02:09:28'),
(29, 'Venice', 13, 1, '2022-02-27 02:09:39', '2022-02-27 02:09:39'),
(30, 'Milan', 13, 1, '2022-02-27 02:09:52', '2022-02-27 02:09:52'),
(31, 'Nirobi', 14, 1, '2022-02-27 02:10:50', '2022-02-27 02:10:50'),
(32, 'Mombasa', 14, 1, '2022-02-27 02:11:10', '2022-02-27 02:11:10'),
(33, 'Kibera', 14, 1, '2022-02-27 02:11:27', '2022-02-27 02:11:27'),
(34, 'Abu Dhabi', 15, 1, '2022-02-27 02:12:12', '2022-02-27 02:12:12'),
(35, 'Sharjah', 15, 1, '2022-02-27 02:12:24', '2022-02-27 02:12:24'),
(36, 'Dubai', 15, 1, '2022-02-27 02:12:36', '2022-02-27 04:05:39'),
(47, '   Barisal', 1, 1, '2022-10-24 07:06:22', '2022-10-24 07:06:22'),
(48, '   Chittagong Road', 1, 1, '2022-10-24 07:06:22', '2022-10-24 07:06:22'),
(49, '   Bibaria', 1, 1, '2022-10-24 07:06:22', '2022-10-24 07:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `service_coupons`
--

CREATE TABLE `service_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double DEFAULT NULL,
  `discount_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=inactive 1=active',
  `seller_id` bigint(11) DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_coupons`
--

INSERT INTO `service_coupons` (`id`, `code`, `discount`, `discount_type`, `expire_date`, `status`, `seller_id`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'Home10', 10, 'percentage', '2022-10-19', 1, 1, NULL, '2022-01-17 05:11:14', '2022-06-02 15:59:18'),
(2, 'Coupon30', 30, 'amount', '2022-03-30', 1, 1, NULL, '2022-01-17 05:12:06', '2022-02-16 10:39:56'),
(4, 'Home15', 15, 'percentage', '2022-01-23', 0, 2, NULL, '2022-01-17 08:29:58', '2022-01-17 08:29:58'),
(6, 'test', 12, 'percentage', '2022-03-15', 0, 1, NULL, '2022-03-02 00:47:37', '2022-03-02 00:47:37'),
(7, 'Coupon11', 8, 'percentage', '2022-03-15', 0, 1, NULL, '2022-03-02 01:43:05', '2022-03-02 01:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `background_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `background_image`, `title`, `sub_title`, `service_id`, `created_at`, `updated_at`) VALUES
(1, '209', 'Get our Offers', 'Offers are available at affordable price', NULL, '2022-04-20 00:20:23', '2022-06-01 16:58:08'),
(2, '210', 'Get our Offers', 'Offers are available at affordable price', NULL, '2022-04-20 00:28:51', '2022-06-01 16:58:34'),
(3, '211', 'Get our Offers', 'Offers are available at affordable price', NULL, '2022-06-01 16:58:41', '2022-06-01 16:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_icons`
--

INSERT INTO `social_icons` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(1, 'lab la-facebook-f', '#', '2021-08-27 22:38:07', '2021-11-03 02:21:03'),
(2, 'lab la-instagram', '#', '2021-08-27 22:38:28', '2021-11-03 02:21:13'),
(3, 'lab la-twitter', '#', '2021-08-27 22:40:08', '2021-11-03 02:21:23'),
(4, 'lab la-linkedin-in', '#', '2021-08-27 22:40:22', '2021-11-03 02:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `static_options`
--

CREATE TABLE `static_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_options`
--

INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(210, 'extra-light-color', NULL, '2021-12-30 09:38:18', '2021-12-30 09:38:18'),
(367, 'home_page', '38', '2022-02-14 09:27:14', '2022-11-08 05:52:21'),
(368, 'blog_page', '35', '2022-02-14 09:27:14', '2022-11-08 05:52:21'),
(369, 'service_list_page', '43', '2022-02-14 09:27:14', '2022-11-08 05:52:21'),
(370, 'paypal_preview_logo', '72', '2022-02-14 09:42:57', '2022-10-12 04:34:00'),
(371, 'paypal_mode', NULL, '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(372, 'paypal_sandbox_client_id', 'AUP7AuZMwJbkee-2OmsSZrU-ID1XUJYE-YB-2JOrxeKV-q9ZJZYmsr-UoKuJn4kwyCv5ak26lrZyb-gb', '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(373, 'paypal_sandbox_client_secret', 'EEIxCuVnbgING9EyzcF2q-gpacLneVbngQtJ1mbx-42Lbq-6Uf6PEjgzF7HEayNsI4IFmB9_CZkECc3y', '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(374, 'paypal_sandbox_app_id', '641651651958', '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(375, 'paypal_live_app_id', NULL, '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(376, 'paypal_payment_action', NULL, '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(377, 'paypal_currency', NULL, '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(378, 'paypal_notify_url', NULL, '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(379, 'paypal_locale', NULL, '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(380, 'paypal_validate_ssl', NULL, '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(381, 'paypal_live_client_id', NULL, '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(382, 'paypal_live_client_secret', NULL, '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(383, 'paypal_gateway', 'on', '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(384, 'paypal_test_mode', 'on', '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(385, 'razorpay_preview_logo', '68', '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(386, 'razorpay_key', NULL, '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(387, 'razorpay_secret', NULL, '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(388, 'razorpay_api_key', 'rzp_test_SXk7LZqsBPpAkj', '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(389, 'razorpay_api_secret', 'Nenvq0aYArtYBDOGgmMH7JNv', '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(390, 'razorpay_gateway', 'on', '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(391, 'stripe_preview_logo', '67', '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(392, 'stripe_publishable_key', NULL, '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(393, 'stripe_secret_key', 'sk_test_51GwS1SEmGOuJLTMs2vhSliTwAGkOt4fKJMBrxzTXeCJoLrRu8HFf4I0C5QuyE3l3bQHBJm3c0qFmeVjd0V9nFb6Z00VrWDJ9Uw', '2022-02-14 09:42:58', '2022-10-12 04:34:00'),
(394, 'stripe_public_key', 'pk_test_51GwS1SEmGOuJLTMsIeYKFtfAT3o3Fc6IOC7wyFmmxA2FIFQ3ZigJ2z1s4ZOweKQKlhaQr1blTH9y6HR2PMjtq1Rx00vqE8LO0x', '2022-02-14 09:42:59', '2022-10-12 04:34:00'),
(395, 'stripe_gateway', 'on', '2022-02-14 09:42:59', '2022-10-12 04:34:00'),
(396, 'paytm_gateway', 'on', '2022-02-14 09:42:59', '2022-10-12 04:34:00'),
(397, 'paytm_preview_logo', '66', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(398, 'paytm_merchant_key', NULL, '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(399, 'paytm_merchant_mid', NULL, '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(400, 'paytm_merchant_website', NULL, '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(401, 'paytm_test_mode', 'on', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(402, 'paystack_merchant_email', 'sopnilsohan03@gmail.com', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(403, 'paystack_preview_logo', '69', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(404, 'paystack_public_key', 'pk_test_a7e58f850adce9a73750e61668d4f492f67abcd9', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(405, 'paystack_secret_key', 'sk_test_2a458001d806c878aba51955b962b3c8ed78f04b', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(406, 'paystack_gateway', 'on', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(407, 'mollie_preview_logo', '70', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(408, 'mollie_public_key', 'test_fVk76gNbAp6ryrtRjfAVvzjxSHxC2v', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(409, 'mollie_gateway', 'on', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(410, 'marcado_pagp_client_id', NULL, '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(411, 'marcado_pago_client_secret', 'TEST-4644184554273630-070813-7d817e2ca1576e75884001d0755f8a7a-786499991', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(412, 'marcado_pago_test_mode', NULL, '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(413, 'cash_on_delivery_gateway', 'on', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(414, 'cash_on_delivery_preview_logo', '73', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(415, 'flutterwave_preview_logo', '71', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(416, 'flutterwave_gateway', 'on', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(417, 'flw_public_key', 'FLWPUBK_TEST-86cce2ec43c63e09a517290a8347fcab-X', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(418, 'flw_secret_key', 'FLWSECK_TEST-d37a42d8917db84f1b2f47c125252d0a-X', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(419, 'flw_secret_hash', 'fundorex', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(420, 'midtrans_preview_logo', '78', '2022-02-14 09:42:59', '2022-10-12 04:34:01'),
(421, 'midtrans_merchant_id', 'G770543580', '2022-02-14 09:43:00', '2022-10-12 04:34:01'),
(422, 'midtrans_server_key', 'SB-Mid-server-9z5jztsHyYxEdSs7DgkNg2on', '2022-02-14 09:43:00', '2022-10-12 04:34:01'),
(423, 'midtrans_client_key', 'SB-Mid-client-iDuy-jKdZHkLjL_I', '2022-02-14 09:43:00', '2022-10-12 04:34:01'),
(424, 'midtrans_environment', NULL, '2022-02-14 09:43:00', '2022-10-12 04:34:01'),
(425, 'midtrans_gateway', 'on', '2022-02-14 09:43:00', '2022-10-12 04:34:01'),
(426, 'midtrans_test_mode', 'on', '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(427, 'payfast_preview_logo', '74', '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(428, 'payfast_merchant_id', '10023791', '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(429, 'payfast_merchant_key', '733jmbxs2kbj5', '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(430, 'payfast_passphrase', 'dvrobin4', '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(431, 'payfast_merchant_env', NULL, '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(432, 'payfast_itn_url', NULL, '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(433, 'payfast_gateway', 'on', '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(434, 'cashfree_preview_logo', '75', '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(435, 'cashfree_test_mode', 'on', '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(436, 'cashfree_app_id', '94527832f47d6e74fa6ca5e3c72549', '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(437, 'cashfree_secret_key', 'ec6a3222018c676e95436b2e26e89c1ec6be2830', '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(438, 'cashfree_gateway', 'on', '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(439, 'instamojo_preview_logo', '76', '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(440, 'instamojo_client_id', 'test_nhpJ3RvWObd3uryoIYF0gjKby5NB5xu6S9Z', '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(441, 'instamojo_client_secret', 'test_iZusG4P35maQVPTfqutbCc6UEbba3iesbCbrYM7zOtDaJUdbPz76QOnBcDgblC53YBEgsymqn2sx3NVEPbl3b5coA3uLqV1ikxKquOeXSWr8Ruy7eaKUMX1yBbm', '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(442, 'instamojo_username', NULL, '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(443, 'instamojo_password', NULL, '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(444, 'instamojo_test_mode', 'on', '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(445, 'instamojo_gateway', 'on', '2022-02-14 09:43:00', '2022-10-12 04:34:02'),
(446, 'marcadopago_preview_logo', '77', '2022-02-14 09:43:01', '2022-10-12 04:34:03'),
(447, 'marcado_pago_client_id', 'TEST-0a3cc78a-57bf-4556-9dbe-2afa06347769', '2022-02-14 09:43:01', '2022-10-12 04:34:03'),
(448, 'marcadopago_gateway', 'on', '2022-02-14 09:43:01', '2022-10-12 04:34:03'),
(449, 'marcadopago_test_mode', 'on', '2022-02-14 09:43:01', '2022-10-12 04:34:03'),
(450, 'site_global_currency', 'USD', '2022-02-14 09:43:01', '2022-10-12 04:34:04'),
(451, 'site_global_payment_gateway', NULL, '2022-02-14 09:43:01', '2022-10-12 04:34:04'),
(452, 'site_manual_payment_name', 'Bank Transfer', '2022-02-14 09:43:01', '2022-10-12 04:34:04'),
(453, 'site_manual_payment_description', '<p>this is manual payment description example</p>', '2022-02-14 09:43:01', '2022-10-12 04:34:04'),
(454, 'manual_payment_preview_logo', '172', '2022-02-14 09:43:01', '2022-10-12 04:34:04'),
(455, 'manual_payment_gateway', 'on', '2022-02-14 09:43:01', '2022-10-12 04:34:04'),
(456, 'site_usd_to_ngn_exchange_rate', '415.33', '2022-02-14 09:43:01', '2022-10-12 04:34:04'),
(457, 'site_euro_to_ngn_exchange_rate', NULL, '2022-02-14 09:43:01', '2022-10-12 04:34:04'),
(458, 'site_currency_symbol_position', 'left', '2022-02-14 09:43:01', '2022-10-12 04:34:04'),
(459, 'site_default_payment_gateway', 'manual_payment', '2022-02-14 09:43:01', '2022-10-12 04:34:04'),
(460, 'site_usd_to_idr_exchange_rate', '14349.45', '2022-02-14 09:43:01', '2022-10-12 04:34:04'),
(461, 'site_usd_to_inr_exchange_rate', '75.04', '2022-02-14 09:43:01', '2022-10-12 04:34:04'),
(462, 'site_usd_to_zar_exchange_rate', '14.40', '2022-02-14 09:43:01', '2022-10-12 04:34:04'),
(463, 'site_usd_to_brl_exchange_rate', '5.53', '2022-02-14 09:43:01', '2022-10-12 04:34:04'),
(464, 'site_usd_to_usd_exchange_rate', NULL, '2022-02-14 09:43:01', '2022-10-12 04:34:04'),
(465, 'site_logo', '124', '2022-02-14 14:09:41', '2022-02-15 04:03:26'),
(466, 'site_white_logo', '125', '2022-02-14 14:09:41', '2022-02-15 04:03:26'),
(467, 'site_favicon', '1', '2022-02-14 14:09:41', '2022-02-15 04:03:26'),
(468, 'site_title', 'Qixer', '2022-02-14 14:10:45', '2022-02-19 23:46:42'),
(469, 'site_tag_line', 'Buy & Sale Service', '2022-02-14 14:10:45', '2022-02-19 23:46:42'),
(470, 'site_footer_copyright', 'All copyright (C) 2022 Reserved', '2022-02-14 14:10:45', '2022-02-19 23:46:42'),
(471, 'language_select_option', NULL, '2022-02-14 14:10:46', '2022-02-19 23:46:42'),
(472, 'disable_user_email_verify', NULL, '2022-02-14 14:10:46', '2022-02-19 23:46:42'),
(473, 'site_main_color', NULL, '2022-02-14 14:10:46', '2022-02-19 23:46:42'),
(474, 'site_secondary_color', NULL, '2022-02-14 14:10:46', '2022-02-19 23:46:42'),
(475, 'site_maintenance_mode', NULL, '2022-02-14 14:10:46', '2022-02-19 23:46:42'),
(476, 'admin_loader_animation', NULL, '2022-02-14 14:10:46', '2022-02-19 23:46:42'),
(477, 'site_loader_animation', NULL, '2022-02-14 14:10:46', '2022-02-19 23:46:43'),
(478, 'admin_panel_rtl_status', NULL, '2022-02-14 14:10:46', '2022-02-19 23:46:43'),
(479, 'site_force_ssl_redirection', NULL, '2022-02-14 14:10:46', '2022-02-19 23:46:43'),
(480, 'site_google_captcha_enable', NULL, '2022-02-14 14:10:46', '2022-02-19 23:46:43'),
(481, 'body_font_family', 'Roboto', '2022-02-15 02:54:15', '2022-02-15 02:58:48'),
(482, 'heading_font_family', 'Source Sans Pro', '2022-02-15 02:54:15', '2022-02-15 02:58:48'),
(483, 'extra_body_font', NULL, '2022-02-15 02:54:15', '2022-02-15 02:58:48'),
(484, 'heading_font', 'on', '2022-02-15 02:54:15', '2022-02-15 02:58:48'),
(485, 'body_font_variant', 'a:5:{i:0;s:5:\"0,100\";i:1;s:5:\"0,300\";i:2;s:5:\"0,400\";i:3;s:5:\"0,500\";i:4;s:5:\"0,700\";}', '2022-02-15 02:54:15', '2022-02-15 02:58:49'),
(486, 'heading_font_variant', 'a:4:{i:0;s:5:\"0,200\";i:1;s:5:\"0,400\";i:2;s:5:\"0,600\";i:3;s:5:\"0,700\";}', '2022-02-15 02:54:15', '2022-02-15 02:58:49'),
(487, 'body_font_family_three', NULL, '2022-02-15 02:54:15', '2022-02-15 02:58:49'),
(488, 'body_font_family_four', NULL, '2022-02-15 02:54:15', '2022-02-15 02:58:49'),
(489, 'body_font_family_five', NULL, '2022-02-15 02:54:15', '2022-02-15 02:58:49'),
(490, 'body_font_variant_three', 'a:1:{i:0;s:3:\"400\";}', '2022-02-15 02:54:15', '2022-02-15 02:58:49'),
(491, 'body_font_variant_four', 'a:1:{i:0;s:3:\"400\";}', '2022-02-15 02:54:15', '2022-02-15 02:58:49'),
(492, 'body_font_variant_five', 'a:1:{i:0;s:3:\"400\";}', '2022-02-15 02:54:15', '2022-02-15 02:58:49'),
(493, 'global_navbar_variant', '02', '2022-02-15 03:27:32', '2022-02-15 03:27:32'),
(494, 'maintain_page_title', 'Sorry  we are down for schedule maintenance right now !!', '2022-02-15 04:40:12', '2022-02-15 04:51:24'),
(495, 'maintain_page_description', NULL, '2022-02-15 04:40:12', '2022-02-15 04:51:24'),
(496, 'maintenance_duration', '2022-02-17', '2022-02-15 04:40:12', '2022-02-15 04:51:24'),
(497, 'maintain_page_logo', '126', '2022-02-15 04:40:12', '2022-02-15 04:40:12'),
(498, 'maintain_page_background_image', '117', '2022-02-15 04:51:24', '2022-02-15 04:51:24'),
(499, 'site_global_email', 'nazmul@nazmul.xgenious.com', '2022-02-15 18:58:44', '2022-02-15 18:58:44'),
(500, 'site_global_email_template', 'ssdf', '2022-02-15 18:58:44', '2022-02-15 18:58:44'),
(501, 'site_smtp_mail_mailer', 'smtp', '2022-02-15 19:34:53', '2022-02-15 20:16:18'),
(502, 'site_smtp_mail_host', NULL, '2022-02-15 19:34:53', '2022-02-15 20:16:18'),
(503, 'site_smtp_mail_port', '465', '2022-02-15 19:34:53', '2022-02-15 20:16:18'),
(504, 'site_smtp_mail_username', NULL, '2022-02-15 19:34:53', '2022-02-15 20:16:18'),
(505, 'site_smtp_mail_password', NULL, '2022-02-15 19:34:53', '2022-02-15 20:16:18'),
(506, 'site_smtp_mail_encryption', 'tls', '2022-02-15 19:34:53', '2022-02-15 20:16:18'),
(507, 'error_404_page_title', 'Page Not Found', '2022-02-16 23:33:50', '2022-02-16 23:33:50'),
(508, 'error_404_page_subtitle', 'Page Unavailable!!', '2022-02-16 23:33:51', '2022-02-16 23:33:51'),
(509, 'error_404_page_paragraph', NULL, '2022-02-16 23:33:51', '2022-02-16 23:33:51'),
(510, 'error_404_page_button_text', 'Back To Home', '2022-02-16 23:33:51', '2022-02-16 23:33:51'),
(511, 'error_image', '123', '2022-02-16 23:33:51', '2022-02-16 23:33:51'),
(512, 'site_admin_dark_mode', 'off', '2022-02-17 17:14:17', '2023-01-01 15:38:28'),
(513, 'success_title', 'SUCCESSFULL !', '2022-02-17 17:30:46', '2022-02-17 17:53:54'),
(514, 'success_subtitle', 'Your Order Successfully Completed', '2022-02-17 17:30:46', '2022-02-17 17:53:54'),
(515, 'success_details_title', 'Your Order Details', '2022-02-17 17:30:46', '2022-02-17 17:53:54'),
(516, 'button_title', 'Back To Home', '2022-02-17 17:30:46', '2022-02-17 17:53:54'),
(517, 'button_url', NULL, '2022-02-17 17:30:46', '2022-02-17 17:53:54'),
(518, 'site_disqus_key', NULL, '2022-02-27 11:26:14', '2022-04-21 03:57:38'),
(519, 'site_google_analytics', NULL, '2022-02-27 11:26:14', '2022-04-21 03:57:38'),
(520, 'tawk_api_key', NULL, '2022-02-27 11:26:14', '2022-04-21 03:57:38'),
(521, 'site_third_party_tracking_code', NULL, '2022-02-27 11:26:14', '2022-04-21 03:57:38'),
(522, 'site_google_captcha_v3_site_key', NULL, '2022-02-27 11:26:14', '2022-04-21 03:57:38'),
(523, 'site_google_captcha_v3_secret_key', NULL, '2022-02-27 11:26:14', '2022-04-21 03:57:38'),
(524, 'enable_google_login', 'on', '2022-02-27 11:26:14', '2022-04-21 03:57:38'),
(525, 'google_client_id', NULL, '2022-02-27 11:26:14', '2022-04-21 03:57:38'),
(526, 'google_client_secret', NULL, '2022-02-27 11:26:14', '2022-04-21 03:57:38'),
(527, 'enable_facebook_login', 'on', '2022-02-27 11:26:14', '2022-04-21 03:57:39'),
(528, 'facebook_client_id', NULL, '2022-02-27 11:26:14', '2022-04-21 03:57:39'),
(529, 'facebook_client_secret', NULL, '2022-02-27 11:26:14', '2022-04-21 03:57:39'),
(530, 'google_adsense_publisher_id', NULL, '2022-02-27 11:26:14', '2022-04-21 03:57:39'),
(531, 'google_adsense_customer_id', NULL, '2022-02-27 11:26:14', '2022-04-21 03:57:39'),
(532, 'enable_google_adsense', NULL, '2022-02-27 11:26:14', '2022-04-21 03:57:39'),
(533, 'instagram_access_token', NULL, '2022-02-27 11:26:14', '2022-04-21 03:57:39'),
(534, 'site_script_version', '1.4.3', '2022-03-02 22:10:16', '2022-12-23 07:56:01'),
(535, 'site_gdpr_cookie_en_GB_title', 'Cookies & Privacy', '2022-03-28 12:17:23', '2022-03-28 12:17:24'),
(536, 'site_gdpr_cookie_en_GB_message', 'Is education residence conveying so so. Suppose shyness say ten behaved morning had. Any unsatiable assistance compliment occasional too reasonably advantages.', '2022-03-28 12:17:24', '2022-03-28 12:17:24'),
(537, 'site_gdpr_cookie_en_GB_more_info_label', 'More information', '2022-03-28 12:17:24', '2022-03-28 12:17:24'),
(538, 'site_gdpr_cookie_en_GB_more_info_link', '{url}/privacy-policy', '2022-03-28 12:17:24', '2022-03-28 12:17:24'),
(539, 'site_gdpr_cookie_en_GB_accept_button_label', 'Accept', '2022-03-28 12:17:24', '2022-03-28 12:17:24'),
(540, 'site_gdpr_cookie_en_GB_decline_button_label', 'Decline', '2022-03-28 12:17:24', '2022-03-28 12:17:24'),
(541, 'site_gdpr_cookie_en_GB_manage_button_label', 'Manage', '2022-03-28 12:17:24', '2022-03-28 12:17:24'),
(542, 'site_gdpr_cookie_en_GB_manage_title', 'Manage Cookie', '2022-03-28 12:17:24', '2022-03-28 12:17:24'),
(543, 'site_gdpr_cookie_en_GB_manage_item_title', 'a:1:{i:0;N;}', '2022-03-28 12:17:24', '2022-03-28 12:17:24'),
(544, 'site_gdpr_cookie_en_GB_manage_item_description', 'a:1:{i:0;N;}', '2022-03-28 12:17:24', '2022-03-28 12:17:24'),
(545, 'site_gdpr_cookie_delay', '5000', '2022-03-28 12:17:24', '2022-03-28 12:26:55'),
(546, 'site_gdpr_cookie_enabled', 'on', '2022-03-28 12:17:24', '2022-03-28 12:26:56'),
(547, 'site_gdpr_cookie_expire', '30', '2022-03-28 12:17:24', '2022-03-28 12:26:56'),
(548, 'site_gdpr_cookie_title', 'Cookies & Privacy', '2022-03-28 12:23:49', '2022-03-28 12:26:55'),
(549, 'site_gdpr_cookie_message', 'Is education residence conveying so so. Suppose shyness say ten behaved morning had. Any unsatiable assistance compliment occasional too reasonably advantages.', '2022-03-28 12:23:49', '2022-03-28 12:26:55'),
(550, 'site_gdpr_cookie_more_info_label', 'More information', '2022-03-28 12:23:49', '2022-03-28 12:26:55'),
(551, 'site_gdpr_cookie_more_info_link', '{url}/privacy-policy', '2022-03-28 12:23:49', '2022-03-28 12:26:55'),
(552, 'site_gdpr_cookie_accept_button_label', 'Accept', '2022-03-28 12:23:49', '2022-03-28 12:26:55'),
(553, 'site_gdpr_cookie_decline_button_label', 'Decline', '2022-03-28 12:23:49', '2022-03-28 12:26:55'),
(554, 'site_gdpr_cookie_manage_button_label', 'Manage', '2022-03-28 12:23:49', '2022-03-28 12:26:55'),
(555, 'site_gdpr_cookie_manage_title', NULL, '2022-03-28 12:23:49', '2022-03-28 12:26:55'),
(556, 'site_gdpr_cookie_manage_item_title', 'a:3:{i:0;s:16:\"Site Preferences\";i:1;s:9:\"Analytics\";i:2;s:9:\"Marketing\";}', '2022-03-28 12:23:49', '2022-03-28 12:26:55'),
(557, 'site_gdpr_cookie_manage_item_description', 'a:3:{i:0;s:111:\"These are cookies that are related to your site preferences, e.g. remembering your username, site colours, etc.\";i:1;s:51:\"Cookies related to site visits, browser types, etc.\";i:2;s:65:\"Cookies related to marketing, e.g. newsletters, social media, etc\";}', '2022-03-28 12:23:49', '2022-03-28 12:26:55'),
(565, 'site_main_color_one', NULL, '2022-04-08 10:31:08', '2022-04-08 10:31:44'),
(566, 'site_main_color_two', NULL, '2022-04-08 10:31:08', '2022-04-08 10:31:44'),
(567, 'site_main_color_three', NULL, '2022-04-08 10:31:08', '2022-04-08 10:31:44'),
(568, 'heading_color', NULL, '2022-04-08 10:31:08', '2022-04-08 10:31:44'),
(569, 'light_color', NULL, '2022-04-08 10:31:08', '2022-04-08 10:31:44'),
(570, 'extra_light_color', NULL, '2022-04-08 10:31:08', '2022-04-08 10:31:44'),
(571, 'service_create_settings', 'verified_seller', '2022-04-21 02:50:29', '2022-04-21 03:22:00'),
(572, 'service_main_attribute_title', NULL, '2022-04-21 04:26:18', '2022-04-21 04:38:53'),
(573, 'service_additional_attribute_title', NULL, '2022-04-21 04:26:18', '2022-04-21 04:38:53'),
(574, 'service_benifits_title', NULL, '2022-04-21 04:26:18', '2022-04-21 04:38:53'),
(575, 'service_booking_title', NULL, '2022-04-21 04:26:18', '2022-04-21 04:38:53'),
(576, 'service_appoinment_package_title', NULL, '2022-04-21 04:26:18', '2022-04-21 04:38:54'),
(577, 'service_package_fee_title', NULL, '2022-04-21 04:26:18', '2022-04-21 04:38:54'),
(578, 'service_extra_title', NULL, '2022-04-21 04:26:18', '2022-04-21 04:38:54'),
(579, 'service_subtotal_title', NULL, '2022-04-21 04:26:18', '2022-04-21 04:38:54'),
(580, 'service_total_amount_title', NULL, '2022-04-21 04:26:18', '2022-04-21 04:38:54'),
(581, 'service_available_date_title', NULL, '2022-04-21 04:26:18', '2022-04-21 04:38:54'),
(582, 'service_available_schudule_title', NULL, '2022-04-21 04:26:18', '2022-04-21 04:38:54'),
(583, 'service_booking_information_title', NULL, '2022-04-21 04:26:18', '2022-04-21 04:38:54'),
(584, 'service_order_confirm_title', NULL, '2022-04-21 04:26:18', '2022-04-21 04:38:54'),
(585, 'terms_and_conditions_link', NULL, '2022-04-21 04:34:16', '2022-04-21 04:38:54'),
(586, 'login_form_title', 'Sign In', '2022-04-27 04:04:35', '2022-09-08 06:03:09'),
(587, 'register_page_title', 'Register For Join With Us', '2022-04-27 04:04:35', '2022-09-08 06:03:09'),
(588, 'register_seller_title', 'Seller', '2022-04-27 04:04:35', '2022-09-08 06:03:09'),
(589, 'register_buyer_title', 'Buyer', '2022-04-27 04:04:35', '2022-09-08 06:03:09'),
(590, 'enable_disable_decimal_point', 'yes', '2022-06-26 05:10:08', '2022-10-12 04:34:04'),
(591, 'site_eur_to_usd_exchange_rate', NULL, '2022-06-26 05:10:08', '2022-06-26 05:10:08'),
(592, 'site_eur_to_idr_exchange_rate', NULL, '2022-06-26 07:02:08', '2022-06-26 07:02:08'),
(593, 'site_eur_to_inr_exchange_rate', NULL, '2022-06-26 07:02:08', '2022-06-26 07:02:08'),
(594, 'site_eur_to_ngn_exchange_rate', NULL, '2022-06-26 07:02:08', '2022-06-26 07:02:08'),
(595, 'site_eur_to_zar_exchange_rate', NULL, '2022-06-26 07:02:08', '2022-06-26 07:02:08'),
(596, 'site_eur_to_brl_exchange_rate', NULL, '2022-06-26 07:02:08', '2022-06-26 07:02:08'),
(597, 'site_inr_to_usd_exchange_rate', NULL, '2022-08-03 04:42:05', '2022-08-03 04:42:05'),
(598, 'site_inr_to_idr_exchange_rate', NULL, '2022-08-03 04:45:10', '2022-08-03 04:45:10'),
(599, 'site_inr_to_inr_exchange_rate', NULL, '2022-08-03 04:45:10', '2022-08-03 04:45:10'),
(600, 'site_inr_to_ngn_exchange_rate', NULL, '2022-08-03 04:45:10', '2022-08-03 04:45:10'),
(601, 'site_inr_to_zar_exchange_rate', NULL, '2022-08-03 04:45:10', '2022-08-03 04:45:10'),
(602, 'site_inr_to_brl_exchange_rate', NULL, '2022-08-03 04:45:10', '2022-08-03 04:45:10'),
(603, 'set_number_of_connect', '2', '2022-09-03 05:21:51', '2022-09-03 05:21:51'),
(604, 'package_expire_notify_mail_days', '[\"1\",\"3\",\"7\"]', '2022-09-03 05:44:51', '2022-09-05 02:08:11'),
(605, 'select_terms_condition_page', 'terms-and-conditions', '2022-09-08 05:55:51', '2022-09-08 06:03:09'),
(606, 'zitopay_username', 'dvrobin4', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(607, 'zitopay_preview_logo', '309', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(608, 'zitopay_gateway', 'on', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(609, 'zitopay_test_mode', 'on', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(610, 'billplz_collection_name', 'kjj5ya006', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(611, 'billplz_xsignature', 'S-HDXHxRJB-J7rNtoktZkKJg', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(612, 'billplz_key', 'b2ead199-e6f3-4420-ae5c-c94f1b1e8ed6', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(613, 'billplz_preview_logo', '311', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(614, 'billplz_gateway', 'on', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(615, 'billplz_test_mode', 'on', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(616, 'paytabs_region', 'GLOBAL', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(617, 'paytabs_profile_id', '96698', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(618, 'paytabs_server_key', 'SKJNDNRHM2-JDKTZDDH2N-H9HLMJNJ2L', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(619, 'paytabs_preview_logo', '307', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(620, 'paytabs_gateway', 'on', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(621, 'paytabs_test_mode', 'on', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(622, 'cinetpay_site_id', '445160', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(623, 'cinetpay_app_key', '12912847765bc0db748fdd44.40081707', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(624, 'cinetpay_preview_logo', '308', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(625, 'cinetpay_gateway', 'on', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(626, 'cinetpay_test_mode', 'on', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(627, 'squareup_application_id', NULL, '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(628, 'squareup_location_id', 'LE9C12TNM5HAS', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(629, 'squareup_access_token', 'EAAAEOuLQObrVwJvCvoio3H13b8Ssqz1ighmTBKZvIENW9qxirHGHkqsGcPBC1uN', '2022-09-19 00:26:00', '2022-10-12 04:34:03'),
(630, 'squareup_preview_logo', '306', '2022-09-19 00:26:00', '2022-10-12 04:34:04'),
(631, 'squareup_gateway', 'on', '2022-09-19 00:26:00', '2022-10-12 04:34:04'),
(632, 'squareup_test_mode', 'on', '2022-09-19 00:26:00', '2022-10-12 04:34:04'),
(633, 'site_usd_to_myr_exchange_rate', '4.44', '2022-09-19 05:50:39', '2022-10-12 04:34:04'),
(634, 'login_text_show_hide', 'yes', '2022-10-10 05:08:44', '2022-10-10 05:17:14'),
(635, 'seller_register_on_off', 'on', '2022-11-11 23:09:55', '2022-11-12 00:53:13'),
(636, 'buyer_register_on_off', 'on', '2022-11-11 23:13:29', '2022-11-12 00:53:17'),
(637, 'register_notice', 'Please be patient!!. Register system is currently disabled. We will come back very soon.', '2022-11-12 00:40:37', '2022-11-12 00:42:18'),
(646, 'user_register_subject', 'New User Registration', '2022-11-13 00:01:00', '2022-11-13 00:52:28'),
(647, 'user_register_message', '<p><p>Hello @name,</p><p></p>You have user registered as a @type </p><p> Username: @username  Email: @email<p></p> </p>', '2022-11-13 00:01:00', '2022-11-13 00:52:28'),
(648, 'user_email_verify_subject', 'Verify your email address', '2022-11-13 00:40:31', '2022-11-13 00:48:00'),
(649, 'user_email_verify_message', '<p><p>Hello @name,</p><p></p>Here is your verification code</p><p><p>Verification Code: @email_verify_tokn</p> </p>', '2022-11-13 00:40:31', '2022-11-13 00:48:00'),
(650, 'service_approve_subject', 'New Service Approve Request', '2022-11-13 01:33:18', '2022-11-13 02:03:58'),
(651, 'service_approve_message', '<p>Hello,</p><p>\n                                         </p><div>\n                                        </div><div>New service is just created. Please check for approve, thanks</div><div><br></div><div>\n                                        </div><div>Service id: @service_id</div><div>\n                                        </div><p></p>', '2022-11-13 01:33:18', '2022-12-21 07:19:50'),
(652, 'seller_report_subject', 'Seller New Report', '2022-11-13 02:08:12', '2022-11-13 02:13:05'),
(653, 'seller_report_message', '<p>Hello,</p><p>New report is just created by a seller. Please check , thanks</p><p>Report id: @report_id</p>', '2022-11-13 02:08:12', '2022-11-13 02:13:05'),
(654, 'seller_payout_subject', 'Seller Payout Request', '2022-11-13 02:30:06', '2022-11-13 02:40:59'),
(655, 'seller_payout_message', '<p>Hello,</p><p>\n                                         </p><div>\n                                        </div><div>New payout request is just created by a seller. Please check , thanks</div><div><br></div><div>\n                                        </div><div>Payout request id: @payout_request_id</div><div>\n                                        </div><p></p>', '2022-11-13 02:30:06', '2022-12-21 07:19:50'),
(656, 'seller_order_ticket_subject', 'New Order Ticket', '2022-11-13 03:00:43', '2022-11-13 03:22:30'),
(657, 'seller_order_ticket_message', '<p>Hello,\n                                            </p><p>You have a new order ticket\n                                            </p><p>Order ticket id: @order_ticket_id</p><p>\n                                            </p><p>\n                                            </p><div>\n                                            </div><p></p>', '2022-11-13 03:00:43', '2022-12-21 07:19:50'),
(658, 'seller_verification_subject', 'Seller Verification Request', '2022-11-13 03:20:24', '2022-11-13 03:20:24'),
(659, 'seller_verification_message', '<p>Hello,</p><p>\n                                             </p><div>\n                                            </div><div>You have a new request for seller verification.</div><div>\n                                            </div><p></p>', '2022-11-13 03:20:24', '2022-12-21 07:19:50'),
(660, 'seller_extra_service_subject', 'Extra Service Added', '2022-11-13 04:04:39', '2022-11-13 04:05:08'),
(661, 'seller_extra_service_message', '<p>Hello @seller_name</p><p>You have added extra service in your order.</p><p>Order id: @order_id</p>', '2022-11-13 04:04:39', '2022-11-13 04:05:08'),
(662, 'seller_to_buyer_extra_service_message', '<p>Hello @buyer_name</p><p><br></p><p>\n                                                     </p><div>\n                                                    </div><div>Seller added extra service in your order.</div><div><br></div><div>Order id: @order_id</div><div>\n                                                    </div><p></p>', '2022-11-13 04:04:39', '2022-12-21 07:19:50'),
(663, 'buyer_order_decline_subject', 'Order Complete Request Decline', '2022-11-13 04:59:37', '2022-11-13 05:07:19'),
(664, 'buyer_order_decline_message', '<p>Your request to complete an order has been decline by the buyer</p><p>Order id: @order_id</p>', '2022-11-13 04:59:37', '2022-11-13 05:07:19'),
(665, 'buyer_to_admin_extra_service_message', '<p>A buyer has been decline a request to complete an order.</p><div><br></div><div>Order id: @order_id</div><div>\n                                                     </div><p></p>', '2022-11-13 04:59:37', '2022-12-21 07:19:50'),
(666, 'buyer_report_subject', 'Buyer New Report', '2022-11-13 05:33:50', '2022-11-13 05:33:50'),
(667, 'buyer_report_message', '<p>Hello,</p><p>New report is just created by a buyer. Please check , thanks</p><p>Report id: @report_id</p>', '2022-11-13 05:33:50', '2022-11-13 05:33:50'),
(668, 'buyer_order_ticket_subject', 'New Order Ticket', '2022-11-13 06:04:26', '2022-11-13 06:06:37'),
(669, 'buyer_order_ticket_message', '<p>Hello,\n                                            </p><p>You have a new order ticket</p><p>Order ticket id: @order_ticket_id</p><p>\n                                            </p><p>\n                                            </p><div>\n                                            </div><p></p>', '2022-11-13 06:04:26', '2022-12-21 07:19:50'),
(670, 'buyer_extra_service_subject', 'Extra Service Excepted', '2022-11-13 06:36:53', '2022-11-13 06:44:46'),
(671, 'buyer_extra_service_message', '<p>Hello @buyer_name</p><p>You have accepted extra service&nbsp; added by seller in your order.</p><p>Order id: @order_id</p>', '2022-11-13 06:36:53', '2022-11-13 06:44:46'),
(672, 'buyer_to_seller_extra_service_message', '<p>Hello @seller_name</p><p><br></p><p>\n                                             </p><div>\n                                            </div><div>Buyer accepted the&nbsp; extra service added buy you&nbsp; in your order.</div><div><br></div><div>Order id: @order_id</div><div>\n                                            </div><p></p>', '2022-11-13 06:36:53', '2022-12-21 07:19:50'),
(673, 'admin_change_payment_status_subject', 'Payment Status Change', '2022-11-14 00:09:25', '2022-12-21 07:19:50'),
(674, 'admin_change_payment_status_message', '<p></p><p>Hello @name,\n                                                    </p><p>Payment status has been changed @old_status to @new_status\n                                                    </p><p>Order id: @order_id</p><p>\n                                                    </p><p></p> <p></p>', '2022-11-14 00:09:26', '2022-12-21 07:19:50'),
(675, 'admin_withdraw_amount_send_message', '<p></p><p>Hello @name,\n                                                    </p><p>&nbsp;We just send your requested payout amount. Thanks to stay with us.</p><p>Withdraw Amount:&nbsp; @withdraw_amount</p><p>\n                                                    </p><p></p> <p></p>', '2022-11-14 01:19:15', '2022-12-21 07:19:50'),
(676, 'admin_service_approve_subject', 'Service Approve Success', '2022-11-14 02:26:51', '2022-11-14 02:51:46'),
(677, 'admin_service_approve_message', '<p></p><p>Hello @name,</p><p>Your service has been approved by admin.</p><p>\n                                                </p><p></p> <p></p>', '2022-11-14 02:26:51', '2022-12-21 07:19:50'),
(678, 'admin_service_assign_subject', 'Service Assign By Admin', '2022-11-14 02:56:03', '2022-11-14 02:59:27'),
(679, 'admin_service_assign_message', 'Hello new service is just assign to you. Please check for details, thanks', '2022-11-14 02:56:03', '2022-11-14 02:59:27'),
(680, 'admin_seller_verification_subject', 'Seller Verification Success', '2022-11-14 03:29:10', '2022-11-14 03:30:05'),
(681, 'admin_seller_verification_message', '<p></p><p>Hello @name,</p><p>Your verification is success. Now you are a verified seller.</p><p>\n                                                    </p><p></p> <p></p>', '2022-11-14 03:29:10', '2022-12-21 07:19:50'),
(682, 'admin_user_verification_code_subject', 'Verification Code Send Success', '2022-11-14 04:01:57', '2022-11-14 04:03:11'),
(683, 'admin_user_verification_code_message', '<p></p><p>Hello @name,</p><p>Here is your verification code.</p><p>Verification Code: @verification_code</p><p>\n                                                    </p><p></p> <p></p>', '2022-11-14 04:01:57', '2022-12-21 07:19:50'),
(684, 'admin_user_new_password_subject', 'Password Change Success', '2022-11-14 22:47:43', '2022-11-14 22:48:06'),
(685, 'admin_user_new_password_message', '<p>Hello,</p><p>\n                                                 </p><div>\n                                                </div><div>Here is your new password.</div><div><br></div><div>\n                                                </div><div>New password: @new_password</div><div>\n                                                </div><p></p>', '2022-11-14 22:47:43', '2022-12-21 07:19:50'),
(686, 'new_order_email_subject', 'New Order', '2022-11-15 00:26:37', '2022-11-15 01:04:39'),
(687, 'new_order_buyer_message', '<p>You have successfully placed an order #</p>', '2022-11-15 00:26:37', '2022-11-15 01:04:39'),
(688, 'new_order_admin_seller_message', '<p>You have a new order #</p><div>\n                                                </div><p></p>', '2022-11-15 00:26:37', '2022-12-21 07:19:50'),
(689, 'job_apply_subject', 'New Application Created', '2022-11-15 01:59:35', '2022-11-15 01:59:53'),
(690, 'job_apply_message', '<p>Hello,</p><p>\n                                     </p><div>\n                                    </div><div>New application is created for your job.</div><div><br></div><div>\n                                    </div><div>Job post id: @job_post_id</div><div>\n                                    </div><p></p>', '2022-11-15 01:59:35', '2022-12-21 07:19:50'),
(691, 'buy_subscription_email_subject', 'New Subscription', '2022-11-15 03:28:29', '2022-11-15 03:30:51'),
(692, 'buy_subscription_seller_message', '<p>Hello,</p><p>\n                                                 <div>\n                                                </div><div>You have successfully buy a subscription.\n                                                </div><div>Your subscription infos---\n                                                </div><div>Subscription type: @type\n                                                </div><div>Subscription price: @price\n                                                </div><div>Subscription connect: @connect</div><div>\n                                                </div><div>\n                                                </div><div>\n                                                </div><div>\n                                                </div></p>', '2022-11-15 03:28:29', '2022-12-21 07:19:50'),
(693, 'buy_subscription_admin_message', '<p>A seller just buy a subscription</p><p>Subscription infos---\n                                                </p><p>Subscription type: @type\n                                                </p><p>Subscription price: @price\n                                                </p><p>Subscription connect: @connect</p><p>Seller name: @seller_name</p><p>Seller email: @seller_email</p>', '2022-11-15 03:28:29', '2022-12-21 07:19:50'),
(694, 'renew_subscription_email_subject', 'Renew Subscription', '2022-11-15 03:54:19', '2022-11-15 04:00:39'),
(695, 'renew_subscription_seller_message', '<p>Hello,</p><p>\n                                                     <div>\n                                                    </div><div>You have successfully renew a subscription.</div><div>\n                                                    </div><div>Your subscription infos---\n                                                    </div><div>Subscription type: @type\n                                                    </div><div>Subscription price: @price\n                                                    </div><div>Subscription connect: @connect</div></p>', '2022-11-15 03:54:19', '2022-12-21 07:19:50'),
(696, 'renew_subscription_admin_message', '<p>A seller just renew his subscription</p><p>\n                                                     <div>\n                                                    </div><div>Subscription infos---\n                                                    </div><div>Subscription type: @type\n                                                    </div><div>Subscription price: @price\n                                                    </div><div>Subscription connect: @connect\n                                                    </div><div>Seller name: @seller_name\n                                                    </div><div>Seller email: @seller_email</div><div>\n                                                    </div><div>\n                                                    </div><div>\n                                                    </div><div>\n                                                    </div><div>\n                                                    </div></p>', '2022-11-15 03:54:19', '2022-12-21 07:19:50'),
(697, 'payment_subscription_email_subject', 'Subscription Payment Status', '2022-11-15 05:03:43', '2022-11-15 05:03:43'),
(698, 'payment_subscription_seller_message', '<p>Dear User,</p><p>Your subscription payment status change to complete.</p>', '2022-11-15 05:03:43', '2022-11-15 05:03:43'),
(703, 'pusher_app_id', '1490920', '2022-12-15 02:45:41', '2022-12-15 03:30:38'),
(704, 'pusher_app_key', '94537f5d2aa4780d237e', '2022-12-15 02:45:41', '2022-12-15 03:30:38'),
(705, 'pusher_app_secret', 'bd561507064b1aabb272', '2022-12-15 02:45:41', '2022-12-15 03:30:38'),
(706, 'pusher_app_cluster', 'ap2', '2022-12-15 02:45:41', '2022-12-15 03:30:38'),
(707, 'pusher_app_push_notification_auth_token', 'Bearer 0C764A214C6154535DB891CBD5640012FB5F4B997242314371798110916EAFCD', '2022-12-15 02:45:41', '2022-12-15 03:30:38'),
(708, 'seller_pusher_app_push_notification_auth_token', 'Bearer A4EEE003A0AEB2B95F78FAD12EA11D8E1C281448DD8D9B33B47F6E5EC47CEDEA', '2022-12-15 02:45:41', '2022-12-15 03:30:38'),
(709, 'seller_pusher_app_push_notification_instanceId', 'fcaf9caf-509c-4611-a225-2e508593d6af', '2022-12-15 02:45:41', '2022-12-15 03:30:38'),
(710, 'pusher_app_push_notification_instanceId', 'aa8d8bb4-1030-48a1-a4ac-ad1d5fbd99d3', '2022-12-15 03:30:38', '2022-12-15 03:30:38'),
(711, 'user_register_subject34', 'New User Registration', '2022-12-21 07:19:50', '2022-12-21 07:19:50'),
(712, 'user_register_message45', '<p><p>Hello @name,</p><p></p>You have user registered as a @type </p><p> Username: @username  Email: @email<p></p> </p>', '2022-12-21 07:19:50', '2022-12-21 07:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` tinyint(4) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Auto Mobile', 'auto-mobile', NULL, 1, '2021-11-30 03:12:29', '2022-02-10 07:04:58'),
(2, 3, 'House Repair', 'house-repair', '106', 1, '2021-11-30 03:13:01', '2022-02-10 07:03:30'),
(3, 1, 'Ac Repair', 'ac-repair', '80', 1, '2021-11-30 03:13:15', '2022-02-10 07:03:15'),
(7, 5, 'Body Message', 'body-message', '110', 1, '2021-11-30 06:06:52', '2022-02-10 06:57:15'),
(8, 1, 'Repair', 'repair', '114', 1, '2022-02-01 00:55:09', '2022-02-10 06:57:05'),
(9, 2, 'Car Cleaning', 'car-cleaning', '112', 1, '2022-02-01 01:46:58', '2022-02-10 06:55:39'),
(10, 5, 'Hair Cutting', 'hair-cutting', '90', 1, '2022-02-01 02:44:56', '2022-02-10 06:55:25'),
(11, 2, 'House Cleaning', 'house-cleaning', '113', 1, '2022-02-01 03:03:50', '2022-02-10 06:55:15'),
(12, 5, 'Beauty Care', 'beauty-care', '102', 1, '2022-02-01 04:29:49', '2022-02-10 07:05:39'),
(13, 7, 'Profile Build', 'profile-build', '177', 1, '2022-04-24 00:08:23', '2022-07-22 22:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `connect` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `image` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `type`, `price`, `connect`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Elite Subscription', 'monthly', 100, 150, 1, 297, '2022-09-08 01:59:05', '2022-09-09 06:13:37'),
(2, 'Silver Subscription', 'yearly', 200, 200, 1, 298, '2022-09-08 01:59:32', '2022-09-09 06:13:29'),
(3, 'Gold Subscription', 'lifetime', 1000, 0, 1, 296, '2022-09-08 01:59:58', '2022-09-09 06:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_coupons`
--

CREATE TABLE `subscription_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double DEFAULT NULL,
  `discount_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=inactive 1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_coupons`
--

INSERT INTO `subscription_coupons` (`id`, `code`, `discount`, `discount_type`, `expire_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test10', 10, 'percentage', '2022-09-30', 1, '2022-09-03 05:44:03', '2022-09-03 05:44:32'),
(2, 'Test20', 20, 'percentage', '2022-09-30', 1, '2022-09-03 05:44:26', '2022-09-03 05:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_histories`
--

CREATE TABLE `subscription_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) NOT NULL,
  `seller_id` bigint(20) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connect` bigint(20) NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `price_with_discount` double NOT NULL DEFAULT '0',
  `expire_date` timestamp NULL DEFAULT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `via` text COLLATE utf8mb4_unicode_ci,
  `operating_system` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(11) DEFAULT NULL,
  `buyer_id` bigint(11) DEFAULT NULL,
  `seller_id` bigint(11) DEFAULT NULL,
  `service_id` bigint(11) DEFAULT NULL,
  `order_id` bigint(11) DEFAULT NULL,
  `admin_id` bigint(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `title`, `via`, `operating_system`, `user_agent`, `description`, `subject`, `status`, `priority`, `department`, `user_id`, `buyer_id`, `seller_id`, `service_id`, `order_id`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'dsdsa', NULL, NULL, NULL, 'asdasdasdas', 'asdasdasd', 'open', 'urgent', NULL, NULL, 5, 4, 19, 500, NULL, '2022-06-12 06:01:33', '2022-06-12 06:01:33'),
(2, 'TIcket Created By Vijay kumar', NULL, NULL, NULL, 'Testing', 'Testing', 'open', 'High', NULL, NULL, 397, 1, 4, NULL, NULL, '2022-06-12 13:47:16', '2022-06-12 13:47:16'),
(3, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'open', 'high', NULL, NULL, 1, 1, 56, 530, NULL, '2022-06-12 23:46:25', '2022-06-12 23:46:25'),
(4, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 41, 695, NULL, '2022-06-13 08:14:07', '2022-06-13 08:14:07'),
(5, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 41, 699, NULL, '2022-06-13 11:02:50', '2022-06-13 11:02:50'),
(6, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 49, 716, NULL, '2022-06-13 14:35:48', '2022-06-13 14:35:48'),
(7, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 53, 717, NULL, '2022-06-13 14:38:19', '2022-06-13 14:38:19'),
(8, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 50, 728, NULL, '2022-06-14 00:18:37', '2022-06-14 00:18:37'),
(9, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 53, 729, NULL, '2022-06-14 02:29:58', '2022-06-14 02:29:58'),
(10, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 50, 734, NULL, '2022-06-14 08:50:02', '2022-06-14 08:50:02'),
(11, 'TIcket Created By Christian', NULL, NULL, NULL, 'Cb\'n n\'llvzzzg nj', 'ghkk', 'open', 'Urgent', NULL, NULL, 448, 1, 41, NULL, NULL, '2022-06-14 23:48:58', '2022-06-14 23:48:58'),
(12, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nitin Sharma', 'open', 'high', NULL, NULL, 457, 1, 53, 758, NULL, '2022-06-15 03:51:56', '2022-06-15 03:51:56'),
(13, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 56, 762, NULL, '2022-06-15 09:24:42', '2022-06-15 09:24:42'),
(14, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 41, 763, NULL, '2022-06-15 09:37:46', '2022-06-15 09:37:46'),
(15, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 56, 777, NULL, '2022-06-16 00:02:35', '2022-06-16 00:02:35'),
(16, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 56, 778, NULL, '2022-06-16 00:03:55', '2022-06-16 00:03:55'),
(17, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 56, 779, NULL, '2022-06-16 00:04:49', '2022-06-16 00:04:49'),
(18, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 41, 780, NULL, '2022-06-16 02:08:12', '2022-06-16 02:08:12'),
(19, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 49, 785, NULL, '2022-06-16 09:25:46', '2022-06-16 09:25:46'),
(20, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 56, 790, NULL, '2022-06-16 10:48:25', '2022-06-16 10:48:25'),
(21, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'open', 'high', NULL, NULL, 1, 1, 56, 792, NULL, '2022-06-16 17:54:56', '2022-06-16 17:54:56'),
(22, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Sobuj Sardar', 'open', 'high', NULL, NULL, 494, 1, 41, 811, NULL, '2022-06-17 10:26:31', '2022-06-17 10:26:31'),
(23, 'TIcket Created By alper emengen', NULL, NULL, NULL, 'test', 'ndjx', 'open', 'Medium', NULL, NULL, 218, 1, 1, NULL, NULL, '2022-06-18 13:26:48', '2022-06-18 13:26:48'),
(24, 'TIcket Created By Aleksander Spiridonov', NULL, NULL, NULL, 'Fggg', 'Twssd', 'open', 'Urgent', NULL, NULL, 514, 2, 8, NULL, NULL, '2022-06-18 20:18:21', '2022-06-18 20:18:21'),
(25, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'open', 'high', NULL, NULL, 1, 1, 56, 860, NULL, '2022-06-19 11:34:52', '2022-06-19 11:34:52'),
(26, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'open', 'high', NULL, NULL, 1, 1, 56, 861, NULL, '2022-06-19 11:35:18', '2022-06-19 11:35:18'),
(27, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 56, 862, NULL, '2022-06-19 13:26:19', '2022-06-19 13:26:19'),
(28, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 56, 863, NULL, '2022-06-19 13:26:20', '2022-06-19 13:26:20'),
(29, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'open', 'high', NULL, NULL, 1, 1, 53, 869, NULL, '2022-06-19 22:25:27', '2022-06-19 22:25:27'),
(30, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'open', 'high', NULL, NULL, 1, 1, 53, 870, NULL, '2022-06-19 22:26:05', '2022-06-19 22:26:05'),
(31, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'open', 'high', NULL, NULL, 1, 1, 56, 876, NULL, '2022-06-20 08:12:39', '2022-06-20 08:12:39'),
(32, 'TIcket Created By Janine Medina', NULL, NULL, NULL, 'teste', 'meu pedido', 'open', 'Urgent', NULL, NULL, 554, 1, 1, NULL, NULL, '2022-06-21 08:23:23', '2022-06-21 08:23:23'),
(33, 'TIcket Created By saleheen', NULL, NULL, NULL, 'no problem at all', 'help neeeded', 'open', 'Urgent', NULL, NULL, 249, 1, 1, NULL, NULL, '2022-06-22 05:35:19', '2022-06-22 05:35:19'),
(34, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'open', 'high', NULL, NULL, 1, 1, 56, 922, NULL, '2022-06-22 08:17:26', '2022-06-22 08:17:26'),
(35, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 41, 948, NULL, '2022-06-24 01:38:42', '2022-06-24 01:38:42'),
(36, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 53, 971, NULL, '2022-06-24 15:20:49', '2022-06-24 15:20:49'),
(37, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 53, 972, NULL, '2022-06-24 15:21:35', '2022-06-24 15:21:35'),
(38, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'open', 'high', NULL, NULL, 1, 1, 49, 993, NULL, '2022-06-25 12:07:29', '2022-06-25 12:07:29'),
(39, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 50, 1000, NULL, '2022-06-26 05:56:37', '2022-06-26 05:56:37'),
(40, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Osana Trindade', 'open', 'high', NULL, NULL, 558, 1, 41, 1017, NULL, '2022-06-27 10:05:48', '2022-06-27 10:05:48'),
(41, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'open', 'high', NULL, NULL, 1, 1, 56, 1020, NULL, '2022-06-27 10:46:48', '2022-06-27 10:46:48'),
(42, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'open', 'high', NULL, NULL, 1, 1, 56, 1021, NULL, '2022-06-27 10:48:26', '2022-06-27 10:48:26'),
(43, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 41, 1032, NULL, '2022-06-29 05:04:18', '2022-06-29 05:04:18'),
(44, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 41, 1045, NULL, '2022-06-30 05:40:30', '2022-06-30 05:40:30'),
(45, 'TIcket Created By Long Ha', NULL, NULL, NULL, 'ndnsms', 'djsj', 'open', 'Urgent', NULL, NULL, 427, 4, 19, NULL, NULL, '2022-06-30 13:53:31', '2022-06-30 13:53:31'),
(46, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 56, 1055, NULL, '2022-06-30 17:53:11', '2022-06-30 17:53:11'),
(47, 'TIcket Created By Gabriel Inya-Agha', NULL, NULL, NULL, 'Change of Heart', 'Hello', 'open', 'Urgent', NULL, NULL, 653, 4, 17, NULL, NULL, '2022-07-02 08:18:24', '2022-07-02 08:18:24'),
(48, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 41, 1081, NULL, '2022-07-03 02:52:34', '2022-07-03 02:52:34'),
(49, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 56, 1124, NULL, '2022-07-08 04:38:50', '2022-07-08 04:38:50'),
(50, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'open', 'high', NULL, NULL, 1, 1, 50, 1146, NULL, '2022-07-11 12:34:58', '2022-07-11 12:34:58'),
(51, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 53, 1157, NULL, '2022-07-13 13:43:59', '2022-07-13 13:43:59'),
(52, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'open', 'high', NULL, NULL, 1, 1, 49, 1159, NULL, '2022-07-14 03:19:12', '2022-07-14 03:19:12'),
(53, 'TIcket Created By test', NULL, NULL, NULL, 'Explainer', 'Hii', 'open', 'Urgent', NULL, NULL, 598, 4, 17, NULL, NULL, '2022-07-16 05:56:14', '2022-07-16 05:56:14'),
(54, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'open', 'high', NULL, NULL, 1, 1, 49, 1185, NULL, '2022-07-16 15:02:31', '2022-07-16 15:02:31'),
(55, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'close', 'high', NULL, NULL, 1, 1, 53, 1193, NULL, '2022-07-17 04:07:34', '2022-08-16 17:59:13'),
(56, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'open', 'high', NULL, NULL, 1, 1, 53, 1213, NULL, '2022-07-18 06:31:24', '2022-07-18 06:31:24'),
(57, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Nazmul Hoque', 'open', 'high', NULL, NULL, 1, 1, 50, 1216, NULL, '2022-07-18 08:09:49', '2022-07-18 08:09:49'),
(58, 'TIcket Created By Rohan Gaurat', NULL, NULL, NULL, 'test', 'tesg', 'open', 'Urgent', NULL, NULL, 472, 1, 1, NULL, NULL, '2022-07-18 11:47:18', '2022-07-18 11:47:18'),
(59, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 598, 1, 41, 1233, NULL, '2022-07-21 04:37:24', '2022-07-21 04:37:24'),
(60, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 5, 1, 41, 1242, NULL, '2022-07-21 23:39:46', '2022-07-21 23:39:46'),
(61, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 1265, NULL, '2022-07-23 21:31:57', '2022-07-23 21:31:57'),
(62, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 1286, NULL, '2022-07-25 08:50:55', '2022-07-25 08:50:55'),
(63, 'TIcket Created By Trinh Thanh', NULL, NULL, NULL, 'yy', 'yyy', 'open', 'High', NULL, NULL, 735, 1, 56, NULL, NULL, '2022-07-25 11:11:47', '2022-07-25 11:11:47'),
(64, 'TIcket Created By Shivam Shukla', NULL, NULL, NULL, 'm lgofofk.  jcigig vcjfl', 'ggtvbb b b', 'open', 'Urgent', NULL, NULL, 763, 1, 7, NULL, NULL, '2022-07-26 04:02:48', '2022-07-26 04:02:48'),
(65, 'TIcket Created By test', NULL, NULL, NULL, 'ggg', 'vhbb', 'open', 'Urgent', NULL, NULL, 598, 4, 17, NULL, NULL, '2022-07-28 02:49:28', '2022-07-28 02:49:28'),
(66, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 56, 1342, NULL, '2022-07-29 09:47:08', '2022-07-29 09:47:08'),
(67, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'close', 'high', NULL, NULL, 5, 1, 41, 1343, NULL, '2022-07-29 11:42:55', '2022-07-31 02:17:01'),
(68, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 50, 1344, NULL, '2022-07-29 11:44:04', '2022-07-29 11:44:04'),
(69, 'TIcket Created By mostakim hasan emon', NULL, NULL, NULL, 'jfcv', 'hcc', 'close', 'High', NULL, NULL, 783, 1, 6, NULL, NULL, '2022-07-30 06:13:16', '2022-07-30 07:56:47'),
(70, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By test', 'open', 'high', NULL, NULL, 598, 1, 50, 1354, NULL, '2022-07-30 09:32:35', '2022-07-30 09:32:35'),
(71, 'TIcket Created By mostakim hasan emon', NULL, NULL, NULL, 'ju', 'hhj', 'close', 'Medium', NULL, NULL, 783, 1, 6, NULL, NULL, '2022-07-30 13:08:44', '2022-07-31 00:18:02'),
(72, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 1362, NULL, '2022-07-31 06:14:16', '2022-07-31 06:14:16'),
(73, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'close', 'high', NULL, NULL, 5, 1, 53, 1363, NULL, '2022-07-31 07:27:38', '2022-08-03 03:11:57'),
(74, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 56, 1392, NULL, '2022-08-02 03:06:09', '2022-08-03 12:03:34'),
(75, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Shaeleigh Figueroa', 'open', 'high', NULL, NULL, 801, 1, 53, 1417, NULL, '2022-08-03 04:40:19', '2022-08-17 10:21:43'),
(76, 'TIcket Created By Kamrul Ibn Zaman', NULL, NULL, NULL, 'isoo egseoibe hdeugibd hbs jbjjbs', 'ticket', 'open', 'Urgent', NULL, NULL, 805, 1, 56, NULL, NULL, '2022-08-04 03:31:04', '2022-08-04 03:31:04'),
(77, 'TIcket Created By Andro Kur', NULL, NULL, NULL, 'nensn', 'New', 'open', 'Urgent', NULL, NULL, 466, 1, 4, NULL, NULL, '2022-08-07 07:26:36', '2022-08-07 07:26:36'),
(78, 'TIcket Created By Andro Kur', NULL, NULL, NULL, 'ndnxn', 'bdb', 'open', 'Urgent', NULL, NULL, 466, 1, 4, NULL, NULL, '2022-08-07 07:28:49', '2022-08-07 07:28:49'),
(79, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 1464, NULL, '2022-08-07 17:25:16', '2022-08-10 13:04:09'),
(80, 'TIcket Created By MSG GODFREY', NULL, NULL, NULL, 'testing this', 'testing', 'open', 'High', NULL, NULL, 847, 1, 56, NULL, NULL, '2022-08-12 05:35:29', '2022-08-17 10:21:34'),
(81, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 1520, NULL, '2022-08-13 13:42:45', '2022-08-13 13:42:45'),
(82, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'close', 'high', NULL, NULL, 5, 1, 41, 1521, NULL, '2022-08-13 13:42:46', '2022-08-17 12:14:22'),
(83, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 56, 1545, NULL, '2022-08-16 00:50:50', '2022-08-18 09:27:07'),
(84, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 1581, NULL, '2022-08-18 11:03:28', '2022-08-19 22:04:00'),
(85, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 1582, NULL, '2022-08-18 11:04:48', '2022-08-18 11:04:48'),
(86, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 56, 1599, NULL, '2022-08-19 12:33:37', '2022-08-19 12:33:37'),
(87, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 56, 1634, NULL, '2022-08-23 07:04:46', '2022-08-23 07:04:46'),
(88, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 49, 1647, NULL, '2022-08-24 05:18:48', '2022-08-24 05:18:48'),
(89, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 1650, NULL, '2022-08-24 20:02:16', '2022-08-24 20:02:16'),
(90, 'asdfadsfsdf', NULL, NULL, NULL, 'asdfdsf', 'asdfsdfds', 'open', 'low', NULL, NULL, 5, 1, NULL, 1514, NULL, '2022-08-26 23:03:16', '2022-08-26 23:03:16'),
(91, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 1675, NULL, '2022-08-27 04:56:35', '2022-08-27 04:56:35'),
(92, 'TIcket Created By test', NULL, NULL, NULL, 'test', 'hallo', 'open', 'Urgent', NULL, NULL, 598, 1, 56, NULL, NULL, '2022-08-27 23:31:12', '2022-08-27 23:31:12'),
(93, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 1687, NULL, '2022-08-29 03:48:58', '2022-08-29 03:48:58'),
(94, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 1703, NULL, '2022-08-30 15:51:10', '2022-08-30 15:51:10'),
(95, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 56, 1704, NULL, '2022-08-30 23:15:09', '2022-08-30 23:15:09'),
(96, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Alex', 'open', 'high', NULL, NULL, 962, 1, 49, 1706, NULL, '2022-08-31 06:07:02', '2022-08-31 06:07:02'),
(97, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 56, 1707, NULL, '2022-08-31 06:18:23', '2022-08-31 06:18:23'),
(98, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 1709, NULL, '2022-08-31 07:03:07', '2022-08-31 07:03:07'),
(99, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 1712, NULL, '2022-08-31 14:39:21', '2022-08-31 14:39:21'),
(100, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 1718, NULL, '2022-09-02 00:40:12', '2022-09-02 00:40:12'),
(101, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 50, 1726, NULL, '2022-09-05 07:39:23', '2022-09-05 07:39:23'),
(102, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 50, 1727, NULL, '2022-09-05 07:45:55', '2022-09-05 07:45:55'),
(103, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 50, 1728, NULL, '2022-09-05 07:49:06', '2022-09-05 07:49:06'),
(104, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 50, 1729, NULL, '2022-09-05 07:52:55', '2022-09-05 07:52:55'),
(105, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 56, 1730, NULL, '2022-09-05 07:54:17', '2022-09-05 07:54:17'),
(106, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 1731, NULL, '2022-09-05 07:56:59', '2022-09-05 07:56:59'),
(107, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 56, 1734, NULL, '2022-09-10 07:51:20', '2022-09-10 07:51:20'),
(108, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 1741, NULL, '2022-09-10 13:43:36', '2022-09-10 13:43:36'),
(109, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 1762, NULL, '2022-09-13 23:38:40', '2022-09-13 23:38:40'),
(110, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 56, 1820, NULL, '2022-09-17 14:16:54', '2022-09-17 14:16:54'),
(111, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 1887, NULL, '2022-09-19 06:03:42', '2022-09-19 06:03:42'),
(112, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 56, 1888, NULL, '2022-09-19 06:42:23', '2022-09-19 06:42:23'),
(113, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 1983, NULL, '2022-09-20 06:38:43', '2022-09-20 06:38:43'),
(114, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 1984, NULL, '2022-09-20 06:42:29', '2022-09-20 06:42:29'),
(115, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 1985, NULL, '2022-09-20 06:43:17', '2022-09-20 06:43:17'),
(116, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 50, 2001, NULL, '2022-09-20 06:53:01', '2022-09-20 06:53:01'),
(117, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 56, 2040, NULL, '2022-09-21 14:08:01', '2022-09-21 14:08:01'),
(118, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 56, 2044, NULL, '2022-09-22 09:19:38', '2022-09-22 09:19:38'),
(119, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test', 'open', 'high', NULL, NULL, 1048, 1, 49, 2045, NULL, '2022-09-23 03:17:58', '2022-09-23 03:17:58'),
(120, 'TIcket Created By Carmine Vittiglio', NULL, NULL, NULL, 'guhhuuh', 'fyggyu', 'open', 'Urgent', NULL, NULL, 1057, 4, 17, NULL, NULL, '2022-09-23 11:05:26', '2022-09-23 11:05:26'),
(121, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 49, 2062, NULL, '2022-09-24 01:49:58', '2022-09-24 01:49:58'),
(122, 'TIcket Created By Saif Mirza', NULL, NULL, NULL, 'test', 'test', 'open', 'Medium', NULL, NULL, 1078, 1, 56, NULL, NULL, '2022-09-26 01:15:21', '2022-10-05 16:53:11'),
(123, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Kenneth', 'open', 'high', NULL, NULL, 1103, 1, 41, 2121, NULL, '2022-09-29 10:04:37', '2022-09-29 10:04:37'),
(124, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Neeraj Sharma', 'open', 'high', NULL, NULL, 1116, 1, 50, 2134, NULL, '2022-10-01 13:03:34', '2022-10-01 13:03:34'),
(125, 'TIcket Created By jack Palut', NULL, NULL, NULL, 'blaaaaaaaaa', 'test', 'open', 'Urgent', NULL, NULL, 1098, 4, 19, NULL, NULL, '2022-10-02 13:02:10', '2022-10-02 13:02:10'),
(126, 'TIcket Created By Horus Sistema', NULL, NULL, NULL, 'tes', 'yest', 'open', 'High', NULL, NULL, 1135, 4, 17, NULL, NULL, '2022-10-05 08:54:06', '2022-10-05 08:54:06'),
(127, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 2263, NULL, '2022-10-30 09:18:11', '2022-10-30 09:18:11'),
(128, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 2264, NULL, '2022-10-30 09:18:19', '2022-10-30 09:18:19'),
(129, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 2265, NULL, '2022-10-30 09:18:59', '2022-10-30 09:18:59'),
(130, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 56, 2268, NULL, '2022-10-30 14:12:19', '2022-10-30 14:12:19'),
(131, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 56, 2273, NULL, '2022-10-31 22:15:11', '2022-10-31 22:15:11'),
(132, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 56, 2274, NULL, '2022-10-31 22:16:31', '2022-10-31 22:16:31'),
(133, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 2277, NULL, '2022-11-05 04:06:35', '2022-11-05 04:06:35'),
(134, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 2278, NULL, '2022-11-05 04:17:25', '2022-11-05 04:17:25'),
(135, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 2279, NULL, '2022-11-05 04:23:14', '2022-11-05 04:23:14'),
(136, 'test sdcsjha', NULL, NULL, NULL, 'asjk najsdnaksjdas', 'asdj nasdjkasdkas', 'open', 'medium', NULL, NULL, 5, 1, NULL, 2282, NULL, '2022-11-13 03:04:27', '2022-11-13 03:04:27'),
(137, 'sjkdnaskd', NULL, NULL, NULL, 'sj nsdnsii rjweoriweorekrmweoi rwer we', 'sdjnaksjda', 'open', 'low', NULL, NULL, 5, 1, NULL, 2282, NULL, '2022-11-13 03:06:13', '2022-11-13 03:06:13'),
(138, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 50, 2286, NULL, '2022-11-15 00:51:26', '2022-11-15 00:51:26'),
(139, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 50, 2287, NULL, '2022-11-15 00:57:41', '2022-11-15 00:57:41'),
(140, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 2299, NULL, '2022-11-22 19:49:06', '2022-11-22 19:49:06'),
(141, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 49, 2304, NULL, '2022-11-23 03:04:18', '2022-11-23 03:04:18'),
(142, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 49, 2305, NULL, '2022-11-23 03:05:07', '2022-11-23 09:37:08'),
(143, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 50, 2322, NULL, '2022-11-24 12:26:11', '2022-11-24 12:26:11'),
(144, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 2340, NULL, '2022-11-25 23:02:29', '2022-11-27 06:22:18'),
(145, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 50, 2358, NULL, '2022-11-29 12:40:13', '2022-11-29 12:40:13'),
(146, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 50, 2359, NULL, '2022-11-29 12:40:14', '2022-11-29 12:40:14'),
(147, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 2370, NULL, '2022-12-01 14:52:52', '2022-12-01 14:52:52'),
(148, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'close', 'high', NULL, NULL, 5, 1, 53, 2376, NULL, '2022-12-02 07:14:23', '2022-12-03 09:44:08'),
(149, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 2394, NULL, '2022-12-04 21:43:08', '2022-12-04 21:43:08'),
(150, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 2399, NULL, '2022-12-05 04:10:17', '2022-12-05 04:10:17'),
(151, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 2400, NULL, '2022-12-05 04:11:13', '2022-12-05 04:11:13'),
(152, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 2401, NULL, '2022-12-05 04:12:18', '2022-12-05 04:12:18'),
(153, 'TIcket Created By VANIS Kaptué', NULL, NULL, NULL, 'https://www.lolinez.com/?https://codecanyon.net/item/neoflex-movie-subscription-portal-cms/22817707', 'ieje', 'open', 'Urgent', NULL, NULL, 1049, 1, 56, NULL, NULL, '2022-12-05 08:29:36', '2022-12-06 07:38:54'),
(154, 'TIcket Created By emmanuel ngambi', NULL, NULL, NULL, 'need help', 'help', 'open', 'Urgent', NULL, NULL, 1289, 1, 16, NULL, NULL, '2022-12-06 22:33:10', '2022-12-06 22:33:10'),
(155, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Mary Michael', 'open', 'high', NULL, NULL, 1297, 1, 53, 2419, NULL, '2022-12-08 02:32:09', '2022-12-08 02:32:09'),
(156, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 49, 2429, NULL, '2022-12-11 16:07:29', '2022-12-11 16:07:29'),
(157, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 49, 2431, NULL, '2022-12-12 11:54:19', '2022-12-12 11:54:19'),
(158, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 49, 2432, NULL, '2022-12-12 11:54:42', '2022-12-12 11:54:42'),
(159, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 50, 2484, NULL, '2022-12-23 14:20:42', '2022-12-23 14:20:42'),
(160, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 50, 2485, NULL, '2022-12-23 14:21:41', '2022-12-23 14:21:41'),
(161, 'TIcket Created By Test Buyer', NULL, NULL, NULL, 'ggg', 'okk', 'open', 'Urgent', NULL, NULL, 5, 1, 2, NULL, NULL, '2022-12-25 05:56:47', '2022-12-25 05:56:47'),
(162, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 2501, NULL, '2022-12-25 17:16:23', '2022-12-25 17:16:23'),
(163, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 49, 2526, NULL, '2022-12-26 19:41:34', '2022-12-26 19:41:34'),
(164, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 53, 2530, NULL, '2022-12-27 03:27:21', '2022-12-27 03:27:21'),
(165, 'New Order', NULL, NULL, NULL, NULL, 'Order Created By Test Buyer', 'open', 'high', NULL, NULL, 5, 1, 41, 2539, NULL, '2022-12-29 04:31:59', '2022-12-29 04:31:59'),
(166, 'TIcket Created By Anil Nayak', NULL, NULL, NULL, 'nnslocn88xd', 'hhdook', 'open', 'High', NULL, NULL, 1328, 1, 3, NULL, NULL, '2022-12-29 11:41:51', '2022-12-29 11:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_messages`
--

CREATE TABLE `support_ticket_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `notify` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax` double NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `tax`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 8, 4, '2022-09-05 05:54:15', '2022-09-05 05:54:24'),
(2, 7, 1, '2022-09-05 05:55:14', '2022-09-05 05:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `to_do_lists`
--

CREATE TABLE `to_do_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `to_do_lists`
--

INSERT INTO `to_do_lists` (`id`, `title`, `description`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test To do', 'In it except to so temper mutual tastes mothe In it except to so', 1, 1, '2022-01-26 02:41:31', '2022-03-02 01:20:15'),
(2, 'Line chart will', 'In it except to so temper mutual tastes mothe In it except to so', 1, 0, '2022-01-26 02:43:06', '2022-02-02 22:32:45'),
(3, 'In it except to', 'In it except to so temper mutual tastes mothe In it except to so', 1, 1, '2022-01-26 02:50:53', '2022-03-02 01:20:21'),
(5, 'In it except to so', 'In it except to so temper mutual tastes mothe In it except to so', 1, 0, '2022-01-26 03:31:26', '2022-02-02 22:32:26'),
(6, 'Test to do', 'Test to do Test to do', 2, 0, '2022-01-27 02:51:08', '2022-01-27 02:51:08'),
(7, 'Test To do Two', 'Hi there,,, here is your account credentials....', 2, 0, '2022-01-27 03:02:18', '2022-01-27 03:02:18'),
(8, 'awetfraf', 'In it except to so temper mutual tastes mothe In it except to so temper mutual tastes mothe', 5, 0, '2022-02-02 07:01:41', '2022-02-02 07:01:41'),
(9, 'dsghsdgh', 'In it except to so temper mutual tastes mothe In it except to', 5, 0, '2022-02-02 07:02:20', '2022-02-02 07:02:20'),
(10, 'Test To do', 'In it except to so temper mutual tastes mothe In it except to so', 1, 1, '2022-03-02 01:26:16', '2022-03-02 17:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_background` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` int(11) NOT NULL DEFAULT '0' COMMENT '0=seller, 1=buyer',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '0=inactive, 1=active',
  `terms_condition` int(11) NOT NULL DEFAULT '1',
  `address` text COLLATE utf8mb4_unicode_ci,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(191) DEFAULT NULL,
  `email_verified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verify_token` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fb_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tw_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `go_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `li_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twi_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dr_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `re_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `phone`, `image`, `profile_background`, `service_city`, `service_area`, `user_type`, `user_status`, `terms_condition`, `address`, `state`, `about`, `post_code`, `country_id`, `email_verified`, `email_verify_token`, `remember_token`, `facebook_id`, `google_id`, `country_code`, `created_at`, `updated_at`, `fb_url`, `tw_url`, `go_url`, `li_url`, `yo_url`, `in_url`, `twi_url`, `pi_url`, `dr_url`, `re_url`) VALUES
(1, 'Test Seller', 'demo@bytesed.com', 'test_seller', '$2y$10$DINtouc8XKjibGsFKYYPduBgUnnWF6OJBiozRnN7kGfnkTZPvoNdW', '078361222', '120', '121', '7', '21', 0, 1, 1, 'Dhanmondi Kalabagan Khulna', '7', 'It is a long established fact that a reader will be distracted by the readable content of a page. It is a long established fact that a reader will be distracted by the readable content of a page', '201301', 6, '1', 'qw23QrtQ', '1dCMHs4qObBN4X3UfWfvne51rCzdkjd9si86hzCOgQD39lj4y9W4llezCFg4', NULL, NULL, 'KH', '2021-12-05 07:11:43', '2022-12-30 04:05:26', '#', '#', NULL, NULL, '#', '#', NULL, NULL, NULL, NULL),
(2, 'Md Mahmud', 'haulakaula@gmail.com', 'mahmud', '$2y$10$VW9DGTk2nvnrmMUhr8MVb.AAIxeZPnjedREM8KvbUtsYqB8oWVR0S', '01713808080', '22', NULL, '3', '6', 0, 1, 1, 'Sotheerm Road-12/A', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '1032', 3, '1', 'qw23QrtY', 'RUZrBvSLNGbmjK0Y1N7tsUMdq8N8YRgLTwjSTrx71AxMT8YwofwTVMMLN54R', NULL, NULL, NULL, '2021-12-05 07:13:59', '2022-02-09 04:32:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Md Sohan', 'testdoc2021@gmail.com', 'sohan', '$2y$10$fwaADkuysNqI1Jq9FHWJ.u/6dFwybTKyNf7CyrJbUPZeJxg9sXg22', '01713606060', '65', '122', '1', '2', 1, 1, 1, '49/3, Dhaka', NULL, 'Hi this is Sohan from Bangladesh', '1203', 1, '1', 'YwO3QPtQ', 'AS702bl8XTRm6eB45MkrnHujMpNrpMzphkfRM9sa3AGM2DkqHIOA1JdgblAe', NULL, NULL, NULL, '2021-12-05 07:15:03', '2022-02-20 15:31:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Md Shahadat', 'shahadat@gmail.com', 'shahadat', '$2y$10$fwaADkuysNqI1Jq9FHWJ.u/6dFwybTKyNf7CyrJbUPZeJxg9sXg22', '+11955627635', '97', '1', '1', '1', 0, 1, 1, '90/4, New Dhaka', NULL, 'Hi This is Shahadat From Bangladesh', '1378', 1, '1', 'B9a2iZ4u', '2xofbQdDJaqdIZgRJlyTQZoJXRZ9wRDSIXmuDgz0niGQ7bNOCFShYtaPs11n', NULL, NULL, NULL, '2022-02-01 03:48:09', '2022-02-01 03:55:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Test Buyer', 'test@gmail.com', 'test_buyer', '$2y$10$1aDrr46Lsjd8HulO3l5Q0uqQIEMAC6DeW7MSh.eth/aXJT6n642J2', '098671007', '97', '167', '1', '1', 1, 1, 1, 'asfffd', '1', NULL, 'asas', 1, '1', 'BUidWUT7', 'Mox37682DPccuaetgMgwAWLZuLiPqVYEknPOxb0Fjbd3ohII81EXppVi7BZF', NULL, NULL, 'IN', '2022-02-09 01:10:01', '2022-12-30 10:54:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) NOT NULL,
  `balance` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_histories`
--

CREATE TABLE `wallet_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manual_payment_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `widget_order` int(11) DEFAULT NULL,
  `widget_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `widget_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_area`, `widget_order`, `widget_location`, `widget_name`, `widget_content`, `created_at`, `updated_at`) VALUES
(52, NULL, 4, 'footer', 'ContactInfoWidget', 'a:13:{s:2:\"id\";s:2:\"52\";s:11:\"widget_name\";s:17:\"ContactInfoWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"4\";s:5:\"title\";s:12:\"Contact Info\";s:7:\"address\";s:26:\"41/1, Hilton Mall, NY City\";s:12:\"address_icon\";s:21:\"las la-map-marker-alt\";s:5:\"phone\";s:13:\"+012-78901234\";s:10:\"phone_icon\";s:17:\"las la-mobile-alt\";s:5:\"email\";s:13:\"help@mail.com\";s:10:\"email_icon\";s:15:\"las la-envelope\";s:28:\"contact_page_contact_info_01\";a:2:{s:5:\"icon_\";a:4:{i:0;s:17:\"lab la-facebook-f\";i:1;s:14:\"lab la-twitter\";i:2;s:16:\"lab la-instagram\";i:3;s:14:\"lab la-youtube\";}s:4:\"url_\";a:4:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";}}}', '2021-10-03 07:18:35', '2022-01-15 08:30:11'),
(75, NULL, 1, 'footer_style_two', 'FooterStyleTwoWidget', 'a:12:{s:2:\"id\";s:2:\"75\";s:11:\"widget_name\";s:20:\"FooterStyleTwoWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:16:\"footer_style_two\";s:12:\"widget_order\";s:1:\"1\";s:17:\"email_title_en_GB\";s:5:\"Email\";s:11:\"email_en_GB\";s:16:\"contact@mail.com\";s:18:\"follow_title_en_GB\";s:9:\"Follow me\";s:14:\"email_title_ar\";s:29:\"بريد الالكتروني\";s:8:\"email_ar\";s:16:\"contact@mail.com\";s:15:\"follow_title_ar\";s:12:\"اتبعني\";s:9:\"site_logo\";s:2:\"57\";}', '2021-10-27 07:07:26', '2021-10-27 07:11:36'),
(81, NULL, 1, 'style_one_footer', 'LogoWidget', 'a:5:{s:11:\"widget_name\";s:10:\"LogoWidget\";s:11:\"widget_type\";s:3:\"new\";s:15:\"widget_location\";s:16:\"style_one_footer\";s:12:\"widget_order\";s:1:\"1\";s:9:\"site_logo\";s:2:\"57\";}', '2021-10-27 08:55:49', '2021-10-27 08:55:49'),
(82, NULL, 2, 'style_one_footer', 'NavigationMenuWidget', 'a:7:{s:11:\"widget_name\";s:20:\"NavigationMenuWidget\";s:11:\"widget_type\";s:3:\"new\";s:15:\"widget_location\";s:16:\"style_one_footer\";s:12:\"widget_order\";s:1:\"2\";s:18:\"widget_title_en_GB\";N;s:15:\"widget_title_ar\";N;s:7:\"menu_id\";s:1:\"2\";}', '2021-10-27 08:56:25', '2021-10-27 08:56:25'),
(83, NULL, 2, 'footer_three', 'AboutUsWidget', 'a:8:{s:2:\"id\";s:2:\"83\";s:11:\"widget_name\";s:13:\"AboutUsWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:12:\"footer_three\";s:12:\"widget_order\";s:1:\"1\";s:9:\"site_logo\";s:2:\"57\";s:17:\"description_en_GB\";s:115:\"One advanced diverted domestic repeated bringing you old. Possible procured her trifling laughter thoughts property\";s:14:\"description_ar\";s:173:\"متقدم واحد محوّل محلي متكرر يجلب لك الشيخوخة. من الممكن الحصول على ممتلكات تافهة من أفكار الضحك\";}', '2021-10-27 22:32:16', '2021-11-13 00:29:31'),
(86, NULL, 5, 'footer_three', 'ContactInfoWidget', 'a:12:{s:11:\"widget_name\";s:17:\"ContactInfoWidget\";s:11:\"widget_type\";s:3:\"new\";s:15:\"widget_location\";s:12:\"footer_three\";s:12:\"widget_order\";s:1:\"4\";s:18:\"widget_title_en_GB\";s:10:\"Contact us\";s:14:\"location_en_GB\";s:28:\"66 Brooklyn street, New York\";s:11:\"phone_en_GB\";s:11:\"01847111881\";s:11:\"email_en_GB\";s:18:\"sohan@xgenious.com\";s:15:\"widget_title_ar\";s:15:\"اتصل بنا\";s:11:\"location_ar\";s:28:\"66 Brooklyn street, New York\";s:8:\"phone_ar\";s:12:\"+18274737136\";s:8:\"email_ar\";s:18:\"sohan@xgenious.com\";}', '2021-10-27 22:34:39', '2021-11-13 00:29:31'),
(99, NULL, 1, 'footer', 'AboutUsWidget', 'a:8:{s:2:\"id\";s:2:\"99\";s:11:\"widget_name\";s:13:\"AboutUsWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"1\";s:11:\"description\";s:186:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.\";s:5:\"image\";s:2:\"64\";s:7:\"image_2\";s:3:\"124\";}', '2021-11-24 07:31:12', '2022-02-07 03:15:10'),
(101, NULL, 2, 'footer', 'CommunityWidget', 'a:7:{s:2:\"id\";s:3:\"101\";s:11:\"widget_name\";s:15:\"CommunityWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"2\";s:5:\"title\";s:9:\"Community\";s:28:\"contact_page_contact_info_01\";a:2:{s:9:\"com_text_\";a:4:{i:0;s:15:\"Become A Seller\";i:1;s:14:\"Become A Buyer\";i:2;s:12:\"Join With Us\";i:3;s:6:\"Events\";}s:4:\"url_\";a:4:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";}}}', '2021-11-24 23:43:46', '2022-01-15 08:02:24'),
(106, NULL, 3, 'footer', 'Category', 'a:5:{s:11:\"widget_name\";s:8:\"Category\";s:11:\"widget_type\";s:3:\"new\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"3\";s:5:\"title\";s:8:\"Category\";}', '2022-01-15 06:27:46', '2022-01-15 08:30:07'),
(108, NULL, 1, 'copyright', 'PrivacyPolicy', 'a:6:{s:2:\"id\";s:3:\"108\";s:11:\"widget_name\";s:13:\"PrivacyPolicy\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:9:\"copyright\";s:12:\"widget_order\";s:1:\"1\";s:28:\"contact_page_contact_info_01\";a:2:{s:6:\"title_\";a:2:{i:0;s:14:\"Privacy Policy\";i:1;s:18:\"Terms & Conditions\";}s:4:\"url_\";a:2:{i:0;s:14:\"privacy-policy\";i:1;s:20:\"terms-and-conditions\";}}}', '2022-01-15 22:02:14', '2022-02-11 22:31:59'),
(109, NULL, 3, 'copyright', 'PaymentGateway', 'a:6:{s:2:\"id\";s:3:\"109\";s:11:\"widget_name\";s:14:\"PaymentGateway\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:9:\"copyright\";s:12:\"widget_order\";s:1:\"2\";s:28:\"contact_page_contact_info_01\";a:2:{s:6:\"image_\";a:4:{i:0;s:2:\"61\";i:1;s:2:\"60\";i:2;s:2:\"62\";i:3;s:2:\"63\";}s:4:\"url_\";a:4:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";}}}', '2022-01-15 22:19:30', '2022-01-15 22:32:15'),
(110, NULL, 2, 'copyright', 'CopyrightText', 'a:6:{s:2:\"id\";s:3:\"110\";s:11:\"widget_name\";s:13:\"CopyrightText\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:9:\"copyright\";s:12:\"widget_order\";s:1:\"2\";s:5:\"title\";s:31:\"All copyright (C) 2022 Reserved\";}', '2022-01-15 22:32:21', '2022-02-07 04:57:24'),
(112, NULL, 1, 'footer2', 'CommunityWidget', 'a:7:{s:2:\"id\";s:3:\"112\";s:11:\"widget_name\";s:15:\"CommunityWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:7:\"footer2\";s:12:\"widget_order\";s:1:\"1\";s:5:\"title\";s:6:\"werwer\";s:28:\"contact_page_contact_info_01\";a:2:{s:9:\"com_text_\";a:1:{i:0;s:5:\"ewrwe\";}s:4:\"url_\";a:1:{i:0;s:1:\"#\";}}}', '2022-01-16 00:05:30', '2022-01-16 00:06:34'),
(113, NULL, 2, 'footer_one', 'AboutUsWidget', 'a:7:{s:2:\"id\";s:3:\"113\";s:11:\"widget_name\";s:13:\"AboutUsWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:10:\"footer_one\";s:12:\"widget_order\";s:1:\"1\";s:11:\"description\";s:186:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.\";s:5:\"image\";s:3:\"126\";}', '2022-02-07 03:30:09', '2022-02-17 16:10:08'),
(114, NULL, 1, 'footer_two', 'AboutUsWidget', 'a:7:{s:2:\"id\";s:3:\"114\";s:11:\"widget_name\";s:13:\"AboutUsWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:10:\"footer_two\";s:12:\"widget_order\";s:1:\"1\";s:11:\"description\";s:186:\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.\";s:5:\"image\";s:3:\"124\";}', '2022-02-07 03:30:23', '2022-02-07 03:47:24'),
(115, NULL, 3, 'footer_one', 'CommunityWidget', 'a:10:{s:2:\"id\";s:3:\"115\";s:11:\"widget_name\";s:15:\"CommunityWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:10:\"footer_one\";s:12:\"widget_order\";s:1:\"3\";s:5:\"title\";s:9:\"Community\";s:12:\"seller_title\";s:15:\"Become A Seller\";s:11:\"seller_link\";N;s:11:\"buyer_title\";s:14:\"Become A Buyer\";s:10:\"buyer_link\";N;}', '2022-02-07 03:36:30', '2022-03-03 15:39:29'),
(116, NULL, 4, 'footer_one', 'Category', 'a:9:{s:2:\"id\";s:3:\"116\";s:11:\"widget_name\";s:8:\"Category\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:10:\"footer_one\";s:12:\"widget_order\";s:1:\"4\";s:5:\"title\";s:8:\"Category\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"5\";}', '2022-02-07 03:39:07', '2022-03-03 14:17:03'),
(117, NULL, 5, 'footer_one', 'ContactInfoWidget', 'a:13:{s:2:\"id\";s:3:\"117\";s:11:\"widget_name\";s:17:\"ContactInfoWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:10:\"footer_one\";s:12:\"widget_order\";s:1:\"4\";s:5:\"title\";s:12:\"Contact Info\";s:7:\"address\";s:26:\"41/1, Hilton Mall, NY City\";s:12:\"address_icon\";s:21:\"las la-map-marker-alt\";s:5:\"phone\";s:13:\"+012-78901234\";s:10:\"phone_icon\";s:17:\"las la-mobile-alt\";s:5:\"email\";s:16:\"example@mail.com\";s:10:\"email_icon\";s:15:\"las la-envelope\";s:28:\"contact_page_contact_info_01\";a:2:{s:5:\"icon_\";a:4:{i:0;s:17:\"lab la-facebook-f\";i:1;s:14:\"lab la-twitter\";i:2;s:16:\"lab la-instagram\";i:3;s:14:\"lab la-youtube\";}s:4:\"url_\";a:4:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";}}}', '2022-02-07 03:45:20', '2022-02-17 16:10:09'),
(118, NULL, 2, 'footer_two', 'CommunityWidget', 'a:10:{s:2:\"id\";s:3:\"118\";s:11:\"widget_name\";s:15:\"CommunityWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:10:\"footer_two\";s:12:\"widget_order\";s:1:\"2\";s:5:\"title\";s:9:\"Community\";s:12:\"seller_title\";s:15:\"Become A Seller\";s:11:\"seller_link\";N;s:11:\"buyer_title\";s:14:\"Become A Buyer\";s:10:\"buyer_link\";N;}', '2022-02-07 03:48:47', '2022-03-03 15:40:20'),
(119, NULL, 3, 'footer_two', 'Category', 'a:9:{s:2:\"id\";s:3:\"119\";s:11:\"widget_name\";s:8:\"Category\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:10:\"footer_two\";s:12:\"widget_order\";s:1:\"3\";s:5:\"title\";s:8:\"Category\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"5\";}', '2022-02-07 03:49:42', '2022-03-03 14:16:20'),
(120, NULL, 4, 'footer_two', 'ContactInfoWidget', 'a:13:{s:2:\"id\";s:3:\"120\";s:11:\"widget_name\";s:17:\"ContactInfoWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:10:\"footer_two\";s:12:\"widget_order\";s:1:\"4\";s:5:\"title\";s:12:\"Contact Info\";s:7:\"address\";s:26:\"41/1, Hilton Mall, NY City\";s:12:\"address_icon\";s:21:\"las la-map-marker-alt\";s:5:\"phone\";s:13:\"+012-78901234\";s:10:\"phone_icon\";s:13:\"las la-mobile\";s:5:\"email\";s:16:\"example@mail.com\";s:10:\"email_icon\";s:15:\"las la-envelope\";s:28:\"contact_page_contact_info_01\";a:2:{s:5:\"icon_\";a:4:{i:0;s:17:\"lab la-facebook-f\";i:1;s:14:\"lab la-twitter\";i:2;s:16:\"lab la-instagram\";i:3;s:14:\"lab la-youtube\";}s:4:\"url_\";a:4:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";}}}', '2022-02-07 03:53:34', '2022-02-07 03:55:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountdeactives`
--
ALTER TABLE `accountdeactives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `admin_commissions`
--
ALTER TABLE `admin_commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amount_settings`
--
ALTER TABLE `amount_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer_jobs`
--
ALTER TABLE `buyer_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_font_imports`
--
ALTER TABLE `custom_font_imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edit_service_histories`
--
ALTER TABLE `edit_service_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_services`
--
ALTER TABLE `extra_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_builders`
--
ALTER TABLE `form_builders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_requests`
--
ALTER TABLE `job_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_request_conversations`
--
ALTER TABLE `job_request_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_chat_messages`
--
ALTER TABLE `live_chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_uploads`
--
ALTER TABLE `media_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `online_service_faqs`
--
ALTER TABLE `online_service_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_additionals`
--
ALTER TABLE `order_additionals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_complete_declines`
--
ALTER TABLE `order_complete_declines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_includes`
--
ALTER TABLE `order_includes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_builders`
--
ALTER TABLE `page_builders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payout_requests`
--
ALTER TABLE `payout_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_chat_messages`
--
ALTER TABLE `report_chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_subscriptions`
--
ALTER TABLE `seller_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_verifies`
--
ALTER TABLE `seller_verifies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_view_jobs`
--
ALTER TABLE `seller_view_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serviceadditionals`
--
ALTER TABLE `serviceadditionals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicebenifits`
--
ALTER TABLE `servicebenifits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serviceincludes`
--
ALTER TABLE `serviceincludes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_areas`
--
ALTER TABLE `service_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_cities`
--
ALTER TABLE `service_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_coupons`
--
ALTER TABLE `service_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_options`
--
ALTER TABLE `static_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_coupons`
--
ALTER TABLE `subscription_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_histories`
--
ALTER TABLE `subscription_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket_messages`
--
ALTER TABLE `support_ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `to_do_lists`
--
ALTER TABLE `to_do_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_histories`
--
ALTER TABLE `wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountdeactives`
--
ALTER TABLE `accountdeactives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_commissions`
--
ALTER TABLE `admin_commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `amount_settings`
--
ALTER TABLE `amount_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `buyer_jobs`
--
ALTER TABLE `buyer_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `custom_font_imports`
--
ALTER TABLE `custom_font_imports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `edit_service_histories`
--
ALTER TABLE `edit_service_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extra_services`
--
ALTER TABLE `extra_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_builders`
--
ALTER TABLE `form_builders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_requests`
--
ALTER TABLE `job_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_request_conversations`
--
ALTER TABLE `job_request_conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `live_chat_messages`
--
ALTER TABLE `live_chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_uploads`
--
ALTER TABLE `media_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `online_service_faqs`
--
ALTER TABLE `online_service_faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_additionals`
--
ALTER TABLE `order_additionals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_complete_declines`
--
ALTER TABLE `order_complete_declines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_includes`
--
ALTER TABLE `order_includes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `page_builders`
--
ALTER TABLE `page_builders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `payout_requests`
--
ALTER TABLE `payout_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5991;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_chat_messages`
--
ALTER TABLE `report_chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `seller_subscriptions`
--
ALTER TABLE `seller_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_verifies`
--
ALTER TABLE `seller_verifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_view_jobs`
--
ALTER TABLE `seller_view_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serviceadditionals`
--
ALTER TABLE `serviceadditionals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `servicebenifits`
--
ALTER TABLE `servicebenifits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `serviceincludes`
--
ALTER TABLE `serviceincludes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `service_areas`
--
ALTER TABLE `service_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `service_cities`
--
ALTER TABLE `service_cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `service_coupons`
--
ALTER TABLE `service_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `static_options`
--
ALTER TABLE `static_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=713;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscription_coupons`
--
ALTER TABLE `subscription_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscription_histories`
--
ALTER TABLE `subscription_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `support_ticket_messages`
--
ALTER TABLE `support_ticket_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `to_do_lists`
--
ALTER TABLE `to_do_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1375;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_histories`
--
ALTER TABLE `wallet_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
