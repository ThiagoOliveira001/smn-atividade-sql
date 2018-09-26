/*
	Listar os produtos mais lucrativos
	listar o nome, marca, quantidade vendida e valor do lucro obtido ((valor venda - valor compra) * quantidade vendida) dos 10 produtos mais lucrativos (Somente produtos pagos)
*/

SELECT TOP(10)	pr.NomeProduto,
				ma.NomeMarca,
				SUM(vi.Quantidade) AS 'Quantidade',
				SUM((pr.ValorVenda - pr.ValorCompra) * (vi.Quantidade)) AS 'Lucro'
	FROM VendaItem vi WITH(NOLOCK)
	INNER JOIN Produto pr WITH(NOLOCK)
	  ON vi.IdProduto = pr.IdProduto
	INNER JOIN Marca ma WITH(NOLOCK)
	  ON pr.IdMarca = ma.IdMarca
	INNER JOIN Venda ve WITH(NOLOCK)
	  ON vi.IdVenda = ve.IdVenda
	WHERE ve.DataPagamento < GETDATE()
	AND ve.DataPagamento IS NOT NULL
	GROUP BY pr.NomeProduto, ma.NomeMarca
	ORDER BY Lucro DESC