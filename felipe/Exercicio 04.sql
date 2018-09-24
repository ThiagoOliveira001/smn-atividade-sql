use LojaDoces
go

select p.NomeProduto as Produto,
		m.NomeMarca as Marca,
		p.ValorCompra,
		p.ValorVenda,
		p.QuantidadeEstoque as Estoque
	from Produto as p
	inner join Marca as m on m.IdMarca = p.IdMarca