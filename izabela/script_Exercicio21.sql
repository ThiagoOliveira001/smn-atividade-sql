/*
	Listar os produtos e porcentagem dos clientes que compraram
	listar o nome do produto, marca e porcentagem dos clientes que compraram. EX: nome produto: laka, 41% dos usuarios compram(vendas pagas)
*/

SELECT pr.NomeProduto, ma.NomeMarca, CAST((CAST(COUNT(DISTINCT cl.IdCliente) AS DECIMAL(10,2))/CAST((SELECT COUNT(cl1.IdCliente) FROM Cliente cl1) AS decimal(10,2)))*100 AS DECIMAL(10,2)) AS 'Porcentagem (%)'
	FROM Produto pr WITH(NOLOCK)
		INNER JOIN VendaItem vi WITH(NOLOCK)
			ON pr.IdProduto = vi.IdProduto
		INNER JOIN Venda ve WITH(NOLOCK)
			ON ve.IdVenda = vi.IdVenda
		INNER JOIN Cliente cl
			ON cl.IdCliente = ve.IdCliente
		INNER JOIN Marca ma WITH(NOLOCK)
			ON pr.IdMarca = ma.IdMarca
	where vi.IdProduto = pr.IdProduto and ve.DataPagamento IS NOT NULL AND ve.DataPagamento < GETDATE()
	group by pr.NomeProduto, ma.NomeMarca
	order by 'Porcentagem (%)' desc

