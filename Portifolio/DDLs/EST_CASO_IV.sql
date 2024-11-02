DROP SCHEMA IF EXISTS Saude_em_Movimento;

CREATE SCHEMA Saude_em_Movimento;

USE Saude_em_Movimento;

CREATE TABLE IF NOT EXISTS ALUNOS (
    ALUNO_ID INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(100) NOT NULL,
    CPF VARCHAR(11) NOT NULL UNIQUE,
    DATA_NASCIMENTO DATE,
    ENDERECO TEXT
);

ALTER TABLE ALUNOS ADD COLUMN MODALIDADES_INTERESSE TEXT; -- Multivalorado

CREATE TABLE IF NOT EXISTS INSTRUTORES (
    INSTRUTOR_ID INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(100) NOT NULL,
    CPF VARCHAR(11) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS MODALIDADES (
    MODALIDADE_ID INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(100) NOT NULL,
    DESCRICAO TEXT
);

CREATE TABLE IF NOT EXISTS PLANOS_TREINAMENTO (
    PLANO_ID INT PRIMARY KEY AUTO_INCREMENT,
    ALUNO_ID INT,
    INSTRUTOR_ID INT,
    DESCRICAO TEXT,
    DATA_ATUALIZACAO DATE,
    CONSTRAINT FK_ALUNO FOREIGN KEY (ALUNO_ID) REFERENCES ALUNOS(ALUNO_ID),
    CONSTRAINT FK_INSTRUTOR FOREIGN KEY (INSTRUTOR_ID) REFERENCES INSTRUTORES(INSTRUTOR_ID)
);

CREATE TABLE IF NOT EXISTS AULAS (
    AULA_ID INT PRIMARY KEY AUTO_INCREMENT,
    MODALIDADE_ID INT,
    HORARIO TIME,
    CAPACIDADE INT,
    INSTRUTOR_ID INT,
    CONSTRAINT FK_MODALIDADE FOREIGN KEY (MODALIDADE_ID) REFERENCES MODALIDADES(MODALIDADE_ID),
    CONSTRAINT FK_INSTRUTOR_AULA FOREIGN KEY (INSTRUTOR_ID) REFERENCES INSTRUTORES(INSTRUTOR_ID)
);

CREATE TABLE IF NOT EXISTS PAGAMENTOS (
    PAGAMENTO_ID INT PRIMARY KEY AUTO_INCREMENT,
    ALUNO_ID INT,
    DATA_PAGAMENTO DATE,
    VALOR DECIMAL(10, 2),
    STATUS ENUM('PAGO', 'PENDENTE'),
    CONSTRAINT FK_ALUNO_PAGAMENTO FOREIGN KEY (ALUNO_ID) REFERENCES ALUNOS(ALUNO_ID)
);

DROP TABLE IF EXISTS PAGAMENTOS;
DROP TABLE IF EXISTS AULAS;
DROP TABLE IF EXISTS PLANOS_TREINAMENTO;
DROP TABLE IF EXISTS MODALIDADES;
DROP TABLE IF EXISTS INSTRUTORES;
DROP TABLE IF EXISTS ALUNOS;