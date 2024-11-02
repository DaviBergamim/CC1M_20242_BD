INSERT INTO CLIENTES (id_cliente, nome, cpf, data_nascimento, endereco, status_fidelidade)
VALUES (1, 'Ana Souza', '123.456.789-00', '1985-04-20', 'Rua X, 300', 'VIP');

INSERT INTO PRODUTOS (id_produto, nome, preco, estoque, fornecedor_id)
VALUES 
(1, 'Computador', 3000.00, 10, 1),  -- Computador fornecido pelo fornecedor ID 1
(2, 'Celular', 1500.00, 20, 2);     -- Celular fornecido pelo fornecedor ID 2

INSERT INTO FORNECEDORES (id_fornecedor, nome, contato)
VALUES 
(1, 'Tech Supplies', 'contact@techsupplies.com'), 
(2, 'Gadgets Inc.', 'contact@gadgetsinc.com');

INSERT INTO VENDAS (id_venda, cliente_id, data_venda, total)
VALUES (1, 1, '2024-01-15', 4500.00);  -- Venda para Ana Souza

INSERT INTO VENDAS_PRODUTOS (id_venda, id_produto, quantidade)
VALUES 
(1, 1, 1),  -- 1 Computador
(1, 2, 1);  -- 1 Celular

INSERT INTO PAGAMENTOS (id_pagamento, venda_id, data_pagamento, valor, status)
VALUES (1, 1, '2024-01-16', 4500.00, 'pago');

UPDATE CLIENTES 
SET endereco = 'Avenida Y, 400'
WHERE id_cliente = 1;

UPDATE PRODUTOS 
SET estoque = estoque - 1 
WHERE id_produto = 1;  -- Reduz estoque do computador após a venda

DELETE FROM FORNECEDORES 
WHERE id_fornecedor = 2;  -- Remove fornecedor Gadgets Inc.

REPLACE INTO PRODUTOS (id_produto, nome, preco, estoque, fornecedor_id)
VALUES (1, 'Computador Gamer', 3500.00, 8, 1);  -- Atualiza para um novo modelo de computador
