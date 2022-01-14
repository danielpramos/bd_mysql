create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categorias(
id bigint not null auto_increment,
descricao varchar(255) not null,
ativo boolean,
primary key (id)
);

insert into tb_categorias (descricao, ativo) values ("antibiótico", true);
insert into tb_categorias (descricao, ativo) values ("antihistamínico", 1);
insert into tb_categorias (descricao, ativo) values ("higiene pessoal", true);
insert into tb_categorias (descricao, ativo) values ("beleza", true);
insert into tb_categorias (descricao, ativo) values ("energético", true);

select * from tb_categorias;

create table tb_produtos(
id bigint not null auto_increment,
nome varchar(255) not null,
datacadastro timestamp,
quantidade int,
preco decimal(7,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id) 
values("Desodorante Rexona", current_date(), 100, 19.90, 3);

insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id) 
values("Shampoo", current_date(), 100, 29.90, 3);

insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id) 
values("Allegra", current_date(), 100, 2.90, 2);

insert into tb_produtos(nome, datacadastro, quantidade, preco, categoria_id) 
values("Allegra D", current_date(), 100, 59.90, 2);

select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%A%";

select * from tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id
where tb_categorias.id = 3;
