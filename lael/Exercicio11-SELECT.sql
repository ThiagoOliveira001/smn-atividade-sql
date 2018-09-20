--Listar o nome da marca, e quantidade de produtos em estoque

SELECT m.NomeMarca, COUNT(P.QuantidadeEstoque)
FROM Produto AS P
	INNER JOIN Marca AS M
	ON P.IdMarca = M.IdMarca

GROUP BY m.NomeMarca