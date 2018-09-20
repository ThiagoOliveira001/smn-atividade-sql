use LojaDoces
go

select c.NomeCliente,
		v.DataVenda,
		SUM(valorVenda) as Vendidos,
		V.IdVenda,
		(SUM(valorVenda) OVER (PARTITION by c.NomeCliente
		ORDER BY c.NomeCliente
		ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)) as Acumulativo
	from Cliente as c
	inner join Venda as v on v.IdCliente = c.IdCliente
	cross apply(
		select 
			(vi.Quantidade * p.ValorVenda) as valorVenda
			from Produto as p
			inner join VendaItem as vi on vi.IdProduto = p.IdProduto
			where v.IdVenda = vi.IdVenda
		)prod
	group by c.NomeCliente,v.DataVenda,V.IdVenda,valorVenda
	order by c.NomeCliente,v.DataVenda
