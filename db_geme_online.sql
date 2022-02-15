create database db_game_online;

use db_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar(255) not null,
habilidade varchar(255),
arma varchar(255),
primary key (id)
);

insert into tb_classes (nome, habilidade, arma) values ("feiticeiro", "bola de fogo", "cajado"),
("arqueiro", "chuva de flechas", "arco e flecha"),
("druida", "cura", "livro"),
("knight", "exura gran", "espada"),
("assassino", "ataque das sombras", "adaga");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes (id)
);

insert into tb_personagens(nome,nivel,ataque,defesa,classe_id)
values("Charizard", 32, 125, 300, 3),
("Kirito", 83, 1020, 600, 4),
("MIOMIO", 75, 800, 1800, 5),
("PRITIN", 355, 5660, 1563, 1),
("Extiv", 80, 2540,800, 2);

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa > 1000 and defesa < 2000; 

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join  tb_classes on tb_personagens.classe_id = tb_classes.id;

select * from tb_personagens inner join  tb_classes on tb_personagens.classe_id = tb_classes.id 
where tb_classes.id = 2;