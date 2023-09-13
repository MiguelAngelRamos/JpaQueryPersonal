-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: pizzeria
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `pizza_order`
--

DROP TABLE IF EXISTS `pizza_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizza_order` (
  `id_order` int NOT NULL AUTO_INCREMENT,
  `additional_notes` varchar(200) DEFAULT NULL,
  `date` datetime NOT NULL,
  `id_customer` varchar(15) NOT NULL,
  `method` char(1) NOT NULL,
  `total` decimal(6,2) NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `FKnlayechpuwervvwn2ius58ney` (`id_customer`),
  CONSTRAINT `FKnlayechpuwervvwn2ius58ney` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza_order`
--

LOCK TABLES `pizza_order` WRITE;
/*!40000 ALTER TABLE `pizza_order` DISABLE KEYS */;
INSERT INTO `pizza_order` VALUES (1,'Don\'t be late pls.','2023-09-06 03:14:13','192758012','D',42.95),(2,NULL,'2023-09-07 03:14:13','474771564','S',62.00),(3,NULL,'2023-09-08 03:14:13','182120056','C',22.00),(4,NULL,'2023-09-09 03:14:13','617684636','S',42.00),(5,'Please bring the jalapeños separately.','2023-09-10 03:14:13','192758012','D',20.50),(6,NULL,'2023-09-14 03:14:13','782668115','D',23.00);
/*!40000 ALTER TABLE `pizza_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-13 11:43:01
