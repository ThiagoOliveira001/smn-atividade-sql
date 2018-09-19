SELECT P.NomeProduto, M.NomeMarca, P.ValorVenda, P.ValorCompra, P.QuantidadeEstoque
	FROM Produto AS P
	INNER JOIN Marca AS M
	ON P.IdMarca = M.IdMarca