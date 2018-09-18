--Inserir 

--20 Clientes
--20 Produtos juntamente com seus tipos e marcas
--50 vendas de diferentes produtos, quantidades, clientes e datas
		
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
					('Luiz Inácio Lula da Silva',	'M','02-01-1954',0),
					('Xuxa Meneguel',				'F','10-25-1975',1),
					('Alexandre Frota',				'M','11-27-1960',1),
					('Jailson Mendes',				'M','10-30-1965',0),
					('Rita Cadillac',				'F','01-25-1920',0),
					('Lady Gaga',					'F','02-12-1963',1),
					('Sasha Grey',					'F','11-01-1995',1),
					('Mia Khalifa',					'F','03-25-1987',1),
					('Alexis Texas',				'F','11-30-1991',1),
					('Emmanuelle Band',				'F','12-06-1920',1)

INSERT INTO Marca (NomeMarca)
	VALUES ('Da vovó Izaura')



INSERT INTO Produto (IdTipoProduto,IdMarca,NomeProduto,ValorCompra,ValorVenda,QuantidadeEstoque)
VALUES				(1,28,'Manjar dos Deuses 500g',												10.00,15.00,500),
					(1,28,'Quindinzinho 10g',													5.00,8.00,350),
					(1,28,'Brigadeiro Eduardo Gomes 50g',										1.00,3.50,68),
					(1,28,'Maça do amor 150g',													5.00,10.00,35),
					(1,28,'Pé de mulecote 20g',													0.50,1.00,48),
					(1,28,'Chicotinho de açucar 50g',											1.50,3.00,54),
					(2,28,'Pastel de Flango',													0.50,3.50,25),
					(2,28,'Coxinha de Inhame',													0.50,2.50,15),
					(2,28,'Torta de batata 1kg',												10.00,15.00,10),
					(2,28,'Pastel de Mortadela',												1.00,4.00,28),
					(2,28,'Joelho de Moço',														1.00,4.00,20),
					(3,28,'Aguardente c/ Pimenta 500ml',										10.00,18.50,10),
					(3,28,'Vodquila 500ml',														18.00,25.00,19),
					(3,28,'Lactobacilos lokos 300ml',											4.00,9.00,30),
					(3,28,'Skol bytes 350ml',													0.50,2.50,60),
					(3,28,'Suco de tamarindo c/ Chocolate 300ml',								1.00,5.00,10),
					(5,28,'Chocolate com Pimenta biquinho 50g',									0.50,2.00,30),
					(5,28,'Chocolate branco ao molho barbecue 15g',								1.00,2.50,36),
					(5,28,'Chocolate c/ mentos 50g ',											1.00,2.00,58),
					(3,28,'Suco de limão goiano 500ml',											0.50,3.00,20)

----------------------------------------------------JA NO BANCO------------------------------------						

					

			