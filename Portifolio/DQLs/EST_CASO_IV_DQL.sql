SELECT a.nome, a.cpf, m.nome AS modalidade
FROM Alunos a
JOIN Matriculas m ON a.aluno_id = m.aluno_id
WHERE m.modalidade_id = 1;  -- Substitua 1 pelo ID da modalidade desejada

SELECT a.nome AS aluno, p.descricao AS plano_treinamento, i.nome AS instrutor
FROM Alunos a
JOIN PlanosTreinamento p ON a.aluno_id = p.aluno_id
JOIN Instrutores i ON p.instrutor_id = i.instrutor_id;

SELECT a.nome AS aluno, a.aula_id, a.horario, a.capacidade
FROM Aulas a
JOIN Matriculas m ON a.aula_id = m.aula_id
JOIN Alunos a ON m.aluno_id = a.aluno_id
WHERE a.aula_id = 1;  -- Substitua 1 pelo ID da aula desejada

SELECT a.nome, p.valor, p.data_pagamento, p.status
FROM Alunos a
JOIN Pagamentos p ON a.aluno_id = p.aluno_id;
