-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: test1
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `paymentId` int NOT NULL AUTO_INCREMENT,
  `packagePrice` double DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `date_time` varchar(45) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`paymentId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,500,1,'2025 / 3 / 15   11 - 58 - 59',10,110),(4,100,1,'2025 / 3 / 16   11 - 50 - 27',10,110),(5,100,1,'2025 / 3 / 17   22 - 49 - 11',10,110),(6,100,1,'2025 / 3 / 18   10 - 51 - 46',10,110),(7,100,1,'2025 / 3 / 18   11 - 4 - 43',10,110),(8,33,1,'2025 / 3 / 20   13 - 11 - 54',3.3,36.3),(9,33,1,'2025 / 3 / 20   16 - 4 - 23',3.3,36.3),(10,33,1,'2025 / 3 / 20   16 - 5 - 26',3.3,36.3),(12,400,34,'2025 / 3 / 22   17 - 1 - 6',40,440),(13,200,1,'2025 / 3 / 23   15 - 11 - 17',20,220),(14,200,1,'2025 / 3 / 25   13 - 57 - 57',20,220),(15,360,15,'2025 / 4 / 24   15 - 9 - 5',36,396),(16,100,15,'2025 / 4 / 29   12 - 27 - 41',10,110),(17,120,15,'2025 / 4 / 29   12 - 28 - 0',12,132),(18,23,15,'2025 / 5 / 7   12 - 9 - 17',2.3,25.3),(19,250,15,'2025 / 5 / 10   11 - 43 - 28',25,275),(20,299,15,'2025 / 5 / 13   18 - 5 - 24',29.9,328.9),(21,339,11,'2025 / 5 / 13   22 - 32 - 25',33.9,372.9),(22,122,11,'2025 / 5 / 13   22 - 32 - 57',12.2,134.2),(23,339,11,'2025 / 5 / 14   12 - 4 - 1',33.9,372.9),(24,250,11,'2025 / 5 / 23   19 - 36 - 58',25,275);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-10 20:47:08
