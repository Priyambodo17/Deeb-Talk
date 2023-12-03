-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2023 at 02:35 PM
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
-- Database: `db_deeb`
--

-- --------------------------------------------------------

--
-- Table structure for table `diskusi`
--

CREATE TABLE `diskusi` (
  `nama` varchar(100) NOT NULL,
  `komentar` varchar(500) NOT NULL,
  `submit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diskusi`
--

INSERT INTO `diskusi` (`nama`, `komentar`, `submit`) VALUES
('', '', ''),
('cek', 'cekcek', ''),
('ceklis', 'cekcekcekrek', ''),
('Osas', 'Anis', ''),
('yow', 'anis menang', ''),
('yoyok', 'Anis menang pokoke', '');

-- --------------------------------------------------------

--
-- Table structure for table `opini`
--

CREATE TABLE `opini` (
  `Name` varchar(525) NOT NULL,
  `Opinions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`email`, `password`) VALUES
('dwdwdw@gmail.com', '$2y$10$Oe35OuA8FwZ8AlN1PKweOeC9NtusFDLMptytNcvU0rYFUAT7lGpey');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diskusi`
--
ALTER TABLE `diskusi`
  ADD UNIQUE KEY `nama` (`nama`,`komentar`),
  ADD UNIQUE KEY `nama_2` (`nama`,`komentar`,`submit`) USING HASH,
  ADD UNIQUE KEY `nama_3` (`nama`,`komentar`,`submit`) USING HASH;

--
-- Indexes for table `opini`
--
ALTER TABLE `opini` ADD FULLTEXT KEY `name` (`Name`);
ALTER TABLE `opini` ADD FULLTEXT KEY `opinions` (`Opinions`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
