/*
Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, 
que deverão estar relacionadas.



Boas Práticas:

Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.

Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.

Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas 
as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

*/

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
        tipo varchar(10) not null PRIMARY KEY,
		porcao INT NOT NULL,
        tempo_preparo INT NOT NULL
);

CREATE TABLE tb_pizzas(
	sabor varchar(20) not null PRIMARY KEY,
	cliente varchar(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
	valor decimal(8,2) NOT NULL,
    tipo VARCHAR(10) NOT NULL
);

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias 
FOREIGN KEY (tipo) REFERENCES tb_categorias(tipo);


INSERT INTO tb_categorias(tipo, porcao, tempo_preparo) 
VALUES	("Esfirra", 1, 10),
		("Broto", 4, 15),
		("Media",6, 25),
		("Grande", 8, 25),
		("Familia", 10, 30);
        
INSERT INTO tb_pizzas(sabor, cliente, endereco, valor, tipo) 
VALUES	("Brasileira", "Joao Gomes", "Rua caipora, 55", 60.50, "Esfirra"),
		("Frango", "Matheus Souza", "Rua limoeiro, 43", 40, "Broto"),
		("Frango com Catupri", "Joao Gomes", "Rua caipora, 55",10,"Media"),
		("Baiana", "Geandro", "Rua princesa Isabel, 404",30.00 , "Grande"),
        ("Calabresa", "Geandro", "Rua princesa Isabel, 404",  30, "Media"),
		("Peperoni", "Mariana Lopoes", "Rua indaiatuba, 01", 100, "Broto"),
		("Romeu e Julieta", "Rosa Mitshuy", "Rua Lavechia, 2656", 500, "Esfirra");


        
select * from tb_pizzas where valor >45.00;
select * from tb_pizzas where valor BETWEEN 50 AND 100;

select * from tb_pizzas where sabor like"%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.tipo = tb_categorias.tipo;


SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.tipo = tb_categorias.tipo
WHERE tb_categorias.tipo = "Media";

