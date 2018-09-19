SELECT P.NomeProduto, M.NomeMarca, P.ValorVenda, P.ValorCompra, CA.NomeCliente, CA.DataVenda
	FROM Produto AS P
	INNER JOIN Marca AS M
	ON P.IdMarca = M.IdMarca
	CROSS APPLY(
		SELECT TOP 1 V.DataVenda, C.NomeCliente
			FROM VendaItem AS VI
			INNER JOIN Venda AS V
			ON VI.IdVenda = V.IdVenda
			INNER JOIN Cliente AS C
			ON V.IdCliente = C.IdCliente
			WHERE VI.IdProduto = P.IdProduto
			ORDER BY V.DataVenda DESC) AS CA
	ORDER BY P.NomeProduto
