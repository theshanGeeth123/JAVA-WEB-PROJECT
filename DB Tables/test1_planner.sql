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
-- Table structure for table `planner`
--

DROP TABLE IF EXISTS `planner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planner` (
  `planid` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(65) NOT NULL,
  `cont` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `cName` varchar(45) NOT NULL,
  `eType` varchar(45) NOT NULL,
  `locate` varchar(45) NOT NULL,
  `exp` varchar(45) NOT NULL,
  `desccrip` varchar(45) NOT NULL,
  PRIMARY KEY (`planid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planner`
--

LOCK TABLES `planner` WRITE;
/*!40000 ALTER TABLE `planner` DISABLE KEYS */;
INSERT INTO `planner` VALUES (1,'Savin Udana','0770201365','saween910@gmail.com','null','weddings','Matara','4','sssss'),(2,'sithumini','0413125313','sandeep@123','null','weddings','Tangalle','2','Give valentime packages '),(3,'sandeep','0702977573','sandeep@123','Galadari','weddings','Tangalle','2','Give valentime packages '),(11,'gtg','0412292650','gtg@gmail.com','Wasana Bidi','weddings','Mirissa','3','dgfgfdg'),(14,'sadaru wijethunga','0770351127','sadaru@gmail.com','Hilton','weddings','galle','6','valantime pakage\r\n');
/*!40000 ALTER TABLE `planner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-10 20:47:09
