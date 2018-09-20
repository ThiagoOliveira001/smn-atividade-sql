use LojaDoces
go

select TOP 10 
		c.NomeCliente,
		c.Sexo,
		SUM(vi.IdVendaItem) as Produtos,
		MIN(v.DataVenda) as MenorData
	from Cliente as c
	inner join venda as v on v.IdCliente = c.IdCliente
	inner join VendaItem as vi on vi.IdVenda = v.IdVenda
	where v.DataPagamento is null
	group by c.NomeCliente,c.Sexo
	order by Produtos desc