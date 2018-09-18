--CREATE DATABASE Candyshop
--use Candyshop
/*
CREATE TABLE fornecedor(
ID_for SMALLINT PRIMARY KEY IDENTITY,
Nome_for VARCHAR(50) NOT NULL,
rua_for VARCHAR(50) NOT NULL,
tel_for BIGINT NOT NULL,
num_for INTEGER NOT NULL,
)
CREATE TABLE funcionario(
ID_funcio SMALLINT PRIMARY KEY IDENTITY,
Nome_funcio VARCHAR(50) NOT NULL,
cargo_funcio VARCHAR(30) NOT NULL,
time_funcio VARCHAR(50) NOT NULL,
idade_funcio INTEGER NOT NULL,
tel_funcio BIGINT NOT NULL,
)
CREATE TABLE produto(
ID_produto SMALLINT PRIMARY KEY IDENTITY,
Nome_produto VARCHAR(30) NOT NULL,
tipo_produto VARCHAR(20) NOT NULL
)

CREATE TABLE compra(
ID_compra SMALLINT PRIMARY KEY IDENTITY,
ID_Produto SMALLINT,
qtd_compra SMALLINT NOT NULL,
preco_compra MONEY NOT NULL,
CONSTRAINT fk_compra_produto FOREIGN KEY (ID_Produto) REFERENCES produto
)

CREATE TABLE estoque(
ID_estoque SMALLINT PRIMARY KEY IDENTITY,
ID_Produto SMALLINT,
saldo_estoque BIGINT,
CONSTRAINT fk_estoque_produto FOREIGN KEY (ID_Produto) REFERENCES produto
)
CREATE TABLE venda(
ID_venda SMALLINT PRIMARY KEY IDENTITY,
ID_FUNCIO SMALLINT,
ID_PROD SMALLINT,
preco_venda MONEY NOT NULL,
qtd_venda MONEY NOT NULL,
pgto_venda BIT NOT NULL,
data_venda DATE NOT NULL,
CONSTRAINT fk_funcio_venda FOREIGN KEY (ID_FUNCIO) REFERENCES funcionario,
CONSTRAINT fk_prod_venda FOREIGN KEY (ID_PROD) REFERENCES produto
--pgto venda 0 = nao pago 1 = pago,"coloca na conta"
)  

CREATE TABLE debitos(
ID_debitos SMALLINT PRIMARY KEY IDENTITY,
ID_VENDA SMALLINT,
pgto_venda BIT NOT NULL,
CONSTRAINT fk_deb_venda FOREIGN KEY (ID_VENDA) REFERENCES venda)

---------------------------------
--VIEW mostrando os funcionarios que nao pagam

CREATE VIEW [DEVEDORES] AS
SELECT funcionario.Nome_funcio AS NaoPagou FROM debitos 
INNER JOIN venda
ON venda.ID_venda = debitos.ID_VENDA
INNER JOIN funcionario
ON venda.ID_FUNCIO = funcionario.ID_funcio
WHERE debitos.pgto_venda = 0

SELECT NaoPagou
FROM DEVEDORES

--CADASTRANDO FORNECEDOR 
--INSERT INTO fornecedor VALUES ('andreia','av severino tostes meireles',123456789, 1522)

--CADASTRANDO FUNCIONARIOS
--INSERT INTO funcionario VALUES ('EDU','Analista de BI','B.I.', 30, 123456789)
--INSERT INTO funcionario VALUES ('TIAGO','Analista de BI','B.I.', 40, 773499700)

--CADASTRANDO PRODUTOS
--INSERT INTO produto VALUES ('coca','refri')
--INSERT INTO produto VALUES ('batom','doce')
--INSERT INTO produto VALUES ('bala','doce')
--INSERT INTO produto VALUES ('sprite','refri')

-- ANDREIA REALIZANDO COMPRA (indo para o estoque) (1= coca 2= batom 3= bala 4= sprite )
INSERT INTO compra VALUES (1,10, 3.00)
INSERT INTO compra VALUES (2,10, 3.00)
INSERT INTO compra VALUES (3,10, 3.00)
INSERT INTO compra VALUES (4,10, 3.00)
*/