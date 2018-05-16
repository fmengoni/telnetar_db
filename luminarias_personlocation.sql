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
-- Table structure for table `personlocation`
--

DROP TABLE IF EXISTS `personlocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personlocation` (
  `person_id` bigint(20) unsigned NOT NULL,
  `location_id` bigint(20) unsigned NOT NULL,
  `part_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`person_id`,`location_id`),
  KEY `fk_location` (`location_id`),
  KEY `fk_personpart` (`person_id`,`part_id`),
  CONSTRAINT `fk_location` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `fk_personpart` FOREIGN KEY (`person_id`, `part_id`) REFERENCES `personpart` (`person_id`, `part_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personlocation`
--

LOCK TABLES `personlocation` WRITE;
/*!40000 ALTER TABLE `personlocation` DISABLE KEYS */;
INSERT INTO `personlocation` VALUES (2,5433,576),(7,92,7),(11,92,7),(11,5431,48),(11,484,50),(11,5430,66),(11,660,74),(11,5428,573),(11,5429,574),(11,5434,577),(12,92,7),(12,138,9),(12,145,9),(12,5431,48),(12,484,50),(12,5430,66),(12,660,74),(12,5428,573),(12,5429,574),(12,5432,575),(12,5433,576),(12,5434,577),(12,5435,578),(13,92,7),(13,145,9),(13,5431,48),(13,484,50),(13,5430,66),(13,660,74),(13,5428,573),(13,5434,577),(14,5428,573),(15,92,7),(15,5429,574),(16,92,7),(17,92,7),(18,5431,48),(19,484,50),(20,5432,575);
/*!40000 ALTER TABLE `personlocation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 18:37:40
