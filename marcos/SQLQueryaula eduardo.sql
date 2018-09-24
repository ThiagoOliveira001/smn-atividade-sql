use  LojaDoces 

insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo) values  
('Colapso Cardíaco da Silva', 'm', '1998-10-06', 1),
('Dezêncio Feverêncio de Oitenta e Cinco', 'm', '1996-07-12', 1),
('João Cólica', 'm', '1989-06-12', 1),
('João Sem Sobrenome', 'm', '1997-11-01', 0),
('Marijuana Pepsi Jackson', 'm', '1996-09-06', 0),
('Sansão Vagina', 'm', '1992-08-06', 0),
('Último Vaqueiro', 'm', '1982-05-08', 0),
('marcos bózon da silva sauro', 'm', '1979-05-08', 0)
																	  


insert into Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda , QuantidadeEstoque) values
(3, 5, 'Leite em pó ', 20.00, 25.00, 90),
(3, 1, 'Suquinho gostoso ', 25.00, 35.00, 100),
(5, 9, 'Chocolate ao leite amargo belga ', 5.00, 7.00, 10),
(3, 5, 'Creminho gostoso ', 40.00, 90.00, 80),
(5, 5, 'Doce de canela ', 20.00, 40.00, 500),
(3, 9, 'Chocolate de tenebrio', 40.00, 90.00, 60),
(3, 2, 'Rosca de amendoim com paçoca ', 70.00, 99.00, 100),
(3, 5, 'Pão caseiro de amendoim', 50.00, 90.00, 98),
(1, 5, 'Pão de mel', 80.00, 96.00, 100),
(3, 5, 'Toddy galão 300 l', 70.00, 90.00, 90),
(1, 2, 'Mel', 13.00, 25.00, 900),
(3, 5, 'Protein bar de rabo de jararaca ', 40.00, 50.00, 8),
(5, 2, 'suco uva ', 20.00, 25.00, 90),
(1, 5, 'Achocolatado pó ', 60.00, 90.00, 30),
(3, 5, 'Amendocrem', 20.00, 25.00, 90),
(2, 9, 'Doce de Leite com coco', 20.00, 25.00, 90),
(3, 5, 'Favo de mel ', 20.00, 25.00, 90),
(3, 5, 'Bebida mista de mel', 20.00, 25.00, 90),
(3, 2, 'Mel em pó', 10.00, 25.00, 90),
(3, 5, 'batom de morango ', 7.00, 22.00, 60) 
																	  
																	 
																	     

select * from Venda
select * from Produto


--insert into Venda values (531, '2018-08-09 10:10:30', '2018-08-09 10:40:40 ')

insert into Venda values (407, '2018-01-09 10:13:30', '2018-08-09 10:40:40 ')
insert into Venda values (2,   '2018-05-01 12:10:30', '2018-05-01 12:40:48 ')
insert into Venda values (410, '2018-02-09 10:10:30', '2018-08-09 10:40:40 ')       
insert into Venda values (411, '2018-03-09 10:10:30', '2018-08-09 10:40:40 ')
insert into Venda values (412, '2018-04-18 18:10:30', '2018-08-09 12:40:40 ')

insert into Venda values (413, '2018-01-14 10:13:30', '2018-10-09 10:40:40 ')
insert into Venda values (414, '2018-02-01 12:10:30', '2018-12-01 12:40:48 ')
insert into Venda values (415, '2018-03-06 15:10:30', '2018-09-09 10:40:45 ')       
insert into Venda values (416, '2018-04-09 11:50:30', '2018-08-09 10:40:49 ')
insert into Venda values (417, '2018-04-18 16:10:30', '2018-10-09 12:40:20 ')

insert into Venda values (418, '2018-05-07 10:14:30', '2018-06-21 10:40:40 ')
insert into Venda values (419, '2018-06-30 12:15:30', '2018-07-30 12:40:48 ')
insert into Venda values (420, '2018-07-16 15:18:30', '2018-08-29 10:40:45 ')          
insert into Venda values (421, '2018-08-04 11:50:30', '2018-09-18 10:40:49 ')
insert into Venda values (422, '2018-09-05 16:49:30', '2018-10-28 12:40:20 ')

