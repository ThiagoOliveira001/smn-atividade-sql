CREATE DATABASE db_DoceriaSMN

USE db_DoceriaSMN

CREATE TABLE tbl_funcionarios (ID INTEGER PRIMARY KEY IDENTITY,
Nome VARCHAR(50) NOT NULL,
cpf BIGINT NOT NULL,
rg BIGINT NOT NULL,
rua VARCHAR(50) NOT NULL,
numero VARCHAR(10) NOT NULL,
bairro VARCHAR(100) NOT NULL,
cep VARCHAR(9) NOT NULL,
cidade VARCHAR(50) NOT NULL,
estado CHAR(2) NOT NULL,
telefone BIGINT NOT NULL)

CREATE TABLE tbl_produtos (ID INTEGER PRIMARY KEY IDENTITY,
Nome VARCHAR(50) NOT NULL,
descricao TEXT)

CREATE TABLE tbl_compras (ID INTEGER PRIMARY KEY IDENTITY,
qtde INTEGER,
valor MONEY)

CREATE TABLE tbl_vendas (ID INTEGER PRIMARY KEY IDENTITY,
qtde INTEGER,
valor MONEY,
status BIT)

CREATE TABLE tbl_itens (ID INTEGER PRIMARY KEY IDENTITY)

CREATE TABLE tbl_pagamentos (ID INTEGER PRIMARY KEY IDENTITY,
valor MONEY,
tipo VARCHAR(50),
data DATE)

--Adicionando chaves estrangeiras
ALTER TABLE tbl_compras
ADD ID_produto INTEGER NOT NULL
CONSTRAINT fk_compras_produtos FOREIGN KEY (ID_produto) REFERENCES tbl_produtos

ALTER TABLE tbl_vendas
ADD ID_produto INTEGER NOT NULL
CONSTRAINT fk_vendas_produtos FOREIGN KEY (ID_produto) REFERENCES tbl_produtos

ALTER TABLE tbl_vendas
ADD ID_funcionario INTEGER NOT NULL
CONSTRAINT fk_vendas_funcionarios FOREIGN KEY (ID_funcionario) REFERENCES tbl_funcionarios

ALTER TABLE tbl_itens
ADD ID_venda INTEGER NOT NULL
CONSTRAINT fk_itens_vendas FOREIGN KEY (ID_venda) REFERENCES tbl_vendas

ALTER TABLE tbl_itens
ADD ID_produto INTEGER NOT NULL
CONSTRAINT fk_itens_produto FOREIGN KEY (ID_produto) REFERENCES tbl_produtos

ALTER TABLE tbl_pagamentos 
ADD ID_vendas INTEGER NOT NULL
CONSTRAINT fk_pagamentos_vendas FOREIGN KEY (ID_vendas) REFERENCES tbl_vendas