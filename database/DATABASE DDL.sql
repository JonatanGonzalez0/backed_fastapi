CREATE DATABASE  IF NOT EXISTS `reactdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `reactdb`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: reactdb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `sensor_distancia`
--

DROP TABLE IF EXISTS `sensor_distancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensor_distancia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `valor_distancia` decimal(6,2) DEFAULT NULL,
  `hora` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_sensor_distancia_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_distancia`
--

LOCK TABLES `sensor_distancia` WRITE;
/*!40000 ALTER TABLE `sensor_distancia` DISABLE KEYS */;
INSERT INTO `sensor_distancia` VALUES (1,85.70,'2024-10-08 10:00:10'),(2,85.70,'2024-10-08 10:00:10'),(3,194.66,'2024-10-08 03:13:08'),(4,66.40,'2024-10-07 17:24:17'),(5,159.97,'2024-10-07 13:30:51'),(6,111.98,'2024-10-08 12:54:11'),(7,187.90,'2024-10-07 18:05:40'),(8,74.03,'2024-10-08 18:08:12'),(9,176.53,'2024-10-08 11:35:34'),(10,97.12,'2024-10-07 16:14:59'),(11,187.70,'2024-10-07 14:28:12'),(12,138.67,'2024-10-08 04:03:46'),(13,54.07,'2024-10-08 06:54:09'),(14,172.16,'2024-10-08 12:12:29'),(15,142.58,'2024-10-08 13:32:45'),(16,167.46,'2024-10-08 14:38:27'),(17,195.85,'2024-10-08 16:04:37'),(18,56.53,'2024-10-08 09:28:04'),(19,191.63,'2024-10-08 12:18:48'),(20,168.58,'2024-10-07 10:57:52'),(21,161.73,'2024-10-07 12:46:58'),(22,148.84,'2024-10-08 15:28:23'),(23,82.53,'2024-10-07 21:43:13'),(24,119.10,'2024-10-08 05:50:32'),(25,192.05,'2024-10-08 13:11:29'),(26,167.52,'2024-10-07 11:16:14'),(27,85.97,'2024-10-07 16:31:53'),(28,144.60,'2024-10-07 14:19:02'),(29,168.25,'2024-10-08 04:41:19'),(30,140.29,'2024-10-08 09:48:09'),(31,94.95,'2024-10-07 18:22:34'),(32,145.61,'2024-10-07 23:34:23'),(33,109.60,'2024-10-08 13:46:02'),(34,143.97,'2024-10-08 16:44:13'),(35,189.64,'2024-10-08 01:34:47'),(36,199.43,'2024-10-08 07:11:40'),(37,136.12,'2024-10-08 14:52:23'),(38,98.43,'2024-10-07 17:11:23'),(39,168.37,'2024-10-07 10:30:24'),(40,128.88,'2024-10-08 15:54:45'),(41,190.53,'2024-10-07 09:51:04'),(42,182.75,'2024-10-08 15:47:33'),(43,57.10,'2024-10-07 20:29:38'),(44,144.11,'2024-10-08 12:50:55'),(45,128.99,'2024-10-07 18:57:50'),(46,157.53,'2024-10-08 10:51:47'),(47,165.87,'2024-10-07 08:22:23'),(48,107.64,'2024-10-08 11:12:28'),(49,85.20,'2024-10-08 01:30:57');
/*!40000 ALTER TABLE `sensor_distancia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_temperatura`
--

DROP TABLE IF EXISTS `sensor_temperatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensor_temperatura` (
  `id` int NOT NULL AUTO_INCREMENT,
  `valor_temperatura` decimal(5,2) DEFAULT NULL,
  `hora` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_sensor_temperatura_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_temperatura`
--

LOCK TABLES `sensor_temperatura` WRITE;
/*!40000 ALTER TABLE `sensor_temperatura` DISABLE KEYS */;
INSERT INTO `sensor_temperatura` VALUES (1,23.50,'2024-10-07 23:53:06'),(2,23.50,'2024-10-07 23:53:08'),(3,23.50,'2024-10-07 23:53:09'),(4,27.70,'2024-10-08 10:00:10'),(5,27.70,'2024-10-08 10:00:10'),(6,22.48,'2024-10-08 03:13:08'),(7,29.23,'2024-10-07 17:24:17'),(8,28.52,'2024-10-07 13:30:51'),(9,20.47,'2024-10-08 12:54:11'),(10,23.11,'2024-10-07 18:05:40'),(11,27.96,'2024-10-08 18:08:12'),(12,28.53,'2024-10-08 11:35:34'),(13,21.64,'2024-10-07 16:14:59'),(14,23.86,'2024-10-07 14:28:12'),(15,29.31,'2024-10-08 04:03:46'),(16,22.61,'2024-10-08 06:54:09'),(17,26.93,'2024-10-08 12:12:29'),(18,23.56,'2024-10-08 13:32:45'),(19,29.68,'2024-10-08 14:38:27'),(20,27.04,'2024-10-08 16:04:37'),(21,28.47,'2024-10-08 09:28:04'),(22,28.65,'2024-10-08 12:18:48'),(23,23.24,'2024-10-07 10:57:52'),(24,22.51,'2024-10-07 12:46:58'),(25,28.57,'2024-10-08 15:28:23'),(26,27.09,'2024-10-07 21:43:13'),(27,26.46,'2024-10-08 05:50:32'),(28,25.32,'2024-10-08 13:11:29'),(29,25.47,'2024-10-07 11:16:14'),(30,23.89,'2024-10-07 16:31:53'),(31,28.92,'2024-10-07 14:19:02'),(32,21.60,'2024-10-08 04:41:19'),(33,27.12,'2024-10-08 09:48:09'),(34,25.94,'2024-10-07 18:22:34'),(35,25.83,'2024-10-07 23:34:23'),(36,21.08,'2024-10-08 13:46:02'),(37,29.97,'2024-10-08 16:44:13'),(38,23.98,'2024-10-08 01:34:47'),(39,28.02,'2024-10-08 07:11:40'),(40,27.57,'2024-10-08 14:52:23'),(41,21.71,'2024-10-07 17:11:23'),(42,23.76,'2024-10-07 10:30:24'),(43,29.49,'2024-10-08 15:54:45'),(44,25.64,'2024-10-07 09:51:04'),(45,26.05,'2024-10-08 15:47:33'),(46,24.95,'2024-10-07 20:29:38'),(47,24.52,'2024-10-08 12:50:55'),(48,25.18,'2024-10-07 18:57:50'),(49,27.74,'2024-10-08 10:51:47'),(50,22.97,'2024-10-07 08:22:23'),(51,28.94,'2024-10-08 11:12:28'),(52,23.50,'2024-10-08 00:02:36'),(53,23.50,'2024-10-08 00:03:25');
/*!40000 ALTER TABLE `sensor_temperatura` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-07 13:32:56
