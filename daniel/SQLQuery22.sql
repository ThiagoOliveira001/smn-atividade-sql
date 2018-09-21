select	c.nomecliente,
		c.sexo,
		vi.quantidade,
		count(distinct vi.idvenda) as 'Quantidade de itens não pagos',
		min(v.DataVenda) as 'Primeira venda'
		from cliente as c
		inner join VendaItem as vi on vi.IdVendaItem=vi.idvenda
		inner join Venda as v on v.IdVenda=c.IdCliente
		group by c.NomeCliente,c.Sexo,vi.Quantidade