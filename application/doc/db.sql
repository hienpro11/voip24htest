-- MySQL dump 10.14  Distrib 5.5.56-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: asterisk_center
-- ------------------------------------------------------
-- Server version	5.5.56-MariaDB

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
-- Table structure for table `ask_authorities`
--

DROP TABLE IF EXISTS `ask_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_authorities` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name_auth` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_authorities`
--

LOCK TABLES `ask_authorities` WRITE;
/*!40000 ALTER TABLE `ask_authorities` DISABLE KEYS */;
INSERT INTO `ask_authorities` VALUES (1,'Administrators'),(2,'Admin'),(3,'Mod'),(4,'Customer');
/*!40000 ALTER TABLE `ask_authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_databases`
--

DROP TABLE IF EXISTS `ask_databases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_databases` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `database_name` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbdriver` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbprefix` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pconnect` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `db_debug` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cache_on` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cachedir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `char_set` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbcollat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `swap_pre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autoinit` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stricton` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `port` varchar(12) COLLATE utf8_unicode_ci DEFAULT '3306',
  `api_username` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_secret` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_port` varchar(233) COLLATE utf8_unicode_ci DEFAULT '5038',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_databases`
--

LOCK TABLES `ask_databases` WRITE;
/*!40000 ALTER TABLE `ask_databases` DISABLE KEYS */;
INSERT INTO `ask_databases` VALUES (12,'203.162.56.233','203.162.56.233','report','Report@2018','asteriskcdrdb','mysql','','0','0','0','','utf8','utf8_general_ci','','0','0',1,'3306','Report','Report@2018','5038'),(14,'203.162.56.226','203.162.56.226','report','Report@2018','asteriskcdrdb','mysql','','0','0','0','','utf8','utf8_general_ci','','0','0',1,'3306','Report','Report@2018','5038');
/*!40000 ALTER TABLE `ask_databases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_dest_prefix`
--

DROP TABLE IF EXISTS `ask_dest_prefix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_dest_prefix` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `provider` int(255) DEFAULT '2',
  `length_number` int(255) DEFAULT '3',
  `note` text COLLATE utf8_unicode_ci,
  `types` int(255) DEFAULT '1',
  `start_prefix` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_prefix` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remove_perfix` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `provider` (`provider`),
  KEY `types` (`types`),
  KEY `number` (`length_number`),
  CONSTRAINT `ask_dest_prefix_ibfk_1` FOREIGN KEY (`length_number`) REFERENCES `ask_number` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ask_dest_prefix_ibfk_2` FOREIGN KEY (`provider`) REFERENCES `ask_provider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ask_dest_prefix_ibfk_3` FOREIGN KEY (`types`) REFERENCES `ask_provider_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_dest_prefix`
--

LOCK TABLES `ask_dest_prefix` WRITE;
/*!40000 ALTER TABLE `ask_dest_prefix` DISABLE KEYS */;
INSERT INTO `ask_dest_prefix` VALUES (13,5,8,'089',2,'089','090',1),(15,5,8,'093',2,'093','093',1),(16,5,9,'0120-0122',2,'0120','0122',1),(17,5,9,'0126',2,'0126','0126',1),(18,5,9,'0128',2,'0128','0128',1),(19,1,8,'086',2,'086','086',1),(20,1,8,'096-098',2,'096','098',1),(21,1,9,'0162-0169',2,'0162','0169',1),(22,8,8,'092',2,'092','092',1),(23,8,9,'0186',2,'0186','0186',1),(24,8,9,'0188',2,'0188','0188',1),(25,7,8,'099',2,'099','099',1),(26,7,8,'0199',2,'0199','0199',1),(27,4,8,'088',2,'088','088',1),(28,4,8,'091',2,'091','091',1),(29,4,8,'094',2,'094','094',1),(30,4,9,'0123-0125',2,'0123','0125',1),(31,4,9,'0127',2,'0127','0127',1),(32,4,9,'0129',2,'0129','0129',1),(33,11,6,'1800xxxx',1,'1800','1800',NULL),(34,17,6,'1900xxxx',1,'1900','1900',NULL),(35,6,9,'024730',1,'024730','024730',1),(37,17,8,'1900xxxxxx',1,'1900','1900',NULL),(38,11,8,'1800xxxxxx',1,'1800','1800',NULL),(39,12,9,'FPTHCM',1,'028730','028730',1),(40,13,9,'FPTDN',1,'0236730','0236730',1),(41,14,9,NULL,1,'028','028',1);
/*!40000 ALTER TABLE `ask_dest_prefix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_did`
--

DROP TABLE IF EXISTS `ask_did`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_did` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `datacenter` int(255) DEFAULT NULL,
  `staff` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ext_datacenter` (`datacenter`),
  KEY `staff_did` (`staff`),
  CONSTRAINT `ask_did_ibfk_1` FOREIGN KEY (`datacenter`) REFERENCES `ask_databases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `staff_did` FOREIGN KEY (`staff`) REFERENCES `ask_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_did`
--

LOCK TABLES `ask_did` WRITE;
/*!40000 ALTER TABLE `ask_did` DISABLE KEYS */;
INSERT INTO `ask_did` VALUES (65,'02873036789',14,46),(66,'02873077077',14,46),(67,'0931339353',14,46),(68,'19002000',14,46),(69,'842871088088',14,46),(76,'02873036789',14,48),(77,'02873077077',14,48),(78,'0931339353',14,48),(79,'19002000',14,48),(80,'842871088088',14,48),(81,'02873036789',14,49),(82,'02873077077',14,49),(83,'0931339353',14,49),(84,'19002000',14,49),(85,'842871088088',14,49),(86,'02873036789',14,50),(87,'02873077077',14,50),(88,'0931339353',14,50),(89,'19002000',14,50),(90,'842871088088',14,50),(96,'02873036789',14,51),(97,'02873077077',14,51),(98,'0931339353',14,51),(99,'19002000',14,51),(100,'842871088088',14,51),(101,'02873077077',14,52),(102,'19002000',14,52);
/*!40000 ALTER TABLE `ask_did` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_direction`
--

DROP TABLE IF EXISTS `ask_direction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_direction` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_direction`
--

LOCK TABLES `ask_direction` WRITE;
/*!40000 ALTER TABLE `ask_direction` DISABLE KEYS */;
INSERT INTO `ask_direction` VALUES (1,'outbound'),(2,'inbound'),(3,'local');
/*!40000 ALTER TABLE `ask_direction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_extends`
--

DROP TABLE IF EXISTS `ask_extends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_extends` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `datacenter` int(255) DEFAULT NULL,
  `staff` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_ext` (`staff`),
  KEY `ext_datacenter` (`datacenter`),
  CONSTRAINT `ext_datacenter` FOREIGN KEY (`datacenter`) REFERENCES `ask_databases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `staff_ext` FOREIGN KEY (`staff`) REFERENCES `ask_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=849 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_extends`
--

LOCK TABLES `ask_extends` WRITE;
/*!40000 ALTER TABLE `ask_extends` DISABLE KEYS */;
INSERT INTO `ask_extends` VALUES (659,'001',14,46),(660,'002',14,46),(661,'003',14,46),(662,'004',14,46),(663,'005',14,46),(664,'006',14,46),(665,'007',14,46),(666,'008',14,46),(667,'009',14,46),(668,'010',14,46),(669,'011',14,46),(670,'012',14,46),(671,'013',14,46),(672,'014',14,46),(673,'015',14,46),(674,'016',14,46),(675,'017',14,46),(676,'018',14,46),(677,'019',14,46),(678,'020',14,46),(679,'021',14,46),(680,'022',14,46),(681,'023',14,46),(682,'024',14,46),(683,'025',14,46),(684,'026',14,46),(685,'027',14,46),(686,'028',14,46),(687,'029',14,46),(688,'99101',14,46),(689,'999',14,46),(721,'001',14,48),(722,'002',14,48),(723,'003',14,48),(724,'004',14,48),(725,'005',14,48),(726,'006',14,48),(727,'007',14,48),(728,'008',14,48),(729,'009',14,48),(730,'010',14,48),(731,'011',14,48),(732,'012',14,48),(733,'013',14,48),(734,'014',14,48),(735,'015',14,48),(736,'016',14,48),(737,'017',14,48),(738,'018',14,48),(739,'019',14,48),(740,'020',14,48),(741,'021',14,48),(742,'022',14,48),(743,'023',14,48),(744,'024',14,48),(745,'025',14,48),(746,'026',14,48),(747,'027',14,48),(748,'028',14,48),(749,'029',14,48),(750,'99101',14,48),(751,'999',14,48),(752,'001',14,49),(753,'002',14,49),(754,'003',14,49),(755,'004',14,49),(756,'005',14,49),(757,'006',14,49),(758,'007',14,49),(759,'008',14,49),(760,'009',14,49),(761,'010',14,49),(762,'011',14,49),(763,'012',14,49),(764,'013',14,49),(765,'014',14,49),(766,'015',14,49),(767,'016',14,49),(768,'017',14,49),(769,'018',14,49),(770,'019',14,49),(771,'020',14,49),(772,'021',14,49),(773,'022',14,49),(774,'023',14,49),(775,'024',14,49),(776,'025',14,49),(777,'026',14,49),(778,'027',14,49),(779,'028',14,49),(780,'029',14,49),(781,'99101',14,49),(782,'999',14,49),(783,'001',14,50),(784,'002',14,50),(785,'003',14,50),(786,'004',14,50),(787,'005',14,50),(788,'006',14,50),(789,'007',14,50),(790,'008',14,50),(791,'009',14,50),(792,'010',14,50),(793,'011',14,50),(794,'012',14,50),(795,'013',14,50),(796,'014',14,50),(797,'015',14,50),(798,'016',14,50),(799,'017',14,50),(800,'018',14,50),(801,'019',14,50),(802,'020',14,50),(803,'021',14,50),(804,'022',14,50),(805,'023',14,50),(806,'024',14,50),(807,'025',14,50),(808,'026',14,50),(809,'027',14,50),(810,'028',14,50),(811,'029',14,50),(812,'99101',14,50),(813,'999',14,50),(814,'001',14,51),(815,'002',14,51),(816,'003',14,51),(817,'004',14,51),(818,'005',14,51),(819,'006',14,51),(820,'007',14,51),(821,'008',14,51),(822,'009',14,51),(823,'010',14,51),(824,'011',14,51),(825,'012',14,51),(826,'013',14,51),(827,'014',14,51),(828,'015',14,51),(829,'016',14,51),(830,'017',14,51),(831,'018',14,51),(832,'019',14,51),(833,'020',14,51),(834,'021',14,51),(835,'022',14,51),(836,'023',14,51),(837,'024',14,51),(838,'025',14,51),(839,'026',14,51),(840,'027',14,51),(841,'028',14,51),(842,'029',14,51),(843,'99101',14,51),(844,'999',14,51),(845,'001',14,52),(846,'002',14,52),(847,'003',14,52),(848,'004',14,52);
/*!40000 ALTER TABLE `ask_extends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_general`
--

DROP TABLE IF EXISTS `ask_general`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_general` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `brands` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brands_short` varchar(1024) NOT NULL,
  `brands_logo` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brands_hotline` varchar(255) DEFAULT NULL,
  `brands_phone` varchar(255) DEFAULT NULL,
  `brands_addr` varchar(255) DEFAULT NULL,
  `brands_email` varchar(255) DEFAULT NULL,
  `brands_email_smtp_host` varchar(255) DEFAULT NULL,
  `brands_email_smtp_user` varchar(255) DEFAULT NULL,
  `brands_email_smtp_pass` varchar(255) DEFAULT NULL,
  `brands_email_smtp_port` varchar(255) DEFAULT NULL,
  `brands_email_smtp_crypto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_general`
--

LOCK TABLES `ask_general` WRITE;
/*!40000 ALTER TABLE `ask_general` DISABLE KEYS */;
INSERT INTO `ask_general` VALUES (1,'Công ty TNHH Giải Pháp Kết Nối','VOIP24H','6qr0thqi4okc84sw0s.png','19002000','02873036789','14 Nguyễn Đình Chiểu, P. Đa Kao, Q.1, TP.HCM','support@voip24h.vn','smtp.gmail.com','support@voip24h.vn','voip24h@support','465','SSL');
/*!40000 ALTER TABLE `ask_general` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_number`
--

DROP TABLE IF EXISTS `ask_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_number` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` int(255) DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_number`
--

LOCK TABLES `ask_number` WRITE;
/*!40000 ALTER TABLE `ask_number` DISABLE KEYS */;
INSERT INTO `ask_number` VALUES (1,'3',3),(2,'4',3),(3,'5',3),(4,'6',3),(5,'7',3),(6,'8',3),(7,'9',3),(8,'10',3),(9,'11',3),(10,'12',3),(11,'13',3),(12,'14',3),(13,'15',3),(17,'0',0);
/*!40000 ALTER TABLE `ask_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_provider`
--

DROP TABLE IF EXISTS `ask_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_provider` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `provider` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `provider_type` int(255) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type_provider` (`provider_type`),
  CONSTRAINT `ask_provider_ibfk_1` FOREIGN KEY (`provider_type`) REFERENCES `ask_provider_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_provider`
--

LOCK TABLES `ask_provider` WRITE;
/*!40000 ALTER TABLE `ask_provider` DISABLE KEYS */;
INSERT INTO `ask_provider` VALUES (1,'VIETTEL',2,'VIETTEL Mobile'),(3,'VNPT',1,'VNPT'),(4,'VINA',2,NULL),(5,'MOBI',2,NULL),(6,'FPTHN',1,'FPTHN'),(7,'Gmobile',2,NULL),(8,'Vietnamobile',2,NULL),(9,'CMC',1,'CMC'),(11,'1800',1,NULL),(12,'FPTHCM',1,'FPTHCM'),(13,'FPTDN',1,'FPTDN'),(14,'CDHCM',1,'CDHCM'),(15,'CDHN',1,'CDHN'),(16,'CDDN',1,'CDDN'),(17,'1900',1,'1900'),(18,'CMCHCM',1,'CMCHCM'),(19,'CMCHN',1,'CMCHN'),(20,'CMCDN',1,'CMCDN');
/*!40000 ALTER TABLE `ask_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_provider_type`
--

DROP TABLE IF EXISTS `ask_provider_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_provider_type` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_provider_type`
--

LOCK TABLES `ask_provider_type` WRITE;
/*!40000 ALTER TABLE `ask_provider_type` DISABLE KEYS */;
INSERT INTO `ask_provider_type` VALUES (1,'Cố Định'),(2,'Di động');
/*!40000 ALTER TABLE `ask_provider_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_rate`
--

DROP TABLE IF EXISTS `ask_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_rate` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `source` int(255) DEFAULT NULL,
  `dest` int(255) NOT NULL,
  `rate` int(255) DEFAULT '0',
  `rate_type` int(255) DEFAULT '1',
  `unit` int(255) DEFAULT '1',
  `direction` int(255) DEFAULT '1',
  `note` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `direction` (`direction`),
  KEY `unit` (`unit`),
  KEY `rate_type` (`rate_type`),
  KEY `dest` (`dest`),
  KEY `source` (`source`),
  CONSTRAINT `source` FOREIGN KEY (`source`) REFERENCES `ask_provider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dest` FOREIGN KEY (`dest`) REFERENCES `ask_provider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_rate`
--

LOCK TABLES `ask_rate` WRITE;
/*!40000 ALTER TABLE `ask_rate` DISABLE KEYS */;
INSERT INTO `ask_rate` VALUES (12,5,8,780,1,1,1,NULL),(15,5,4,780,1,1,1,NULL),(49,6,7,970,1,1,1,NULL),(50,5,5,440,1,1,1,NULL),(64,12,1,970,1,1,2,NULL),(74,5,7,780,1,1,2,NULL),(111,6,15,200,1,1,2,NULL),(126,6,11,0,1,1,1,NULL),(129,5,11,0,1,1,2,NULL),(132,6,1,970,1,1,1,NULL),(136,6,5,970,1,1,1,NULL),(137,6,4,970,1,1,1,NULL),(138,12,11,0,1,1,1,NULL),(139,12,7,970,1,1,1,NULL),(140,12,5,970,1,1,1,NULL),(141,12,4,970,1,1,1,NULL),(142,12,14,200,1,1,1,NULL),(143,5,11,0,1,1,1,NULL),(144,1,11,0,1,1,1,NULL),(145,8,11,0,1,1,1,NULL),(146,7,11,0,1,1,1,NULL),(147,7,17,1000,1,1,2,NULL),(148,5,17,1000,1,1,2,NULL),(149,8,17,1000,1,1,2,NULL),(150,1,17,1000,1,1,2,NULL),(151,4,17,1000,1,1,2,NULL),(152,12,1,970,1,1,1,NULL),(153,18,7,935,1,1,1,NULL),(154,18,5,935,1,1,1,NULL),(155,18,8,935,1,1,1,NULL),(156,18,1,935,1,1,1,NULL),(157,18,14,200,1,1,1,NULL);
/*!40000 ALTER TABLE `ask_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_rate_type`
--

DROP TABLE IF EXISTS `ask_rate_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_rate_type` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_rate_type`
--

LOCK TABLES `ask_rate_type` WRITE;
/*!40000 ALTER TABLE `ask_rate_type` DISABLE KEYS */;
INSERT INTO `ask_rate_type` VALUES (1,'VND'),(2,'USD');
/*!40000 ALTER TABLE `ask_rate_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_source_prefix`
--

DROP TABLE IF EXISTS `ask_source_prefix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_source_prefix` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `provider` int(255) DEFAULT '2',
  `length_number` int(255) DEFAULT '3',
  `note` text COLLATE utf8_unicode_ci,
  `types` int(255) DEFAULT '1',
  `start_prefix` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_prefix` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remove_perfix` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `provider` (`provider`),
  KEY `types` (`types`),
  KEY `number` (`length_number`),
  CONSTRAINT `ask_source_prefix_ibfk_1` FOREIGN KEY (`length_number`) REFERENCES `ask_number` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ask_source_prefix_ibfk_2` FOREIGN KEY (`provider`) REFERENCES `ask_provider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ask_source_prefix_ibfk_3` FOREIGN KEY (`types`) REFERENCES `ask_provider_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_source_prefix`
--

LOCK TABLES `ask_source_prefix` WRITE;
/*!40000 ALTER TABLE `ask_source_prefix` DISABLE KEYS */;
INSERT INTO `ask_source_prefix` VALUES (13,5,8,NULL,2,'089','090',1),(15,5,8,NULL,2,'093','093',1),(16,5,9,'0120-0122',2,'0120','0122',1),(17,5,9,'0126',2,'0126','0126',1),(18,5,9,'0128',2,'0128','0128',1),(19,1,8,'086',2,'086','086',1),(20,1,8,'096-098',2,'096','098',1),(21,1,9,'0162-0169',2,'0162','0169',1),(22,8,8,'092',2,'092','092',1),(23,8,9,'0186',2,'0186','0186',1),(24,8,9,'0188',2,'0188','0188',1),(25,7,8,NULL,2,'099','099',1),(26,7,8,'0199',2,'0199','0199',1),(27,4,8,NULL,2,'088','088',1),(28,4,8,'091',2,'091','091',1),(29,4,8,'094',2,'094','094',1),(30,4,9,'0123-0125',2,'0123','0125',1),(31,4,9,'0127',2,'0127','0127',1),(32,4,9,'0129',2,'0129','0129',1),(33,11,6,NULL,1,'1800','1800',NULL),(34,11,6,NULL,1,'1900','1900',NULL),(37,11,8,NULL,1,'1900','1900',NULL),(38,18,9,'CMCHCM',1,'028710','028710',1),(39,12,9,NULL,1,'028730','028730',1);
/*!40000 ALTER TABLE `ask_source_prefix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_staff`
--

DROP TABLE IF EXISTS `ask_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_staff` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `dia_chi` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dien_thoai` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinh_anh` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authorities` int(255) DEFAULT '4',
  `status` int(255) DEFAULT '1',
  `datacenter` int(255) DEFAULT '1',
  `agent` int(255) DEFAULT '1',
  `forgot` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `authorities` (`authorities`),
  KEY `status` (`status`),
  KEY `datacenter` (`datacenter`) USING BTREE,
  KEY `agent_ext` (`agent`),
  CONSTRAINT `agent_ext` FOREIGN KEY (`agent`) REFERENCES `ask_staff` (`id`),
  CONSTRAINT `authorities` FOREIGN KEY (`authorities`) REFERENCES `ask_authorities` (`id`),
  CONSTRAINT `status` FOREIGN KEY (`status`) REFERENCES `ask_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_staff`
--

LOCK TABLES `ask_staff` WRITE;
/*!40000 ALTER TABLE `ask_staff` DISABLE KEYS */;
INSERT INTO `ask_staff` VALUES (2,'handesk','handeskdotvn@gmail.com','2f6d228b27cb84e9fb4ac4e0ba393c8b','2018-07-09','Hà nội','01237711777',NULL,1,1,1,2,0),(6,'SUPPER ADMIN','handesk@outlook.com','2f6d228b27cb84e9fb4ac4e0ba393c8b','2018-07-01','Hai bà Trưng Hà nội','01237711777','2yjzl0vzfym804w8co.jpg',2,1,1,2,1),(42,'Admin Tuấn','admin@handesk.xyz','25d55ad283aa400af464c76d713c07ad',NULL,NULL,NULL,NULL,2,1,11,2,0),(46,'MOD TEST','mod@handesk.xyz','25d55ad283aa400af464c76d713c07ad',NULL,NULL,NULL,NULL,3,1,14,42,0),(48,'Nguyễn Đình Tuấn','ndt253@gmail.com','3a4c89c42ce4838e5411f61f88d76dbc',NULL,NULL,NULL,NULL,3,1,14,42,0),(49,'Phuong Nguyen','phuong.nguyen@voip24h.vn','3a4c89c42ce4838e5411f61f88d76dbc',NULL,NULL,NULL,NULL,3,1,14,42,0),(50,'Duong Le','duong.le@voip24h.vn','3a4c89c42ce4838e5411f61f88d76dbc',NULL,NULL,NULL,NULL,3,1,14,42,0),(51,'Toan Truong','toan.truong@voip24h.vn','3a4c89c42ce4838e5411f61f88d76dbc',NULL,NULL,NULL,NULL,3,1,14,42,0),(52,'client1@handesk.xyz','client1@handesk.xyz','25d55ad283aa400af464c76d713c07ad',NULL,NULL,NULL,NULL,4,1,14,46,0);
/*!40000 ALTER TABLE `ask_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_status`
--

DROP TABLE IF EXISTS `ask_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_status` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `status` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_status`
--

LOCK TABLES `ask_status` WRITE;
/*!40000 ALTER TABLE `ask_status` DISABLE KEYS */;
INSERT INTO `ask_status` VALUES (1,'Active'),(2,'Disable'),(3,'Verry Email'),(4,'Customer');
/*!40000 ALTER TABLE `ask_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_status_data`
--

DROP TABLE IF EXISTS `ask_status_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_status_data` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `status` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_status_data`
--

LOCK TABLES `ask_status_data` WRITE;
/*!40000 ALTER TABLE `ask_status_data` DISABLE KEYS */;
INSERT INTO `ask_status_data` VALUES (1,'Active'),(2,'Disable');
/*!40000 ALTER TABLE `ask_status_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_task`
--

DROP TABLE IF EXISTS `ask_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_task` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `from` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `subject` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(5) DEFAULT NULL,
  `verify` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_task`
--

LOCK TABLES `ask_task` WRITE;
/*!40000 ALTER TABLE `ask_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `ask_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ask_unit`
--

DROP TABLE IF EXISTS `ask_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ask_unit` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ask_unit`
--

LOCK TABLES `ask_unit` WRITE;
/*!40000 ALTER TABLE `ask_unit` DISABLE KEYS */;
INSERT INTO `ask_unit` VALUES (1,'minute');
/*!40000 ALTER TABLE `ask_unit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-02 15:17:39
