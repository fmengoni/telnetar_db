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
-- Table structure for table `personpart`
--

DROP TABLE IF EXISTS `personpart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personpart` (
  `person_id` bigint(20) unsigned NOT NULL,
  `province_id` bigint(20) unsigned NOT NULL,
  `part_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`person_id`,`part_id`),
  KEY `fk_part` (`part_id`),
  KEY `fk_personprovince` (`person_id`,`province_id`),
  CONSTRAINT `fk_part` FOREIGN KEY (`part_id`) REFERENCES `part` (`part_id`),
  CONSTRAINT `fk_personprovince` FOREIGN KEY (`person_id`, `province_id`) REFERENCES `personprovince` (`person_id`, `province_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personpart`
--

LOCK TABLES `personpart` WRITE;
/*!40000 ALTER TABLE `personpart` DISABLE KEYS */;
INSERT INTO `personpart` VALUES (2,27,576),(7,1,7),(11,1,7),(11,1,48),(11,1,50),(11,1,66),(11,1,74),(11,1,577),(11,24,573),(11,25,574),(12,1,7),(12,1,9),(12,1,48),(12,1,50),(12,1,66),(12,1,74),(12,1,577),(12,24,573),(12,25,574),(12,26,575),(12,27,576),(12,28,578),(13,1,7),(13,1,9),(13,1,48),(13,1,50),(13,1,66),(13,1,74),(13,1,577),(13,24,573),(14,24,573),(15,1,7),(15,25,574),(16,1,7),(17,1,7),(18,1,48),(19,1,50),(20,26,575);
/*!40000 ALTER TABLE `personpart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 18:37:15
