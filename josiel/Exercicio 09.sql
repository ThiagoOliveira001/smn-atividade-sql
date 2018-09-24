SELECT M.NomeMarca, SUM(VI.Quantidade) AS 'Quantidade Vendido', 
		(SUM(P.ValorVenda) - SUM(P.ValorCompra)) * SUM(VI.Quantidade) AS Lucro
	FROM VendaItem AS VI
	INNER JOIN Produto AS P
	ON VI.IdProduto = P.IdProduto
	INNER JOIN Marca AS M
	ON P.IdMarca = M.IdMarca
	GROUP BY M.NomeMarca
	ORDER BY Lucro