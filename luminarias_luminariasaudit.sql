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
-- Table structure for table `luminariasaudit`
--

DROP TABLE IF EXISTS `luminariasaudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luminariasaudit` (
  `luminaria_audit_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `temp_hight` int(11) DEFAULT NULL,
  `intensity` int(11) DEFAULT NULL,
  `person_id` bigint(20) unsigned DEFAULT NULL,
  `luminaria_id` bigint(20) unsigned DEFAULT NULL,
  `hightByte` int(11) DEFAULT NULL,
  `lowByte` int(11) DEFAULT NULL,
  `temp_low` int(11) DEFAULT NULL,
  `nodoId` varchar(30) NOT NULL,
  `lumiContextH` int(11) DEFAULT NULL,
  `lumiContextL` int(11) DEFAULT NULL,
  PRIMARY KEY (`luminaria_audit_id`),
  KEY `fk_person_luminariaaudit` (`person_id`),
  KEY `fk_luminaria_luminariaaudit` (`luminaria_id`),
  KEY `hightLowByte` (`hightByte`,`lowByte`),
  CONSTRAINT `fk_luminaria_luminariaaudit` FOREIGN KEY (`luminaria_id`) REFERENCES `luminarias` (`luminaria_id`),
  CONSTRAINT `fk_person_luminariaaudit` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luminariasaudit`
--

LOCK TABLES `luminariasaudit` WRITE;
/*!40000 ALTER TABLE `luminariasaudit` DISABLE KEYS */;
/*!40000 ALTER TABLE `luminariasaudit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 18:37:31
