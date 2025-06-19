-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: fdb1028.awardspace.net
-- Generation Time: Jun 19, 2025 at 01:13 AM
-- Server version: 8.0.32
-- PHP Version: 8.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4640148_election`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` int NOT NULL,
  `candidate_number` int NOT NULL,
  `candidate_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `candidate_position` enum('Senator','House Representative','Mayor','Vice Mayor','City Councilor') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_apply` date DEFAULT NULL,
  `partylist` text COLLATE utf8mb4_general_ci,
  `candidate_image` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `candidate_number`, `candidate_name`, `candidate_position`, `date_apply`, `partylist`, `candidate_image`) VALUES
(0, 18, 'mamamo', 'Mayor', '2025-05-24', 'mamamo', '2x2 pic.jpg'),
(0, 1, 'atemo', 'Mayor', '2025-05-24', 'atemo', '363822921_244247451846866_3681049467383859247_n.jpg'),
(0, 21, 'bossing', 'Senator', '2025-05-24', 'bossing', '386842966_335287609106741_735896128638563616_n.jpg'),
(0, 22, 'sen2', 'Senator', '2025-05-24', 'bossing', '367987767_691956136212782_5625734991744660864_n.jpg'),
(0, 23, 'sen3', 'Senator', '2025-05-24', 'bossing', '368024741_4439747112916283_1927083156263126525_n.jpg'),
(0, 24, 'sen4', 'Senator', '2025-05-24', 'bossing', '368455759_299343466386700_8716941555597107490_n.jpg'),
(0, 25, 'sen5', 'Senator', '2025-05-24', 'bossing', '399765162_1450415888851058_1901071095150824207_n.png'),
(0, 26, 'sen6', 'Senator', '2025-05-24', 'mamamo', '399868179_695092815916784_6253848962970656878_n.jpg'),
(0, 28, 'sen7', 'Senator', '2025-05-24', 'atemo', '369481822_1405876939962025_6064833359316220346_n.jpg'),
(0, 31, 'sen8', 'Senator', '2025-05-24', 'atemo', '10_LACAMPUERGA_KRISTINE00267 (1).JPG'),
(0, 33, 'sen9', 'Senator', '2025-05-24', 'mamamo', '29fff3cc-ba53-4363-adec-14eaf0cf1e06.jpg'),
(0, 34, 'sen10', 'Senator', '2025-05-24', 'mamao', '0f1593b5-c96f-43bb-8891-4516cef1de8e.jpg'),
(0, 36, 'sen11', 'Senator', '2025-05-24', 'martis', '386842966_335287609106741_735896128638563616_n.jpg'),
(0, 12, 'sen12', 'Senator', '2025-05-24', 'lunis', '367987767_691956136212782_5625734991744660864_n.jpg'),
(0, 55, 'ALATIIT, JEDI', 'City Councilor', '2025-05-24', '66', '368024741_4439747112916283_1927083156263126525_n.jpg'),
(0, 99, 'ALBA, TOPPE', 'City Councilor', '2025-05-24', 'NUP', '67d0270d-0daf-45f3-a9cf-f0066b9a1ad0.jpg'),
(0, 62, 'ALMEDA, INGRID (LAKAS)', 'City Councilor', '2025-05-24', 'LAKAS', '2x2 pic.jpg'),
(0, 74, 'ALZONA, DOC POL (LAKAS)', 'City Councilor', '2025-05-17', 'LAKAs', '3ae533d8-39ef-4ca5-a88a-ad1153cdae51.jpg'),
(0, 35, 'ALZONA, DOK WILLIE', 'City Councilor', '2025-05-24', 'AKAY', '363822921_244247451846866_3681049467383859247_n.jpg'),
(0, 45, 'AMBROSIO,BATANG QUIAPO', 'City Councilor', '2025-05-24', 'AKSYON', '368024741_4439747112916283_1927083156263126525_n.jpg'),
(0, 68, 'BAUTISTA, BOSSENG TITUS', 'City Councilor', '2025-05-24', 'LAKAS', '368455759_299343466386700_8716941555597107490_n.jpg'),
(0, 98, 'BEDIA, DOC ELVIS', 'City Councilor', '2025-05-24', 'NUP', '399868179_695092815916784_6253848962970656878_n.jpg'),
(0, 89, 'BORJA, BOBET', 'City Councilor', '2025-05-24', 'AKAY', '399765162_1450415888851058_1901071095150824207_n.png'),
(0, 47, 'BORRES, KELVIN', 'City Councilor', '2025-05-24', 'AKASYON', '369481822_1405876939962025_6064833359316220346_n.jpg'),
(0, 59, 'CARDAMA, MARIANO', 'City Councilor', '2025-05-24', 'AKSYON', '363822921_244247451846866_3681049467383859247_n.jpg'),
(0, 61, 'CARDEÑO, LIZA', 'City Councilor', '2025-05-24', 'LAKAS', '368455759_299343466386700_8716941555597107490_n.jpg'),
(0, 85, 'ABALOS- YATCO, JOY', 'Vice Mayor', '2025-05-24', 'AKSYON', '363822921_244247451846866_3681049467383859247_n.jpg'),
(0, 14, 'DIMAGUILA, ATTY. ARMAN', 'House Representative', '2025-05-24', 'LAKAS', '386842966_335287609106741_735896128638563616_n.jpg'),
(0, 79, 'YATCO, PARENG MIKE', 'House Representative', '2025-05-24', 'PEP', '368455759_299343466386700_8716941555597107490_n.jpg'),
(0, 77, 'Bato Delarose', 'Mayor', '2025-06-18', 'BATO PArtylist', '367987767_691956136212782_5625734991744660864_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `city_councilor`
--

CREATE TABLE `city_councilor` (
  `id` int NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `VotersCode` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `councilor1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `councilor2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `councilor3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `councilor4` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `councilor5` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `councilor6` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `councilor7` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `councilor8` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `councilor9` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `councilor10` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `councilor11` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `councilor12` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city_councilor`
--

INSERT INTO `city_councilor` (`id`, `last_name`, `VotersCode`, `councilor1`, `councilor2`, `councilor3`, `councilor4`, `councilor5`, `councilor6`, `councilor7`, `councilor8`, `councilor9`, `councilor10`, `councilor11`, `councilor12`, `submitted_at`) VALUES
(2, 'Cunanan', '456', 'ALZONA, DOC POL (LAKAS)', 'ALBA, TOPPE', 'ALATIIT, JEDI', 'ALMEDA, INGRID (LAKAS)', 'ALZONA, DOK WILLIE', 'CARDEÑO, LIZA', 'AMBROSIO,BATANG QUIAPO', 'BAUTISTA, BOSSENG TITUS', 'BORJA, BOBET', 'BEDIA, DOC ELVIS', 'CARDAMA, MARIANO', 'BORRES, KELVIN', '2025-05-24 15:25:14'),
(0, 'llemes', '143', 'BORJA, BOBET', 'ALATIIT, JEDI', 'ALBA, TOPPE', 'ALZONA, DOC POL (LAKAS)', 'ALMEDA, INGRID (LAKAS)', 'CARDEÑO, LIZA', 'BORRES, KELVIN', 'CARDAMA, MARIANO', 'ALZONA, DOK WILLIE', 'BEDIA, DOC ELVIS', 'BAUTISTA, BOSSENG TITUS', 'AMBROSIO,BATANG QUIAPO', '2025-05-24 15:29:45'),
(3, 'Lacampuenga', 'ABC', 'ALATIIT, JEDI', 'ALBA, TOPPE', 'ALMEDA, INGRID (LAKAS)', 'ALZONA, DOC POL (LAKAS)', 'CARDAMA, MARIANO', 'AMBROSIO,BATANG QUIAPO', 'ALZONA, DOK WILLIE', 'BORRES, KELVIN', 'BAUTISTA, BOSSENG TITUS', 'CARDEÑO, LIZA', 'BEDIA, DOC ELVIS', 'BORJA, BOBET', '2025-06-18 14:33:16'),
(1, 'LACAMPUENGA', 'mon', 'ALATIIT, JEDI', 'ALBA, TOPPE', 'ALMEDA, INGRID (LAKAS)', 'ALZONA, DOC POL (LAKAS)', 'ALZONA, DOK WILLIE', 'AMBROSIO,BATANG QUIAPO', 'BAUTISTA, BOSSENG TITUS', 'BEDIA, DOC ELVIS', 'BORJA, BOBET', 'BORRES, KELVIN', 'CARDAMA, MARIANO', 'CARDEÑO, LIZA', '2025-06-18 14:51:04'),
(4, 'Geronaga', 'def', 'ALBA, TOPPE', 'ALATIIT, JEDI', 'ALMEDA, INGRID (LAKAS)', 'ALZONA, DOK WILLIE', 'AMBROSIO,BATANG QUIAPO', 'ALZONA, DOC POL (LAKAS)', 'BEDIA, DOC ELVIS', 'BAUTISTA, BOSSENG TITUS', 'BORJA, BOBET', 'BORRES, KELVIN', 'CARDAMA, MARIANO', 'CARDEÑO, LIZA', '2025-06-18 15:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `house_rep`
--

CREATE TABLE `house_rep` (
  `id` int NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `VotersCode` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `candidate_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `house_rep`
--

INSERT INTO `house_rep` (`id`, `last_name`, `VotersCode`, `candidate_name`, `submitted_at`) VALUES
(2, 'Cunanan', '456', 'DIMAGUILA, ATTY. ARMAN', '2025-05-24 15:25:14'),
(0, 'llemes', '143', 'DIMAGUILA, ATTY. ARMAN', '2025-05-24 15:29:45'),
(3, 'Lacampuenga', 'ABC', 'YATCO, PARENG MIKE', '2025-06-18 14:33:16'),
(1, 'LACAMPUENGA', 'mon', 'DIMAGUILA, ATTY. ARMAN', '2025-06-18 14:51:04'),
(4, 'Geronaga', 'def', 'DIMAGUILA, ATTY. ARMAN', '2025-06-18 15:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `mayor`
--

CREATE TABLE `mayor` (
  `id` int NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `VotersCode` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `candidate_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mayor`
--

INSERT INTO `mayor` (`id`, `last_name`, `VotersCode`, `candidate_name`, `submitted_at`) VALUES
(2, 'Cunanan', '456', 'atemo', '2025-05-24 15:25:14'),
(0, 'llemes', '143', 'mamamo', '2025-05-24 15:29:45'),
(3, 'Lacampuenga', 'ABC', 'mamamo', '2025-06-18 14:33:16'),
(1, 'LACAMPUENGA', 'mon', 'mamamo', '2025-06-18 14:51:04'),
(4, 'Geronaga', 'def', 'atemo', '2025-06-18 15:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `partylist`
--

CREATE TABLE `partylist` (
  `id` int NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `VotersCode` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `partylist` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partylist`
--

INSERT INTO `partylist` (`id`, `last_name`, `VotersCode`, `partylist`, `submitted_at`) VALUES
(2, 'Cunanan', '456', 'LAKAS', '2025-05-24 15:25:14'),
(0, 'llemes', '143', 'bossing', '2025-05-24 15:29:45'),
(3, 'Lacampuenga', 'ABC', 'LAKAS', '2025-06-18 14:33:16'),
(1, 'LACAMPUENGA', 'mon', 'LAKAS', '2025-06-18 14:51:04'),
(4, 'Geronaga', 'def', 'LAKAS', '2025-06-18 15:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `senator`
--

CREATE TABLE `senator` (
  `id` int NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `VotersCode` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sen1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sen2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sen3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sen4` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sen5` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sen6` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sen7` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sen8` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sen9` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sen10` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sen11` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sen12` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `senator`
--

INSERT INTO `senator` (`id`, `last_name`, `VotersCode`, `sen1`, `sen2`, `sen3`, `sen4`, `sen5`, `sen6`, `sen7`, `sen8`, `sen9`, `sen10`, `sen11`, `sen12`, `submitted_at`) VALUES
(2, 'Cunanan', '456', 'bossing', 'sen2', 'sen3', 'sen4', 'sen5', 'sen6', 'sen7', 'sen8', 'sen9', 'sen10', 'sen11', 'sen12', '2025-05-24 15:25:14'),
(0, 'llemes', '143', 'bossing', 'sen12', 'sen9', 'sen10', 'sen8', 'sen5', 'sen3', 'sen7', 'sen4', 'sen11', 'sen6', 'sen2', '2025-05-24 15:29:45'),
(3, 'Lacampuenga', 'ABC', 'bossing', 'sen2', 'sen3', 'sen7', 'sen4', 'sen5', 'sen6', 'sen8', 'sen9', 'sen11', 'sen12', 'sen10', '2025-06-18 14:33:16'),
(1, 'LACAMPUENGA', 'mon', 'bossing', 'sen2', 'sen3', 'sen4', 'sen6', 'sen5', 'sen7', 'sen8', 'sen10', 'sen9', 'sen11', 'sen12', '2025-06-18 14:51:04'),
(4, 'Geronaga', 'def', 'bossing', 'sen2', 'sen4', 'sen3', 'sen7', 'sen6', 'sen5', 'sen9', 'sen8', 'sen11', 'sen10', 'sen12', '2025-06-18 15:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `vice_mayor`
--

CREATE TABLE `vice_mayor` (
  `id` int NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `VotersCode` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `candidate_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vice_mayor`
--

INSERT INTO `vice_mayor` (`id`, `last_name`, `VotersCode`, `candidate_name`, `submitted_at`) VALUES
(2, 'Cunanan', '456', 'ABALOS- YATCO, JOY', '2025-05-24 15:25:14'),
(0, 'llemes', '143', 'ABALOS- YATCO, JOY', '2025-05-24 15:29:45'),
(3, 'Lacampuenga', 'ABC', 'ABALOS- YATCO, JOY', '2025-06-18 14:33:16'),
(1, 'LACAMPUENGA', 'mon', 'ABALOS- YATCO, JOY', '2025-06-18 14:51:04'),
(4, 'Geronaga', 'def', 'ABALOS- YATCO, JOY', '2025-06-18 15:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` bigint NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `repass` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `middle_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `barangay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contactNo` bigint DEFAULT NULL,
  `sector` enum('PWD','Senior','Solo Parent','o') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `voterNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` enum('voters','admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'voters',
  `verify` enum('Unverified','Verified') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Unverified',
  `VotersCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `user_id`, `email`, `password`, `repass`, `first_name`, `middle_name`, `last_name`, `barangay`, `contactNo`, `sector`, `voterNo`, `role`, `verify`, `VotersCode`) VALUES
(1, 'Vote-9251-Elect-25', 'rachellelacampuenga@gmail.com', '$2y$10$vdnPsXyBSJvYjVne5GWPneZnGoNkKRXnMiV9liU9vbE7ctUoe/jAe', 'R@ym0nd!2000', 'RACHELLE', 'BERON', 'LACAMPUENGA', 'we', 9603758793, 'Solo Parent', '266A', 'voters', 'Unverified', 'mon'),
(2, 'Vote-2-Elect-25', 'kristinelacampuenga@gmail.com', '$2y$10$yVZ.RND3FynCfKaDlnRRAux90x8uUFPFHmXZouTOJ0eKPP5lTXQOK', 'R@ym0nd!2000', 'Kristine', 'BERON', 'Lacampuenga', 'Canlalay', 9213141840, 'PWD', '266A', 'admin', 'Unverified', NULL),
(3, 'Vote-3-Elect-25', 'Challemes@gmail.com', '$2y$10$Texf0HoulLM19L/NVLnZAOtU88EbQNSaL03wMPEm6qbkI/rxAQ2MC', 'Ch@ll3mes001$', 'Cha', 'Llemes', 'Lacampuenga', 'Canlalay', 9567854125, 'o', '235B', 'voters', 'Unverified', 'ABC'),
(4, 'Vote-4-Elect-25', 'nickogeronaga@gmail.com', '$2y$10$lxxhxuleWG2bHBGW0tmUSeVRIfBN99QzSvQv4vbb5Ux9VzJPb/Jma', 'n1CK0001%', 'Nicko', 'Norem', 'Geronaga', 'Canlalay', 9567854123, 'o', '235B', 'admin', 'Unverified', 'def');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
