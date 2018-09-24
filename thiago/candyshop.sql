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
	idvenda INT CONSTRAINT fk_itemvenda_venda FOREIGN KEY REFERENCES shop.venda(id) NOT NULL,
	qtde INT NOT NULL,
	valor NUMERIC(5,2) NOT NULL,
	CONSTRAINT pk_itemvenda PRIMARY KEY(idproduto,idvenda)
)
GO
CREATE TABLE shop.itemcompra(
	idproduto INT CONSTRAINT fk_itemcompra_produto FOREIGN KEY REFERENCES shop.produto(id) NOT NULL,
	idcompra INT CONSTRAINT fk_itemcompra_compra FOREIGN KEY REFERENCES shop.compra(id) NOT NULL,
	qtde INT NOT NULL,
	valor NUMERIC(5,2) NOT NULL 
)
GO
CREATE INDEX ix_nomecliente ON pessoa.cliente(nome);
CREATE INDEX ix_produto ON shop.produto(nome);

INSERT INTO administrativo.empresa(razaosocial,logradouro,cep,bairro,municipio,estado,numero)
	VALUEs('Trevor Philips Enterprise','Pista de pouso',1234,'Sand shores','Los Santos','SA',123),
		('Trevor Philips Enterprise 2','Pista de pouso',1234,'Sand shores','Los Santos','SA',123);

INSERT INTO pessoa.cliente(nome,dtnascimento,bairro,logradouro,idempresa,municipio,estado,cep,cpf,numero)
	VALUES('CARL JHONSON','19750303','Counton','Groove Street',1,'Los Santos','SA',7465,12123345778,12345);

INSERT INTO pessoa.cliente(nome,dtnascimento,bairro,logradouro,idempresa,municipio,estado,cep,cpf,numero)
	VALUES('Tommy Vercetti','19550303','Star Iland','Rua 1',1,'Vice City','FL',465,12123345728,1235),
		('Franklin','19970303','Strawberry','Rua 13',2,'Los Santos','SA',223,36687908,6545);


INSERT INTO shop.produto(nome,descricao)
	VALUES('bis branco','chocolate'),
		('bis preto', 'chocolate'),
		('batom','chocolate'),
		('Doritos','Salgadinho'),
		('Mentos','Bala');

INSERT INTO administrativo.responsavel(idcliente,status)
	values(2,1),
		(3,1);

INSERT INTO shop.compra(idresponsavel)
	values(1),
	(2);

INSERT INTO shop.venda(idcliente,idresponsavel)
	values(1,1),
		(2,1),
		(1,2),
		(2,2);


INSERT INTO shop.itemcompra(idcompra,idproduto,qtde,valor)
	values(1,1,20,2.50),
		(1,2,30,3.00),
		(1,3,40,1.50),
		(1,4,50,5.25),
		(1,5,60,1),
		(2,1,10,2.50),
		(2,2,15,3.00),
		(2,3,20,1.50),
		(2,4,25,5.25),
		(2,5,30,1);

INSERT INTO shop.itemvenda(idproduto,idvenda,qtde,valor)
	VALUES (1,1,3,3.00),
		(2,1,2,3.50),
		(3,1,3,1.90),
		(4,2,10,7),
		(5,2,3,1.50),
		(1,3,6,3.00),
		(2,3,4,3.50),
		(3,3,6,1.90),
		(4,4,20,7),
		(5,4,6,1.50);
		

CREATE OR ALTER VIEW shop.estoque
AS
	SELECT (SUM(ic.qtde) - SUM(iv.qtde)) AS Quantidade,p.id,p.nome,e.razaosocial
	FROM shop.produto AS p
		INNER JOIN shop.itemcompra AS ic ON ic.idproduto = p.id
		INNER JOIN shop.compra AS c ON c.id = ic.idcompra
		INNER JOIN shop.itemvenda AS iv ON iv.idproduto = p.id
		INNER JOIN shop.venda AS v ON v.id = iv.idvenda
		INNER JOIN administrativo.responsavel AS r ON r.id = c.idresponsavel
		INNER JOIN pessoa.cliente AS cl ON cl.id = r.idcliente
		INNER JOIN administrativo.empresa AS e ON e.id = cl.idempresa
	WHERE c.idresponsavel = v.idresponsavel
	GROUP BY p.id,e.id,e.razaosocial,p.nome
	ORDER BY p.id

select * from shop.produto

INSERT INTO shop.compra(idresponsavel)
	VALUES(1);

SELECT * FROM shop.compra
INSERT INTO shop.itemcompra(idcompra,idproduto,qtde,valor)
	VALUES(3,1,10,2.50);