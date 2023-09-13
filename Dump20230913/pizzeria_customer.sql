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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id_customer` varchar(15) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_customer`),
  UNIQUE KEY `UK_dwk6cx0afu8bs9o4t536v1j5v` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('110410415','Ap #720-1833 Curabitur Av.','mercedesbalorclub@hotmail.com','Mercedes Balor','(688) 944-6619'),('182120056','Ap #268-1749 Id St.','heymanboss@hotmail.com','Matthew Heyman','(185) 738-9267'),('192758012','705-6031 Aliquam Street','wangwatson@icloud.com','Drew Watson','(362) 881-5943'),('262132898','241-9121 Fames St.','stonecold@icloud.com','Karl Austin','(559) 596-3381'),('303265780','Ap #206-5413 Vivamus St.','figthowens@correo.com','Shelton Owens','(821) 880-6661'),('363677933','Ap #937-4424 Vestibulum. Street','bianca0402@correo.com','Bianca Neal','(792) 406-8858'),('394022487','P.O. Box 341, 7572 Odio Rd.','beckytwobelts@icloud.com','Becky Alford','(559) 398-7689'),('474771564','925-3988 Purus. St.','johareigns@outlook.com','Johanna Reigns','(801) 370-4041'),('531254932','461-4278 Dignissim Av.','wyattplay@google.co','Clarke Wyatt','(443) 263-8555'),('617684636','Ap #732-8087 Dui. Road','aleximorgan@hotmail.com','Alexa Morgan','(830) 212-2247'),('644337170','Ap #308-4700 Mollis Av.','elgenerico@outlook.com','Sami Rollins','(508) 518-2967'),('762085429','177-1125 Consequat Ave','codyforchamp@google.com','Cody Rollins','(740) 271-3631'),('782668115','Ap #696-6846 Ullamcorper Avenue','amityrogers@outlook.com','Charlotte Riddle','(744) 344-7768'),('863264988','P.O. Box 136, 4534 Lacinia St.','draketheory@hotmail.com','Drake Theory','(826) 607-2278'),('885583622','9063 Aliquam, Road','brockalford595@correo.com','Brock Alford','(732) 218-4844');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
