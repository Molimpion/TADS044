-- SQL: DDL - CREATE
create schema praca10;

use praca10;

create table cliente(
	cpf varchar(14) primary key not null,
    nome varchar(45) not null,
    genero char(1) not null,
    email varchar(45) unique null,
    telefone varchar(15) unique not null,
    dataNasc date null,
    `status` boolean null
);

create table plano_saude(
	Cliente_cpf varchar(14) primary key not null,
    numero varchar(20) not null,
    nome varchar(25) not null,
    foreign key (Cliente_cpf) references
		Cliente (cpf)
        on delete cascade
        on update cascade
);

desc plano_saude;

-- SQL: DDL - ALTER
alter table departamento 
	add column descricao varchar(150) null;
    
alter table departamento
	change column descricao sobre varchar(180) not null;

desc departamento;

alter table departamento
	drop column sobre;

alter table cliente
	add column pontuacao int null default 0;

alter table cliente
	add column idade int null after datanasc;
    
alter table cliente
	drop column idade;
