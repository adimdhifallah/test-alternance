-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 11:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teste`
--

-- --------------------------------------------------------

--
-- Table structure for table `historique`
--

CREATE TABLE `historique` (
  `id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `temperature` decimal(5,2) DEFAULT NULL,
  `date_mesure` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historique`
--

INSERT INTO `historique` (`id`, `module_id`, `temperature`, `date_mesure`) VALUES
(1, NULL, 15.00, '2024-04-19 03:05:54'),
(2, NULL, 40.00, '2024-04-19 03:06:13'),
(3, NULL, 3.00, '2024-04-19 03:06:54'),
(4, NULL, 83.00, '2024-04-19 03:07:13'),
(5, NULL, 2.00, '2024-04-19 03:12:26'),
(6, NULL, 15.00, '2024-04-19 03:13:26'),
(7, NULL, 37.00, '2024-04-19 03:16:29'),
(8, NULL, 20.00, '2024-04-19 03:24:37'),
(9, NULL, 66.00, '2024-04-19 14:52:52'),
(10, NULL, 9.00, '2024-04-19 19:46:15'),
(11, NULL, 46.00, '2024-04-19 19:48:59'),
(12, NULL, 3.00, '2024-04-19 19:51:48'),
(13, NULL, 38.00, '2024-04-19 19:55:41'),
(14, NULL, 1.00, '2024-04-19 19:55:53'),
(15, NULL, 48.00, '2024-04-19 19:55:54'),
(16, NULL, 12.00, '2024-04-19 19:58:33'),
(17, NULL, 51.00, '2024-04-20 10:37:05'),
(18, NULL, 0.00, '2024-04-20 10:39:41'),
(19, NULL, 7.00, '2024-04-20 10:49:45'),
(20, NULL, 55.00, '2024-04-20 14:07:58'),
(21, NULL, 23.00, '2024-04-20 14:11:54'),
(22, NULL, 56.00, '2024-04-20 14:12:54'),
(23, NULL, 77.00, '2024-04-20 14:15:24'),
(24, NULL, 74.00, '2024-04-20 14:15:29'),
(25, NULL, 2.00, '2024-04-20 14:15:34'),
(26, NULL, 7.00, '2024-04-20 14:15:39'),
(27, NULL, 1.00, '2024-04-20 14:15:44'),
(28, NULL, 32.00, '2024-04-20 14:15:49'),
(29, NULL, 81.00, '2024-04-20 14:15:54'),
(30, NULL, 17.00, '2024-04-20 14:15:59'),
(31, NULL, 74.00, '2024-04-20 14:16:04'),
(32, NULL, 38.00, '2024-04-20 14:16:09'),
(33, NULL, 67.00, '2024-04-20 14:16:14'),
(34, NULL, 33.00, '2024-04-20 14:16:19'),
(35, NULL, 29.00, '2024-04-20 14:16:24'),
(36, NULL, 46.00, '2024-04-20 14:16:29'),
(37, NULL, 75.00, '2024-04-20 14:16:34'),
(38, NULL, 93.00, '2024-04-20 14:16:40'),
(39, NULL, 100.00, '2024-04-20 14:16:45'),
(40, NULL, 31.00, '2024-04-20 14:27:43'),
(41, NULL, 9.00, '2024-04-20 14:27:48'),
(42, NULL, 42.00, '2024-04-20 14:27:53'),
(43, NULL, 52.00, '2024-04-20 14:27:58'),
(44, NULL, 77.00, '2024-04-20 14:28:03'),
(45, NULL, 16.00, '2024-04-20 14:28:08'),
(46, NULL, 61.00, '2024-04-20 14:30:16'),
(47, NULL, 72.00, '2024-04-20 14:30:16'),
(48, NULL, 1.00, '2024-04-20 14:30:17'),
(49, NULL, 77.00, '2024-04-20 14:30:18'),
(50, NULL, 97.00, '2024-04-20 14:30:57'),
(51, NULL, 47.00, '2024-04-20 14:30:58'),
(52, NULL, 1.00, '2024-04-20 14:31:07'),
(53, NULL, 83.00, '2024-04-20 14:31:08'),
(54, NULL, 81.00, '2024-04-20 14:31:16'),
(55, NULL, 52.00, '2024-04-20 14:31:16'),
(56, NULL, 81.00, '2024-04-20 14:31:17'),
(57, NULL, 31.00, '2024-04-20 14:31:17'),
(58, NULL, 92.00, '2024-04-20 14:31:18'),
(59, NULL, 43.00, '2024-04-20 14:31:27'),
(60, NULL, 84.00, '2024-04-20 14:31:37'),
(61, NULL, 42.00, '2024-04-20 14:31:47'),
(62, NULL, 35.00, '2024-04-20 14:31:57'),
(63, NULL, 8.00, '2024-04-20 14:32:07'),
(64, NULL, 60.00, '2024-04-20 14:32:16'),
(65, NULL, 93.00, '2024-04-20 14:32:17'),
(66, NULL, 55.00, '2024-04-20 14:32:27'),
(67, NULL, 59.00, '2024-04-20 14:32:37'),
(68, NULL, 46.00, '2024-04-20 14:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `date_ajout` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `nom`, `description`, `date_ajout`) VALUES
(21, 'webearth', 'Je serai un alternant au sein de webearth', '2024-04-20 19:37:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `historique`
--
ALTER TABLE `historique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `historique`
--
ALTER TABLE `historique`
  ADD CONSTRAINT `historique_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
