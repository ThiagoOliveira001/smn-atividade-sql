SELECT m.NomeMarca, SUM(p.QuantidadeEstoque) as 'Quantidade estoque'
FROM Marca AS m
INNER JOIN Produto AS p
	 ON p.IdMarca = m.IdMarca
GROUP BY m.NomeMarca