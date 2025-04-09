use  db_quitanda;

create table tb_produtos(
id bigint auto_increment,
 nome varchar(255) not null,
 quantidade int,
 data_validade date,
 preco decimal not null,
 primary key(id)
); 
insert into tb_produtos(nome, quantidade,data_validade,preco)
value
("MAMAO",25,"2025-04-09", 12.55);

select * from tb_produtos;

insert into tb_produtos(nome, quantidade,data_validade,preco)
value
("Maçã",25,"2025-04-09", 12.0),
("laranja", 30, "2015-04-09", 8.00),
("banana", 300, "2015-04-09", 10.0),
("uva", 30, "2015-04-09", 18.00),
("pera", 60, "2015-04-09", 20.00);


select nome,preco from tb_produtos ;

select * from tb_produtos where nome = "tomate";

select * from tb_produtos where preco < 13.00 and quantidade< 100;

alter table tb_produtos MODIFY  preco DECIMAL(6,2);

alter table tb_produtos add descricao varchar(255);

alter table tb_produtos drop descricao;

select * from tb_produtos;

UPDATE tb_produtos set preco = 4.00 where id = 5;