insert into Venda values (423, '2018-01-08 10:14:30', '2018-02-21 17:40:40 ')
insert into Venda values (424, '2018-02-09 12:15:30', '2018-04-30 09:31:48 ')
insert into Venda values (425, '2018-04-10 15:18:30', '2018-06-29 11:44:45 ')         
insert into Venda values (426, '2018-05-20 11:50:30', '2018-07-18 10:12:49 ')
insert into Venda values (427, '2018-06-21 16:49:30', '2018-09-28 12:33:21 ')


insert into Venda values (428, '2018-01-10 10:14:30', '2018-02-21 14:40:40 ')
insert into Venda values (429, '2018-02-30 17:15:30', '2018-04-30 06:31:48 ')
insert into Venda values (430, '2018-04-22 11:18:30', '2018-07-29 12:44:45 ')         
insert into Venda values (431, '2018-05-23 13:50:30', '2018-08-18 13:12:49 ')
insert into Venda values (432, '2018-06-25 14:49:30', '2018-09-28 08:34:21 ')

insert into Venda values (433, '2018-01-03 10:10:30', '2018-02-21 14:40:40 ')
insert into Venda values (434, '2018-02-04 12:20:30', '2018-03-22 06:31:48 ')
insert into Venda values (435, '2018-04-05 13:30:30', '2018-05-23 12:44:45 ')         
insert into Venda values (436, '2018-05-06 14:35:30', '2018-09-24 13:12:49 ')
insert into Venda values (437, '2018-06-07 15:55:30', '2018-10-25 08:34:21 ')

insert into Venda values (438, '2018-01-03 10:10:30', '2018-01-21 09:40:40 ')
insert into Venda values (439, '2018-02-04 12:20:30', '2018-02-22 10:30:48 ')
insert into Venda values (460, '2018-04-05 13:30:30', '2018-04-23 11:40:45 ')         
insert into Venda values (461, '2018-05-06 14:35:30', '2018-05-24 12:15:49 ')
insert into Venda values (462, '2018-06-07 15:55:30', '2018-06-08 13:36:21 ')

insert into Venda values (463, '2018-01-08 10:10:30', '2018-01-11 09:40:40 ')
insert into Venda values (464, '2018-02-09 12:20:30', '2018-02-12 10:30:48 ')
insert into Venda values (465, '2018-04-10 13:30:30', '2018-04-13 11:40:45 ')         
insert into Venda values (466, '2018-05-11 14:35:30', '2018-05-14 12:15:49 ')
insert into Venda values (467, '2018-06-12 15:55:30', '2018-06-15 13:36:21 ')

insert into Venda values (463, '2018-01-08 10:10:30', '2018-01-11 09:50:40 ')
insert into Venda values (464, '2018-02-09 12:20:30', '2018-02-12 10:40:48 ')
insert into Venda values (465, '2018-04-10 13:30:30', '2018-04-13 11:46:45 ')         
insert into Venda values (466, '2018-05-11 14:35:30', '2018-05-14 12:18:49 ')
insert into Venda values (467, '2018-06-12 15:55:30', '2018-06-15 13:22:21 ')

insert into Venda values (463, '2018-01-08 10:10:30', '2018-06-11 09:50:40 ')
insert into Venda values (464, '2018-02-09 12:20:30', '2018-07-12 10:40:48 ')
insert into Venda values (465, '2018-04-10 13:30:30', '2018-08-13 11:46:45 ')          
insert into Venda values (466, '2018-05-11 14:35:30', '2018-09-14 12:18:49 ')
insert into Venda values (467, '2018-06-12 15:55:30', '2018-10-15 13:22:21 ')




--insert into VendaItem values (1080,305,40)

