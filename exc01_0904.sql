CREATE DATABASE  db_funcionario;

use db_funcionario;
CREATE TABLE tb_colaboradores( id bigint auto_increment primary key, nome varchar(255) not null,
								cargo varchar(255) not null, salario decimal(8,2) not null,
                                data_admissao date not null );
                                
insert into tb_colaboradores(nome, cargo, salario, data_admissao)
value
("Guilherme Pereira","Gerente de relações publicas", 6700.00, "2024-11-23");

select * from tb_colaboradores;

insert into tb_colaboradores(nome, cargo, salario, data_admissao)
value
("Marcos Pereira","Administrador de relações publicas", 5000.00, "2023-11-02"),
("Jose Silva","Gerente comercial", 9000.00, "2020-05-25"),
("Maria Isabel","Diretora", 15000.00, "2019-05-02"),
("Maria Laura","C.E.O", 30000.00, "2019-01-05");

select * from tb_colaboradores where salario>2000.00;
select * from tb_colaboradores where salario<2000.00;

UPDATE tb_colaboradores set salario = 1900.00 where id = 2;


