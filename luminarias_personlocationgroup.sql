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
-- Table structure for table `personlocationgroup`
--

DROP TABLE IF EXISTS `personlocationgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personlocationgroup` (
  `person_id` bigint(20) unsigned NOT NULL,
  `location_id` bigint(20) unsigned NOT NULL,
  `location_group_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`person_id`,`location_group_id`),
  KEY `fk_locationgroup` (`location_group_id`),
  KEY `fk_personlocation` (`person_id`,`location_id`),
  CONSTRAINT `fk_locationgroup` FOREIGN KEY (`location_group_id`) REFERENCES `locationgroup` (`location_group_id`),
  CONSTRAINT `fk_personlocation` FOREIGN KEY (`person_id`, `location_id`) REFERENCES `personlocation` (`person_id`, `location_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personlocationgroup`
--

LOCK TABLES `personlocationgroup` WRITE;
/*!40000 ALTER TABLE `personlocationgroup` DISABLE KEYS */;
INSERT INTO `personlocationgroup` VALUES (2,5433,15),(7,92,1),(11,92,1),(11,484,9),(11,660,13),(11,5428,4),(11,5429,5),(11,5430,6),(11,5431,7),(11,5434,17),(12,92,1),(12,138,19),(12,145,8),(12,484,9),(12,484,11),(12,660,13),(12,5428,4),(12,5429,5),(12,5430,6),(12,5431,7),(12,5432,12),(12,5433,14),(12,5433,15),(12,5434,17),(12,5435,18),(13,92,1),(13,145,8),(13,484,9),(13,484,11),(13,660,13),(13,5428,4),(13,5430,6),(13,5431,7),(13,5434,17),(14,5428,4),(15,92,1),(15,5429,5),(16,92,1),(17,92,1),(18,5431,7),(19,484,9),(20,5432,12);
/*!40000 ALTER TABLE `personlocationgroup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 18:36:56
