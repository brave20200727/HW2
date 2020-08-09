-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: dinBenDon
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `dinBenDon`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dinBenDon` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dinBenDon`;

--
-- Table structure for table `orderDetails`
--

DROP TABLE IF EXISTS `orderDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderDetails` (
  `orderID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  KEY `orderID` (`orderID`),
  CONSTRAINT `orderDetails_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderDetails`
--

LOCK TABLES `orderDetails` WRITE;
/*!40000 ALTER TABLE `orderDetails` DISABLE KEYS */;
INSERT INTO `orderDetails` VALUES (3,1,1,1),(3,17,1,1),(2,1,1,1),(2,1,1,2);
/*!40000 ALTER TABLE `orderDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (2,'2020-08-08 16:54:11','2020-08-08 18:00:00'),(3,'2020-08-07 17:23:52','2020-08-07 18:00:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productTypes`
--

DROP TABLE IF EXISTS `productTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productTypes` (
  `productTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `productTypeName` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`productTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productTypes`
--

LOCK TABLES `productTypes` WRITE;
/*!40000 ALTER TABLE `productTypes` DISABLE KEYS */;
INSERT INTO `productTypes` VALUES (1,'季節限定'),(2,'純茶'),(3,'咖啡'),(4,'黑茶'),(5,'餐盒'),(6,'加點'),(7,'麵線'),(8,'炸物');
/*!40000 ALTER TABLE `productTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(20) DEFAULT NULL,
  `unitPrice` int(11) DEFAULT NULL,
  `restaurantID` int(11) DEFAULT NULL,
  `productTypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'愛文芒果冰沙',110,1,1),(2,'百變火龍果冰沙',80,1,1),(3,'古城錫蘭紅茶',30,1,2),(4,'文山青茶',30,1,2),(5,'纖活綠茶',30,1,2),(6,'愛文鮮果咖啡',80,1,3),(7,'檸檬鮮果咖啡',75,1,3),(8,'葡萄柚鮮果咖啡',75,1,3),(9,'愛文芒果綠',60,2,1),(10,'愛文芒果拿鐵',80,2,1),(11,'蔗香紅茶',30,2,2),(12,'炭燒鐵觀音',35,2,2),(13,'茉香綠茶',30,2,2),(14,'普洱茶',40,2,4),(15,'普洱拿鐵',65,2,4),(16,'水煮豬里肌',90,3,5),(17,'水煮雞胸',90,3,5),(18,'香滷雞腿',95,3,5),(19,'板腱牛肉',140,3,5),(20,'蔬菜五穀米',65,3,5),(21,'水煮蛋',10,3,6),(22,'五穀米',15,3,6),(23,'季節時蔬',20,3,6),(24,'滿漢全席',90,4,7),(25,'花枝麵線',65,4,7),(26,'蝦仁麵線',65,4,7),(27,'魷魚麵線',65,4,7),(28,'蚵仔麵線',60,4,7),(29,'豆乳雞柳條',70,4,8),(30,'豆乳雞翅',15,4,8),(31,'花枝丸',30,4,8);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurantTypes`
--

DROP TABLE IF EXISTS `restaurantTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurantTypes` (
  `restaurantTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `restaurantTypeName` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`restaurantTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurantTypes`
--

LOCK TABLES `restaurantTypes` WRITE;
/*!40000 ALTER TABLE `restaurantTypes` DISABLE KEYS */;
INSERT INTO `restaurantTypes` VALUES (1,'便當'),(2,'飲料');
/*!40000 ALTER TABLE `restaurantTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurants` (
  `restaurantID` int(11) NOT NULL AUTO_INCREMENT,
  `restaurantName` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `restaurantTypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`restaurantID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (1,'大苑子','台中市西屯區文華路123-1號','04-27080918',2),(2,'茶湯會','台中市西屯區河南路二段354號','04-24512521',2),(3,'健康食代','美村路一段21巷10號','04-23229980',1),(4,'小糊子麵線','台中市西區公益路156號','0902391156',1);
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(15) DEFAULT NULL,
  `firstName` varchar(15) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Owen','Huang','0987878787'),(2,'Brave','Chen','0926005788');
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

-- Dump completed on 2020-08-09  8:31:07
