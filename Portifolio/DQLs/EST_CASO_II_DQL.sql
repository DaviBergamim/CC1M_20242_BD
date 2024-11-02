SELECT v.voo_id, a_origem.nome_aeroporto AS origem, a_destino.nome_aeroporto AS destino, v.horario_partida, v.horario_chegada
FROM Voos v
JOIN Aeroportos a_origem ON v.aeroporto_partida_id = a_origem.aeroporto_id
JOIN Aeroportos a_destino ON v.aeroporto_chegada_id = a_destino.aeroporto_id;

SELECT r.reserva_id, p.nome_passageiro, v.voo_id, v.horario_partida
FROM Reservas r
JOIN Passageiros p ON r.passageiro_id = p.passageiro_id
JOIN Voos v ON r.voo_id = v.voo_id
WHERE p.nome_passageiro = 'Nome do Passageiro';

SELECT v.voo_id, v.horario_partida, v.horario_chegada
FROM Voos v
JOIN Aeronaves a ON v.aeronave_id = a.aeronave_id
WHERE a.modelo = 'Modelo da Aeronave';

INSERT INTO Reservas (passageiro_id, voo_id, data_reserva)
VALUES (1, 2, '2024-11-02');

SELECT f.nome_funcionario, f.papel
FROM Funcionarios f
JOIN Voos v ON f.voo_id = v.voo_id
WHERE v.voo_id = 1;

SELECT v.voo_id, v.horario_partida, v.horario_chegada
FROM Voos v
JOIN Aeroportos a ON v.aeroporto_partida_id = a.aeroporto_id
WHERE a.nome_aeroporto = 'Nome do Aeroporto';
