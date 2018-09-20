use LojaDoces
go


SELECT
		p.NomeProduto,
		m.NomeMarca,
		p.ValorCompra,
		p.ValorVenda,
		cio.DataVenda,
		cio.NomeCliente
	FROM Produto as p
		inner join Marca as m on m.IdMarca = p.IdMarca
	cross apply
	(select top 1 co.nomeCliente,
			vo.DataVenda as Datavenda
			from Cliente as co
			inner join venda as vo on vo.IdCliente =co.IdCliente
			inner join VendaItem as vio on vo.IdVenda = vio.IdVenda
		where vio.IdProduto = p.IdProduto
	)cio
	order by p.NomeProduto



	
	