CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
lutador VARCHAR (255) NOT NULL,
caracteristica VARCHAR (255) NOT NULL
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
nivel INT NOT NULL,
defesa INT NOT NULL,
ataque INT NOT NULL,
classeid BIGINT,
FOREIGN KEY(classeid) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(lutador, caracteristica) 
VALUES 
("Boxeador", "Golpes rápidos e potentes com socos e rápido nas esquivas"),
("Capoeirista", "Ataque com movimentos acrobáticos com chutes e rasteiras e defesa com a ginga"),
("Karateka", "Golpes rápidos e precisos em pontos vitais e defesa com bloqueios rígidos"),
("Kickboxer", "Ataque com chutes e socos combinados com intensidade e fluidez"),
("Judoca", "Ataque com projeções e arremessos e bloqueio com contragolpes");

INSERT INTO tb_personagens(nome, nivel, defesa, ataque, classeid)
VALUES
("Yuri", 50, 1800, 2500, 1), -- Boxeador
("Francisco", 45, 1500, 2300, 2), -- Capoeirista
("Henrique", 40, 900, 1900, 3), -- Karateka
("Felipe", 47, 1700, 2400, 4), -- Kickboxer
("Lucas", 43, 500, 1500, 5), -- Judoca
("Rosilene", 49, 1600, 2350, 1), -- Boxeador
("Amanda", 44, 1500, 2200, 2), -- Capoeirista
("Gustavo", 50, 1800, 2300, 3); -- Kickboxer

SELECT * FROM tb_personagens WHERE ataque > 2000; -- retornando personagens com ataque maior que 2 mil

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000; -- retornando personagens com defesa entre 1 mil e 2 mil

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT nome, nivel, defesa, ataque, tb_classes.caracteristica
FROM tb_personagens INNER JOIN tb_classes;

SELECT nome, nivel, defesa, ataque, tb_classes.lutador
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.lutador
WHERE classes.lutador = "Boxeador";

