-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: scallon21205085
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `positions_available`
--

DROP TABLE IF EXISTS `positions_available`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions_available` (
  `idpositions` int NOT NULL,
  `department_offering` int DEFAULT NULL,
  `position_type` varchar(45) DEFAULT NULL,
  `administrative_skills` varchar(3) DEFAULT NULL,
  `managerial_skills` varchar(3) DEFAULT NULL,
  `Accounting_skills` varchar(3) DEFAULT NULL,
  `secretarial_skills` varchar(3) DEFAULT NULL,
  `engineering_skills` varchar(3) DEFAULT NULL,
  `I_T_skills` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idpositions`),
  KEY `DEP_POSITIONS_idx` (`department_offering`),
  CONSTRAINT `DEP_POSITIONS` FOREIGN KEY (`department_offering`) REFERENCES `departments` (`idDepartments`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions_available`
--

LOCK TABLES `positions_available` WRITE;
/*!40000 ALTER TABLE `positions_available` DISABLE KEYS */;
INSERT INTO `positions_available` VALUES (60001,10000,'Manager','No','Yes','No','No','No','No'),(60002,11000,'Accountant','No','No','Yes','No','No','No'),(60003,11000,'Tec_support','No','No','No','No','No','Yes'),(60004,20000,'Manager','No','Yes','No','No','No','Yes'),(60005,20000,'Admin','Yes','No','No','No','No','No'),(60006,30000,'Accountant','No','No','Yes','No','No','Yes'),(60007,30000,'Secretary','No','No','No','Yes','No','No'),(60008,40000,'Sales_rep','No','No','No','No','No','No'),(60009,40000,'Tec_support','No','No','No','No','No','Yes'),(61000,50000,'Manager','No','Yes','No','No','Yes','No'),(61001,50000,'Admin','Yes','No','No','No','No','No'),(61002,60000,'Senior_engineer','No','Yes','No','No','Yes','No'),(61003,60000,'Junior_engineer','No','No','No','No','Yes','No'),(61004,70000,'Secretary','Yes','No','No','Yes','No','No'),(61005,70000,'Translator','No','No','No','No','No','No'),(61006,80000,'Admin','Yes','No','No','No','No','No'),(61007,80000,'Secretary','No','No','No','Yes','No','No'),(61008,90000,'Accountant','No','No','Yes','No','No','No'),(61009,90000,'Manager','No','Yes','Yes','No','No','No');
/*!40000 ALTER TABLE `positions_available` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-13 12:31:00
