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
-- Table structure for table `interview_details`
--

DROP TABLE IF EXISTS `interview_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview_details` (
  `interview_id` int NOT NULL,
  `Interview_date` date DEFAULT NULL,
  `idcandidate` int DEFAULT NULL,
  `idposition` int DEFAULT NULL,
  `idDepartments` int DEFAULT NULL,
  `Accepted` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`interview_id`),
  KEY `interview_canid_idx` (`idcandidate`),
  KEY `interview_posid_idx` (`idposition`),
  KEY `interview_depid_idx` (`idDepartments`),
  CONSTRAINT `interview_canid` FOREIGN KEY (`idcandidate`) REFERENCES `candidate_details` (`idcandidate`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `interview_depid` FOREIGN KEY (`idDepartments`) REFERENCES `departments` (`idDepartments`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `interview_posid` FOREIGN KEY (`idposition`) REFERENCES `positions_available` (`idpositions`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_details`
--

LOCK TABLES `interview_details` WRITE;
/*!40000 ALTER TABLE `interview_details` DISABLE KEYS */;
INSERT INTO `interview_details` VALUES (99001,'2020-12-31',12345,60002,11000,'Yes'),(99002,'2020-12-31',12345,61009,90000,'No'),(99003,'2021-01-01',23456,60005,20000,'Yes'),(99004,'2021-01-22',23456,61004,70000,'No'),(99005,'2021-02-13',34567,61009,90000,'Yes'),(99006,'2021-02-15',34567,60004,20000,'No'),(99007,'2021-05-05',34567,61003,60000,'No'),(99008,'2021-05-10',45678,61003,60000,'Yes'),(99009,'2021-06-12',56789,61002,60000,'Yes'),(99010,'2021-06-12',56789,61000,50000,'No'),(99011,'2021-06-16',67890,60002,11000,'Yes'),(99012,'2021-08-23',89012,61004,70000,'Yes'),(99013,'2021-08-30',89012,60003,11000,'No'),(99014,'2021-09-26',90123,60001,10000,'Yes');
/*!40000 ALTER TABLE `interview_details` ENABLE KEYS */;
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
