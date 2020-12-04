CREATE DATABASE  IF NOT EXISTS `admin` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `admin`;
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: admin
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

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
-- Table structure for table `Active_Clients`
--

DROP TABLE IF EXISTS `Active_Clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Active_Clients` (
  `email_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Active_Clients`
--

LOCK TABLES `Active_Clients` WRITE;
/*!40000 ALTER TABLE `Active_Clients` DISABLE KEYS */;
INSERT INTO `Active_Clients` VALUES ('xyz@gmail.com'),('abc@gmail.com');
/*!40000 ALTER TABLE `Active_Clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Client1_ItemDetails`
--

DROP TABLE IF EXISTS `Client1_ItemDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Client1_ItemDetails` (
  `itemId` int unsigned NOT NULL,
  `ItemCost` decimal(10,2) unsigned NOT NULL,
  `tax` decimal(10,2) unsigned NOT NULL,
  `TotalCost` decimal(10,2) unsigned NOT NULL,
  `SumTotal` decimal(10,2) unsigned NOT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client1_ItemDetails`
--

LOCK TABLES `Client1_ItemDetails` WRITE;
/*!40000 ALTER TABLE `Client1_ItemDetails` DISABLE KEYS */;
INSERT INTO `Client1_ItemDetails` VALUES (1,15.00,0.70,15.70,15.70),(2,67.00,0.30,67.30,83.00);
/*!40000 ALTER TABLE `Client1_ItemDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Client2_ItemDetails`
--

DROP TABLE IF EXISTS `Client2_ItemDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Client2_ItemDetails` (
  `itemid` int unsigned NOT NULL,
  `itemcost` decimal(10,2) unsigned NOT NULL,
  `tax` decimal(10,2) unsigned NOT NULL,
  `totalcost` decimal(10,2) unsigned NOT NULL,
  `sumTotal` decimal(10,2) unsigned NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client2_ItemDetails`
--

LOCK TABLES `Client2_ItemDetails` WRITE;
/*!40000 ALTER TABLE `Client2_ItemDetails` DISABLE KEYS */;
INSERT INTO `Client2_ItemDetails` VALUES (2,10.00,1.00,11.00,11.00),(4,36.00,10.00,46.00,57.00);
/*!40000 ALTER TABLE `Client2_ItemDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('admin');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_status`
--

DROP TABLE IF EXISTS `product_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_status` (
  `Clients` varchar(45) NOT NULL,
  `Status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_status`
--

LOCK TABLES `product_status` WRITE;
/*!40000 ALTER TABLE `product_status` DISABLE KEYS */;
INSERT INTO `product_status` VALUES ('xyz@gmail.com','delivered'),('abc@gmail.com','inventory');
/*!40000 ALTER TABLE `product_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 20:31:10
