/*
QUERY PARA POPULAR O BANCO DE DADOS LOJADOCES
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 18/09/2018
*/

--INSERIR 20 CLIENTES-----------------------------------------------
INSERT INTO Cliente(NomeCliente, Sexo, DataNascimento, Ativo)
VALUES('Maria Andressa de Paula Silva', 'F', '19940516',1),
	  ('Isabelle Fernandes Azevedo', 'F', '19980917',1),
	  ('Tânia Sousa Ferreira', 'F', '19681013',1),
	  ('Giovanna Ferreira Pinto', 'F', '19511028',1),
	  ('Giovana Barbosa Lima', 'F', '19971230',1),
	  ('Ana Santos Barbosa', 'F', '19790914',0),
	  ('Luiza Santos Almeida', 'F', '19730205',0),
	  ('Julia Ribeiro Rocha', 'F', '19641101',0),
	  ('Júlia Carvalho Goncalves', 'F', '19941002',0),
	  ('Emilly Pereira Cavalcanti', 'F', '19960101',0),
	  ('Leonardo Costa Martins', 'M', '19940824',1),
	  ('Arthur Silva Dias', 'M', '19980911',1),
	  ('Caio Barbosa Cunha', 'M', '19880914',1),
	  ('João Cunha Araujo', 'M', '19961028',1),
	  ('Otávio Almeida Cavalcanti', 'M', '19961230',1),
	  ('Cauã Rocha Silva', 'M', '19891014',0),
	  ('Davi Pereira Araujo', 'M', '19950602',0),
	  ('Mateus Barros Castro', 'M', '19940301',0),
	  ('Arthur Fernandes Correia', 'M', '19931002',0),
	  ('Daniel Sousa Fernandes', 'M', '19970201',0)
--------------------------------------------------------------------

--INSERIR MARCA-----------------------------------------------------
INSERT INTO Marca(NomeMarca)
VALUES('Dori')
--------------------------------------------------------------------

--INSERIR TIPO PRODUTO----------------------------------------------
INSERT INTO TipoProduto(NomeTipoProduto)
VALUES('Chocolate')
--------------------------------------------------------------------

--INSERIR 20 PRODUTOS-----------------------------------------------
INSERT INTO Produto(IdTipoProduto, IdMarca, NomeProduto, ValorCompra,ValorVenda, QuantidadeEstoque)
VALUES(1,23,'Jubes Fruit Snacks Original Frutas 24X60G', 2.40,3.00,20),
	  (1,23,'Jubes Fruit Snacks Iogurt Blueberry 24X60G', 2.40,3.00,20),
	  (1,23,'Jubes Fruit Snacks Iogurt Blueberry 9X24X25G', 1.40,2.00,20),
	  (1,23,'Jubes Fruit Snacks Iogurt Morango 24X60G', 2.40,3.00,20),
	  (1,23,'Jubes Fruit Snacks Berry Sour 24X100G', 2.70,3.25,20),
	  (1,23,'Jubes Fruit Snacks Cherry Sour 9X24X25G', 1.40,2.00,20),
	  (1,23,'Jubes Fruit Snacks Berry Sour 9X24X25G', 1.40,2.00,20),
	  (1,23,'Jubes Fruit Snacks Iogurte Morango 9X24X25G', 1.40,2.00,20),
	  (1,23,'Jubes Fruit Snacks Iogurte Morango 24X60G', 2.70,3.25,20),
	  (1,23,'Jubes Fruit Snacks Cherry Sour 24X60G', 2.70,3.25,20),
	  (1,23,'Bala Bolete Tutti Frutti 30x150G', 2.50,3.00,15),
	  (1,23,'Bala Bolete Tutti Frutti 30x600G', 10.00,13.99,5),
	  (1,23,'Bala Hortelã Recheada 30x150G', 2.50,3.00,15),
	  (1,23,'Bala Hortelã Recheada unidade', 0.05,0.10,100),
	  (1,23,'Bala Bolete Tutti Frutti unidade', 0.10,0.20,100),
	  (1,23,'Bala Mel Recheada unidade', 0.05,0.10,100),
	  (1,23,'Bala Morango Recheada unidade', 0.10,0.20,100),
	  (1,23,'Bala Gota Cola unidade', 0.05,0.10,100),
	  (1,23,'Bala Hortelã Mint unidade', 0.05,0.10,100),
	  (1,23,'Bala Polar Cereja unidade', 0.05,0.10,100)
--------------------------------------------------------------------

