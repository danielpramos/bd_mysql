/*Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema trabalhará com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
Siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.
Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre  tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).*/

create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint not null auto_increment primary key,
tipo varchar(255) not null,
setor varchar(255) not null
);

insert into tb_categoria(tipo, setor) values("Construção", "Hidraulico");
insert into tb_categoria(tipo, setor) values("Construção", "Elétrica");
insert into tb_categoria(tipo, setor) values("Construção", "Pintura");
insert into tb_categoria(tipo, setor) values("Construção", "Acabamento");
insert into tb_categoria(tipo, setor) values("Construção", "Outros");

create table tb_produto(
id bigint not null auto_increment primary key,
nome varchar(255) not null,
marca varchar(255) not null,
quantidade int not null,
preco decimal(6,2) not null,
categoria_id bigint,
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, marca, quantidade, preco, categoria_id) values("Fio de Cobre", "Induscabos", 5000, 25.50, 2);
insert into tb_produto(nome, marca, quantidade, preco, categoria_id) values("Cano PVC Esgoto", "Krona", 100, 15.50, 1);
insert into tb_produto(nome, marca, quantidade, preco, categoria_id) values("Tinta Vermelha", "Acabamento", 50, 45.30, 3);
insert into tb_produto(nome, marca, quantidade, preco, categoria_id) values("Areia", "n/a", 200, 85.99, 5);
insert into tb_produto(nome, marca, quantidade, preco, categoria_id) values("Lâmpada Branca", "Taschibra", 250, 7.89, 2);
insert into tb_produto(nome, marca, quantidade, preco, categoria_id) values("Algamassa", "CimentCola", 120, 32.79, 4);
insert into tb_produto(nome, marca, quantidade, preco, categoria_id) values("Bloco Laranja", "n/a", 6000, 125.30, 5);
insert into tb_produto(nome, marca, quantidade, preco, categoria_id) values("Massa corrida", "Suvinil", 150, 29.99, 4);


select * from tb_produto where preco >= 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "%c%";

select tb_produto.nome, tb_produto.marca, tb_produto.quantidade, tb_produto.preco, tb_categoria.tipo, tb_categoria.setor
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id; 

select tb_produto.nome, tb_produto.marca, tb_produto.quantidade, tb_produto.preco, tb_categoria.tipo, tb_categoria.setor
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 1;