use LojaDoces
go

select c.NomeCliente as Cliente,
		COUNT(DISTINCT vi.IdProduto) as QuantidadeProdutosDiferentes
	from Cliente as c
	left join Venda as v on v.IdCliente = c.IdCliente
	left join VendaItem AS VI on vi.IdVenda = v.IdVenda
	where YEAR(v.DataVenda) = 2018
	group by c.NomeCliente


