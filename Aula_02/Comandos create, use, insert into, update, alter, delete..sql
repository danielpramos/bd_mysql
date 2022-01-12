-- Criando banco de dados
create database bd_empresa_rh;  

-- Usando banco de dados criado
use bd_empresa_rh; 

-- Criando tabela no banco de dados
create table funcionarios(  
	id bigint not null auto_increment,
	nome varchar(30) not null,
    nascimento date not null,
    altura decimal(3,2) ,
    sexo enum('M', 'F'),
    salario decimal(6,2) not null, 
    primary key(id)
);

 -- Inserindo dados na tabela
insert into funcionarios(nome, nascimento, altura, sexo, salario) values("João Pereira dos Santos", "1997-10-25", 1.72, 'M', 1900.50 );
insert into funcionarios(nome, nascimento, altura, sexo, salario) values("Francisco altanor ferreira", "1999-09-10", 1.81, 'M', 2300.20 );
insert into funcionarios(nome, nascimento, altura, sexo, salario) values("Pedro cruz da Silva", "2001-07-05", 1.77, 'M', 1800.58 );
insert into funcionarios(nome, nascimento, altura, sexo, salario) values("Maria flores Conceição", "1995-11-07", 1.52, 'F', 2900.70 );
insert into funcionarios(nome, nascimento, altura, sexo, salario) values("Ester de Bragança", "1999-07-29", 1.60, 'F', 2700.10 );

-- Selecionando os dados
select nome, nascimento, altura, sexo, salario from funcionarios where salario >= 2000.00;
select nome, nascimento, altura, sexo, salario from funcionarios where salario < 2000.00;

-- Alterando os dados
update funcionarios set altura=1.79 where id = 5;

-- Exclui um dado
-- delete from funcionarios where id = 2;

-- Ativa modo safe
-- set sql_safe_updates=1;

-- Apaga uma table
-- drop table funcionarios;