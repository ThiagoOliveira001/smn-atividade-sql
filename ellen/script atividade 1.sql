use LojaDoces 


select * from cliente
--                   20 clientes

insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Roseli Pimenta', 'F', '10-08-1986',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Arnaldo Donizete', 'M', '05-24-1963',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Tahles Henrique', 'M', '03-24-2000',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Marli Aparecida', 'F', '03-26-1973',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Michelle', 'F', '03-03-1995',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values (' Roberta Miranda', 'F ', '9-6-1998 ',0);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Thaigo Martins', 'M', '08-14-1980',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values (' Marina Pimenta', 'F ', '02-05-1993',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Lais Faleiros ', 'F ', ' 03-25-1990',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Cesar Augusto ', 'M ', ' 05-19-1991',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Maria Martins ', ' F', '08-14-1980',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Brenda Martins ', 'F', '05-14-1980',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Cesar Henrique ', 'M ', ' 07-19-1991',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Felipe Augusto ', 'M ', ' 10-19-1991',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Fernada Silva ', 'F ', ' 05-19-1991',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Fernada Santos ', 'F ', ' 05-06-1991',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Fernado Silva ', 'F ', ' 05-30-1991',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Helio', 'M ', ' 02-19-1991',0);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Rodrigo Silva ', 'M ', ' 05-19-1982',1);
insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo)
values ('Miranda Ferreira', 'F', '02-02-1995',0)



--           marcas

select * from Marca 
insert into Marca(NomeMarca)
values ('7Belo')
insert into Marca(NomeMarca)
values ('Oreo')
insert into Marca(NomeMarca)
values ('Bauducco')




--                      Produtos

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,24,'7belo','10', '0.10',20)

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Cookie integral aveia e passas', '25','2.25','20')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Cookie integral leite e mel', '20','2.25','20')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Cookie integral aveia e morango', '20','2.50','20')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Cookie integral aveia e chocolate', '30','3.0','25')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Bolacha recheada chocolate', '15','3.0','10')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Bolacha recheada abacate', '10','1.5','5')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Bolacha recheada morango', '10','2.0','5')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Bolacha recheada Doce Leite', '10','2.0','5')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Recheadinho Chocolate', '15','1.0','10')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Recheadinho Goiabada', '15','1.0','10')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Recheadinho Morango', '15','1.0','10')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Recheadinho Framboesa', '15','1.0','10')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Torradinha Canapé', '50','3.0','10')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Torradinha Tomate', '50','3.0','10')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Torradinha Salsa', '50','3.0','10')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Torradinha churrasco', '50','3.0','10')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Torradinha presunto', '50','3.0','10')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Torradinha queijo', '50','3.0','10')

insert into Produto ( IdTipoProduto, IdMarca,NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque )
	values (1,36,'Bolinho gotas de chocolate', '30','3.0','5')


--					Vendas

select * from cliente

insert into Venda ( IdCliente ,DataPagamento )
	values (  22,getdate() + 10)

insert into Venda ( IdCliente ,DataPagamento )
	values (  53,getdate() + 13)
	
insert into Venda ( IdCliente ,DataPagamento )
	values (  61,getdate() + 15)

insert into Venda ( IdCliente ,DataPagamento )
	values (  24,getdate() + 10)

insert into Venda ( IdCliente ,DataPagamento )
	values (  2,getdate() + 15)

insert into Venda ( IdCliente ,DataPagamento )
	values (  177,getdate() + 11)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  186,getdate() + 05)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  196,getdate() + 06)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  198,getdate() + 07)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  213,getdate() + 08)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  270,getdate() + 09)
		
insert into Venda ( IdCliente ,DataPagamento )
	values ( 285,getdate() + 13)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  312,getdate() + 16)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  320,getdate() + 17)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  370,getdate() + 21)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  395,getdate() + 26)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  423,getdate() + 28)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  427,getdate() + 05)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  427,getdate() + 05)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  24,getdate() + 1)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  461,getdate() + 2)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  467,getdate() + 6)
		
