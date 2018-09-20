--11 -Listar a quantidade de produtos por marca
--Listar o nome da marca, e quantidade de produtos em estoque

-- Marca.NomeMarca
-- Produto.QuantidadeEStoque

USE LojaDoces
SELECT	m.NomeMarca,
		SUM(p.QuantidadeEstoque) AS QtdeEstoque
		FROM Marca m
		INNER JOIN Produto p
			ON m.IdMarca = p.IdMarca
		GROUP BY m.NomeMarca
		ORDER BY QtdeEstoque DESC