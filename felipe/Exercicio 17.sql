use LojaDoces
go

select top 10
		p.NomeProduto,
		m.NomeMarca,
		P.ValorVenda,
		P.ValorCompra,
		P.QuantidadeEstoque
	from Produto as p
	inner join Marca as m on m.IdMarca = p.IdMarca
	inner join VendaItem as vi on vi.IdProduto = p.IdProduto
	GROUP by p.NomeProduto,m.NomeMarca,P.ValorVenda,P.ValorCompra,P.QuantidadeEstoque
	ORDER BY SUM(vi.Quantidade) desc