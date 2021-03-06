CREATE DATABASE  IF NOT EXISTS `hmg_sadd` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hmg_sadd`;
-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: hmg_sadd
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `tb_oferta`
--

DROP TABLE IF EXISTS `tb_oferta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_oferta` (
  `ANO` int(11) NOT NULL,
  `CODIGO` varchar(10) NOT NULL,
  `MATRICULA` varchar(20) NOT NULL,
  `SEMESTRE` int(11) NOT NULL,
  PRIMARY KEY (`ANO`,`CODIGO`,`MATRICULA`,`SEMESTRE`),
  KEY `tb_tempo_tb_oferta_fk` (`ANO`,`SEMESTRE`),
  KEY `tb_disciplinas_tb_oferta_fk` (`CODIGO`),
  KEY `tb_docentes_tb_oferta_fk` (`MATRICULA`),
  CONSTRAINT `tb_disciplinas_tb_oferta_fk` FOREIGN KEY (`CODIGO`) REFERENCES `tb_disciplinas` (`CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tb_docentes_tb_oferta_fk` FOREIGN KEY (`MATRICULA`) REFERENCES `tb_docentes` (`MATRICULA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tb_tempo_tb_oferta_fk` FOREIGN KEY (`ANO`, `SEMESTRE`) REFERENCES `tb_tempo` (`ano`, `semestre`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_oferta`
--

LOCK TABLES `tb_oferta` WRITE;
/*!40000 ALTER TABLE `tb_oferta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_oferta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-02  1:37:13