insert into VendaItem values (1080,492,10)
insert into VendaItem values (1081,493,21)   
insert into VendaItem values (1082,494,15)
insert into VendaItem values (1083,495,53)

insert into VendaItem values (1084,496,65)
insert into VendaItem values (1085,497,24)
insert into VendaItem values (1086,498,64)  
insert into VendaItem values (1087,499,54)
insert into VendaItem values (1088,500,85)

insert into VendaItem values (1089,501,34)
insert into VendaItem values (1090,502,64)
insert into VendaItem values (1091,503,40)		
insert into VendaItem values (1092,504,46)
insert into VendaItem values (1093,505,23)

insert into VendaItem values (1094,506,54)
insert into VendaItem values (1095,507,65)
insert into VendaItem values (1096,508,13)		
insert into VendaItem values (1097,509,40)
insert into VendaItem values (1098,510,65)

insert into VendaItem values (1099,511,75)
insert into VendaItem values (1100,100,24)
insert into VendaItem values (1101,513,65)		
insert into VendaItem values (1102,514,76)
insert into VendaItem values (1103,515,75)
insert into VendaItem values (1104,516,40)
insert into VendaItem values (1105,517,22)
insert into VendaItem values (1106,518,11)			
insert into VendaItem values (1107,519,40)
insert into VendaItem values (1108,520,40)

insert into VendaItem values (1109,521,40)
insert into VendaItem values (1110,522,9)
insert into VendaItem values (1111,523,40)		
insert into VendaItem values (1112,524,8)
insert into VendaItem values (1113,525,40)

insert into VendaItem values (1114,526,40)
insert into VendaItem values (1115,527,87)
insert into VendaItem values (1116,528,40)		
insert into VendaItem values (1117,529,55)	
insert into VendaItem values (1118,560,46)
	
insert into VendaItem values (1119,561,40)
insert into VendaItem values (1120,562,40)
insert into VendaItem values (1121,563,77)		
insert into VendaItem values (1122,564,44)
insert into VendaItem values (1123,565,40)

insert into VendaItem values (1124,566,40)
insert into VendaItem values (1125,567,77)
insert into VendaItem values (1126,568,47)      
insert into VendaItem values (1127,569,40)
insert into VendaItem values (1128,570,13)
 

--EX 01	
select p.NomeProduto, m.NomeMarca, p.QuantidadeEstoque 
	from Produto p
	inner join Marca m
	on m.idMarca = p.idMarca 





--EX 02
 Select Produto.NomeProduto, Marca.NomeMarca, 
	TipoProduto.NomeTipoProduto, Cliente.NomeCliente,
	Venda.DataVenda, Venda.DataPagamento 

 from Produto, Marca, TipoProduto, Venda, Cliente

 where YEAR(Venda.DataPagamento) = 2018 and MONTH(Venda.DataPagamento)= 01 and Venda.DataPagamento is not null


 --EX 03 
 Select Cliente.NomeCliente, Cliente.Sexo,
		Cliente.Ativo, Cliente.DataNascimento
		from Cliente
		where  MONTH (Cliente.DataNascimento) = 4 and Cliente.Ativo = 1 


-- EX 04
select Produto.NomeProduto, Marca.NomeMarca, Produto.ValorVenda, Produto.ValorCompra, sum (Produto.QuantidadeEstoque) as Quantidade
		from Produto
		inner join Marca on Marca.IdMarca = Produto.IdMarca
		group by NomeProduto, NomeMarca, ValorVenda, ValorCompra, QuantidadeEstoque

--EX 05

 select NomeCliente, count(distinct IdProduto ) as 'total' from Cliente 
	inner join Venda on Cliente.IdCliente = Venda.IdCliente
	inner join VendaItem on Venda.IdVenda = VendaItem.IdVenda
	group by NomeCliente

--EX 06

select 	NomeProduto, sum (Quantidade) as 'qtd vendida'
		from Produto
		inner join VendaItem 
		on Produto.IdProduto = VendaItem.IdProduto
		group by NomeProduto

