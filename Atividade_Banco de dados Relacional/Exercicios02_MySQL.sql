CREATE DATABASE db_loja; -- Criando o Banco de Dados

USE db_loja; -- Selecioando o Bando de Dados

CREATE TABLE db_loja( -- Criando a Tabela de Dados
id BIGINT AUTO_INCREMENT,
categoria VARCHAR (255) NOT NULL,
produto VARCHAR (255) NOT NULL,
quantidade INT,
preco DECIMAL (6,2) NOT NULL,
PRIMARY KEY(id)
);

-- Inseririndo registros/produtos
INSERT INTO db_loja (categoria, produto, quantidade, preco) 
VALUES("Smartphone", "Samsung Galaxy S23", 100, 2560.99),
("Notebook", "Lenovo Ideapad Gaming 3i", 90, 3660.99),
("TV", "Smartv Samsung Cristal 50 polegadas", 50, 2990.99),
("Fone de ouvido", "Fone JBL Bluetooth", 150, 260.90),
("Mouse", "Mouse Gamer", 190, 95.90),
("Câmera Digital", "Nikon Z5", 20, 9965.99),
("Monitor", "Monitor Gamer", 100, 1560.90),
("Carregador", "Carregador portátil", 100, 360.99);

SELECT * FROM db_loja;

SELECT * FROM db_loja WHERE preco > 500; -- Retornando produtos com valor maior que R$ 500,00

SELECT * FROM db_loja WHERE preco < 500; -- Retornando produtos com valor maior que R$ 500,00

UPDATE db_loja SET preco =  3970.90 WHERE id = 2;

SELECT * FROM db_loja;