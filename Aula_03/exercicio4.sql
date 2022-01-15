/*Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, onde o sistema trabalhará com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desse açougue.
Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre  tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são aves ou legumes).*/

create database db_cidade_das_frutas;
use db_cidade_das_frutas; 

create table tb_categorias(
id bigint not null auto_increment primary key,
sabor varchar(255) not null,
origem varchar(255)
);

insert into tb_categorias (sabor, origem) values ("Doce", "Nacional");
insert into tb_categorias (sabor, origem) values ("Ácida", "Nacional");
insert into tb_categorias (sabor, origem) values ("Doce", "Internacional");
insert into tb_categorias (sabor, origem) values ("Ácida", "Internacional");
insert into tb_categorias (sabor, origem) values ("Oleaginosas", "Brasil");

-- update tb_categorias set origem = "Nacional" where id = 5;

create table tb_produtos(
id bigint not null auto_increment primary key,
nome varchar(255) not null,
tamanho varchar(255) not null,
quantidade int not null,
preco decimal(4,2) not null,
categoria_id bigint,
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_produtos (nome, tamanho, quantidade, preco, categoria_id) values ("Abacaxi", "Médio", 50, 2.25, 2);
insert into tb_produtos (nome, tamanho, quantidade, preco, categoria_id) values ("Coco", "Médio", 15, 3.45, 5);
insert into tb_produtos (nome, tamanho, quantidade, preco, categoria_id) values ("Abacaxi", "Médio", 50, 2.25, 2);
insert into tb_produtos (nome, tamanho, quantidade, preco, categoria_id) values ("Goiaba", "Pequeno", 80, 4.75, 1);
insert into tb_produtos (nome, tamanho, quantidade, preco, categoria_id) values ("Uva", "Muito Pequeno", 70, 5.85, 4);
insert into tb_produtos (nome, tamanho, quantidade, preco, categoria_id) values ("Banana", "Médio", 100, 4.99, 3);
insert into tb_produtos (nome, tamanho, quantidade, preco, categoria_id) values ("maracujá", "Médio", 35, 1.89, 2);
insert into tb_produtos (nome, tamanho, quantidade, preco, categoria_id) values ("Morango", "Pequeno", 90, 6.20, 4);

-- update tb_produtos set nome = "acaí" where id = 3;
-- update tb_produtos set tamanho = "Muito Pequeno" where id = 3;
-- update tb_produtos set quantidade = 30 where id = 3;
-- update tb_produtos set preco = 2.50 where id = 3;
-- update tb_produtos set categoria_id = 1 where id = 3;

select * from tb_produtos where preco >= 5.00;
select * from tb_produtos where preco between 3.00 and 10.00;
select * from tb_produtos where nome like "%c%";

select tb_produtos.nome, tb_produtos.tamanho, tb_produtos.quantidade, tb_produtos.preco, tb_categorias.sabor, tb_categorias.origem
from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id; 

select tb_produtos.nome, tb_produtos.tamanho, tb_produtos.quantidade, tb_produtos.preco, tb_categorias.sabor, tb_categorias.origem
from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id where tb_categorias.id = 1;

