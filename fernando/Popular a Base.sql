--Inserir 

--20 Clientes		
INSERT INTO Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
VALUES				('Felipe Smith',				'M','11-23-2001',1),
					('Joao Doria',					'M','12-12-1955',0),
					('Pedro de Lara',				'M','03-25-1920',1),
					('Marcelo Rezende',				'M','03-23-1960',1),
					('Paola Bracho',				'F','11-22-1987',0),
					('Jaden Smith',					'M','05-30-1975',1),
					('Suzana Alves',				'F','05-26-1985',0),
					('Marechal Deodoro da Fonseca', 'M','09-11-1980',1),
					('Yudi Tamashiro',				'M','11-25-2000',1),
					('Carlos Alberto de Nobrega',	'M','11-26-1991',1),
					('Luiz In�cio Lula da Silva',	'M','02-01-1954',0),
					('Xuxa Meneguel',				'F','10-25-1975',1),
					('Alexandre Frota',				'M','11-27-1960',1),
					('Jailson Mendes',				'M','10-30-1965',0),
					('Rita Cadillac',				'F','01-25-1920',0),
					('Lady Gaga',					'F','02-12-1963',1),
					('Sasha Grey',					'F','11-01-1995',1),
					('Mia Khalifa',					'F','03-25-1987',1),
					('Alexis Texas',				'F','11-30-1991',1),
					('Emmanuelle Band',				'F','12-06-1920',1)



--20 Produtos juntamente com seus tipos e marcas
INSERT INTO Marca (NomeMarca)
	VALUES ('Da vov� Izaura')



INSERT INTO Produto (IdTipoProduto,IdMarca,NomeProduto,ValorCompra,ValorVenda,QuantidadeEstoque)
VALUES				(1,28,'Manjar dos Deuses 500g',												10.00,15.00,500),
					(1,28,'Quindinzinho 10g',													5.00,8.00,350),
					(1,28,'Brigadeiro Eduardo Gomes 50g',										1.00,3.50,68),
					(1,28,'Ma�a do amor 150g',													5.00,10.00,35),
					(1,28,'P� de mulecote 20g',													0.50,1.00,48),
					(1,28,'Chicotinho de a�ucar 50g',											1.50,3.00,54),
					(2,28,'Pastel de Flango',													0.50,3.50,25),
					(2,28,'Coxinha de Inhame',													0.50,2.50,15),
					(2,28,'Torta de batata 1kg',												10.00,15.00,10),
					(2,28,'Pastel de Mortadela',												1.00,4.00,28),
					(2,28,'Joelho de Mo�o',														1.00,4.00,20),
					(3,28,'Aguardente c/ Pimenta 500ml',										10.00,18.50,10),
					(3,28,'Vodquila 500ml',														18.00,25.00,19),
					(3,28,'Lactobacilos lokos 300ml',											4.00,9.00,30),
					(3,28,'Skol bytes 350ml',													0.50,2.50,60),
					(3,28,'Suco de tamarindo c/ Chocolate 300ml',								1.00,5.00,10),
					(5,28,'Chocolate com Pimenta biquinho 50g',									0.50,2.00,30),
					(5,28,'Chocolate branco ao molho barbecue 15g',								1.00,2.50,36),
					(5,28,'Chocolate c/ mentos 50g ',											1.00,2.00,58),
					(3,28,'Suco de lim�o goiano 500ml',											0.50,3.00,20)
	
					
