create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar (100),
ra int,
periodo varchar(15),
ano int,
nota decimal(4,2),
primary key (id)
);

insert into tb_estudantes(nome, ra, periodo, ano, nota) values ("igor", 12746, "vespertino", 8, 7);
insert into tb_estudantes(nome, ra, periodo, ano, nota) values ("Tatiana", 23495, "vespertino", 6, 7);
insert into tb_estudantes(nome, ra, periodo, ano, nota) values ("Rodrigo", 94812, "noturno", 8, 9);
insert into tb_estudantes(nome, ra, periodo, ano, nota) values ("Carol", 38482, "matutino", 7, 8.2);
insert into tb_estudantes(nome, ra, periodo, ano, nota) values ("Diego", 14593, "vespertino", 8, 3);
insert into tb_estudantes(nome, ra, periodo, ano, nota) values ("Renata", 23945, "matutino", 7, 8.4);
insert into tb_estudantes(nome, ra, periodo, ano, nota) values ("Kaua", 38476, "vespertino", 10, 6.4);
insert into tb_estudantes(nome, ra, periodo, ano, nota) values ("Renato", 34521, "noturno", 6, 4.2);

select * from tb_estudantes;
select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set periodo = "noturno" where id = 4;