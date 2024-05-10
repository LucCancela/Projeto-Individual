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
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	constraint fk_aviso_usuario FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

create table formulario(
	id INT PRIMARY KEY AUTO_INCREMENT,
    campo1 VARCHAR(155),
    campo2 VARCHAR(155),
    fk_form_usuario INT,
    constraint fk_formulario_usuario foreign key (fkFormUsuario) references usuario(id)
);

