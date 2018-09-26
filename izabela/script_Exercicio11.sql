/*
	Listar a quantidade de produtos por marca
	Listar o nome da marca, e quantidade de produtos em estoque
*/

SELECT ma.NomeMarca, SUM(pr.QuantidadeEstoque) as 'Quantidade estoque'
FROM Marca ma WITH(NOLOCK)
INNER JOIN Produto pr WITH(NOLOCK)
	 ON pr.IdMarca = ma.IdMarca
GROUP BY ma.NomeMarca