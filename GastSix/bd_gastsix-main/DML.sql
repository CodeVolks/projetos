-- INSERIMENTO DE DADOS --
-- TABELA USUARIOS

INSERT INTO usuario (matricula, email, cpf, nome, senha, funcao, data_admissao, setor)
VALUES ('001', 'maria@gmail.com', '11122233344', 'Maria Oliveira', 'senhaMaria', '0', '20230115', null);

INSERT INTO usuario (matricula, email, cpf, nome, senha, funcao, data_admissao, setor)
VALUES ('002', 'carlos@gmail.com', '44455566677', 'Carlos Santos', 'senhaCarlos', '1', '20220928', "A");

INSERT INTO usuario (matricula, email, cpf, nome, senha, funcao, data_admissao, setor)
VALUES ('003', 'amanda@gmail.com', '88899900011', 'Amanda Silva', 'senhaAmanda', '2', '20230310', "B");

INSERT INTO usuario (matricula, email, cpf, nome, senha, funcao, data_admissao)
VALUES ('004', 'roberto@gmail.com', '12345678900', 'Roberto Souza', 'senhaRoberto', '0', '20221205');

INSERT INTO usuario (matricula, email, cpf, nome, senha, funcao, data_admissao)
VALUES ('005', 'juliana@gmail.com', '98765432100', 'Juliana Lima', 'senhaJuliana', '1', '20221118');

INSERT INTO usuario (matricula, email, cpf, nome, senha, funcao, data_admissao)
VALUES ('006', 'lucas@gmail.com', '55566677788', 'Lucas Oliveira', 'senhaLucas', '2', '20230220');

INSERT INTO usuario (matricula, email, cpf, nome, senha, funcao, data_admissao)
VALUES ('007', 'fernanda@gmail.com', '77788899900', 'Fernanda Costa', 'senhaFernanda', '0', '20221012');

INSERT INTO usuario (matricula, email, cpf, nome, senha, funcao, data_admissao)
VALUES ('008', 'pedro@gmail.com', '22233344455', 'Pedro Rocha', 'senhaPedro', '1', '20230408');

INSERT INTO usuario (matricula, email, cpf, nome, senha, funcao, data_admissao)
VALUES ('009', 'larissa@gmail.com', '99900011122', 'Larissa Santos', 'senhaLarissa', '2', '20220825');

INSERT INTO usuario (matricula, email, cpf, nome, senha, funcao, data_admissao)
VALUES ('010', 'rafaela@gmail.com', '66677788899', 'Rafaela Pereira', 'senhaRafaela', '2', '20230515');



-- TABELA FORNECEDOR
INSERT INTO fornecedor (id_fornecedor, nome, cnpj, email, inscricao_estadual, razao_social, endereco)
VALUES (UUID_TO_BIN(UUID()), 'EMPRESA A', '12345678000190', 'fornecedor1@examplecom', '123456789', 'Empresa A', 'Rua Principal - 123');

INSERT INTO fornecedor (id_fornecedor, nome, cnpj, email, inscricao_estadual, razao_social, endereco)
VALUES (UUID_TO_BIN(UUID()), 'EMPRESA B', '98765432000121', 'fornecedor2@examplecom', '987654321', 'Empresa B', 'Avenida Secundária - 456');

INSERT INTO fornecedor (id_fornecedor, nome, cnpj, email, inscricao_estadual, razao_social, endereco)
VALUES (UUID_TO_BIN(UUID()), 'EMPRESA C', '11223344000156', 'fornecedor3@examplecom', '1122334455', 'Empresa C', 'Travessa da Rua Principal - 789');

INSERT INTO fornecedor (id_fornecedor, nome, cnpj, email, inscricao_estadual, razao_social, endereco)
VALUES (UUID_TO_BIN(UUID()), 'EMPRESA D', '22334455000178', 'fornecedor4@examplecom', '2233445566', 'Empresa D', 'Praça Central - 321');

INSERT INTO fornecedor (id_fornecedor, nome, cnpj, email, inscricao_estadual, razao_social, endereco)
VALUES (UUID_TO_BIN(UUID()), 'EMPRESA E', '33445566000190', 'fornecedor5@examplecom', '3344556677', 'Empresa E', 'Alameda dos Anjos - 567');

