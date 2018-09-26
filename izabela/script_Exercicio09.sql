/*
	Listar o total de vendas pagas por marca
	listar o nome da marca, o valor total de lucro obtido e a quantidade total de produtos, ordenar por lucro.
*/

SELECT	ma.NomeMarca, 
		SUM(vi.Quantidade) as 'Quantidade', 
		SUM((pr.ValorVenda - pr.ValorCompra) * vi.Quantidade)  as 'Lucro'
	FROM VendaItem vi WITH(NOLOCK)
	INNER JOIN Produto pr WITH(NOLOCK)
	  ON vi.IdProduto = pr.IdProduto
	INNER JOIN Marca ma WITH(NOLOCK)
	  ON pr.IdMarca = ma.IdMarca
	GROUP BY ma.NomeMarca
	ORDER BY Lucro DESC




