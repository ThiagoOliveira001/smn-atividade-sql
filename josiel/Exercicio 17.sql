SELECT TOP 10 P.IdProduto, P.NomeProduto, M.NomeMarca, P.ValorCompra, P.ValorVenda, P.QuantidadeEstoque
	FROM Produto AS P
	INNER JOIN Marca AS M
	ON P.IdMarca = M.IdMarca
	INNER JOIN VendaItem AS VI
	ON P.IdProduto = VI.IdProduto
	GROUP BY p.IdProduto, P.NomeProduto, M.NomeMarca, P.ValorCompra, P.ValorVenda, P.QuantidadeEstoque
	ORDER BY SUM(VI.Quantidade) DESC