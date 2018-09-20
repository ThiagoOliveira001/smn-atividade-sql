use LojaDoces
go

declare @totalCliente int
SET @totalCliente = (select COUNT(idCliente) from Cliente)

select (p.NomeProduto +': '+
		m.NomeMarca+', '+
		FORMAT((CAST(porcentagem.clientes as decimal)/CAST(@totalCliente as decimal)*100),'#0.00')+
		'% dos usuarios compram(vendas pagas)') as ProdutosPorcentagemClientes
	from Produto as p
	inner join Marca as m on m.IdMarca = p.IdMarca
	cross apply(
		select COUNT(DISTINCT V.IdCliente) as clientes
			from Venda as v
			inner join VendaItem as vi on vi.IdVenda = v.IdVenda
			inner join Cliente as c on c.IdCliente =v.IdCliente
			where p.IdProduto =vi.IdProduto AND v.DataPagamento IS NOT NULL
	)porcentagem
	order by p.NomeProduto



