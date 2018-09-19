SELECT P.NomeProduto, M.NomeMarca, TP.NomeTipoProduto, C.NomeCliente, V.DataVenda, V.DataPagamento 
	FROM VendaItem AS VI
	INNER JOIN Produto AS P
	ON VI.IdProduto = P.IdProduto
	INNER JOIN Marca AS M
	ON P.IdMarca = M.IdMarca
	INNER JOIN TipoProduto AS TP
	ON P.IdTipoProduto = TP.IdTipoProduto
	INNER JOIN Venda AS V
	ON VI.IdVenda = V.IdVenda
	INNER JOIN Cliente AS C
	ON V.IdCliente = C.IdCliente
	WHERE (DATEPART(YY, V.DataPagamento) = 2018
		AND DATEPART(MM, V.DataPagamento) = 01)