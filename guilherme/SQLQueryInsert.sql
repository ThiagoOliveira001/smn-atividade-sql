USE LojaDoces
INSERT INTO Cliente(NomeCliente, Sexo, DataNascimento, Ativo)
VALUES				('Godofredo alvez da silva', 'M', '19960815', 1),
					('Fábio alvez da silva', 'M', '19960815', 1),
					('Alberto Gomez pereira', 'M', '19951020', 1),
					('Gertrudez Fabia', 'F', '19891015', 0),
					('Maria Gertrudez', 'F', '19450815', 1),
					('Fabio alvez Pereira', 'M', '19930815', 0),
					('Roberto Carlos da silva', 'M', '19850815', 1),
					('Pelé do Santos', 'M', '19971215', 0),
					('Silvia Algusta', 'F', '19831015', 1),
					('Fernando di Paula', 'M', '19450515', 0),
					('Zico do Brasil', 'M', '19500915', 1),
					('Maria Andressa Bastos', 'F', '19960815', 1),
					('Ana Paula Borges', 'F', '19961215', 1),
					('Godofredo alvez', 'M', '19960715', 1),
					('Ian da Cunha', 'M', '19940820', 1),
					('Gabriel cachueira', 'M', '19320815', 1),
					('Ronaldinho Gaúcho', 'M', '19850815', 1),
					('Ronaldinho Fenomeno', 'M', '19821017', 1),
					('Júlia Bastos', 'M', '19450619', 1),
					('Marcos Pereira', 'M', '19960815', 1)


Select * from Cliente


Select * from Marca
INSERT INTO Marca
Values ('Energético');

Select * from TipoProduto

INSERT INTO Produto(IdMarca, IdTipoProduto, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque)
Values				(5, 3, 'Antartica garrafinha', 5.20, 8.50, 10),
					(5, 3, 'Antartica 2 litros', 10.20, 15.50, 100),
					(5, 3, 'Antartica 1 litro', 5.20, 9.50, 15),
					(32, 3, 'Monster lata', 4.20, 8.50, 100),
					(32, 3, 'Monster Latão', 6.20, 9.70, 10),
					(32, 3, 'Monster garrafa', 15.20, 28.50, 20),
					(4, 3, 'Coca Cola 20 litros', 20.20, 28.50, 15),
					(4, 3, 'Coca Cola 50 litros', 50.20, 58.50, 150),
					(4, 3, 'Coca Cola 10 litros', 10.20, 18.50, 10),
					(6, 3, 'Itubaina 20 litros', 15.20, 28.50, 15),
					(6, 3, 'Itubaina 10 litros', 6.20, 18.50, 10),
					(6, 3, 'Itubaina 30 litros', 25.20, 28.00, 17),
					(6, 3, 'Itubaina 50 litros', 55.20, 58.00, 10),
					(6, 3, 'Itubaina 60 litros', 65.20, 70.00, 10),
					(32, 3, 'Monster 50 litros', 35.20, 48.00, 10),
					(32, 3, 'Monster 70 litros', 45.20, 98.00, 10),
					(32, 3, 'Monster 100 litros', 15.20, 18.00, 10),
					(32, 3, 'Monster 7 litros', 15.20, 18.00, 10),
					(5, 3, 'Antartica 10 litros', 15.20, 28.10, 10),
					(5, 3, 'Antartica Chopp', 55.00, 58.50, 10)

Select * FROM Produto

select * From Venda

INSERT INTO Venda (IdCliente, DataVenda, DataPagamento)
Values		(4, default,'2018-10-20 18:15'),
			(6, default,'2018-09-25 18:15'),
			(8, default,'2018-09-23 18:15'),
			(9, default,'2018-10-21 18:15'),
			(12, default,'2018-10-10 18:15'),
			(16, default,'2018-10-12 18:15'),
			(18, default,'2018-10-30 18:15'),
			(19, default,'2018-10-25 18:15'),
			(22, default,'2018-10-27 18:15'),
			(23, default,'2018-10-28 18:15'),
			(24, default,'2018-10-29 18:15'),
			(30, default,'2018-10-24 18:15'),
			(39, default,'2018-10-25 18:15'),
			(45, default,'2018-10-22 18:15'),
			(46, default,'2018-10-10 18:15'),
			(47, default,'2018-10-05 18:15'),
			(48, default,'2018-10-01 18:15'),
			(49, default,'2018-10-06 18:15'),
			(50, default,'2018-10-10 18:15'),
			(51, default,'2018-10-04 18:15'),
			(52, default,'2018-10-09 10:15'),
			(53, default,'2018-10-05 10:25'),
			(54, default,'2018-10-07 17:25'),
			(55, default,'2018-10-19 10:35'),
			(56, default,'2018-10-18 18:15'),
			(57, default,'2018-10-17 17:15'),
			(58, default,'2018-10-16 18:15'),
			(59, default,'2018-10-13 10:15'),
			(60, default,'2018-10-12 08:15'),
			(61, default,'2018-10-11 08:25'),
			(62, default,'2018-10-25 10:15'),
			(128, default,'2018-10-10 13:15'),
			(129, default,'2018-10-30 17:15'),
			(130, default,'2018-10-31 18:15'),
			(131, default,'2018-10-30 18:15'),
			(132, default,'2018-10-20 18:00'),
			(133, default,'2018-10-20 14:00'),
			(134, default,'2018-10-20 18:50'),
			(135, default,'2018-10-20 18:03'),
			(136, default,'2018-10-20 14:10'),
			(137, default,'2018-10-20 14:17'),
			(138, default,'2018-10-20 14:19'),
			(139, default,'2018-10-20 14:17'),
			(140, default,'2018-10-20 14:17'),
			(141, default,'2018-10-20 18:15'),
			(142, default,'2018-10-20 18:15'),
			(143, default,'2018-10-20 14:15'),
			(432, default,'2018-10-20 15:15'),
			(434, default,'2018-10-20 16:15'),
			(438, default,'2018-10-20 11:15')


select * from VendaItem



Select * 
from Cliente
inner join Produto on Cliente.IdCliente = Produto.IdProduto


INSERT INTO VendaItem(IdVenda, IdProduto, Quantidade)
Values
			(291, 50, 10),
			(216, 51, 80),
			(221, 50, 50),
			(233, 51, 45),
			(235, 54, 1),
			(237, 60, 5),
			(219, 61, 7),
			(237, 64, 65),
			(240, 77, 2),
			(233, 73, 9),
			(234, 85, 6),
			(240, 2, 12),
			(248, 3, 98),
			(237, 4, 5),
			(253, 5, 65),
			(255, 10, 7),
			(257, 11, 49),
			(18, 12, 3),
			(20, 13, 419),
			(113, 14, 12),
			(53, 7, 75),
			(114, 474, 10),
			(58, 474, 7),
			(113, 100, 98),
			(125, 102, 5),
			(126, 104, 4),
			(127, 107, 3),
			(128, 108, 2),
			(130, 221, 1),
			(131, 222, 9),
			(132, 224, 20),
			(133, 225, 200),
			(144, 227, 64),
			(154, 228, 73),
			(155, 229, 98),
			(156, 230, 78),
			(156, 247, 79),
			(135, 248, 98),
			(136, 249, 55),
			(137, 250, 65),
			(138, 248, 64),
			(300, 40, 77),
			(301, 41, 33),
			(302, 105, 35),
			(303, 107, 99),
			(304, 108, 500),
			(305, 224, 543),
			(306, 92, 432),
			(307, 93, 321)