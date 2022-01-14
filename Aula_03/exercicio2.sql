create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar(30) not null,
sabor varchar(30) not null,
primary key (id)
);

insert into tb_categoria (tamanho, sabor) values ("Pequena", "Doce");
insert into tb_categoria (tamanho, sabor) values ("Média","Doce");
insert into tb_categoria (tamanho, sabor) values ("Grande","Doce");
insert into tb_categoria (tamanho, sabor) values ("Média", "Salgada");
insert into tb_categoria (tamanho, sabor) values ("Grande", "Salgada");

select * from tb_categoria;

create table tb_pizza (
id bigint auto_increment,
nome varchar (30) not null,
recheio varchar(100) not null,
massa varchar(10) not null,
preco decimal(4,2),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

insert into tb_pizza (nome, recheio, massa, preco, categoria_id) values ("Portuguesa","Presunto, ovos, cebola e mussarela", "Fina", 46.00, 5);
insert into tb_pizza (nome, recheio, massa, preco, categoria_id) values ("Chocolate","Chocolate ao leite", "Fina", 42.00, 3);
insert into tb_pizza (nome, recheio, massa, preco, categoria_id) values ("Calabresa","Calabresa e cebola", "grossa", 22.00, 4);
insert into tb_pizza (nome, recheio, massa, preco, categoria_id) values ("Frango","Frango com catupiry", "Fina", 45.00, 4);
insert into tb_pizza (nome, recheio, massa, preco, categoria_id) values ("Romeu e Julieta","Mussarela e goiabada", "Fina", 6.00, 1);
insert into tb_pizza (nome, recheio, massa, preco, categoria_id) values ("Abacaxi", "Abacaxi e chocolate", "grossa", 13.00, 2);
insert into tb_pizza (nome, recheio, massa, preco, categoria_id) values ("Bacon","Musarela e bacom frito", "Fina", 46.00, 5);
insert into tb_pizza (nome, recheio, massa, preco, categoria_id) values ("Milho Verde","Milho coberto com mussarela", "Fina", 46.00, 5);

select * from tb_pizza;

select * from tb_pizza where preco >= 45.00;

select * from tb_pizza where preco between 29.00 and 60.00;

select * from tb_pizza where nome like "%c%";

select tb_pizza.nome, tb_pizza.recheio, tb_pizza.massa, tb_pizza.preco, tb_categoria.tamanho, tb_categoria.sabor
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select tb_pizza.nome, tb_pizza.recheio, tb_pizza.massa, tb_pizza.preco, tb_categoria.tamanho, tb_categoria.sabor
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id in (1,2,3);


