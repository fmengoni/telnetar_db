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
-- Table structure for table `locationgroup`
--

DROP TABLE IF EXISTS `locationgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locationgroup` (
  `location_group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idx` bigint(20) unsigned DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`location_group_id`),
  KEY `fk_location_locationgroup` (`location_id`),
  CONSTRAINT `fk_location_locationgroup` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locationgroup`
--

LOCK TABLES `locationgroup` WRITE;
/*!40000 ALTER TABLE `locationgroup` DISABLE KEYS */;
INSERT INTO `locationgroup` VALUES (1,92,'Plaza Belgrano',-35.4439,-60.8846,NULL,'2013-12-13 09:47:17',NULL,NULL),(4,5428,'Woodland Road',26.6664,-80.1079,NULL,'2014-06-09 00:34:06',NULL,NULL),(5,5429,'Suite 204',42.5847,-88.403,NULL,'2014-07-09 11:06:48',NULL,NULL),(6,5430,'Demo Luminaria',-34.8811,-57.9035,NULL,'2014-08-19 16:37:39',NULL,NULL),(7,5431,'Tecnópolis',-34.5578,-58.512,NULL,'2014-08-26 01:28:26',NULL,NULL),(8,145,'Flia Mengoni',-34.8906,-57.9757,NULL,'2014-09-13 14:17:00',NULL,NULL),(9,484,'Parada Robres',-34.3755,-59.12,NULL,'2014-10-25 02:21:22',NULL,NULL),(11,484,'Parada de Robres',-34.3754,-59.1206,NULL,'2014-10-25 02:20:15',NULL,NULL),(12,5432,'Centro',-23.4087,-57.44,NULL,'2014-12-12 20:27:05',NULL,NULL),(13,660,'Demo',-34.7207,-58.2608,1,'2015-06-10 00:19:20',NULL,NULL),(14,5433,'Aeropuesto internacional',18.564,-68.3638,0,'2015-12-09 02:34:38',NULL,NULL),(15,5433,'Santo Domingo',18.4769,-69.8965,1,'2015-12-09 02:32:25',NULL,NULL),(16,5433,'Nodo backup',18.5553,-68.3715,1,'2015-10-21 20:39:04',NULL,NULL),(17,5434,'Edificio Centinela',-34.583,-58.3734,1,'2015-12-22 02:31:38',NULL,NULL),(18,5435,'Av. Segunda y J. de Aguilar',-17.3876,-66.1969,1,'2016-06-17 16:29:27',NULL,NULL),(19,138,'Camara de senadores',-34.9147,-57.9505,1,'2016-08-21 14:04:06',NULL,NULL);
/*!40000 ALTER TABLE `locationgroup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 18:36:55
