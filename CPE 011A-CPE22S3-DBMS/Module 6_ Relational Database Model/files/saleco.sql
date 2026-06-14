CREATE DATABASE  IF NOT EXISTS `saleco` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `saleco`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: saleco
-- ------------------------------------------------------
-- Server version	8.0.29

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
  `CUS_CODE` int DEFAULT NULL,
  `CUS_LNAME` varchar(15) DEFAULT NULL,
  `CUS_FNAME` varchar(15) DEFAULT NULL,
  `CUS_INITIAL` varchar(1) DEFAULT NULL,
  `CUS_AREACODE` varchar(3) DEFAULT NULL,
  `CUS_PHONE` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (10010,'Ramas','Alfred','A','615','844-2573'),(10011,'Dunne','Leona','K','713','894-1238'),(10012,'Smith','Kathy','W','615','894-2285'),(10013,'Olowski','Paul','F','615','894-2180'),(10014,'Orlando','Myron','','615','222-1672'),(10015,'O\'Brian','Amy','B','713','442-3381'),(10016,'Brown','James','G','615','297-1228'),(10017,'Williams','George','','615','290-2556'),(10018,'Farriss','Anne','G','713','382-7185'),(10019,'Smith','Olette','K','615','297-3809');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `INV_NUMBER` int DEFAULT NULL,
  `CUS_CODE` int DEFAULT NULL,
  `INV_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1001,10014,'2014-03-08 00:00:00'),(1002,10011,'2014-03-08 00:00:00'),(1003,10012,'2014-03-08 00:00:00'),(1004,10011,'2014-03-09 00:00:00');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line`
--

DROP TABLE IF EXISTS `line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line` (
  `INV_NUMBER` int DEFAULT NULL,
  `LINE_NUMBER` int DEFAULT NULL,
  `PROD_CODE` varchar(10) DEFAULT NULL,
  `LINE_UNITS` float DEFAULT NULL,
  `LINE_PRICE` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line`
--

LOCK TABLES `line` WRITE;
/*!40000 ALTER TABLE `line` DISABLE KEYS */;
INSERT INTO `line` VALUES (1001,1,'123-21UUY',1,190),(1001,2,'SRE-657UG',3,3),(1002,1,'QER-34256',2,19),(1003,1,'ZZX/3245Q',1,7),(1003,2,'SRE-657UG',1,3),(1003,3,'001278-AB',1,13),(1004,1,'001278-AB',1,13),(1004,2,'SRE-657UG',2,3);
/*!40000 ALTER TABLE `line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `PROD_CODE` varchar(10) DEFAULT NULL,
  `PROD_DESCRIPT` varchar(35) DEFAULT NULL,
  `PROD_PRICE` decimal(10,0) DEFAULT NULL,
  `PROD_ON_HAND` int DEFAULT NULL,
  `VEND_CODE` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('001278-AB','Claw hammer',13,23,232),('123-21UUY','Houselite chain saw, 16-in. bar',190,4,235),('QER-34256','Sledge hammer, 16-lb. head',19,6,231),('SRE-657UG','Rat-tail file',3,15,232),('ZZX/3245Q','Steel tape, 12-ft. length',7,8,235);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `VEND_CODE` int DEFAULT NULL,
  `VEND_CONTACT` varchar(25) DEFAULT NULL,
  `VEND_AREACODE` varchar(3) DEFAULT NULL,
  `VEND_PHONE` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (230,'Shelly K. Smithson','608','555-1234'),(231,'James Johnson','615','123-4536'),(232,'Annelise Crystall','608','224-2134'),(233,'Candice Wallace','904','342-6567'),(234,'Arthur Jones','615','123-3324'),(235,'Henry Ortozo','615','899-3425');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-10 22:06:51
