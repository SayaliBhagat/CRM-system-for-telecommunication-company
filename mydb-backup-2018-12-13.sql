-- MySQL dump 10.13  Distrib 5.7.23-ndb-7.5.11, for macos10.13 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.23-ndb-7.5.11-cluster-gpl

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
-- Table structure for table `BillingAccountDetails`
--

DROP TABLE IF EXISTS `BillingAccountDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BillingAccountDetails` (
  `BillingID` varchar(255) NOT NULL,
  `ProductNumber` varchar(45) NOT NULL,
  `Bills` varchar(255) DEFAULT NULL,
  `Customer_Customer_ID` int(11) NOT NULL,
  `Customer_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`BillingID`,`Customer_Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BillingAccountDetails`
--

LOCK TABLES `BillingAccountDetails` WRITE;
/*!40000 ALTER TABLE `BillingAccountDetails` DISABLE KEYS */;
INSERT INTO `BillingAccountDetails` VALUES ('1-FGHJ','200692','unpaid',1,5003),('1-HJKL','102219','unpaid',1,5004),('1-UIOP','86600','paid',1,5002),('2-FGHJ','68408','unpaid',2,5003);
/*!40000 ALTER TABLE `BillingAccountDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `Category_ID` int(11) NOT NULL,
  `Category` varchar(45) NOT NULL,
  `Catalog` varchar(45) NOT NULL,
  `SIM_ProductNumber` int(11) NOT NULL,
  `Router_ProductNumber` int(11) NOT NULL,
  `TVEquipment_ProductNumber` int(11) NOT NULL,
  `Handset_ProductNumber` int(11) NOT NULL,
  `Promotions_ProductNumber` int(11) NOT NULL,
  `RootProducts_ProductNumber` int(11) NOT NULL,
  PRIMARY KEY (`Category_ID`,`SIM_ProductNumber`,`Router_ProductNumber`,`TVEquipment_ProductNumber`,`Handset_ProductNumber`,`Promotions_ProductNumber`,`RootProducts_ProductNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68400,0,0),(2,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68401,0,0),(3,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68402,0,0),(4,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68403,0,0),(5,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68404,0,0),(6,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68405,0,0),(7,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68406,0,0),(8,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68407,0,0),(9,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68408,0,0),(10,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68409,0,0),(11,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68410,0,0),(12,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68411,0,0),(13,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68412,0,0),(14,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68413,0,0),(15,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68414,0,0),(16,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68415,0,0),(17,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68416,0,0),(18,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68417,0,0),(19,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68418,0,0),(20,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68419,0,0),(21,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68420,0,0),(22,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68421,0,0),(23,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68422,0,0),(24,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68423,0,0),(25,'Mobile phones','Pay as you go, Pay monthly',0,0,0,68424,0,0),(26,'Postpay Broadband','Pay monthly',0,0,0,0,102211,0),(27,'Postpay Broadband','Pay monthly',0,0,0,0,102212,0),(28,'Postpay Broadband','Pay monthly',0,0,0,0,102213,0),(29,'Postpay Broadband','Pay monthly',0,0,0,0,102214,0),(30,'Postpay Broadband','Pay monthly',0,0,0,0,102215,0),(31,'Postpay Broadband','Pay monthly',0,0,0,0,102216,0),(32,'Postpay Broadband','Pay monthly',0,0,0,0,102217,0),(33,'Postpay Broadband','Pay monthly',0,0,0,0,102218,0),(34,'Postpay Broadband','Pay monthly',0,0,0,0,102219,0),(35,'Postpay Broadband','Pay monthly',0,0,0,0,102220,0),(36,'Equipment','TV',0,0,86600,0,0,0),(37,'Equipment','TV',0,0,86601,0,0,0),(39,'FixedLine','Enterprise',0,200690,0,0,0,0),(40,'FixedLine','Enterprise',0,200691,0,0,0,0),(41,'FixedLine','Enterprise',0,200692,0,0,0,0),(42,'FixedLine','Enterprise',0,200693,0,0,0,0),(43,'FixedLine','Enterprise',0,200694,0,0,0,0),(44,'FixedLine','Enterprise',0,200695,0,0,0,0),(45,'FixedLine','Enterprise',0,200696,0,0,0,0),(46,'FixedLine','Enterprise',0,200697,0,0,0,0),(51,'SIM Card','Pay as you go, Pay monthly',52000,0,0,0,0,0),(52,'SIM Card','Pay as you go, Pay monthly',52001,0,0,0,0,0),(53,'SIM Card','Pay as you go, Pay monthly',52002,0,0,0,0,0),(54,'SIM Card','Pay as you go, Pay monthly',52003,0,0,0,0,0),(55,'SIM Card','Pay as you go, Pay monthly',52004,0,0,0,0,0),(56,'SIM Card','Pay as you go, Pay monthly',52005,0,0,0,0,0),(57,'SIM Card','Pay as you go, Pay monthly',52006,0,0,0,0,0),(58,'SIM Card','Pay as you go, Pay monthly',52007,0,0,0,0,0),(59,'SIM Card','Pay as you go, Pay monthly',52008,0,0,0,0,0),(60,'SIM Card','Pay as you go, Pay monthly',52009,0,0,0,0,0),(61,'SIM Card','Pay as you go, Pay monthly',52010,0,0,0,0,0),(62,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104951),(63,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104952),(64,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104953),(65,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104954),(66,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104955),(67,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104956),(68,'Delivery charges','Pay as you go, Pay monthly',0,0,0,0,0,104957),(69,'Delivery charges','Pay as you go, Pay monthly',0,0,0,0,0,104958),(70,'Billing charges','Pay as you go, Pay monthly',0,0,0,0,0,104959),(71,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104960),(72,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104961),(73,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104962),(74,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104963),(75,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104964),(76,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104965),(77,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104966),(78,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104967),(79,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104968),(80,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104969),(81,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104970),(82,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104971),(83,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104972),(84,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104973),(85,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104974),(86,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104975),(87,'Service products','Pay as you go, Pay monthly',0,0,0,0,0,104976),(88,'Delivery charges','Pay as you go, Pay monthly',0,0,0,0,0,104977),(89,'Delivery charges','Pay as you go, Pay monthly',0,0,0,0,0,104978),(90,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104979),(91,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104980),(92,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104981),(93,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104982),(94,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104983),(95,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104984),(96,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104985),(97,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104986),(98,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104987),(99,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104988),(100,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104989),(101,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104990),(102,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104991),(103,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104992),(104,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104993),(105,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104994),(106,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104995),(107,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104996),(108,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104997),(109,'Accessories','Pay as you go, Pay monthly',0,0,0,0,0,104998);
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `Customer_ID` int(11) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `MiddleName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `SIM_ProductNumber` int(11) NOT NULL,
  `TVEquipment_ProductNumber` int(11) NOT NULL,
  `Router_ProductNumber` int(11) NOT NULL,
  `Handset_ProductNumber` int(11) NOT NULL,
  `Promotions_ProductNumber` int(11) NOT NULL,
  `RootProducts_ProductNumber` int(11) NOT NULL,
  PRIMARY KEY (`Customer_ID`,`SIM_ProductNumber`,`TVEquipment_ProductNumber`,`Router_ProductNumber`,`Handset_ProductNumber`,`Promotions_ProductNumber`,`RootProducts_ProductNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (5000,'Sayali','Ashok','Bhagat','8573086210','sailee1404@gmail.com','Boston',52000,0,0,68411,0,0),(5002,'Joseph','','Humphery','7276327115','joseph@xyz.com','Califorina',0,86600,0,0,0,0),(5003,'Emily','','Lin','857660371','lin@yahoo.in','NY',0,0,200692,68408,0,0),(5004,'Sanket','Ashok','Bhagat','9881450914','bhagat@gmail.com','Pune',0,0,0,0,102219,0);
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Handset`
--

DROP TABLE IF EXISTS `Handset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Handset` (
  `Handset_ProductNumber` int(11) NOT NULL,
  `ProductName` varchar(45) NOT NULL,
  `Warranty` varchar(45) DEFAULT NULL,
  `Manufacturer` varchar(45) DEFAULT NULL,
  `Color` varchar(45) DEFAULT NULL,
  `Memory` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Handset_ProductNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Handset`
--

LOCK TABLES `Handset` WRITE;
/*!40000 ALTER TABLE `Handset` DISABLE KEYS */;
INSERT INTO `Handset` VALUES (68400,'Nokia N900 black','24 months','Nokia','Black','32GB'),(68401,'Nokia C5 black','24 months','Nokia','Black','32GB'),(68402,'Samsung Galaxy J5 black','24 months','Samsung','Black','32GB'),(68403,'Samsung Galaxy S8 midnight black','24 months','Samsung','Midnight black','32GB'),(68404,'Apple iPhone 8 64GB silver','12 months','Apple','Silver','64GB'),(68405,'Apple iPhone 8 64GB space grey','12 months','Apple','Space grey','64GB'),(68406,'Apple iPhone 8 64GB gold','12 months','Apple','Gold','64GB'),(68407,'Apple iPhone 8 256GB silver','12 months','Apple','Silver','256GB'),(68408,'Apple iPhone 8 256GB space grey','12 months','Apple','Space grey','256GB'),(68409,'Apple iPhone 8 256GB gold','12 months','Apple','Gold','256GB'),(68410,'Apple iPhone 8 Plus 64GB silver','12 months','Apple','Silver','64GB'),(68411,'Apple iPhone 8 Plus 64GB space grey','12 months','Apple','Space grey','64GB'),(68412,'Apple iPhone 8 Plus 64GB gold','12 months','Apple','Gold','64GB'),(68413,'Apple iPhone 8 Plus 256GB silver','12 months','Apple','Silver','256GB'),(68414,'Apple iPhone 8 Plus 256GB space grey','12 months','Apple','Space grey','256GB'),(68415,'Apple iPhone 8 Plus 256GB gold','12 months','Apple','Gold','256GB'),(68416,'Apple iPhone 8 64GB red','12 months','Apple','Red','64GB'),(68417,'Apple iPhone 8 Plus 64GB red','12 months','Apple','Red','64GB'),(68418,'Google Pixel 3 XL 128GB black','24 months','Google','Black','128GB'),(68419,'Google Pixel 3 XL 128GB white','24 months','Google','White','128GB'),(68420,'Google Pixel 3 XL 128GB pink','24 months','Google','Pink','128GB');
/*!40000 ALTER TABLE `Handset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductDetails`
--

DROP TABLE IF EXISTS `ProductDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductDetails` (
  `ProductDetailNumber` int(11) NOT NULL,
  `ItemStatus` varchar(45) NOT NULL,
  `EffectiveStartDate` varchar(45) NOT NULL,
  `EffectiveEndDate` varchar(45) NOT NULL,
  `EntityType` varchar(45) NOT NULL,
  `Organisation` varchar(45) NOT NULL,
  `FullfillmentItemCode` varchar(45) NOT NULL,
  `Billable` varchar(45) NOT NULL,
  `Shippable` varchar(45) NOT NULL,
  `MaxQuantity` int(11) NOT NULL,
  `MinQuantity` int(11) NOT NULL,
  `DefaultQuantity` int(11) NOT NULL,
  `Payment` varchar(45) NOT NULL,
  `PriceType` varchar(45) NOT NULL,
  `EANBarCode` varchar(255) DEFAULT NULL,
  `OrderingAttribute` int(11) NOT NULL,
  `SIM_ProductNumber` int(11) NOT NULL,
  `Router_ProductNumber` int(11) NOT NULL,
  `TVEquipment_ProductNumber` int(11) NOT NULL,
  `Handset_ProductNumber` int(11) NOT NULL,
  `RootProducts_ProductNumber` int(11) NOT NULL,
  `Promotions_ProductNumber` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProductDetailNumber`,`SIM_ProductNumber`,`Router_ProductNumber`,`TVEquipment_ProductNumber`,`Handset_ProductNumber`,`RootProducts_ProductNumber`,`Promotions_ProductNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductDetails`
--

LOCK TABLES `ProductDetails` WRITE;
/*!40000 ALTER TABLE `ProductDetails` DISABLE KEYS */;
INSERT INTO `ProductDetails` VALUES (501,'Active','2012-01-05','NULL','Product','VF Red Brand','SIM Card','Yes','Yes',999,0,0,'','One Time','660543005476;660543008095;0',195200,52000,0,0,0,0,0,'Standard SIM Red'),(502,'Active','2012-05-01','2012-05-01','Product','VF Red Brand','SIM Card','Yes','Yes',999,0,0,'','One Time','5055015236338;0;0',195400,52001,0,0,0,0,0,'Micro SIM Red'),(503,'Active','2012-01-05','NULL','Product','VF Red Brand','SIM Card','Yes','Yes',999,0,0,'','One Time','660543005476;660543008095;0',195300,52002,0,0,0,0,0,'Micro SIM Red'),(504,'Active','2012-10-30','NULL','Product','VF Red Brand','SIM Card','Yes','Yes',999,0,0,'','One Time','0;0;0',195500,52003,0,0,0,0,0,'Standard SIM White'),(505,'Inactive','2012-10-30','NULL','Product','VF Red Brand','SIM Card','Yes','Yes',999,0,0,'','One Time','0;0;0',195600,52004,0,0,0,0,0,'Micro SIM White'),(506,'Inactive','2012-10-30','NULL','Product','VF Red Brand','SIM Card','No','Yes',999,0,0,'','One Time','0;0;0',195700,52005,0,0,0,0,0,'iPad Micro Sim White'),(507,'Inactive','2012-10-30','NULL','Product','VF Red Brand','SIM Card','No','Yes',999,0,0,'','One Time','0;0;0',195800,52006,0,0,0,0,0,'Nano SIM White'),(508,'Active','2012-10-30','NULL','Product','VF Red Brand','SIM Card','Yes','Yes',999,0,0,'','One Time','0;0;0',195825,52007,0,0,0,0,0,'NFC Dual SIM'),(509,'Active','2012-10-30','2014-03-04','Product','VF Red Brand','SIM Card','Yes','Yes',999,0,0,'','One Time','0;0;0',195850,52008,0,0,0,0,0,'Micro NFC SIM'),(510,'Active','2012-10-30','NULL','Product','VF Red Brand','SIM Card','Yes','Yes',999,0,0,'','One Time','0;0;0',195875,52009,0,0,0,0,0,'Nano NFC SIM'),(511,'Active','2013-08-28','NULL','Product','VF Red Brand','SIM Card','Yes','Yes',999,0,0,'','One Time','0;0;0',195900,52010,0,0,0,0,0,'Dual Format SIM White'),(512,'Active','2017-01-01','2012-11-06','Product','VF Red Brand','Handset','Yes','Yes',999,0,0,'','One Time','6438158137233;0;0',164050,0,0,0,68400,0,0,'Nokia N900 black'),(513,'Active','2017-01-01','2012-11-06','Product','VF Red Brand','Handset','Yes','Yes',999,0,0,'','One Time','6438158217232;0;0',164050,0,0,0,68401,0,0,'Nokia C5 black'),(515,'Active','2017-04-28','NULL','Product','VF Red Brand','Handset','Yes','Yes',999,0,0,'','One Time','0;0;0',164050,0,0,0,68403,0,0,'Samsung Galaxy S8 midnight black'),(516,'Active','2017-01-01','NULL','Product','VF Red Brand','Handset','Yes','Yes',999,0,0,'','One Time','190198451026;0;0',164050,0,0,0,68404,0,0,'Apple iPhone 8 64GB silver'),(517,'Active','2017-01-01','NULL','Product','VF Red Brand','Handset','Yes','Yes',999,0,0,'','One Time','190198450661;0;0',164050,0,0,0,68405,0,0,'Apple iPhone 8 64GB space grey'),(518,'Active','2017-01-01','NULL','Product','VF Red Brand','Handset','Yes','Yes',999,0,0,'','One Time','190198451385;0;0',164050,0,0,0,68406,0,0,'Apple iPhone 8 64GB gold'),(519,'Active','2017-01-01','NULL','Product','VF Red Brand','Handset','Yes','Yes',999,0,0,'','One Time','190198452528;0;0',164050,0,0,0,68407,0,0,'Apple iPhone 8 256GB silver'),(520,'Active','2017-01-01','NULL','Product','VF Red Brand','Handset','Yes','Yes',999,0,0,'','One Time','190198452160;0;0',164050,0,0,0,68408,0,0,'Apple iPhone 8 256GB space grey'),(521,'Active','2017-01-01','NULL','Product','VF Red Brand','Handset','Yes','Yes',999,0,0,'','One Time','190198452887;0;0',164050,0,0,0,68409,0,0,'Apple iPhone 8 256GB gold'),(522,'Active','2017-01-01','NULL','Product','VF Red Brand','Handset','Yes','Yes',999,0,0,'','One Time','190198454324;0;0',164050,0,0,0,68410,0,0,'Apple iPhone 8 Plus 64GB silver'),(523,'Active','2017-01-01','NULL','Product','VF Red Brand','Handset','Yes','Yes',999,0,0,'','One Time','190198453969;0;0',164050,0,0,0,68411,0,0,'Apple iPhone 8 Plus 64GB space grey'),(524,'Active','2017-01-01','NULL','Product','VF Red Brand','Handset','Yes','Yes',999,0,0,'','One Time','190198454683;0;0',164050,0,0,0,68412,0,0,'Apple iPhone 8 Plus 64GB gold'),(525,'Active','2017-01-01','NULL','Product','VF Red Brand','Handset','Yes','Yes',999,0,0,'','One Time','190198455406;0;0',164050,0,0,0,68413,0,0,'Apple iPhone 8 Plus 256GB silver'),(526,'Inactive','2017-01-01','NULL','Product','VF Red Brand','Handset','No','Yes',999,0,0,'','One Time','190198455048;0;0',164050,0,0,0,68414,0,0,'Apple iPhone 8 Plus 256GB space grey'),(527,'Inactive','2017-01-01','NULL','Product','VF Red Brand','Handset','No','Yes',999,0,0,'','One Time','190198455765;0;0',164050,0,0,0,68415,0,0,'Apple iPhone 8 Plus 256GB gold'),(528,'Inactive','2017-01-01','NULL','Product','VF Red Brand','Handset','No','Yes',999,0,0,'','One Time','190198744142;0;0',164050,0,0,0,68416,0,0,'Apple iPhone 8 64GB red'),(529,'Inactive','2017-01-01','NULL','Product','VF Red Brand','Handset','No','Yes',999,0,0,'','One Time','190198746030;0;0',164050,0,0,0,68417,0,0,'Apple iPhone 8 Plus 64GB red'),(530,'Inactive','2018-09-03','NULL','Product','VF Red Brand','Handset','No','Yes',999,0,0,'','One Time','',164050,0,0,0,68418,0,0,'Google Pixel 3 XL 128GB black'),(531,'Inactive','2018-09-03','NULL','Product','VF Red Brand','Handset','No','Yes',999,0,0,'','One Time','',164050,0,0,0,68419,0,0,'Google Pixel 3 XL 128GB white'),(532,'Inactive','2018-09-03','NULL','Product','VF Red Brand','Handset','No','Yes',999,0,0,'','One Time','',164050,0,0,0,68420,0,0,'Google Pixel 3 XL 128GB pink'),(534,'Inactive','2018-09-03','NULL','Product','VF Red Brand','Handset','No','Yes',999,0,0,' 0','One Time',' ',164050,0,0,0,68422,0,0,'One Plus 6T Colour 1 PAYG'),(537,'Inactive','2017-01-01','2017-03-20','Product','Default Organisation','TV Equipment','Yes','Yes',1,0,0,'Postpaid','One Time','',92200,0,0,86600,0,0,0,'Vodafone Set Top Box Activation'),(539,'Inactive','2017-01-01','NULL','Product','Default Organisation','Fixed Broadband Equipment','No','Yes',1,0,0,'Postpaid','One Time','5055015287552;0;0',82090,0,200690,0,0,0,0,'Vodafone Broadband router white'),(540,'Inactive','2017-01-01','NULL','Product','Default Organisation','Fixed Broadband Equipment','No','Yes',1,0,0,'Postpaid','One Time','',82090,0,200691,0,0,0,0,'Replacement router white'),(541,'Inactive','2017-01-01','NULL','Product','Default Organisation','Fixed Broadband Equipment','No','Yes',1,0,0,'Postpaid','One Time','6901443076567;0;0',82090,0,200692,0,0,0,0,'Vodafone Broadband router'),(542,'Active','2017-01-01','NULL','Product','Default Organisation','Fixed Broadband Equipment','No','Yes',1,0,0,'Postpaid','One Time','',82090,0,200693,0,0,0,0,'Replacement router'),(543,'Active','2017-01-01','NULL','Product','Default Organisation','Fixed Broadband Equipment','Yes','Yes',1,0,0,'Postpaid','One Time','',82090,0,200694,0,0,0,0,'Router'),(544,'Active','2017-01-01','NULL','Product','Default Organisation','Fixed Broadband Equipment','Yes','Yes',1,0,0,'Postpaid','One Time','0;0;0',82090,0,200695,0,0,0,0,'Vodafone VOX 3.0 Uk'),(547,'Active','2014-09-01','NULL','Promotion','VF Red Brand','Promotion','Yes','No',1,1,1,'Prepaid','Recurring','',0,0,0,0,0,0,102211,'SIM package'),(548,'Active','2014-09-01','NULL','Promotion','VF Red Brand','Promotion','Yes','No',1,1,1,'Prepaid','Recurring','',0,0,0,0,0,0,102212,'Phone and SIM package'),(549,'Active','2014-09-01','2013-06-12','Promotion','VF Red Brand','Promotion','Yes','No',1,1,1,'Prepaid','Recurring','',0,0,0,0,0,0,102213,'Mobile broadband SIM and device package'),(550,'Active','2013-06-12','NULL','Promotion','VF Red Brand','Promotion','Yes','No',1,1,1,'Prepaid','Recurring','',0,0,0,0,0,0,102214,'Dongle Package'),(551,'Active','2013-06-12','2018-09-04','Promotion','VF Red Brand','Promotion','Yes','No',1,1,1,'Prepaid','Recurring','',0,0,0,0,0,0,102215,'iPad SIMO Package'),(552,'Active','2013-06-12','NULL','Promotion','VF Red Brand','Promotion','Yes','No',1,1,1,'Prepaid','Recurring','',0,0,0,0,0,0,102216,'Mobile Wi-Fi Package'),(553,'Active','2014-09-01','NULL','Promotion','VF Red Brand','Promotion','Yes','No',1,1,1,'Postpaid','Recurring','',0,0,0,0,0,0,102217,'24mth Laptop 3072MB'),(554,'Active','2014-09-01','NULL','Promotion','VF Red Brand','Promotion','Yes','No',1,1,1,'Postpaid','Recurring','',0,0,0,0,0,0,102218,'24mth Laptop 5120MB'),(555,'Inactive','2014-09-01','NULL','Promotion','VF Red Brand','Promotion','No','No',1,1,1,'Postpaid','Recurring','',0,0,0,0,0,0,102219,'1month Dongle 500MB'),(557,'Active','2017-01-01','2015-08-01','Product','VF Red Brand','Delivery Charge','No','No',1,0,0,'','One Time','',220000,0,0,0,0,104951,0,'Insurance band 1'),(558,'Active','2012-10-30','2015-10-02','Product','VF Red Brand','Insurance','Yes','No',1,0,0,'Postpaid','Recurring','',231500,0,0,0,0,104952,0,'Insurance band 2'),(559,'Active','2012-10-30','2015-10-02','Product','VF Red Brand','Insurance','Yes','No',1,0,0,'Postpaid','Recurring','',231600,0,0,0,0,104953,0,'Mobile theft and damage cover 1'),(560,'Active','2012-10-30','2015-10-02','Product','VF Red Brand','Insurance','Yes','No',1,0,0,'Postpaid','Recurring','',231900,0,0,0,0,104954,0,'Mobile theft and damage cover 2'),(561,'Inactive','2012-10-30','2015-10-02','Product','VF Red Brand','Insurance','Yes','No',1,0,0,'Postpaid','Recurring','',232000,0,0,0,0,104955,0,'Port Out'),(562,'Active','2012-10-30','NULL','Product','VF Red Brand','Port Out','No','No',1,0,0,'','One Time','',218250,0,0,0,0,104956,0,'Apple Protection Plan'),(563,'Inactive','2012-10-30','2015-01-01','Product','VF Red Brand','Warranty','No','No',1,0,0,'Postpaid','One Time','',233500,0,0,0,0,104957,0,'Collect in store'),(564,'Inactive','2017-01-01','NULL','Product','VF Red Brand','Delivery Charge','No','No',1,0,0,'','One Time','',219900,0,0,0,0,104958,0,'Deliver to store'),(565,'Active','2017-01-01','NULL','Product','VF Red Brand','Delivery Charge','No','No',1,0,0,'','One Time','',219950,0,0,0,0,104959,0,'Billing Activation'),(566,'Active','2014-06-20','NULL','Product','VF Red Brand','Billing Activation','Yes','No',1,0,0,'','One Time','',82050,0,0,0,0,104960,0,'Switching Credit'),(567,'Active','2014-07-28','NULL','Product','VF Red Brand','Fee','No','No',1,0,0,'Postpaid','One Time','',0,0,0,0,0,104961,0,'TV Set Up Fee'),(568,'Active','2014-07-28','2017-03-20','Product','VF Red Brand','Fee','No','No',1,0,0,'Postpaid','One Time','',92202,0,0,0,0,104962,0,'Repair (Phone) - 32GB'),(569,'Active','2015-06-29','NULL','Product','VF Red Brand','Repair Products','No','No',1,0,0,'','One Time','',194610,0,0,0,0,104963,0,'Repair (Phone) - 64GB'),(570,'Active','2015-06-29','NULL','Product','VF Red Brand','Repair Products','No','No',1,0,0,'','One Time','',194620,0,0,0,0,104964,0,'Repair (Phone) - 128GB'),(571,'Active','2015-06-29','NULL','Product','VF Red Brand','Repair Products','No','No',1,0,0,'','One Time','',194630,0,0,0,0,104965,0,'Premier Theft and Lost Insurance'),(572,'Active','2015-10-01','2016-01-07','Product','VF Red Brand','Insurance','Yes','No',1,0,0,'Postpaid','Recurring','',233365,0,0,0,0,104966,0,'Lync Online'),(573,'Active','2015-10-02','2016-11-29','Product','VF Red Brand','SAAS','Yes','No',1,0,0,'Postpaid','Recurring','',51220,0,0,0,0,104967,0,'Microsoft Office'),(574,'Active','2015-10-02','2016-11-29','Product','VF Red Brand','SAAS','Yes','No',1,0,0,'Postpaid','Recurring','',51320,0,0,0,0,104968,0,'Consultancy fee'),(575,'Active','2015-10-02','2016-11-29','Product','VF Red Brand','One Time Charge','No','No',1,0,0,'Postpaid','One Time','',51980,0,0,0,0,104969,0,'Business Damage Insurance'),(576,'Active','2016-07-01','NULL','Product','VF Red Brand','Insurance','Yes','No',1,0,0,'Postpaid','Recurring','',233370,0,0,0,0,104970,0,'Theft + Loss insurance'),(577,'Inactive','2016-06-26','NULL','Product','VF Red Brand','Insurance','Yes','No',1,0,0,'Postpaid','Recurring','',233374,0,0,0,0,104971,0,'Damaged or Locked Return Charge 32GB'),(578,'Inactive','2016-09-25','NULL','Product','VF Red Brand','Credit','Yes','No',1,0,0,'','One Time','',218660,0,0,0,0,104972,0,'Damaged or Locked Return Charge 64GB'),(579,'Inactive','2016-09-25','NULL','Product','VF Red Brand','Credit','Yes','No',1,0,0,'','One Time','',218670,0,0,0,0,104973,0,'Damaged or Locked Return Charge 128GB'),(580,'Active','2016-09-25','NULL','Product','VF Red Brand','Credit','Yes','No',1,0,0,'','One Time','',218680,0,0,0,0,104974,0,'Business Support'),(581,'Active','2017-01-01','NULL','Product','VF Red Brand','Insurance','Yes','No',1,0,0,'Postpaid','Recurring','',233366,0,0,0,0,104975,0,'Device Support'),(582,'Active','2017-01-01','NULL','Product','VF Red Brand','Insurance','Yes','No',1,0,0,'Postpaid','Recurring','',233367,0,0,0,0,104976,0,'Out Of Warranty Repair Charge'),(583,'Inactive','2017-01-01','NULL','Product','VF Red Brand','Credit','Yes','No',1,0,0,'','One Time','',218656,0,0,0,0,104977,0,'Damaged Return Charge - In Store'),(584,'Inactive','2018-10-24','NULL','Product','VF Red Brand','Fee','No','No',1,0,0,'','One Time','',194600,0,0,0,0,104978,0,'Damaged Return Charge - Returns Centre'),(585,'Active','2018-10-24','NULL','Product','VF Red Brand','Credit','Yes','No',1,0,0,'','One Time','',194600,0,0,0,0,104979,0,'BX NOKIA CHARGER MICRO USB'),(586,'Active','2017-01-01','2013-09-30','Product','VF Red Brand','Accessories','No','Yes',999,0,0,'','One Time','0;0;0',196150,0,0,0,0,104980,0,'BX SAM BATTERY EB504465VU'),(587,'Active','2017-01-01','2013-09-30','Product','VF Red Brand','Accessories','No','Yes',999,0,0,'','One Time','0;0;0',196150,0,0,0,0,104981,0,'BX APPLE CHARGER USB PLUG'),(588,'Active','2017-01-01','2013-09-30','Product','VF Red Brand','Accessories','No','Yes',999,0,0,'','One Time','0;0;0',196150,0,0,0,0,104982,0,'Beats Solo HD Headphones'),(589,'Active','2017-01-01','NULL','Product','VF Red Brand','Accessories','No','Yes',999,0,0,'','One Time','50644651533;0;0',196150,0,0,0,0,104983,0,'Apple i5 Screen Protector'),(590,'Active','2017-01-01','NULL','Product','VF Red Brand','Accessories','No','Yes',999,0,0,'','One Time','685387364336;0;0',196150,0,0,0,0,104984,0,'JBL Slate Over Ear Headphones'),(591,'Active','2014-10-01','NULL','Product','VF Red Brand','Accessories','No','Yes',999,0,0,'','One Time','4968929038022;0;0',196150,0,0,0,0,104985,0,'Jabra Active Heaphones'),(592,'Active','2015-11-01','NULL','Product','VF Red Brand','Accessories','No','Yes',999,0,0,'','One Time','5707055023897;0;0',196150,0,0,0,0,104986,0,'Apple Pencil'),(593,'Active','2015-11-17','NULL','Product','VF Red Brand','Accessories','No','Yes',999,0,0,'','One Time','888462313711;0;0',196150,0,0,0,0,104987,0,'JBL Headphones T450 black'),(594,'Active','2017-01-01','NULL','Product','VF Red Brand','Accessories','No','Yes',999,0,0,'','One Time','6925281918957;0;0',196150,0,0,0,0,104988,0,'JBL Headphones T450 white'),(595,'Active','2017-01-01','NULL','Product','VF Red Brand','Accessories','No','Yes',999,0,0,'','One Time','6925281918964;0;0',196150,0,0,0,0,104989,0,'Apple Airpods'),(596,'Active','2017-01-01','NULL','Product','VF Red Brand','Accessories','No','Yes',999,0,0,'','One Time','888462858519;0;0',196150,0,0,0,0,104990,0,'Sony EX110AP headphones black'),(597,'Inactive','2017-01-01','NULL','Product','VF Red Brand','Accessories','No','Yes',999,0,0,'','One Time','4905524929225;0;0',196150,0,0,0,0,104991,0,'Sony ZX220BTB Wireless headphones'),(598,'Inactive','2017-01-01','NULL','Product','VF Red Brand','Accessories','No','Yes',999,0,0,'','One Time','4548736036208;0;0',196150,0,0,0,0,104992,0,'Apple EarPods Lightning Connect'),(599,'Inactive','2017-01-01','NULL','Product','VF Red Brand','Accessories','No','Yes',999,0,0,'','One Time','190198001733;0;0',196150,0,0,0,0,104993,0,'Google Wifi'),(600,'Active','2017-06-10','NULL','Product','VF Red Brand','Accessories','No','Yes',999,0,0,'','One Time','0;0;0',196150,0,0,0,0,104994,0,'Google Chromecast'),(601,'Active','2017-06-10','NULL','Product','VF Red Brand','Accessories','No','Yes',999,0,0,'','One Time','0;0;0',196150,0,0,0,0,104995,0,'Google Home');
/*!40000 ALTER TABLE `ProductDetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger RootProductsProductCreation
after insert on ProductDetails
for each row
insert into RootProducts(RootProducts_ProductNumber,ProductName)
values (NEW.RootProducts_ProductNumber,NEW.ProductName) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger TVEquipmentProductCreation
after insert on ProductDetails
for each row
insert into TVEquipment(TVEquipment_ProductNumber,ProductName)
values (NEW.TVEquipment_ProductNumber,NEW.ProductName) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger RouterProductCreation
after insert on ProductDetails
for each row
insert into Router(Router_ProductNumber,ProductName)
values (NEW.Router_ProductNumber,NEW.ProductName) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ProductLine`
--

DROP TABLE IF EXISTS `ProductLine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductLine` (
  `ProductLine_ID` int(11) NOT NULL,
  `ProductLine` varchar(45) NOT NULL,
  `System` varchar(45) NOT NULL,
  `SIM_ProductNumber` int(11) NOT NULL,
  `Router_ProductNumber` int(11) NOT NULL,
  `TVEquipment_ProductNumber` int(11) NOT NULL,
  `Handset_ProductNumber` int(11) NOT NULL,
  `Promotions_ProductNumber` int(11) NOT NULL,
  `RootProducts_ProductNumber` int(11) NOT NULL,
  PRIMARY KEY (`ProductLine_ID`,`SIM_ProductNumber`,`Router_ProductNumber`,`TVEquipment_ProductNumber`,`Handset_ProductNumber`,`Promotions_ProductNumber`,`RootProducts_ProductNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductLine`
--

LOCK TABLES `ProductLine` WRITE;
/*!40000 ALTER TABLE `ProductLine` DISABLE KEYS */;
INSERT INTO `ProductLine` VALUES (1501,'SIM Card,SIM Hide','CRM',52000,0,0,0,0,0),(1502,'SIM Card,SIM Hide','CRM',52001,0,0,0,0,0),(1503,'SIM Card,SIM Hide','CRM',52002,0,0,0,0,0),(1504,'SIM Card,SIM Hide','CRM',52003,0,0,0,0,0),(1505,'SIM Card,SIM Hide','CRM',52004,0,0,0,0,0),(1506,'SIM Card','CRM',52005,0,0,0,0,0),(1507,'SIM Card','CRM',52006,0,0,0,0,0),(1508,'SIM Card','CRM',52007,0,0,0,0,0),(1509,'SIM Card','CRM',52008,0,0,0,0,0),(1510,'SIM Card','CRM',52009,0,0,0,0,0),(1511,'SIM Card','CRM',52010,0,0,0,0,0),(1512,'Acc Sol','CRM',52000,200690,86600,68400,0,104951),(1513,'Acc Sol','CRM',52001,200691,86601,68401,0,104952),(1514,'Acc Sol','CRM',52002,200692,0,68402,0,104953),(1515,'Acc Sol','CRM',52003,200693,0,68403,0,104954),(1516,'Acc Sol','CRM',52004,200694,0,68404,0,104955),(1517,'Acc Sol','CRM',52005,200695,0,68405,0,104956),(1518,'Acc Sol','CRM',52006,200696,0,68406,0,104957),(1519,'Acc Sol','CRM',52007,200697,0,68407,0,104958),(1520,'Acc Sol','CRM',52008,0,0,68408,0,104959),(1521,'Acc Sol','CRM',52009,0,0,68409,0,104960),(1522,'Acc Sol','CRM',52010,0,0,68410,0,104961),(1523,'Acc Sol;Insurance Band 1;Postpay Handsets','CRM',0,0,0,68411,0,0),(1524,'Acc Sol;Insurance Band 1;Postpay Handsets','CRM',0,0,0,68412,0,0),(1525,'Acc Sol;Insurance Band 1;Postpay Handsets','CRM',0,0,0,68413,0,0),(1526,'Acc Sol;Insurance Band 1;Postpay Handsets','CRM',0,0,0,68414,0,0),(1527,'Acc Sol;Insurance Band 1;Postpay Handsets','CRM',0,0,0,68415,0,0),(1528,'Acc Sol;Insurance Band 1;Postpay Handsets','CRM',0,0,0,68416,0,0),(1529,'Acc Sol;Insurance Band 1;Postpay Handsets','CRM',0,0,0,68417,0,0),(1530,'Acc Sol;Insurance Band 2;Postpay Handsets','CRM',0,0,0,68418,0,0),(1531,'Acc Sol;Insurance Band 2;Postpay Handsets','CRM',0,0,0,68419,0,0),(1532,'Acc Sol;Insurance Band 2;Postpay Handsets','CRM',0,0,0,68420,0,0),(1533,'Acc Sol;Insurance Band 2;Postpay Handsets','CRM',0,0,0,68421,0,0),(1534,'Acc Sol;Insurance Band 2;Postpay Handsets','CRM',0,0,0,68422,0,0),(1535,'Acc Sol;Insurance Band 2;Postpay Handsets','',0,0,0,68423,0,0),(1536,'Acc Sol;Insurance Band 2;Postpay Handsets','',0,0,0,68424,0,0),(1539,'Misc','',0,200690,0,0,0,104962),(1540,'Misc','',0,200691,0,0,0,104963),(1541,'Misc','',0,200692,0,0,0,104964),(1542,'Misc;Router Plus','',0,200693,0,0,0,0),(1543,'Misc;Router Plus','',0,200694,0,0,0,0),(1544,'Misc;Router Plus','',0,200695,0,0,0,0),(1545,'Misc;Router Plus','',0,200696,0,0,0,0),(1546,'Misc;Router Plus','',0,200697,0,0,0,0),(1547,'Bulk Only','',0,0,0,0,102211,0),(1548,'Bulk Only','',0,0,0,0,102212,0),(1549,'Prepay Broadband','',0,0,0,0,102213,0),(1550,'Prepay Broadband','',0,0,0,0,102214,0),(1551,'Prepay Broadband','',0,0,0,0,102215,0),(1552,'Prepay Broadband','',0,0,0,0,102216,0),(1553,'Prepay Broadband','',0,0,0,0,102217,0),(1554,'Tarrif Migration','',0,0,0,0,102218,0),(1555,'Tarrif Migration','',0,0,0,0,102219,0),(1556,'Tarrif Migration','',0,0,0,0,102220,0),(1571,'Donot use Expired Insurance Migration Only','',0,0,0,0,0,104965),(1573,'Enterprise Product;Account Level','CRM',0,0,0,0,0,104967),(1574,'Enterprise Product Account Level','CRM',0,0,0,0,0,104968),(1575,'Business Insurance;Insurance','CRM',0,0,0,0,0,104969),(1576,'ETR1a Insurance;Insurance','CRM',0,0,0,0,0,104970),(1577,'Acc Sol;Admin UTL Retail;Misc','CRM',0,0,0,0,0,104971),(1578,'Acc Sol;Admin UTL Retail;Misc','CRM',0,0,0,0,0,104972),(1579,'Acc Sol;Admin UTL Retail;Misc','CRM',0,0,0,0,0,104973),(1580,'Insurance','CRM',0,0,0,0,0,104974),(1581,'Insurance','CRM',0,0,0,0,0,104975),(1582,'Misc','CRM',0,0,0,0,0,104976),(1583,'Acc Sol;Misc','CRM',0,0,0,0,0,104977),(1584,'Misc','CRM',0,0,0,0,0,104978),(1585,'Acc Sol;Accessories','CRM',0,0,0,0,0,104979),(1586,'Acc Sol;Accessories','CRM',0,0,0,0,0,104980),(1587,'Acc Sol;Accessories','CRM',0,0,0,0,0,104981),(1588,'Acc Sol;Accessories','CRM',0,0,0,0,0,104982),(1589,'Acc Sol;Accessories','CRM',0,0,0,0,0,104983),(1590,'Acc Sol;Accessories','CRM',0,0,0,0,0,104984),(1591,'Acc Sol;Accessories','CRM',0,0,0,0,0,104985),(1592,'Acc Sol;Accessories','CRM',0,0,0,0,0,104986),(1593,'Acc Sol;Accessories','CRM',0,0,0,0,0,104987),(1594,'Acc Sol;Accessories','CRM',0,0,0,0,0,104988),(1595,'Acc Sol;Accessories','CRM',0,0,0,0,0,104989),(1596,'Acc Sol;Accessories','CRM',0,0,0,0,0,104990),(1597,'Acc Sol;Accessories','CRM',0,0,0,0,0,104991),(1598,'Acc Sol;Accessories','CRM',0,0,0,0,0,104992),(1599,'Acc Sol;Accessories','CRM',0,0,0,0,0,104993),(1600,'Acc Sol;Accessories','CRM',0,0,0,0,0,104994),(1601,'Acc Sol;Accessories','CRM',0,0,0,0,0,104995),(1602,'Acc Sol;Accessories','CRM',0,0,0,0,0,104996),(1603,'Acc Sol;Accessories','CRM',0,0,0,0,0,104997),(1604,'Acc Sol;Accessories','CRM',0,0,0,0,0,104998);
/*!40000 ALTER TABLE `ProductLine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Promotions`
--

DROP TABLE IF EXISTS `Promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Promotions` (
  `Promotions_ProductNumber` int(11) NOT NULL,
  `ProductName` varchar(45) NOT NULL,
  `RecurringCharge` varchar(45) NOT NULL,
  `ChargeCreditType` varchar(45) DEFAULT NULL,
  `Plan` varchar(45) DEFAULT NULL,
  `Penalty` varchar(45) DEFAULT NULL,
  `PrimaryProduct` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Promotions_ProductNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Promotions`
--

LOCK TABLES `Promotions` WRITE;
/*!40000 ALTER TABLE `Promotions` DISABLE KEYS */;
INSERT INTO `Promotions` VALUES (102211,'SIM package','0','Penalty','18month linear','0','Mobile phone service'),(102212,'Phone and SIM package','0','Penalty','18month linear','0','Mobile phone service'),(102213,'Mobile broadband SIM and device package','0','Penalty','18month linear','0','Mobile broadband service'),(102214,'Dongle Package','0','Penalty','18month linear','0','Mobile broadband service'),(102215,'iPad SIMO Package','0','Penalty','12month linear','0','Mobile broadband service'),(102216,'Mobile Wi-Fi Package','0','Penalty','12month linear','0','Mobile broadband service'),(102217,'24mth Laptop 3072MB','35.7299999999999','Penalty','24month linear','714.6','Mobile broadband service'),(102218,'24mth Laptop 5120MB','40.84','Penalty','24month linear','816.8','Mobile broadband service'),(102219,'1month Dongle 500MB','3.06','Penalty','1month linear','2.55','Mobile broadband service'),(102220,'1mth Tablet SIMO 1GB','9.99','Penalty','1month linear','8.33','Mobile broadband service');
/*!40000 ALTER TABLE `Promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RootProducts`
--

DROP TABLE IF EXISTS `RootProducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RootProducts` (
  `RootProducts_ProductNumber` int(11) NOT NULL,
  `ProductName` varchar(45) NOT NULL,
  PRIMARY KEY (`RootProducts_ProductNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RootProducts`
--

LOCK TABLES `RootProducts` WRITE;
/*!40000 ALTER TABLE `RootProducts` DISABLE KEYS */;
INSERT INTO `RootProducts` VALUES (0,'Vodafone VOX 3.0 Uk'),(1,'Vodafone Broadband Router'),(3,'Samsung Galaxy J5 black'),(104951,'Insurance band 1'),(104952,'Insurance band 2'),(104953,'Mobile theft and damage cover 1'),(104954,'Mobile theft and damage cover 2'),(104955,'Port Out'),(104956,'Apple Protection Plan'),(104957,'Collect in store'),(104958,'Deliver to store'),(104959,'Billing Activation'),(104960,'Switching Credit'),(104961,'TV Set Up Fee'),(104962,'Repair (Phone) - 32GB'),(104963,'Repair (Phone) - 64GB'),(104964,'Repair (Phone) - 128GB'),(104965,'Premier Theft and Lost Insurance'),(104966,'Lync Online'),(104967,'Microsoft Office'),(104968,'Consultancy fee'),(104969,'Business Damage Insurance'),(104970,'Theft + Loss insurance'),(104971,'Damaged or Locked Return Charge 32GB'),(104972,'Damaged or Locked Return Charge 64GB'),(104973,'Damaged or Locked Return Charge 128GB'),(104974,'Business Support'),(104975,'Device Support'),(104976,'Out Of Warranty Repair Charge'),(104977,'Damaged Return Charge - In Store'),(104978,'Damaged Return Charge - Returns Centre'),(104979,'BX NOKIA CHARGER MICRO USB'),(104980,'BX SAM BATTERY EB504465VU'),(104981,'BX APPLE CHARGER USB PLUG'),(104982,'Beats Solo HD Headphones'),(104983,'Apple i5 Screen Protector'),(104984,'JBL Slate Over Ear Headphones'),(104985,'Jabra Active Heaphones'),(104986,'Apple Pencil'),(104987,'JBL Headphones T450 black'),(104988,'JBL Headphones T450 white'),(104989,'Apple Airpods'),(104990,'Sony EX110AP headphones black'),(104991,'Sony ZX220BTB Wireless headphones'),(104992,'Apple EarPods Lightning Connect'),(104993,'Google Wifi'),(104994,'Google Chromecast'),(104995,'Google Home');
/*!40000 ALTER TABLE `RootProducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Router`
--

DROP TABLE IF EXISTS `Router`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Router` (
  `Router_ProductNumber` int(11) NOT NULL,
  `ProductName` varchar(45) NOT NULL,
  PRIMARY KEY (`Router_ProductNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Router`
--

LOCK TABLES `Router` WRITE;
/*!40000 ALTER TABLE `Router` DISABLE KEYS */;
INSERT INTO `Router` VALUES (3,'Samsung Galaxy J5 black'),(200690,'Vodafone Broadband router white'),(200691,'Replacement router white'),(200692,'Vodafone Broadband router'),(200693,'Replacement router'),(200694,'Router'),(200695,'Vodafone VOX 3.0 Uk'),(200696,'Vodafone Broadband Router');
/*!40000 ALTER TABLE `Router` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SIM`
--

DROP TABLE IF EXISTS `SIM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SIM` (
  `SIM_ProductNumber` int(11) NOT NULL,
  `ProductName` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  PRIMARY KEY (`SIM_ProductNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SIM`
--

LOCK TABLES `SIM` WRITE;
/*!40000 ALTER TABLE `SIM` DISABLE KEYS */;
INSERT INTO `SIM` VALUES (52000,'Standard SIM Red','Standard'),(52002,'Micro SIM Red','Micro'),(52003,'Standard SIM White','Standard'),(52004,'Micro SIM White','Micro'),(52005,'iPad Micro Sim White','Micro'),(52006,'Nano SIM White','Nano'),(52007,'NFC Dual SIM','NFC'),(52008,'Micro NFC SIM','Micro'),(52009,'Nano NFC SIM','Nano'),(52010,'Dual Format SIM White','Dual');
/*!40000 ALTER TABLE `SIM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TVEquipment`
--

DROP TABLE IF EXISTS `TVEquipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TVEquipment` (
  `TVEquipment_ProductNumber` int(11) NOT NULL,
  `ProductName` varchar(45) NOT NULL,
  PRIMARY KEY (`TVEquipment_ProductNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TVEquipment`
--

LOCK TABLES `TVEquipment` WRITE;
/*!40000 ALTER TABLE `TVEquipment` DISABLE KEYS */;
INSERT INTO `TVEquipment` VALUES (1,'Vodafone Broadband Router'),(3,'Samsung Galaxy J5 black'),(86600,'Vodafone Set Top Box Activation');
/*!40000 ALTER TABLE `TVEquipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `all_product_details_for_handset`
--

DROP TABLE IF EXISTS `all_product_details_for_handset`;
/*!50001 DROP VIEW IF EXISTS `all_product_details_for_handset`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_product_details_for_handset` AS SELECT 
 1 AS `Handset_ProductNumber`,
 1 AS `ProductName`,
 1 AS `Manufacturer`,
 1 AS `Warranty`,
 1 AS `Memory`,
 1 AS `Color`,
 1 AS `Category`,
 1 AS `ProductLine`,
 1 AS `ItemStatus`,
 1 AS `EffectiveStartDate`,
 1 AS `EffectiveEndDate`,
 1 AS `EntityType`,
 1 AS `Organisation`,
 1 AS `FullfillmentItemCode`,
 1 AS `Billable`,
 1 AS `Shippable`,
 1 AS `MaxQuantity`,
 1 AS `MinQuantity`,
 1 AS `DefaultQuantity`,
 1 AS `Payment`,
 1 AS `PriceType`,
 1 AS `EANBarCode`,
 1 AS `OrderingAttribute`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `all_product_details_for_promotion`
--

DROP TABLE IF EXISTS `all_product_details_for_promotion`;
/*!50001 DROP VIEW IF EXISTS `all_product_details_for_promotion`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_product_details_for_promotion` AS SELECT 
 1 AS `Promotions_ProductNumber`,
 1 AS `ProductName`,
 1 AS `PrimaryProduct`,
 1 AS `Plan`,
 1 AS `RecurringCharge`,
 1 AS `Penalty`,
 1 AS `ChargeCreditType`,
 1 AS `Category`,
 1 AS `ProductLine`,
 1 AS `ItemStatus`,
 1 AS `EffectiveStartDate`,
 1 AS `EffectiveEndDate`,
 1 AS `EntityType`,
 1 AS `Organisation`,
 1 AS `FullfillmentItemCode`,
 1 AS `Billable`,
 1 AS `Shippable`,
 1 AS `MaxQuantity`,
 1 AS `MinQuantity`,
 1 AS `DefaultQuantity`,
 1 AS `Payment`,
 1 AS `PriceType`,
 1 AS `EANBarCode`,
 1 AS `OrderingAttribute`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `all_product_details_for_rootproducts`
--

DROP TABLE IF EXISTS `all_product_details_for_rootproducts`;
/*!50001 DROP VIEW IF EXISTS `all_product_details_for_rootproducts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_product_details_for_rootproducts` AS SELECT 
 1 AS `RootProducts_ProductNumber`,
 1 AS `ProductName`,
 1 AS `Category`,
 1 AS `ProductLine`,
 1 AS `ItemStatus`,
 1 AS `EffectiveStartDate`,
 1 AS `EffectiveEndDate`,
 1 AS `EntityType`,
 1 AS `Organisation`,
 1 AS `FullfillmentItemCode`,
 1 AS `Billable`,
 1 AS `Shippable`,
 1 AS `MaxQuantity`,
 1 AS `MinQuantity`,
 1 AS `DefaultQuantity`,
 1 AS `Payment`,
 1 AS `PriceType`,
 1 AS `EANBarCode`,
 1 AS `OrderingAttribute`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `all_product_details_for_router`
--

DROP TABLE IF EXISTS `all_product_details_for_router`;
/*!50001 DROP VIEW IF EXISTS `all_product_details_for_router`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_product_details_for_router` AS SELECT 
 1 AS `Router_ProductNumber`,
 1 AS `ProductName`,
 1 AS `Category`,
 1 AS `ProductLine`,
 1 AS `ItemStatus`,
 1 AS `EffectiveStartDate`,
 1 AS `EffectiveEndDate`,
 1 AS `EntityType`,
 1 AS `Organisation`,
 1 AS `FullfillmentItemCode`,
 1 AS `Billable`,
 1 AS `Shippable`,
 1 AS `MaxQuantity`,
 1 AS `MinQuantity`,
 1 AS `DefaultQuantity`,
 1 AS `Payment`,
 1 AS `PriceType`,
 1 AS `EANBarCode`,
 1 AS `OrderingAttribute`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `all_product_details_for_sim`
--

DROP TABLE IF EXISTS `all_product_details_for_sim`;
/*!50001 DROP VIEW IF EXISTS `all_product_details_for_sim`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_product_details_for_sim` AS SELECT 
 1 AS `SIM_ProductNumber`,
 1 AS `ProductName`,
 1 AS `Type`,
 1 AS `Category`,
 1 AS `ProductLine`,
 1 AS `ItemStatus`,
 1 AS `EffectiveStartDate`,
 1 AS `EffectiveEndDate`,
 1 AS `EntityType`,
 1 AS `Organisation`,
 1 AS `FullfillmentItemCode`,
 1 AS `Billable`,
 1 AS `Shippable`,
 1 AS `MaxQuantity`,
 1 AS `MinQuantity`,
 1 AS `DefaultQuantity`,
 1 AS `Payment`,
 1 AS `PriceType`,
 1 AS `EANBarCode`,
 1 AS `OrderingAttribute`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `all_product_details_for_tvequipment`
--

DROP TABLE IF EXISTS `all_product_details_for_tvequipment`;
/*!50001 DROP VIEW IF EXISTS `all_product_details_for_tvequipment`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_product_details_for_tvequipment` AS SELECT 
 1 AS `TVEquipment_ProductNumber`,
 1 AS `ProductName`,
 1 AS `Category`,
 1 AS `ProductLine`,
 1 AS `ItemStatus`,
 1 AS `EffectiveStartDate`,
 1 AS `EffectiveEndDate`,
 1 AS `EntityType`,
 1 AS `Organisation`,
 1 AS `FullfillmentItemCode`,
 1 AS `Billable`,
 1 AS `Shippable`,
 1 AS `MaxQuantity`,
 1 AS `MinQuantity`,
 1 AS `DefaultQuantity`,
 1 AS `Payment`,
 1 AS `PriceType`,
 1 AS `EANBarCode`,
 1 AS `OrderingAttribute`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `eBilling`
--

DROP TABLE IF EXISTS `eBilling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eBilling` (
  `eBilling_ID` int(11) NOT NULL,
  `ProductName` varchar(45) NOT NULL,
  `Event` varchar(45) NOT NULL,
  `RatePlanStructure` varchar(45) NOT NULL,
  `Currency` varchar(45) NOT NULL,
  `CostPrice` varchar(45) NOT NULL,
  `RetailPrice` varchar(45) NOT NULL,
  `TaxationCategory` varchar(45) NOT NULL,
  `SIM_ProductNumber` int(11) NOT NULL,
  `Router_ProductNumber` int(11) NOT NULL,
  `TVEquipment_ProductNumber` int(11) NOT NULL,
  `Handset_ProductNumber` int(11) NOT NULL,
  `Promotions_ProductNumber` int(11) NOT NULL,
  `RootProducts_ProductNumber` int(11) NOT NULL,
  PRIMARY KEY (`eBilling_ID`,`SIM_ProductNumber`,`Router_ProductNumber`,`TVEquipment_ProductNumber`,`Handset_ProductNumber`,`Promotions_ProductNumber`,`RootProducts_ProductNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eBilling`
--

LOCK TABLES `eBilling` WRITE;
/*!40000 ALTER TABLE `eBilling` DISABLE KEYS */;
INSERT INTO `eBilling` VALUES (701,'Standard SIM Red','Product Purchase','Single Rate Plan','USD','10','12','03 - Standard Rate',52000,0,0,0,0,0),(702,'iPAD SIM Red','Product Purchase','Single Rate Plan','USD','10','12','03 - Standard Rate',52001,0,0,0,0,0),(703,'Micro SIM Red','Product Purchase','Single Rate Plan','USD','10','12','03 - Standard Rate',52002,0,0,0,0,0),(704,'Standard SIM White','Product Purchase','Single Rate Plan','USD','10','12','03 - Standard Rate',52003,0,0,0,0,0),(705,'Micro SIM White','Product Purchase','Single Rate Plan','USD','10','12','03 - Standard Rate',52004,0,0,0,0,0),(706,'iPad Micro Sim White','Product Purchase','Single Rate Plan','USD','12','13','03 - Standard Rate',52005,0,0,0,0,0),(707,'Nano SIM White','Product Purchase','Single Rate Plan','USD','12','13','03 - Standard Rate',52006,0,0,0,0,0),(708,'NFC Dual SIM','Product Purchase','Single Rate Plan','USD','12','13','03 - Standard Rate',52007,0,0,0,0,0),(709,'Micro NFC SIM','Product Purchase','Single Rate Plan','USD','12','13','03 - Standard Rate',52008,0,0,0,0,0),(710,'Nano NFC SIM','Product Purchase','Single Rate Plan','USD','12','13','03 - Standard Rate',52009,0,0,0,0,0),(711,'Dual Format SIM White','Product Purchase','Single Rate Plan','USD','12','13','03 - Standard Rate',52010,0,0,0,0,0),(712,'Nokia N900 black','Product Purchase','Single Rate Plan','USD','0','0','03 - Standard Rate',0,0,0,68400,0,0),(713,'Nokia C5 black','Product Purchase','Single Rate Plan','USD','0','0','03 - Standard Rate',0,0,0,68401,0,0),(714,'Samsung Galaxy J5 black','Product Purchase','Single Rate Plan','USD','99999','999','03 - Standard Rate',0,0,0,68402,0,0),(715,'Samsung Galaxy S8 midnight black','Product Purchase','Single Rate Plan','USD','400','670','03 - Standard Rate',0,0,0,68403,0,0),(716,'Apple iPhone 8 64GB silver','Product Purchase','Single Rate Plan','USD','556.5','810','03 - Standard Rate',0,0,0,68404,0,0),(717,'Apple iPhone 8 64GB space grey','Product Purchase','Single Rate Plan','USD','556.5','810','03 - Standard Rate',0,0,0,68405,0,0),(718,'Apple iPhone 8 64GB gold','Product Purchase','Single Rate Plan','USD','556.5','810','03 - Standard Rate',0,0,0,68406,0,0),(719,'Apple iPhone 8 256GB silver','Product Purchase','Single Rate Plan','USD','665','849','03 - Standard Rate',0,0,0,68407,0,0),(720,'Apple iPhone 8 256GB space grey','Product Purchase','Single Rate Plan','USD','665','849','03 - Standard Rate',0,0,0,68408,0,0),(721,'Apple iPhone 8 256GB gold','Product Purchase','Single Rate Plan','USD','665','849','03 - Standard Rate',0,0,0,68409,0,0),(722,'Apple iPhone 8 Plus 64GB silver','Product Purchase','Single Rate Plan','USD','635.54','649','03 - Standard Rate',0,0,0,68410,0,0),(723,'Apple iPhone 8 Plus 64GB space grey','Product Purchase','Single Rate Plan','USD','635.54','649','03 - Standard Rate',0,0,0,68411,0,0),(724,'Apple iPhone 8 Plus 64GB gold','Product Purchase','Single Rate Plan','USD','635.54','649','03 - Standard Rate',0,0,0,68412,0,0),(725,'Apple iPhone 8 Plus 256GB silver','Product Purchase','Single Rate Plan','USD','745','799','03 - Standard Rate',0,0,0,68413,0,0),(726,'Apple iPhone 8 Plus 256GB space grey','Product Purchase','Single Rate Plan','USD','745','799','03 - Standard Rate',0,0,0,68414,0,0),(727,'Apple iPhone 8 Plus 256GB gold','Product Purchase','Single Rate Plan','USD','745','799','03 - Standard Rate',0,0,0,68415,0,0),(728,'Apple iPhone 8 64GB red','Product Purchase','Single Rate Plan','USD','556.5','810','03 - Standard Rate',0,0,0,68416,0,0),(729,'Apple iPhone 8 Plus 64GB red','Product Purchase','Single Rate Plan','USD','635.54','649','03 - Standard Rate',0,0,0,68417,0,0),(730,'Google Pixel 3 XL 128GB black','Product Purchase','Single Rate Plan','USD','99999','4999','03 - Standard Rate',0,0,0,68418,0,0),(731,'Google Pixel 3 XL 128GB white','Product Purchase','Single Rate Plan','USD','99999','4999','03 - Standard Rate',0,0,0,68419,0,0),(732,'Google Pixel 3 XL 128GB pink','Product Purchase','Single Rate Plan','USD','99999','4999','03 - Standard Rate',0,0,0,68420,0,0),(733,'One Plus 6T Colour 1','Product Purchase','Single Rate Plan','USD','99999','4999','03 - Standard Rate',0,0,0,68421,0,0),(734,'One Plus 6T Colour 1 PAYG','Product Purchase','Single Rate Plan','USD','99999','4999','03 - Standard Rate',0,0,0,68422,0,0),(735,'One Plus 6T  Colour 2','Product Purchase','Single Rate Plan','USD','99999','4999','03 - Standard Rate',0,0,0,68423,0,0),(736,'One Plus 6T Colour 2 PAYG','Product Purchase','Single Rate Plan','USD','99999','4999','03 - Standard Rate',0,0,0,68424,0,0),(737,'Vodafone Set Top Box Activation','Product Purchase','Single Rate Plan','USD','78.84','99.99996','03 - Standard Rate',0,0,86600,0,0,0),(738,'Bailment Set Top Box','Product purchase free','Single Rate Plan','USD','0','0','03 - Standard Rate',0,0,86601,0,0,0),(739,'Vodafone Broadband router white','Product purchase free','Single Rate Plan','USD','55.5','0','03 - Standard Rate',0,200690,0,0,0,0),(740,'Replacement router white','Product purchase free','Single Rate Plan','USD','0','0','03 - Standard Rate',0,200691,0,0,0,0),(741,'Vodafone Broadband router','Product purchase free','Single Rate Plan','USD','40.67','0','03 - Standard Rate',0,200692,0,0,0,0),(742,'Replacement router','Product purchase free','Single Rate Plan','USD','0','0','03 - Standard Rate',0,200693,0,0,0,0),(743,'Router','Product purchase free','Single Rate Plan','USD','0','0','03 - Standard Rate',0,200694,0,0,0,0),(744,'Vodafone VOX 3.0 Uk','Product purchase','Single Rate Plan','USD','58.1','99','03 - Standard Rate',0,200695,0,0,0,0),(745,'Vodafone Broadband Router (Model C)','Product purchase','Single Rate Plan','USD','0','309.99996','03 - Standard Rate',0,200696,0,0,0,0),(746,'Vodafone Broadband Router (Model D)','Product purchase','Single Rate Plan','USD','0','834','03 - Standard Rate',0,200697,0,0,0,0),(747,'SIM package','Monthly cycle','Single Rate Plan','USD','','','03 - Standard Rate',0,0,0,0,102211,0),(748,'Phone and SIM package','Monthly cycle','Single Rate Plan','USD','','','03 - Standard Rate',0,0,0,0,102212,0),(749,'Mobile broadband SIM and device package','Monthly cycle','Single Rate Plan','USD','','','03 - Standard Rate',0,0,0,0,102213,0),(750,'Dongle Package','Monthly cycle','Single Rate Plan','USD','','','03 - Standard Rate',0,0,0,0,102214,0),(751,'iPad SIMO Package','Monthly cycle','Single Rate Plan','USD','','','03 - Standard Rate',0,0,0,0,102215,0),(752,'Mobile Wi-Fi Package','Monthly cycle','Single Rate Plan','USD','','','03 - Standard Rate',0,0,0,0,102216,0),(753,'24mth Laptop 3072MB','Monthly cycle','Single Rate Plan','USD','','','03 - Standard Rate',0,0,0,0,102217,0),(754,'24mth Laptop 5120MB','Monthly cycle','Single Rate Plan','USD','','','03 - Standard Rate',0,0,0,0,102218,0),(755,'1month Dongle 500MB','Monthly cycle','Single Rate Plan','USD','','','03 - Standard Rate',0,0,0,0,102219,0),(756,'1mth Tablet SIMO 1GB','Monthly cycle','Single Rate Plan','USD','','','03 - Standard Rate',0,0,0,0,102220,0),(757,'Insurance band 1','Product Purchase','Single Rate Plan','USD','78.84','99.99996','03 - Standard Rate',0,0,0,0,0,104951),(758,'Insurance band 2','Product purchase free','Single Rate Plan','USD','0','0','04 - Out of Scope',0,0,0,0,0,104952),(759,'Mobile theft and damage cover 1','Product purchase free','Single Rate Plan','USD','55.5','0','04 - Out of Scope',0,0,0,0,0,104953),(760,'Mobile theft and damage cover 2','Product purchase free','Single Rate Plan','USD','0','0','04 - Out of Scope',0,0,0,0,0,104954),(761,'Port Out','Product purchase free','Single Rate Plan','USD','40.67','0','04 - Out of Scope',0,0,0,0,0,104955),(762,'Apple Protection Plan','Product purchase free','Single Rate Plan','USD','0','0','03 - Standard Rate',0,0,0,0,0,104956),(763,'Collect in store','Product purchase free','Single Rate Plan','USD','0','0','04 - Out of Scope',0,0,0,0,0,104957),(764,'Deliver to store','Product Purchase','Single Rate Plan','USD','58.1','99','03 - Standard Rate',0,0,0,0,0,104958),(765,'Billing Activation','Product Purchase','Single Rate Plan','USD','0','309.99996','03 - Standard Rate',0,0,0,0,0,104959),(766,'Switching Credit','Product Purchase','Single Rate Plan','USD','0','834','03 - Standard Rate',0,0,0,0,0,104960),(767,'TV Set Up Fee','Product Purchase','Single Rate Plan','USD','78.84','99.99996','03 - Standard Rate',0,0,0,0,0,104961),(768,'Repair (Phone) - 32GB','Product purchase free','Single Rate Plan','USD','0','0','03 - Standard Rate',0,0,0,0,0,104962),(769,'Repair (Phone) - 64GB','Product purchase free','Single Rate Plan','USD','55.5','0','03 - Standard Rate',0,0,0,0,0,104963),(770,'Repair (Phone) - 128GB','Product purchase free','Single Rate Plan','USD','0','0','03 - Standard Rate',0,0,0,0,0,104964),(771,'Premier Theft and Lost Insurance','Product purchase free','Single Rate Plan','USD','40.67','0','03 - Standard Rate',0,0,0,0,0,104965),(772,'Lync Online','Product purchase free','Single Rate Plan','USD','0','0','04 - Out of Scope',0,0,0,0,0,104966),(773,'Microsoft Office','Product purchase free','Single Rate Plan','USD','0','0','03 - Standard Rate',0,0,0,0,0,104967),(774,'Consultancy fee','Product Purchase','Single Rate Plan','USD','58.1','99','03 - Standard Rate',0,0,0,0,0,104968),(775,'Business Damage Insurance','Product Purchase','Single Rate Plan','USD','0','309.99996','03 - Standard Rate',0,0,0,0,0,104969),(776,'Theft + Loss insurance','Product Purchase','Single Rate Plan','USD','0','834','04 - Out of Scope',0,0,0,0,0,104970),(777,'Damaged or Locked Return Charge 32GB','Product purchase free','Single Rate Plan','USD','0','0','04 - Out of Scope',0,0,0,0,0,104971),(778,'Damaged or Locked Return Charge 64GB','Product purchase free','Single Rate Plan','USD','55.5','0','04 - Out of Scope',0,0,0,0,0,104972),(779,'Damaged or Locked Return Charge 128GB','Product purchase free','Single Rate Plan','USD','0','0','04 - Out of Scope',0,0,0,0,0,104973),(780,'Business Support','Product purchase free','Single Rate Plan','USD','40.67','0','04 - Out of Scope',0,0,0,0,0,104974),(781,'Device Support','Product purchase free','Single Rate Plan','USD','0','0','04 - Out of Scope',0,0,0,0,0,104975),(782,'Out Of Warranty Repair Charge','Product purchase free','Single Rate Plan','USD','0','0','04 - Out of Scope',0,0,0,0,0,104976),(783,'Damaged Return Charge - In Store','Product Purchase','Single Rate Plan','USD','58.1','99','03 - Standard Rate',0,0,0,0,0,104977),(784,'Damaged Return Charge - Returns Centre','Product Purchase','Single Rate Plan','USD','0','309.99996','03 - Standard Rate',0,0,0,0,0,104978),(785,'BX NOKIA CHARGER MICRO USB','Product Purchase','Single Rate Plan','USD','0','834','03 - Standard Rate',0,0,0,0,0,104979),(786,'BX SAM BATTERY EB504465VU','Product purchase free','Single Rate Plan','USD','8','0','03 - Standard Rate',0,0,0,0,0,104980),(787,'BX APPLE CHARGER USB PLUG','Product purchase free','Single Rate Plan','USD','12','0','03 - Standard Rate',0,0,0,0,0,104981),(788,'Beats Solo HD Headphones','Product purchase free','Single Rate Plan','USD','8','0','03 - Standard Rate',0,0,0,0,0,104982),(789,'Apple i5 Screen Protector','Product Purchase','Single Rate Plan','USD','93','115','03 - Standard Rate',0,0,0,0,0,104983),(790,'JBL Slate Over Ear Headphones','Product Purchase','Single Rate Plan','USD','1.58','12','03 - Standard Rate',0,0,0,0,0,104984),(791,'Jabra Active Heaphones','Product Purchase','Single Rate Plan','USD','50.81','45','03 - Standard Rate',0,0,0,0,0,104985),(792,'Apple Pencil','Product Purchase','Single Rate Plan','USD','5','15','03 - Standard Rate',0,0,0,0,0,104986),(793,'JBL Headphones T450 black','Product Purchase','Single Rate Plan','USD','59.25','79','03 - Standard Rate',0,0,0,0,0,104987),(794,'JBL Headphones T450 white','Product Purchase','Single Rate Plan','USD','9.98','25','03 - Standard Rate',0,0,0,0,0,104988),(795,'Apple Airpods','Product Purchase','Single Rate Plan','USD','9.98','25','03 - Standard Rate',0,0,0,0,0,104989),(796,'Sony EX110AP headphones black','Product Purchase','Single Rate Plan','USD','100.14','159','03 - Standard Rate',0,0,0,0,0,104990),(797,'Sony ZX220BTB Wireless headphones','Product Purchase','Single Rate Plan','USD','9.19','20','03 - Standard Rate',0,0,0,0,0,104991),(798,'Apple EarPods Lightning Connect','Product Purchase','Single Rate Plan','USD','32.12','60','03 - Standard Rate',0,0,0,0,0,104992),(799,'Google Wifi','Product Purchase','Single Rate Plan','USD','18.27','29','03 - Standard Rate',0,0,0,0,0,104993),(800,'Google Chromecast','Product Purchase','Single Rate Plan','USD','153.42','229','03 - Standard Rate',0,0,0,0,0,104994),(801,'Google Home','Product Purchase','Single Rate Plan','USD','51.24','69','03 - Standard Rate',0,0,0,0,0,104995),(802,'Apple iPad Pro 10.5 Leather Smart Cover black','Product Purchase','Single Rate Plan','USD','86.42','99.99','03 - Standard Rate',0,0,0,0,0,104996),(803,'Google Home Mini','Product Purchase','Single Rate Plan','USD','43.12','69','03 - Standard Rate',0,0,0,0,0,104997),(804,'Samsung Headphones black','Product Purchase','Single Rate Plan','USD','35.23','39','03 - Standard Rate',0,0,0,0,0,104998);
/*!40000 ALTER TABLE `eBilling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `all_product_details_for_handset`
--

/*!50001 DROP VIEW IF EXISTS `all_product_details_for_handset`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_product_details_for_handset` AS select distinct `p`.`Handset_ProductNumber` AS `Handset_ProductNumber`,`p`.`ProductName` AS `ProductName`,`h`.`Manufacturer` AS `Manufacturer`,`h`.`Warranty` AS `Warranty`,`h`.`Memory` AS `Memory`,`h`.`Color` AS `Color`,`c`.`Category` AS `Category`,`l`.`ProductLine` AS `ProductLine`,`p`.`ItemStatus` AS `ItemStatus`,`p`.`EffectiveStartDate` AS `EffectiveStartDate`,`p`.`EffectiveEndDate` AS `EffectiveEndDate`,`p`.`EntityType` AS `EntityType`,`p`.`Organisation` AS `Organisation`,`p`.`FullfillmentItemCode` AS `FullfillmentItemCode`,`p`.`Billable` AS `Billable`,`p`.`Shippable` AS `Shippable`,`p`.`MaxQuantity` AS `MaxQuantity`,`p`.`MinQuantity` AS `MinQuantity`,`p`.`DefaultQuantity` AS `DefaultQuantity`,`p`.`Payment` AS `Payment`,`p`.`PriceType` AS `PriceType`,`p`.`EANBarCode` AS `EANBarCode`,`p`.`OrderingAttribute` AS `OrderingAttribute` from (((`productdetails` `p` join `category` `c` on((`c`.`Handset_ProductNumber` = `p`.`Handset_ProductNumber`))) join `productline` `l` on((`l`.`Handset_ProductNumber` = `p`.`Handset_ProductNumber`))) join `handset` `h` on((`h`.`Handset_ProductNumber` = `p`.`Handset_ProductNumber`))) where (`p`.`Handset_ProductNumber` <> 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_product_details_for_promotion`
--

/*!50001 DROP VIEW IF EXISTS `all_product_details_for_promotion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_product_details_for_promotion` AS select distinct `p`.`Promotions_ProductNumber` AS `Promotions_ProductNumber`,`p`.`ProductName` AS `ProductName`,`t`.`PrimaryProduct` AS `PrimaryProduct`,`t`.`Plan` AS `Plan`,`t`.`RecurringCharge` AS `RecurringCharge`,`t`.`Penalty` AS `Penalty`,`t`.`ChargeCreditType` AS `ChargeCreditType`,`c`.`Category` AS `Category`,`l`.`ProductLine` AS `ProductLine`,`p`.`ItemStatus` AS `ItemStatus`,`p`.`EffectiveStartDate` AS `EffectiveStartDate`,`p`.`EffectiveEndDate` AS `EffectiveEndDate`,`p`.`EntityType` AS `EntityType`,`p`.`Organisation` AS `Organisation`,`p`.`FullfillmentItemCode` AS `FullfillmentItemCode`,`p`.`Billable` AS `Billable`,`p`.`Shippable` AS `Shippable`,`p`.`MaxQuantity` AS `MaxQuantity`,`p`.`MinQuantity` AS `MinQuantity`,`p`.`DefaultQuantity` AS `DefaultQuantity`,`p`.`Payment` AS `Payment`,`p`.`PriceType` AS `PriceType`,`p`.`EANBarCode` AS `EANBarCode`,`p`.`OrderingAttribute` AS `OrderingAttribute` from (((`productdetails` `p` join `category` `c` on((`c`.`Promotions_ProductNumber` = `p`.`Promotions_ProductNumber`))) join `productline` `l` on((`l`.`Promotions_ProductNumber` = `p`.`Promotions_ProductNumber`))) join `promotions` `t` on((`t`.`Promotions_ProductNumber` = `p`.`Promotions_ProductNumber`))) where (`p`.`Promotions_ProductNumber` <> 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_product_details_for_rootproducts`
--

/*!50001 DROP VIEW IF EXISTS `all_product_details_for_rootproducts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_product_details_for_rootproducts` AS select distinct `p`.`RootProducts_ProductNumber` AS `RootProducts_ProductNumber`,`p`.`ProductName` AS `ProductName`,`c`.`Category` AS `Category`,`l`.`ProductLine` AS `ProductLine`,`p`.`ItemStatus` AS `ItemStatus`,`p`.`EffectiveStartDate` AS `EffectiveStartDate`,`p`.`EffectiveEndDate` AS `EffectiveEndDate`,`p`.`EntityType` AS `EntityType`,`p`.`Organisation` AS `Organisation`,`p`.`FullfillmentItemCode` AS `FullfillmentItemCode`,`p`.`Billable` AS `Billable`,`p`.`Shippable` AS `Shippable`,`p`.`MaxQuantity` AS `MaxQuantity`,`p`.`MinQuantity` AS `MinQuantity`,`p`.`DefaultQuantity` AS `DefaultQuantity`,`p`.`Payment` AS `Payment`,`p`.`PriceType` AS `PriceType`,`p`.`EANBarCode` AS `EANBarCode`,`p`.`OrderingAttribute` AS `OrderingAttribute` from ((`productdetails` `p` join `category` `c` on((`c`.`RootProducts_ProductNumber` = `p`.`RootProducts_ProductNumber`))) join `productline` `l` on((`l`.`RootProducts_ProductNumber` = `p`.`RootProducts_ProductNumber`))) where (`p`.`RootProducts_ProductNumber` <> 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_product_details_for_router`
--

/*!50001 DROP VIEW IF EXISTS `all_product_details_for_router`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_product_details_for_router` AS select distinct `p`.`Router_ProductNumber` AS `Router_ProductNumber`,`p`.`ProductName` AS `ProductName`,`c`.`Category` AS `Category`,`l`.`ProductLine` AS `ProductLine`,`p`.`ItemStatus` AS `ItemStatus`,`p`.`EffectiveStartDate` AS `EffectiveStartDate`,`p`.`EffectiveEndDate` AS `EffectiveEndDate`,`p`.`EntityType` AS `EntityType`,`p`.`Organisation` AS `Organisation`,`p`.`FullfillmentItemCode` AS `FullfillmentItemCode`,`p`.`Billable` AS `Billable`,`p`.`Shippable` AS `Shippable`,`p`.`MaxQuantity` AS `MaxQuantity`,`p`.`MinQuantity` AS `MinQuantity`,`p`.`DefaultQuantity` AS `DefaultQuantity`,`p`.`Payment` AS `Payment`,`p`.`PriceType` AS `PriceType`,`p`.`EANBarCode` AS `EANBarCode`,`p`.`OrderingAttribute` AS `OrderingAttribute` from (((`productdetails` `p` join `category` `c` on((`c`.`Router_ProductNumber` = `p`.`Router_ProductNumber`))) join `productline` `l` on((`l`.`Router_ProductNumber` = `p`.`Router_ProductNumber`))) join `router` `h` on((`h`.`Router_ProductNumber` = `p`.`Router_ProductNumber`))) where (`p`.`Router_ProductNumber` <> 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_product_details_for_sim`
--

/*!50001 DROP VIEW IF EXISTS `all_product_details_for_sim`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_product_details_for_sim` AS select distinct `p`.`SIM_ProductNumber` AS `SIM_ProductNumber`,`p`.`ProductName` AS `ProductName`,`s`.`Type` AS `Type`,`c`.`Category` AS `Category`,`l`.`ProductLine` AS `ProductLine`,`p`.`ItemStatus` AS `ItemStatus`,`p`.`EffectiveStartDate` AS `EffectiveStartDate`,`p`.`EffectiveEndDate` AS `EffectiveEndDate`,`p`.`EntityType` AS `EntityType`,`p`.`Organisation` AS `Organisation`,`p`.`FullfillmentItemCode` AS `FullfillmentItemCode`,`p`.`Billable` AS `Billable`,`p`.`Shippable` AS `Shippable`,`p`.`MaxQuantity` AS `MaxQuantity`,`p`.`MinQuantity` AS `MinQuantity`,`p`.`DefaultQuantity` AS `DefaultQuantity`,`p`.`Payment` AS `Payment`,`p`.`PriceType` AS `PriceType`,`p`.`EANBarCode` AS `EANBarCode`,`p`.`OrderingAttribute` AS `OrderingAttribute` from (((`productdetails` `p` join `category` `c` on((`c`.`SIM_ProductNumber` = `p`.`SIM_ProductNumber`))) join `productline` `l` on((`l`.`SIM_ProductNumber` = `p`.`SIM_ProductNumber`))) join `sim` `s` on((`s`.`SIM_ProductNumber` = `p`.`SIM_ProductNumber`))) where (`p`.`SIM_ProductNumber` <> 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_product_details_for_tvequipment`
--

/*!50001 DROP VIEW IF EXISTS `all_product_details_for_tvequipment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_product_details_for_tvequipment` AS select distinct `p`.`TVEquipment_ProductNumber` AS `TVEquipment_ProductNumber`,`p`.`ProductName` AS `ProductName`,`c`.`Category` AS `Category`,`l`.`ProductLine` AS `ProductLine`,`p`.`ItemStatus` AS `ItemStatus`,`p`.`EffectiveStartDate` AS `EffectiveStartDate`,`p`.`EffectiveEndDate` AS `EffectiveEndDate`,`p`.`EntityType` AS `EntityType`,`p`.`Organisation` AS `Organisation`,`p`.`FullfillmentItemCode` AS `FullfillmentItemCode`,`p`.`Billable` AS `Billable`,`p`.`Shippable` AS `Shippable`,`p`.`MaxQuantity` AS `MaxQuantity`,`p`.`MinQuantity` AS `MinQuantity`,`p`.`DefaultQuantity` AS `DefaultQuantity`,`p`.`Payment` AS `Payment`,`p`.`PriceType` AS `PriceType`,`p`.`EANBarCode` AS `EANBarCode`,`p`.`OrderingAttribute` AS `OrderingAttribute` from ((`productdetails` `p` join `category` `c` on((`c`.`TVEquipment_ProductNumber` = `p`.`TVEquipment_ProductNumber`))) join `productline` `l` on((`l`.`TVEquipment_ProductNumber` = `p`.`TVEquipment_ProductNumber`))) where (`p`.`TVEquipment_ProductNumber` <> 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-13  2:47:28CustomerAccountAndProductDetails
