create database doceria;
use doceria;

create table produto (
	id integer primary key identity (1,1),
	nome varchar(50) not null,
	marca varchar(50),
	tipo varchar(50) not null
	);

create table pessoa (
	id integer primary key identity (1,1),
	cpf bigint not null,
	nome varchar(50) not null,
	nascimento date not null,
	funcao varchar(50) not null
	);

create table compra (
	id integer primary key identity (1,1),
	quantia integer not null,
	valor_unitario decimal(3,2) not null,
	data_copra date not null,
	id_produto integer not null
		constraint fk_produto foreign key (id) references produto(id)
	);

create table exposicao (
	id integer primary key identity (1,1),
	quantidade integer not null,
	valor_venda decimal(3,2) not null,
	dia_exposicao date not null,
	id_produto integer not null
		constraint fk_produto_exposicao foreign key references produto(id)
	);

create table venda (
	id integer primary key identity (1,1),
	quantia decimal(3,2) not null,
	id_exposicao integer not null
		constraint fk_exposicao_venda foreign key references exposicao(id),
	id_pessoa integer not null
		constraint fk_pessoa_venda foreign key references pessoa(id)
	);

create table doposito (
	id integer primary key identity (1,1),
	valor_deposito decimal(3,2) not null,
	data_deposito date not null,
	id_pessoa integer not null
		constraint fk_pessoa_deposito foreign key references pessoa(id)
	);

create table debito (
	id_pessoa integer not null
		constraint fk_pessoa_debito foreign key references pessoa(id),
	id_venda integer not null
	constraint fk_venda_debito foreign key references venda(id),
	constraint pk_pessoa_venda primary key (id_pessoa,id_venda)
	);