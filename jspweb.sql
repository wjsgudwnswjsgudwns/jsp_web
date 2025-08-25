-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: jspweb
-- ------------------------------------------------------
-- Server version	8.4.6

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `bnum` int NOT NULL AUTO_INCREMENT,
  `btitle` varchar(45) DEFAULT NULL,
  `bcontent` varchar(45) DEFAULT NULL,
  `memberid` varchar(45) DEFAULT NULL,
  `bhit` int DEFAULT '0',
  `bdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `youtubeLink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bnum`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(2,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(3,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(4,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(5,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(6,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(7,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(8,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(10,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(11,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(12,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(13,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(14,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(15,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(16,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(17,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(18,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(19,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(20,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(21,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(22,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(23,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(24,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(25,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(26,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(27,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(28,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(29,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(30,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(31,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(32,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(33,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(34,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(35,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(36,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(37,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(38,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(39,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(40,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(41,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(42,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(43,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(44,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(45,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(46,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(47,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(48,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(49,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(50,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(51,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(52,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(53,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(54,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(55,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(56,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(57,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(58,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(59,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(60,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(61,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(62,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(63,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(64,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(65,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(66,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(67,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(68,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(69,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(70,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(71,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(72,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(73,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(74,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(75,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(76,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(77,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(78,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(79,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(80,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(81,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(82,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(83,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(84,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(85,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(86,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(87,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(88,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(89,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(90,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(91,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(92,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(93,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(94,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(95,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(96,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(97,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(98,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(99,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(100,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(101,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(102,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(103,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(104,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(105,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(106,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(107,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(108,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(109,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(110,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(111,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(112,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(113,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(114,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(115,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(116,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(117,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(118,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(119,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(120,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(121,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(122,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(123,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21',NULL),(124,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(125,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(126,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(127,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(128,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(129,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(130,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(131,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(132,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(133,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(134,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(135,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(136,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(137,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(138,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(139,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(140,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(141,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(142,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(143,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(144,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(145,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(146,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(147,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(148,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(149,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(150,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(151,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(152,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(153,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(154,'ylang ylang','ylang ylang','fkj',1,'2025-08-22 16:20:22',NULL),(155,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(156,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(157,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(158,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(159,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(160,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(161,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(162,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(163,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(164,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(165,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(166,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(167,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(168,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(169,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(170,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(171,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(172,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(173,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(174,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(175,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(176,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(177,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(178,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(179,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(180,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(181,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(182,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(183,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(184,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(185,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(186,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(187,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(188,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(189,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(190,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(191,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(192,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(193,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(194,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(195,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(196,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(197,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(198,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(199,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(200,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(201,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(202,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(203,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(204,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(205,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(206,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(207,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(208,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(209,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(210,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(211,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(212,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(213,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(214,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(215,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(216,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(217,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(218,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(219,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(220,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(221,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(222,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(223,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(224,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(225,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(226,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(227,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(228,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(229,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(230,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(231,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(232,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(233,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(234,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(235,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(236,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(237,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(238,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(239,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(240,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(241,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(242,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(243,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(244,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(245,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(246,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(247,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(248,'ylang ylang','ylang ylang','fkj',1,'2025-08-22 16:20:22',NULL),(249,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22',NULL),(250,'ylang ylang','ylang ylang','fkj',28,'2025-08-22 16:20:22',NULL),(254,'made in france','made in france yes asd','malaa',28,'2025-08-22 17:01:36',NULL),(255,'admin','admin','admin',73,'2025-08-25 12:00:41',NULL),(256,'malaa','diamond','malaa',5,'2025-08-25 16:31:55',NULL),(259,'2','2','monkee',1,'2025-08-25 16:42:28','https://www.youtube.com/watch?v=vrZcgd7EFPw'),(261,'4','4','monkee',0,'2025-08-25 16:42:52','https://www.youtube.com/watch?v=fT7kIen90F8'),(262,'5','5','monkee',0,'2025-08-25 16:43:06','https://www.youtube.com/watch?v=zIfMgbaXcyM');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `cnum` int NOT NULL AUTO_INCREMENT,
  `memberid` varchar(45) DEFAULT NULL,
  `ccontent` varchar(45) DEFAULT NULL,
  `bnum` int DEFAULT NULL,
  `cdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cnum`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'fkj','fkj',255,'2025-08-25 13:55:44'),(2,'fkj','qwe',255,'2025-08-25 13:58:29'),(3,'malaa','malaa',255,'2025-08-25 13:59:42'),(4,'malaa','asdq',255,'2025-08-25 14:03:04'),(5,'malaa','qwerasd',255,'2025-08-25 14:03:36'),(6,'admin','admin',255,'2025-08-25 14:05:30'),(7,'admin','admin',254,'2025-08-25 14:06:41'),(8,'admin','ㅂㅈㄷ',255,'2025-08-25 14:12:39'),(11,'fkj','qwe\r\n',250,'2025-08-25 15:51:08');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `memberid` varchar(45) NOT NULL,
  `membername` varchar(45) DEFAULT NULL,
  `memberemail` varchar(45) DEFAULT NULL,
  `memberphone` varchar(45) DEFAULT NULL,
  `contact_date` date DEFAULT NULL,
  `contact_time` time DEFAULT NULL,
  `contact_content` varchar(45) DEFAULT NULL,
  `nowtime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`memberid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES ('fkj','FKJ','fkj@abc.com','01012345678','2025-08-30','14:33:00','asdsadfag','2025-08-25 10:33:10'),('malaa','malaa','malaa@abc.com','01012345678','2025-08-28','04:09:00','malaa','2025-08-25 16:09:24');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `memberid` varchar(45) NOT NULL,
  `memberpw` varchar(45) DEFAULT NULL,
  `membername` varchar(45) DEFAULT NULL,
  `memberphone` varchar(45) DEFAULT NULL,
  `memberemail` varchar(45) DEFAULT NULL,
  `memberdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(45) DEFAULT 'USER',
  PRIMARY KEY (`memberid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('admin','1234','admin','01011112222','admin@abc.com','2025-08-25 11:43:05','ADMIN'),('fkj','1234','FKJ','01012345678','fkj@abc.com','2025-08-22 15:33:01','USER'),('malaa','1234','malaa','01012345678','malaa@abc.com','2025-08-22 16:11:15','USER'),('monkee','1234','monkee','01088882222','monkee@abc.com','2025-08-25 16:41:18','USER');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-25 17:01:48
