CREATE DATABASE  IF NOT EXISTS `dealerdemo2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dealerdemo2`;
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: dealerdemo2
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
  `productid` varchar(45) DEFAULT NULL,
  `productname` varchar(150) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_items`
--

LOCK TABLES `all_items` WRITE;
/*!40000 ALTER TABLE `all_items` DISABLE KEYS */;
INSERT INTO `all_items` VALUES ('1','Lenovo V530s Tower Desktop','Intel 9th Gen Core i3/4GB RAM/ 1TB HDD/DOS/Black',24900.50,'electronics'),('2','Honor 9A','Phantom Blue, 3GB RAM, 64GB Storage',12000.00,'electronics'),('3','TP-Link Deco E4 Whole Home Mesh Wi-Fi System','Seamless Roaming and Speedy (AC1200), Work with Amazon Echo/Alexa and Wi-Fi Booster, Parent Control Router',5000.00,'electronics'),('4','JBL C50HI in-Ear Headphones','with Mic,Blue',600.00,'electronics'),('5','Mi TV 4A PRO','108 cm (43 Inches) Full HD Android LED TV (Black)',25000.00,'electronics'),('6','Sigma Lens for Sony E-Mount Mirrorless Cameras','30mm f/1.4 DC DN Contemporary APS-C Format',27000.00,'electronics'),('7','Epson Eco Ink Tank Printer','L3101, All-in-One ',10000.00,'electronics'),('8','Samsung Galaxy Watch Active 2',' (Bluetooth, 44 mm) - Black, Aluminium Dial',19000.65,'electronics'),('9','Powerpak G3001A Hand Roll Up Electronic Drum Pad',' Black/Green',4000.90,'electronics'),('10','Micromax Canvas Tab P701 Tablet','(7 inch, 8GB, Wi-Fi+ 4G with Voice Calling), Grey',9000.50,'electronics'),('11','Urbano Fashion Men\'s Slim Fit Jeans','Fit Type: Slim,Fabric: Cotton,Lycra Style: Jeans,Pattern: Solid',800.00,'clothing'),('12','Amazon Brand - Inkast Denim Co. Men\'s Stretch Skinny Jeans','Care Instructions: Machine Wash,Fit Type: Skinny Zip fly with button closure',600.00,'clothing'),('13','Fenoix Men\'s Regular Fit T-Shirt','Fit Type: Regular Fit Fabric: 100% Cotton Style: Hooded Neck Style: Hood',400.00,'clothing'),('14','Shozie Men\'s Formal Shoes','Closure: Lace-Up Shoe Width: Medium Material - Patent Leather Lifestyle: Executive Formal & Daily Wear',900.00,'clothing'),('15','PARAGON Men\'s Flip-Flops','Closure: Slip-On Shoe Width: Medium Material Type: Synthetic',400.00,'clothing'),('21','Spacewood Riva Queen Size Wood Bed','Product Dimensions: Length (209 cm) ,Width (159.6 cm) ,Height (90.3 cm). Bed size: Queen',13039.00,'furniture'),('22','Spacewood Midas Queen Size Engineered Wood Bed with Pull Out Storage','Product Dimensions: Length (212.8 cm) ,Width (165 cm) ,Height (93 cm). Bed size: Queen',25909.00,'furniture'),('23','Adorn India Orlando Fabric L Shape Sofa (Dark Grey & Light Gery)','Product dimension in cm Package 1 = Length (180) Breadth (81.28)height (71.12) sitting height (40.64) Package 2 = Length (182.88) Breadth (81.28)height (771.12) sitting height (40.64)',32999.00,'furniture'),('24','adorn india aspen three seater sofa cum bed (blue and black)','Primary Material: Wood, secondary material :Foam Upholstery Material: Fabric : color : Blue & Black;Easy to use, can be used for sitting and sleeping purpose for guest,kids and adults.',17499.00,'furniture'),('25','Stylespa Estilo 3 Door Wardrobe (Siena Cherry)','Product Dimensions: Length (134.0 cm), Width (54.0 cm), Height (200.0 cm)',30307.00,'furniture'),('26','Urban Ladder Jeeves Kitchen Rack (Finish : Walnut)','Product Dimensions: Length (9.1 inches), Width (19.3 inches), Height (30.3 inches)Primary Material: Solid Wood Finish : Walnut',5299.00,'furniture'),('27','AmazonBasics High Back Executive Chair (Brown)','Comfortable executive chair upholstered in bonded leather and PVC',8999.00,'furniture'),('28','Green Soul Monster Ultimate Series Multi-Functional Chair','Internal Frame Material: Metal, Frame Size: Large, Upholstery Material: Spandex Fabric + PU Leather',18990.00,'furniture'),('29','Spacewood Winner Study Table (Walnut Rigato)','Product Dimensions: Length (40 cm), Width (108 cm), Height (120 cm), Mount Type: Free Standing',7139.00,'furniture'),('30','Urban Ladder Latt Bench (Finish : Mahogany)','Product Dimensions: Length (54.3 inches), Width (15 inches), Height (27.6 inches)',8899.00,'furniture');
/*!40000 ALTER TABLE `all_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothing`
--

DROP TABLE IF EXISTS `clothing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clothing` (
  `productid` varchar(45) DEFAULT NULL,
  `productname` varchar(150) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothing`
--

