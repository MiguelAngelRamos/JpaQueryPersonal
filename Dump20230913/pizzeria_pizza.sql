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
-- Table structure for table `pizza`
--

DROP TABLE IF EXISTS `pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizza` (
  `id_pizza` int NOT NULL AUTO_INCREMENT,
  `available` tinyint NOT NULL,
  `description` varchar(150) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `vegan` tinyint DEFAULT NULL,
  `vegetarian` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_pizza`),
  UNIQUE KEY `UK_6n1plxa8aecur40e4q2vpcrps` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza`
--

LOCK TABLES `pizza` WRITE;
/*!40000 ALTER TABLE `pizza` DISABLE KEYS */;
INSERT INTO `pizza` VALUES (1,1,'Pepperoni, Homemade Tomato Sauce & Mozzarella.','Pepperoni',23.00,0,0),(2,1,'Fior de Latte, Homemade Tomato Sauce, Extra Virgin Olive Oil & Basil.','Margherita',18.50,0,1),(3,1,'Fior de Latte, Homemade Tomato Sauce, Extra Virgin Olive Oil & Basil.','Vegan Margherita',22.00,1,1),(4,1,'Hass Avocado, House Red Sauce, Sundried Tomatoes, Basil & Lemon Zest.','Avocado Festival',19.95,0,1),(5,0,'Homemade Tomato Sauce, Mozzarella, Pineapple & Ham.','Hawaiian',20.50,0,0),(6,1,'Portobello Mushrooms, Mozzarella, Parmesan & Goat Cheeses with Alfredo Sauce.','Goat Chesse',24.00,0,0),(7,1,'Artichokes, Roasted Peppers, Rapini, Sundried Tomatoes, Onion, Shaved Green Bell Peppers & Sunny Seasoning.','Mother Earth',19.50,0,1),(8,1,'Mild Italian Sausage, Pepperoni, Bacon, Homemade Tomato Sauce & Mozzarella.','Meat Lovers',21.00,0,0),(9,0,'Marinated Chicken with Cilantro, Red Onions, Gouda, Parmesan & Mozzarella Cheeses.','Marinated BBQ Chicken',20.95,0,0),(10,1,'Wild mushrooms, Baby Kale, Shiitake Bacon & Lemon Vinaigrette. Soy free.','Truffle Cashew Cream',22.00,1,1),(11,1,'Beef Chorizo, Sundried Tomatoes, Salsa Verde, Pepper, Jalapeno & pistachios','Rico Mor',23.00,0,0),(12,1,'Fresh Spinach, Marinated Artichoke Hearts, Garlic, Fior de Latte, Mozzarella & Parmesan.','Spinach Artichoke',18.95,0,1),(15,1,'Tomatoes, Mozzarella, Ricotta & Baby Spinach','Popeye',19.99,0,1);
/*!40000 ALTER TABLE `pizza` ENABLE KEYS */;
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
