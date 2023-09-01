-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: library_management_system
-- ------------------------------------------------------
-- Server version	8.1.0

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `book_id` int NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `published` date DEFAULT NULL,
  `ISBN` int DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `library_id` int DEFAULT NULL,
  `shelf_number` varchar(50) DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
CREATE TABLE `library` (
  `librarian_id` int NOT NULL,
  `name_library` varchar(50) DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  PRIMARY KEY (`librarian_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `library_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `programme` varchar(50) DEFAULT NULL,
  `faculty` varchar(50) DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `date_borrow` date DEFAULT NULL,
  `date_return` date DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
UNLOCK TABLES;

-- Dump completed on 2023-08-31 21:02:33
