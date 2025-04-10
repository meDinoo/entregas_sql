/*
	Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados deverá ter o seguinte nome db_farmacia_bem_estar.
	O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_produtos e
    tb_categorias, que deverão estar relacionadas.

Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.

Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.

Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias,
 onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).

Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal,
 no repositório que você criou sobre Banco de dados.
*/

CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	idcategoria varchar(255)  not null primary key,
	restricao varchar(255) NOT NULL,
	quantidade INT NOT NULL
);

CREATE TABLE tb_produtos(

	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
    cliente VARCHAR(255) NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
    categoria VARCHAR(255) NOT NULL
    
);

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoria) REFERENCES tb_categorias(idcategoria);


INSERT INTO tb_categorias(idcategoria, restricao, quantidade) 
VALUES	("Medicamento", "Receita Medica", 3000),
		("Cosmetico","Maior que 3 anos", 5000),
        ("Servico","Indeterminado", 10),
        ("Outros","Não Há",5000),
        ("Alimentos","Indeterminado", 2000);
        
INSERT INTO tb_produtos(nome_produto,cliente, valor, categoria) 
VALUES	("Pregabalina","Julia Pereira", 20.50, "Medicamento"),
		("Manteiga de cacau", "Julia Pereira",5.00, "Cosmetico"),
        ("Rivotril", "Mariana Carla", 60.60, "Medicamento"),
        ("Furo orelha", "Sophia Santos", 30, "Servico"),
        ("Camisinha", "Maria Laura", 20, "Outros"),
		("Agua", "Rosana", 2, "Alimentos"),
        ("Halls","Rosana",2.50,"Alimentos"),
        ("Esmalte","Maria Laura", 2.50, "Cosmetico");
        
select * from tb_produtos where valor >50;
select * from tb_produtos where valor BETWEEN 5.00 AND 60.0;


select * from tb_produtos where nome_produto like"%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria = tb_categorias.idcategoria;


SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria = tb_categorias.idcategoria
WHERE tb_categorias.idcategoria = "Alimentos";
