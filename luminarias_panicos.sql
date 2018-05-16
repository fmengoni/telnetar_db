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
-- Table structure for table `panicos`
--

DROP TABLE IF EXISTS `panicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panicos` (
  `panico_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_group_id` bigint(20) unsigned NOT NULL,
  `description` varchar(300) NOT NULL,
  `hightByte` int(3) DEFAULT NULL,
  `lowByte` int(3) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`panico_id`),
  KEY `fk_location_group` (`location_group_id`),
  CONSTRAINT `fk_location_group` FOREIGN KEY (`location_group_id`) REFERENCES `locationgroup` (`location_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panicos`
--

LOCK TABLES `panicos` WRITE;
/*!40000 ALTER TABLE `panicos` DISABLE KEYS */;
INSERT INTO `panicos` VALUES (1,1,'Banco CREDICOOP',231,31,-35.443627,-60.885958,'2014-05-03 16:02:16'),(2,4,'PANIC',122,224,26.645949,-80.106693,'2014-06-12 22:15:20'),(3,5,'PANIC',84,111,42.579711,-88.425889,'2014-06-29 23:48:33'),(4,6,'PANICO DEMO',186,174,-34.881347,-57.904354,'2014-08-22 00:47:41'),(5,8,'Panico de prueba',232,80,-34.890588,-57.97564,'2015-03-14 21:53:57'),(6,9,'Panico',208,96,-34.377098,-59.117923,'2014-09-24 01:58:07'),(7,12,'Panico Paraguay',248,9,-23.408749,-57.440006,'2015-01-09 22:50:54'),(8,19,'Botón de alerta',103,76,-34.914512,-57.950478,'2016-08-21 14:09:54');
/*!40000 ALTER TABLE `panicos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 18:37:39
