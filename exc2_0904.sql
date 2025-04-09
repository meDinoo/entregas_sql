CREATE DATABASE db_produtos;

USE db_produtos;

CREATE TABLE tb_produtos(
	id bigint auto_increment primary key , 
    nome_produto varchar(255) not null,
    nome_loja varchar(255) not null,
    preco decimal(6,2) not null,
    quantidade int not null
);

select * from tb_produtos;

insert into tb_produtos(nome_produto, nome_loja, preco, quantidade)
value
("Macaco-Prego","Loja de Animais Dino", 5000.00, 3),
("Macaco-hidraulico","Loja de construcao Maciel", 100.00, 500),
("Macaco de borracha","Maria's Brinquedos", 20.00, 5000),
("Macaco decorativo","Decorações de festa Gnomos Magicos", 30.00, 30),
("Tubarão-martelo","Loja de Animais Dino", 5000.00, 3),
("Martelo-tubarão","Loja de construcao Maciel", 35.00, 500),
("Tubarão de banho","Maria's Brinquedos", 10.00, 5000),
("Tubarão decorativo","Decorações de festa Gnomos Magicos", 30.00, 30);


select * from tb_produtos where preco>500.00;
select * from tb_produtos where preco<500.00;

UPDATE tb_produtos set quantidade = 2 where id = 1 ;

select * from tb_produtos;

