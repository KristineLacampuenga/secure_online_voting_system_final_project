-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: fdb1028.awardspace.net
-- Generation Time: Jun 19, 2025 at 04:02 AM
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
(8, 'Lacampuenga', 'pop', 'g8YDTlcSrKjmrJVOIEhunLUz6i3Nz8PIEqWhx4NPDhBEoUEYguhs0UPeWJxWXTFs', 'sbr7sZ51YgwEomNdaqy4EhaCmrcxmDYvQ7l54NBAj0E=', 'J4wCaCVC37yj5cKUkyxySGuBDOqebGHU9q/tFlI/9V0=', 'mkyScn/hhAvOm11ssdKrNhHM0vyx8tAMqUhktqSNBfM=', 'p4UFTkfhaoL2HejbvC5x9U6C6SEyEFa3QL3AZPuG9HIzg1biag3OTe6JewPz6Dgc', 'U74QYuhu05io5YODuCDtP4hmtQ5+Z6AtgDlYXsLSzP42kpauIhtXQlNcuuMWpA53', 'Dgj5TUI++aEgP3bgbAWmeFNMvOK/Vefny41eguLAA+dcZTyON7yaI+FXIMbjXHYF', 'Hp6vHNnHRLtahqrZFJWYiXRScZLRVD5s7BX/hF/KumM=', '38lpu3B8nPSWG15fwEoHXpCT8w0W9a4nc0hG7XUWZz0vjuzbkMqftbcHb9+RQECU', 'fGtE5DvhMsQM5yHY4gC5lFgI0KW/gZKfKbv4lRdnguKkFWG4JJ+xjwy+Ed6tmZiD', 'UNvjfPiP//pX/vK0M3fhezmnriNXjmwNqnRChKLNgMsd4CmoO/AFv7j2vzwMZe/W', 'iz+Xlu02r3tT10ha9Lne1A9Og+jifbiWAYTNWTeRRz0=', '2025-06-19 03:46:13'),
(5, 'Buladaco', 'fer', 'rSK7KfOXMAyOXiUCcjLw7muWj43mt/QLgg/RjYKSdyd6kvEgudow132abqas8cM1', 'sOKQoubWm5Bb7Z61RDwtDfhwP0ug0VMuGI8L+Q12hmY=', 'Xwtf1YlaEa1bYz6NynMsqwHhaBzknwWJy6v+SJzIMFw=', 'mul6xTMgMlQQikSEq7f0j7xsQsF391qhJK+HArwdE+0=', 'UAJr9nSeohsZm7d7ZfYXvzwNBdjiAr6osy7BqLwAKU/KJ9up25gRbMzP2osZfJ89', 'aEgn+S9h1wMsBUooyN7ZFICdw7G/8NenPqEOZNip2yBWrd+gT8r2Q2a64lJ4Vnbr', '6sCBPgh85gXZfsLZwcRMBZkP/nd64IXe3CC6tmYWXBfw+w5wkKmwuhUlPB4LkWpC', 'd361a8OKCHLrfue45T19GyKG9up47/0Qqo1x4w9nNV2EwnH787VglExS1Bt9Gs8S', 'ueBB2XW4bwADYuGd34pbTWBhthlyUqm6b7W/W2TaOtH6NUQQAWOKseyAjv0aFeYI', 'j3doLNmIoylNCM02U9t4UKGFby/FjqCqYPgEG6JJbxpX/B4iBvcP9/YjGohxQ/AU', '7nFUD/IvSXVVllzDbdHIHzpVwtmu0NDDPwPUh/50F9Q=', '6PIZ4Pe6fdeO0evc9xx4aDcAM7aGesgw48C3YVltUA4=', '2025-06-19 03:48:05'),
(7, 'Tulana', 'gar', 'KJzwlner6QWnIDxUgXHPTvevFm6G72fQ5iV9yUxiMvk=', 'ZZKXF6dnxLXbcmlTr13u51Y8NfU/r5SpmCu/kfxu9EY=', '9Z/nvEaLkKihyDbxMEwAo1Qe7lA+Oj0p6OpM4rdPUNjRs9xPIPYIaOQ+PoiYN7pz', 'rDV3Q1NTvRGkBqwJApCpzHTpvMSaHrDKgeULaSiPR3HRPLJpLnU6TTR43j2+M740', 'wWfWa7aHc+2hSQQp2QBE/WVgTqG32Il2pDxPOz1iMwAXcSGV1SjkBPREt/4Ecewr', 'dbYmnAYkvsa72wfT89xUIXi6VbQ76tZuHpV9/2YoIVmep7hT1IK6fbClpMgu79aI', 'TweoWJ166WDhJpeGOL+CtMghlYDRJIvh/bwuYz97KY8=', 'A1AlsP1Fs4VvsAOLfpVXT9orGUuleYt+tDUflObZr8EgXAXECjN+mSE7+SEnVEgf', 'ySDYHsOmRyjcC93C/AeXPMQF4rRGhkILiZGMy9gBN1g=', 'bbvpufSFV2BkQQVNhu/+OL4PklMxTSytL9ja6dpNGJaIPhYg7ZO+4G6O9bzMPCYg', 'xSt1v0i4kOquN6DDeQsP6rr+KKSV6xG3qNO7IJImUo0=', 'EOx8CgrI/zDTuux7UzVeQMZdE2M2ceCcfKM0m5HWBmyqyKebxuz9bJEOKuN8lNI1', '2025-06-19 03:49:55'),
(1, 'LACAMPUENGA', 'mon', 'XD9T10QkxX5GpXU0YfcWFDz9JXM5m7APfTsFSo2BF6A=', 'puOSVkBlIVSEIAp9RaaqowbtMtmgTvJ7zaFVcO6gPfc=', 'cMpY416pG0MghuqP3AHmlEGvYzHp59dY6b7LDaFhvwjDAybbRu5nOsMt0xQ0qA8p', 'Q0z0nQJavUBcu03j3pynAFzsMAJr2Up2KfUmhhztwR1pHXJdVLqX5IR6CFouHouH', '31KNoILMlHnTBnyyXkuz5RM0uCmv0nNRVs8w7zlwqSlfo3ur9kkl56GKaZ4jro5b', 'l1if9kbSi7P8XqboVDcjDygPeqaGA5fL3f3yM7uc3x8B/+Ems+csWqpFRJzK64dl', 'rY0XKiozT4Y1AzWyRXcAlEu/ftMuB6IFy3JvC31ahacK9tHHKkfEFnophoCAzo/9', '6iC6T8TD+XvDA+iwTWph3Pz/vbBlu86nLm9buD79waQ=', 'rJ+c7UxSvYjgdyaYmluQ1//J5QFVKPFOU5JTs6no8AHbiqdYX/2mEPSgzbC2PwJo', '6dtc0zKez8imz0QbxE3NdS+MBDOpJ/HM+D0tHjLHMAHTzcIgSGUD8uTSvp/aIoPQ', 'rMhoNHyJ2hb/eTxtszNMqp8ud0jWumdNfeSx4wBrNOk=', 'ma0NmhLe8x16xwlfzLQ1eyID0oZCV09kt8P8WUbBcmY=', '2025-06-19 03:57:27');

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
(8, 'Lacampuenga', 'pop', '7v01DL9K3BLkPaGWN3gf/QaWNDCJUDpzlOTRf5yAQZV7haLyPgbG7cU5dqUICNL3', '2025-06-19 03:46:13'),
(5, 'Buladaco', 'fer', 'BD2KROUHkfWpV4D2Vysw7W7shGjivajltaTS+2TlAUkwWPvNRVrNXN5Jsw+VERGm', '2025-06-19 03:48:05'),
(7, 'Tulana', 'gar', '50WKklYzwbSBPaQBFg8hPMmApfqatzi+qyBVE7E51AXAykr4cyUVbcnO3R/FGAPr', '2025-06-19 03:49:55'),
(1, 'LACAMPUENGA', 'mon', 'AAiePXhb4rDfnVHRYmcBkAQXYmtlS1iLoCSrofRpqLFnz32+BKDObsvFMLw3u8V9', '2025-06-19 03:57:27');

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
(8, 'Lacampuenga', 'pop', 'uckN1Wvrk+croP5zf5NuYAaA/MFymTMXDdskdteVeW0=', '2025-06-19 03:46:13'),
(5, 'Buladaco', 'fer', '0IuyCENSlOYGPKVHYVCfE+/g5EIB5IFWQiZnfvuNUdY=', '2025-06-19 03:48:05'),
(7, 'Tulana', 'gar', 'PmTfrXSqxGTysvSmTMNa/yDDTS1KlirnEpT3WfFiajY=', '2025-06-19 03:49:55'),
(1, 'LACAMPUENGA', 'mon', '98BvaKaGp8Mv0TEj/sM20EboWtea8w80wE30YSxCZF8=', '2025-06-19 03:57:27');

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
(8, 'Lacampuenga', 'pop', 'xrfuqWoSeTRkZ3BurKnJl6b7T0Bqo2EC4P3pxyGkeBw=', '2025-06-19 03:46:13'),
(5, 'Buladaco', 'fer', 'e+pG1anvvrHMd96DlvG4JfLr2Q6kx4c3Un+g1/ny3i0=', '2025-06-19 03:48:05'),
(7, 'Tulana', 'gar', 'znGXr43tLvE369E8z/6mX2wsP0wpsj33PATArgLnvl8=', '2025-06-19 03:49:55'),
(1, 'LACAMPUENGA', 'mon', 'wBpeyE+2kk6aGOppYezlPmNNu596jly0mmBd0emBWeI=', '2025-06-19 03:57:27');

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
(8, 'Lacampuenga', 'pop', '0ZxEYQRtZcMIqqRQD5qXFqGKK3TDT34m1fU5WFR+M08=', 'fQ5Eh17GdOMFzQTWcRyDNU2/fOPR9uWlfDezrRflJt0=', 'yEqlUp6RXgC3k198dmYse2NvNRGiG69zelF/JsWbS0A=', '8GjdftHy5edUHw7ewFTK+d7X6Ab88NK6/ft3IdWBttY=', 'E6ReGqzLdyb9+mRCpUIsb7jVwd13tfIFfpiyXJjfA7o=', 'ASN8a1W5gXWQn5KWT1aNxKuMeJMSl+IrhcyF/2+etwk=', 'jbfv2aK3nTAy4LvYni7NkMBXmx7IZTOjiH86YlYydIo=', 'zJu5hQbd/btU1DxNFbI9q2mU4ktGDSxFYNIQEcHcxrw=', 'yAhVxfweDiRev6UZAUxO22B0hY6mJoKtEYzBc7oDrR0=', 'IC/OtxTZcs7VZxEpb7srnxo1JKToF23KywlAVhXXnJk=', 'dRy9GVvP1M8maOXMdY/ikyzX0vs3br7Ju6Nv6c3HVbM=', 'baVp2P9CC9aQxJgACu1VuduFJIZGyTkYD2KVCyZT1pU=', '2025-06-19 03:46:13'),
(5, 'Buladaco', 'fer', 'Lw/YJNAcHfH/+KNHI5POWYvhkO4Fukiknpf81ZqUz1U=', 'QPC2imzG970eoKdn2GPmKF33W9rDhEbU8Gv+wy12HDo=', 'zDKQU8rs4Ek2djlIf7QZhDPhM1eOZYAfoiSRlaXxZwY=', 'Hq4rkD2x37wPlac85zKVYjWnNUXeKCP5+hukDaM0p7w=', 'm20YZ9uLsRT2u8o77VLS6wYDxc8NehDR0uhf0EUDoNA=', 'sYOZMCWHvZKCg/BauVUTPVMoAHz8GbWSInTP4+FFBKg=', 'ezhyRyt4AsIqW8g4chlR2dp4e/a4xSec5NCBkBIvYfw=', '2MtFbka80iOM8buJkDQf2nyKQuKquvcgOPCYaSAqrik=', 'qKMFjepm9BenO9Kv/+Y0FDWCwfh1vClGgRaO9DBUXVQ=', 'PSSePDu8u17MsqCV7A7svpJ4+0CB6NpFYE740Juqrqc=', 'scgw5a3+wlxu5OefHCfXTPCBo9fFSS2cj3vbiJdW4sk=', 'MZkQMvZ86y4MMD07aNwrISeWqyz87KBDH6DCjEKCKdk=', '2025-06-19 03:48:05'),
(7, 'Tulana', 'gar', 'leG2jSTc1AlesQ0F+/FPpphea8nFjGimSyaxhZuuNTk=', 'Z0mydcaqkAN+coaSJtk/jpDmRnDa3Tb75xYHTzaTHIs=', 'XVasPROSaFH0ncpxokG0YYTSWm2IVlIV+y5EhC4/J4Q=', 'xzeENWVeeFU8W4eWUWB7yX05szi/3pUD/S9dI19nT8k=', 'lCUiDPVbMocdjMUn0B8vfPb2jtrluFGHdMeUX0SeKnQ=', 'lNYOOZGUO7GZpGp9Eir90ZrKFRPQ6VWukrMapRQpxtk=', 'WS9BytyseszW0Y/I+mAmSwh8kVzjVJUv8zwRklB6Ynk=', 'jEtA1y1kvJE/3hcj+aM2hD1OYHJZju6x/YCqVG/YSXE=', 'YRw3lGlHIrZTYxvVvofHexbvEA45ZBdVZXUjdsBNp3c=', 'xStOgnN2Cf7Y/1R4WhYxkGD/vxVUqNe9GNuxcGbU9ck=', 'HFdnjLpwe8JEvie3IGRlWWKyZdYYzJKMlSD9NYYGCzA=', 'k+UdLjniGCNDk1ycEUtfnYx11rjH5JUVHDk9uQ9A1SI=', '2025-06-19 03:49:55'),
(1, 'LACAMPUENGA', 'mon', 'eZGMoxcR/XaxqlfEiqAcbYpL38Lx4abn03MDWxzrxPE=', 'a0ZDoSWY5tqWza9nqs73dM3JvikBhrnDJBgT0SP0cso=', 'h3AbaYOgIOWJQLS0EmFJ1NPF2EssqzbPICQATWzXve0=', 'c0/UKGljAADKVLIZfYDY3dnjgFVkNiF5dRqDskM7SfA=', 'ifsXvaNl3W72eEUs8PyFL6Mpyue6hPA+kdwYvL20BwA=', '153MW5MEMX8dOoxnd5Zlw1+4LbBw5k/AC2/HtLCfqqY=', 'ERL+ANImEmtHgQdzoCsQW7s+M2vihgxGKV9SlU5xxQU=', 'OsFHtDt75Yav6aDrVhy7hg/0ODiJE0IZIp9LQn3NSX0=', 'k9QlHZ8AG+YaNiALprvD5Y+9ddXgQp8t3aTSeH31qLg=', 'p7aWnsIbhHCCEgZbYA1BusdS/r5e1S63/RMf/wSMXGo=', '8uKOzHfKYgWBmKTgsg4znTWn8La7Kw0N1tg5wNyelwk=', 'WgepgUvXwc0anyC8C70QKe71EL2xo8QBWrnB9B7wy84=', '2025-06-19 03:57:27');

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
(8, 'Lacampuenga', 'pop', 'gtR0I0jiBZtSYT04LV1FWUa0ZYjS49V/9dF70dE1MlaVd9UttYcoIynE9G2So473', '2025-06-19 03:46:13'),
(5, 'Buladaco', 'fer', '6F4y7aA0oJoLReVpQB3+qLK6znHUzr90NUJBJikYwITpv0U3gjMnGIFccVjoJTcI', '2025-06-19 03:48:05'),
(7, 'Tulana', 'gar', '5oEGaQtPbCjsO6Ycc9sw1AKweAglGO9n9SCxAe8w1byYf1HjOShmtV2sVM7XzGLw', '2025-06-19 03:49:55'),
(1, 'LACAMPUENGA', 'mon', 'DlzAbj5wZPrpWFkeknvvAH5gY+EketnItsE5nMZfb2gy4Ix/iCLWUTBWifDmePiF', '2025-06-19 03:57:27');

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
(4, 'Vote-4-Elect-25', 'nickogeronaga@gmail.com', '$2y$10$lxxhxuleWG2bHBGW0tmUSeVRIfBN99QzSvQv4vbb5Ux9VzJPb/Jma', 'n1CK0001%', 'Nicko', 'Norem', 'Geronaga', 'Canlalay', 9567854123, 'o', '235B', 'admin', 'Unverified', 'def'),
(5, 'Vote-5-Elect-25', 'jaime@gmail.com', '$2y$10$D36LN2gvwjT0tnpLhoE3aeO.Us0byD0g5uxNLEnM7n1abp96UOKuS', 'J13me001%', 'Jaime', 'Mamamo', 'Buladaco', 'Canlalay', 9123456879, 'Solo Parent', '266A', 'voters', 'Unverified', 'fer'),
(6, 'Vote-6-Elect-25', 'Tintin@gmail.com', '$2y$10$ZBWBHNkzk1.B6yxR0ZRHTOWQf/25QpwNFDX3T.3P96okMIN08WG4K', 'Kr1st1be@001', 'Kristine', 'BERON', 'LACAMPUENGA', 'Canlalay', 9603758798, 'o', '266A', 'voters', 'Unverified', 'mam'),
(7, 'Vote-7-Elect-25', 'Ace@gmail.com', '$2y$10$1yJl59VfkKxgUt423psbXeCEckoA7x6P56lFEYRZ4di.px.N6PoMS', 'Ac3tulna4001%', 'Ace', 'Mamamo', 'Tulana', 'San Antonio', 9635241894, 'o', '266A', 'voters', 'Unverified', 'gar'),
(8, 'Vote-8-Elect-25', 'Baby@gamil.com', '$2y$10$JforPdmv7VARTlmBQefpnuj5EXg.Km2i2rb9JZrrlEoRF0itOh6D6', 'BabyJ01002&', 'Baby Joy', 'Beron', 'Lacampuenga', 'Canlalay', 9635412894, 'Solo Parent', '235B', 'voters', 'Unverified', 'pop');

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
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
