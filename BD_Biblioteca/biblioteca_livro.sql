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
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `IdLivro` smallint NOT NULL AUTO_INCREMENT,
  `NomeLivro` varchar(70) NOT NULL,
  `ISBN13` char(13) NOT NULL,
  `DataPub` date DEFAULT NULL,
  `PrecoLivro` decimal(10,2) NOT NULL,
  `NumeroPaginas` smallint DEFAULT NULL,
  `IdEditora` smallint NOT NULL,
  `IdAssunto` tinyint NOT NULL,
  PRIMARY KEY (`IdLivro`),
  UNIQUE KEY `ISBN13` (`ISBN13`),
  KEY `fk_id_editora` (`IdEditora`),
  KEY `fk_id_assunto` (`IdAssunto`),
  KEY `ind_nomeLivro` (`NomeLivro`),
  CONSTRAINT `fk_id_assunto` FOREIGN KEY (`IdAssunto`) REFERENCES `assunto` (`IdAssunto`),
  CONSTRAINT `fk_id_editora` FOREIGN KEY (`IdEditora`) REFERENCES `editora` (`IdEditora`) ON DELETE CASCADE,
  CONSTRAINT `verifica_preco` CHECK ((`PrecoLivro` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (100,'A Arte da Eletrônica','9788582604342','2017-03-08',300.74,1160,24,3),(101,'Vinte Mil Léguas Submarinas','9788582850022','2014-09-16',24.50,448,16,1),(102,'O Investidor Inteligente','9788595080805','2016-01-25',79.90,450,6,7),(103,'2001 - Um Odisséia no Espaço','9788576571551','2020-09-30',55.86,336,3,1),(104,'Fahrenheit 451','9788525052247','2012-06-01',43.56,216,3,1),(105,'Admirável mundo novo','9788525056009','2014-01-01',60.00,320,3,1),(106,'1984','9788535914849','2009-07-21',29.67,416,14,1),(107,'A volta ao mundo em 80 dias','9788537816134','1873-01-01',59.41,256,11,5),(108,'O Nome da Rosa','9788501115829','2019-12-16',51.99,592,18,5),(109,'Memórias Póstumas de Brás Cubas','9788525433131','1881-01-01',34.90,240,14,6),(110,'O Evangelho Segundo Jesus Cristo','9788535905595','1991-01-01',49.90,512,14,6),(111,'Cidades Invisíveis','9788535907445','1972-01-01',42.80,176,14,6),(112,'Windows Server 2016: Installing & Configuring','9781535074094','2016-07-12',432.00,436,4,11),(113,'Ensaio Sobre a Cegueira','9788571645118','1995-01-01',39.90,312,14,6),(114,'Ulisses','9780141184432','1922-02-02',78.90,450,16,6),(115,'Practical Electronics for Inventors','9781259587542','2016-07-11',212.58,1056,9,3),(116,'Eu, Robô','9788576571667','1950-12-02',35.00,300,3,1),(117,'Dom Casmurro','9788525404186','1900-01-01',19.90,256,14,6);
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
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
