use db_RH;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
salario decimal(8,2),
ano_nascimento int,
telefone varchar(10),
cidade varchar(25),
primary key (id)
);

insert into tb_funcionarios(nome, salario, ano_nascimento, telefone, cidade) values ("João", 8500, 1962, "95763-4225", "São Paulo");
insert into tb_funcionarios(nome, salario, ano_nascimento, telefone, cidade) values ("Igor", 6500, 1964, "93351-8913", "Sorocaba");
insert into tb_funcionarios(nome, salario, ano_nascimento, telefone, cidade) values ("Rafaela", 3400, 1990, "97327-7264", "Osasco");
insert into tb_funcionarios(nome, salario, ano_nascimento, telefone, cidade) values ("Isabela", 1000, 1996, "90233-1271", "São Paulo");
insert into tb_funcionarios(nome, salario, ano_nascimento, telefone, cidade) values ("Mariana", 1500, 1997, "92235-3628", "Diadema");

select * from tb_funcionarios;
select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set cidade = "Santos" where id = 5;