CREATE DATABASE  IF NOT EXISTS `bd_sasc_react` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_sasc_react`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: bdsascreact.mysql.database.azure.com    Database: bd_sasc_react
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
-- Table structure for table `tb_consumo_equipamento`
--

DROP TABLE IF EXISTS `tb_consumo_equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_consumo_equipamento` (
  `id` binary(16) NOT NULL,
  `consumo` decimal(38,2) DEFAULT NULL,
  `data_consumo` datetime NOT NULL,
  `id_equipamento` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idEquipamento` (`id_equipamento`),
  CONSTRAINT `tb_consumo_equipamento_ibfk_1` FOREIGN KEY (`id_equipamento`) REFERENCES `tb_equipamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_consumo_equipamento`
--

LOCK TABLES `tb_consumo_equipamento` WRITE;
/*!40000 ALTER TABLE `tb_consumo_equipamento` DISABLE KEYS */;
INSERT INTO `tb_consumo_equipamento` VALUES (_binary '&ÃFÂ)Ã\�',750.00,'2023-11-01 11:59:48',_binary '0pÂÃ®Â'),(_binary '\'-ÂÂ)Ã\�',748.03,'2023-11-01 23:59:45',_binary '0pÂÃ®Â'),(_binary '\'Â½Â)Ã\�',749.57,'2023-11-02 11:59:50',_binary '0pÂÃ®Â'),(_binary '\'ÃÂ)Ã\�',750.07,'2023-11-02 23:59:00',_binary '0pÂÃ®Â'),(_binary '( Â)Ã®Â',780.17,'2023-11-03 11:59:13',_binary '0pÂÃ®Â'),(_binary '(QÂ)Ã®Â',778.43,'2023-11-03 23:59:07',_binary '0pÂÃ®Â'),(_binary '(ÂÃ¦Â)',772.33,'2023-11-04 11:59:37',_binary '0pÂÃ®Â'),(_binary '(ÃÂ¶Â)',702.08,'2023-11-04 23:59:37',_binary '0pÂÃ®Â'),(_binary '\�#\�V�LY�O;�@\�',757.00,'2022-02-01 00:00:00',_binary '0pÂÃ®Â'),(_binary '�`5%Jh� Ŋ#f̷',757.00,'2022-02-01 00:00:00',_binary '0pÂÃ®Â'),(_binary '\�h�,JJ��6��\�\�]',757.00,'2022-02-01 00:00:00',_binary '0pÂÃ®Â'),(_binary 'AéðÖî\0',180.05,'2023-11-01 11:59:48',_binary 'Â«nÂÃ\�'),(_binary 'A÷qÖî\0',174.01,'2023-11-01 23:59:48',_binary 'Â«nÂÃ\�'),(_binary 'Bw¿Öî\0\�',169.41,'2023-11-02 11:59:18',_binary 'Â«nÂÃ\�'),(_binary 'BÄµÖî\0',163.35,'2023-11-02 23:59:55',_binary 'Â«nÂÃ\�'),(_binary 'B$ùÖî\0\�',192.22,'2023-11-03 11:59:08',_binary 'Â«nÂÃ\�'),(_binary 'B0ÒÖî\0\�',190.04,'2023-11-03 23:59:18',_binary 'Â«nÂÃ\�'),(_binary 'BFÐÖî\0\�',180.56,'2023-11-04 11:59:09',_binary 'Â«nÂÃ\�'),(_binary 'BRÍÖî\0\�',192.22,'2023-11-04 23:59:08',_binary 'Â«nÂÃ\�'),(_binary 'Bo]&Öî\0',169.41,'2023-11-05 11:59:18',_binary 'Â«nÂÃ\�'),(_binary 'BÖî',167.32,'2023-11-05 23:59:18',_binary 'Â«nÂÃ\�'),(_binary 'BµÂÖî',170.05,'2023-11-06 11:59:18',_binary 'Â«nÂÃ\�'),(_binary 'B§2Öî\0\�',171.45,'2023-11-06 23:59:19',_binary 'Â«nÂÃ\�'),(_binary 'E\�(\��JO#�\�=\�\�;�',757.00,'2022-02-01 00:00:00',_binary '0pÂÃ®Â'),(_binary 'wl�uC֧\��\�i\�m',757.00,'2022-02-01 00:00:00',_binary '0pÂÃ®Â'),(_binary '�\��\�X�Mf��\�Z\�b\�q',757.00,'2022-02-01 00:00:00',_binary '0pÂÃ®Â'),(_binary '�w\0��\�L���\�#��',757.00,'2022-02-01 00:00:00',_binary '0pÂÃ®Â'),(_binary '�|=\'@�M��k���͒\�',757.00,'2022-02-01 00:00:00',_binary '0pÂÃ®Â'),(_binary '�\����.HJ�\�\�u�\�>',757.00,'2022-02-01 00:00:00',_binary '0pÂÃ®Â'),(_binary 'Ã¸}Ã Â)',772.33,'2023-11-05 11:59:37',_binary '0pÂÃ®Â'),(_binary 'Ã¸~JÃÂ)',702.08,'2023-11-05 23:59:37',_binary '0pÂÃ®Â'),(_binary 'Ã¸~Â,Â)',750.00,'2023-11-06 11:59:48',_binary '0pÂÃ®Â'),(_binary 'Ã¸~ÃÃÂ\�',748.03,'2023-11-06 23:59:45',_binary '0pÂÃ®Â'),(_binary 'đя\�MI��/��\�\�e',750.00,'2020-01-31 21:00:00',_binary '0pÂÃ®Â');
/*!40000 ALTER TABLE `tb_consumo_equipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_endereco`
--

DROP TABLE IF EXISTS `tb_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_endereco` (
  `id` binary(16) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `logradouro` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_endereco`
--

LOCK TABLES `tb_endereco` WRITE;
/*!40000 ALTER TABLE `tb_endereco` DISABLE KEYS */;
INSERT INTO `tb_endereco` VALUES (_binary '���f��O��4�Ԟ�)\�','03002000','Rua Maceio','100','Adrianopolis','São Paulo','SP'),(_binary '�7wDGK��q��Z��,','03002000','Rua Maceio','100','Adrianopolis','São Paulo','SP'),(_binary 'ÃÂÃÂ\�','00000001','R. CentenÃÂÃÂ¡rio do Sul',' 2-90','Demarchi','SÃÂÃÂ£o Bernardo do Campo','SP'),(_binary 'ÃÂ,ÃÂ\�','00000002','Rodovia Luis Augusto de Oliveira','Km 148.8 S/n','Zona Rural','SÃÂÃÂ£o Carlos','SP'),(_binary 'ÃÂBÃÂ\�','00000004','R. Antonio Singer','6751','Campo Largo da Roseira','SÃÂÃÂ£o JosÃÂÃÂ© dos Pinhais','SP'),(_binary 'ÃÂTÃÂ\�','00000003','Av. Carlos Pedroso da Silveira','10000','Jardim Santa Tereza','TaubatÃÂÃÂ©','SP'),(_binary '\�\��\'�NL���\�\�s�\n','27512-230','Rua Volkswagen','10','Pedra Selada','Resende','Rio de Janeiro');
/*!40000 ALTER TABLE `tb_endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_equipamento`
--

DROP TABLE IF EXISTS `tb_equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_equipamento` (
  `id` binary(16) NOT NULL,
  `id_modelo` binary(16) NOT NULL,
  `data_compra` datetime(6) DEFAULT NULL,
  `id_setor` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_modelo` (`id_modelo`),
  KEY `id_setor` (`id_setor`),
  CONSTRAINT `tb_equipamento_ibfk_1` FOREIGN KEY (`id_modelo`) REFERENCES `tb_modelo` (`id`),
  CONSTRAINT `tb_equipamento_ibfk_2` FOREIGN KEY (`id_setor`) REFERENCES `tb_setor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_equipamento`
--

LOCK TABLES `tb_equipamento` WRITE;
/*!40000 ALTER TABLE `tb_equipamento` DISABLE KEYS */;
INSERT INTO `tb_equipamento` VALUES (_binary 'Â½]ÂÃ\�',_binary 'ÃÂ¦ÃÂ','2021-08-25 00:00:00.000000',_binary 'ÃÂÃÂ¾'),(_binary ',Ã¨ÂÃ\�',_binary 'ÃÂ¦ÃÂ','2022-08-30 00:00:00.000000',_binary 'ÃÂÃÂ'),(_binary 'q#ÂÃ®Â',_binary 'ÃÂ¦ÃÂ','2021-08-25 00:00:00.000000',_binary 'ÃÂÃÂ¬'),(_binary 'Â²Â²Â',_binary 'ÃÂ¦ÃÂ','2021-08-25 00:00:00.000000',_binary 'ÃÂ*ÃÂ'),(_binary 'Ã´Â¸Â',_binary 'ÃÂ¦ÃÂ','2021-06-15 00:00:00.000000',_binary 'ÃÂ0ÃÂ\�'),(_binary '0pÂÃ®Â',_binary 'ÃÂ¦ÃÂ','2021-06-15 00:00:00.000000',_binary 'ÃÂ?.Ã\�'),(_binary 'mÂ½ÂÃ\�',_binary 'ÃÂ¦ÃÂ','2021-06-15 00:00:00.000000',_binary 'ÃÂyÃÂ\�'),(_binary 'Â«nÂÃ\�',_binary 'ÃÂ3ÃÂ\�','2021-06-15 00:00:00.000000',_binary 'ÃÂÃÂ¬'),(_binary 'Ã´pÂÃ\�',_binary 'ÃÂ3ÃÂ\�','2021-06-15 00:00:00.000000',_binary 'ÃÂ\"ÃÂ\�'),(_binary '7GÂÃ®Â',_binary 'ÃÂ3ÃÂ\�','2021-06-15 00:00:00.000000',_binary 'ÃÂ?.Ã\�'),(_binary 'seÂÃ®Â',_binary 'ÃÂ3ÃÂ\�','2021-06-15 00:00:00.000000',_binary 'ÃÂhrdÃ\�'),(_binary 'Â®ÃµÂ',_binary 'ÃÂ3ÃÂ\�','2021-06-15 00:00:00.000000',_binary 'ÃÂyÃÂ\�');
/*!40000 ALTER TABLE `tb_equipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_fabricante`
--

DROP TABLE IF EXISTS `tb_fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_fabricante` (
  `id` binary(16) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `cnpj` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titulo` (`titulo`),
  UNIQUE KEY `cnpj` (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_fabricante`
--

LOCK TABLES `tb_fabricante` WRITE;
/*!40000 ALTER TABLE `tb_fabricante` DISABLE KEYS */;
INSERT INTO `tb_fabricante` VALUES (_binary ' 0��iL�{��9�','ADLINK Technology','04.830.102/0001-95'),(_binary ':o�\Z&EH�Ug\�h$Kw','Adek Technical Sales','60855574001307'),(_binary 'tÃÂzÃÂ','DELL','72381189001001'),(_binary 'tÃÂN=Ã\�','VAIO','23456789012341'),(_binary 'tÃÂU#Ã\�','APPLE','00623904000174'),(_binary 'tÃÂWÃÂ','SAMSUNG','00280273000218'),(_binary 'tÃÂYÃ\�','ACER','01575428000125'),(_binary 'tÃÂZ,Ã\�','Lenovo','98745428000125');
/*!40000 ALTER TABLE `tb_fabricante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_funcionario`
--

DROP TABLE IF EXISTS `tb_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_funcionario` (
  `id` binary(16) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `id_setor` binary(16) DEFAULT NULL,
  `id_tipofuncionario` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg2bv14w6jgjm3vfhdwhklt6jt` (`id_setor`),
  KEY `FKimvynjj7kocwebgd138j556ll` (`id_tipofuncionario`),
  CONSTRAINT `FKg2bv14w6jgjm3vfhdwhklt6jt` FOREIGN KEY (`id_setor`) REFERENCES `tb_setor` (`id`),
  CONSTRAINT `FKimvynjj7kocwebgd138j556ll` FOREIGN KEY (`id_tipofuncionario`) REFERENCES `tb_tipofuncionario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_funcionario`
--

LOCK TABLES `tb_funcionario` WRITE;
/*!40000 ALTER TABLE `tb_funcionario` DISABLE KEYS */;
INSERT INTO `tb_funcionario` VALUES (_binary '6!\0\��H��\�5��\�\��','mariasantos@email.com','Maria Santos','$2a$10$3dkAPjiGLGyPIB3S7PUFGeT8T4XB2hszB1JiLgbxAQRGta1AlS3eO',_binary 'ÃÂÃÂ¾',_binary '.H\���<I;��|��\�Es'),(_binary '8�\r��JC�1C�F0\�U','liandra@email.com','Liandra Morais','$2a$10$2tyHEcFw06krzcbUvQHVWuS7yOrqGD4CKUNTLzUSwQY.sXfCslDrC',_binary 'ÃÂ0ÃÂ\�',_binary '\�\�\��JU�0�`\�/\�'),(_binary ']\���>L��7�/}\�$g','denis@email.com','Denis Santana','$2a$10$ZFrKNjh8m1V0yy1Kr.eVKOP.KzShIrcRYx/idUB0BTmfKOMwzMDa2',_binary 'ÃÂXÃÂ\�',_binary '\�\�\��JU�0�`\�/\�'),(_binary '_\�\�R6XI�QON','felipe@email.com','Felipe Ferreira','$2a$10$JYa.v5DnXAjlJBoucj.9Vewug9EP4VwX7RC5r6hZPn2cqmWfetAa.',_binary 'ÃÂ)ÃÂ',_binary '\�\�\��JU�0�`\�/\�'),(_binary '�\��>YOk�F�\�','joaofranciscodasilva@email.com','João Francisco da Silva','$2a$10$PLHieyNP/ZvCk.PiMQG2cOlP2VTf7AuPOZptxWojF1qyw.kHRmGAa',_binary 'ÃÂÃÂ',_binary '.H\���<I;��|��\�Es'),(_binary '\�Kj�\�\'G��{�\�0','trindade@email.com','Gabriel Trindade','$2a$10$ym6FShleU9yA3ceciwrvVeWzSXUKCLB0kR//RtJgYl70gXf9hSCXe',_binary 'ÃÂÃÂ¾',_binary '\�\�\��JU�0�`\�/\�');
/*!40000 ALTER TABLE `tb_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_modelo`
--

DROP TABLE IF EXISTS `tb_modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_modelo` (
  `id` binary(16) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `consumo_nominal` decimal(38,2) DEFAULT NULL,
  `id_fabricante` binary(16) NOT NULL,
  `id_tipoequipamento` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_fabricante` (`id_fabricante`),
  KEY `id_tipoequipamento` (`id_tipoequipamento`),
  CONSTRAINT `tb_modelo_ibfk_1` FOREIGN KEY (`id_fabricante`) REFERENCES `tb_fabricante` (`id`),
  CONSTRAINT `tb_modelo_ibfk_2` FOREIGN KEY (`id_tipoequipamento`) REFERENCES `tb_tipoequipamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_modelo`
--

LOCK TABLES `tb_modelo` WRITE;
/*!40000 ALTER TABLE `tb_modelo` DISABLE KEYS */;
INSERT INTO `tb_modelo` VALUES (_binary 'ÃÂ¦ÃÂ','R750 Xeon 6330',14000.00,_binary 'tÃÂzÃÂ',_binary 'aQÃÂ±NÃ\�'),(_binary 'ÃÂ3ÃÂ\�','Dgc St50',250.00,_binary 'tÃÂZ,Ã\�',_binary 'aQÃÂ±NÃ\�');
/*!40000 ALTER TABLE `tb_modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_setor`
--

DROP TABLE IF EXISTS `tb_setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_setor` (
  `id` binary(16) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `id_unidade` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titulo` (`titulo`),
  KEY `id_unidade` (`id_unidade`),
  CONSTRAINT `tb_setor_ibfk_1` FOREIGN KEY (`id_unidade`) REFERENCES `tb_unidade` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_setor`
--

LOCK TABLES `tb_setor` WRITE;
/*!40000 ALTER TABLE `tb_setor` DISABLE KEYS */;
INSERT INTO `tb_setor` VALUES (_binary '�\�\rF_��\�L\�\�','Qualidade ',_binary '\\ÃÂÃÂ'),(_binary '$�9sN4�B[�ש%','Montagem II',_binary '.ÃÂ²ÃÂ\�'),(_binary '9\�AȧJ��L���{A�','Montagem III',_binary '/ÃÂ¹ÃÂ'),(_binary '�,�\\\�\�I\�mh�\r�\�','Montagem I',_binary '\\ÃÂÃÂ'),(_binary 'ÃÂÃÂ¾','SBC - 03/20',_binary '.ÃÂ²ÃÂ\�'),(_binary 'ÃÂÃÂ','SBC - 04/21',_binary '.ÃÂ²ÃÂ\�'),(_binary 'ÃÂÃÂ¬','SBC - 05/22',_binary '.ÃÂ²ÃÂ\�'),(_binary 'ÃÂ)ÃÂ','SC - 17/02',_binary '/ÃÂ¹ÃÂ'),(_binary 'ÃÂ*ÃÂ','SC - 18/03',_binary '/ÃÂ¹ÃÂ'),(_binary 'ÃÂ\"ÃÂ\�','SC - 19/04',_binary '/ÃÂ¹ÃÂ'),(_binary 'ÃÂ0ÃÂ\�','T - 07/14',_binary '/\Z4_ÃÂÃ'),(_binary 'ÃÂ?.Ã\�','T - 08/15',_binary '/\Z4_ÃÂÃ'),(_binary 'ÃÂJÃÂ','T - 09/16',_binary '/\Z4_ÃÂÃ'),(_binary 'ÃÂXÃÂ\�','SJP - 10/01',_binary '\\ÃÂÃÂ'),(_binary 'ÃÂhrdÃ\�','SJP - 11/09',_binary '\\ÃÂÃÂ'),(_binary 'ÃÂyÃÂ\�','SJP - 12/13',_binary '\\ÃÂÃÂ'),(_binary 'ۖ2\�KLD�o�tM \�','Pintura Geral',_binary '/\Z4_ÃÂÃ');
/*!40000 ALTER TABLE `tb_setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipoequipamento`
--

DROP TABLE IF EXISTS `tb_tipoequipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipoequipamento` (
  `id` binary(16) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tipo` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipoequipamento`
--

LOCK TABLES `tb_tipoequipamento` WRITE;
/*!40000 ALTER TABLE `tb_tipoequipamento` DISABLE KEYS */;
INSERT INTO `tb_tipoequipamento` VALUES (_binary 'aÃÂ¡ÃÂ\�','Bridge'),(_binary 'ae]MÃÂÃ','OLT'),(_binary 'aÃÂ^ÃÂ','Repetidor'),(_binary 'aÃÂ·p`Ã\�','Roteador'),(_binary 'aQÃÂ±NÃ\�','Servidor'),(_binary 'aÃÂ·B Ã\�','Splitter'),(_binary 'aÃÂ°ÃÂ\�','Switch'),(_binary 'awÃÂ.Ã\�','Unidade de Rede ÃÂÃÂptica');
/*!40000 ALTER TABLE `tb_tipoequipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipofuncionario`
--

DROP TABLE IF EXISTS `tb_tipofuncionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipofuncionario` (
  `id` binary(16) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipofuncionario`
--

LOCK TABLES `tb_tipofuncionario` WRITE;
/*!40000 ALTER TABLE `tb_tipofuncionario` DISABLE KEYS */;
INSERT INTO `tb_tipofuncionario` VALUES (_binary '.H\���<I;��|��\�Es','PADRAO'),(_binary '\�\�\��JU�0�`\�/\�','ADM');
/*!40000 ALTER TABLE `tb_tipofuncionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_unidade`
--

DROP TABLE IF EXISTS `tb_unidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_unidade` (
  `id` binary(16) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `id_endereco` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`),
  KEY `id_endereco` (`id_endereco`),
  CONSTRAINT `tb_unidade_ibfk_1` FOREIGN KEY (`id_endereco`) REFERENCES `tb_endereco` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_unidade`
--

LOCK TABLES `tb_unidade` WRITE;
/*!40000 ALTER TABLE `tb_unidade` DISABLE KEYS */;
INSERT INTO `tb_unidade` VALUES (_binary '\\ÃÂÃÂ','Unidade SÃÂÃÂ£o JosÃÂÃÂ© dos Pinhais',_binary 'ÃÂBÃÂ\�'),(_binary '.ÃÂ²ÃÂ\�','Unidade Anchieta - SÃÂÃÂ£o Bernardo do Campo',_binary 'ÃÂÃÂ\�'),(_binary '/ÃÂ¹ÃÂ','Unidade SÃÂÃÂ£o Carlos',_binary 'ÃÂ,ÃÂ\�'),(_binary '/\Z4_ÃÂÃ','Unidade TaubatÃÂÃÂ©',_binary 'ÃÂTÃÂ\�');
/*!40000 ALTER TABLE `tb_unidade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-09 21:56:38
