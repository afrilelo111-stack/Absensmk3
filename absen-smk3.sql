-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 22, 2025 at 05:09 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absen-smk3`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
CREATE TABLE IF NOT EXISTS `kelas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `createdAt`, `updatedAt`) VALUES
(1, ' X PPLG 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_role` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nama_role`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin', '2025-11-22 16:35:26', '2025-11-22 16:35:26'),
(2, 'Guru', '2025-11-22 16:35:26', '2025-11-22 16:35:26'),
(3, 'Siswa', '2025-11-22 16:37:56', '2025-11-22 16:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(191) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int NOT NULL DEFAULT '3',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `kelas_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `username_2` (`username`),
  UNIQUE KEY `username_3` (`username`),
  UNIQUE KEY `username_4` (`username`),
  UNIQUE KEY `username_5` (`username`),
  UNIQUE KEY `username_6` (`username`),
  UNIQUE KEY `username_7` (`username`),
  UNIQUE KEY `username_8` (`username`),
  UNIQUE KEY `username_9` (`username`),
  UNIQUE KEY `username_10` (`username`),
  KEY `role_id` (`role_id`),
  KEY `kelas_id` (`kelas_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role_id`, `createdAt`, `updatedAt`, `kelas_id`) VALUES
(1, 'afrielo', '$argon2id$v=19$m=65536,t=3,p=4$O7xEs+0iFR8KbumkCTiDuw$E/iXG/2DHB37AWy+u9C1xnhIGvgeQXdcwimCkbNZElA', 1, '2025-11-22 16:09:24', '2025-11-22 16:09:24', NULL),
(2, 'cio', '$argon2id$v=19$m=65536,t=3,p=4$d+oJ+YSU/jEMUXbKj1RBuQ$iFGKtXx8l7/c5qBDJhCrm1dbQKyAwMWxwrYc5YFXmg4', 3, '2025-11-22 16:16:58', '2025-11-22 16:16:58', NULL),
(3, 'rat', '$argon2id$v=19$m=65536,t=3,p=4$3VGvern63SsLdCIgQ1FYnw$gLOStcyXTCNhHbpT4dOAaj25lSJ0zcdfFuvoZwFtGIQ', 0, '2025-11-22 16:22:03', '2025-11-22 16:22:03', NULL),
(4, 'elo', '$argon2id$v=19$m=65536,t=3,p=4$Z4DvrIxAVeTML87kugfDmQ$jJMd+ElAqQ3WbwhDQc2xUphIp8tCIhbjn85aQ6LQBEE', 1, '2025-11-22 16:36:37', '2025-11-22 16:36:37', NULL),
(5, 'agrielo', '$argon2id$v=19$m=65536,t=3,p=4$wDLEVkxKjeU1CwbU6p8JnQ$7Wi1PxqjSFH6KtqFDJQTY+xls/p8XDgea92gaVTaef0', 3, '2025-11-22 16:39:43', '2025-11-22 16:39:43', NULL),
(6, 'mai', '$argon2id$v=19$m=65536,t=3,p=4$ngFEjO7v0gN4eif6vat6gQ$ds2gf2cQF557l4HoOu+JQkKKnCJJO8d7UZ0NQA86nD0', 3, '2025-11-22 16:41:03', '2025-11-22 16:41:03', 0),
(7, 'radcio', '$argon2id$v=19$m=65536,t=3,p=4$DDieTcVpLZEch0b5QUnePA$7yO30whSTeJgiREOsACEnUnHd64TSfP//pFUflUkdBc', 3, '2025-11-22 16:47:02', '2025-11-22 16:47:02', NULL),
(8, 'OK', '$argon2id$v=19$m=65536,t=3,p=4$cTciH+Os6x4QupFAJ+zNzA$1mjIDeXV4XveobmOSBHY7Gs93qK2bdngC2Sik7Ga0kY', 3, '2025-11-22 16:48:11', '2025-11-22 16:48:11', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
