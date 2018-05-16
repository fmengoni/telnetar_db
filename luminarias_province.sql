-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: vps-910865-x.dattaweb.com    Database: luminarias
-- ------------------------------------------------------
-- Server version	5.6.37

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
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `province_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint(20) unsigned NOT NULL,
  `name` varchar(25) NOT NULL,
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idx` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`province_id`),
  KEY `FK_province_country_id` (`country_id`),
  CONSTRAINT `FK_province_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,2,'Buenos Aires',-36.527294,-60.658264,1,'2015-08-31 01:58:09',0),(2,2,'Catamarca',NULL,NULL,0,'2013-12-08 21:58:40',1),(3,2,'Chaco',NULL,NULL,0,'2013-12-08 21:58:40',2),(4,2,'Chubut',NULL,NULL,0,'2013-12-08 21:58:40',3),(5,2,'Cordoba',NULL,NULL,0,'2013-12-08 21:58:40',4),(6,2,'Corrientes',NULL,NULL,0,'2013-12-08 21:58:40',5),(7,2,'Entre Rios',NULL,NULL,0,'2013-12-08 21:58:40',6),(8,2,'Formosa',NULL,NULL,0,'2013-12-08 21:58:40',7),(9,2,'Jujuy',NULL,NULL,0,'2013-12-08 21:58:40',8),(10,2,'La Pampa',NULL,NULL,0,'2013-12-08 21:58:40',9),(11,2,'La Rioja',NULL,NULL,0,'2013-12-08 21:58:40',10),(12,2,'Mendoza',NULL,NULL,0,'2013-12-08 21:58:40',11),(13,2,'Misiones',NULL,NULL,0,'2013-12-08 21:58:40',12),(14,2,'Neuquen',NULL,NULL,0,'2013-12-08 21:58:40',13),(15,2,'Rio Negro',NULL,NULL,0,'2013-12-08 21:58:40',14),(16,2,'Salta',NULL,NULL,0,'2013-12-08 21:58:40',15),(17,2,'San Juan',NULL,NULL,0,'2013-12-08 21:58:40',16),(18,2,'San Luis',NULL,NULL,0,'2013-12-08 21:58:40',17),(19,2,'Santa Cruz',NULL,NULL,0,'2013-12-08 21:58:40',18),(20,2,'Santa Fe',NULL,NULL,0,'2013-12-08 21:58:40',19),(21,2,'Santiago Del Estero',NULL,NULL,0,'2013-12-08 21:58:40',20),(22,2,'Tierra Del Fuego',NULL,NULL,0,'2013-12-08 21:58:40',21),(23,2,'Tucuman',NULL,NULL,0,'2013-12-08 21:58:40',22),(24,16,'Florida',28.534733,-81.974365,1,'2015-08-31 01:58:09',NULL),(25,16,'Wisconsin',42.592499,-88.434441,1,'2015-08-31 01:58:09',NULL),(26,26,'Concepción',-23.408749,-57.440006,1,'2015-08-31 01:58:09',NULL),(27,28,'La Altagracia',18.580669,-68.588066,1,'2015-08-22 19:28:15',NULL),(28,6,'Cochabamba',-17.391426,-66.157700,1,'2016-06-17 16:25:47',NULL);
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 18:37:12
