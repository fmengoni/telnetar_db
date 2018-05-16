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
-- Table structure for table `phoneperson`
--

DROP TABLE IF EXISTS `phoneperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phoneperson` (
  `phone_id` bigint(20) unsigned NOT NULL,
  `person_id` bigint(20) unsigned NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `priority` int(5) DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idx` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`phone_id`,`person_id`),
  KEY `FK_phoneperson_phone_id` (`phone_id`),
  KEY `FK_phoneperson_person_id` (`person_id`),
  CONSTRAINT `FK_phoneperson_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `FK_phoneperson_phone_id` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phoneperson`
--

LOCK TABLES `phoneperson` WRITE;
/*!40000 ALTER TABLE `phoneperson` DISABLE KEYS */;
INSERT INTO `phoneperson` VALUES (2,19,'Principal',0,0,'2014-09-24 02:11:57',0);
/*!40000 ALTER TABLE `phoneperson` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 18:37:16
