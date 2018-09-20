use LojaDoces
go

select top 15 
		c.NomeCliente,
		c.IdCliente,
		c.Sexo,
		c.DataNascimento,
		SUM(vi.Quantidade) as compras
	from Cliente as c
	inner join Venda as v on v.IdCliente = c.IdCliente
	inner join VendaItem as vi on vi.IdVenda = v.IdVenda
	where v.DataPagamento is not null
	group by c.NomeCliente,c.IdCliente,c.Sexo,c.DataNascimento
	order by compras desc
