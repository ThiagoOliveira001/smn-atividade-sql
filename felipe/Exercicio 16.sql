use LojaDoces
go

select p.NomeProduto,
		tp.NomeTipoProduto,
		m.NomeMarca,
		p.ValorVenda
	from Produto as p
	inner join Marca as m on m.IdMarca = p.IdMarca
	inner join TipoProduto as tp on tp.IdTipoProduto =p.IdTipoProduto
	left join VendaItem as vi on vi.IdProduto = p.idProduto
	where vi.IdProduto is null
	order by p.NomeProduto
