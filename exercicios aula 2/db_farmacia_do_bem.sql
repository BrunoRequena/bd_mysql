create database db_farmacia_do_bem;


use db_farmacia_do_bem;


create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
tarja varchar(255) not null,
primary key(id)
);


insert into tb_categoria(tipo,tarja) 
values("Medicamento Fitoterápico", "Tarja azul"),
("Medicamento Alopático", "Tarja verde"),
("Medicamento Homeopático", "Tarja verde"),
("Medicamento Genérico", "Tarja cinza"),
("Medicamento Manipulado", "Tarja preta");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
preco decimal(5,2) not null,
nome varchar(150) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(preco,nome,categoria_id) 
values(147.99,"Phytomare",1),
(5.98,"paracetamol",2),
(23.64,"Almeida prado 5",3),
(70,"Acamprosato",2),
(36.62,"Dimorf",5),
(236.03,"Lamisilate",4),
(489.97,"Arimidex",4);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco > 3 and preco < 60;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria 
on tb_categoria.id = tb_produto.categoria_id; 

select * from tb_produto where categoria_id = 4;






