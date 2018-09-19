use LojaDoces
go

select p.NomeProduto as Produto,
		SUM(vi.Quantidade) as QuantidadeVendidos
	from Produto as p
	inner join VendaItem as vi on vi.IdProduto  = p.idProduto
	inner join Venda as v on v.IdVenda = vi.IdVenda
	where YEAR(v.DataVenda)  = 2018
	group by p.NomeProduto