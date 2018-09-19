SELECT * FROM Cliente

sp_help Cliente

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Lael dos Santos Oliveira', 'M', '05-12-1995', 1)  

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('João da Silva Gomes', 'M', '05-12-1995', 0)

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
VALUES ('Joaquim Cipriano de Oliveira', 'F', '05-11-1808', 1) 

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Ricardo Oliveira da Silva', 'M', '01-08-1998', 0)  

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Leila Pereira de Oliveira', 'F', '04-24-1988', 0)
  
INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Lucas Tavares', 'F', '05-11-1986', 1)  

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Pedro Antônio de Pádua', 'M', '08-06-1978', 1)

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Ana Pereira de Oliveira', 'F', '05-11-1986', 1)  
   
INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Rita Pereira de Oliveira ', 'F', '05-11-1986', 1)

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Roseli de Fátima', 'F', '05-11-1986', 0)

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Mateus Souza', 'F', '08-09-1987', 1)

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Renata Fornari', 'F', '04-05-1996', 1)

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Joana Martins', 'F', '04-05-1996', 1)

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Luismar Silva Oliveira', 'M', '04-05-1996', 1)

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Hellen Ganzaroli', 'F', '04-05-1996', 1)

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Luciano Cipriano', 'M', '04-05-1988', 1)

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Pedro Henrique', 'M', '04-05-1976', 1)
INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Lucilene de Oliveira', 'F', '04-05-1896', 1)

INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('João Cipriano', 'M', '04-05-1986', 1)
INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo) 
VALUES ('Henrique Agusto', 'M', '04-05-1998', 1)


INSERT INTO TipoProduto(NomeTipoProduto)
VALUES ('Balas')

DELETE FROM TipoProduto WHERE NomeTipoProduto = 'Nutella'

INSERT INTO Marca (NomeMarca)
VALUES ('Ferrero Rocher')

INSERT INTO Marca (NomeMarca)
VALUES ('Lanche Natural')

SELECT * FROM Marca 

SELECT * FROM Produto WHERE IdMarca = 37

SELECT * FROM TipoProduto 

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(5,33, 'Kinder Bueno', '7.00', '10.00', '20')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(5,33, 'Kinder Chocolate', '6.00', '8.00', '20')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(5,33, 'Kinder Joy', '5.00', '6.00', '20')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(5,33, 'Kinder Ovo', '9.50', '10.50', '20')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(5,33, 'Ferrero Rocher', '5.00', '7.50', '10')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(5,33, 'Ferrero Collection', '3.50', '5.50', '10')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(5,33, 'Nutella 150g', '3.50', '5.50', '10')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(5,33, 'Nutella 350g', '4.50', '8.50', '15')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(5,33, 'Nutella 650g', '6.50', '10.50', '5')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(1,33, 'TIC TAC Tormenta 16g', '0.50', '2.50', '20')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(1,33, 'TIC TAC Morango 16g', '0.50', '2.50', '20')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(1,33, 'TIC TAC Menta 16g', '0.50', '2.50', '20')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(1,33, 'TIC TAC Laranja 16g', '0.50', '2.50', '20')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(1,33, 'TIC TAC Cereja e Maracujá 16g', '0.50', '2.50', '20')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(1,33, 'TIC TAC Frutas como te Gusta 16g', '0.50', '2.50', '20')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(2,37, 'Sanduiche natural com pasta de ricota', '8.00', '10.00', '10')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(2,37, 'Sanduiche natural com peito de Peru', '8.00', '10.00', '10')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(2,37, 'Sanduiche natural com pasta com Atum','8.00', '10.00', '10')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(2,37, 'Sanduiche natural com cenoura e ovo', '8.00', '10.00', '10')

--INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
--	VALUES(2,37, 'Sanduiche natural com espinafre', '8.00', '10.00', '10')

SELECT * FROM Venda WHERE IdCliente = 12

SELECT * FROM VendaItem

INSERT INTO Venda (IdCliente, DataPagamento)
	VALUES (12, GETDATE() + 4 )

INSERT INTO Venda (IdCliente, DataPagamento)
	VALUES (12, GETDATE() + 4 )