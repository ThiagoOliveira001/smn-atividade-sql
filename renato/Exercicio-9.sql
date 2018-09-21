	-- 09 - Listar o total de vendas pagas por marca
-- listar o nome da marca, o valor total de lucro obtido e a quantidade total de produtos, ordenar por lucro

-- Marca.NomeMarca
-- (Produto.PrecoVenda - Produto.PrecoCompra) AS Lucro
-- COUNT(Produto.IdProduto) AS 'Total Produtos'
-- ORDER BY Lucro

USE LojaDoces

SELECT	m.NomeMarca,
		SUM((vi.Quantidade)*(ValorVenda - p.ValorCompra)) AS Lucro,
		COUNT(DISTINCT p.IdProduto) AS 'Total Produtos'
		FROM Marca m
		INNER JOIN Produto p
			ON m.IdMarca = p.IdMarca
		LEFT JOIN VendaItem vi
			ON vi.IdProduto = p.IdProduto
		GROUP BY m.NomeMarca
		ORDER BY Lucro DESC