insert into Venda ( IdCliente ,DataPagamento )
	values ( 159,getdate() + 3)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  169,getdate() + 7)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  179,getdate() + 5)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  189,getdate() + 8)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  199,getdate() + 9)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  209,getdate() + 10)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  210,getdate() + 10)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  220,getdate() + 3)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  264,getdate() + 4)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  275,getdate() + 2)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  277,getdate() + 9)

insert into Venda ( IdCliente ,DataPagamento )
	values (  510,getdate() + 3)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  511,getdate() + 3)
		
insert into Venda ( IdCliente ,DataPagamento )
	values ( 512 ,getdate() + 3)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  513,getdate() + 4)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  524,getdate() + 4)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  515,getdate() + 6)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  392,getdate() + 6)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  388,getdate() + 6)
		
insert into Venda ( IdCliente ,DataPagamento )
	values ( 384,getdate() + 5)
		
insert into Venda ( IdCliente ,DataPagamento )
	values ( 345,getdate() + 4)

insert into Venda ( IdCliente ,DataPagamento )
	values (  325,getdate() + 7)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  307,getdate() + 12)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  290,getdate() + 13)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  223,getdate() + 13)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  224,getdate() + 14)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  264,getdate() + 14)
		
insert into Venda ( IdCliente ,DataPagamento )
	values (  209,getdate() + 20)

insert into Venda ( IdCliente ,DataPagamento )
	values (  8,getdate() + 02)

insert into Venda values (12, getdate(), getdate() + 3 )

------------ 50 venda item

select * from Produto
inner join Venda 
on Venda.IdVenda = Produto.IdProduto 

insert into VendaItem values (130, 111, 20)
insert into VendaItem values (119, 121, 15) 
insert into VendaItem values (149, 127, 10) 
insert into VendaItem values (150, 120, 10) 
insert into VendaItem values (151, 127, 05)
insert into VendaItem values (152, 126, 05) 
insert into VendaItem values (153, 124, 06)
insert into VendaItem values (154, 122, 06) 
insert into VendaItem values (155, 119, 07) 
insert into VendaItem values (156, 118, 08) 
insert into VendaItem values (157, 117, 09) 

insert into VendaItem values (158, 180, 05) 
insert into VendaItem values (159, 182, 04) 
insert into VendaItem values (160, 183, 05) 
insert into VendaItem values (178, 184, 05)
insert into VendaItem values (179, 183, 03) 
insert into VendaItem values (180, 221, 03)
insert into VendaItem values (182, 222, 02) 
insert into VendaItem values (183, 223, 02) 
insert into VendaItem values (184, 224, 01) 
insert into VendaItem values (221, 225, 01) 


insert into VendaItem values (303, 312, 01) 
insert into VendaItem values (304, 311, 02) 
insert into VendaItem values (305, 310, 01) 
insert into VendaItem values (306, 309, 01)
insert into VendaItem values (307, 308, 02) 
insert into VendaItem values (308, 307, 01)
insert into VendaItem values (309, 306, 02) 
insert into VendaItem values (310, 305, 01) 
insert into VendaItem values (311, 304, 02) 
insert into VendaItem values (312, 303, 02) 

insert into VendaItem values (452, 461, 4) 
insert into VendaItem values (453, 460, 2) 
insert into VendaItem values (454, 459, 1) 
insert into VendaItem values (455, 458, 5)
insert into VendaItem values (456, 457, 5) 
insert into VendaItem values (457, 456, 7)
insert into VendaItem values (458, 455, 6) 
insert into VendaItem values (459, 454, 5) 
insert into VendaItem values (460, 453, 03) 
insert into VendaItem values (461, 452, 01) 

insert into VendaItem values (502, 494, 1) 
insert into VendaItem values (503, 493, 1) 
insert into VendaItem values (504, 502, 1) 
insert into VendaItem values (505, 503, 2)
insert into VendaItem values (506, 504, 2) 
insert into VendaItem values (507, 506, 2)
insert into VendaItem values (508, 509, 2) 
insert into VendaItem values (509, 510, 1) 
insert into VendaItem values (510, 511, 1) 

