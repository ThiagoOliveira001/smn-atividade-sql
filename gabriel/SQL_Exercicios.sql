use LojaDoces

select * from Produto
	--NomeCliente VARCHAR(60) UNIQUE NOT NULL,
	--Sexo CHAR(1) NOT NULL, 
	--DataNascimento DATE NOT NULL,
	--Ativo BIT NOT NULL	

insert into Cliente (NomeCliente, Sexo, DataNascimento, Ativo) values 
	('Clovis I', 'm', '1945-06-05', 0), 
	('Quildeberto I', 'm', '1970-12-23', 1),
	('Clotário I', 'm', '1950-12-23', 0), 
	('Cariberto I', 'm', '1985-11-29', 1),
	('Quilperico I', 'm', '1990-09-10', 1), 
	('Clotário II', 'm', '2000-10-18', 0),
	('Dagoberto I', 'm', '1980-01-15', 0), 
	('Clóvis II', 'm', '1983-03-05', 1),
	('Clotário III', 'm', '1995-06-03', 1), 
	('Quilderico II', 'm', '1996-05-05', 1),
	('Henrique II', 'm', '1998-07-12', 1), 
	('Carlos IX', 'm', '1991-04-30', 0),
	('Luis XIII', 'm', '1997-02-20', 0), 
	('Napoleao I', 'm', '1980-08-15', 1),
	('Carlos X', 'm', '1992-06-05', 1), 
	('Luis Filipe I', 'm', '1998-04-20', 1),
	('Filipe VI', 'm', '1950-08-10', 0), 
	('Roberto II', 'm', '1973-11-01', 1),
	('Carlomano I', 'm', '1989-08-05', 1), 
	('Carlos I', 'm', '2003-11-11', 0)

insert into TipoProduto (NomeTipoProduto) values
	('laticinios') 
	--8
insert into Marca (NomeMarca) values
	('Comevap')
	--41

	--IdTipoProduto SMALLINT FOREIGN KEY REFERENCES TipoProduto(IdTipoProduto) NOT NULL,
	--IdMarca SMALLINT FOREIGN KEY REFERENCES Marca(IdMarca) NOT NULL,
	--NomeProduto VARCHAR(50) UNIQUE NOT NULL,
	--ValorCompra DECIMAL(4,2) NOT NULL,
	--ValorVenda DECIMAL(4,2) NOT NULL,
	--QuantidadeEstoque INT NOT NULL

insert into Produto (IdTipoProduto, IdMarca, NomeProduto, ValorCompra, ValorVenda, QuantidadeEstoque) values
	(8,41,'queijo minas frescal linght', 10.00, 15.50, 10),
	(8,41,'queijo minas frescal', 9.00, 14.50, 10),
	(8,41,'minas padrao', 9.00, 14.50, 10),
	(8,41,'queijo minas padrao', 8.00, 14.50, 10),
	(8,41,'polpa fruta morango 180g', 3.00, 5.50, 10),
	(8,41,'polpa fruta morango 200g', 3.25, 5.75, 10),
	(8,41,'polpa fruta morango 850g', 3.50, 7.50, 10),
	(8,41,'polpa fruta morango 1000g', 4.25, 9.00, 10),
	(8,41,'polpa fruta pessego 180g', 3.00, 5.50, 10),
	(8,41,'polpa fruta pessego 200g', 3.25, 5.75, 10),
	(8,41,'polpa fruta pessego 850g', 3.50, 7.50, 10),
	(8,41,'polpa fruta pessego 1000g', 4.25, 9.00, 10),
	(8,41,'polpa fruta mamao banana maca 180g', 3.00, 5.50, 10),
	(8,41,'polpa fruta mamao banana maca 200g', 3.25, 5.75, 10),
	(8,41,'polpa fruta mamao banana maca 850g', 3.50, 7.50, 10),
	(8,41,'polpa fruta mamao banana maca 1000g', 4.25, 9.00, 10),
	(8,41,'polpa fruta frutas vermelhas 180g', 3.00, 5.50, 10),
	(8,41,'polpa fruta frutas vermelhas 200g', 3.25, 5.75, 10),
	(8,41,'polpa fruta frutas vermelhas 850g', 3.50, 7.50, 10),
	(8,41,'polpa fruta frutas vermelhas 1000g', 4.25, 9.00, 10)


declare @cont int = 0;
declare @cliente int = 0;
declare @produto int = 0;
declare @ultima_venda int = 0;
declare @cont_produto int = 0;
declare @num_produto int = 0;

declare clientes cursor for
	select IdCliente from Cliente where Ativo = 1 and IdCliente >= 500;

declare produtos cursor for
	select IdProduto from Produto where IdProduto >= 523;

