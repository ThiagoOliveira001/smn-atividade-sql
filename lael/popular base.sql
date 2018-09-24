SELECT * FROM Cliente

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

SELECT * FROM Produto 

SELECT * FROM TipoProduto 

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(5,33, 'Kinder Bueno', '7.00', '10.00', '20')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(5,33, 'Kinder Chocolate', '6.00', '8.00', '20')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(5,33, 'Kinder Joy', '5.00', '6.00', '20')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(5,33, 'Kinder Ovo', '9.50', '10.50', '20')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(5,33, 'Ferrero Rocher', '5.00', '7.50', '10')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(5,33, 'Ferrero Collection', '3.50', '5.50', '10')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(5,33, 'Nutella 150g', '3.50', '5.50', '10')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(5,33, 'Nutella 350g', '4.50', '8.50', '15')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(5,33, 'Nutella 650g', '6.50', '10.50', '5')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(1,33, 'TIC TAC Tormenta 16g', '0.50', '2.50', '20')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(1,33, 'TIC TAC Morango 16g', '0.50', '2.50', '20')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(1,33, 'TIC TAC Menta 16g', '0.50', '2.50', '20')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(1,33, 'TIC TAC Laranja 16g', '0.50', '2.50', '20')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(1,33, 'TIC TAC Cereja e Maracujá 16g', '0.50', '2.50', '20')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(1,33, 'TIC TAC Frutas como te Gusta 16g', '0.50', '2.50', '20')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(2,37, 'Sanduiche natural com pasta de ricota', '8.00', '10.00', '10')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(2,37, 'Sanduiche natural com peito de Peru', '8.00', '10.00', '10')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(2,37, 'Sanduiche natural com pasta com Atum','8.00', '10.00', '10')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(2,37, 'Sanduiche natural com cenoura e ovo', '8.00', '10.00', '10')

INSERT INTO Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	VALUES(2,37, 'Sanduiche natural com espinafre', '8.00', '10.00', '10')

SELECT * FROM Cliente ORDER BY IdCliente
SELECT * FROM Venda
INNER JOIN Produto
ON Venda.IdVenda = Produto.IdProduto

INSERT INTO Venda (IdCliente, DataPagamento) VALUES (12, GETDATE() + 4 )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (30, GETDATE() + 5 )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (39, GETDATE() + 4 )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (22, GETDATE() + 1 )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (39, GETDATE() + 6 )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (45, GETDATE() + 1 )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (30, GETDATE() + 4 )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (30, GETDATE() + 4 )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (50, GETDATE() )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (51, GETDATE() + 1 )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (52, GETDATE() + 2 )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (53, GETDATE()  )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (54, GETDATE() + 3 )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (55, GETDATE() + 4 )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (56, GETDATE() )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (57, GETDATE() + 6)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (58, GETDATE() + 8)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (59, GETDATE() )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (60, GETDATE() + 3)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (61, GETDATE() + 5 )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (62, GETDATE() )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (128, GETDATE() + 5 )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (200, GETDATE() +1)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (201, GETDATE() +2)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (202, GETDATE() +3)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (203, GETDATE() +4)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (204, GETDATE() + 9)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (204, GETDATE() +10)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (205, GETDATE() )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (206, GETDATE() + 30)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (207, GETDATE() + 30)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (208, GETDATE() + 30)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (209, GETDATE() +5)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (210, GETDATE() +15)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (211, GETDATE() +15)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (212, GETDATE() +10)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (213, GETDATE() +8)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (214, GETDATE() )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (215, GETDATE() )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (216, GETDATE() + 7)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (217, GETDATE() + 10)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (218, GETDATE() + 5)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (219, GETDATE() + 30)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (220, GETDATE() )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (221, GETDATE() )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (222, GETDATE() + 5)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (223, GETDATE() )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (224, GETDATE() + 5 )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (225, GETDATE() )
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (226, GETDATE() + 5)
INSERT INTO Venda (IdCliente, DataPagamento) VALUES (227, GETDATE() )

SELECT * FROM VendaItem



INSERT INTO VendaItem (idVenda,IdProduto,Quantidade)VALUES(500,377,2) 
INSERT INTO VendaItem VALUES(501,378,2)
INSERT INTO VendaItem VALUES(502,388,2),
							(502,379,2),
							(503,380,5),
							(504,381,2),
							(460,382,5),
							(461,383,1),
							(385,385,3),
							(386,386,3),
							(387,387,3),
							(388,388,3),
							(389,389,5),
							(472,472,1),
							(474,474,1),
							(475,475,1),
							(476,476,1),
							(492,492,1),
							(493,493,2),
							(522,522,5),
							(523,523,5),
							(524,524,5),
							(525,525,5),
							(526,522,5),
							(527,527,4),
							(528,529,3),
							(530,531,5),
							(532,532,2),
							(522,522,5),
							(115,115,5),
							(116,166,4),
							(117,117,3),
							(518,511,2),
							(523,524,5),
							(119,119,5),
							(120,120,5),
							(121,121,3),
							(122,123,6),
							(150,150,10),
							(151,151,5),
							(152,152,6),
							(153,153,2),
							(154,154,4),
							(155,155,5),
							(156,156,5),
							(157,157,3),
							(158,158,3),
							(159,159,2),
							(160,160,4),
							(161,161,3),
							(162,162,4)

							