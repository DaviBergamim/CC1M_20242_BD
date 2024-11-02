INSERT INTO CLIENTES (codigo, cnpj, razao_social, ramo_atividade, data_cadastramento, pessoa_contato)
VALUES (1, '12.345.678/0001-90', 'TechSolution Ltda.', 'Desenvolvimento de Software', '2024-01-15', 'Carlos Silva');

INSERT INTO TELEFONES_CLIENTES (codigo_cliente, telefone)
VALUES (1, '(11) 91234-5678'), (1, '(11) 92345-6789');

INSERT INTO ENDERECOS_CLIENTES (codigo_cliente, tipo_endereco_id, numero, logradouro, complemento, cep, bairro, cidade, estado)
VALUES (1, 1, '123', 'Rua A', 'Sala 10', '01000-000', 'Centro', 'São Paulo', 'SP');

INSERT INTO EMPREGADOS (matricula, nome, cargo, salario, data_admissao, qualificacoes, endereco)
VALUES (1, 'Ana Costa', 'Desenvolvedora', 6000.00, '2023-02-01', 'Formação em Engenharia de Software', 'Avenida B, 456');

INSERT INTO TELEFONES_EMPREGADOS (matricula_empregado, telefone)
VALUES (1, '(11) 98765-4321');

INSERT INTO EMPRESAS (cnpj, razao_social, pessoa_contato, endereco)
VALUES ('12.345.678/0002-80', 'Empresa Parceira Ltda.', 'Maria Oliveira', 'Rua C, 789');

INSERT INTO FORNECEDORES (cnpj, razao_social, endereco, pessoa_contato)
VALUES ('12.345.678/0003-70', 'Fornecedor XYZ', 'Avenida D, 101', 'José Pereira');

INSERT INTO PRODUTOS (codigo, nome, cor, dimensoes, peso, preco, tempo_fabricacao, desenho_produto, horas_mao_obra)
VALUES (1, 'Produto A', 'Vermelho', '30x30x30', 1.5, 100.00, 5, 'DesenhoProdutoA', 10);

UPDATE CLIENTES 
SET razao_social = 'TechSolution S.A.', ramo_atividade = 'Tecnologia da Informação'
WHERE codigo = 1;

UPDATE EMPREGADOS 
SET salario = 6500.00 
WHERE matricula = 1;

DELETE FROM FORNECEDORES 
WHERE cnpj = '12.345.678/0003-70';

REPLACE INTO PRODUTOS (codigo, nome, cor, dimensoes, peso, preco, tempo_fabricacao, desenho_produto, horas_mao_obra)
VALUES (1, 'Produto A', 'Azul', '30x30x30', 1.5, 95.00, 5, 'DesenhoProdutoA_Novo', 10);
