CREATE DATABASE  IF NOT EXISTS `scms_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `scms_db`;
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: scms_db
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
-- Table structure for table `all_items`
--

DROP TABLE IF EXISTS `all_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_items` (
  `productid` varchar(45) NOT NULL,
  `productname` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_items`
--

LOCK TABLES `all_items` WRITE;
/*!40000 ALTER TABLE `all_items` DISABLE KEYS */;
INSERT INTO `all_items` VALUES ('1','Lenovo V530s Tower Desktop','Intel 9th Gen Core i3/4GB RAM/ 1TB HDD/DOS/Black',24900.50,'Electronics'),('2','Honor 9A','Phantom Blue, 3GB RAM, 64GB Storage',12000.00,'Electronics'),('3','TP-Link Deco E4 Whole Home Mesh Wi-Fi System','Seamless Roaming and Speedy (AC1200), Work with Amazon Echo/Alexa and Wi-Fi Booster, Parent Control Router',5000.00,'Electronics'),('4','JBL C50HI in-Ear Headphones','with Mic,Blue',600.00,'Electronics'),('5','Mi TV 4A PRO','108 cm (43 Inches) Full HD Android LED TV (Black)',25000.00,'Electronics'),('6','Sigma Lens for Sony E-Mount Mirrorless Cameras','30mm f/1.4 DC DN Contemporary APS-C Format',27000.00,'Electronics'),('7','Epson Eco Ink Tank Printer','L3101, All-in-One ',10000.00,'Electronics'),('8','Samsung Galaxy Watch Active 2',' (Bluetooth, 44 mm) - Black, Aluminium Dial',19000.65,'Electronics'),('9','Powerpak G3001A Hand Roll Up Electronic Drum Pad',' Black/Green',4000.90,'Electronics'),('10','Micromax Canvas Tab P701 Tablet','(7 inch, 8GB, Wi-Fi+ 4G with Voice Calling), Grey',9000.50,'Electronics'),('11','Urbano Fashion Men\'s Slim Fit Jeans','Fit Type: Slim,Fabric: Cotton,Lycra Style: Jeans,Pattern: Solid',800.00,'Clothing'),('12','Amazon Brand - Inkast Denim Co. Men\'s Stretch Skinny Jeans','Care Instructions: Machine Wash,Fit Type: Skinny Zip fly with button closure',600.00,'Clothing'),('13','Fenoix Men\'s Regular Fit T-Shirt','Fit Type: Regular Fit Fabric: 100% Cotton Style: Hooded Neck Style: Hood',400.00,'Clothing'),('14','Shozie Men\'s Formal Shoes','Closure: Lace-Up Shoe Width: Medium Material - Patent Leather Lifestyle: Executive Formal & Daily Wear',900.00,'Clothing'),('15','PARAGON Men\'s Flip-Flops','Closure: Slip-On Shoe Width: Medium Material Type: Synthetic',400.00,'Clothing'),('21','Spacewood Riva Queen Size Wood Bed','Product Dimensions: Length (209 cm) ,Width (159.6 cm) ,Height (90.3 cm). Bed size: Queen',13039.00,'Furniture'),('22','Spacewood Midas Queen Size Engineered Wood Bed with Pull Out Storage','Product Dimensions: Length (212.8 cm) ,Width (165 cm) ,Height (93 cm). Bed size: Queen',25909.00,'Furniture'),('23','Adorn India Orlando Fabric L Shape Sofa (Dark Grey & Light Gery)','Product dimension in cm Package 1 = Length (180) Breadth (81.28)height (71.12) sitting height (40.64) Package 2 = Length (182.88) Breadth (81.28)height (771.12) sitting height (40.64)',32999.00,'Furniture'),('24','adorn india aspen three seater sofa cum bed (blue and black)','Primary Material: Wood, secondary material :Foam Upholstery Material: Fabric : color : Blue & Black;Easy to use, can be used for sitting and sleeping purpose for guest,kids and adults.',17499.00,'Furniture'),('25','Stylespa Estilo 3 Door Wardrobe (Siena Cherry)','Product Dimensions: Length (134.0 cm), Width (54.0 cm), Height (200.0 cm)',30307.00,'Furniture'),('26','Urban Ladder Jeeves Kitchen Rack (Finish : Walnut)','Product Dimensions: Length (9.1 inches), Width (19.3 inches), Height (30.3 inches)Primary Material: Solid Wood Finish : Walnut',5299.00,'Furniture'),('27','AmazonBasics High Back Executive Chair (Brown)','Comfortable executive chair upholstered in bonded leather and PVC',8999.00,'Furniture'),('28','Green Soul Monster Ultimate Series Multi-Functional Chair','Internal Frame Material: Metal, Frame Size: Large, Upholstery Material: Spandex Fabric + PU Leather',18990.00,'Furniture'),('29','Spacewood Winner Study Table (Walnut Rigato)','Product Dimensions: Length (40 cm), Width (108 cm), Height (120 cm), Mount Type: Free Standing',7139.00,'Furniture'),('30','Urban Ladder Latt Bench (Finish : Mahogany)','Product Dimensions: Length (54.3 inches), Width (15 inches), Height (27.6 inches)',8899.00,'Furniture');
/*!40000 ALTER TABLE `all_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientdetails`
--

DROP TABLE IF EXISTS `clientdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientdetails` (
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `contactNo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientdetails`
--

LOCK TABLES `clientdetails` WRITE;
/*!40000 ALTER TABLE `clientdetails` DISABLE KEYS */;
INSERT INTO `clientdetails` VALUES ('abc@gmail.com','xyz','a','bc','HSR Layout','Bangalore','9234596781'),('def@gmail.com','uvw','d','ef','HBR Layout','Bangalore','9234564813'),('ghi@gmail.com','rst','g','hi','Park Layout','Bangalore','9334467819'),('jkl@gmail.com','opq','j','kl','Tusk Layout','Bangalore','9245567812'),('mno@gmail.com','lmn','m','no','MSR Layout','Bangalore','9237657481'),('pqr@gmail.com','ijk','p','qr','banshankari','Bangalore','9213567890');
/*!40000 ALTER TABLE `clientdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `email_id` varchar(150) NOT NULL,
  `order_date` date NOT NULL,
  `order_no` int NOT NULL,
  `status` varchar(50) NOT NULL,
  `delivered_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES ('abc@gmail.com','2021-01-06',1,'Delivered','2021-01-06'),('abc@gmail.com','2021-01-06',2,'Delivered','2021-01-06'),('def@gmail.com','2021-01-06',3,'Processing',NULL),('pqr@gmail.com','2021-01-06',4,'Delivered','2021-01-06'),('abc@gmail.com','2021-01-06',5,'Processing',NULL),('def@gmail.com','2021-01-06',6,'Processing',NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealerdetails`
--

DROP TABLE IF EXISTS `dealerdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealerdetails` (
  `dealerid` varchar(150) DEFAULT NULL,
  `category` varchar(150) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `contactno` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealerdetails`
--

LOCK TABLES `dealerdetails` WRITE;
/*!40000 ALTER TABLE `dealerdetails` DISABLE KEYS */;
INSERT INTO `dealerdetails` VALUES ('1','Electronics','John','HSR Layout','Bangalore','1234566789'),('2','Clothing','Siri','HBR Layout','Bangalore','9987654321'),('3','Furniture','Tux','MSR nagar','Bangalore','6789954321');
/*!40000 ALTER TABLE `dealerdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistics`
--

DROP TABLE IF EXISTS `logistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logistics` (
  `id` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `city` varchar(75) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistics`
--

LOCK TABLES `logistics` WRITE;
/*!40000 ALTER TABLE `logistics` DISABLE KEYS */;
INSERT INTO `logistics` VALUES ('1','FedEx','Banaswadi','Bangalore','1236594789'),('2','Ryder','Hosur','Bangalore','4536765778'),('3','FedEx','Brigade road','Bangalore','5859403889');
/*!40000 ALTER TABLE `logistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password`
--

DROP TABLE IF EXISTS `password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password` (
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password`
--

LOCK TABLES `password` WRITE;
/*!40000 ALTER TABLE `password` DISABLE KEYS */;
INSERT INTO `password` VALUES ('pass');
/*!40000 ALTER TABLE `password` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-07 12:16:29
