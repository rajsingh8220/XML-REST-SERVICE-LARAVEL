-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: localhost    Database: db_rest_xml
-- ------------------------------------------------------
-- Server version	5.7.12-0ubuntu1

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `FullStreetAddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `City` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `StateOrProvince` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PostalCode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,1,'2251 58 Street','Vinton','IA','52349','US','2016-07-20 13:11:42','2016-07-20 13:11:42'),(2,2,'12071209 E WEBB AVENUE','Burlington','NC','27215','US','2016-07-20 13:11:43','2016-07-20 13:11:43'),(3,3,'0 UNIVERSITY DR','Burlington','NC','27215','US','2016-07-20 13:11:43','2016-07-20 13:11:43'),(4,4,'225 S ELEVENTH','Mebane','NC','27302','US','2016-07-20 13:11:44','2016-07-20 13:11:44'),(5,5,'5510 FRIEDEN CHURCH ROAD','McLeansville','NC','27301','US','2016-07-20 13:11:44','2016-07-20 13:11:44');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listings`
--

DROP TABLE IF EXISTS `listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ListPrice` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ListingURL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Bedrooms` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Bathrooms` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PropertyType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ListingKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ListingCategory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ListingStatus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ListingDescription` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listings`
--

LOCK TABLES `listings` WRITE;
/*!40000 ALTER TABLE `listings` DISABLE KEYS */;
INSERT INTO `listings` VALUES (1,'154900','http://listings.listhub.net/pages/BCMLSIA/12777/?channel=passfail','3','3','Residential','3yd-BCMLSIA-12777','Purchase','Active','Excellent location and view. Multi level home with lots of space! Large masonry fireplace,\n            living room and family room. 2.26 acres gives you lots of room for your hobby farm project!\n        ','2016-07-20 13:11:42','2016-07-20 13:11:42'),(2,'125000','http://listings.listhub.net/pages/BABORNC/54149/?channel=passfail','0','0','Commercial','3yd-BABORNC-54149','Purchase','Active','Possible Owner Financing. Property consists of 2 units which are being leased for\n            $600/unit.1 water\n            heater,1 gas meter,2 water meters,2 electrical main panels in basement,Shared parking.Basement not included\n            in\n            square footage. Storage. New 20 year roof on entire building and new a/c for 1207 installed 06/10.\n        ','2016-07-20 13:11:43','2016-07-20 22:17:37'),(3,'2600000','http://listings.listhub.net/pages/BABORNC/59140/?channel=passfail','0','0','Lots And Land','3yd-BABORNC-59140','Purchase','Active','Zoning allows for many commercial uses. Located on one of the 4 corners at University Dr.\n            &\n            I-40/85 with great interstate access & exposure. Near University Commons & Alamance Crossing retail\n            centers.\n            Convenient to Elon Univ. and main entrance to the 600-acre Mackintosh on the Lake S/D.\n        ','2016-07-20 13:11:43','2016-07-20 13:11:43'),(4,'325000','http://listings.listhub.net/pages/BABORNC/66535/?channel=passfail','0','0','Lots And Land','3yd-BABORNC-66535','Purchase','Active','Located just outside Mebane city limits but inside ETJ. Convenient to downtown Mebane &\n            Tanger Outlets (1.2 miles), restaurants, grocery stores, healthcare & pharmacies. Less than 2 miles to\n            I-40/85 access! Great location for multifamily or SFR development.\n        ','2016-07-20 13:11:44','2016-07-20 13:11:44'),(5,'199900','http://listings.listhub.net/pages/BABORNC/71218/?channel=passfail','0','0','Lots And Land','3yd-BABORNC-71218','Purchase','Active','Great site for development. Lots of road frontage. Located across from shopping at a four\n            way intersection. There is a 1,344 sq. ft. former Post Office building also on the site. Septic tank does\n            not work.\n        ','2016-07-20 13:11:44','2016-07-20 13:11:44');
/*!40000 ALTER TABLE `listings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_07_19_200707_create_listings_table',2),('2016_07_19_200722_create_addresses_table',2),('2016_07_19_200742_create_photos_table',2),('2016_07_19_201517_create_mls_details_table',2),('2016_07_19_205941_create_listings_table',3),('2016_07_19_201519_create_mls_details_table',4),('2016_07_19_200726_create_addresses_table',5),('2016_07_19_200748_create_photos_table',5),('2016_07_19_201520_create_mls_details_table',6),('2016_07_19_205946_create_listings_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mls_details`
--

DROP TABLE IF EXISTS `mls_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mls_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MlsId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lid` int(11) NOT NULL,
  `MlsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MlsNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mls_details`
--

LOCK TABLES `mls_details` WRITE;
/*!40000 ALTER TABLE `mls_details` DISABLE KEYS */;
INSERT INTO `mls_details` VALUES (1,'BCMLSIA',1,'Benton County Multiple Listing Service','12777','2016-07-20 13:11:42','2016-07-20 13:11:42'),(2,'BABORNC',2,'Burlington Alamance Board of Realtors','54149','2016-07-20 13:11:43','2016-07-20 13:11:43'),(3,'BABORNC',3,'Burlington Alamance Board of Realtors','59140','2016-07-20 13:11:44','2016-07-20 13:11:44'),(4,'BABORNC',4,'Burlington Alamance Board of Realtors','66535','2016-07-20 13:11:44','2016-07-20 13:11:44'),(5,'BABORNC',5,'Burlington Alamance Board of Realtors','71218','2016-07-20 13:11:44','2016-07-20 13:11:44');
/*!40000 ALTER TABLE `mls_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MediaModificationTimestamp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lid` int(10) unsigned NOT NULL DEFAULT '0',
  `MediaURL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'2016-01-06T17:56:45+00:00\n                ',1,'http://photos.listhub.net/BCMLSIA/12777/1?lm=20160106T175645','2016-07-20 13:11:42','2016-07-20 13:11:42'),(2,'2016-01-06T17:56:45+00:00\n                ',1,'http://photos.listhub.net/BCMLSIA/12777/2?lm=20160106T175645','2016-07-20 13:11:43','2016-07-20 13:11:43'),(3,'2016-01-06T17:56:45+00:00\n                ',1,'http://photos.listhub.net/BCMLSIA/12777/3?lm=20160106T175645','2016-07-20 13:11:43','2016-07-20 13:11:43'),(4,'2016-01-06T17:56:45+00:00\n                ',1,'http://photos.listhub.net/BCMLSIA/12777/4?lm=20160106T175645','2016-07-20 13:11:43','2016-07-20 13:11:43'),(5,'2016-01-06T17:56:45+00:00\n                ',1,'http://photos.listhub.net/BCMLSIA/12777/5?lm=20160106T175645','2016-07-20 13:11:43','2016-07-20 13:11:43'),(6,'2016-01-06T17:56:45+00:00\n                ',1,'http://photos.listhub.net/BCMLSIA/12777/6?lm=20160106T175645','2016-07-20 13:11:43','2016-07-20 13:11:43'),(7,'2016-01-06T17:56:45+00:00\n                ',1,'http://photos.listhub.net/BCMLSIA/12777/7?lm=20160106T175645','2016-07-20 13:11:43','2016-07-20 13:11:43'),(8,'2016-01-06T17:56:45+00:00\n                ',1,'http://photos.listhub.net/BCMLSIA/12777/8?lm=20160106T175645','2016-07-20 13:11:43','2016-07-20 13:11:43'),(9,'2016-01-06T17:56:45+00:00\n                ',1,'http://photos.listhub.net/BCMLSIA/12777/9?lm=20160106T175645','2016-07-20 13:11:43','2016-07-20 13:11:43'),(10,'2016-01-06T17:56:45+00:00\n                ',1,'http://photos.listhub.net/BCMLSIA/12777/10?lm=20160106T175645','2016-07-20 13:11:43','2016-07-20 13:11:43'),(11,'2016-01-06T17:56:45+00:00\n                ',1,'http://photos.listhub.net/BCMLSIA/12777/11?lm=20160106T175645','2016-07-20 13:11:43','2016-07-20 13:11:43'),(12,'2016-01-06T17:56:45+00:00\n                ',1,'http://photos.listhub.net/BCMLSIA/12777/12?lm=20160106T175645','2016-07-20 13:11:43','2016-07-20 13:11:43'),(13,'2016-01-06T17:56:45+00:00\n                ',1,'http://photos.listhub.net/BCMLSIA/12777/13?lm=20160106T175645','2016-07-20 13:11:43','2016-07-20 13:11:43'),(14,'2016-01-06T17:56:45+00:00\n                ',1,'http://photos.listhub.net/BCMLSIA/12777/14?lm=20160106T175645','2016-07-20 13:11:43','2016-07-20 13:11:43'),(15,'2016-01-06T17:56:45+00:00\n                ',1,'http://photos.listhub.net/BCMLSIA/12777/15?lm=20160106T175645','2016-07-20 13:11:43','2016-07-20 13:11:43'),(16,'2013-11-13T21:26:38+00:00\n                ',2,'http://photos.listhub.net/BABORNC/54149/1?lm=20131113T212638','2016-07-20 13:11:43','2016-07-20 13:11:43'),(17,'2015-01-14T23:24:26+00:00\n                ',4,'http://photos.listhub.net/BABORNC/66535/1?lm=20150114T232426','2016-07-20 13:11:44','2016-07-20 13:11:44'),(18,'2015-01-14T23:24:26+00:00\n                ',4,'http://photos.listhub.net/BABORNC/66535/2?lm=20150114T232426','2016-07-20 13:11:44','2016-07-20 13:11:44'),(19,'2015-01-14T23:24:26+00:00\n                ',4,'http://photos.listhub.net/BABORNC/66535/3?lm=20150114T232426','2016-07-20 13:11:44','2016-07-20 13:11:44'),(20,'2015-01-14T23:24:26+00:00\n                ',4,'http://photos.listhub.net/BABORNC/66535/4?lm=20150114T232426','2016-07-20 13:11:44','2016-07-20 13:11:44'),(21,'2011-02-24T03:17:09+00:00\n                ',5,'http://photos.listhub.net/BABORNC/71218/1?lm=20110224T031709','2016-07-20 13:11:44','2016-07-20 13:11:44');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2016-07-20 13:00:44
