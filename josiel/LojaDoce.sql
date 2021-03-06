GO
CREATE DATABASE db_LojaDoce
GO
USE db_LojaDoce

CREATE TABLE compra
(ID SMALLINT PRIMARY KEY IDENTITY,
data DATE NOT NULL)

CREATE TABLE categoria
(ID SMALLINT PRIMARY KEY IDENTITY,
nome VARCHAR(100) NOT NULL)

CREATE TABLE marca
(ID SMALLINT PRIMARY KEY IDENTITY,
nome VARCHAR(100) NOT NULL)

CREATE TABLE tipoPagamento
(ID SMALLINT PRIMARY KEY IDENTITY,
nome VARCHAR(100) NOT NULL)

CREATE TABLE produto
(ID SMALLINT PRIMARY KEY IDENTITY,
idCategoria SMALLINT NOT NULL,
idMarca SMALLINT NOT NULL,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(100) NOT NULL,
estoque SMALLINT NOT NULL,
precoUnitario MONEY NOT NULL
CONSTRAINT fk_produto_categoria FOREIGN KEY(idCategoria) REFERENCES categoria,
CONSTRAINT fk_produto_marca FOREIGN KEY(idMarca) REFERENCES marca)

CREATE TABLE compraProduto
(idCompra SMALLINT NOT NULL,
idProduto SMALLINT NOT NULL,
quantidade SMALLINT NOT NULL,
precoUnitario MONEY NOT NULL
CONSTRAINT fk_compraProduto_compra FOREIGN KEY(idCompra) REFERENCES compra,
CONSTRAINT fk_compraProduto_produto FOREIGN KEY(idProduto) REFERENCES produto)

CREATE TABLE cliente
(ID SMALLINT PRIMARY KEY IDENTITY,
nome VARCHAR(100) NOT NULL,
cpf SMALLINT NOT NULL,
cargo VARCHAR(100) NOT NULL,
credito MONEY NOT NULL)

CREATE TABLE venda
(ID SMALLINT PRIMARY KEY IDENTITY,
idTipoPagamento SMALLINT NOT NULL,
idCliente SMALLINT NOT NULL,
dataVenda DATE NOT NULL,
dataPagamento DATE
CONSTRAINT fk_venda_tipoPagamento FOREIGN KEY(idTipoPagamento) REFERENCES tipoPagamento,
CONSTRAINT fk_venda_cliente FOREIGN KEY(idCliente) REFERENCES cliente)

CREATE TABLE item
(idProduto SMALLINT NOT NULL,
idVenda SMALLINT NOT NULL,
quantidade SMALLINT NOT NULL
CONSTRAINT fk_item_produto FOREIGN KEY(idProduto) REFERENCES produto,
CONSTRAINT fk_item_venda FOREIGN KEY(idVenda) REFERENCES venda)

