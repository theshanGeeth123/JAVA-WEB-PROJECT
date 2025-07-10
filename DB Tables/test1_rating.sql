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
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `ratingID` int NOT NULL AUTO_INCREMENT,
  `email` varchar(150) NOT NULL,
  `name` varchar(145) NOT NULL,
  `Rating` int NOT NULL,
  `Comment` varchar(645) DEFAULT NULL,
  `hotelevent` varchar(45) NOT NULL,
  PRIMARY KEY (`ratingID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,'dfdfsf@gmail.com','fesfesff',3,'fefsvfvfvfdvvvfvvvvfv','ffefsfefsffsfsf'),(2,'dfdfsf@gmail.com','efsffesff',3,'efsfesf','sfefsfesfsffesfsefesfefes'),(3,'dfdfsf@gmail.com','efsffesff',3,'efsfesf','sfefsfesfsffesfsefesfefes'),(4,'dfdfsf@gmail.com','efsffesff',3,'efsfesf','sfefsfesfsffesfsefesfefes'),(5,'gtg@gmail.com','frfsfrfs',2,'fsaf  fvvfvdf','fdadgagadg'),(7,'gtg@gmail.com','frfsfrfs',3,'fsaf  fvvfvdfeeeeeeeeeeeeeeeeeeeeeee','stcstdxgfbfb'),(13,'kamal@gmail.com','cscac',4,'csacascscs caslhcsbcygasukcasvcvsc cvuascjsa casuvc','dwadwdadwdd'),(14,'kamal123@gmail.com','vdsvsdvvs',3,'vsvvsvvsd','vsdvdvDvvzvvdzsvvsvdvdsvsdv'),(15,'madhushan@gmail.com','madhushan',1,'Not satisfied...','Geethanjana Holiday Inn'),(16,'madhushan@gmail.com','gtg',5,'Good....','Madhushan Events'),(19,'madhushan@gmail.com','Aloka',4,'Best service ever...','Citrus Hikkaduwa'),(20,'madhushan@gmail.com','madhushan',5,'They manage event beautifully...','Paboda Event Managers');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
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
