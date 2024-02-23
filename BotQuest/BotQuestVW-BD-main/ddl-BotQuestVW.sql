DROP DATABASE bd_bqvw;

CREATE DATABASE bd_bqvw;

USE bd_bqvw;

CREATE TABLE tb_setor(
    id BINARY(16) NOT NULL,
    cod_setor TINYINT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_usuario(
	id BINARY(16) NOT NULL,
    id_setor BINARY(16) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    vw_id INT NOT NULL UNIQUE,
    data_nascimento DATETIME NOT NULL,
    url_img VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (id_setor) REFERENCES tb_setor(id)
);

CREATE TABLE tb_pergunta(
	id BINARY(16) NOT NULL,
	id_setor BINARY(16) NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY ( id_setor) REFERENCES tb_setor(id)
);

CREATE TABLE tb_chamado(
	id BINARY(16) NOT NULL,
    id_usuario BINARY(16) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    situacao TINYINT NOT NULL,
    data_chamado DATETIME NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_usuario) REFERENCES tb_usuario(id)
);
