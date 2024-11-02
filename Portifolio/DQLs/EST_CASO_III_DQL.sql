SELECT c.codigo, c.cnpj, c.razao_social, c.ramo_atividade, c.data_cadastramento, c.pessoa_contato
FROM Clientes c;

SELECT e.numero, e.data_inclusao, e.valor_total, e.valor_desconto, e.valor_liquido
FROM Encomendas e
JOIN Clientes c ON e.cliente_codigo = c.codigo
WHERE c.razao_social = 'Nome do Cliente';

SELECT e.matricula, e.nome, e.cargo, e.telefones
FROM Empregados e;

SELECT f.cnpj, f.razao_social, c.nome AS componente
FROM Fornecedores f
JOIN Componentes c ON f.cnpj = c.fornecedor_cnpj;

SELECT p.codigo, p.nome, p.cor, p.preco, p.tempo_fabricacao
FROM Produtos p
WHERE p.nome = 'Nome do Produto';

SELECT tc.codigo, tc.nome
FROM Tipos_Fornecedor tc;

SELECT m.tempo_vida, m.data_compra, m.data_fim_garantia
FROM Maquinas m;

INSERT INTO Encomendas (numero, data_inclusao, valor_total, valor_desconto, valor_liquido, cliente_codigo, forma_pagamento_id, quantidade_parcelas)
VALUES (1, '2024-11-02', 5000, 500, 4500, 1, 1, 3);

SELECT rs.quantidade, rs.data_necessidade
FROM Registro_Suprimentos rs;

SELECT rm.data, rm.descricao
FROM Registro_Manutencao rm
JOIN Maquinas m ON rm.maquina_id = m.id
WHERE m.id = 1;
