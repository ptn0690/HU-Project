-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: laptop_web_mvc
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cartcustomer`
--

DROP TABLE IF EXISTS `cartcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartcustomer` (
  `CAR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRO_ID` int(11) NOT NULL,
  `USE_ID` int(11) NOT NULL,
  `CAR_QUANTITY` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`CAR_ID`),
  KEY `FK_RELATIONSHIP_11` (`USE_ID`),
  CONSTRAINT `FK_RELATIONSHIP_11` FOREIGN KEY (`USE_ID`) REFERENCES `userz` (`USE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartcustomer`
--

LOCK TABLES `cartcustomer` WRITE;
/*!40000 ALTER TABLE `cartcustomer` DISABLE KEYS */;
INSERT INTO `cartcustomer` VALUES (71,2,1,3);
/*!40000 ALTER TABLE `cartcustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `CAT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CAT_NAME` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CAT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Apple'),(2,'Asus'),(3,'Acer'),(4,'Dell'),(5,'Sony'),(6,'HP'),(7,'Lenovo'),(8,'Toshiba');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetail` (
  `ORDT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRO_ID` int(11) NOT NULL,
  `ORD_ID` int(11) DEFAULT NULL,
  `ORDT_QUANTITY` int(11) DEFAULT NULL,
  `ORDT_PRICE` float(8,2) DEFAULT NULL,
  PRIMARY KEY (`ORDT_ID`),
  KEY `FK_RELATIONSHIP_1` (`PRO_ID`),
  KEY `FK_RELATIONSHIP_2` (`ORD_ID`),
  CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`PRO_ID`) REFERENCES `product` (`PRO_ID`),
  CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`ORD_ID`) REFERENCES `orders` (`ORD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (1,2,1,30,3000.00),(2,4,6,8,5600.00),(3,4,7,8,5600.00),(4,4,8,15,10500.00),(5,3,9,2,1178.00),(6,4,9,15,10500.00),(7,3,10,3,1767.00),(8,4,10,15,10500.00),(9,3,11,1,589.00),(10,3,12,1,589.00),(11,3,14,12,7068.00),(12,3,15,2,1178.00),(13,3,16,2,1178.00),(14,3,17,2,1178.00),(15,4,18,2,1400.00),(16,5,18,2,2048.00),(17,4,19,2,1400.00),(18,2,20,2,1150.00),(19,3,20,3,1767.00),(20,5,20,3,3072.00),(21,5,21,10,10240.00),(22,5,22,2,2048.00),(23,3,23,4,2356.00),(24,4,23,1,700.00),(25,5,23,2,2048.00),(26,2,24,2,1150.00),(27,3,24,1,589.00),(28,4,24,2,1400.00),(29,2,25,10,5750.00),(30,2,26,10,5750.00),(31,2,27,15,8625.00),(32,5,27,5,5120.00),(33,3,28,5,2945.00),(34,5,28,10,10240.00),(35,2,29,2,1150.00),(36,5,29,1,1024.00),(37,2,30,10,5750.00),(38,2,31,12,6900.00);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `ORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USE_ID` int(11) NOT NULL,
  `ORD_DATE` date DEFAULT NULL,
  `ORD_ReceivingAddress` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `SHM_ID` int(11) NOT NULL,
  `PAM_ID` int(11) NOT NULL,
  `ORD_STATUS` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ORD_ID`),
  KEY `FK_CUSTOMER` (`USE_ID`),
  KEY `FK_PaymentMethod` (`PAM_ID`),
  KEY `FK_ShippingMethod` (`SHM_ID`),
  CONSTRAINT `FK_CUSTOMER` FOREIGN KEY (`USE_ID`) REFERENCES `userz` (`USE_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_PaymentMethod` FOREIGN KEY (`PAM_ID`) REFERENCES `paymentmethod` (`PAM_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ShippingMethod` FOREIGN KEY (`SHM_ID`) REFERENCES `shippingmethod` (`SHM_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2013-12-17','',1,1,0),(2,1,'2013-12-18','',1,1,0),(3,1,'2013-12-18','',1,1,0),(4,1,'2013-12-18','',1,1,0),(5,1,'2013-12-18','',1,1,0),(6,1,'2013-12-18','',1,1,0),(7,1,'2013-12-18','',1,1,0),(8,1,'2013-12-18','',1,1,0),(9,1,'2013-12-18','',1,1,0),(10,1,'2013-12-18','',1,1,0),(11,1,'2013-12-18','',1,1,0),(12,1,'2013-12-18','',1,1,0),(13,1,'2013-12-18','',1,1,0),(14,1,'2013-12-18','',1,1,0),(15,1,'2013-12-19','',1,1,0),(16,1,'2013-12-19','',1,1,0),(17,1,'2013-12-19','',1,1,0),(18,1,'2013-12-19','',1,1,0),(19,1,'2013-12-19','',1,1,0),(20,1,'2013-12-19','',1,1,0),(21,1,'2013-12-19','',1,1,0),(22,1,'2013-12-19','',1,1,0),(23,1,'2013-12-25','',1,1,0),(24,1,'2013-12-29','an thoi',1,1,0),(25,1,'2013-12-29','an thoi',1,2,0),(26,1,'2013-12-29','HCM',1,1,0),(27,1,'2013-12-30','An Thoi An Hoa Trang Bang Tay Ninh',1,2,0),(28,2,'2013-12-30','Thong Tay Hoi Cu Chi',1,1,0),(29,1,'2017-12-09','Etown1 Cong Hoa',2,2,0),(30,1,'2017-12-09','wqwq',1,1,0),(31,1,'2017-12-09','',1,1,0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmethod`
--

DROP TABLE IF EXISTS `paymentmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymentmethod` (
  `PAM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PAM_METHOD` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`PAM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmethod`
--

LOCK TABLES `paymentmethod` WRITE;
/*!40000 ALTER TABLE `paymentmethod` DISABLE KEYS */;
INSERT INTO `paymentmethod` VALUES (1,'Through Bank'),(2,'Directly');
/*!40000 ALTER TABLE `paymentmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `PRO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUP_ID` int(11) NOT NULL,
  `CAT_ID` int(11) NOT NULL,
  `PRO_NAME` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRO_OS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRO_CPU` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRO_RAM` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRO_HDD` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRO_GRAPHIC` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRO_MONITOR` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRO_BATTERY` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRO_SIZE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRO_CAMERA` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRO_PRICE` double(8,2) NOT NULL,
  `PRO_SmallImage` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRO_LargeImage` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRO_DESCRIPTION` text COLLATE utf8mb4_unicode_ci,
  `PRO_QUANTITY` int(11) NOT NULL,
  `PRO_ISNEW` tinyint(1) NOT NULL,
  `PRO_ISHOT` tinyint(1) NOT NULL,
  PRIMARY KEY (`PRO_ID`),
  KEY `FK_RELATIONSHIP_12` (`CAT_ID`),
  KEY `FK_RELATIONSHIP_8` (`SUP_ID`),
  CONSTRAINT `FK_RELATIONSHIP_12` FOREIGN KEY (`CAT_ID`) REFERENCES `category` (`CAT_ID`),
  CONSTRAINT `FK_RELATIONSHIP_8` FOREIGN KEY (`SUP_ID`) REFERENCES `supplier` (`SUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,1,3,'ACER ASPIRE V5 471G 3322 4G50 ','Free Dos','Intel Core i3 3227U ','4GB DDR3 SDRAM, 2 Sl',NULL,'nVidia GeForce 710M - 2GB','17','Lithium Ion (Li-Ion)','Height: 23.0 mm Width : 342.0 mm Depth : 245.0 mm','Webcamera 1.3 MP',575.00,'ACE001.jpg','ACE001.jpg',NULL,0,1,1),(3,1,4,'DELL VOSTRO 2420 GKF90-3110M4G','Free Dos','Intel Core i3 3110M ','4GB DDR3',NULL,'Intel HD4000 Graphic','14.0 inches HD WLED TrueLife 1366 x 768 pixels','Lithium-ion 6 cell','342 x 244 x 34.7 mm (WxHxD)','Integrated 1.0 MP HD camera',589.00,'ASU002.jpg','ASU002.jpg',NULL,0,0,1),(4,1,5,'SONY VAIO SVE15126CV','Windows 8 Single Lan','Intel Core i3-3110M ','4 GB (4 GB (SO-DIMM)',NULL,'1GB DDR3 AMD Radeonâ¢ HD 7650M','Wide 15.5 inch ','VGP-BPS26 Lithium-ion','371.9 x 25.3 (tá»i Äa 35.1) x 253.5 mm','	Camera HD ÄÆ°á»£c trang bá» ',700.00,'SON001.jpg','SON001.jpg',NULL,0,1,1),(5,1,4,'DELL INSPIRON 5421 VI54500','Free Dos','Intel Core i5 3317U ','4GB DDR3',NULL,'Intel HD4000 Graphic','14.0 inch LED Backlit Touch Display with Truelife ','Lithium Ion 6-cell','346 x 245 x 32.9 mm (WxHxD)','Native HD 1.0MP webcam with digital microphone',1024.00,'ASU002.jpg','ASU002.jpg',NULL,0,1,1),(6,1,4,'Laptop Dell 3570','Free Dos','Intel Core i5 6200U','4G',NULL,'Intel HD Graphics 520','15.6\" HD (1366x768)','4 Cells','14','4.0',1000.00,'DELL3570.jpg','DELL3570.jpg',NULL,1,1,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_cartcustomer`
--

DROP TABLE IF EXISTS `product_cartcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_cartcustomer` (
  `PRO_ID` int(11) NOT NULL,
  `CAR_ID` int(11) NOT NULL,
  PRIMARY KEY (`PRO_ID`,`CAR_ID`),
  KEY `FK_RELATIONSHIP_10` (`CAR_ID`),
  CONSTRAINT `FK_RELATIONSHIP_10` FOREIGN KEY (`CAR_ID`) REFERENCES `cartcustomer` (`CAR_ID`),
  CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`PRO_ID`) REFERENCES `product` (`PRO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_cartcustomer`
--

LOCK TABLES `product_cartcustomer` WRITE;
/*!40000 ALTER TABLE `product_cartcustomer` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_cartcustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qanda`
--

DROP TABLE IF EXISTS `qanda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qanda` (
  `QAA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `QAA_QUESTION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QAA_ANSWER` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`QAA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qanda`
--

LOCK TABLES `qanda` WRITE;
/*!40000 ALTER TABLE `qanda` DISABLE KEYS */;
/*!40000 ALTER TABLE `qanda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receipt` (
  `REC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORD_ID` int(11) NOT NULL,
  `SHM_ID` int(11) NOT NULL,
  `PAM_ID` int(11) NOT NULL,
  `REC_STATUS` tinyint(4) NOT NULL DEFAULT '0',
  `REC_RECEIVERADDRESS` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`REC_ID`),
  KEY `FK_ORDER_RECEIPT` (`ORD_ID`),
  KEY `FK_RELATIONSHIP_13` (`SHM_ID`),
  KEY `FK_RELATIONSHIP_7` (`PAM_ID`),
  CONSTRAINT `FK_ORDER_RECEIPT` FOREIGN KEY (`ORD_ID`) REFERENCES `orders` (`ORD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippingmethod`
--

DROP TABLE IF EXISTS `shippingmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shippingmethod` (
  `SHM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SHM_METHOD` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SHM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippingmethod`
--

LOCK TABLES `shippingmethod` WRITE;
/*!40000 ALTER TABLE `shippingmethod` DISABLE KEYS */;
INSERT INTO `shippingmethod` VALUES (1,'Post Office'),(2,'Indirectly');
/*!40000 ALTER TABLE `shippingmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `SUP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUP_NAME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SUP_ADDRESS` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Phong Vũ','Nguyễn Thị Minh Khai'),(2,'Apple Store','Đinh Tiên Hoàng'),(3,'PC General Store','USA');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userz`
--

DROP TABLE IF EXISTS `userz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userz` (
  `USE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USE_FIRSTNAME` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USE_LASTNAME` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USE_ADDRESS` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USE_PHONENUMBER` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USE_EMAIL` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USE_USERNAME` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `USE_PASSWORD` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USE_ISADMIN` tinyint(1) DEFAULT NULL,
  `USE_ISACTIVE` tinyint(1) DEFAULT NULL,
  `USE_ACTIVECODE` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USE_ID`),
  KEY `AK_USE_USERNAME` (`USE_USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userz`
--

LOCK TABLES `userz` WRITE;
/*!40000 ALTER TABLE `userz` DISABLE KEYS */;
INSERT INTO `userz` VALUES (1,'Dinh','Phan','HCM','0934161014','phandinhvcd@yahoo.com','phandinh','123',NULL,1,'IKRDF'),(2,'Lien ','Dinh Thanh','HCM','0934161014','liendt','liendt','123',NULL,1,'WFEBA'),(3,'','','','','xsdsds','','',NULL,NULL,'FKQCX'),(4,'','','','','WEWEW','','',NULL,NULL,'GEIRM'),(5,'','','','','dinhpt','','',NULL,NULL,'RMXEX'),(6,'Dinh','Phan','phandinhvcd@gmail.com','0934161014','HCM','dinh1','123456',1,1,'NIJVF');
/*!40000 ALTER TABLE `userz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-10  7:25:51
