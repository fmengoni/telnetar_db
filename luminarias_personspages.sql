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
-- Table structure for table `personspages`
--

DROP TABLE IF EXISTS `personspages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personspages` (
  `person_id` bigint(20) unsigned NOT NULL,
  `page_id` bigint(20) unsigned NOT NULL,
  `fePermission` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idx` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`person_id`,`page_id`),
  KEY `fk_page` (`page_id`),
  CONSTRAINT `fk_page` FOREIGN KEY (`page_id`) REFERENCES `pages` (`page_id`),
  CONSTRAINT `fk_person` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personspages`
--

LOCK TABLES `personspages` WRITE;
/*!40000 ALTER TABLE `personspages` DISABLE KEYS */;
INSERT INTO `personspages` VALUES (2,15,'2015-12-09 18:49:06',NULL),(2,16,'2015-12-09 18:49:06',NULL),(11,12,'2014-08-02 19:05:49',1),(11,15,'2014-08-02 19:05:55',2),(12,12,'2014-08-02 19:05:06',2),(12,15,'2014-08-02 19:04:59',1),(12,16,'2014-08-19 23:46:44',3),(12,17,'2015-03-07 17:40:39',4),(13,15,'2015-10-28 21:05:24',NULL),(20,16,'2015-01-14 10:21:41',NULL);
/*!40000 ALTER TABLE `personspages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 18:36:59
