CREATE DATABASE rh_empresa; -- Criando o Banco de Dados

USE rh_empresa; -- Selecioando o Bando de Dados

CREATE TABLE rh_empresa( -- Criando a Tabela de Dados
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
funcao VARCHAR (255) NOT NULL,
dt_admissao DATE,
salario DECIMAL NOT NULL,
PRIMARY KEY(id)
);

-- Inserir Dados/Registros dos Colaboradores
INSERT INTO rh_empresa (nome, funcao, dt_admissao, salario) 
VALUES ("Francisco", "Desenvolvedor Frontend", "2025-01-06", 6000.00);
INSERT INTO rh_empresa (nome, funcao, dt_admissao, salario)
VALUES ("Lucas", "Desenvolvedor Backend", "2025-01-06", 7000.00);
INSERT INTO rh_empresa (nome, funcao, dt_admissao, salario) 
VALUES ("Denner", "Analista de Dados", "2025-01-06", 6500.00);
INSERT INTO rh_empresa (nome, funcao, dt_admissao, salario) 
VALUES ("Nathan", "Desenvolvedor Mobile", "2025-01-06", 7000.00);
INSERT INTO rh_empresa (nome, funcao, dt_admissao, salario) 
VALUES ("Maria", "Desenvolvedor RPA", "2025-01-06", 7000.00);

-- Visualizar/Selecionar os Dados/Registros
SELECT * FROM rh_empresa;

SELECT * FROM rh_empresa WHERE salario > 2000; -- Retornando Colaboradores com Salário maior que R$ 2.000,00

SELECT * FROM rh_empresa WHERE salario < 2000; -- Retornando Colaboradores com Salário menor que R$ 2.000,00

ALTER TABLE rh_empresa MODIFY salario DECIMAL(6,2); -- Alterando a estrutura do atributo Salario para 6 dígitos com 2 casas decimais

UPDATE rh_empresa SET salario = 7200.90 WHERE id = 1;

SELECT * FROM rh_empresa;

