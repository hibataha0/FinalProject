-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 16, 2025 at 03:23 PM
-- Server version: 9.1.0
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `www`
--

CREATE TABLE `www` (
  `id` int NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `www`
--

INSERT INTO `www` (`id`, `title`, `content`, `date`) VALUES
(1, 'Lorem ipsum dolor', ' consectetur adipiscing elit. Suspendisse sed dolor egestas, tincidunt eros non, aliquet purus. Maecenas mi odio, elementum id mi id, varius euismod urna.', '2025-01-16'),
(2, 'Mauris sed viverra sapien', 'Aliquam malesuada mauris sit amet rhoncus volutpat. Mauris fermentum tortor sit amet ultrices lobortis. Praesent quis accumsan lacus. Nam in consequat libero. Aliquam erat volutpat. Mauris posuere dignissim libero nec luctus.', '2025-01-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `www`
--
ALTER TABLE `www`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `www`
--
ALTER TABLE `www`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