open clientes
	fetch next from clientes into @cliente;

open produtos
	fetch next from produtos into @produto;

while @cont < 50
begin
	insert into Venda (IdCliente,DataPagamento) values
		(@cliente, GETDATE());

	set @ultima_venda = IDENT_CURRENT('Venda');

	set @num_produto = RAND() * (10 - 1) + 1;

	while @cont_produto < @num_produto
	begin
		insert into VendaItem (IdVenda, IdProduto, Quantidade) values
			(@ultima_venda, @produto, @num_produto);

		set @cont_produto = @cont_produto + 1
	end

	fetch next from clientes into @cliente;

	set @cont_produto = 0;

	set @cont = @cont + 1;
end


--EXERCICIO 1
CLOSE clientes;
CLOSE produtos;
DEALLOCATE clientes;
DEALLOCATE produtos;
			
select * from Produto
	inner join TipoProduto
	on Produto.IdTipoProduto = TipoProduto.IdTipoProduto
	where TipoProduto.NomeTipoProduto = 'chocolate'

--EXERCICIO 2
select NomeProduto, NomeMarca, NomeTipoProduto, NomeCliente, DataVenda, DataPagamento from Venda
	inner join  VendaItem
	on Venda.IdVenda = VendaItem.IdVenda
	inner join Cliente
	on Venda.IdCliente = Cliente.IdCliente
	inner join Produto
	on VendaItem.IdProduto = Produto.IdProduto
	inner join Marca
	on Produto.IdMarca = Marca.IdMarca
	inner join TipoProduto
	on Produto.IdTipoProduto = TipoProduto.IdTipoProduto
	where DataPagamento >= '2018-01-01' and DataPagamento <= '2018-01-31'

--EXERCICIO 3
select NomeCliente, Sexo from Cliente
	where month(DataNascimento) = 4 and Ativo = 1

--EXERCICIO 4
select NomeProduto, NomeMarca, ValorVenda, ValorCompra, SUM(QuantidadeEstoque) as 'Quantidade em Estoque' from Produto
	inner join Marca
	on Produto.IdMarca = Marca.IdMarca
	group by NomeProduto, NomeMarca, ValorVenda, ValorCompra, QuantidadeEstoque

--EXERCICIO 5
select NomeCliente, 
	COUNT(distinct IdProduto) as 'Produtos Unicos' from Cliente
	inner join Venda
	on Cliente.IdCliente = Venda.IdCliente
	inner join VendaItem
	on Venda.IdVenda = VendaItem.IdVenda
	where year(Venda.DataVenda) = 2018
	group by NomeCliente

--EXERCICIO 6
select NomeProduto, sum(Quantidade) as 'Total Vendido' from Produto
inner join VendaItem
on Produto.IdProduto = VendaItem.IdProduto
inner join Venda
on VendaItem.IdVenda = Venda.IdVenda
where YEAR(DataVenda) = 2018
group by NomeProduto

--EXERCICIO 7
select NomeCliente, Sexo, Ativo from Cliente
	left join Venda
	on Cliente.IdCliente = Venda.IdCliente
	where Venda.IdVenda is Null

--EXERCICIO 8
select top(10) NomeCliente, Sexo, COUNT(IdVendaItem) as 'Quantia Itens', MIN(DataVenda) as 'Data Pagamento' from Cliente
	inner join Venda
	on Cliente.IdCliente = Venda.IdCliente
	inner join VendaItem
	on Venda.IdVenda = VendaItem.IdVenda
	where Venda.DataPagamento is Null
	group by NomeCliente, Sexo
	order by 'Quantia Itens' desc

--EXERCICIO 9
Select NomeMarca,  count(distinct Produto.IdProduto) as 'Produtos', sum((ValorVenda-ValorCompra)*Quantidade) as 'Lucro' from Produto
	inner join Marca
	on Produto.IdMarca = Marca.IdMarca
	left join VendaItem
	on Produto.IdProduto = VendaItem.IdProduto
	inner join Venda
	on VendaItem.IdVenda = Venda.IdVenda
	group by NomeMarca
	order by Lucro desc


listar o nome do produto, marca, valor de venda, valor de compra,
nome do ultimo comprador e data da ultima compra

--EXERCICIO 10
select NomeProduto, NomeMarca,ValorVenda, ValorCompra, NomeCliente, DataVenda from Produto
	cross apply (
	select top(1) NomeMarca,NomeCliente,DataVenda from VendaItem 
		inner join Venda
		on VendaItem.IdVenda = Venda.IdVenda
		inner join Cliente
		on Venda.IdCliente = Cliente.IdCliente
		inner join Marca
		on Produto.IdMarca = Marca.IdMarca
	where VendaItem.IdProduto = Produto.IdProduto
	order by DataVenda desc) as tabela
	order by NomeProduto

