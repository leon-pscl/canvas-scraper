CREATE DATABASE  IF NOT EXISTS `insureco` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `insureco`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: insureco
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
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent` (
  `AGENT_CODE` int DEFAULT NULL,
  `AGENT_LNAME` varchar(15) DEFAULT NULL,
  `AGENT_FNAME` varchar(15) DEFAULT NULL,
  `AGENT_INITIAL` varchar(1) DEFAULT NULL,
  `AGENT_AREACODE` varchar(3) DEFAULT NULL,
  `AGENT_PHONE` varchar(8) DEFAULT NULL,
  `AGENT_ADDRESS` varchar(30) DEFAULT NULL,
  `AGENT_CITY` varchar(15) DEFAULT NULL,
  `AGENT_STATE` varchar(2) DEFAULT NULL,
  `AGENT_ZIP` varchar(5) DEFAULT NULL,
  `AGENT_DATE_HIRED` datetime DEFAULT NULL,
  `AGENT_YTD_PAY` decimal(10,0) DEFAULT NULL,
  `AGENT_YTD_FIT` decimal(10,0) DEFAULT NULL,
  `AGENT_YTD_FICA` decimal(10,0) DEFAULT NULL,
  `AGENT_YTD_SLS` decimal(10,0) DEFAULT NULL,
  `AGENT_DEP` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` VALUES (501,'Alby','Alex','B','713','228-1249','123 Pleasant View Dr.','Nashville','TN','37119','2000-11-01 00:00:00',26566,6642,2125,132736,3),(502,'Hahn','Leah','F','615','882-1244','334 East Main Street','Louisville','KY','25246','1986-05-23 00:00:00',32214,8053,2577,138967,0),(503,' Okon','John','T','615','123-5589','452 Technology Circle','Oak Ridge','TN','36155','2005-06-15 00:00:00',23198,5800,1856,127093,2);
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;

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
  `CUS_PHONE` varchar(8) DEFAULT NULL,
  `CUS_RENEW_DATE` datetime DEFAULT NULL,
  `AGENT_CODE` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (10010,'Ramas','Alfred','A','615','844-2573','2014-04-05 00:00:00',502),(10011,'Dunne','Leona','K','713','894-1238','2014-06-16 00:00:00',501),(10012,'Smith','Kathy','W','615','894-2285','2015-01-29 00:00:00',502),(10013,'Olowski','Paul','F','615','894-2180','2014-10-14 00:00:00',502),(10014,'Orlando','Myron','','615','222-1672','2014-12-28 00:00:00',501),(10015,'O\'Brian','Amy','B','713','442-3381','2014-09-22 00:00:00',503),(10016,'Brown','James','G','615','297-1228','2015-03-25 00:00:00',502),(10017,'Williams','George','','615','290-2556','2014-07-17 00:00:00',503),(10018,'Farriss','Anne','G','713','382-7185','2014-12-03 00:00:00',501),(10019,'Smith','Olette','K','615','297-3809','2015-03-14 00:00:00',503);
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

-- Dump completed on 2022-08-10 22:09:01
