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
  PRIMARY KEY (`bnum`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(2,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(3,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(4,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(5,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(6,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(7,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(8,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(9,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(10,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(11,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(12,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(13,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(14,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(15,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(16,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(17,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(18,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(19,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(20,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(21,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(22,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(23,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(24,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(25,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(26,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(27,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(28,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(29,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(30,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(31,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(32,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(33,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(34,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(35,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(36,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(37,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(38,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(39,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(40,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(41,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(42,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(43,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(44,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(45,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(46,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(47,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(48,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(49,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(50,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(51,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(52,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(53,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(54,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(55,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(56,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(57,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(58,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(59,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(60,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(61,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(62,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(63,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(64,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(65,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(66,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(67,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(68,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(69,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(70,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(71,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(72,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(73,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(74,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(75,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(76,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(77,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(78,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(79,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(80,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(81,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(82,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(83,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(84,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(85,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(86,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(87,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(88,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(89,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(90,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(91,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(92,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(93,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(94,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(95,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(96,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(97,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(98,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(99,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(100,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(101,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(102,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(103,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(104,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(105,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(106,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(107,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(108,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(109,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(110,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(111,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(112,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(113,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(114,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(115,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(116,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(117,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(118,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(119,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(120,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(121,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(122,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(123,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:21'),(124,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(125,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(126,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(127,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(128,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(129,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(130,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(131,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(132,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(133,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(134,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(135,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(136,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(137,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(138,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(139,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(140,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(141,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(142,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(143,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(144,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(145,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(146,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(147,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(148,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(149,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(150,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(151,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(152,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(153,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(154,'ylang ylang','ylang ylang','fkj',1,'2025-08-22 16:20:22'),(155,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(156,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(157,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(158,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(159,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(160,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(161,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(162,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(163,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(164,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(165,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(166,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(167,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(168,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(169,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(170,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(171,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(172,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(173,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(174,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(175,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(176,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(177,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(178,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(179,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(180,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(181,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(182,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(183,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(184,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(185,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(186,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(187,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(188,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(189,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(190,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(191,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(192,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(193,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(194,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(195,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(196,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(197,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(198,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(199,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(200,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(201,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(202,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(203,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(204,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(205,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(206,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(207,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(208,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(209,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(210,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(211,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(212,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(213,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(214,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(215,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(216,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(217,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(218,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(219,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(220,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(221,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(222,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(223,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(224,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(225,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(226,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(227,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(228,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(229,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(230,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(231,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(232,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(233,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(234,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(235,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(236,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(237,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(238,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(239,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(240,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(241,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(242,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(243,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(244,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(245,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(246,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(247,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(248,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(249,'ylang ylang','ylang ylang','fkj',0,'2025-08-22 16:20:22'),(250,'ylang ylang','ylang ylang','fkj',2,'2025-08-22 16:20:22'),(251,'risk','risk',NULL,0,'2025-08-22 16:59:41'),(254,'made in france','made in france yes asd','malaa',23,'2025-08-22 17:01:36'),(255,'admin','admin','admin',1,'2025-08-25 12:00:41');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
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
INSERT INTO `contact` VALUES ('fkj','FKJ','fkj@abc.com','01012345678','2025-08-30','14:33:00','asdsadfag','2025-08-25 10:33:10');
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
INSERT INTO `member` VALUES ('admin','1234','admin','01011112222','admin@abc.com','2025-08-25 11:43:05','ADMIN'),('fkj','1234','FKJ','01012345678','fkj@abc.com','2025-08-22 15:33:01','USER'),('malaa','1234','malaa','01012345678','malaa@abc.com','2025-08-22 16:11:15','USER');
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

-- Dump completed on 2025-08-25 12:04:32
