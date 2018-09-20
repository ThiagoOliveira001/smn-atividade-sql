SELECT P.NomeProduto, TP.NomeTipoProduto, M.NomeMarca, P.ValorVenda
	FROM Produto AS P
	INNER JOIN TipoProduto AS TP
	ON P.IdTipoProduto = TP.IdTipoProduto
	INNER JOIN Marca AS M
	ON P.IdMarca = M.IdMarca
	LEFT JOIN VendaItem AS VI
	ON P.IdProduto = VI.IdProduto
	WHERE VI.IdProduto IS NULL
	ORDER BY P.NomeProduto