LOCK TABLES `clothing` WRITE;
/*!40000 ALTER TABLE `clothing` DISABLE KEYS */;
INSERT INTO `clothing` VALUES ('11','Urbano Fashion Men\'s Slim Fit Jeans','Fit Type: Slim,Fabric: Cotton,Lycra Style: Jeans,Pattern: Solid',800.00),('12','Amazon Brand - Inkast Denim Co. Men\'s Stretch Skinny Jeans','Care Instructions: Machine Wash,Fit Type: Skinny Zip fly with button closure',600.00),('13','Fenoix Men\'s Regular Fit T-Shirt','Fit Type: Regular Fit Fabric: 100% Cotton Style: Hooded Neck Style: Hood',400.00),('14','Shozie Men\'s Formal Shoes','Closure: Lace-Up Shoe Width: Medium Material - Patent Leather Lifestyle: Executive Formal & Daily Wear',900.00),('15','PARAGON Men\'s Flip-Flops','Closure: Slip-On Shoe Width: Medium Material Type: Synthetic',400.00);
/*!40000 ALTER TABLE `clothing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealers`
--

DROP TABLE IF EXISTS `dealers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealers` (
  `name` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealers`
--

LOCK TABLES `dealers` WRITE;
/*!40000 ALTER TABLE `dealers` DISABLE KEYS */;
INSERT INTO `dealers` VALUES ('advaith','electronics'),('arjun','clothing'),('arun','furniture');
/*!40000 ALTER TABLE `dealers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electronics`
--

DROP TABLE IF EXISTS `electronics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electronics` (
  `productid` varchar(45) DEFAULT NULL,
  `productname` varchar(150) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electronics`
--

LOCK TABLES `electronics` WRITE;
/*!40000 ALTER TABLE `electronics` DISABLE KEYS */;
INSERT INTO `electronics` VALUES ('1','Lenovo V530s Tower Desktop','Intel 9th Gen Core i3/4GB RAM/ 1TB HDD/DOS/Black',24900.50),('2','Honor 9A','Phantom Blue, 3GB RAM, 64GB Storage',12000.00),('3','TP-Link Deco E4 Whole Home Mesh Wi-Fi System','Seamless Roaming and Speedy (AC1200), Work with Amazon Echo/Alexa and Wi-Fi Booster, Parent Control Router',5000.00),('4','JBL C50HI in-Ear Headphones','with Mic,Blue',600.00),('5','Mi TV 4A PRO','108 cm (43 Inches) Full HD Android LED TV (Black)',25000.00),('6','Sigma Lens for Sony E-Mount Mirrorless Cameras','30mm f/1.4 DC DN Contemporary APS-C Format',27000.00),('7','Epson Eco Ink Tank Printer','L3101, All-in-One ',10000.00),('8','Samsung Galaxy Watch Active 2',' (Bluetooth, 44 mm) - Black, Aluminium Dial',19000.65),('9','Powerpak G3001A Hand Roll Up Electronic Drum Pad',' Black/Green',4000.90),('10','Micromax Canvas Tab P701 Tablet','(7 inch, 8GB, Wi-Fi+ 4G with Voice Calling), Grey',9000.50);
/*!40000 ALTER TABLE `electronics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `furniture`
--

DROP TABLE IF EXISTS `furniture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `furniture` (
  `productid` varchar(45) DEFAULT NULL,
  `productname` varchar(150) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `furniture`
--

LOCK TABLES `furniture` WRITE;
/*!40000 ALTER TABLE `furniture` DISABLE KEYS */;
INSERT INTO `furniture` VALUES ('21','Spacewood Riva Queen Size Wood Bed','Product Dimensions: Length (209 cm) ,Width (159.6 cm) ,Height (90.3 cm). Bed size: Queen',13039.00),('22','Spacewood Midas Queen Size Engineered Wood Bed with Pull Out Storage','Product Dimensions: Length (212.8 cm) ,Width (165 cm) ,Height (93 cm). Bed size: Queen',25909.00),('23','Adorn India Orlando Fabric L Shape Sofa (Dark Grey & Light Gery)','Product dimension in cm Package 1 = Length (180) Breadth (81.28)height (71.12) sitting height (40.64) Package 2 = Length (182.88) Breadth (81.28)height (771.12) sitting height (40.64)',32999.00),('24','adorn india aspen three seater sofa cum bed (blue and black)','Primary Material: Wood, secondary material :Foam Upholstery Material: Fabric : color : Blue & Black;Easy to use, can be used for sitting and sleeping purpose for guest,kids and adults.',17499.00),('25','Stylespa Estilo 3 Door Wardrobe (Siena Cherry)','Product Dimensions: Length (134.0 cm), Width (54.0 cm), Height (200.0 cm)',30307.00),('26','Urban Ladder Jeeves Kitchen Rack (Finish : Walnut)','Product Dimensions: Length (9.1 inches), Width (19.3 inches), Height (30.3 inches)Primary Material: Solid Wood Finish : Walnut',5299.00),('27','AmazonBasics High Back Executive Chair (Brown)','Comfortable executive chair upholstered in bonded leather and PVC',8999.00),('28','Green Soul Monster Ultimate Series Multi-Functional Chair','Internal Frame Material: Metal, Frame Size: Large, Upholstery Material: Spandex Fabric + PU Leather',18990.00),('29','Spacewood Winner Study Table (Walnut Rigato)','Product Dimensions: Length (40 cm), Width (108 cm), Height (120 cm), Mount Type: Free Standing',7139.00),('30','Urban Ladder Latt Bench (Finish : Mahogany)','Product Dimensions: Length (54.3 inches), Width (15 inches), Height (27.6 inches)',8899.00);
/*!40000 ALTER TABLE `furniture` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-22 17:13:45
