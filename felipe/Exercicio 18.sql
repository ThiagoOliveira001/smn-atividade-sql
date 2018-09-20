use LojaDoces
go

select m.NomeMarca as Marca,
		SUBSTRING(Nomes,1,len(Nomes)-1) as Produtos
	from Marca as m
	cross apply(
		select (NomeProduto + ',')
		from Produto as po
		where po.IdMarca = m.IdMarca or(m.IdMarca is not null and po.IdProduto is null)
		for XML Path('')
	)prod(Nomes)
	order by m.NomeMarca