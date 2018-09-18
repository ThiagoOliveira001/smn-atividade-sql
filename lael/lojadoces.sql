--Cria Banco de dados 
CREATE DATABASE LojaDoces

--Cria tabela Funcionario
CREATE TABLE tb_Cliente (
	id SMALLINT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(100) NOT NULL,
	data_nascimento DATE NOT NULL,
	email VARCHAR (50) NOT NULL,
	telefone BIGINT NOT NULL,
	cpf BIGINT NOT NULL,
	rg BIGINT NOT NULL
)
--Cria a tabela Venda
CREATE TABLE tb_Venda (
	id SMALLINT PRIMARY KEY IDENTITY(1,1),
	valor_total MONEY
)

--Cria tabela Compra
CREATE TABLE tb_Compra (
	id SMALLINT PRIMARY KEY IDENTITY(1,1),
	nome_Produto VARCHAR(100),
	preco_unitario MONEY NOT NULL,
	descricao VARCHAR(100),
	quantidade BIGINT 

)

--Cria tabela Marca
CREATE TABLE tb_Marca (
	id SMALLINT PRIMARY KEY IDENTITY(1,1),
	nome_Marca	VARCHAR(50)
	

)

--Cria a tabela Categoria
CREATE TABLE tb_Categoria(
	id SMALLINT PRIMARY KEY IDENTITY(1,1),
	categoria VARCHAR(50) NOT NULL
)

--Cria a tabela Pagamento
CREATE TABLE  tb_Pagamento (
	id SMALLINT PRIMARY KEY IDENTITY(1,1),
	data_pagamento DATE,
	id_Cliente SMALLINT,
	id_Venda SMALLINT,
	CONSTRAINT fk_Pagamento_Cliente FOREIGN KEY (id_Cliente)
	 REFERENCES tb_Cliente(id),
	CONSTRAINT fk_Pagamento_Venda FOREIGN KEY (id_Venda)
	 REFERENCES tb_Venda(id) 

)

--Cria a tabela tipo de Pagamento
CREATE TABLE tb_Tipo_Pagamento(
	id SMALLINT PRIMARY KEY IDENTITY(1,1),
	tipo_pagamento VARCHAR(30),
	id_Pagamento SMALLINT UNIQUE,
	CONSTRAINT fk_Tipo_Pagamento_Pagamento FOREIGN KEY (id_Pagamento)
	 REFERENCES tb_Pagamento
	
)

--Cria a tabela Item_Venda
CREATE TABLE tb_Item_Venda (
	id SMALLINT PRIMARY KEY IDENTITY(1,1),
	quantidade BIGINT NOT NULL,
	id_Venda SMALLINT,
	CONSTRAINT fk_item_Venda_Venda FOREIGN KEY (id_Venda)
	 REFERENCES tb_Venda(id)
)

--Cria tabela Produto
CREATE TABLE tb_Produto(
	id SMALLINT PRIMARY KEY IDENTITY(1,1),
	nome_Produto VARCHAR(100) NOT NULL,
	preco_unitario MONEY NOT NULL,
	descricao VARCHAR(100) NOT NULL,
	id_Item_Venda SMALLINT,
	id_Compra SMALLINT,
	id_Categoria SMALLINT, 
	id_Marca SMALLINT,
	CONSTRAINT fk_Produto_Item_Venda FOREIGN KEY (id_Item_Venda)
	 REFERENCES tb_Item_Venda(id),
	CONSTRAINT fk_Produto_Compra FOREIGN KEY (id_Compra)
	 REFERENCES tb_Compra(id),
	CONSTRAINT fk_Produto_Categoria FOREIGN KEY (id_Categoria)
	 REFERENCES tb_Categoria(id),
	CONSTRAINT fk_Produto_Marca FOREIGN KEY (id_Marca)
	 REFERENCES tb_Marca(id)
)

