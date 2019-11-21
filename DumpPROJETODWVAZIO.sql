CREATE DATABASE  IF NOT EXISTS `prounidw` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `prounidw`;
-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: prounidw
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
-- Table structure for table ` fatocurso1`
--

DROP TABLE IF EXISTS ` fatocurso1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ` fatocurso1` (
  `keytempo` int(11) DEFAULT NULL,
  `keycampus` int(11) DEFAULT NULL,
  `keycurso` int(11) DEFAULT NULL,
  `keylocal` int(11) DEFAULT NULL,
  `keyies` int(11) DEFAULT NULL,
  `keybolsa` int(11) DEFAULT NULL,
  `mensalidade` double DEFAULT NULL,
  `nota_integral_cotas` double DEFAULT NULL,
  `nota_integral_ampla` double DEFAULT NULL,
  `nota_parcial_cotas` double DEFAULT NULL,
  `nota_parcial_ampla` double DEFAULT NULL,
  `bolsa_integral_cotas` double DEFAULT NULL,
  `bolsa_integral_ampla` double DEFAULT NULL,
  `bolsa_parcial_ampla` double DEFAULT NULL,
  `bolsa_parcial_cotas` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table ` fatocurso1`
--

LOCK TABLES ` fatocurso1` WRITE;
/*!40000 ALTER TABLE ` fatocurso1` DISABLE KEYS */;
/*!40000 ALTER TABLE ` fatocurso1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimbolsa`
--

DROP TABLE IF EXISTS `dimbolsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimbolsa` (
  `iddimBolsa` int(11) NOT NULL AUTO_INCREMENT,
  `mensalidade` bigint(20) DEFAULT NULL,
  `bolsaintegralcotas` int(11) DEFAULT NULL,
  `bolsaintegralampla` int(11) DEFAULT NULL,
  `bolsaparcialcotas` int(11) DEFAULT NULL,
  `bolsaparcialampla` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `idbolsa2` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddimBolsa`),
  KEY `idx_dimbolsa_lookup` (`idbolsa2`,`mensalidade`,`bolsaintegralcotas`,`bolsaintegralampla`,`bolsaparcialcotas`,`bolsaparcialampla`)
) ENGINE=InnoDB AUTO_INCREMENT=41464 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimbolsa`
--

LOCK TABLES `dimbolsa` WRITE;
/*!40000 ALTER TABLE `dimbolsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `dimbolsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimcampus`
--

DROP TABLE IF EXISTS `dimcampus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimcampus` (
  `version` int(11) DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `idcurso2` int(11) DEFAULT NULL,
  `campus1` text DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  KEY `idx_dimcampus_lookup` (`campus1`(3072)),
  KEY `idx_dimcampus_tk` (`idcurso2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimcampus`
--

LOCK TABLES `dimcampus` WRITE;
/*!40000 ALTER TABLE `dimcampus` DISABLE KEYS */;
/*!40000 ALTER TABLE `dimcampus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimcurso`
--

DROP TABLE IF EXISTS `dimcurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimcurso` (
  `iddimcurso` int(11) NOT NULL AUTO_INCREMENT,
  `idcurso2` int(11) DEFAULT NULL,
  `curso1` text DEFAULT NULL,
  `grau1` text DEFAULT NULL,
  `turno1` text DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  PRIMARY KEY (`iddimcurso`),
  KEY `idx_dimcurso_tk` (`iddimcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=40991 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimcurso`
--

LOCK TABLES `dimcurso` WRITE;
/*!40000 ALTER TABLE `dimcurso` DISABLE KEYS */;
/*!40000 ALTER TABLE `dimcurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimies`
--

DROP TABLE IF EXISTS `dimies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimies` (
  `iddimIES` int(11) NOT NULL AUTO_INCREMENT,
  `idies1` int(11) DEFAULT NULL,
  `universidade1` text DEFAULT NULL,
  `local1` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  PRIMARY KEY (`iddimIES`)
) ENGINE=InnoDB AUTO_INCREMENT=100998 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimies`
--

LOCK TABLES `dimies` WRITE;
/*!40000 ALTER TABLE `dimies` DISABLE KEYS */;
/*!40000 ALTER TABLE `dimies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimlocal`
--

DROP TABLE IF EXISTS `dimlocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimlocal` (
  `iddimlocal` int(11) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `idlocal1` int(11) DEFAULT NULL,
  `cidade1` varchar(45) DEFAULT NULL,
  `estado1` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddimlocal`),
  KEY `idx_dimlocal_lookup` (`idlocal1`,`cidade1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimlocal`
--

LOCK TABLES `dimlocal` WRITE;
/*!40000 ALTER TABLE `dimlocal` DISABLE KEYS */;
/*!40000 ALTER TABLE `dimlocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimtempo`
--

DROP TABLE IF EXISTS `dimtempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimtempo` (
  `iddimTempo` int(11) NOT NULL AUTO_INCREMENT,
  `codigotempo` int(11) DEFAULT NULL,
  `ano` varchar(300) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` timestamp NULL DEFAULT NULL,
  `date_to` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`iddimTempo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimtempo`
--

LOCK TABLES `dimtempo` WRITE;
/*!40000 ALTER TABLE `dimtempo` DISABLE KEYS */;
/*!40000 ALTER TABLE `dimtempo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'prounidw'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-19 22:09:17
