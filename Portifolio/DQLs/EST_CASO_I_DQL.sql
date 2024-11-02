SELECT f.nome_empresa, p.nome_produto
FROM Fornecedores f
JOIN Produtos p ON f.fornecedor_id = p.fornecedor_id;

SELECT nome_produto, quantidade_estoque, localizacao_armazenagem
FROM Produtos
WHERE nome_produto = 'Nome do Produto';

SELECT p.pedido_id, p.data_pedido, p.status, f.nome_empresa
FROM PedidosCompra p
JOIN Fornecedores f ON p.fornecedor_id = f.fornecedor_id;

INSERT INTO RecebimentosMateriais (pedido_id, data_recebimento, quantidade_recebida, condicao)
VALUES (1, '2024-11-01', 100, 'aceito');

SELECT f.nome_empresa, SUM(r.quantidade_recebida) AS total_recebido
FROM RecebimentosMateriais r
JOIN PedidosCompra p ON r.pedido_id = p.pedido_id
JOIN Fornecedores f ON p.fornecedor_id = f.fornecedor_id
GROUP BY f.nome_empresa;

INSERT INTO Transferencias (produto_id, filial_id, quantidade_transferida, data_transferencia)
VALUES (1, 2, 50, '2024-11-02');
