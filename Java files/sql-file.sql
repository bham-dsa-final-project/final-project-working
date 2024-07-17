-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: prism
-- ------------------------------------------------------
-- Server version	8.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `callouts`
--

DROP TABLE IF EXISTS `callouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `callouts` (
  `callout_id` int NOT NULL AUTO_INCREMENT,
  `callout_date` datetime(6) DEFAULT NULL,
  `comments` varbinary(255) DEFAULT NULL,
  `callout_likes` int DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `points` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  PRIMARY KEY (`callout_id`),
  KEY `FK1jum91kcwdfmhewabojqklh5x` (`employee_id`),
  CONSTRAINT `FK1jum91kcwdfmhewabojqklh5x` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificates` (
  `cert_id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `cert_name` varchar(255) DEFAULT NULL,
  `talentguard_id` int DEFAULT NULL,
  `certs_ORDER` int DEFAULT NULL,
  PRIMARY KEY (`cert_id`),
  KEY `FKabrn605nwg8bsfjnevuji0bb1` (`talentguard_id`),
  CONSTRAINT `FKabrn605nwg8bsfjnevuji0bb1` FOREIGN KEY (`talentguard_id`) REFERENCES `talentguards` (`talentguard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `DOB` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_friend` bit(1) DEFAULT NULL,
  `is_manager` bit(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `ROLE` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `team` int DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiences` (
  `exp_id` int NOT NULL AUTO_INCREMENT,
  `experience` varchar(255) DEFAULT NULL,
  `months` int NOT NULL,
  `years` int NOT NULL,
  `talentguard_id` int DEFAULT NULL,
  `exps_ORDER` int DEFAULT NULL,
  PRIMARY KEY (`exp_id`),
  KEY `FKfexko1ow2shqgcwe7j87xym8i` (`talentguard_id`),
  CONSTRAINT `FKfexko1ow2shqgcwe7j87xym8i` FOREIGN KEY (`talentguard_id`) REFERENCES `talentguards` (`talentguard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fames`
--

DROP TABLE IF EXISTS `fames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fames` (
  `fame_id` int NOT NULL AUTO_INCREMENT,
  `comments` varbinary(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `fame_date` datetime(6) DEFAULT NULL,
  `fame_type` varchar(255) DEFAULT NULL,
  `fame_likes` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  PRIMARY KEY (`fame_id`),
  KEY `FKb4aa3xw8kfi2c3b2jn0q13uko` (`employee_id`),
  CONSTRAINT `FKb4aa3xw8kfi2c3b2jn0q13uko` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `small_improvements`
--

DROP TABLE IF EXISTS `small_improvements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `small_improvements` (
  `small_improvements_id` int NOT NULL AUTO_INCREMENT,
  `due_date` date DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `meeting_date` date DEFAULT NULL,
  `meetings` varchar(255) DEFAULT NULL,
  `objectives` varchar(255) DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  PRIMARY KEY (`small_improvements_id`),
  KEY `FKss416191ncs2kejqgi23y79vs` (`employee_id`),
  CONSTRAINT `FKss416191ncs2kejqgi23y79vs` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `talentguards`
--

DROP TABLE IF EXISTS `talentguards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talentguards` (
  `talentguard_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  PRIMARY KEY (`talentguard_id`),
  KEY `FKhq2726op75c7y7pf3ccqnnt2` (`employee_id`),
  CONSTRAINT `FKhq2726op75c7y7pf3ccqnnt2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-17 12:03:35
