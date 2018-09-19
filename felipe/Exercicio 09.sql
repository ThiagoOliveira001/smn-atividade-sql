use LojaDoces
go

select m.NomeMarca as Marca,
		COUNT(DISTINCT p.IdProduto) as Produtos,
		SUM((vi.Quantidade)*((p.ValorVenda)-(p.ValorCompra))) as Lucro
	from Marca as m
	inner join Produto as p on p.IdMarca = m.IdMarca
	left join vendaItem  as vi on vi.IdProduto = p.IdProduto
	group by m.NomeMarca
	order by Lucro desc