-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: cv1
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `infected`
--

DROP TABLE IF EXISTS `infected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infected` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `country` varchar(45) DEFAULT NULL,
  `live` tinyint DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `infect_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `female` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infected`
--

LOCK TABLES `infected` WRITE;
/*!40000 ALTER TABLE `infected` DISABLE KEYS */;
INSERT INTO `infected` VALUES (1,'Joshuah','Friesen','Portugal',1,'14338','2020-04-01 17:43:41',1),(2,'Beth','Schuster','Norway',1,'40812','2020-04-01 17:43:41',0),(3,'Albertha','Mayer','Western Sahara',0,'74843','2020-04-01 17:43:41',0),(4,'Erika','','UK',1,'18','2020-04-01 20:09:47',1),(5,'Jack','Black','Germany',0,'39','2020-04-01 20:14:52',0),(6,'Christopher','Jennings','USA',1,'55','2020-04-01 20:17:19',0);
/*!40000 ALTER TABLE `infected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infected countries`
--

DROP TABLE IF EXISTS `infected countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infected countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `infected` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infected countries`
--

LOCK TABLES `infected countries` WRITE;
/*!40000 ALTER TABLE `infected countries` DISABLE KEYS */;
INSERT INTO `infected countries` VALUES (1,'China','35000'),(2,'Italia','1000'),(3,'Argentina','150'),(4,'South Corea','200'),(5,'Venezuela','234'),(6,'Italy','123456');
/*!40000 ALTER TABLE `infected countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-02 16:29:46
