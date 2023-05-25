-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.2    Database: tarefas
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `gestao_tarefas`
--

DROP TABLE IF EXISTS `gestao_tarefas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestao_tarefas` (
  `id_gestao_tarefas` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `status` varchar(45) NOT NULL,
  `criacao` varchar(12) NOT NULL,
  `conclusao` varchar(12) NOT NULL,
  PRIMARY KEY (`id_gestao_tarefas`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestao_tarefas`
--

LOCK TABLES `gestao_tarefas` WRITE;
/*!40000 ALTER TABLE `gestao_tarefas` DISABLE KEYS */;
INSERT INTO `gestao_tarefas` VALUES (1,'estudar','ler livro','pendente','2023/05/20','2023/06/01'),(2,'louça','lavar a louça','concluído','2023/05/24','2023/05/24'),(3,'mercado','ir ao supermercado, comprar frutas','pendente','2023/05/26','2023/05/26'),(4,'lista mercado','fazer a lista do supermercado com frutas','em andamento','2023/05/24','2023/05/24'),(5,'reunião equipe','realizar reunião com a equipe para organizar tarefas','pendente','2023/05/30','2023/05/30');
/*!40000 ALTER TABLE `gestao_tarefas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-24 21:47:46
