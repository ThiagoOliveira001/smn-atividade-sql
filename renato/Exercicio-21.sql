--21 - Listar os produtos e porcentagem dos clientes que compraram
--listar o nome do produto, marca e porcentagem dos clientes que compraram. EX: nome produto: laka, 41% dos usuarios compram(vendas pagas)


USE LojaDoces

 SELECT	p.NomeProduto,
		m.NomeMarca,
		CAST((CAST(COUNT(DISTINCT c.IdCliente) AS DECIMAL(10,2))/CAST((SELECT COUNT(c1.IdCliente) FROM Cliente c1) AS decimal(10,2)))*100 AS DECIMAL(10,2)) AS '%'
		FROM Produto p
		INNER JOIN VendaItem vi
			ON p.IdProduto = vi.IdProduto
		INNER JOIN Venda v
			ON v.IdVenda = vi.IdVenda
		INNER JOIN Cliente c
			ON c.IdCliente = v.IdCliente
		INNER JOIN Marca m
			ON p.IdMarca = m.IdMarca
		GROUP BY p.NomeProduto, m.NomeMarca
		ORDER BY NomeProduto
		