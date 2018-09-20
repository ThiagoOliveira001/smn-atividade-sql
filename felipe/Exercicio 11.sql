use LojaDoces
go

select m.NomeMarca,
		Count(p.IdProduto) as QuantidadeProduto
	from Produto as p
	inner join Marca as m on m.idMarca = p.idMarca
	group by m.NomeMarca
	order by m.NomeMarca