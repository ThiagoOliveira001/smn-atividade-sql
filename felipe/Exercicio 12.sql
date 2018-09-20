use LojaDoces
go 

select top 10
		p.NomeProduto,
		m.NomeMarca,
		COUNT(vi.Quantidade) as Quantidade,
		SUM(vi.Quantidade * (p.ValorVenda - p.ValorCompra)) as Lucro
	from Marca as m
	inner join Produto as p on p.IdMarca = m.IdMarca
	inner join VendaItem as vi on p.IdProduto = vi.IdProduto
	inner join Venda as v on v.IdVenda = vi.IdVenda
	where v.DataPagamento is not null
	group by p.NomeProduto,m.NomeMarca
	order by Lucro desc