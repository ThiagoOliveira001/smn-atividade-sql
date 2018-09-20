SELECT TOP 10 P.NomeProduto, M.NomeMarca, SUM(VI.Quantidade) AS Quantidade, 
			(P.ValorVenda - P.ValorCompra) * (VI.Quantidade) AS Lucro
	FROM Produto AS P
	INNER JOIN Marca AS M 
	ON M.IdMarca = P.IdMarca
	INNER JOIN VendaItem AS VI 
	ON VI.IdProduto = P.IdProduto
	INNER JOIN Venda AS V 
	ON V.IdVenda = VI.IdVenda
	WHERE V.DataPagamento IS NOT NULL AND V.DataPagamento < GETDATE()
	GROUP BY P.NomeProduto, M.NomeMarca, P.ValorVenda, P.ValorCompra,VI.Quantidade
	ORDER BY Lucro desc