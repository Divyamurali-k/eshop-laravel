-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 16, 2024 at 04:46 AM
-- Server version: 5.7.24
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `created_at`, `updated_at`) VALUES
(1, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(2, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(3, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(4, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(5, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(6, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(7, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(8, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(9, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(10, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(11, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(12, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(13, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(14, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(15, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(16, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(17, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(18, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(19, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(20, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(21, '2024-08-13 03:02:49', '2024-08-13 03:02:49'),
(22, '2024-08-15 23:15:07', '2024-08-15 23:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imageable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `images_imageable_type_imageable_id_index` (`imageable_type`,`imageable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `path`, `created_at`, `updated_at`, `imageable_type`, `imageable_id`) VALUES
(1, 'img/users/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 1),
(2, 'img/users/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 2),
(3, 'img/users/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 3),
(4, 'img/users/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 4),
(5, 'img/users/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 5),
(6, 'img/users/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 6),
(7, 'img/users/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 7),
(8, 'img/users/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 8),
(9, 'img/users/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 9),
(10, 'img/users/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 10),
(11, 'img/users/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 11),
(12, 'img/users/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 12),
(13, 'img/users/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 13),
(14, 'img/users/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 14),
(15, 'img/users/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 15),
(16, 'img/users/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 16),
(17, 'img/users/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 17),
(18, 'img/users/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 18),
(19, 'img/users/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 19),
(20, 'img/users/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\User', 20),
(21, 'img/products/8.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 1),
(22, 'img/products/6.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 1),
(23, 'img/products/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 2),
(24, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 2),
(25, 'img/products/4.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 2),
(26, 'img/products/4.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 3),
(27, 'img/products/8.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 3),
(28, 'img/products/7.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 4),
(29, 'img/products/4.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 4),
(30, 'img/products/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 4),
(31, 'img/products/8.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 5),
(32, 'img/products/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 5),
(33, 'img/products/9.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 5),
(34, 'img/products/8.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 5),
(35, 'img/products/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 6),
(36, 'img/products/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 6),
(37, 'img/products/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 7),
(38, 'img/products/8.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 7),
(39, 'img/products/4.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 7),
(40, 'img/products/5.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 7),
(41, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 8),
(42, 'img/products/5.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 8),
(43, 'img/products/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 9),
(44, 'img/products/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 9),
(45, 'img/products/7.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 9),
(46, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 10),
(47, 'img/products/9.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 10),
(48, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 10),
(49, 'img/products/4.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 10),
(50, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 11),
(51, 'img/products/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 11),
(52, 'img/products/4.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 11),
(53, 'img/products/7.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 11),
(54, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 12),
(55, 'img/products/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 12),
(56, 'img/products/9.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 13),
(57, 'img/products/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 13),
(58, 'img/products/6.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 13),
(59, 'img/products/9.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 13),
(60, 'img/products/10.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 14),
(61, 'img/products/6.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 14),
(62, 'img/products/8.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 14),
(63, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 14),
(64, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 15),
(65, 'img/products/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 15),
(66, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 15),
(67, 'img/products/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 15),
(68, 'img/products/9.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 16),
(69, 'img/products/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 16),
(70, 'img/products/9.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 17),
(71, 'img/products/4.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 17),
(72, 'img/products/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 17),
(73, 'img/products/4.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 17),
(74, 'img/products/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 18),
(75, 'img/products/7.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 18),
(76, 'img/products/4.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 18),
(77, 'img/products/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 18),
(78, 'img/products/7.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 19),
(79, 'img/products/10.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 19),
(80, 'img/products/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 20),
(81, 'img/products/7.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 20),
(82, 'img/products/9.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 20),
(83, 'img/products/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 21),
(84, 'img/products/6.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 21),
(85, 'img/products/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 21),
(86, 'img/products/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 22),
(87, 'img/products/10.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 22),
(88, 'img/products/6.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 22),
(89, 'img/products/9.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 22),
(90, 'img/products/10.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 23),
(91, 'img/products/7.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 23),
(92, 'img/products/5.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 23),
(93, 'img/products/6.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 23),
(94, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 24),
(95, 'img/products/7.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 24),
(96, 'img/products/4.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 24),
(97, 'img/products/10.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 25),
(98, 'img/products/7.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 25),
(99, 'img/products/5.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 25),
(100, 'img/products/5.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 26),
(101, 'img/products/6.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 26),
(102, 'img/products/9.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 27),
(103, 'img/products/9.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 27),
(104, 'img/products/4.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 27),
(105, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 28),
(106, 'img/products/10.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 28),
(107, 'img/products/6.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 28),
(108, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 29),
(109, 'img/products/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 29),
(110, 'img/products/7.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 30),
(111, 'img/products/8.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 30),
(112, 'img/products/7.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 30),
(113, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 30),
(114, 'img/products/5.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 31),
(115, 'img/products/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 31),
(116, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 32),
(117, 'img/products/5.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 32),
(118, 'img/products/7.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 32),
(119, 'img/products/5.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 32),
(120, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 33),
(121, 'img/products/10.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 33),
(122, 'img/products/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 33),
(123, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 34),
(124, 'img/products/10.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 34),
(125, 'img/products/9.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 34),
(126, 'img/products/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 35),
(127, 'img/products/10.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 35),
(128, 'img/products/7.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 36),
(129, 'img/products/3.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 36),
(130, 'img/products/4.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 36),
(131, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 36),
(132, 'img/products/10.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 37),
(133, 'img/products/9.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 37),
(134, 'img/products/6.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 37),
(135, 'img/products/8.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 38),
(136, 'img/products/10.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 38),
(137, 'img/products/6.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 38),
(138, 'img/products/8.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 39),
(139, 'img/products/2.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 39),
(140, 'img/products/4.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 40),
(141, 'img/products/1.jpg', '2024-08-13 03:02:03', '2024-08-13 03:02:03', 'App\\Models\\Product', 40),
(142, 'img/products/10.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 41),
(143, 'img/products/5.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 41),
(144, 'img/products/5.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 41),
(145, 'img/products/10.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 41),
(146, 'img/products/10.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 42),
(147, 'img/products/7.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 42),
(148, 'img/products/2.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 42),
(149, 'img/products/4.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 42),
(150, 'img/products/5.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 43),
(151, 'img/products/10.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 43),
(152, 'img/products/1.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 43),
(153, 'img/products/3.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 43),
(154, 'img/products/5.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 44),
(155, 'img/products/3.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 44),
(156, 'img/products/6.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 45),
(157, 'img/products/7.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 45),
(158, 'img/products/5.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 45),
(159, 'img/products/6.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 46),
(160, 'img/products/10.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 46),
(161, 'img/products/4.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 47),
(162, 'img/products/6.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 47),
(163, 'img/products/4.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 47),
(164, 'img/products/3.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 47),
(165, 'img/products/9.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 48),
(166, 'img/products/5.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 48),
(167, 'img/products/2.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 48),
(168, 'img/products/1.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 49),
(169, 'img/products/9.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 49),
(170, 'img/products/9.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 49),
(171, 'img/products/5.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 49),
(172, 'img/products/10.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 50),
(173, 'img/products/2.jpg', '2024-08-13 03:02:04', '2024-08-13 03:02:04', 'App\\Models\\Product', 50);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_31_080038_create_products_table', 1),
(6, '2024_08_02_094940_create_images_table', 1),
(7, '2024_08_02_095436_create_carts_table', 1),
(8, '2024_08_02_095445_create_orders_table', 1),
(9, '2024_08_02_095500_create_payments_table', 1),
(10, '2024_08_05_073433_create_productables_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_customer_id_foreign` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `status`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'paid', 16, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(2, 'paid', 7, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(3, 'pending', 1, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(4, 'paid', 18, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(5, 'pending', 14, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(6, 'paid', 20, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(7, 'paid', 10, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(8, 'shipped', 20, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(9, 'shipped', 4, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(10, 'paid', 14, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(11, 'paid', 22, '2024-08-13 05:36:56', '2024-08-13 05:37:23'),
(12, 'paid', 24, '2024-08-15 23:15:19', '2024-08-15 23:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `amount` double(8,2) UNSIGNED NOT NULL,
  `payed_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_order_id_foreign` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `amount`, `payed_at`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 55.55, '2024-01-27 18:46:52', 1, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(2, 191.00, '2024-05-24 07:08:00', 2, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(3, 187.60, '2024-02-07 03:24:07', 3, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(4, 38.86, '2024-07-26 03:59:02', 4, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(5, 76.72, '2024-07-12 01:48:42', 5, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(6, 166.40, '2024-02-08 18:07:58', 6, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(7, 29.42, '2024-04-12 02:07:00', 7, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(8, 168.20, '2023-12-30 11:12:52', 8, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(9, 243.74, '2024-04-29 03:20:32', 9, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(10, 110.84, '2024-07-24 20:55:17', 10, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(11, 27.05, '2024-08-13 05:37:23', 11, '2024-08-13 05:37:23', '2024-08-13 05:37:23'),
(12, 66.10, '2024-08-15 23:15:20', 12, '2024-08-15 23:15:20', '2024-08-15 23:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productables`
--

DROP TABLE IF EXISTS `productables`;
CREATE TABLE IF NOT EXISTS `productables` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `productable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productable_id` bigint(20) UNSIGNED NOT NULL,
  KEY `productables_productable_type_productable_id_index` (`productable_type`,`productable_id`),
  KEY `productables_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productables`
--

INSERT INTO `productables` (`product_id`, `quantity`, `productable_type`, `productable_id`) VALUES
(1, 1, 'App\\Models\\Order', 1),
(1, 3, 'App\\Models\\Cart', 17),
(2, 2, 'App\\Models\\Order', 4),
(2, 1, 'App\\Models\\Cart', 12),
(3, 1, 'App\\Models\\Order', 5),
(3, 2, 'App\\Models\\Cart', 15),
(4, 2, 'App\\Models\\Order', 1),
(4, 2, 'App\\Models\\Cart', 14),
(5, 3, 'App\\Models\\Order', 10),
(5, 3, 'App\\Models\\Cart', 15),
(6, 3, 'App\\Models\\Order', 6),
(6, 2, 'App\\Models\\Cart', 3),
(7, 2, 'App\\Models\\Order', 10),
(7, 3, 'App\\Models\\Cart', 13),
(8, 3, 'App\\Models\\Order', 2),
(8, 3, 'App\\Models\\Cart', 3),
(9, 2, 'App\\Models\\Order', 10),
(9, 1, 'App\\Models\\Cart', 4),
(10, 2, 'App\\Models\\Order', 10),
(10, 3, 'App\\Models\\Cart', 14),
(11, 2, 'App\\Models\\Order', 2),
(11, 2, 'App\\Models\\Cart', 12),
(12, 1, 'App\\Models\\Order', 3),
(12, 2, 'App\\Models\\Cart', 17),
(13, 3, 'App\\Models\\Order', 2),
(13, 1, 'App\\Models\\Cart', 20),
(14, 1, 'App\\Models\\Order', 3),
(14, 3, 'App\\Models\\Cart', 1),
(15, 3, 'App\\Models\\Order', 10),
(15, 2, 'App\\Models\\Cart', 4),
(16, 1, 'App\\Models\\Order', 2),
(16, 3, 'App\\Models\\Cart', 3),
(17, 3, 'App\\Models\\Order', 4),
(17, 3, 'App\\Models\\Cart', 19),
(18, 1, 'App\\Models\\Order', 6),
(18, 1, 'App\\Models\\Cart', 1),
(19, 1, 'App\\Models\\Order', 6),
(19, 2, 'App\\Models\\Cart', 2),
(20, 2, 'App\\Models\\Order', 10),
(20, 3, 'App\\Models\\Cart', 18),
(21, 1, 'App\\Models\\Order', 5),
(21, 2, 'App\\Models\\Cart', 10),
(22, 2, 'App\\Models\\Order', 10),
(22, 1, 'App\\Models\\Cart', 8),
(23, 1, 'App\\Models\\Order', 9),
(23, 3, 'App\\Models\\Cart', 6),
(24, 1, 'App\\Models\\Order', 10),
(24, 3, 'App\\Models\\Cart', 2),
(25, 1, 'App\\Models\\Order', 4),
(25, 2, 'App\\Models\\Cart', 12),
(26, 3, 'App\\Models\\Order', 7),
(26, 1, 'App\\Models\\Cart', 7),
(27, 1, 'App\\Models\\Order', 2),
(27, 3, 'App\\Models\\Cart', 16),
(28, 2, 'App\\Models\\Order', 7),
(28, 3, 'App\\Models\\Cart', 6),
(29, 3, 'App\\Models\\Order', 8),
(29, 3, 'App\\Models\\Cart', 8),
(30, 2, 'App\\Models\\Order', 3),
(30, 1, 'App\\Models\\Cart', 6),
(31, 2, 'App\\Models\\Order', 5),
(31, 1, 'App\\Models\\Cart', 19),
(32, 2, 'App\\Models\\Order', 4),
(32, 2, 'App\\Models\\Cart', 9),
(33, 2, 'App\\Models\\Order', 3),
(33, 1, 'App\\Models\\Cart', 16),
(34, 1, 'App\\Models\\Order', 7),
(34, 1, 'App\\Models\\Cart', 14),
(35, 2, 'App\\Models\\Order', 2),
(35, 3, 'App\\Models\\Cart', 1),
(36, 2, 'App\\Models\\Order', 6),
(36, 2, 'App\\Models\\Cart', 20),
(37, 3, 'App\\Models\\Order', 2),
(37, 1, 'App\\Models\\Cart', 8),
(38, 3, 'App\\Models\\Order', 4),
(38, 1, 'App\\Models\\Cart', 15),
(39, 1, 'App\\Models\\Order', 5),
(39, 1, 'App\\Models\\Cart', 20),
(40, 3, 'App\\Models\\Order', 6),
(40, 3, 'App\\Models\\Cart', 11),
(41, 3, 'App\\Models\\Order', 2),
(41, 2, 'App\\Models\\Cart', 1),
(42, 2, 'App\\Models\\Order', 1),
(42, 1, 'App\\Models\\Cart', 1),
(43, 2, 'App\\Models\\Order', 6),
(43, 2, 'App\\Models\\Cart', 7),
(44, 1, 'App\\Models\\Order', 7),
(44, 1, 'App\\Models\\Cart', 2),
(45, 3, 'App\\Models\\Order', 1),
(45, 2, 'App\\Models\\Cart', 10),
(46, 2, 'App\\Models\\Order', 5),
(46, 1, 'App\\Models\\Cart', 12),
(47, 2, 'App\\Models\\Order', 7),
(47, 3, 'App\\Models\\Cart', 8),
(48, 3, 'App\\Models\\Order', 4),
(48, 3, 'App\\Models\\Cart', 19),
(49, 2, 'App\\Models\\Order', 9),
(49, 3, 'App\\Models\\Cart', 14),
(50, 1, 'App\\Models\\Order', 10),
(50, 3, 'App\\Models\\Cart', 18),
(12, 1, 'App\\Models\\Cart', 21),
(12, 1, 'App\\Models\\Order', 11),
(10, 2, 'App\\Models\\Order', 12);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unavailable',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `stock`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Esse ad et molestias doloremque.', 'Architecto ut consequatur voluptate et.', 12.15, 4, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(2, 'Possimus est.', 'Culpa pariatur voluptatem qui non.', 6.62, 5, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(3, 'Aspernatur repellendus dolores.', 'A dignissimos tempore qui sunt. Animi eveniet culpa iste excepturi.', 16.51, 1, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(4, 'Mollitia non quis adipisci.', 'Natus tenetur dolore sed quia. Cupiditate voluptatem consectetur ratione cum et.', 91.40, 9, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(5, 'Cupiditate repellendus ut odio.', 'Laudantium occaecati quo temporibus. Sunt architecto maxime maiores deleniti repellendus.', 53.72, 7, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(6, 'Sed reiciendis perspiciatis.', 'Voluptatem est voluptatem amet ea ut beatae labore.', 58.06, 3, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(7, 'Nihil deserunt.', 'Inventore alias aut qui.', 55.50, 10, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(8, 'Debitis magnam quis.', 'Enim deleniti voluptas occaecati incidunt.', 12.15, 6, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(9, 'Ullam inventore.', 'Non exercitationem ut ratione aut sit. Fugiat repellendus et laudantium recusandae.', 26.99, 2, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(10, 'Quis doloremque et quia.', 'Ratione sed earum dolorem quo dignissimos. In sunt dolor illo.', 33.05, 2, 'available', NULL, '2024-08-13 03:02:03', '2024-08-15 23:15:19'),
(11, 'Nam similique eos minima.', 'Numquam eos eveniet similique sunt.', 35.49, 5, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(12, 'Nesciunt repudiandae nisi.', 'Error et et qui veritatis assumenda.', 27.05, 7, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 05:36:56'),
(13, 'Id reiciendis magnam distinctio et.', 'Eos in sit incidunt animi rem deserunt iste.', 84.52, 10, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(14, 'Quas voluptas id assumenda.', 'Qui nisi nemo fugiat qui.', 95.07, 5, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(15, 'Aut sunt reiciendis.', 'Et enim magni est animi itaque nemo quibusdam nisi.', 39.91, 7, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(16, 'Officia libero aut impedit.', 'Tempora ipsam reiciendis et quo. Non nihil qui qui sit ipsam sunt quas.', 84.84, 3, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(17, 'Et ut deserunt doloribus.', 'Aut enim distinctio laudantium et aliquam sed eum quo. Adipisci quas hic vitae quas aut.', 71.19, 1, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(18, 'Cumque similique quis dolorem quo.', 'Harum illum dolor et optio vero.', 12.48, 10, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(19, 'Officia delectus ut.', 'Et dolores veritatis nihil quaerat ad vel qui.', 3.88, 1, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(20, 'Sed sapiente temporibus.', 'Sed voluptatem modi quaerat quibusdam voluptate.', 33.63, 9, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(21, 'Voluptas sunt nulla.', 'Natus sint omnis est. Quia ea et consectetur natus ab.', 18.58, 9, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(22, 'Sit exercitationem fugiat.', 'Iste aut velit omnis pariatur ducimus voluptatem.', 35.35, 9, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(23, 'Labore dignissimos quibusdam.', 'Quia consectetur molestiae neque suscipit ut. Earum repudiandae laborum dolorem tenetur nihil placeat qui.', 95.84, 9, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(24, 'Velit distinctio cumque veritatis dignissimos.', 'Corporis et aut vel eos. Dolore minima aperiam dolore sit velit quo.', 18.93, 10, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(25, 'Sit exercitationem neque.', 'Inventore vel quibusdam earum perspiciatis. Eum rerum et aut deserunt.', 51.17, 2, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(26, 'Nam eum qui non.', 'Autem expedita fugiat debitis veritatis. Cupiditate consectetur qui qui eos.', 79.42, 7, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(27, 'Minus labore soluta.', 'Qui consequatur non debitis asperiores.', 69.37, 1, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(28, 'Ullam nobis molestias.', 'Consequatur excepturi assumenda debitis.', 16.57, 9, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(29, 'Magni magni et aut.', 'Dicta commodi et enim rerum ut earum.', 55.83, 6, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(30, 'Sint perspiciatis sunt et.', 'Hic optio est ex velit. Id aliquam eum enim.', 43.13, 2, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(31, 'Saepe eos possimus nostrum.', 'Dicta expedita officia iure eos quibusdam aliquid.', 48.62, 1, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(32, 'Et suscipit et sit.', 'Quis et quia alias ex omnis ipsam blanditiis quia.', 20.89, 7, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(33, 'Beatae tempore ab.', 'In dolor aut ut qui perferendis et. Incidunt eos fugit aperiam quia non.', 74.40, 10, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(34, 'Iste debitis aut accusantium quo.', 'Consequatur officia ex perspiciatis ex enim in.', 28.21, 7, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(35, 'Ut dolorem architecto et voluptas.', 'Sed soluta magni qui illo deserunt illum non.', 95.58, 1, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(36, 'Perferendis quasi expedita.', 'Officiis iure voluptas veritatis commodi similique.', 40.38, 7, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(37, 'Doloribus nesciunt placeat.', 'Voluptatem necessitatibus earum natus numquam. Impedit et nulla ad vero minus qui ullam.', 37.30, 3, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(38, 'Reiciendis possimus autem.', 'Eaque error sit consectetur rerum culpa assumenda. Exercitationem deserunt ut aut repudiandae ipsam illum cumque.', 89.87, 10, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(39, 'Omnis rerum modi labore.', 'Earum minima qui quis impedit.', 53.52, 10, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(40, 'Veniam fuga ut.', 'Ratione ut repudiandae saepe voluptatem facilis possimus.', 11.07, 9, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(41, 'Nam quisquam eveniet reprehenderit voluptas.', 'Alias nesciunt rerum molestiae et non eos est. Exercitationem perspiciatis ipsam nisi eius voluptatibus aut quaerat.', 62.81, 4, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(42, 'Et sunt non ipsam.', 'Nostrum hic dignissimos commodi neque error voluptatem.', 97.99, 3, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(43, 'Sint ducimus doloremque cupiditate vel.', 'Modi delectus inventore eaque voluptas.', 97.92, 1, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(44, 'Perspiciatis voluptas.', 'Non quos rerum dolorem consequatur molestiae.', 27.56, 10, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(45, 'Blanditiis quidem non.', 'Id quia assumenda molestiae ducimus voluptatibus aut non.', 5.31, 4, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(46, 'Maxime quam aut.', 'Aspernatur ducimus aut qui ut sapiente odio quia. Vel inventore error dignissimos quasi vero delectus.', 16.07, 2, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(47, 'Vero excepturi accusamus.', 'Pariatur aut sunt perferendis laboriosam. Veniam debitis repellendus labore.', 32.55, 6, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(48, 'Consequatur dicta aliquid est.', 'Facere totam odio accusantium nostrum aliquam ducimus laudantium.', 25.50, 2, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(49, 'Quidem quis odio culpa.', 'A vitae et sint aut dolores ut. Tempora repudiandae eum doloremque praesentium ut cupiditate.', 28.47, 5, 'unavailable', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03'),
(50, 'Magni et ut assumenda placeat.', 'Qui suscipit laborum accusantium et omnis. Quaerat dolor alias dolorem ea dolore inventore.', 8.73, 6, 'available', NULL, '2024-08-13 03:02:03', '2024-08-13 03:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_since` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin_since`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ernesto Corkery', 'lavinia.bartoletti@example.com', '2024-08-13 03:02:01', '$2y$10$mhXLZQ0/re6igHo7oI8FFOrMTLvzXtxcomhTrRQ.77Q1hM88QH6SG', NULL, 'WiFXJwTRtp', '2024-08-13 03:02:02', '2024-08-13 03:02:02'),
(2, 'Deron Osinski', 'abigale.quitzon@example.net', '2024-08-13 03:02:01', '$2y$10$D2Pi9fLGIM8sv37atLquEe2TBfAvO/MCG/SekGHeBao/7VzX3WUVG', NULL, 'hiYAGDVlUK', '2024-08-13 03:02:02', '2024-08-13 03:02:02'),
(3, 'Julie Littel Jr.', 'ryan.nathanial@example.net', '2024-08-13 03:02:01', '$2y$10$8XCdXEuqWevLdQXStdmoGu/ToYHRqR7DRPiHrDrLLUijC4BWa.7oi', NULL, 'IKEdRSZIDW', '2024-08-13 03:02:02', '2024-08-13 03:02:02'),
(4, 'Mrs. Sandrine Bogisich', 'nella.willms@example.net', '2024-08-13 03:02:01', '$2y$10$rXPuxyX.B1qev/uGKr8EU.skKGHz0FrDs5z9HJCDmT7/M2b7mA5pC', NULL, '32ln7PB1aV', '2024-08-13 03:02:02', '2024-08-15 23:14:47'),
(5, 'Miss Vernie Kunze', 'kaia.schmidt@example.com', '2024-08-13 03:02:01', '$2y$10$xsSojc4VZEQ0Yq8tzuXhGOjL1bMW2SsSQ7IiyYvT6btXVPF90RjKC', NULL, 'Y6VocKdimi', '2024-08-13 03:02:02', '2024-08-13 03:02:02'),
(6, 'Eunice Rempel', 'dbarton@example.org', '2024-08-13 03:02:01', '$2y$10$bZb9sYpvLRCFy/V8xoAzuuUOZKLRGCFBm2ns7zfjpiy0Q11CyKkjK', NULL, 'aaX7Z3dEkX', '2024-08-13 03:02:02', '2024-08-13 03:02:02'),
(7, 'Tamia Schmitt II', 'donnie.johns@example.org', '2024-08-13 03:02:01', '$2y$10$afvSyGwVIy348EpbgPXGcOZn42hl2sQ/L7svlQeqdbpQc2LtlytYO', NULL, 'DJrwBvHrxy', '2024-08-13 03:02:02', '2024-08-15 23:14:49'),
(8, 'Andrew Beatty', 'virgie.braun@example.org', '2024-08-13 03:02:01', '$2y$10$QsZMu3QGuJYrhqGfdiN75OndIKTohhlYIQL3.v8vQIOS8.13Jmd1q', NULL, 'JANndL8WEz', '2024-08-13 03:02:02', '2024-08-13 03:02:02'),
(9, 'Antwan Wintheiser', 'ibeatty@example.com', '2024-08-13 03:02:02', '$2y$10$/Bw1SQS3BZZkid1x4a7fn.xjCf7emR0xfBoF6G7R09rzsDXt7asQO', NULL, 'vUrxpZXHy9', '2024-08-13 03:02:02', '2024-08-13 03:02:02'),
(10, 'Ted Price', 'nels05@example.org', '2024-08-13 03:02:02', '$2y$10$Vtt5SOLurEQ7QS..xN39AeveShXn7i.PksXc/42TIaCSM74p42wpO', NULL, 'Q3lWZMc6qB', '2024-08-13 03:02:02', '2024-08-13 03:02:02'),
(11, 'Geovany Bernier', 'paucek.bessie@example.net', '2024-08-13 03:02:02', '$2y$10$uR3CGk1OLxxnpyjcBR.28.zlAl5EaNNeKwP2neJBOkxWZxu3GpGq2', NULL, '28YnfFpFgM', '2024-08-13 03:02:02', '2024-08-15 23:14:51'),
(12, 'Arnoldo Roberts', 'beulah.marks@example.net', '2024-08-13 03:02:02', '$2y$10$hXhA/FkgeiczyW9EhVw0be6ux3PrT4VZnIHa9cftxTrj9pmYC4Yqe', NULL, 'APwEOymJqL', '2024-08-13 03:02:02', '2024-08-15 23:14:53'),
(13, 'Sandy Schowalter', 'sferry@example.org', '2024-08-13 03:02:02', '$2y$10$TYk901hstD1w0zgsZrufJObaqktR4sbrqWMHxPD2ovuJftihbtZ3C', NULL, '8GaVYY5O99', '2024-08-13 03:02:02', '2024-08-13 03:02:02'),
(14, 'Sonya Greenfelder', 'alfonzo23@example.com', '2024-08-13 03:02:02', '$2y$10$QY8IYdEz0Lz966FWWplCQu0E6TOe81IJivrvaxn9rdIb51q6a2nk.', NULL, 'vKtXlTW3Lv', '2024-08-13 03:02:02', '2024-08-13 03:02:02'),
(15, 'Evangeline Senger MD', 'ericka.jones@example.com', '2024-08-13 03:02:02', '$2y$10$cK2XLTGA673JifSscfG5B.tRRmnNCD65DhlX.5dShcHpgrXvIKvTC', NULL, 'izORkW4jN0', '2024-08-13 03:02:02', '2024-08-13 03:02:02'),
(16, 'Mr. Kennedy Farrell', 'imosciski@example.net', '2024-08-13 03:02:02', '$2y$10$yyjbvKgt3BqFlHTl47MyHO25D3UkRZ.74QKAkt4U/YnwBZvEyr3cO', NULL, 'rx9jENqJ70', '2024-08-13 03:02:02', '2024-08-13 03:02:02'),
(17, 'Rory Paucek', 'block.alice@example.org', '2024-08-13 03:02:02', '$2y$10$tX9v1hvZO8FC3mEIT0HBSukq5U.7y63Woq9BbyCzI9INUi2sAVPG.', NULL, 'eIehYPrv9q', '2024-08-13 03:02:02', '2024-08-13 03:02:02'),
(18, 'Daryl Bartell', 'jesus.padberg@example.net', '2024-08-13 03:02:02', '$2y$10$ZP4PI7AHcXcG5HvS9wzfYeLn9ksoRfkz9.BWCdFhOGsMKtw6xrtpm', NULL, 'QMTwXaZ5lO', '2024-08-13 03:02:02', '2024-08-15 23:14:55'),
(19, 'Kameron Sipes', 'jaqueline.conroy@example.org', '2024-08-13 03:02:02', '$2y$10$LDHXMT9aQpNY5SCogEr5deSEV/18hEoqlbTiWCfMvNbPOPu10Hc/u', NULL, 'umWE9gvudm', '2024-08-13 03:02:02', '2024-08-13 03:02:02'),
(20, 'Timmothy Towne', 'jacobs.quinn@example.com', '2024-08-13 03:02:02', '$2y$10$WihrqsfjmWV5AFCGSUO51uHB2RlehmUKQ8jy0461Wb97fl5TfZFOK', NULL, 'nxBspAHsjP', '2024-08-13 03:02:02', '2024-08-13 03:02:02'),
(21, 'test', 'test@test.com', '2024-08-13 03:04:19', '$2y$10$1VQQqoX0jgdqVU3rbLZMxuJhS.XhOZsBcbW/RMkR4sQtDOuilEZ0q', NULL, NULL, '2024-08-13 03:02:30', '2024-08-15 23:14:57'),
(22, 'test 2', 'test2@test.com', '2024-08-13 05:36:44', '$2y$10$VYwXyf5nhkAbkZriagbZq.s9B79tqAkRE8iOeFbaEcDlQYDWxPNB6', NULL, NULL, '2024-08-13 05:35:59', '2024-08-13 05:36:44'),
(23, 'test 3', 'test3@test.com', NULL, '$2y$10$8n5BNLpaO8SQlgJO8ktVMe59MpiBYI/dfzOEKA3le5SlHwNu.O1GC', NULL, 'DsA6flRl6GLAxu2HZa2sWOe3SmSSRnFP5btJcRYeDnWXVjWgax2XAYTkDqMp', '2024-08-13 05:38:42', '2024-08-13 05:46:56'),
(24, 'Admin', 'admin@admin.com', '2024-08-15 23:12:52', '$2y$10$mlCw8XQwYsdrWgtseYG6wOugvyghUjZgKtq4yMlWNytRm1rFJk8K.', '2024-08-15 23:14:06', '33sW258n8kDmajoSsWrDQZeyTPKQwVBwn34aCMKdsvQxebGoKRHKTsFL7c16', '2024-08-15 23:12:29', '2024-08-15 23:14:06');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
