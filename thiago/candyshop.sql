CREATE DATABASE candyshop
GO
USE candyshop  
GO
CREATE SCHEMA administrativo
GO
CREATE SCHEMA shop
GO
CREATE SCHEMA pessoa
GO
CREATE TABLE administrativo.empresa(
	id INT CONSTRAINT pk_empresa PRIMARY KEY IDENTITY,
	razaosocial VARCHAR(50) NOT NULL,
	logradouro VARCHAR(100) NOT NULL,
	cep INT NOT NULL,
	bairro VARCHAR(50) NOT NULL,
	municipio VARCHAR(50) NOT NULL,
	estado VARCHAR(2) NOT NULL,
	numero SMALLINT NOT NULL
)
GO
CREATE TABLE pessoa.cliente(
	id INT CONSTRAINT pk_cliente PRIMARY KEY IDENTITY,
	nome VARCHAR(100) NOT NULL,
	cpf BIGINT CONSTRAINT uk_cliente_cpf UNIQUE NOT NULL,
	dtcadastro DATE DEFAULT(GETDATE()) NOT NULL,
	logradouro VARCHAR(100) NOT NULL,
	cep INT NOT NULL,
	bairro VARCHAR(50) NOT NULL,
	municipio VARCHAR(50) NOT NULL,
	estado VARCHAR(2) NOT NULL,
	numero SMALLINT NOT NULL,
	idempresa INT CONSTRAINT fk_cliente_empresa FOREIGN KEY REFERENCES administrativo.empresa(id) NOT NULL,
	dtnascimento DATE CONSTRAINT ck_dtnascimento CHECK(GETDATE() > dtnascimento) NOT NULL,
)
GO
CREATE TABLE pessoa.telefone(
	id INT CONSTRAINT pk_telefone PRIMARY KEY IDENTITY,
	numero BIGINT CONSTRAINT uk_numero UNIQUE NOT NULL,
	idcliente INT CONSTRAINT fk_telefone_cliente FOREIGN KEY REFERENCES pessoa.cliente(id) NOT NULL
)
GO
CREATE TABLE administrativo.responsavel(
	id INT CONSTRAINT pk_responsavel PRIMARY KEY IDENTITY,
	idcliente INT CONSTRAINT fk_responsavel_cliente FOREIGN KEY REFERENCES pessoa.cliente(id) NOT NULL,
	dtcadastro DATE DEFAULT(GETDATE()) NOT NULL,
	status BIT NOT NULL  
)
GO
CREATE TABLE shop.produto(
	id INT CONSTRAINT pk_produto PRIMARY KEY IDENTITY,
	nome VARCHAR(50) CONSTRAINT uk_produto_nome UNIQUE NOT NULL,
	descricao VARCHAR(100) NOT NULL
)
GO
CREATE TABLE shop.compra(
	id INT CONSTRAINT pk_compra PRIMARY KEY IDENTITY,
	idresponsavel INT CONSTRAINT fk_compra_responsavel FOREIGN KEY REFERENCES administrativo.responsavel(id) not null,
	idproduto INT CONSTRAINT fk_compra_produto FOREIGN KEY REFERENCES shop.produto NOT NULL,
	dtcompra DATE DEFAULT(GETDATE()) NOT NULL
)
GO
CREATE TABLE shop.venda(
	id INT CONSTRAINT pk_venda PRIMARY KEY IDENTITY,
	idcliente INT CONSTRAINT fk_venda_cliente FOREIGN KEY REFERENCES pessoa.cliente(id) NOT NULL,
	idresponsavel INT CONSTRAINT fk_venda_responsavel FOREIGN KEY REFERENCES administrativo.responsavel(id) NOT NULL,
	dtvenda DATE DEFAULT(GETDATE()) NOT NULL
)
GO
CREATE TABLE shop.financeiro(
	id INT CONSTRAINT pk_financeiro PRIMARY KEY IDENTITY,
	idvenda INT CONSTRAINT fk_financeiro_venda FOREIGN KEY REFERENCES shop.venda(id) NOT NULL,
	dtpagamento DATE DEFAULT(GETDATE()) NOT NULL,
	valor NUMERIC(5,2) CONSTRAINT ck_financeiro_valor CHECK(valor >= 0)	NOT NULL,
	consideracao VARCHAR(100) 
)
GO
CREATE TABLE shop.itemvenda(
	idproduto INT CONSTRAINT fk_itemvenda_produto FOREIGN KEY REFERENCES shop.produto(id) NOT NULL,
	idcompra INT CONSTRAINT fk_itemvenda_compra FOREIGN KEY REFERENCES shop.compra(id) NOT NULL,
	qtde INT NOT NULL,
	valor NUMERIC(5,2) NOT NULL,
	CONSTRAINT pk_itemvenda PRIMARY KEY(idproduto,idcompra)
)
GO
CREATE TABLE shop.itemcompra(
	idproduto INT CONSTRAINT fk_itemcompra_produto FOREIGN KEY REFERENCES shop.produto(id) NOT NULL,
	idcompra INT CONSTRAINT fk_itemcompra_compra FOREIGN KEY REFERENCES shop.compra(id) NOT NULL,
	qtde INT NOT NULL,
	valor NUMERIC(5,2) NOT NULL 
)
GO