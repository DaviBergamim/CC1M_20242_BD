SELECT c.nome, c.cpf, v.data_venda
FROM Clientes c
JOIN Vendas v ON c.cliente_id = v.cliente_id
JOIN Produtos p ON v.produto_id = p.produto_id
WHERE p.nome = 'Produto Exemplo';  -- Substitua 'Produto Exemplo' pelo nome do produto desejado

SELECT p.nome AS produto, p.estoque, f.nome AS fornecedor
FROM Produtos p
JOIN Fornecedores f ON p.fornecedor_id = f.fornecedor_id
WHERE p.nome = 'Produto Exemplo';  -- Substitua 'Produto Exemplo' pelo nome do produto desejado

SELECT v.data_venda, c.nome AS cliente, p.valor, p.status
FROM Vendas v
JOIN Clientes c ON v.cliente_id = c.cliente_id
JOIN Pagamentos p ON v.venda_id = p.venda_id;

SELECT c.nome AS cliente, SUM(v.valor_total) AS total_vendas
FROM Vendas v
JOIN Clientes c ON v.cliente_id = c.cliente_id
WHERE v.data_venda BETWEEN '2024-01-01' AND '2024-12-31'  -- Substitua pelas datas desejadas
GROUP BY c.cliente_id;
