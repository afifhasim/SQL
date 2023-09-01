-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: arts_gallery
-- ------------------------------------------------------
-- Server version	8.1.0

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
CREATE TABLE `artist` (
  `artist` varchar(100) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `achievements` varchar(500) DEFAULT NULL,
  KEY `artist` (`artist`),
  CONSTRAINT `artist_ibfk_1` FOREIGN KEY (`artist`) REFERENCES `arts` (`artist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `arts`
--

DROP TABLE IF EXISTS `arts`;
CREATE TABLE `arts` (
  `artist` varchar(100) NOT NULL,
  `code_arts` int DEFAULT NULL,
  `medium_arts` varchar(100) DEFAULT NULL,
  `venue` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`artist`),
  KEY `venue` (`venue`),
  CONSTRAINT `arts_ibfk_1` FOREIGN KEY (`venue`) REFERENCES `gallery` (`venue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `arts`
--

LOCK TABLES `arts` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `enquiries`
--

DROP TABLE IF EXISTS `enquiries`;
CREATE TABLE `enquiries` (
  `register_id` int DEFAULT NULL,
  `first_name` varchar(500) DEFAULT NULL,
  KEY `register_id` (`register_id`),
  CONSTRAINT `enquiries_ibfk_1` FOREIGN KEY (`register_id`) REFERENCES `visitor` (`register_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `enquiries`
--

LOCK TABLES `enquiries` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery` (
  `venue` varchar(15) NOT NULL,
  `arts` varchar(100) DEFAULT NULL,
  `artist` varchar(100) DEFAULT NULL,
  `date_display` date DEFAULT NULL,
  `visitor` int DEFAULT NULL,
  PRIMARY KEY (`venue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor` (
  `register_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`register_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
UNLOCK TABLES;

-- Dump completed on 2023-09-02  0:05:02
