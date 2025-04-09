CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	id bigint auto_increment primary key , 
    nome varchar(255) not null,
	serie int  not null,
    turma varchar(1) not null,
    media int not null
);


insert into tb_alunos(nome, serie, turma, media)
value
("Marcos Pereira",5, "A", 7),
("Jose Silva",1, "A", 9),
("Maria Isabel",5, "B", 4),
("Maria Laura",3, "A", 6),
("Marcos Pereira",4, "A", 7),
("Jose Silva",4, "B", 8),
("Maria Isabel",1, "B", 10),
("Maria Laura",3, "B", 9);

select * from tb_alunos where media>7;
select * from tb_alunos where media<7;

SET SQL_SAFE_UPDATES = 0;
UPDATE tb_alunos set media = 7 where media<7 ;

select * from tb_alunos;

