-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 03:13 PM
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
-- Database: `animeliste`
--

-- --------------------------------------------------------

--
-- Table structure for table `anime`
--

CREATE TABLE `anime` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `genres` varchar(100) DEFAULT NULL,
  `episodes` int(11) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anime`
--

INSERT INTO `anime` (`id`, `name`, `genres`, `episodes`, `score`, `images`) VALUES
(1, 'Sousou no Frieren', 'Adventure, Drama, Fantasy', 28, 9.14, 'SNF.jpg'),
(2, 'Bleach: Sennen Kessen-hen', 'Action, Adventure, Fantasy', 13, 9.03, 'BLEACH.jpg'),
(3, 'One Piece', 'Action, Adventure, Fantasy', 9999, 8.71, 'OP.jpg'),
(4, 'SOLO LEVELING', 'Action, Adventure, Fantasy', 12, 8.48, 'SOLEV.jpg'),
(5, 'Shingeki no Kyojin: The Final Season - Kanketsu-hen', 'Action, Drama, Suspense', 2, 8.93, 'SNK.jpg'),
(6, 'Code Geass: Hangyaku no Lelouch R2', ' Action, Award Winning, Drama, Sci-Fi', 25, 8.91, 'CG.jpg'),
(7, 'Black Clover', ' Action, Comedy, Fantasy', 170, 8.15, 'BC.jpeg'),
(8, 'Jujutsu Kaisen 2nd Season', ' Action, Fantasy', 23, 8.89, 'JJK.jpg'),
(9, 'Violet Evergarden Movie', 'Award Winning, Drama, Fantasy', 1, 8.88, 'VEM.jpg'),
(10, 'Clannad: After Story', 'Drama, Romance, Supernatural', 24, 8.93, 'CAS.jpg'),
(11, 'Vinland Saga', 'Action, Adventure, Drama', 24, 8.75, 'VS.jpg'),
(12, 'Steins;Gate', ' Drama, Sci-Fi, Suspense', 24, 9.07, 'SG.jpg'),
(13, 'Fullmetal Alchemist: Brotherhood', ' Action, Adventure, Drama, Fantasy', 64, 9.09, 'FAB.jpg'),
(14, 'Gintama: The Final', 'Action, Comedy, Drama, Sci-Fi', 1, 9.04, 'G.jpg'),
(15, 'Hunter x Hunter (2011)', 'Action, Adventure, Fantasy', 148, 9.04, 'HXH.jpg'),
(16, 'Kimi no Na wa.', 'Award Winning, Drama, Supernatural', 1, 8.84, 'ASEP.jpg'),
(17, 'Oshi no Ko', 'Drama, Supernatural', 11, 8.71, 'ONK.jpg'),
(18, 'Made in Abyss', ' Adventure, Drama, Fantasy, Mystery, Sci-Fi', 13, 8.65, 'MIA.jpg'),
(19, 'Shigatsu wa Kimi no Uso', ' Drama, Romance', 22, 8.65, 'KNU.jpg'),
(20, 'Kono Subarashii Sekai ni Shukufuku wo! 2', 'Adventure, Comedy, Fantasy', 10, 8.26, 'KSB.jpg'),
(21, 'Seishun Buta Yarou wa Yumemiru Shoujo no Yume wo Minai', 'Drama, Romance, Supernatural', 1, 8.6, 'SBY.jpg'),
(22, 'Fate/Zero 2nd Season', ' Action, Fantasy, Supernatural', 12, 8.5, 'FZ.jpg'),
(23, 'Re:Zero 2nd Season Part 2', 'Drama, Fantasy, Suspense', 12, 8.44, 'RZ.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anime`
--
ALTER TABLE `anime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
