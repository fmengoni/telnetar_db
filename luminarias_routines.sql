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
-- Dumping routines for database 'luminarias'
--
/*!50003 DROP PROCEDURE IF EXISTS `INSERT_LUMINARIA_AUDIT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `INSERT_LUMINARIA_AUDIT`(IN FECHA LONG, IN TEMP_HIGHT LONG, IN INTENSITY LONG, IN HIGHT_BYTE LONG, IN LOW_BYTE LONG, IN TEMP_LOW LONG, IN NODO_ID VARCHAR(30), IN LUMI_CONTEXT_H LONG, IN LUMI_CONTEXT_L LONG)
BEGIN
	DECLARE EXIT HANDLER FOR NOT FOUND, SQLWARNING, SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SELECT 0 AS res;
    END;

    START TRANSACTION;
    
    insert into luminariasaudit(dateTime, temp_hight, intensity, hightByte, lowByte, temp_low, nodoId, lumiContextH, lumiContextL) 
    values(FROM_UNIXTIME(FECHA), TEMP_HIGHT, INTENSITY, HIGHT_BYTE, LOW_BYTE, TEMP_LOW, NODO_ID, LUMI_CONTEXT_H, LUMI_CONTEXT_L);

    COMMIT;
    SELECT 1 AS res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `INSERT_ROOM_TEMPERATURE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `INSERT_ROOM_TEMPERATURE`(IN FECHA LONG, IN NODO_ID VARCHAR(30), IN TEMP_HIGHT LONG, IN TEMP_LOW LONG)
BEGIN
DECLARE EXIT HANDLER FOR NOT FOUND, SQLWARNING, SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SELECT 0 AS res;
    END;

    START TRANSACTION;
    
    insert into roomtemperaturehist(fecha, nodoid, temphight, templow, hightbyte, lowbyte) 
    values(FROM_UNIXTIME(FECHA), NODO_ID, TEMP_HIGHT, TEMP_LOW, 0, 0);

    COMMIT;
    SELECT 1 AS res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-16 18:37:47
