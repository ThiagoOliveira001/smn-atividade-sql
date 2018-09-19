use LojaDoces
go

select p.NomeProduto as Produto,
		m.NomeMarca as Marca,
		tp.NomeTipoProduto as TipoProduto,
		c.NomeCliente as Cliente,
		v.DataVenda as DataDeVenda,
		v.DataPagamento as DataDePagamento
	from Produto as p
	inner join Marca as m on p.IdMarca = m.IdMarca
	inner join TipoProduto as tp on tp.IdTipoProduto = p.IdTipoProduto
	inner join VendaItem as vi on vi.IdProduto =p.IdProduto
	inner join Venda as v on v.IdVenda = vi.IdVenda
	inner join Cliente as c on c.IdCliente =  v.IdCliente
	where YEAR(v.DataPagamento) = 2018 and MONTH(v.DataPagamento) = 1;