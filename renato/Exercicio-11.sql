--11 -Listar a quantidade de produtos por marca
--Listar o nome da marca, e quantidade de produtos em estoque

-- Marca.NomeMarca
-- Produto.QuantidadeEStoque

USE LojaDoces
SELECT	Result.NomeMarca,
		SUM(Result.QuantidadeEstoque) AS Qtde
		FROM
			(SELECT	m.NomeMarca,
					p.QuantidadeEstoque
					FROM Marca m
					INNER JOIN Produto p
						ON m.IdMarca = p.IdMarca
					) AS Result
		GROUP BY Result.NomeMarca
		ORDER BY Qtde DESC
		
