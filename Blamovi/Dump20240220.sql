CREATE DATABASE  IF NOT EXISTS `bd_blamovi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_blamovi`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_blamovi
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `id_comentario` binary(16) NOT NULL,
  `id_usuario` binary(16) NOT NULL,
  `id_post` binary(16) NOT NULL,
  `texto` varchar(255) NOT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_post` (`id_post`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (_binary '\í‚\æÆ¶\î‚C¤»mtnp',_binary '¦VøÆµ\î‚C¤»mtnp',_binary 'Æš·Æµ\î‚C¤»mtnp','texto do post');
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id_post` binary(16) NOT NULL,
  `id_video` binary(16) NOT NULL,
  `id_usuario` binary(16) NOT NULL,
  `quantidade_curtida` int DEFAULT NULL,
  `texto` varchar(255) NOT NULL,
  `foto_post` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_post`),
  KEY `id_video` (`id_video`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`),
  CONSTRAINT `post_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (_binary 'Æš·Æµ\î‚C¤»mtnp',_binary '£\Êq|Æµ\î‚C¤»mtnp',_binary '¦VøÆµ\î‚C¤»mtnp',11,'testo do post','imagem do post');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` binary(16) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(180) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `apelido` varchar(30) NOT NULL,
  `data_nasc` date NOT NULL,
  `url_img` varchar(255) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (_binary '¦VøÆµ\î‚C¤»mtnp','Abreu','abreu@gemail.com','abreu','abreu','2000-01-01','caminho imagem usuario');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `id_video` binary(16) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `diretor` varchar(255) NOT NULL,
  `duracao` varchar(30) NOT NULL,
  `temporadas` int DEFAULT NULL,
  `sinopse` varchar(255) NOT NULL,
  `ano` varchar(4) NOT NULL,
  `curtida` int DEFAULT NULL,
  `elenco` varchar(255) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `poster` varchar(100) NOT NULL,
  `trailer` varchar(255) NOT NULL,
  `classificacao` varchar(30) NOT NULL,
  `nota_total` decimal(10,0) NOT NULL,
  `quantidade_post` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (_binary '£\Êq|Æµ\î‚C¤»mtnp','titulo teste','genero1, genero2','diretor','duracao',NULL,'sinopse','2000',NULL,'elenco','filme','imagem do filme','link do treiler','classificacao',100,10);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-20 14:06:50
