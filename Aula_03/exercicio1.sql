create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
tipo varchar(30) not null,
habilidade varchar(30) not null,
primary key (id)
);

insert into tb_classe (tipo, habilidade) values ("Gerreiro", "Espada");
insert into tb_classe (tipo, habilidade) values ("Arqueiro","Arco");
insert into tb_classe (tipo, habilidade) values ("Mago","Elementos");
insert into tb_classe (tipo, habilidade) values ("Ninja","Adagas");
insert into tb_classe (tipo, habilidade) values ("Curandeiro","Elementos");
insert into tb_classe (tipo, habilidade) values ("Páladino","Espada");


select * from tb_classe;

create table tb_personagem (
id bigint auto_increment,
nome varchar (255) not null,
resistencia int not null,
ataque int not null,
defesa mediumint,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, resistencia, ataque, defesa, classe_id) values ("Goku", 2000, 7000, 4000, 1);
insert into tb_personagem (nome, resistencia, ataque, defesa, classe_id) values ("Naruto",1500, 5000, 2000, 4);
insert into tb_personagem (nome, resistencia, ataque, defesa, classe_id) values ("Seya", 200, 1100, 400, 3);
insert into tb_personagem (nome, resistencia, ataque, defesa, classe_id) values ("Sasuke",1300, 3000, 4700, 4);
insert into tb_personagem (nome, resistencia, ataque, defesa, classe_id) values ("Satoru", 800, 4000, 1800, 5);
insert into tb_personagem (nome, resistencia, ataque, defesa, classe_id) values ("Gavião Arqueiro", 150, 20, 10, 2);
insert into tb_personagem (nome, resistencia, ataque, defesa, classe_id) values ("Artur", 300, 1500, 800, 6);
insert into tb_personagem (nome, resistencia, ataque, defesa, classe_id) values ("Tanjiro", 400, 1700, 1250, 1);

select * from tb_personagem;

select * from tb_personagem where ataque >=2000;
select * from tb_personagem where ataque between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select tb_personagem.nome, tb_personagem.resistencia, tb_personagem.ataque, tb_personagem.defesa, tb_classe.tipo ,tb_classe.habilidade
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome, tb_personagem.resistencia, tb_personagem.ataque, tb_personagem.defesa, tb_classe.tipo ,tb_classe.habilidade
from tb_personagem left join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 4;



