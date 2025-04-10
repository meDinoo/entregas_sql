CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	estilo varchar(20)  not null primary key,
    origem varchar(255) NOT NULL,
    natureza VARCHAR(30) NOT NULL
);

CREATE TABLE tb_personagens(

	id BIGINT auto_increment PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa VARCHAR(255) NOT NULL,
    especie VARCHAR(20) NOT NULL,
    estilo varchar(20)  not null 
    
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (estilo) REFERENCES tb_classes(estilo);


INSERT INTO tb_classes(estilo, origem, natureza) 
VALUES	("Arqueiro", "Floreste branca", "Luz"),
		("Bardo","Cidade do Caos", "Amor"),
        ("Paladino","Imperio Noxus","Fé"),
        ("Mago","Torre negra","Magia");
        
INSERT INTO tb_personagens(nome,poder_ataque, poder_defesa, especie, estilo) 
VALUES	("Morgana",240, 50, "Semi-Deusa","Mago"),
		("Garen",200, 150, "Humano","Paladino"),
        ("Sona",200,100, "Humana","Bardo"),
        ("Varus",250, 50, "Demonio","Arqueiro"),
        ("Kayle",250, 30, "Semi-Deusa","Mago"),
		("Sion",250, 200, "Morto-Vivo","Paladino"),
        ("Hawei",250,50, "Desconhecido","Bardo"),
        ("Aphelios",250, 50, "Espirito","Arqueiro");
        
select * from tb_personagens where poder_ataque >200;
select * from tb_personagens where poder_defesa BETWEEN 100 AND 200;
/*alterei a letra de C para R */
select * from tb_personagens where nome like"%r%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.estilo = tb_classes.estilo;


SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.estilo = tb_classes.estilo 
WHERE tb_classes.estilo = "Mago";







