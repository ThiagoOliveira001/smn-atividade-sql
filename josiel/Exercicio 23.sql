SELECT C.NomeCliente, CONVERT(varchar(10), V.DataVenda, 103) AS DataVenda, CA.ValorGasto,
	CONVERT(VARCHAR(20), SUM(CA.ValorGasto) OVER (PARTITION BY C.NomeCliente   
                                            ORDER BY CONVERT(VARCHAR(10), V.DataVenda, 103)),1) AS 'Valor Acumulado' 
	FROM Cliente AS C
	INNER JOIN Venda AS V
	ON C.IdCliente = V.IdCliente
	CROSS APPLY(
		SELECT SUM(VI.Quantidade * P.ValorVenda) AS ValorGasto
			FROM VendaItem AS VI
			INNER JOIN Produto AS P
			ON VI.IdProduto = P.IdProduto
			INNER JOIN Venda AS VV
			ON VI.IdVenda = VV.IdVenda
			WHERE VV.IdCliente = C.IdCliente AND (DATEPART(YY, VV.DataVenda) = DATEPART(YY, V.DataVenda) AND
												  DATEPART(MM, VV.DataVenda) = DATEPART(MM, V.DataVenda) AND
												  DATEPART(DD, VV.DataVenda) = DATEPART(DD, V.DataVenda))
		) AS CA 
		GROUP BY CONVERT(VARCHAR(10), V.DataVenda, 103), C.NomeCliente, CA.ValorGasto
	ORDER BY C.NomeCliente
