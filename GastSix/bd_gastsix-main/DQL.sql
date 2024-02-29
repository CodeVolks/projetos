SELECT * FROM usuario;
SELECT * FROM fornecedor;
SELECT * FROM produto;
SELECT * FROM pedido;
SELECT * FROM pedidoProduto;
SELECT BIN_TO_UUID(id_pedido), BIN_TO_UUID(id_produto) FROM pedidoproduto;
SELECT BIN_TO_UUID(id_pedido) FROM pedido;
SELECT BIN_TO_UUID(id_produto) FROM produto;