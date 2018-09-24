USE LojaDoces;
GO
SELECT m.NomeMarca,
	   COUNT(p.IdProduto) AS Qtde
FROM Marca AS m
	INNER JOIN Produto AS p ON p.IdMarca = m.IdMarca
GROUP BY m.NomeMarca
ORDER BY m.NomeMarca ASC
