-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 14, 2018 at 12:02 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `GPUDataBase`
--

-- --------------------------------------------------------

--
-- Table structure for table `Favs`
--

CREATE TABLE `Favs` (
  `userID` int(11) NOT NULL,
  `gpuID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Favs`
--

INSERT INTO `Favs` (`userID`, `gpuID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 37),
(1, 55),
(1, 97),
(1, 102),
(1, 133);

-- --------------------------------------------------------

--
-- Table structure for table `Fps`
--

CREATE TABLE `Fps` (
  `Series` varchar(255) NOT NULL,
  `Fps` int(11) DEFAULT NULL,
  `Game` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Fps`
--

INSERT INTO `Fps` (`Series`, `Fps`, `Game`) VALUES
('\r\nGeForce GTX 1080', 111, 'BattleField1'),
('GeForce GTX 1060', 71, 'BattleField1'),
('GeForce GTX 1060', 160, 'CSGO'),
('GeForce GTX 1060', 134, 'Dota 2'),
('GeForce GTX 1060', 104, 'Fortnite'),
('GeForce GTX 1060', 60, 'GTA'),
('GeForce GTX 1060', 165, 'LOL'),
('GeForce GTX 1060', 102, 'Overwatch'),
('GeForce GTX 1060', 69, 'Pubg'),
('GeForce GTX 1060', 58, 'The Witcher 3'),
('GeForce GTX 1070', 98, 'BattleField1'),
('GeForce GTX 1070', 195, 'CSGO'),
('GeForce GTX 1070', 156, 'Dota 2'),
('GeForce GTX 1070', 121, 'Fortnite'),
('GeForce GTX 1070', 79, 'GTA'),
('GeForce GTX 1070', 240, 'LOL'),
('GeForce GTX 1070', 118, 'Overwatch'),
('GeForce GTX 1070', 72, 'Pubg'),
('GeForce GTX 1070', 82, 'The Witcher 3'),
('GeForce GTX 1070 Ti', 97, 'BattleField1'),
('GeForce GTX 1070 Ti', 235, 'CSGO'),
('GeForce GTX 1070 Ti', 150, 'Dota 2'),
('GeForce GTX 1070 Ti', 142, 'Fortnite'),
('GeForce GTX 1070 Ti', 85, 'GTA'),
('GeForce GTX 1070 Ti', 194, 'LOL'),
('GeForce GTX 1070 Ti', 123, 'Overwatch'),
('GeForce GTX 1070 Ti', 84, 'Pubg'),
('GeForce GTX 1070 Ti', 81, 'The Witcher 3'),
('GeForce GTX 1080', 167, 'Dota 2'),
('GeForce GTX 1080', 147, 'Fortnite'),
('GeForce GTX 1080', 94, 'GTA'),
('GeForce GTX 1080', 248, 'LOL'),
('GeForce GTX 1080', 134, 'Overwatch'),
('GeForce GTX 1080', 83, 'Pubg'),
('GeForce GTX 1080', 91, 'The Witcher 3'),
('GeForce GTX 1080 Ti', 131, 'BattleField1'),
('GeForce GTX 1080 Ti', 253, 'CSGO'),
('GeForce GTX 1080 Ti', 187, 'Dota 2'),
('GeForce GTX 1080 Ti', 166, 'Fortnite'),
('GeForce GTX 1080 Ti', 112, 'GTA'),
('GeForce GTX 1080 Ti', 271, 'LOL'),
('GeForce GTX 1080 Ti', 150, 'Overwatch'),
('GeForce GTX 1080 Ti', 89, 'Pubg'),
('GeForce GTX 1080 Ti', 107, 'The Witcher 3'),
('Radeon RX 570', 61, 'BattleField1'),
('Radeon RX 570', 153, 'CSGO'),
('Radeon RX 570', 119, 'Dota 2'),
('Radeon RX 570', 86, 'Fortnite'),
('Radeon RX 570', 46, 'GTA'),
('Radeon RX 570', 137, 'LOL'),
('Radeon RX 570', 92, 'Overwatch'),
('Radeon RX 570', 64, 'Pubg'),
('Radeon RX 570', 54, 'The Witcher 3'),
('Radeon RX 580', 72, 'BattleField1'),
('Radeon RX 580', 152, 'CSGO'),
('Radeon RX 580', 136, 'Dota 2'),
('Radeon RX 580', 90, 'Fortnite'),
('Radeon RX 580', 57, 'GTA'),
('Radeon RX 580', 156, 'LOL'),
('Radeon RX 580', 100, 'Overwatch'),
('Radeon RX 580', 69, 'Pubg'),
('Radeon RX 580', 64, 'The Witcher 3'),
('Radeon RX Vega 56', 53, 'BattleField1'),
('Radeon RX Vega 56', 291, 'CSGO'),
('Radeon RX Vega 56', 85, 'Dota 2'),
('Radeon RX Vega 56', 120, 'Fortnite'),
('Radeon RX Vega 56', 53, 'GTA'),
('Radeon RX Vega 56', 173, 'LOL'),
('Radeon RX Vega 56', 79, 'Overwatch'),
('Radeon RX Vega 56', 66, 'Pubg'),
('Radeon RX Vega 56', 76, 'The Witcher 3'),
('Radeon RX Vega 64', 99, 'BattleField1'),
('Radeon RX Vega 64', 294, 'CSGO'),
('Radeon RX Vega 64', 149, 'Dota 2'),
('Radeon RX Vega 64', 91, 'Fortnite'),
('Radeon RX Vega 64', 80, 'GTA'),
('Radeon RX Vega 64', 191, 'LOL'),
('Radeon RX Vega 64', 118, 'Overwatch'),
('Radeon RX Vega 64', 113, 'Pubg'),
('Radeon RX Vega 64', 81, 'The Witcher 3'),
('﻿Nvidia GTX 1080', 235, 'CSGO');

-- --------------------------------------------------------

--
-- Table structure for table `Gpu`
--

CREATE TABLE `Gpu` (
  `Price` int(11) DEFAULT NULL,
  `Brand` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Series` varchar(255) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Chipmanf` varchar(255) DEFAULT NULL,
  `Memory` varchar(11) DEFAULT NULL,
  `GpuID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Gpu`
--

INSERT INTO `Gpu` (`Price`, `Brand`, `Type`, `Series`, `Model`, `Chipmanf`, `Memory`, `GpuID`) VALUES
(1221, 'ZOTAC', 'GeForce GTX 1070', 'NVIDIA GeForce GTX 10 Series', 'ZT-P10700G-10M', 'NVIDIA', '8GB', 1),
(1049, 'ASUS', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'ROG-STRIX-RX580-T8G-GAMING', 'AMD', '8GB', 2),
(769, 'GIGABYTE', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'GV-N108TTURBO-11GD', 'NVIDIA', '11GB', 3),
(799, 'PNY', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'VCGGTX1080T11PB-CG2', 'NVIDIA', '11GB', 4),
(799, 'GIGABYTE', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'GV-N108TGAMING OC-11GD', 'NVIDIA', '11GB', 5),
(779, 'GIGABYTE', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'GV-N108TAORUS X-11GD', 'NVIDIA', '11GB', 6),
(899, 'GIGABYTE', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'GV-N108TAORUSX WB-11GD', 'NVIDIA', '11GB', 7),
(859, 'GIGABYTE', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'GV-N108TAORUSX W-11GD', 'NVIDIA', '11GB', 8),
(829, 'EVGA', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', '11G-P4-6696-KR', 'NVIDIA', '11GB', 9),
(779, 'EVGA', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', '11G-P4-6393-KR', 'NVIDIA', '11GB', 10),
(799, 'EVGA', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', '11G-P4-6593-KR', 'NVIDIA', '11GB', 11),
(809, 'EVGA', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', '11G-P4-6598-KR', 'NVIDIA', '11GB', 12),
(809, 'MSI', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'GeForce GTX 1080 Ti GAMING X 11G', 'NVIDIA', '11GB', 13),
(799, 'EVGA', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', '11G-P4-6796-K2', 'NVIDIA', '11GB', 14),
(779, 'ASUS', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'TURBO-GTX1080TI-11G', 'NVIDIA', '11GB', 15),
(869, 'EVGA', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', '11G-P4-6796-K1', 'NVIDIA', '11GB', 16),
(789, 'MSI', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'GTX 1080 Ti DUKE 11G OC', 'NVIDIA', '11GB', 17),
(914, 'EVGA', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', '11G-P4-6698-KR', 'NVIDIA', '11GB', 18),
(789, 'MSI', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'GTX 1080 Ti AERO 11G OC', 'NVIDIA', '11GB', 19),
(999, 'ASUS', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'STRIX-GTX1080TI-O11G-GAMING', 'NVIDIA', '11GB', 20),
(769, 'EVGA', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', '11G-P4-6591-KR', 'NVIDIA', '11GB', 21),
(921, 'GIGABYTE', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'GV-N108TGAMINGOC BLACK-11GD', 'NVIDIA', '11GB', 22),
(888, 'EVGA', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', '11G-P4-6694-KR', 'NVIDIA', '11GB', 23),
(809, 'EVGA', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', '11G-P4-5390-KR', 'NVIDIA', '11GB', 24),
(871, 'GIGABYTE', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'GV-N108TAORUS-11GD', 'NVIDIA', '11GB', 25),
(784, 'MSI', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'GeForce GTX 1080 TI ARMOR 11G OC', 'NVIDIA', '11GB', 26),
(816, 'ASUS', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', 'ROG STRIX-GTX1080-O8G-GAMING (90YV09M1-M0NM00)', 'NVIDIA', '8GB', 27),
(818, 'GIGABYTE', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', 'GV-N1080IXEB-8GD', 'NVIDIA', '8GB', 28),
(799, 'GIGABYTE', 'GeForce GTX 1060', 'NVIDIA GeForce GTX 10 Series', 'GV-N1060AORUS X-6GD (rev. 2.0)', 'NVIDIA', '6GB', 29),
(769, 'EVGA', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', '08G-P4-6288-KR', 'NVIDIA', '8GB', 30),
(799, 'ZOTAC', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'ZT-P10810F-10P', 'NVIDIA', '11GB', 31),
(776, 'EVGA', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', '08G-P4-6286-KR', 'NVIDIA', '8GB', 32),
(797, 'EVGA', 'GeForce GTX 1070 Ti', 'NVIDIA GeForce GTX 10 Series', '08G-P4-6775-KR', 'NVIDIA', '8GB', 33),
(899, 'GIGABYTE', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', 'GV-N1080IX-8GD', 'NVIDIA', '8GB', 34),
(999, 'ASUS', 'GeForce GTX 1070 Ti', 'NVIDIA GeForce GTX 10 Series', 'ROG-STRIX-GTX1070TI-A8G-GAMING', 'NVIDIA', '8GB', 35),
(899, 'ZOTAC', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', 'ZT-P10800H-10P', 'NVIDIA', '8GB', 36),
(879, 'EVGA', 'GeForce GTX 1070 Ti', 'NVIDIA GeForce GTX 10 Series', '08G-P4-5671-KR', 'NVIDIA', '8GB', 37),
(949, 'ZOTAC', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', 'ZT-P10800C-10P', 'NVIDIA', '8GB', 38),
(812, 'PNY', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', 'VCGGTX10808XGPB-OC', 'NVIDIA', '8GB', 39),
(799, 'ASUS', 'GeForce GTX 1070', 'NVIDIA GeForce GTX 10 Series', 'DUAL-GTX1070-O8G', 'NVIDIA', '8GB', 40),
(899, 'ASUS', 'GeForce GTX 1070', 'NVIDIA GeForce GTX 10 Series', 'STRIX-GTX1070-8G-GAMING', 'NVIDIA', '8GB', 41),
(794, 'ZOTAC', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'ZT-P10810G-10P', 'NVIDIA', '11GB', 42),
(816, 'ZOTAC', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'ZT-P10810D-10P', 'NVIDIA', '11GB', 43),
(899, 'GIGABYTE', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', 'GV-N1080TTOC-8GD', 'NVIDIA', '8GB', 44),
(821, 'PNY', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', 'VCGGTX10808PB', 'NVIDIA', '8GB', 45),
(756, 'MSI', 'GeForce GTX 1070', 'NVIDIA GeForce GTX 10 Series', 'GTX 1070 ARMOR 8G OC', 'NVIDIA', '8GB', 46),
(768, 'MSI', 'GeForce GTX 1070', 'NVIDIA GeForce GTX 10 Series', 'GTX 1070 GAMING X 8G', 'NVIDIA', '8GB', 47),
(824, 'GIGABYTE', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', 'GV-N1080WF3OC-8GD', 'NVIDIA', '8GB', 48),
(767, 'EVGA', 'GeForce GTX 1070 Ti', 'NVIDIA GeForce GTX 10 Series', '08G-P4-5670-KR', 'NVIDIA', '8GB', 49),
(999, 'MSI', 'GeForce GTX 1070 Ti', 'NVIDIA GeForce GTX 10 Series', 'GTX 1070 Ti AERO 8G', 'NVIDIA', '8GB', 50),
(849, 'ZOTAC', 'GeForce GTX 1070 Ti', 'NVIDIA GeForce GTX 10 Series', 'ZT-P10710C-10P', 'NVIDIA', '8GB', 51),
(755, 'ASUS', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', '90YV09S0-M0NA00', 'NVIDIA', '8GB', 52),
(779, 'EVGA', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', '08G-P4-6684-KR', 'NVIDIA', '8GB', 53),
(759, 'EVGA', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', '08G-P4-5180-KR', 'NVIDIA', '8GB', 54),
(799, 'ASUS', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', 'STRIX-GTX1080-A8G-GAMING', 'NVIDIA', '8GB', 55),
(783, 'ASUS', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', 'TURBO-GTX1080-8G', 'NVIDIA', '8GB', 56),
(862, 'EVGA', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', '08G-P4-6183-KR', 'NVIDIA', '8GB', 57),
(754, 'EVGA', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', '08G-P4-6686-KR', 'NVIDIA', '8GB', 58),
(902, 'EVGA', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', '08G-P4-6583-KR', 'NVIDIA', '8GB', 59),
(799, 'ASUS', 'GeForce GTX 1070 Ti', 'NVIDIA GeForce GTX 10 Series', 'CERBERUS-GTX1070TI-A8G-GAMING', 'NVIDIA', '8GB', 60),
(759, 'MSI', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', 'GTX 1080 GAMING X 8G', 'NVIDIA', '8GB', 61),
(989, 'EVGA', 'GeForce GTX 1070', 'NVIDIA GeForce GTX 10 Series', '08G-P4-6178-KR', 'NVIDIA', '8GB', 62),
(921, 'MSI', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', 'GTX 1080 ARMOR 8G OC', 'NVIDIA', '8GB', 63),
(759, 'EVGA', 'GeForce GTX 1070', 'NVIDIA GeForce GTX 10 Series', '08G-P4-6278-KR', 'NVIDIA', '8GB', 64),
(829, 'EVGA', 'GeForce GTX 1070', 'NVIDIA GeForce GTX 10 Series', '08G-P4-5173-KR', 'NVIDIA', '8GB', 65),
(750, 'ASUS', 'GeForce GTX 1060', 'NVIDIA GeForce GTX 10 Series', 'STRIX-GTX1060-O6G-GAMING', 'NVIDIA', '6GB', 66),
(999, 'EVGA', 'GeForce GTX 1070', 'NVIDIA GeForce GTX 10 Series', '08G-P4-6173-KR', 'NVIDIA', '8GB', 67),
(769, 'EVGA', 'GeForce GTX 1070', 'NVIDIA GeForce GTX 10 Series', '08G-P4-6573-KR', 'NVIDIA', '8GB', 68),
(861, 'MSI', 'GeForce GTX 1070 Ti', 'NVIDIA GeForce GTX 10 Series', 'GTX 1070 TI ARMOR 8G', 'NVIDIA', '8GB', 69),
(897, 'MSI', 'GeForce GTX 1070 Ti', 'NVIDIA GeForce GTX 10 Series', 'GTX 1070 Ti GAMING 8G', 'NVIDIA', '8GB', 70),
(798, 'EVGA', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', '11G-P4-6391-KR', 'NVIDIA', '11GB', 71),
(849, 'EVGA', 'GeForce GTX 1070 Ti', 'NVIDIA GeForce GTX 10 Series', '08G-P4-6678-KR', 'NVIDIA', '8GB', 72),
(897, 'MSI', 'GeForce GTX 1070 Ti', 'NVIDIA GeForce GTX 10 Series', 'GTX 1070 Ti Titanium 8G', 'NVIDIA', '8GB', 73),
(751, 'PNY', 'GeForce GTX 1070 Ti', 'NVIDIA GeForce GTX 10 Series', 'VCGGTX1070T8PB', 'NVIDIA', '8GB', 74),
(809, 'ASUS', 'GeForce GTX 1080 Ti', 'NVIDIA GeForce GTX 10 Series', 'STRIX-GTX1080TI-11G-GAMING', 'NVIDIA', '11GB', 75),
(882, 'EVGA', 'GeForce GTX 1070 GAMING', 'NVIDIA GeForce GTX 10 Series', '08G-P4-5170-KR', 'NVIDIA', '8GB', 76),
(823, 'MSI', 'GeForce GTX 1080', 'NVIDIA GeForce GTX 10 Series', 'GTX 1080 AERO 8G OC', 'NVIDIA', '8GB', 77),
(649, 'ASUS', 'Radeon RX Vega 64', 'AMD Radeon RX VEGA Series', 'AREZ-STRIX-RXVEGA64-O8G-GAMING', 'AMD', '8GB', 78),
(589, 'ASUS', 'Radeon RX Vega 64', 'AMD Radeon RX VEGA Series', 'STRIX-RXVEGA64-O8G-GAMING', 'AMD', '8GB', 79),
(579, 'GIGABYTE', 'Radeon RX Vega 64', 'AMD Radeon RX VEGA Series', 'GV-RXVEGA64GAMING OC-8GD', 'AMD', '8GB', 80),
(519, 'MSI', 'Radeon RX Vega 56', 'AMD Radeon RX VEGA Series', 'RX Vega 56 Air Boost 8G OC', 'AMD', '8GB', 81),
(579, 'ASRock', 'Radeon RX Vega 64', 'AMD Radeon RX VEGA Series', 'VEGA 64 8G', 'AMD', '8GB', 82),
(579, 'MSI', 'Radeon RX Vega 64', 'AMD Radeon RX VEGA Series', 'Radeon RX Vega 64 Air Boost 8G OC', 'AMD', '8GB', 83),
(599, 'PowerColor', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'AXRX 580 8GBD5-3DHG-OC', 'AMD', '8GB', 84),
(527, 'GIGABYTE', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'GV-RX580IXEB-8GD', 'AMD', '8GB', 85),
(865, 'GIGABYTE', 'Radeon RX Vega 56', 'AMD Radeon RX VEGA Series', 'GV-RXVEGA56GAMING OC-8GD', 'AMD', '8GB', 86),
(556, 'PowerColor', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'AXRX 580 8GBD5-DMV3', 'AMD', '8GB', 87),
(524, 'PowerColor', 'Radeon RX 570', 'AMD Radeon RX 500 Series', 'AXRX 570 4GBD5-3DH-OC', 'AMD', '4GB', 88),
(657, 'SAPPHIRE', 'Radeon RX Vega 56', 'AMD Radeon RX VEGA Series', '100420PSR', 'AMD', '8GB', 89),
(518, 'MSI', 'Radeon RX 570', 'AMD Radeon RX 500 Series', 'RX 570 GAMING X 8G', 'AMD', '8GB', 90),
(647, 'PowerColor', 'Radeon RX Vega 56', 'AMD Radeon RX VEGA Series', 'AXRX VEGA 56 8GBHBM2-2D2HD-OC', 'AMD', '8GB', 91),
(633, 'GIGABYTE', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'GV-RX580GAMING-4GD', 'AMD', '4GB', 92),
(686, 'ASUS', 'Radeon RX Vega 56', 'AMD Radeon RX VEGA Series', 'STRIX-RXVEGA56-O8G-GAMING', 'AMD', '8GB', 93),
(599, 'PowerColor', 'Radeon RX Vega 64', 'AMD Radeon RX VEGA Series', 'AXRX VEGA 64 8GBHBM2-2D2H-OC', 'AMD', '8GB', 94),
(576, 'MSI', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'RX 580 ARMOR 4G OC', 'AMD', '4GB', 95),
(309, 'SAPPHIRE', 'Radeon RX 580', 'AMD Radeon RX 500 Series', '100411NT-8GSEL', 'AMD', '8GB', 96),
(319, 'SAPPHIRE', 'Radeon RX 570', 'AMD Radeon RX 500 Series', '100412P4GOCL', 'AMD', '4GB', 97),
(319, 'ASUS', 'Radeon RX 570', 'AMD Radeon RX 500 Series', 'EX-RX570-O8G', 'AMD', '8GB', 98),
(329, 'SAPPHIRE', 'Radeon RX 580', 'AMD Radeon RX 500 Series', '100411P4GOCL', 'AMD', '4GB', 99),
(379, 'ASUS', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'ROG-STRIX-RX580-O8G-GAMING', 'AMD', '8GB', 100),
(339, 'MSI', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'RX 580 ARMOR MK2 8G OC', 'AMD', '8GB', 101),
(326, 'MSI', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'RX 580 ARMOR 8G OC', 'AMD', '8GB', 102),
(328, 'GIGABYTE', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'GV-RX580AORUS-8GD', 'AMD', '8GB', 103),
(351, 'SAPPHIRE', 'Radeon RX 580', 'AMD Radeon RX 500 Series', '11265-01-20G', 'AMD', '8GB', 104),
(320, 'MSI', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'Radeon RX 580 8G V1', 'AMD', '8GB', 105),
(338, 'ASUS', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'DUAL-RX580-O8G', 'AMD', '8GB', 106),
(311, 'ASUS', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'DUAL-RX580-O4G', 'AMD', '4GB', 107),
(315, 'XFX', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'RX-580P8DFD6', 'AMD', '8GB', 108),
(381, 'MSI', 'Radeon RX 570', 'AMD Radeon RX 500 Series', 'RX 570 GAMING X 4G', 'AMD', '4GB', 109),
(309, 'SAPPHIRE', 'Radeon RX 570', 'AMD Radeon RX 500 Series', '100412NT-4GL', 'AMD', '4GB', 110),
(324, 'GIGABYTE', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'GV-RX580GAMING-8GD', 'AMD', '8GB', 111),
(320, 'XFX', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'RX-580P427D6', 'AMD', '4GB', 112),
(307, 'GIGABYTE', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'GV-RX580AORUS-4GD', 'AMD', '4GB', 113),
(331, 'SAPPHIRE', 'Radeon RX 570', 'AMD Radeon RX 500 Series', '11266-09-20G', 'AMD', '8GB', 114),
(308, 'MSI', 'Radeon RX 570', 'AMD Radeon RX 500 Series', 'RX 570 ARMOR 8G OC', 'AMD', '8GB', 115),
(329, 'MSI', 'Radeon RX 570', 'AMD Radeon RX 500 Series', 'RX 570 ARMOR MK2 8G OC', 'AMD', '8GB', 116),
(337, 'XFX', 'Radeon RX 570', 'AMD Radeon RX 500 Series', 'RX-570P8DFD6', 'AMD', '8GB', 117),
(383, 'PowerColor', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'AXRX 580 8GBD5-3DHDV2-OC', 'AMD', '8GB', 118),
(373, 'PowerColor', 'Radeon RX 570', 'AMD Radeon RX 500 Series', 'AXRX 570 8GBD5-DMV3', 'AMD', '8GB', 119),
(363, 'SAPPHIRE', 'Radeon RX 570', 'AMD Radeon RX 500 Series', '100412P4GITXL', 'AMD', '4GB', 120),
(385, 'XFX', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'RX-580P828D6', 'AMD', '8GB', 121),
(311, 'ASUS', 'Radeon RX 570', 'AMD Radeon RX 500 Series', 'ROG-STRIX-RX570-O4G-GAMING', 'AMD', '4GB', 122),
(367, 'SAPPHIRE', 'Radeon RX 580', 'AMD Radeon RX 500 Series', '100411NT-4GL', 'AMD', '4GB', 123),
(368, 'XFX', 'Radeon RX 570', 'AMD Radeon RX 500 Series', 'RX-570P8DBD6', 'AMD', '8GB', 124),
(371, 'GIGABYTE', 'Radeon RX 570', 'AMD Radeon RX 500 Series', 'GV-RX570AORUS-4GD', 'AMD', '4GB', 125),
(349, 'SAPPHIRE', 'Radeon RX 580', 'AMD Radeon RX 500 Series', '100411NT-8GL', 'AMD', '8GB', 126),
(395, 'GIGABYTE', 'Radeon RX 580', 'AMD Radeon RX 500 Series', 'GV-RX580GAMING-4GD', 'AMD', '4GB', 127),
(339, 'PowerColor', 'Radeon RX 570', 'AMD Radeon RX 500 Series', 'AXRX 570 4GBD5-3DHD-OC', 'AMD', '4GB', 128),
(394, 'SAPPHIRE', 'Radeon RX 580', 'AMD Radeon RX 500 Series', '100411P8GOCL', 'AMD', '8GB', 129),
(352, 'GIGABYTE', 'Radeon RX 570', 'AMD Radeon RX 500 Series', 'GV-RX570GAMING-4GD', 'AMD', '4GB', 130);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`FirstName`, `LastName`, `Email`, `Password`, `userID`) VALUES
('Crue', 'Martin', 'cmartin@email.com', '1234', 1),
('spam', 'sam', 'sam@email.com', '1', 2),
('spam', 'sam', 'sam@email.com', '1', 3),
('randi', 'martin', 'rmartin@email.com', '4', 4),
('randi', 'martin', 'rmartin@email.com', '4', 5),
('randi', 'martin', 'rmartin@email.com', '4', 6),
('joe', 'manto', 'email@email.com', '1234', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Favs`
--
ALTER TABLE `Favs`
  ADD PRIMARY KEY (`userID`,`gpuID`);

--
-- Indexes for table `Fps`
--
ALTER TABLE `Fps`
  ADD PRIMARY KEY (`Series`,`Game`);

--
-- Indexes for table `Gpu`
--
ALTER TABLE `Gpu`
  ADD PRIMARY KEY (`GpuID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Gpu`
--
ALTER TABLE `Gpu`
  MODIFY `GpuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
