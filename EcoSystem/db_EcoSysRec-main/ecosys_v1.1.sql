CREATE DATABASE db_ecosystem;
-- DROP DATABASE db_ecosystem;
USE db_ecosystem;

-- Desativado para testes com uso via chave estrangeira
-- CREATE TABLE tipo_usuario(
-- id BINARY(16) NOT NULL,
-- nome VARCHAR(255) NOT NULL,
-- PRIMARY KEY (id)
-- );

CREATE TABLE endereco(
id BINARY (16) NOT NULL, 
logradouro VARCHAR (255) NOT NULL, 
numero VARCHAR (20) NOT NULL,
bairro VARCHAR (255) NOT NULL,
cidade VARCHAR (255) NOT NULL,
estado VARCHAR (255) NOT NULL,
cep VARCHAR (20) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE categoria(
id BINARY (16) NOT NULL,
nome VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tipo_status(
id BINARY (16) NOT NULL,
nome VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
);


CREATE TABLE usuario(
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
cpf_Cnpj VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
genero CHAR(100),
telefone VARCHAR(100),
senha VARCHAR(20),
tipo_Usuario_id BINARY(20),
endereco_id BINARY(20),
tipo_usuario TINYINT,
PRIMARY KEY (id),
-- FOREIGN KEY (tipo_Usuario_id) REFERENCES tipo_usuario(id), 
FOREIGN KEY (endereco_id) REFERENCES endereco(id)
);

CREATE TABLE anuncio(
id BINARY (16) NOT NULL,
titulo VARCHAR (255) NOT NULL,
url_imagem VARCHAR (255) NOT NULL,
usuario_id BINARY (16) NOT NULL,
tipo_status_id BINARY (16) NOT NULL,
disponibilidade VARCHAR (255) NOT NULL,
periodo VARCHAR (255) NOT NULL, 
PRIMARY KEY (id),
FOREIGN KEY (usuario_id) REFERENCES usuario(id),
FOREIGN KEY (tipo_status_id) REFERENCES tipo_status (id)
);

CREATE TABLE coleta (
id BINARY (16) NOT NULL,
disponibilidade TEXT (255),
anuncio_id BINARY (16) NOT NULL, 
usuario_id BINARY (16) NOT NULL,
tipo_status_id BINARY (16) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (anuncio_id) REFERENCES anuncio (id),
FOREIGN KEY (usuario_id) REFERENCES usuario (id),
FOREIGN KEY (tipo_status_id) REFERENCES tipo_status (id)
);

CREATE TABLE produto (
id BINARY (16) NOT NULL,
nome VARCHAR (255) NOT NULL,
quantidade VARCHAR (255) NOT NULL,
anuncio_id BINARY (16) NOT NULL,
categoria_id BINARY (16) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (anuncio_id) REFERENCES anuncio (id),
FOREIGN KEY (categoria_id) REFERENCES categoria (id)
);


INSERT INTO tipo_status 
VALUES ( (UUID_TO_BIN(UUID())), 
"AGUARDANDO COLETA"),
( (UUID_TO_BIN(UUID())), 
"COLETA AGENDADA"),
( (UUID_TO_BIN(UUID())), 
"COLETA CANCELADA"),
( (UUID_TO_BIN(UUID())), 
"COLETA FINALIZADA");

-- Desativado para testes e validação 
-- INSERT INTO tipo_usuario
-- VALUES ( (UUID_TO_BIN(UUID())), 
-- "ADMIN"),
-- ( (UUID_TO_BIN(UUID())), 
-- "DOADOR"),
-- ( (UUID_TO_BIN(UUID())), 
-- "COLETOR");

INSERT INTO categoria
VALUES ( (UUID_TO_BIN(UUID())), 
"INFORMATICA"),
( (UUID_TO_BIN(UUID())), 
"TELEFONIA"),
( (UUID_TO_BIN(UUID())), 
"PECAS E INFORMATICA");


-- VALIDACAO
-- SELECT * FROM tipoStatus;
-- SELECT * FROM tipousuario;
-- SELECT * FROM categoria;

-- ZERAR A TABELA
-- DELETE FROM tipoStatus;
-- DELETE FROM tipoUsuario;
-- DELETE FROM categoria;