--EXERCICIO 11
select NomeMarca, sum(QuantidadeEstoque) as 'Total' from Produto 
	inner join Marca 
	on  Produto.IdMarca = Marca.IdMarca 
	group by NomeMarca

--EXERCICIO 12
select top(10) NomeProduto, COUNT(Quantidade) as 'Unidades Vendidas', ((ValorVenda - ValorCompra) * COUNT(Quantidade)) as 'Lucro Total' from Produto
	inner join VendaItem
	on Produto.IdProduto = VendaItem.IdProduto
	inner join Venda
	on VendaItem.IdVenda = Venda.IdVenda
	group by NomeProduto, ValorCompra, ValorVenda
	order by 'Lucro Total' desc

--EXERCICIO 13
select top(15) NomeCliente, Sexo, DataNascimento, sum(Quantidade) as 'Quantia' from Cliente
	inner join Venda
	on Cliente.IdCliente = Venda.IdCliente
	inner join VendaItem
	on Venda.IdVenda = VendaItem.IdVenda
	group by NomeCliente,Sexo,DataNascimento
	order by Quantia desc

--EXERCICIO 14
select NomeProduto from Produto
	where Produto.NomeProduto like '%cola%'

--EXERCICIO 15
select NomeCliente, Sexo, DataNascimento from Cliente
	where Cliente.Ativo = 1

--EXERCICIO 16
select NomeProduto, NomeTipoProduto, NomeMarca, ValorVenda from Produto
	left join VendaItem
	on Produto.IdProduto = VendaItem.IdProduto
	inner join TipoProduto
	on Produto.IdTipoProduto = TipoProduto.IdTipoProduto
	inner join Marca
	on Produto.IdMarca = Marca.IdMarca
	where VendaItem.IdVendaItem is null

--EXERCICIO 17
select top(10) NomeProduto, NomeMarca, ValorCompra, ValorVenda, COUNT(QuantidadeEstoque) as 'Estoque', COUNT(Quantidade) as 'Vendidos' from Produto
	inner join VendaItem
		on Produto.IdProduto = VendaItem.IdProduto
	inner join Marca
		on Produto.IdMarca = Marca.IdMarca
	inner join Venda
		on VendaItem.IdVenda = Venda.IdVenda
	group by NomeProduto, NomeMarca, ValorCompra,ValorVenda
	order by Vendidos desc

--EXERCICIO 18
select NomeMarca, 
	coalesce(
		(select cast(NomeProduto as varchar(50)) + ', ' as [text()]
			from Produto
			where Produto.IdMarca = Marca.IdMarca
			for xml path(''),type).value('.[1]','varchar(max)'),'') as 'Produtos'
	from Marca

--EXERCICIO 19

SELECT (cast(MONTH(DataVenda) as varchar(50)) + '/' + cast(YEAR(DataVenda) as varchar(50))) as 'data', 
	count(case when DataPagamento is not null then 1 else null end) as 'vendas pagas',
	count(case when DataPagamento is null then 1 else null end) as 'vendas nao pagas'
	from Venda
	group by DataVenda
	order by DataVenda desc

--EXEERCICIO 20
select NomeCliente, Sexo, datediff(year, DataNascimento, GETDATE()) as 'Idade', isnull(NomeProduto, ' ') as 'Produto Favorito' from Cliente
	outer apply (
	select top(1) NomeProduto from Venda
	inner join VendaItem
	on Venda.IdVenda = VendaItem.IdVendaItem
	inner join Produto
	on VendaItem.IdProduto = Produto.IdProduto
	where Cliente.IdCliente = Venda.IdCliente
	order by Quantidade) as coluna

--EXERCICIO 21
select NomeProduto, NomeMarca,
	((count(distinct Venda.IdCliente)/cast((select count(*)from Cliente) as numeric))*100) as 'Porcentagem' from Produto
	inner join VendaItem
	on Produto.IdProduto = VendaItem.IdProduto
	inner join Venda
	on VendaItem.IdVenda = Venda.IdVenda
	inner join Cliente
	on Venda.IdCliente = Cliente.IdCliente
	inner join Marca
	on Produto.IdMarca = Marca.IdMarca
	group by NomeProduto, NomeMarca
	order by Porcentagem desc

--EXERCICIO 22
select top(10) NomeCliente, Sexo, isnull(avg(DATEDIFF(day, DataVenda, DataPagamento)),0) as 'Tempo Medio' from Cliente
	inner join Venda
	on Cliente.IdCliente =  Venda.IdCliente
	group by NomeCliente, Sexo
	order by [Tempo Medio]
	