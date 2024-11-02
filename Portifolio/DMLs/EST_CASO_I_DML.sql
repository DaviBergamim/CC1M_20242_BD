INSERT INTO Fornecedores (fornecedor_id, nome_empresa, endereco, pais_origem, pessoa_contato, telefone)
VALUES (1, 'Fornecedor XYZ', 'Rua A, 123', 'Brasil', 'João Silva', '(11) 1234-5678');

INSERT INTO Produtos (produto_id, nome_produto, descricao, especificacoes_tecnicas, unidade_medida, preco_unitario, quantidade_estoque, localizacao_estoque, ponto_ressuprimento)
VALUES (1, 'Produto A', 'Descrição do Produto A', 'Especificação Técnica A', 'unidades', 10.00, 100, 'Armazém 1', 20);

INSERT INTO Pedidos_Compra (pedido_id, data_pedido, data_entrega, status_pedido, fornecedor_id)
VALUES (1, '2024-11-01', '2024-11-10', 'em processamento', 1);

INSERT INTO Itens_Pedido (item_id, pedido_id, produto_id, quantidade_solicitada)
VALUES (1, 1, 1, 50);

INSERT INTO Recebimento_Materiais (recebimento_id, pedido_id, data_recebimento, quantidade_recebida, condicao)
VALUES (1, 1, '2024-11-11', 50, 'aceito');

INSERT INTO Filiais (filial_id, nome, endereco, capacidade_armazenamento)
VALUES (1, 'Filial A', 'Rua B, 456', 500);

INSERT INTO Distribuicao (distribuicao_id, filial_id, produto_id, quantidade_distribuida, data_distribuicao)
VALUES (1, 1, 1, 30, '2024-11-12');

UPDATE Fornecedores
SET telefone = '(11) 9876-5432', endereco = 'Avenida B, 456'
WHERE fornecedor_id = 1;

UPDATE Produtos
SET quantidade_estoque = quantidade_estoque - 30
WHERE produto_id = 1;

UPDATE Pedidos_Compra
SET status_pedido = 'enviado'
WHERE pedido_id = 1;

DELETE FROM Fornecedores
WHERE fornecedor_id = 1;

DELETE FROM Produtos
WHERE produto_id = 1;

DELETE FROM Pedidos_Compra
WHERE pedido_id = 1;

REPLACE INTO Fornecedores (fornecedor_id, nome_empresa, endereco, pais_origem, pessoa_contato, telefone)
VALUES (1, 'Fornecedor Novo', 'Rua C, 789', 'Brasil', 'Maria Santos', '(11) 1234-5678');

REPLACE INTO Produtos (produto_id, nome_produto, descricao, especificacoes_tecnicas, unidade_medida, preco_unitario, quantidade_estoque, localizacao_estoque, ponto_ressuprimento)
VALUES (1, 'Produto A', 'Nova descrição do Produto A', 'Nova especificação técnica', 'unidades', 12.00, 80, 'Armazém 2', 25);
