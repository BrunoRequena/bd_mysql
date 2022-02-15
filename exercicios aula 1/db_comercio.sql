create database db_comercio;

use db_comercio;

create table tb_produtos(
id bigint auto_increment,
nome varchar(50),
marca varchar (50),
setor varchar(50),
quantidade int,
preco decimal (8,2),
primary key (id)
);

insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("Faca Karambit", "Rainbow", "armas", 13, 60.00);
insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("Faca Butterfly", "Rainbow", "armas", 14, 70.00);
insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("Camiseta homem de ferro", "Marvel", "Roupas", 23, 30.00);
insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("Camiseta Capitão America", "Marvel", "Roupas", 15, 50.00);
insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("Camiseta Avengers", "Marvel", "Roupas", 10, 49.99);
insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("AK-47 Porte de elite", "CS", "games", 200, 150.00);
insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("Sniper Hiper Fera", "CS", "games", 70, 250.00);
insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("Sniper Dragon Lore", "CS", "games", 3, 8000.00);
insert into tb_produtos(nome, marca, setor, quantidade, preco) values ("canivete borboleta", "cs", "games", 13, 1500.00);

select * from tb_produtos;
select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set preco = 5500.00 where id = 6;