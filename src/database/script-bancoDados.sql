-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/

CREATE DATABASE projetoIndividual;

USE projetoIndividual;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(100),
	titulo VARCHAR(100),
	descricao VARCHAR(500),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);





select * from usuario;
select * from aviso;


drop view viewDashboard;

create view viewDashboard as
select 
		login.id as Logins, 
		form.id as Respostas
from usuario as login 
join aviso as form on (fk_usuario) = login.id;

create view viewKpis as
select 
		count(distinct login.id) as numeroLogins, 
		count(distinct form.id) as numeroRespostas
from usuario as login 
join aviso as form on (fk_usuario) = login.id;

select * from viewDashboard
join viewKpis;

select distinct login.id as loginsDistintos from usuario as login;


