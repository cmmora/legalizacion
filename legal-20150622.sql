-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: legal
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `documentos`
--

DROP TABLE IF EXISTS `documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentos` (
  `DOC_ID` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `DOC_TIPO` varchar(60) NOT NULL,
  `DOC_SIGLA` varchar(5) NOT NULL,
  `DOC_DESC` varchar(400) DEFAULT 'SIN DESCRIPCION',
  `DOC_CREAC` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`DOC_ID`),
  UNIQUE KEY `DOC_ID_UNIQUE` (`DOC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos`
--

LOCK TABLES `documentos` WRITE;
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
INSERT INTO `documentos` VALUES (0001,'GASTOS_REEMBOLSABLES','GR','DESCRIPCION ADICIONAL','2015-06-09 21:38:53'),(0002,'T_CREDITO','TC','DESCRIPCION ADICIONAL','2015-06-09 21:38:53'),(0003,'T_DEBITO','TD','DESCRIPCION ADICIONAL','2015-06-09 21:38:53'),(0004,'CAJA_MENOR','CM','DESCRIPCION ADICIONAL','2015-06-09 21:38:53'),(0005,'GASTOS_VIAJE','GV','DESCRIPCION ADICIONAL','2015-06-09 21:38:53'),(0006,'T_CREDITO','TC','OTRA DESCRIPCION','2015-06-18 09:58:42'),(0007,'T_CREDITO','TC','OTRA DESCRIPCION','2015-06-18 10:00:37'),(0008,'T_CREDITO','TC','OTRA DESCRIPCION','2015-06-18 10:47:01'),(0009,'T_CREDITO','TC','OTRA DESCRIPCION','2015-06-18 11:20:28'),(0010,'T_CREDITO','TC','OTRA DESCRIPCION','2015-06-18 11:28:52'),(0011,'CAJA_MENOR','CM','GASTO DE CAJA MENOR','2015-06-18 11:42:49'),(0012,'GASTOS_REEMBOLSABLES','GR','GASTOS REEMBOLSABLES','2015-06-18 11:50:38'),(0013,'GASTOS_REEMBOLSABLES','GR','GASTOS REEMBOLSABLES','2015-06-18 11:52:11'),(0014,'CAJA_MENOR','CM','GASTO DE CAJA MENOR','2015-06-18 11:58:03'),(0015,'GASTOS_VIAJE','GV','GASTO DE VIAJE','2015-06-18 12:00:15'),(0016,'GASTOS_VIAJE','GV','GASTOS DE VIAJE','2015-06-18 12:08:41'),(0017,'GASTOS_VIAJE','GV','GASTOS DE VIAJE','2015-06-18 12:08:50'),(0018,'GASTOS_VIAJE','GV','GASTOS DE VIAJE','2015-06-18 12:09:20'),(0019,'GASTOS_VIAJE','GV','GASTOS DE VIAJE','2015-06-18 12:09:56'),(0020,'GASTOS_VIAJE','GV','GASTO DE VIAJE','2015-06-18 12:10:57'),(0021,'CAJA_MENOR','CM','GASTO DE CAJA MENOR','2015-06-18 12:12:04'),(0022,'T_CREDITO','TC','OTRA DESCRIPCION','2015-06-18 12:12:12'),(0023,'T_DEBITO','TD','GASTOS TARJETA DEBITO','2015-06-18 12:12:22'),(0024,'GASTOS_VIAJE','GV','GASTO DE VIAJE','2015-06-18 12:17:35'),(0025,'T_DEBITO','TD','GASTOS TARJETA DEBITO','2015-06-18 15:40:58');
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `usu_id` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `usua_login` varchar(10) NOT NULL,
  `usua_pasw` varchar(24) NOT NULL,
  `usua_nomb` varchar(100) NOT NULL,
  `usua_email` varchar(100) NOT NULL,
  PRIMARY KEY (`usu_id`),
  UNIQUE KEY `usua_login_UNIQUE` (`usua_login`),
  UNIQUE KEY `usua_email_UNIQUE` (`usua_email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (01,'pepe','p3p3','Pepe Perez','pepe@hotmail.com'),(02,'papa','p4p4','Papa Patata','papa@mail.com'),(05,'papa1','p4p4','Papa Patata','papa1@mail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-19  9:48:38