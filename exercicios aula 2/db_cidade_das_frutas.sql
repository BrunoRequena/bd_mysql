create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
primary key(id)
);

insert into tb_categoria(tipo) values ("fruta"), ("legume"),("vegetais");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
preco decimal (5,2) not null,
nome varchar (169) not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome,preco,categoria_id) values ("laranja", 8.99,1), ("maracuja", 14.99,1),("alface",3.50,3), ("chuchu",34.50,3),("cenoura", 5.79,2),("banana",11.99,1);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco > 3 and preco < 60;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria 
on tb_categoria.id = tb_produto.categoria_id; 

select * from tb_produto where categoria_id = 1;