INSERT INTO fornecedor (id_fornecedor, nome, cnpj, email, inscricao_estadual, razao_social, endereco)
VALUES (UUID_TO_BIN(UUID()), 'EMPRESA F', '44556677000112', 'fornecedor6@examplecom', '4455667788', 'Empresa F', 'Estrada do Interior -890');

INSERT INTO fornecedor (id_fornecedor, nome, cnpj, email, inscricao_estadual, razao_social, endereco)
VALUES (UUID_TO_BIN(UUID()), 'EMPRESA G', '55667788000134', 'fornecedor7@examplecom', '5566778899', 'Empresa G', 'Avenida Principal - 1234');

INSERT INTO fornecedor (id_fornecedor, nome, cnpj, email, inscricao_estadual, razao_social, endereco)
VALUES (UUID_TO_BIN(UUID()), 'EMPRESA H', '66778899000156', 'fornecedor8@examplecom', '6677889900', 'Empresa H', 'Rua da Praia - 5678');

INSERT INTO fornecedor (id_fornecedor, nome, cnpj, email, inscricao_estadual, razao_social, endereco)
VALUES (UUID_TO_BIN(UUID()), 'EMPRESA I', '77889900000178', 'fornecedor9@examplecom', '7788990011', 'Empresa I', 'Travessa da Avenida - 4321');

INSERT INTO fornecedor (id_fornecedor, nome, cnpj, email, inscricao_estadual, razao_social, endereco)
VALUES (UUID_TO_BIN(UUID()), 'EMPRESA J', '88990011000190', 'fornecedor10@examplecom', '8899001122', 'Empresa J', 'Rua do Comércio 9876');

-- TABELA PRODUTO
INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Produto A', '123456', 'SAP123', 'A');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Produto B', '789012', 'SAP789', 'B');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Produto C', '345678', 'SAP345', 'C');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Produto D', '901234', 'SAP901', 'A');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Produto E', '567890', 'SAP567', 'B');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Produto F', '234567', 'SAP234', 'C');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Produto G', '890123', 'SAP890', 'A');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Produto H', '456789', 'SAP456', 'B');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Produto I', '012345', 'SAP012', 'C');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Produto J', '678901', 'SAP678', 'A');


-- TABELA PEDIDO
INSERT INTO pedido
VALUES (UUID_TO_BIN(UUID()), 'Pedido 1 Observações', '002', 'A');

-- TABELA PRODUTO

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Pedido 2 Observações', '003', '004', 'B');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Pedido 3 Observações', '005', '006', 'C');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Pedido 4 Observações', '007', '008', 'A');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Pedido 5 Observações', '009', '010', 'B');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Pedido 6 Observações', '001', '002', 'C');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Pedido 7 Observações', '013', '004', 'A');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Pedido 8 Observações', '015', '006', 'B');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Pedido 9 Observações', '017', '008', 'C');

INSERT INTO produto (id_produto, descricao, partnumber, codigoSAP, setor)
VALUES (UUID_TO_BIN(UUID()), 'Pedido 10 Observações', '019', '010', 'A');

select BIN_TO_UUID(id_pedido) from pedido;
select BIN_TO_UUID(id_produto) from produto;

INSERT INTO pedidoproduto (id_pedidoproduto, id_pedido, id_produto, quantidade_produto)
VALUES (
    UUID_TO_BIN(UUID()), -- Gera um novo UUID para id_pedidoproduto
    UUID_TO_BIN("061d105d-c6e1-11ee-9c08-b445067b803e"), -- UUID específico para id_pedido
    UUID_TO_BIN("0619084a-c6e1-11ee-9c08-b445067b803e"), -- UUID específico para id_produto
    10 -- Valor para quantidade_produto
);

insert into pedidoproduto values(
	(UUID_TO_BIN(UUID()),UUID_TO_BIN("9f8ee780-c6d0-11ee-9c08-b445067b803e"), UUID_TO_BIN("644bf3b7-c6cf-11ee-9c08-b445067b803e"), 20
);

insert into pedidoproduto values(
	UUID_TO_BIN("061d105d-c6e1-11ee-9c08-b445067b803e"), UUID_TO_BIN("0619084a-c6e1-11ee-9c08-b445067b803e"), 100
);