--50 vendas de diferentes produtos, quantidades, clientes e datas					
INSERT INTO Venda (IdCliente, DataVenda, DataPagamento)     
VALUES			  (369,DEFAULT,'09-18-18'),
				  (369,		'11-05-17',			'12-02-17'),		
				  (369,		'11-06-17',			'11-07-17'),
				  (369,		DEFAULT,			'12-02-18'),
				  (370,		'11-04-17',			'12-02-17'),
				  (370,		DEFAULT,			 NULL),
				  (370,		DEFAULT,			'09-19-18'),
				  (370,		'11-05-17',			'11-07-17'),      
				  (370,		'11-06-17',			'11-06-17'),
				  (369,		'11-07-17',			 NULL),
				  (369,		'09-01-18',			'09-02-18'), 
				  (369,		'09-02-18',			 NULL),
				  (369,		'09-03-18',			'09-04-18'),    
				  (370,		DEFAULT,			 NULL),                              
				  (370,		DEFAULT,			'09-19-18'),
				  (371,		DEFAULT,			'09-19-18'),
				  (380,		'09-04-18',			'09-05-18'),
				  (383,		DEFAULT,			'09-19-18'),
				  (383,		DEFAULT,			'09-19-18'),
				  (384,		'09-05-18',			'09-05-18'),    
				  (385,		DEFAULT,			'09-19-18'),    
				  (386,		'09-06-18',			'09-07-18'),
				  (387,		DEFAULT,			'09-19-18'),
				  (388,		DEFAULT,			 NULL),
				  (389,		DEFAULT,			'09-19-18'),
				  (385,		DEFAULT,			'09-19-18'),
				  (385,		'09-07-18',			'09-08-18'),
				  (396,		DEFAULT,			'09-19-18'),
				  (385,		DEFAULT,			 NULL),
				  (398,		DEFAULT,			'09-19-18'),
				  (398,		DEFAULT,			'09-19-18'),
				  (398,		DEFAULT,			 NULL),
				  (398,		DEFAULT,			'09-19-18'),				
				  (383,		'09-08-18',			'09-10-18'),
				  (385,		DEFAULT,			'09-19-18'),
				  (396,		DEFAULT,			'09-19-18'),
				  (380,		'09-09-18',			'09-11-18'),
				  (381,		DEFAULT,			'09-19-18'),
				  (382,		DEFAULT,			'09-19-18'),
				  (383,		'09-10-18',			'09-11-18'),
				  (384,		'09-11-18',			'09-12-18'),
				  (385,		DEFAULT,			 NULL),
				  (386,		DEFAULT,			'09-19-18'),
				  (387,		'09-12-18',			'09-13-18'),
				  (2,		'09-13-18',			'09-13-18'),
				  (4,		'09-14-18',			'09-16-18'),
				  (12,		'09-15-18',			 NULL),
				  (45,		'09-16-18',			'09-18-18'),
				  (16,		'09-17-18',			'09-17-18'),
				  (279,		'09-18-18',			 NULL)


INSERT INTO VendaItem (IdVenda,IdProduto,Quantidade)     
VALUES				(979,	357,	1),
					(980,	358,	2),
					(980,	359,	2),
					(980,	360,	2),
					(981,	361,	1),
					(982,	361,	1),
					(983,	361,	3),
					(984,	362,	1),
					(985,	363,	1),
					(985,	364,	1),
					(985,	365,	1),
					(986,	366,	4),
					(987,	367,	1),
					(988,	369,	1),
					(989,	369,	6),
					(990,	370,	1),
					(990,	371,	1),
					(990,	372,	1),
					(990,	373,	1),
					(991,	374,	1),
					(992,	375,	1),
					(993,	376,	4),
					(994,	377,	1),
					(994,	378,	1),
					(994,	379,	1),
					(994,	380,	1),
					(995,	381,	1),
					(996,	382,	2),
					(997,	383,	1),
					(998,	384,	1),
					(998,	385,	1),
					(998,	386,	1),
					(998,	387,	1),
					(999,	388,	1),
					(1000,	389,	1),
					(1002,	390,	3),
					(1002,	150,	3),
					(1002,	151,	3),
					(1002,	152,	3),
					(1003,	153,	1),
					(1004,	154,	1),
					(1005,	155,	5),
					(1006,	156,	1),
					(1006,	157,	1),
					(1006,	158,	1),
					(1006,	159,	1),
					(1007,	160,	1),
					(1008,	230,	3),
					(1008,	231,	2),
					(300,	232,	2),
					(301,	233,	3),
					(302,	234,	1),
					(303,	235,	1),
					(304,   236,	1),
					(305,	237,	1),
					(305,	238,	1),
					(305,	239,	1),                        
					(305,	240,	1),
					(306,	241,	1),
					(306,	242,	5),
					(306,	243,	5),
					(306,	244,	1),
					(307,	245,	1),
					(308,	246,	1),
					(309,	247,	1),
					(309,	248,	1),
					(309,	249,	8),
					(309,	250,	1),
					(1024,	250,	1),
					(1025,	251,	6),
					(1026,	251,	1),
					(1027,	358,	1),
					(1027,	359,	1),
					(1027,	388,	1),
					(1028,	389,	5),
					(1029,	390,	1)
					

					
