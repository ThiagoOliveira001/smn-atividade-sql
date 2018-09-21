Listar o nome da marca, e quantidade de produtos em estoque

SELECT 
	M.NomeMarca,
	SUM(P.QuantidadeEstoque) AS quantidade
FROM
	Marca AS M INNER JOIN Produto AS P ON
		P.IdMarca = M.IdMarca
GROUP BY M.NomeMarca
	
