CREATE DATABASE doceria
use doceria

CREATE TABLE cliente(
id	INTEGER NOT NULL IDENTITY,
nomeCliente	VARCHAR(50) NOT NULL,
cargo	VARCHAR(20) NOT NULL,
dataAdmissao	DATE NOT NULL,
telefone	BIGINT NOT NULL,
email	VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
)

SELECT * FROM cliente

CREATE TABLE categoria(
id	INTEGER NOT NULL IDENTITY,
nomeCategoria	VARCHAR(50) NOT NULL
PRIMARY KEY(id)
)

CREATE TABLE produto(
id INTEGER NOT NULL IDENTITY,
nomeProduto VARCHAR(50) NOT NULL,
descricao	TEXT NOT NULL,
marca	VARCHAR(20) NOT NULL,
valor	DECIMAL(10,2) NOT NULL,
quantidade	INTEGER NOT NULL,
idCategoria	INTEGER NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(idCategoria) REFERENCES categoria(id)
)

CREATE TABLE compra (
id	INTEGER NOT NULL IDENTITY,
valorPago	DECIMAL(10,2) NOT NULL,
dataCompra	DATE NOT NULL,
notaFiscal	BIGINT UNIQUE NOT NULL,
idProduto	INTEGER NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(idProduto) REFERENCES produto(id)
)

CREATE TABLE venda(
id	INTEGER NOT NULL IDENTITY,
dataVenda	DATE NOT NULL,
dataPagamento	DATE,
valorTotal	DECIMAL(10,2) NOT NULL,
idCliente	INTEGER NOT NULL,
idProduto	INTEGER NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(idCliente) REFERENCES cliente(id)
)


CREATE TABLE vendaProduto(
idVenda	INTEGER NOT NULL,
idProduto	INTEGER NOT NULL,
FOREIGN KEY(idVenda) REFERENCES venda(id),
FOREIGN KEY(idProduto) REFERENCES produto(id)
)