--INSERIR 50 VENDAS-------------------------------------------------
INSERT INTO Venda(IdCliente, DataVenda, DataPagamento)
VALUES(2, default, '2018-09-18 16:55'),
	  (24, default, '2018-09-18 16:58'),
	  (30, default, '2018-09-18 16:59'),
	  (39, default, '2018-09-18 16:59'),
	  (45, default, '2018-09-18 16:59'),
	  (47, default, '2018-09-18 17:00'),
	  (139, default, '2018-09-18 17:00'),
	  (140, default, '2018-09-18 17:00'),
	  (185, default, '2018-09-18 17:01'),
	  (186, default, '2018-09-18 17:01'),
	  (187, default, '2018-09-18 17:01'),
	  (188, default, '2018-09-18 17:01'),
	  (189, default, '2018-09-18 17:02'),
	  (2, default, '2018-09-19 12:00'),
	  (24, default, '2018-09-19 12:00'),
	  (30, default, '2018-09-19 12:00'),
	  (39, default, '2018-09-19 12:00'),
	  (45, default, '2018-09-19 12:00'),
	  (47, default, '2018-09-19 12:00'),
	  (139, default, '2018-09-18 18:00'),
	  (140, default, '2018-09-18 18:00'),
	  (185, default, '2018-09-18 18:01'),
	  (186, default, '2018-09-18 18:01'),
	  (187, default, '2018-09-18 18:01'),
	  (188, default, '2018-09-18 18:01'),
	  (189, default, '2018-09-18 18:02'),
	  (188, default, '2018-09-18 18:01'),
	  (189, default, '2018-09-18 17:02'),
	  (188, default, '2018-09-18 18:01'),
	  (189, default, '2018-09-18 18:02'),
	  (431, '2018-09-19 12:32', '2018-09-19 12:32'),
	  (432, '2018-09-19 12:32', '2018-09-19 12:32'),
	  (433, '2018-09-19 12:32', '2018-09-19 12:32'),
	  (434, '2018-09-19 12:32', '2018-09-19 12:32'),
	  (435, '2018-09-19 12:32', '2018-09-19 12:32'),
	  (436, '2018-09-19 12:32', '2018-09-19 12:32'),
	  (507, '2018-09-19 12:32', '2018-09-19 12:32'),
	  (508, '2018-09-19 12:32', '2018-09-19 12:32'),
	  (509, '2018-09-19 12:32', '2018-09-19 12:32'),
	  (510, '2018-09-19 12:32', '2018-09-19 12:32'),
	  (320, default, '2018-09-21 09:00'),
	  (321, default, '2018-09-21 09:00'),
	  (323, default, '2018-09-21 09:00'),
	  (324, default, '2018-09-21 09:00'),
	  (325, default, '2018-09-21 09:00'),
	  (345, default, '2018-09-21 09:00'),
	  (346, default, '2018-09-21 09:00'),
	  (347, default, '2018-09-21 09:00'),
	  (370, default, '2018-09-21 09:00'),
	  (371, default, '2018-09-21 09:00')
--------------------------------------------------------------------

--INSERIR 50 VENDA ITEM---------------------------------------------
INSERT INTO VendaItem(IdVenda,IdProduto,Quantidade)
VALUES (266, 202, 10),
	   (267, 203, 10),
	   (268, 221, 10),
	   (269, 222, 10),
	   (270, 243, 10),
	   (271, 244, 10),
	   (272, 245, 10),
	   (273, 246, 10),
	   (274, 247, 10),
	   (275, 248, 10),
	   (276, 249, 10),
	   (277, 250, 10),
	   (278, 251, 10),
	   (279, 252, 10),
	   (280, 253, 10),
	   (281, 254, 10),
	   (282, 255, 10),
	   (283, 256, 10),
	   (284, 202, 10),
	   (285, 202, 10),
	   (287, 202, 10),
	   (288, 202, 10),
	   (289, 202, 10),
	   (290, 202, 10),
	   (291, 202, 10),
	   (292, 202, 10),
	   (293, 202, 10),
	   (294, 202, 10),
	   (295, 202, 10),
	   (296, 202, 10),
	   (297, 202, 10),
	   (298, 202, 10),
	   (299, 202, 10),
	   (300, 202, 10),
	   (301, 202, 10),
	   (302, 202, 10),
	   (303, 202, 10),
	   (304, 202, 10),
	   (305, 202, 10),
	   (306, 202, 10),
	   (307, 202, 10),
	   (308, 202, 10),
	   (309, 202, 10),
	   (310, 202, 10),
	   (311, 202, 10),
	   (312, 202, 10),
	   (313, 202, 10),
	   (314, 202, 10),
	   (315, 202, 10),
	   (316, 202, 10)
--------------------------------------------------------------------







