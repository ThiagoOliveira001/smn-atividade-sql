--CRIA O BANCO DE DADOS LOJA
create database loja;
use loja;

--CRIA A TABELA PRODUTO
CREATE TABLE produto(
	id integer primary key identity,
	cod_barras bigint,
	nome varchar(50) NOT NULL,
	descricao varchar(100),
	preco_venda decimal(10,2) NOT NULL,
	imagem varchar(50),
	id_categoria integer,
	constraint fk_produto_categoria foreign key(id_categoria) references categoria
);

--CRIA A TABELA CATEGORIA
CREATE TABLE categoria(
	id integer primary key identity,
	nome varchar(50) NOT NULL,
	descricao varchar(100),
	id_marca integer,
	constraint fk_categoria_marca foreign key(id_marca) references marca
);

--CRIA A TABELA MARCA
CREATE TABLE marca(
	id integer primary key identity,
	nome varchar(50) NOT NULL,
	descricao varchar(100)
);

--CRIA A TABELA PESSOA
CREATE TABLE pessoa(
	id integer identity,
	tipo varchar(12) NOT NULL,
	cpf bigint NOT NULL,
	rg bigint NOT NULL,
	foto varchar(50),
	status bit NOT NULL,
	login varchar(50) NOT NULL,
	senha varchar(50) NOT NULL,
	permissao char(1) NOT NULL,
	CONSTRAINT pessoa_pk PRIMARY KEY (id)
);

--CRIA A TABELA ITEM
CREATE TABLE item(
	id integer primary key identity,
	quantidade integer NOT NULL,
	preco_venda decimal(10,2),
	id_produto integer,
	id_venda integer,
	constraint fk_item_produto foreign key(id_produto) references produto,
	constraint fk_item_venda foreign key(id_venda) references venda
);


--CRIA A TABELA VENDA
CREATE TABLE venda(
	id integer primary key identity,
	data_venda date NOT NULL,
	data_pagamento date,
	id_pessoa integer,
	id_tipoPagamento integer,
	constraint fk_venda_pessoa foreign key(id_pessoa) references pessoa,
	constraint fk_venda_tipoPagamento foreign key(id_tipoPagamento) references tipoPagamento
);

--CRIA A TABELA TIPO DE PAGAMENTO
CREATE TABLE tipoPagamento(
	id integer primary key identity,
	nome varchar(20) NOT NULL
);

--CRIA TABELA DE COMPRA
CREATE TABLE compra(
	id integer primary key identity,
	data_compra date not null

);

--CRIA TABELA COMPRA-PRODUTO
CREATE TABLE compraProduto(
	id integer primary key identity,
	quantidade integer NOT NULL,
	preco_compra decimal(10,2),
	id_produto integer,
	id_compra integer,
	constraint fk_compraProduto_produto foreign key(id_produto) references produto,
	constraint fk_compraProduto_compra foreign key(id_compra) references compra

);


