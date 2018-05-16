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
-- Table structure for table `naturalperson`
--

DROP TABLE IF EXISTS `naturalperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `naturalperson` (
  `person_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `dni_type` varchar(50) DEFAULT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `cuil` varchar(25) DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`person_id`),
  KEY `FK_person_id` (`person_id`),
  CONSTRAINT `FK_naturalperson_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `naturalperson`
--

LOCK TABLES `naturalperson` WRITE;
/*!40000 ALTER TABLE `naturalperson` DISABLE KEYS */;
INSERT INTO `naturalperson` VALUES (2,'Santo','Domingo','DNI','','',0,'2015-12-10 03:07:03'),(5,'Horacio','Mengoni','dni','11222333',NULL,0,'2013-12-15 21:00:25'),(7,'Juan Pablo','Silvera',NULL,NULL,NULL,0,'2014-04-18 13:59:58'),(11,'Miguel','Garbocci',NULL,NULL,NULL,0,'2014-04-26 11:59:51'),(12,'Federico','Mengoni','DNI','27791219',NULL,0,'2014-04-26 12:04:02'),(13,'Jorge','Rea',NULL,NULL,NULL,0,'2014-04-26 12:04:32'),(14,'Jose Miguel','Rosario',NULL,NULL,NULL,0,'2014-06-09 00:40:48'),(15,'Alfredo','Parana',NULL,NULL,NULL,0,'2014-06-29 23:57:07'),(16,'Marcelo','Mango',NULL,NULL,NULL,0,'2014-07-15 14:51:07'),(17,'Omar','Malondra',NULL,NULL,NULL,0,'2014-07-15 14:51:33'),(18,'Juan','Tecnópolis',NULL,NULL,NULL,0,'2014-08-26 21:21:17'),(19,'José Luis','Hermida',NULL,NULL,NULL,0,'2014-09-24 02:09:30'),(20,'Mario','Alberti','DNI','111111111',NULL,0,'2015-01-13 01:03:07');
/*!40000 ALTER TABLE `naturalperson` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 18:37:26
