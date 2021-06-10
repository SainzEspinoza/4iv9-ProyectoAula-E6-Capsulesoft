-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: localhost    Database: capsulesoft_equipo6
-- ------------------------------------------------------
-- Server version	5.7.33-log

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `id_admin` smallint(6) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `appat` varchar(20) NOT NULL,
  `apmat` varchar(20) NOT NULL,
  `edad` int(2) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `contrasena` varchar(25) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cespecialidades`
--

DROP TABLE IF EXISTS `cespecialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cespecialidades` (
  `id_especialidad` smallint(6) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  PRIMARY KEY (`id_especialidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cespecialidades`
--

LOCK TABLES `cespecialidades` WRITE;
/*!40000 ALTER TABLE `cespecialidades` DISABLE KEYS */;
INSERT INTO `cespecialidades` VALUES (1,'cardiologia'),(2,'neurologia'),(3,'oncologia'),(4,'otorrinolaringologia'),(5,'pedriatria'),(6,'ortopedia'),(7,'nefrologia'),(8,'gastroenterologia'),(9,'ginecologia'),(10,'urologia'),(11,'cirugia');
/*!40000 ALTER TABLE `cespecialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpadecimientos`
--

DROP TABLE IF EXISTS `cpadecimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpadecimientos` (
  `id_pad` smallint(6) NOT NULL,
  `descripcion` varchar(25) NOT NULL,
  PRIMARY KEY (`id_pad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpadecimientos`
--

LOCK TABLES `cpadecimientos` WRITE;
/*!40000 ALTER TABLE `cpadecimientos` DISABLE KEYS */;
INSERT INTO `cpadecimientos` VALUES (1,'S/P'),(2,'obesidad'),(3,'diabetes'),(4,'hipertension'),(5,'cancer'),(6,'epilepsia'),(7,'ceguera/sordera'),(8,'alergia'),(9,'insuf. renal'),(10,'VIH'),(11,'otro');
/*!40000 ALTER TABLE `cpadecimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cprioridades`
--

DROP TABLE IF EXISTS `cprioridades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cprioridades` (
  `id_prioridad` smallint(6) NOT NULL,
  `descripcion` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id_prioridad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cprioridades`
--

LOCK TABLES `cprioridades` WRITE;
/*!40000 ALTER TABLE `cprioridades` DISABLE KEYS */;
INSERT INTO `cprioridades` VALUES (1,'atencion inmediata'),(2,'grave'),(3,'grave estable'),(4,'puede esperar'),(5,'estable');
/*!40000 ALTER TABLE `cprioridades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_sangre`
--

DROP TABLE IF EXISTS `ctipo_sangre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctipo_sangre` (
  `id_tipoSangre` smallint(6) NOT NULL,
  `Nombre` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_tipoSangre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_sangre`
--

LOCK TABLES `ctipo_sangre` WRITE;
/*!40000 ALTER TABLE `ctipo_sangre` DISABLE KEYS */;
INSERT INTO `ctipo_sangre` VALUES (1,'O-'),(2,'O+'),(3,'A-'),(4,'A+'),(5,'B-'),(6,'B+'),(7,'AB-'),(8,'AB+');
/*!40000 ALTER TABLE `ctipo_sangre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dseguimiento`
--

DROP TABLE IF EXISTS `dseguimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dseguimiento` (
  `id_citaRev` smallint(6) NOT NULL,
  `fecha_Seg` date NOT NULL,
  `hora_Seg` time NOT NULL,
  `id_prioridad` smallint(6) NOT NULL,
  `tratamiento` varchar(150) NOT NULL,
  `id_citaSeg` smallint(6) NOT NULL,
  PRIMARY KEY (`id_citaSeg`),
  KEY `id_citaRev` (`id_citaRev`),
  KEY `id_prioridad` (`id_prioridad`),
  CONSTRAINT `dseguimiento_ibfk_1` FOREIGN KEY (`id_citaRev`) REFERENCES `mcitarev` (`id_citaRev`),
  CONSTRAINT `dseguimiento_ibfk_2` FOREIGN KEY (`id_prioridad`) REFERENCES `cprioridades` (`id_prioridad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dseguimiento`
--

LOCK TABLES `dseguimiento` WRITE;
/*!40000 ALTER TABLE `dseguimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `dseguimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcitaaprobada`
--

DROP TABLE IF EXISTS `mcitaaprobada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mcitaaprobada` (
  `id_admin` smallint(6) NOT NULL,
  `id_citaSeg` smallint(6) NOT NULL,
  `autorizacion` tinyint(1) NOT NULL,
  `id_citaAprobada` smallint(6) NOT NULL,
  `observacion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_citaAprobada`),
  KEY `id_admin` (`id_admin`),
  KEY `id_citaSeg` (`id_citaSeg`),
  CONSTRAINT `mcitaaprobada_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `administrador` (`id_admin`),
  CONSTRAINT `mcitaaprobada_ibfk_2` FOREIGN KEY (`id_citaSeg`) REFERENCES `dseguimiento` (`id_citaSeg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcitaaprobada`
--

LOCK TABLES `mcitaaprobada` WRITE;
/*!40000 ALTER TABLE `mcitaaprobada` DISABLE KEYS */;
/*!40000 ALTER TABLE `mcitaaprobada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcitarev`
--

DROP TABLE IF EXISTS `mcitarev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mcitarev` (
  `id_paciente` smallint(6) NOT NULL,
  `id_medico` smallint(6) NOT NULL,
  `id_especialidad` smallint(6) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_citaRev` smallint(6) NOT NULL,
  PRIMARY KEY (`id_citaRev`),
  KEY `id_paciente` (`id_paciente`),
  KEY `id_medico` (`id_medico`),
  CONSTRAINT `mcitarev_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`),
  CONSTRAINT `mcitarev_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcitarev`
--

LOCK TABLES `mcitarev` WRITE;
/*!40000 ALTER TABLE `mcitarev` DISABLE KEYS */;
/*!40000 ALTER TABLE `mcitarev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medico` (
  `id_medico` smallint(6) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `appat` varchar(20) NOT NULL,
  `edad` int(2) NOT NULL,
  `especialidad` smallint(6) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `contrasena` varchar(25) NOT NULL,
  PRIMARY KEY (`id_medico`),
  KEY `especialidad` (`especialidad`),
  CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`especialidad`) REFERENCES `cespecialidades` (`id_especialidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `id_paciente` smallint(6) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `appat` varchar(20) NOT NULL,
  `apmat` varchar(20) NOT NULL,
  `peso` float(5,3) NOT NULL,
  `altura` int(3) NOT NULL,
  `pad` smallint(6) NOT NULL,
  `tipo_sangre` smallint(6) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `contrasena` varchar(25) NOT NULL,
  PRIMARY KEY (`id_paciente`),
  KEY `pad` (`pad`),
  KEY `tipo_sangre` (`tipo_sangre`),
  CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`pad`) REFERENCES `cpadecimientos` (`id_pad`),
  CONSTRAINT `paciente_ibfk_2` FOREIGN KEY (`tipo_sangre`) REFERENCES `ctipo_sangre` (`id_tipoSangre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'Ian','Perez','Aguirre',50.100,173,1,4,'IanPerez','1234');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-04  2:04:16
