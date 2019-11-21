CREATE DATABASE  IF NOT EXISTS `prouni` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `prouni`;
-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: prouni
-- ------------------------------------------------------
-- Server version	10.4.6-MariaDB

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
-- Table structure for table `bolsa1`
--

DROP TABLE IF EXISTS `bolsa1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolsa1` (
  `idbolsa2` int(11) NOT NULL AUTO_INCREMENT,
  `mensalidade` decimal(10,0) DEFAULT NULL,
  `bolsaintegralcotas` int(11) DEFAULT NULL,
  `bolsaintegralampla` int(11) DEFAULT NULL,
  `bolsaparcialcotas` int(11) DEFAULT NULL,
  `bolsaparcialampla` int(11) DEFAULT NULL,
  PRIMARY KEY (`idbolsa2`)
) ENGINE=InnoDB AUTO_INCREMENT=82910 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolsa1`
--

LOCK TABLES `bolsa1` WRITE;
/*!40000 ALTER TABLE `bolsa1` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolsa1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso1`
--

DROP TABLE IF EXISTS `curso1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso1` (
  `idcurso2` int(11) NOT NULL,
  `curso1` varchar(300) DEFAULT NULL,
  `campus1` varchar(300) DEFAULT NULL,
  `grau1` varchar(300) DEFAULT NULL,
  `turno1` varchar(300) DEFAULT NULL,
  `idnota1` int(11) DEFAULT NULL,
  `idies1` int(11) DEFAULT NULL,
  `codigotempo1` int(11) DEFAULT 1,
  PRIMARY KEY (`idcurso2`),
  KEY `codigotempo1` (`codigotempo1`),
  KEY `idcurso_idx` (`idies1`),
  KEY `idnotak_idx` (`idnota1`),
  CONSTRAINT `codigotempo1` FOREIGN KEY (`codigotempo1`) REFERENCES `tempo` (`codigotempo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idcursok` FOREIGN KEY (`idies1`) REFERENCES `ies1` (`idies1`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idnotak` FOREIGN KEY (`idnota1`) REFERENCES `nota1` (`idnota2`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso1`
--

LOCK TABLES `curso1` WRITE;
/*!40000 ALTER TABLE `curso1` DISABLE KEYS */;
/*!40000 ALTER TABLE `curso1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursohasbolsa1`
--

DROP TABLE IF EXISTS `cursohasbolsa1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursohasbolsa1` (
  `idbolsa1` int(11) DEFAULT NULL,
  `idcurso1` int(11) DEFAULT NULL,
  KEY `idbolsa_idx` (`idbolsa1`),
  KEY `idcursok1_idx` (`idcurso1`),
  CONSTRAINT `idbolsa1` FOREIGN KEY (`idbolsa1`) REFERENCES `bolsa1` (`idbolsa2`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idcursok1` FOREIGN KEY (`idcurso1`) REFERENCES `curso1` (`idcurso2`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursohasbolsa1`
--

LOCK TABLES `cursohasbolsa1` WRITE;
/*!40000 ALTER TABLE `cursohasbolsa1` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursohasbolsa1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursohasnota1`
--

DROP TABLE IF EXISTS `cursohasnota1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursohasnota1` (
  `idnota2` int(11) DEFAULT NULL,
  `idcurso2` int(11) DEFAULT NULL,
  KEY `idcurso1_idx` (`idcurso2`),
  KEY `idnota2_idx` (`idnota2`),
  CONSTRAINT `idcurso2` FOREIGN KEY (`idcurso2`) REFERENCES `curso1` (`idcurso2`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursohasnota1`
--

LOCK TABLES `cursohasnota1` WRITE;
/*!40000 ALTER TABLE `cursohasnota1` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursohasnota1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ies1`
--

DROP TABLE IF EXISTS `ies1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ies1` (
  `idies1` int(11) NOT NULL,
  `universidade1` varchar(300) DEFAULT NULL,
  `local1` int(11) DEFAULT NULL,
  PRIMARY KEY (`idies1`),
  KEY `iesfk_idx` (`local1`),
  CONSTRAINT `iesfk` FOREIGN KEY (`local1`) REFERENCES `local1` (`idlocal1`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `local1` FOREIGN KEY (`local1`) REFERENCES `local1` (`idlocal1`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ies1`
--

LOCK TABLES `ies1` WRITE;
/*!40000 ALTER TABLE `ies1` DISABLE KEYS */;
/*!40000 ALTER TABLE `ies1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local1`
--

DROP TABLE IF EXISTS `local1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local1` (
  `idlocal1` int(11) NOT NULL,
  `estado1` varchar(45) DEFAULT NULL,
  `cidade1` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idlocal1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local1`
--

LOCK TABLES `local1` WRITE;
/*!40000 ALTER TABLE `local1` DISABLE KEYS */;
/*!40000 ALTER TABLE `local1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota1`
--

DROP TABLE IF EXISTS `nota1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota1` (
  `idnota2` int(11) NOT NULL,
  `notaintegralcotas` decimal(45,0) DEFAULT NULL,
  `notaintegralampla` decimal(45,0) DEFAULT NULL,
  `notaparcialcotas` decimal(45,0) DEFAULT NULL,
  `notaparcialampla` decimal(45,0) DEFAULT NULL,
  PRIMARY KEY (`idnota2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota1`
--

LOCK TABLES `nota1` WRITE;
/*!40000 ALTER TABLE `nota1` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempo`
--

DROP TABLE IF EXISTS `tempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempo` (
  `codigotempo` int(11) NOT NULL,
  `ano` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`codigotempo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempo`
--

LOCK TABLES `tempo` WRITE;
/*!40000 ALTER TABLE `tempo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'prouni'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-19 18:54:48
