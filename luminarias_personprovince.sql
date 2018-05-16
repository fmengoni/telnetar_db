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
-- Table structure for table `personprovince`
--

DROP TABLE IF EXISTS `personprovince`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personprovince` (
  `person_id` bigint(20) unsigned NOT NULL,
  `country_id` bigint(20) unsigned DEFAULT NULL,
  `province_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`person_id`,`province_id`),
  KEY `fk_country_personprovince` (`country_id`),
  KEY `fk_province` (`province_id`),
  KEY `fk_personcountry` (`person_id`,`country_id`),
  CONSTRAINT `fk_personcountry` FOREIGN KEY (`person_id`, `country_id`) REFERENCES `personcountry` (`person_id`, `country_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_province` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personprovince`
--

LOCK TABLES `personprovince` WRITE;
/*!40000 ALTER TABLE `personprovince` DISABLE KEYS */;
INSERT INTO `personprovince` VALUES (7,2,1),(11,2,1),(12,2,1),(13,2,1),(15,2,1),(16,2,1),(17,2,1),(18,2,1),(19,2,1),(12,6,28),(11,16,24),(11,16,25),(12,16,24),(12,16,25),(13,16,24),(14,16,24),(15,16,25),(12,26,26),(20,26,26),(2,28,27),(12,28,27);
/*!40000 ALTER TABLE `personprovince` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 18:37:17
