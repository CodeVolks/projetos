CREATE DATABASE db_ecosystem;
USE db_ecosystem;

CREATE TABLE `tipo_usuario` (
  `id` BINARY(16) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `endereco` (
  `id` BINARY(16) NOT NULL,
  `logradouro` VARCHAR(255) DEFAULT NULL,
  `numero` VARCHAR(20) DEFAULT NULL,
  `bairro` VARCHAR(255) DEFAULT NULL,
  `cidade` VARCHAR(255) DEFAULT NULL,
  `estado` VARCHAR(255) DEFAULT NULL,
  `cep` VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `usuario` (
  `id` BINARY(16) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `cpf_Cnpj` VARCHAR(255) DEFAULT NULL,
  `email` VARCHAR(255) NOT NULL,
  `genero` VARCHAR(255) DEFAULT NULL,
  `telefone` VARCHAR(100) DEFAULT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `endereco_id` BINARY(16) DEFAULT NULL,
  `tipo_usuario_id` BINARY(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `endereco_id` (`endereco_id`),
  KEY `tipo_usuario_id` (`tipo_usuario_id`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`endereco_id`) REFERENCES `endereco` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE,
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`tipo_usuario_id`) REFERENCES `tipo_usuario` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE `tipo_status` (
  `id` BINARY(16) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `categoria` (
  `id` BINARY(16) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `anuncio` (
  `id` BINARY(16) NOT NULL,
  `titulo` VARCHAR(255) NOT NULL,
  `url_imagem` VARCHAR(255) NOT NULL,
  `usuario_id` BINARY(16) NOT NULL,
  `tipo_status_id` BINARY(16) NOT NULL,
  `disponibilidade` VARCHAR(255) NOT NULL,
  `periodo` VARCHAR(255) NOT NULL,
  `data_cadastro` DATE DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `tipo_status_id` (`tipo_status_id`),
  CONSTRAINT `anuncio_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `anuncio_ibfk_2` FOREIGN KEY (`tipo_status_id`) REFERENCES `tipo_status` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE `produto` (
  `id` BINARY(16) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `quantidade` INT DEFAULT NULL,
  `anuncio_id` BINARY(16) NOT NULL,
  `categoria_id` BINARY(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `anuncio_id` (`anuncio_id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncio` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `produto_ibfk_2` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE `coleta` (
  `id` BINARY(16) NOT NULL,
  `disponibilidade` text,
  `anuncio_id` BINARY(16) NOT NULL,
  `usuario_id` BINARY(16) NOT NULL,
  `tipo_status_id` BINARY(16) NOT NULL,
  `data_cadastro` DATE NOT NULL,
  PRIMARY KEY (`id`),
  KEY `anuncio_id` (`anuncio_id`),
  KEY `tipo_status_id` (`tipo_status_id`),
  CONSTRAINT `coleta_ibfk_1` FOREIGN KEY (`anuncio_id`) REFERENCES `anuncio` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `coleta_ibfk_2` FOREIGN KEY (`tipo_status_id`) REFERENCES `tipo_status` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
);

INSERT INTO categoria values(UUID_TO_BIN(UUID()),"Telefonia");
INSERT INTO categoria values(UUID_TO_BIN(UUID()),"Peças e Acessórios");
INSERT INTO categoria values(UUID_TO_BIN(UUID()),"Informatica");

INSERT INTO tipo_usuario values(UUID_TO_BIN(UUID()),"doador");
INSERT INTO tipo_usuario values(UUID_TO_BIN(UUID()),"admin");
INSERT INTO tipo_usuario values(UUID_TO_BIN(UUID()),"coletor");

INSERT INTO tipo_status values(UUID_TO_BIN(UUID()),"Coleta Agendada");
INSERT INTO tipo_status values(UUID_TO_BIN(UUID()),"Aguardando Agendamento");
INSERT INTO tipo_status values(UUID_TO_BIN(UUID()),"Coleta Finalizada");
INSERT INTO tipo_status values(UUID_TO_BIN(UUID()),"Coleta Cancelada");

