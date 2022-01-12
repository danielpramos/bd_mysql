-- Criando banco de dados
create database bd_escola;  

-- Usando banco de dados criado
use bd_escola; 

-- Criando tabela no banco de dados
create table estudante(  
	matricula bigint not null auto_increment,
    nome varchar(30) not null,
    nascimento date not null,
    serie int not null,
    sala int not null,
    nota decimal(3,1) not null,
    primary key(matricula)
);

 -- Inserindo dados na tabela
insert into estudante(nome, nascimento, serie, sala, nota) values("Felipe Santos", "2007-02-05", 8, 5, 10.0 );
insert into estudante(nome, nascimento, serie, sala, nota) values("Ester Nascimento", "2010-02-05", 5, 2, 7.0 );
insert into estudante(nome, nascimento, serie, sala, nota) values("Pedro Aparecido", "2007-07-10", 8, 5, 6.5 );
insert into estudante(nome, nascimento, serie, sala, nota) values("Jussara Barreto", "2007-04-15", 8, 5, 4.5 );
insert into estudante(nome, nascimento, serie, sala, nota) values("Marilsa Pinheiro ", "2010-07-26", 5, 2, 3.8 );
insert into estudante(nome, nascimento, serie, sala, nota) values("Alice Sonatra", "2009-09-16", 7, 4, 10.0 );
insert into estudante(nome, nascimento, serie, sala, nota) values("Patrik Maciel", "2009-02-23", 7, 4, 3.8 );
insert into estudante(nome, nascimento, serie, sala, nota) values("Mateus Romão", "2008-02-05", 6, 3, 7.0 );

-- Selecionando os dados
select nome, nascimento, serie, sala, nota from estudante where nota >= 7.0;
select nome, nascimento, serie, sala, nota from estudante where nota < 7.0;

-- Alterando os dados
update estudante set nota = 6.9 where matricula = 4;


-- Exclui um dado
-- delete from funcionarios where id = 2;

-- Ativa modo safe
-- set sql_safe_updates=1;

-- Apaga uma table
-- drop table funcionarios;

-- Chama a tabela toda preenchida
-- SELECT * FROM bd_escola.estudante;