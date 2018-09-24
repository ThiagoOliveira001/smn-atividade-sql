SELECT V.IdVenda, C.NomeCliente, V.DataVenda, CA.ValorGasto,
	CONVERT(VARCHAR(20), SUM(CA.ValorGasto) OVER (PARTITION BY C.NomeCliente   
                                            ORDER BY V.IdVenda),1) AS 'Valor Acumulado' 
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
			WHERE VV.IdVenda = V.IdVenda) AS CA 
		GROUP BY V.IdVenda, V.DataVenda, C.NomeCliente, CA.ValorGasto
	ORDER BY C.NomeCliente
