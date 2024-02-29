-- Realiza acesso ao banco GASTSIX
CREATE DATABASE gastsix;

USE gastsix;


-- Criação da tabela USUARIO --
CREATE TABLE usuario (
    matricula VARCHAR(255) PRIMARY KEY UNIQUE NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE NOT NULL,
    cpf VARCHAR(255) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    funcao INT NOT NULL,
    data_admissao DATE,
	setor CHAR(1) 
);


-- Criação da tabela FORNECEDOR --
CREATE TABLE fornecedor (
	id_fornecedor BINARY(16) PRIMARY KEY UNIQUE NOT NULL,
    nome VARCHAR(255) NOT NULL,
    cnpj VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255),
    inscricao_estadual VARCHAR(255),
    razao_social VARCHAR(255),
    endereco VARCHAR(255)
);

-- Criação da tabela PRODUTO --
CREATE TABLE produto (
	id_produto BINARY(16) NOT NULL PRIMARY KEY UNIQUE,
    descricao VARCHAR(255) NOT NULL,
    partnumber VARCHAR(255) UNIQUE NOT NULL,
    codigoSAP VARCHAR(255),
    setor CHAR(1)
);

-- Criação da tabela PEDIDO --
CREATE TABLE pedido (
	id_pedido BINARY(16) PRIMARY KEY UNIQUE NOT NULL,
    observacoes VARCHAR(255),
    usuario_supervisor VARCHAR(255) NOT NULL,
    setor CHAR(1) NOT NULL,
        -- Atributos estrangeiros
    FOREIGN KEY (usuario_supervisor) REFERENCES usuario(matricula)				-- REFERENCIA MATRICULA NA TABELA DE USUARIO
);

CREATE TABLE pedidoproduto(
	id_pedidoproduto BINARY(16) PRIMARY KEY UNIQUE NOT NULL,
	id_pedido BINARY(16) NOT NULL,
    id_produto BINARY(16) NOT NULL,
    quantidade_produto INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
	FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);
