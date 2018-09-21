use LojaDoces
go

select c.NomeCliente,
		v.DataVenda,
		valorVenda as ValorVenda,
		V.IdVenda,
		SUM(valorVenda) OVER (PARTITION by C.NomeCliente
			ORDER BY v.DataVenda
			ROWS UNBOUNDED PRECEDING) as Acumulativo
	from Cliente as c
	inner join Venda as v on v.IdCliente = c.IdCliente
	cross apply(
		select 
			SUM(vi.Quantidade * p.ValorVenda) as valorVenda
			from Produto as p
			inner join VendaItem as vi on vi.IdProduto = p.IdProduto
			where v.IdVenda = vi.IdVenda
			group by vi.IdVenda)prod
	group by c.NomeCliente,v.DataVenda,V.IdVenda,valorVenda
	order by c.NomeCliente,v.DataVenda
