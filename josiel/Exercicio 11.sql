SELECT M.NomeMarca, SUM(P.QuantidadeEstoque) AS 'Quantidade Estoque'
	FROM Marca AS M
	INNER JOIN Produto AS P ON P.IdMarca = M.IdMarca
	GROUP BY M.NomeMarca