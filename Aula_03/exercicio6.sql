/*Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.
siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra J.
Faça um um select com Inner join entre  tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).*/

create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint not null auto_increment primary key,
linguagem varchar(255) not null,
modelo varchar(255) not null
);

insert into tb_categoria(linguagem, modelo) values("JAVA", "EAD");
insert into tb_categoria(linguagem, modelo) values("JAVA", "PRESENCIAL");
insert into tb_categoria(linguagem, modelo) values("C++", "EAD");
insert into tb_categoria(linguagem, modelo) values("C++", "PRESENCIAL");
insert into tb_categoria(linguagem, modelo) values("PASCAL", "EAD");

create table tb_produto(
id bigint not null auto_increment primary key,
nome varchar(255) not null,
duracao int not null,
POO boolean not null,
preco decimal(6,2)not null,
categoria_id bigint,
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, duracao, POO, preco, categoria_id) values ("Aprenda sobre herança", 20, true, 25.00, 1);
insert into tb_produto(nome, duracao, POO, preco, categoria_id) values ("Como funciona o encapsulamento", 20, true, 25.00, 2);
insert into tb_produto(nome, duracao, POO, preco, categoria_id) values ("Programe para Windows", 60, true, 50.00, 4);
insert into tb_produto(nome, duracao, POO, preco, categoria_id) values ("Primeiro passos em Pascal", 20, false, 45.00, 5);
insert into tb_produto(nome, duracao, POO, preco, categoria_id) values ("Aprenda com Arduino", 40, true, 00.00, 3);
insert into tb_produto(nome, duracao, POO, preco, categoria_id) values ("Como criar classes abstratas", 20, true, 00.00, 1);
insert into tb_produto(nome, duracao, POO, preco, categoria_id) values ("Os tipos de Polimorfismo", 40, true, 00.00, 1);
insert into tb_produto(nome, duracao, POO, preco, categoria_id) values ("Virando um dev fullstack", 200, true, 00.00, 1);

select * from tb_produto where preco >= 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "%j%";

select tb_produto.nome, tb_produto.duracao, tb_produto.POO, tb_produto.preco, tb_categoria.linguagem, tb_categoria.modelo
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id; 

select tb_produto.nome, tb_produto.duracao, tb_produto.POO, tb_produto.preco, tb_categoria.linguagem, tb_categoria.modelo
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id in (1,2); 