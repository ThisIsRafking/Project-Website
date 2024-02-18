-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2024 at 12:35 PM
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
CREATE DATABASE e_commerce;
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(90) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(4, 'rafkingtheworld@gmail.com', '$2y$10$P4V5nknhZrShBhqfzDEMee5lSi5.ygIIIrYjKQJXGZDUVAgF1pTPC'),
(5, 'admin@gmail.com', '$2y$10$fg.9K65BfCN26zHPYCCHAeRRWiyZz2ua1.05XcEv/hsEPMZn13DUu');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `image`) VALUES
(1, 'Product 1', '19.99', 'hehe.png'),
(2, 'Product 2', '29.99', 'hehe.png'),
(3, 'Product 3', '39.99', 'hehe.png'),
(4, 'Product 4', '49.99', 'hehe.png'),
(5, 'Product 5', '59.99', 'hehe.png'),
(6, 'Product 6', '69.99', 'hehe.png'),
(7, 'Product 7', '79.99', 'hehe.png'),
(8, 'Product 8', '89.99', 'hehe.png'),
(9, 'Product 9', '99.99', 'hehe.png'),
(10, 'Product 10', '109.99', 'hehe.png'),
(11, 'Product 11', '119.99', 'hehe.png'),
(12, 'Product 12', '129.99', 'hehe.png'),
(13, 'Product 13', '139.99', 'hehe.png'),
(14, 'Product 14', '149.99', 'hehe.png'),
(15, 'Product 15', '159.99', 'hehe.png'),
(16, 'Product 16', '169.99', 'hehe.png'),
(17, 'Product 17', '179.99', 'hehe.png'),
(18, 'Product 18', '189.99', 'hehe.png'),
(19, 'Product 19', '199.99', 'hehe.png'),
(20, 'Product 20', '209.99', 'hehe.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
