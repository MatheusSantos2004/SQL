-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: biblioteca
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `IdAutor` smallint NOT NULL AUTO_INCREMENT,
  `NomeAutor` varchar(50) NOT NULL,
  `SobrenomeAutor` varchar(60) NOT NULL,
  PRIMARY KEY (`IdAutor`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Umberto','Eco'),(2,'Daniel','Barret'),(3,'Gerald','Carter'),(4,'Mark','Sobell'),(5,'William','Stanek'),(6,'Christine','Bresnahan'),(7,'William','Gibson'),(8,'James','Joyce'),(9,'John','Emsley'),(10,'José','Saramago'),(11,'Richard','Silverman'),(12,'Robert','Byrnes'),(13,'Jay','Ts'),(14,'Robert','Eckstein'),(15,'Paul','Horowitz'),(16,'Winfiled','Hill'),(17,'Joel','Murach'),(18,'Paul','Scherz'),(19,'Simon','Monk'),(20,'Goerge','Orwell'),(21,'Ítalo','Calvino'),(22,'Machado','de Assis'),(23,'Oliver','Sacks'),(24,'Ray','Bradbury'),(25,'Walter','Isaacson'),(26,'Benjamin','Graham'),(27,'Júlio','Verne'),(28,'Marcelo','Gleiser'),(29,'Harri','Lorenzi'),(30,'Humphrey','Carpenter'),(31,'Isaac','Asimov'),(32,'Aldous','Huxley'),(33,'Arthur','Conan Doyle'),(34,'Blaise','Pascal'),(35,'Jostein','Gaarder'),(36,'Stephen','Hawking'),(37,'Stephen','Jay Gould'),(38,'Neil','De Grasse Tyson'),(39,'Charles','Darwin'),(40,'Alan','Turing'),(41,'Arthur','C.Clarke');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-22 11:10:50
