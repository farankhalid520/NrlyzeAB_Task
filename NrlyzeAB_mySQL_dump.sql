CREATE DATABASE  IF NOT EXISTS `nrlyze_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `nrlyze_db`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nrlyze_db
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `3d_blocks`
--

DROP TABLE IF EXISTS `3d_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `3d_blocks` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ObjectId` int NOT NULL,
  `Group` int NOT NULL,
  `LeftCornerLat` double NOT NULL,
  `LeftCornerLong` double NOT NULL,
  `RightCornerLat` double NOT NULL,
  `RightCornerLong` double NOT NULL,
  `Width` float NOT NULL,
  `ZOffset` float NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_OBJECTS_on_3D_BLOCKS` (`ObjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `3d_blocks`
--

LOCK TABLES `3d_blocks` WRITE;
/*!40000 ALTER TABLE `3d_blocks` DISABLE KEYS */;
INSERT INTO `3d_blocks` (`Id`, `Name`, `ObjectId`, `Group`, `LeftCornerLat`, `LeftCornerLong`, `RightCornerLat`, `RightCornerLong`, `Width`, `ZOffset`) VALUES (1,'21',131,1,59.30207784,18.11723291,59.30209868,18.11696114,24,0),(2,'57',131,2,59.30222777,18.1173083,59.30244384,18.11744861,14,0),(3,'59',131,2,59.30244384,18.11744861,59.3025853,18.11756903,14,0),(4,'61',131,2,59.3025853,18.11756903,59.30272891,18.11770881,14,0),(5,'63',131,2,59.30272891,18.11770881,59.30288634,18.11787787,14,0),(6,'65',131,2,59.30288634,18.11787787,59.30307037,18.11807537,14,0),(7,'43',195,1,59.275612139462,17.883030308930927,59.27576215514466,17.883021798039778,13,0),(8,'45',195,1,59.27576215514466,17.883021798039778,59.27592086666894,17.883011159423802,13,0),(9,'47',195,1,59.27592086666894,17.883011159423802,59.27606435864345,17.883002648532596,13,0),(10,'51',196,1,59.276078490396344,17.88373458525234,59.275928476107225,17.88374947931399,13,0),(11,'53',196,1,59.275928476107225,17.88374947931399,59.275775199955376,17.883755862483042,13,0),(12,'55',196,1,59.275775199955376,17.883755862483042,59.27562083604144,17.883764373375556,13,0),(13,'57',197,1,59.275417552917986,17.883983528847125,59.275412117523615,17.883702669407114,13,0),(14,'59',197,1,59.275412117523615,17.883702669407114,59.275406682128676,17.883426065414028,13,0),(15,'61',197,1,59.275406682128676,17.883426065414028,59.275403420891195,17.883130311913817,13,0),(16,'63',197,1,59.275403420891195,17.883130311913817,59.27539907257383,17.88285796336632,13,0),(17,'1',171,1,59.32040047369503,17.98502924485976,59.32013408509363,17.984851444605255,16,0),(18,'19H',81,1,59.31520505306207,18.199426684740388,59.31530221287241,18.19896545289302,17,4),(19,'19A',81,2,59.314978759942875,18.199570550784244,59.31523705561628,18.199793121966792,10,0),(21,'LA19',164,1,57.692832191314864,11.969149569682628,57.69297938590526,11.96896725868902,11,0),(22,'LA18',164,1,57.69297938590526,11.96896725868902,57.69313015166446,11.968780276029207,11,0),(23,'LA17',164,1,57.69313015166446,11.968780276029207,57.69328060375676,11.968594422896729,11,0),(24,'LA37',148,1,57.69141853887021,11.970099299770965,57.691557630161554,11.96992702824636,13,0),(25,'LA36',148,1,57.691557630161554,11.96992702824636,57.69170048222915,11.969750305945297,13,0),(26,'LA35',148,1,57.69170048222915,11.969750305945297,57.69184842952879,11.969566406463798,13,0),(27,'IS26',9,1,59.2938358458343,17.9680057235175,59.293949463542,17.9678997532315,11,0),(28,'IS24',9,1,59.293949463542,17.9678997532315,59.2940630812497,17.9677937829455,11,0),(29,'2A',114,1,60.0821302488921,19.9426224853324,60.0822522421883,19.9425696536445,16,0),(30,'2B',114,1,60.0822522421883,19.9425696536445,60.0823742354845,19.9425168219566,16,0),(31,'2C',114,1,60.0823742354845,19.9425168219566,60.0824962287807,19.9424639902687,16,0),(35,'FK12',131,1,59.30207784,18.11723291,59.30209868,18.11696114,24,0),(36,'FK15',131,1,59.30207784,18.11723291,59.30209868,18.11696114,24,0),(37,'FK90',131,1,59.302084,18.117291,59.30209868,18.11696114,23,0),(38,'',131,1,59.32969781967372,18.06779563901129,59.329982169186486,18.068132400512695,37,0),(39,'',131,1,59.32959178646401,18.067820550043887,59.329763993458954,18.068576932986087,47,0),(40,'React',131,1,59.329736301436235,18.07048201560974,59.33003772727726,18.067381204158135,179,0),(41,'React',131,1,59.329686210218206,18.067808211866048,59.32989517981049,18.068564594808247,49,0),(42,'React',131,1,59.43756760444599,17.831569962321208,59.44943639785816,17.887874893961833,3446,0),(43,'React',131,1,59.837999381441776,17.477538562711853,59.767544406202106,17.537963367399353,8532,0),(44,'React',131,1,59.84974383118521,17.588790163713494,59.84970476260849,17.58911739321331,19,0),(45,'React',131,1,59.31492743479487,18.0719024263096,59.31478234360362,18.072015079088224,17,0),(46,'React',131,1,59.849300602226755,17.588570222574273,59.84974787275948,17.588790163713494,19,0),(47,'React',131,1,59.84974232359399,17.588795668879218,59.849705949401674,17.58912021617002,51,0),(48,'React',131,1,40.46458343605596,-3.7507544608520194,40.46481198780756,-3.7502958031104727,26,0),(49,'React',131,1,57.708415483295255,11.974319137663203,57.708610358758804,11.975464440912562,24,0);
/*!40000 ALTER TABLE `3d_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `3d_floor_template_spaces`
--

DROP TABLE IF EXISTS `3d_floor_template_spaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `3d_floor_template_spaces` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `TemplateId` bigint NOT NULL,
  `SpaceNumber` int NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `SizeX` float NOT NULL,
  `SizeY` float NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_3D_FLOOR_TEMPLATES_on_3D_FLOOR_TEMPLATE_SPACES` (`TemplateId`),
  CONSTRAINT `FK_3D_FLOOR_TEMPLATES_on_3D_FLOOR_TEMPLATE_SPACES` FOREIGN KEY (`TemplateId`) REFERENCES `3d_floor_templates` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `3d_floor_template_spaces`
--

LOCK TABLES `3d_floor_template_spaces` WRITE;
/*!40000 ALTER TABLE `3d_floor_template_spaces` DISABLE KEYS */;
INSERT INTO `3d_floor_template_spaces` (`Id`, `TemplateId`, `SpaceNumber`, `PosX`, `PosY`, `SizeX`, `SizeY`) VALUES (6,1,0,0.4,0,0.2,0.5),(7,1,1,0,0,0.4,0.5),(8,1,2,0,0.5,0.5,0.5),(9,1,3,0.5,0.5,0.5,0.5),(10,1,4,0.6,0,0.4,0.5),(11,2,0,0.4,0,0.2,0.5),(12,2,1,0,0,0.4,0.5),(13,2,1,0,0.5,0.5,0.5),(14,2,2,0.5,0.5,0.5,0.5),(15,2,2,0.6,0,0.4,0.5),(16,3,0,0.4,0,0.2,0.5),(17,3,0,0,0.4,0.4,0.1),(18,3,0,0.6,0.4,0.4,0.1),(19,3,1,0.2,0,0.2,0.4),(20,3,2,0,0,0.2,0.4),(21,3,3,0,0.5,0.2,0.5),(22,3,4,0.2,0.5,0.2,0.5),(23,3,5,0.4,0.5,0.2,0.5),(24,3,6,0.6,0.5,0.2,0.5),(25,3,7,0.8,0.5,0.2,0.5),(26,3,8,0.8,0,0.2,0.4),(27,3,9,0.6,0,0.2,0.4),(28,4,0,0.3,0.4,0.4,0.2),(29,4,1,0.2,0,0.3,0.4),(30,4,2,0,0,0.2,0.5),(31,4,2,0.4,0.2,0.1,0.1),(32,4,3,0,0.5,0.2,0.5),(33,4,3,0.2,0.5,0.1,0.1),(34,4,4,0.2,0.6,0.3,0.4),(35,4,5,0.5,0.6,0.3,0.4),(36,4,6,0.7,0.4,0.1,0.2),(37,4,6,0.8,0,0.2,1),(38,4,7,0.5,0,0.3,0.4),(39,5,0,0.4,0,0.2,0.4),(40,5,0,0.2,0.4,0.6,0.2),(41,5,1,0.2,0,0.2,0.4),(42,5,2,0,0,0.2,0.5),(43,5,3,0,0.5,0.2,0.5),(44,5,4,0.2,0.6,0.3,0.4),(45,5,5,0.5,0.6,0.3,0.4),(46,5,6,0.8,0.5,0.2,0.5),(47,5,7,0.8,0,0.2,0.5),(48,5,8,0.6,0,0.2,0.4),(49,6,0,0.2,0.4,0.6,0.2),(50,6,1,0.2,0,0.3,0.4),(51,6,2,0,0,0.2,0.5),(52,6,3,0,0.5,0.2,0.5),(53,6,4,0.2,0.6,0.3,0.4),(54,6,5,0.5,0.6,0.3,0.4),(55,6,6,0.8,0.5,0.2,0.5),(56,6,7,0.8,0,0.2,0.5),(57,6,8,0.5,0,0.3,0.4),(58,7,0,0,0,1,0.2),(59,7,1,0,0.2,0.14,0.8),(60,7,2,0.14,0.2,0.14,0.8),(61,7,3,0.28,0.2,0.14,0.8),(62,7,4,0.42,0.2,0.16,0.8),(63,7,5,0.58,0.2,0.14,0.8),(64,7,6,0.72,0.2,0.14,0.8),(65,7,7,0.86,0.2,0.14,0.8),(66,8,0,0.4,0,0.2,0.5),(67,8,1,0,0,0.4,0.5),(68,8,1,0,0.5,0.2,0.5),(69,8,2,0.2,0.5,0.6,0.5),(70,8,3,0.8,0.5,0.2,0.5),(71,8,3,0.6,0,0.4,0.5),(72,9,0,0.4,0,0.2,0.5),(73,9,1,0,0,0.4,0.5),(74,9,2,0,0.5,1,0.5),(75,9,3,0.6,0,0.4,0.5),(76,10,0,0.4,0.3,0.2,0.2),(77,10,1,0,0,0.4,0.5),(78,10,1,0,0.5,0.5,0.5),(79,10,2,0.5,0.5,0.5,0.5),(80,10,2,0.6,0,0.4,0.5),(81,10,1,0.4,0,0.1,0.3),(82,10,2,0.5,0,0.1,0.3),(83,11,0,0.4,0.3,0.2,0.2),(84,11,1,0,0,0.4,0.5),(85,11,1,0,0.5,0.5,0.5),(86,11,2,0.5,0.5,0.5,0.5),(87,11,2,0.6,0,0.4,0.5),(88,11,3,0.4,0,0.2,0.3);
/*!40000 ALTER TABLE `3d_floor_template_spaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `3d_floor_templates`
--

DROP TABLE IF EXISTS `3d_floor_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `3d_floor_templates` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `3d_floor_templates`
--

LOCK TABLES `3d_floor_templates` WRITE;
/*!40000 ALTER TABLE `3d_floor_templates` DISABLE KEYS */;
INSERT INTO `3d_floor_templates` (`Id`, `Name`) VALUES (1,'4A'),(2,'2A'),(3,'9A'),(4,'7A'),(5,'8A'),(6,'8B'),(7,'7B'),(8,'3A'),(9,'3B'),(10,'2B'),(11,'3C'),(12,'9B');
/*!40000 ALTER TABLE `3d_floor_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `3d_floors`
--

DROP TABLE IF EXISTS `3d_floors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `3d_floors` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `BlockId` bigint NOT NULL,
  `FloorNumber` int NOT NULL,
  `TemplateId` bigint NOT NULL,
  `Height` float NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_3D_BLOCKS_on_3D_FLOORS` (`BlockId`),
  KEY `FK_3D_FLOOR_TEMPLATES_on_3D_FLOORS` (`TemplateId`),
  CONSTRAINT `FK_3D_BLOCKS_on_3D_FLOORS` FOREIGN KEY (`BlockId`) REFERENCES `3d_blocks` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_3D_FLOOR_TEMPLATES_on_3D_FLOORS` FOREIGN KEY (`TemplateId`) REFERENCES `3d_floor_templates` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `3d_floors`
--

LOCK TABLES `3d_floors` WRITE;
/*!40000 ALTER TABLE `3d_floors` DISABLE KEYS */;
INSERT INTO `3d_floors` (`Id`, `BlockId`, `FloorNumber`, `TemplateId`, `Height`) VALUES (1,1,10,1,3),(2,1,11,1,3),(3,1,12,1,3),(4,1,13,1,3),(5,1,14,1,3),(6,2,10,1,3),(7,2,11,1,3),(8,2,12,1,3),(9,2,13,1,3),(10,2,14,1,3),(11,3,10,1,3),(12,3,11,1,3),(13,3,12,1,3),(14,3,13,1,3),(15,3,14,1,3),(16,4,10,1,3),(17,4,11,1,3),(18,4,12,1,3),(19,4,13,1,3),(20,4,14,1,3),(21,5,10,1,3),(22,5,11,1,3),(23,5,12,1,3),(24,5,13,1,3),(25,5,14,1,3),(26,6,10,1,3),(27,6,11,1,3),(28,6,12,1,3),(29,6,13,1,3),(30,6,14,1,3),(31,7,9,2,3),(32,7,10,2,3),(33,7,11,2,3),(34,7,12,2,3),(35,8,9,2,3),(36,8,10,2,3),(37,8,11,2,3),(38,8,12,2,3),(39,9,9,2,3),(40,9,10,2,3),(41,9,11,2,3),(42,9,12,2,3),(43,10,9,2,3),(44,10,10,2,3),(45,10,11,2,3),(46,10,12,2,3),(47,11,9,2,3),(48,11,10,2,3),(49,11,11,2,3),(50,11,12,2,3),(51,12,9,2,3),(52,12,10,2,3),(53,12,11,2,3),(54,12,12,2,3),(55,13,9,3,3),(56,13,10,2,3),(57,13,11,2,3),(58,13,12,2,3),(59,14,9,3,3),(60,14,10,2,3),(61,14,11,2,3),(62,14,12,2,3),(63,15,9,3,3),(64,15,10,2,3),(65,15,11,2,3),(66,15,12,2,3),(67,16,9,3,3),(68,16,10,2,3),(69,16,11,2,3),(70,16,12,2,3),(71,17,10,3,3),(72,17,11,3,3),(73,17,12,3,3),(74,18,10,5,3),(75,18,11,6,3),(76,18,12,6,3),(77,18,13,6,3),(78,18,14,6,3),(79,19,10,7,3),(80,19,11,7,3),(81,19,12,7,3),(82,19,13,7,3),(83,19,14,7,3),(84,27,10,1,3),(85,27,11,2,3),(86,27,12,2,3),(87,27,13,2,3),(88,28,10,1,3),(89,28,11,2,3),(90,28,12,2,3),(91,28,13,2,3),(92,29,10,9,3),(93,29,11,11,3),(94,29,12,11,3),(95,29,13,11,3),(96,30,10,9,3),(97,30,11,10,3),(98,30,12,10,3),(99,30,13,10,3),(100,31,10,9,3),(101,31,11,11,3),(102,31,12,11,3),(103,31,13,11,3),(104,35,10,12,3);
/*!40000 ALTER TABLE `3d_floors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES (1,'pbkdf2_sha256$390000$qsQkf1vXi509r0GtaC8XLN$CjSpqAKdcH2AtYnBx+wNPkkPJQPip+F/2gj5t2LzkDc=','2023-03-02 03:44:18.373458',1,'admin','','','admin@gmail.com',1,1,'2023-03-02 03:43:02.967888');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'MapsAPI','threedblocks'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (1,'contenttypes','0001_initial','2023-03-02 00:14:10.031529'),(2,'auth','0001_initial','2023-03-02 00:14:10.610093'),(3,'admin','0001_initial','2023-03-02 00:14:10.705006'),(4,'admin','0002_logentry_remove_auto_add','2023-03-02 00:14:10.721297'),(5,'admin','0003_logentry_add_action_flag_choices','2023-03-02 00:14:10.734729'),(6,'contenttypes','0002_remove_content_type_name','2023-03-02 00:14:10.817621'),(7,'auth','0002_alter_permission_name_max_length','2023-03-02 00:14:10.867193'),(8,'auth','0003_alter_user_email_max_length','2023-03-02 00:14:10.910140'),(9,'auth','0004_alter_user_username_opts','2023-03-02 00:14:10.924240'),(10,'auth','0005_alter_user_last_login_null','2023-03-02 00:14:10.972339'),(11,'auth','0006_require_contenttypes_0002','2023-03-02 00:14:10.977396'),(12,'auth','0007_alter_validators_add_error_messages','2023-03-02 00:14:10.988690'),(13,'auth','0008_alter_user_username_max_length','2023-03-02 00:14:11.044459'),(14,'auth','0009_alter_user_last_name_max_length','2023-03-02 00:14:11.121237'),(15,'auth','0010_alter_group_name_max_length','2023-03-02 00:14:11.152661'),(16,'auth','0011_update_proxy_permissions','2023-03-02 00:14:11.165454'),(17,'auth','0012_alter_user_first_name_max_length','2023-03-02 00:14:11.226793'),(18,'sessions','0001_initial','2023-03-02 00:14:11.265629');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('b65f1f8digeoazz8q5o7y6dj1930zylw','.eJxVjEsKwjAUAO-StYS8Rl8al-57hvI-ialKC027Eu8ugS50OzPM24y0b2Xca1rHSc3VgDn9MiZ5prkJfdB8X6ws87ZObFtiD1vtsGh63Y72b1ColrbtUUiQ--wCJtAoZ_Qpei8Oug46RxE1ZsCoLoQsApwzJfWMoHxB8_kC3to4Lw:1pXZre:wluKba284ce0INVc9Co86JWSjErdgMHSv-9rAqnr5Gc','2023-03-16 03:44:18.378443');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'nrlyze_db'
--

--
-- Dumping routines for database 'nrlyze_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-05  7:07:54
