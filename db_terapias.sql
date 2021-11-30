-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: db_terapias
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
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text,
  `user_id` int DEFAULT NULL,
  `servicio_terapia` varchar(255) DEFAULT NULL,
  `considerarlo_malo` text,
  `tipo_terapia` varchar(255) DEFAULT NULL,
  `frecuencia` varchar(255) DEFAULT NULL,
  `progrmacion` varchar(255) DEFAULT NULL,
  `noprogromacionservicio` varchar(255) DEFAULT NULL,
  `cumpleprotocolo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `celular` varchar(45) DEFAULT NULL,
  `correo` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user` (`user_id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (2,'1076220319','javier garcia',NULL,NULL,NULL,'sfsdfsdfsd',NULL,NULL,NULL,'dsfsdf',NULL,'2021-11-30 14:57:59',NULL,NULL),(3,'50522','pedro paez',NULL,NULL,NULL,'asdsad',NULL,NULL,NULL,'terapia fisica',NULL,'2021-11-30 15:01:06',NULL,NULL),(4,'15252','pedro',NULL,NULL,NULL,'si',NULL,NULL,NULL,'dddd',NULL,'2021-11-30 15:24:47',NULL,NULL),(5,'555','henara',NULL,NULL,NULL,'priubea',NULL,NULL,NULL,'prueba',NULL,'2021-11-30 15:27:03',NULL,NULL),(6,'1076220319','javier agrcia',NULL,NULL,'bueno','sdsd',NULL,NULL,NULL,'sdsds',NULL,'2021-11-30 15:33:34',NULL,NULL),(7,'15252','javier garcia',NULL,NULL,'bueno','asdasd',NULL,NULL,NULL,'adasdasd',NULL,'2021-11-30 15:35:11',NULL,NULL),(8,'1076220319','fdsfs',NULL,NULL,'bueno','dsfsdf',NULL,NULL,NULL,'sdfsdfsdf',NULL,'2021-11-30 15:36:28',NULL,NULL),(9,'1076220319','sdfsdf',NULL,NULL,'bueno','sdfsdf','terapiaFisica','1a2vecessemana','si','sdfsdfds','si','2021-11-30 15:42:19',NULL,NULL),(10,'1076220319','javier garcia',NULL,NULL,'bueno','no me gusta','terapiaFisica','1a2vecessemana','no','terapia Fisica','si','2021-11-30 15:44:24',NULL,NULL),(11,'1076220319','regular',NULL,NULL,'regular','por que es malo','terapiaFisica','1a2vecessemana','si','sadasd','si','2021-11-30 16:13:30',NULL,NULL),(12,'1076220319','malo',NULL,NULL,'malo','asdas','terapiaFisica','1a2vecessemana','no','adasd','no','2021-11-30 16:15:08',NULL,NULL),(13,'52652','javier garcia',NULL,NULL,'bueno','hhyhbgh','terapiaFisica','ningunavez','si','asa','no','2021-11-30 16:36:38',NULL,NULL),(14,'40522','Javier Garcia',NULL,NULL,'malo','no me atendieron','terapiaFisica','ningunavez','no','Terapia Fisica ','si','2021-11-30 16:45:35',NULL,NULL),(15,'1076220319','javier garcia',NULL,NULL,'Escoja...','cazczx','terapiadelenguaje','1a2vecessemana','si','dssad','no','2021-11-30 17:33:45','3102854525','javier@gmail.com'),(16,'1076220319','javier',NULL,NULL,'bueno','sdsd','terapiaFisica','1a2vecessemana','no','sdsd','si','2021-11-30 18:19:32','3102856425','javier@gmail.com');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('DCOJNo2RlBkTeOWElqoo7cwQhUaDCLra',1638382772,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{\"success\":[\"Welcome mariachica\",\"Welcome mariachica\",\"Welcome mariachica\",\"Welcome mariachica\",\"Welcome mariachica\",\"Welcome mariachica\",\"Welcome mariachica\",\"Welcome mariachica\"]},\"passport\":{\"user\":2}}'),('M49ejVFKlCSWqUIKQ9KP2uRdDCfjKHzy',1638376650,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(60) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'john','password1','John Carter'),(2,'mariachica','$2a$10$oLsE5zUHyqGJrAHnlDBMs.Wx/KsKmD5gMrJ3d6ajuc.Xbb4gEsmFe','Maria Chica');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-30 13:24:18
