create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
estilo varchar(50),
tamanho varchar(50),
pedacos int,
primary key (id)
);

insert into tb_categoria (estilo,tamanho,pedacos) values ("Napolitana", "grande", 12),("Romana", "média", 8),
("Genovesa", "grande", 12),("Pan", "broto", 4),("Deep Dish (Estilo Chicago)", "média", 8);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
sabor varchar(100) not null,
doce boolean,
salgada boolean,
preco float (3.2),
vegetariana boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza (sabor,doce,salgada,preco,vegetariana,categoria_id) values ("Frango catupiry",false,true,35.99,false,1),("Calabresa",false,true,32.99,false,2),("Bahiana",false,true,35.99,false,2),
("Costela",false,true,47.90,false,3),("Rúcula com tomate seco",false ,true,25.99,true,4),("Cinco queijos",false,true,46.90,true,5),("Prestigio",true,false,27.99,true,4),("Doce de leite",true,false,27.99,true,4);

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco > 29 and preco < 60;

select * from tb_pizza where sabor like "c%";

select * from tb_pizza inner join tb_categoria 
on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza where doce = true;