-- EX 07

select NomeCliente, Sexo, Ativo
		from Cliente
		left join Venda
		on Cliente.IdCliente = Venda.IdCliente
		where Venda.IdVenda  is null 

-- EX 08

select top (10) NomeCliente, Sexo, count (IdVendaItem) as 'Quantidades de Produtos Não Pagos' , min (DataVenda) as 'Data das vendas não pagas'  
			From Cliente
			inner join Venda on Cliente.IdCliente = Venda.IdCliente	
			inner join VendaItem on Venda.IdVenda = VendaItem.IdVenda
			Group By NomeCliente, Sexo

-- EX 09

Select NomeMarca,
			count  (Distinct Produto.IdProduto ) as 'produtos ', sum ((produto.ValorVenda - produto.ValorCompra) * VendaItem.Quantidade ) as 'Lucro'
			from	Marca
			inner join Produto on Marca.IdMarca = Produto.IdMarca
			left  join VendaItem on Produto.IdProduto = VendaItem.IdProduto
			inner join Venda on VendaItem.IdVenda = Venda.IdVenda
			group By NomeMarca 
			ORDER BY 'Lucro' desc


-- EX 10 







-- EX 11

select NomeMarca, sum (QuantidadeEstoque) as 'total'
	   from	Produto
	   inner join Marca	
	   on Marca.IdMarca = Produto.IdMarca
	   Group by NomeMarca

-- EX 12


Select TOP (10) NomeMarca,
			count   (Distinct Produto.IdProduto ) as 'produtos ', sum ((produto.ValorVenda - produto.ValorCompra) * VendaItem.Quantidade ) as 'Lucro'
			from	Marca
			inner join Produto on Marca.IdMarca = Produto.IdMarca
			left  join VendaItem on Produto.IdProduto = VendaItem.IdProduto
			inner join Venda on VendaItem.IdVenda = Venda.IdVenda
			group By NomeMarca 
			ORDER BY 'Lucro' desc


-- EX 13 

select top (15)  NomeCliente, Sexo, DataNascimento, sum (Quantidade) as 'Quantidade Comprada'
		from Cliente
		inner join Venda on Cliente.IdCliente = Venda.IdCliente
		inner join VendaItem on Venda.IdVenda = VendaItem.IdVenda
		Where  DataPagamento is not null
		group by NomeCliente, Sexo, DataNascimento

-- EX 14 

select NomeProduto from Produto 
	   where NomeProduto  like '%cola%' collate latin1_general_cs_as

-- EX 15

select NomeCliente, Sexo, DataNascimento, Ativo
	   From Cliente 

-- Ex 16 

select NomeProduto, NomeTipoProduto, NomeMarca, ValorVenda 
		from Produto
		inner join VendaItem on Produto.IdProduto = VendaItem.IdProduto
		inner join Marca on Marca.IdMarca = Produto.IdMarca
		Inner join Venda on VendaItem.IdVenda = Venda.IdVenda
		inner join TipoProduto on Produto.IdTipoProduto = TipoProduto.IdTipoProduto
		Where DataVenda is not null

-- EX 17 

Select top (10) NomeProduto, NomeMarca, ValorVenda, QuantidadeEstoque
		    From Marca
			Inner Join Produto on Marca.IdMarca = Produto.IdMarca

-- EX 18 




-- Ex 19
--listar o mes/ano, a quantidade total de vendas (pagas) e a quantidade total de vendas (não pagas) no mes/ano de referencia

select (cast(month(DataVenda) as varchar(50)) + '/' + cast(YEAR(DataVenda) as  varchar (50))) as 'data',
	count (case when DataPagamento is not null then 1 else null end) as 'Vendas pagas', 
	count (case when DataPagamento is null then 1 else null end) as 'vendas não pagas'
	from Venda 
	group by DataVenda 
	order by DataVenda desc   





 










	
	
		

		 









		
 
  



		




