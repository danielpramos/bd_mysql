-- Criando banco de dados
create database bd_e_commerce;  

-- Usando banco de dados criado
use bd_e_commerce; 

-- Criando tabela no banco de dados
create table produtos(  
	id bigint not null auto_increment,
    Tipo varchar(30) not null,
	nome varchar(30) not null,
    modelo varchar(30) not null,
    quantidade int not null,
    preco decimal(6,2),
    primary key(id)
);

 -- Inserindo dados na tabela
insert into produtos(tipo, nome, modelo, quantidade, preco) values("Eletrônico", "Celular", "Samsung", 600, 2699.99 );
insert into produtos(tipo, nome, modelo, quantidade, preco) values("Eletrônico", "Notebook", "Dell", 210, 2599.99 );
insert into produtos(tipo, nome, modelo, quantidade, preco) values("Roupa", "Camisa", "Lacoste", 250, 99.99 );
insert into produtos(tipo, nome, modelo, quantidade, preco) values("Roupa", "Calça", "Jeans", 100, 59.50);
insert into produtos(tipo, nome, modelo, quantidade, preco) values("Casa", "Cortina", "Amorim", 10, 399.99 );
insert into produtos(tipo, nome, modelo, quantidade, preco) values("Casa", "", "Vaso", 50, 55.89 );
insert into produtos(tipo, nome, modelo, quantidade, preco) values("Eletrodomésticos", "Geladeira", "brastemp", 600, 2899.99 );
insert into produtos(tipo, nome, modelo, quantidade, preco) values("Eletrodomésticos", "Máquina de lavar", "Cônsul", 635, 1379.99 );

-- Selecionando os dados
select tipo, nome, modelo, quantidade, preco from produtos where preco >= 500.00;
select tipo, nome, modelo, quantidade, preco from produtos where preco < 500.00;

-- Alterando os dados
update produtos set quantidade= 500 where id = 1;


-- Exclui um dado
-- delete from funcionarios where id = 2;

-- Ativa modo safe
-- set sql_safe_updates=1;

-- Apaga uma table
-- drop table funcionarios;