SELECT Resultado.Nome, COUNT(Resultado.idProduto)
	FROM
	(SELECT C.NomeCliente AS Nome, VI.IdProduto AS idProduto
		FROM VendaItem AS VI
		INNER JOIN Venda AS V
		ON VI.IdVenda = V.IdVenda
		INNER JOIN Cliente AS C
		ON V.IdCliente = C.IdCliente
		WHERE DATEPART(YY, V.DataVenda) = 2018
		GROUP BY C.NomeCliente, VI.IdProduto) as Resultado
	GROUP BY Resultado.Nome